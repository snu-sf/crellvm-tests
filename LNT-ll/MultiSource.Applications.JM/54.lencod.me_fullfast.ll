; ModuleID = './MultiSource.Applications.JM/54.lencod.me_fullfast.bc'
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.SubImageContainer = type { i16****, [2 x i16****] }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@input = external global %struct.InputParameters*, align 8
@BlockSAD = internal global i32***** null, align 8
@.str = private unnamed_addr constant [42 x i8] c"InitializeFastFullIntegerSearch: BlockSAD\00", align 1
@img = external global %struct.ImageParameters*, align 8
@search_setup_done = internal global i32** null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"InitializeFastFullIntegerSearch: search_setup_done\00", align 1
@search_center_x = internal global i32** null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"InitializeFastFullIntegerSearch: search_center_x\00", align 1
@search_center_y = internal global i32** null, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"InitializeFastFullIntegerSearch: search_center_y\00", align 1
@pos_00 = internal global i32** null, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"InitializeFastFullIntegerSearch: pos_00\00", align 1
@max_search_range = internal global i32** null, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"InitializeFastFullIntegerSearch: max_search_range\00", align 1
@SetupFastFullPelSearch.orig_pels = internal global [768 x i16] zeroinitializer, align 16
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@byte_abs = external global i32*, align 8
@listX = external global [6 x %struct.storable_picture**], align 16
@ref_access_method = external global i32, align 4
@ref_pic_sub = external global %struct.SubImageContainer, align 8
@width_pad = common global i32 0, align 4
@height_pad = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@weight_luma = external global i32, align 4
@wp_offset = common global i32*** null, align 8
@offset_luma = external global i32, align 4
@ChromaMEEnable = external global i32, align 4
@width_pad_cr = common global i32 0, align 4
@height_pad_cr = common global i32 0, align 4
@weight_cr = external global [2 x i32], align 4
@offset_cr = external global [2 x i32], align 4
@enc_picture = external global %struct.storable_picture*, align 8
@LEVELMVLIMIT = external constant [17 x [6 x i32]], align 16
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@spiral_search_x = external global i16*, align 8
@spiral_search_y = external global i16*, align 8
@get_line = external global [2 x i16* (i16****, i32, i32)*], align 16
@wp_luma_round = common global i32 0, align 4
@luma_log_weight_denom = common global i32 0, align 4
@img_padded_size_x = common global i32 0, align 4
@get_crline = external global [2 x i16* (i16****, i32, i32)*], align 16
@wp_chroma_round = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@img_cr_padded_size_x = common global i32 0, align 4
@mvbits = external global i32*, align 8
@color_formats = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic_1 = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@frame_pic_si = common global %struct.Picture* null, align 8
@Bit_Buffer = common global i64* null, align 8
@imgY_sub_tmp = common global i32** null, align 8
@PicPos = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i64 0, align 8
@me_time = common global i64 0, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@wbp_weight = common global i32**** null, align 8
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
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8

; Function Attrs: nounwind uwtable
define void @InitializeFastFullIntegerSearch() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %list = alloca i32, align 4
  %search_range = alloca i32, align 4
  %max_pos = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 7
  %1 = load i32, i32* %search_range1, align 4
  store i32 %1, i32* %search_range, align 4
  %2 = load i32, i32* %search_range, align 4
  %mul = mul nsw i32 2, %2
  %add = add nsw i32 %mul, 1
  %3 = load i32, i32* %search_range, align 4
  %mul2 = mul nsw i32 2, %3
  %add3 = add nsw i32 %mul2, 1
  %mul4 = mul nsw i32 %add, %add3
  store i32 %mul4, i32* %max_pos, align 4
  %call = call noalias i8* @malloc(i64 16) #3
  %4 = bitcast i8* %call to i32*****
  store i32***** %4, i32****** @BlockSAD, align 8
  %cmp = icmp eq i32***** %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %list, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.66, %if.end
  %5 = load i32, i32* %list, align 4
  %cmp5 = icmp slt i32 %5, 2
  br i1 %cmp5, label %for.body, label %for.end.68

for.body:                                         ; preds = %for.cond
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 8
  %7 = load i32, i32* %max_num_references, align 4
  %conv = sext i32 %7 to i64
  %mul6 = mul i64 %conv, 8
  %call7 = call noalias i8* @malloc(i64 %mul6) #3
  %8 = bitcast i8* %call7 to i32****
  %9 = load i32, i32* %list, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx = getelementptr inbounds i32****, i32***** %10, i64 %idxprom
  store i32**** %8, i32***** %arrayidx, align 8
  %cmp8 = icmp eq i32**** %8, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  call void @no_mem_exit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.63, %if.end.11
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 8
  %13 = load i32, i32* %max_num_references13, align 4
  %cmp14 = icmp slt i32 %11, %13
  br i1 %cmp14, label %for.body.16, label %for.end.65

for.body.16:                                      ; preds = %for.cond.12
  %call17 = call noalias i8* @malloc(i64 64) #3
  %14 = bitcast i8* %call17 to i32***
  %15 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %16 = load i32, i32* %list, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx20 = getelementptr inbounds i32****, i32***** %17, i64 %idxprom19
  %18 = load i32****, i32***** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32***, i32**** %18, i64 %idxprom18
  store i32*** %14, i32**** %arrayidx21, align 8
  %cmp22 = icmp eq i32*** %14, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body.16
  call void @no_mem_exit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %for.body.16
  store i32 1, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.60, %if.end.25
  %19 = load i32, i32* %j, align 4
  %cmp27 = icmp slt i32 %19, 8
  br i1 %cmp27, label %for.body.29, label %for.end.62

for.body.29:                                      ; preds = %for.cond.26
  %call30 = call noalias i8* @malloc(i64 128) #3
  %20 = bitcast i8* %call30 to i32**
  %21 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %22 to i64
  %23 = load i32, i32* %list, align 4
  %idxprom33 = sext i32 %23 to i64
  %24 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx34 = getelementptr inbounds i32****, i32***** %24, i64 %idxprom33
  %25 = load i32****, i32***** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32***, i32**** %25, i64 %idxprom32
  %26 = load i32***, i32**** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32**, i32*** %26, i64 %idxprom31
  store i32** %20, i32*** %arrayidx36, align 8
  %cmp37 = icmp eq i32** %20, null
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body.29
  call void @no_mem_exit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %for.body.29
  store i32 0, i32* %k, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %if.end.40
  %27 = load i32, i32* %k, align 4
  %cmp42 = icmp slt i32 %27, 16
  br i1 %cmp42, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.41
  %28 = load i32, i32* %max_pos, align 4
  %conv45 = sext i32 %28 to i64
  %mul46 = mul i64 %conv45, 4
  %call47 = call noalias i8* @malloc(i64 %mul46) #3
  %29 = bitcast i8* %call47 to i32*
  %30 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %32 to i64
  %33 = load i32, i32* %list, align 4
  %idxprom51 = sext i32 %33 to i64
  %34 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx52 = getelementptr inbounds i32****, i32***** %34, i64 %idxprom51
  %35 = load i32****, i32***** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i32***, i32**** %35, i64 %idxprom50
  %36 = load i32***, i32**** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32**, i32*** %36, i64 %idxprom49
  %37 = load i32**, i32*** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %37, i64 %idxprom48
  store i32* %29, i32** %arrayidx55, align 8
  %cmp56 = icmp eq i32* %29, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.body.44
  call void @no_mem_exit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %for.body.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %38 = load i32, i32* %k, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.41

for.end:                                          ; preds = %for.cond.41
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end
  %39 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %39, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond.26

for.end.62:                                       ; preds = %for.cond.26
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %40 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %40, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.12

for.end.65:                                       ; preds = %for.cond.12
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %41 = load i32, i32* %list, align 4
  %inc67 = add nsw i32 %41, 1
  store i32 %inc67, i32* %list, align 4
  br label %for.cond

for.end.68:                                       ; preds = %for.cond
  %call69 = call noalias i8* @malloc(i64 16) #3
  %42 = bitcast i8* %call69 to i32**
  store i32** %42, i32*** @search_setup_done, align 8
  %cmp70 = icmp eq i32** %42, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %for.end.68
  call void @no_mem_exit(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %for.end.68
  %call74 = call noalias i8* @malloc(i64 16) #3
  %43 = bitcast i8* %call74 to i32**
  store i32** %43, i32*** @search_center_x, align 8
  %cmp75 = icmp eq i32** %43, null
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.73
  call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.73
  %call79 = call noalias i8* @malloc(i64 16) #3
  %44 = bitcast i8* %call79 to i32**
  store i32** %44, i32*** @search_center_y, align 8
  %cmp80 = icmp eq i32** %44, null
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.78
  %call84 = call noalias i8* @malloc(i64 16) #3
  %45 = bitcast i8* %call84 to i32**
  store i32** %45, i32*** @pos_00, align 8
  %cmp85 = icmp eq i32** %45, null
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.83
  call void @no_mem_exit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.end.83
  %call89 = call noalias i8* @malloc(i64 16) #3
  %46 = bitcast i8* %call89 to i32**
  store i32** %46, i32*** @max_search_range, align 8
  %cmp90 = icmp eq i32** %46, null
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.88
  call void @no_mem_exit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end.88
  store i32 0, i32* %list, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.148, %if.end.93
  %47 = load i32, i32* %list, align 4
  %cmp95 = icmp slt i32 %47, 2
  br i1 %cmp95, label %for.body.97, label %for.end.150

for.body.97:                                      ; preds = %for.cond.94
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references98 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 8
  %49 = load i32, i32* %max_num_references98, align 4
  %conv99 = sext i32 %49 to i64
  %mul100 = mul i64 %conv99, 4
  %call101 = call noalias i8* @malloc(i64 %mul100) #3
  %50 = bitcast i8* %call101 to i32*
  %51 = load i32, i32* %list, align 4
  %idxprom102 = sext i32 %51 to i64
  %52 = load i32**, i32*** @search_setup_done, align 8
  %arrayidx103 = getelementptr inbounds i32*, i32** %52, i64 %idxprom102
  store i32* %50, i32** %arrayidx103, align 8
  %cmp104 = icmp eq i32* %50, null
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %for.body.97
  call void @no_mem_exit(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %for.body.97
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references108 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 8
  %54 = load i32, i32* %max_num_references108, align 4
  %conv109 = sext i32 %54 to i64
  %mul110 = mul i64 %conv109, 4
  %call111 = call noalias i8* @malloc(i64 %mul110) #3
  %55 = bitcast i8* %call111 to i32*
  %56 = load i32, i32* %list, align 4
  %idxprom112 = sext i32 %56 to i64
  %57 = load i32**, i32*** @search_center_x, align 8
  %arrayidx113 = getelementptr inbounds i32*, i32** %57, i64 %idxprom112
  store i32* %55, i32** %arrayidx113, align 8
  %cmp114 = icmp eq i32* %55, null
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end.107
  call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %if.end.107
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references118 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 8
  %59 = load i32, i32* %max_num_references118, align 4
  %conv119 = sext i32 %59 to i64
  %mul120 = mul i64 %conv119, 4
  %call121 = call noalias i8* @malloc(i64 %mul120) #3
  %60 = bitcast i8* %call121 to i32*
  %61 = load i32, i32* %list, align 4
  %idxprom122 = sext i32 %61 to i64
  %62 = load i32**, i32*** @search_center_y, align 8
  %arrayidx123 = getelementptr inbounds i32*, i32** %62, i64 %idxprom122
  store i32* %60, i32** %arrayidx123, align 8
  %cmp124 = icmp eq i32* %60, null
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.117
  call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.end.117
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references128 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 8
  %64 = load i32, i32* %max_num_references128, align 4
  %conv129 = sext i32 %64 to i64
  %mul130 = mul i64 %conv129, 4
  %call131 = call noalias i8* @malloc(i64 %mul130) #3
  %65 = bitcast i8* %call131 to i32*
  %66 = load i32, i32* %list, align 4
  %idxprom132 = sext i32 %66 to i64
  %67 = load i32**, i32*** @pos_00, align 8
  %arrayidx133 = getelementptr inbounds i32*, i32** %67, i64 %idxprom132
  store i32* %65, i32** %arrayidx133, align 8
  %cmp134 = icmp eq i32* %65, null
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.127
  call void @no_mem_exit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.end.127
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references138 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 8
  %69 = load i32, i32* %max_num_references138, align 4
  %conv139 = sext i32 %69 to i64
  %mul140 = mul i64 %conv139, 4
  %call141 = call noalias i8* @malloc(i64 %mul140) #3
  %70 = bitcast i8* %call141 to i32*
  %71 = load i32, i32* %list, align 4
  %idxprom142 = sext i32 %71 to i64
  %72 = load i32**, i32*** @max_search_range, align 8
  %arrayidx143 = getelementptr inbounds i32*, i32** %72, i64 %idxprom142
  store i32* %70, i32** %arrayidx143, align 8
  %cmp144 = icmp eq i32* %70, null
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.137
  call void @no_mem_exit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.end.137
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %73 = load i32, i32* %list, align 4
  %inc149 = add nsw i32 %73, 1
  store i32 %inc149, i32* %list, align 4
  br label %for.cond.94

for.end.150:                                      ; preds = %for.cond.94
  %74 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %74, i32 0, i32 106
  %75 = load i32, i32* %full_search, align 4
  %cmp151 = icmp eq i32 %75, 2
  br i1 %cmp151, label %if.then.153, label %if.else

if.then.153:                                      ; preds = %for.end.150
  store i32 0, i32* %list, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.170, %if.then.153
  %76 = load i32, i32* %list, align 4
  %cmp155 = icmp slt i32 %76, 2
  br i1 %cmp155, label %for.body.157, label %for.end.172

for.body.157:                                     ; preds = %for.cond.154
  store i32 0, i32* %i, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.167, %for.body.157
  %77 = load i32, i32* %i, align 4
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references159 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 8
  %79 = load i32, i32* %max_num_references159, align 4
  %cmp160 = icmp slt i32 %77, %79
  br i1 %cmp160, label %for.body.162, label %for.end.169

for.body.162:                                     ; preds = %for.cond.158
  %80 = load i32, i32* %search_range, align 4
  %81 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %81 to i64
  %82 = load i32, i32* %list, align 4
  %idxprom164 = sext i32 %82 to i64
  %83 = load i32**, i32*** @max_search_range, align 8
  %arrayidx165 = getelementptr inbounds i32*, i32** %83, i64 %idxprom164
  %84 = load i32*, i32** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %84, i64 %idxprom163
  store i32 %80, i32* %arrayidx166, align 4
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.162
  %85 = load i32, i32* %i, align 4
  %inc168 = add nsw i32 %85, 1
  store i32 %inc168, i32* %i, align 4
  br label %for.cond.158

for.end.169:                                      ; preds = %for.cond.158
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.end.169
  %86 = load i32, i32* %list, align 4
  %inc171 = add nsw i32 %86, 1
  store i32 %inc171, i32* %list, align 4
  br label %for.cond.154

for.end.172:                                      ; preds = %for.cond.154
  br label %if.end.195

if.else:                                          ; preds = %for.end.150
  store i32 0, i32* %list, align 4
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.192, %if.else
  %87 = load i32, i32* %list, align 4
  %cmp174 = icmp slt i32 %87, 2
  br i1 %cmp174, label %for.body.176, label %for.end.194

for.body.176:                                     ; preds = %for.cond.173
  %88 = load i32, i32* %search_range, align 4
  %89 = load i32, i32* %list, align 4
  %idxprom177 = sext i32 %89 to i64
  %90 = load i32**, i32*** @max_search_range, align 8
  %arrayidx178 = getelementptr inbounds i32*, i32** %90, i64 %idxprom177
  %91 = load i32*, i32** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %arrayidx179, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.189, %for.body.176
  %92 = load i32, i32* %i, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 8
  %94 = load i32, i32* %max_num_references181, align 4
  %cmp182 = icmp slt i32 %92, %94
  br i1 %cmp182, label %for.body.184, label %for.end.191

for.body.184:                                     ; preds = %for.cond.180
  %95 = load i32, i32* %search_range, align 4
  %div = sdiv i32 %95, 2
  %96 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %96 to i64
  %97 = load i32, i32* %list, align 4
  %idxprom186 = sext i32 %97 to i64
  %98 = load i32**, i32*** @max_search_range, align 8
  %arrayidx187 = getelementptr inbounds i32*, i32** %98, i64 %idxprom186
  %99 = load i32*, i32** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %99, i64 %idxprom185
  store i32 %div, i32* %arrayidx188, align 4
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.body.184
  %100 = load i32, i32* %i, align 4
  %inc190 = add nsw i32 %100, 1
  store i32 %inc190, i32* %i, align 4
  br label %for.cond.180

for.end.191:                                      ; preds = %for.cond.180
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.end.191
  %101 = load i32, i32* %list, align 4
  %inc193 = add nsw i32 %101, 1
  store i32 %inc193, i32* %list, align 4
  br label %for.cond.173

for.end.194:                                      ; preds = %for.cond.173
  br label %if.end.195

if.end.195:                                       ; preds = %for.end.194, %for.end.172
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define void @ClearFastFullIntegerSearch() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %list = alloca i32, align 4
  store i32 0, i32* %list, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %0 = load i32, i32* %list, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.29, %for.body
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 8
  %3 = load i32, i32* %max_num_references, align 4
  %cmp2 = icmp slt i32 %1, %3
  br i1 %cmp2, label %for.body.3, label %for.end.31

for.body.3:                                       ; preds = %for.cond.1
  store i32 1, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.22, %for.body.3
  %4 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %4, 8
  br i1 %cmp5, label %for.body.6, label %for.end.24

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %5 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %5, 16
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %8 to i64
  %9 = load i32, i32* %list, align 4
  %idxprom12 = sext i32 %9 to i64
  %10 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx = getelementptr inbounds i32****, i32***** %10, i64 %idxprom12
  %11 = load i32****, i32***** %arrayidx, align 8
  %arrayidx13 = getelementptr inbounds i32***, i32**** %11, i64 %idxprom11
  %12 = load i32***, i32**** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32**, i32*** %12, i64 %idxprom10
  %13 = load i32**, i32*** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %13, i64 %idxprom
  %14 = load i32*, i32** %arrayidx15, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* %15) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %16 = load i32, i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %17 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load i32, i32* %list, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx19 = getelementptr inbounds i32****, i32***** %20, i64 %idxprom18
  %21 = load i32****, i32***** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i32***, i32**** %21, i64 %idxprom17
  %22 = load i32***, i32**** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32**, i32*** %22, i64 %idxprom16
  %23 = load i32**, i32*** %arrayidx21, align 8
  %24 = bitcast i32** %23 to i8*
  call void @free(i8* %24) #3
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %25 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %25, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond.4

for.end.24:                                       ; preds = %for.cond.4
  %26 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %26 to i64
  %27 = load i32, i32* %list, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx27 = getelementptr inbounds i32****, i32***** %28, i64 %idxprom26
  %29 = load i32****, i32***** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32***, i32**** %29, i64 %idxprom25
  %30 = load i32***, i32**** %arrayidx28, align 8
  %31 = bitcast i32*** %30 to i8*
  call void @free(i8* %31) #3
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.24
  %32 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %32, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.1

for.end.31:                                       ; preds = %for.cond.1
  %33 = load i32, i32* %list, align 4
  %idxprom32 = sext i32 %33 to i64
  %34 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx33 = getelementptr inbounds i32****, i32***** %34, i64 %idxprom32
  %35 = load i32****, i32***** %arrayidx33, align 8
  %36 = bitcast i32**** %35 to i8*
  call void @free(i8* %36) #3
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.31
  %37 = load i32, i32* %list, align 4
  %inc35 = add nsw i32 %37, 1
  store i32 %inc35, i32* %list, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %38 = load i32*****, i32****** @BlockSAD, align 8
  %39 = bitcast i32***** %38 to i8*
  call void @free(i8* %39) #3
  store i32 0, i32* %list, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.50, %for.end.36
  %40 = load i32, i32* %list, align 4
  %cmp38 = icmp slt i32 %40, 2
  br i1 %cmp38, label %for.body.39, label %for.end.52

for.body.39:                                      ; preds = %for.cond.37
  %41 = load i32, i32* %list, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load i32**, i32*** @search_setup_done, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %42, i64 %idxprom40
  %43 = load i32*, i32** %arrayidx41, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #3
  %45 = load i32, i32* %list, align 4
  %idxprom42 = sext i32 %45 to i64
  %46 = load i32**, i32*** @search_center_x, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %46, i64 %idxprom42
  %47 = load i32*, i32** %arrayidx43, align 8
  %48 = bitcast i32* %47 to i8*
  call void @free(i8* %48) #3
  %49 = load i32, i32* %list, align 4
  %idxprom44 = sext i32 %49 to i64
  %50 = load i32**, i32*** @search_center_y, align 8
  %arrayidx45 = getelementptr inbounds i32*, i32** %50, i64 %idxprom44
  %51 = load i32*, i32** %arrayidx45, align 8
  %52 = bitcast i32* %51 to i8*
  call void @free(i8* %52) #3
  %53 = load i32, i32* %list, align 4
  %idxprom46 = sext i32 %53 to i64
  %54 = load i32**, i32*** @pos_00, align 8
  %arrayidx47 = getelementptr inbounds i32*, i32** %54, i64 %idxprom46
  %55 = load i32*, i32** %arrayidx47, align 8
  %56 = bitcast i32* %55 to i8*
  call void @free(i8* %56) #3
  %57 = load i32, i32* %list, align 4
  %idxprom48 = sext i32 %57 to i64
  %58 = load i32**, i32*** @max_search_range, align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %58, i64 %idxprom48
  %59 = load i32*, i32** %arrayidx49, align 8
  %60 = bitcast i32* %59 to i8*
  call void @free(i8* %60) #3
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.39
  %61 = load i32, i32* %list, align 4
  %inc51 = add nsw i32 %61, 1
  store i32 %inc51, i32* %list, align 4
  br label %for.cond.37

for.end.52:                                       ; preds = %for.cond.37
  %62 = load i32**, i32*** @search_setup_done, align 8
  %63 = bitcast i32** %62 to i8*
  call void @free(i8* %63) #3
  %64 = load i32**, i32*** @search_center_x, align 8
  %65 = bitcast i32** %64 to i8*
  call void @free(i8* %65) #3
  %66 = load i32**, i32*** @search_center_y, align 8
  %67 = bitcast i32** %66 to i8*
  call void @free(i8* %67) #3
  %68 = load i32**, i32*** @pos_00, align 8
  %69 = bitcast i32** %68 to i8*
  call void @free(i8* %69) #3
  %70 = load i32**, i32*** @max_search_range, align 8
  %71 = bitcast i32** %70 to i8*
  call void @free(i8* %71) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @ResetFastFullIntegerSearch() #0 {
entry:
  %list = alloca i32, align 4
  store i32 0, i32* %list, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %list, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %list, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32**, i32*** @search_setup_done, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %2, i64 %idxprom
  %3 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 0
  %4 = bitcast i32* %arrayidx1 to i8*
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 8
  %6 = load i32, i32* %max_num_references, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %mul, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %list, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %list, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @SetupLargerBlocks(i32 %list, i32 %refindex, i32 %max_pos) #0 {
entry:
  %list.addr = alloca i32, align 4
  %refindex.addr = alloca i32, align 4
  %max_pos.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %_bo = alloca i32**, align 8
  %_bi = alloca i32**, align 8
  %_bj = alloca i32**, align 8
  %_o = alloca i32*, align 8
  %_i = alloca i32*, align 8
  %_j = alloca i32*, align 8
  store i32 %list, i32* %list.addr, align 4
  store i32 %refindex, i32* %refindex.addr, align 4
  store i32 %max_pos, i32* %max_pos.addr, align 4
  %0 = load i32, i32* %refindex.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %list.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx = getelementptr inbounds i32****, i32***** %2, i64 %idxprom1
  %3 = load i32****, i32***** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32***, i32**** %3, i64 %idxprom
  %4 = load i32***, i32**** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i32**, i32*** %4, i64 6
  %5 = load i32**, i32*** %arrayidx3, align 8
  store i32** %5, i32*** %_bo, align 8
  %6 = load i32, i32* %refindex.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32, i32* %list.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx6 = getelementptr inbounds i32****, i32***** %8, i64 %idxprom5
  %9 = load i32****, i32***** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32***, i32**** %9, i64 %idxprom4
  %10 = load i32***, i32**** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32**, i32*** %10, i64 7
  %11 = load i32**, i32*** %arrayidx8, align 8
  store i32** %11, i32*** %_bi, align 8
  %12 = load i32**, i32*** %_bi, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %12, i64 4
  store i32** %add.ptr, i32*** %_bj, align 8
  %13 = load i32**, i32*** %_bo, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %_o, align 8
  %15 = load i32**, i32*** %_bi, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %_i, align 8
  %17 = load i32**, i32*** %_bj, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %pos, align 4
  %20 = load i32, i32* %max_pos.addr, align 4
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load i32*, i32** %_i, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %22, i64 %idxprom9
  %23 = load i32, i32* %arrayidx10, align 4
  %24 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load i32*, i32** %_j, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %25, i64 %idxprom11
  %26 = load i32, i32* %arrayidx12, align 4
  %add = add nsw i32 %23, %26
  %27 = load i32, i32* %pos, align 4
  %idxprom13 = sext i32 %27 to i64
  %28 = load i32*, i32** %_o, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %28, i64 %idxprom13
  store i32 %add, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32**, i32*** %_bo, align 8
  %add.ptr15 = getelementptr inbounds i32*, i32** %30, i64 1
  store i32** %add.ptr15, i32*** %_bo, align 8
  %31 = load i32**, i32*** %_bi, align 8
  %add.ptr16 = getelementptr inbounds i32*, i32** %31, i64 1
  store i32** %add.ptr16, i32*** %_bi, align 8
  %32 = load i32**, i32*** %_bj, align 8
  %add.ptr17 = getelementptr inbounds i32*, i32** %32, i64 1
  store i32** %add.ptr17, i32*** %_bj, align 8
  %33 = load i32**, i32*** %_bo, align 8
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %_o, align 8
  %35 = load i32**, i32*** %_bi, align 8
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %_i, align 8
  %37 = load i32**, i32*** %_bj, align 8
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.28, %for.end
  %39 = load i32, i32* %pos, align 4
  %40 = load i32, i32* %max_pos.addr, align 4
  %cmp19 = icmp slt i32 %39, %40
  br i1 %cmp19, label %for.body.20, label %for.end.30

for.body.20:                                      ; preds = %for.cond.18
  %41 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %41 to i64
  %42 = load i32*, i32** %_i, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %42, i64 %idxprom21
  %43 = load i32, i32* %arrayidx22, align 4
  %44 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %44 to i64
  %45 = load i32*, i32** %_j, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %45, i64 %idxprom23
  %46 = load i32, i32* %arrayidx24, align 4
  %add25 = add nsw i32 %43, %46
  %47 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %47 to i64
  %48 = load i32*, i32** %_o, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %48, i64 %idxprom26
  store i32 %add25, i32* %arrayidx27, align 4
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.20
  %49 = load i32, i32* %pos, align 4
  %inc29 = add nsw i32 %49, 1
  store i32 %inc29, i32* %pos, align 4
  br label %for.cond.18

for.end.30:                                       ; preds = %for.cond.18
  %50 = load i32**, i32*** %_bo, align 8
  %add.ptr31 = getelementptr inbounds i32*, i32** %50, i64 1
  store i32** %add.ptr31, i32*** %_bo, align 8
  %51 = load i32**, i32*** %_bi, align 8
  %add.ptr32 = getelementptr inbounds i32*, i32** %51, i64 1
  store i32** %add.ptr32, i32*** %_bi, align 8
  %52 = load i32**, i32*** %_bj, align 8
  %add.ptr33 = getelementptr inbounds i32*, i32** %52, i64 1
  store i32** %add.ptr33, i32*** %_bj, align 8
  %53 = load i32**, i32*** %_bo, align 8
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %_o, align 8
  %55 = load i32**, i32*** %_bi, align 8
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %_i, align 8
  %57 = load i32**, i32*** %_bj, align 8
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.44, %for.end.30
  %59 = load i32, i32* %pos, align 4
  %60 = load i32, i32* %max_pos.addr, align 4
  %cmp35 = icmp slt i32 %59, %60
  br i1 %cmp35, label %for.body.36, label %for.end.46

for.body.36:                                      ; preds = %for.cond.34
  %61 = load i32, i32* %pos, align 4
  %idxprom37 = sext i32 %61 to i64
  %62 = load i32*, i32** %_i, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %62, i64 %idxprom37
  %63 = load i32, i32* %arrayidx38, align 4
  %64 = load i32, i32* %pos, align 4
  %idxprom39 = sext i32 %64 to i64
  %65 = load i32*, i32** %_j, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %65, i64 %idxprom39
  %66 = load i32, i32* %arrayidx40, align 4
  %add41 = add nsw i32 %63, %66
  %67 = load i32, i32* %pos, align 4
  %idxprom42 = sext i32 %67 to i64
  %68 = load i32*, i32** %_o, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %68, i64 %idxprom42
  store i32 %add41, i32* %arrayidx43, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.36
  %69 = load i32, i32* %pos, align 4
  %inc45 = add nsw i32 %69, 1
  store i32 %inc45, i32* %pos, align 4
  br label %for.cond.34

for.end.46:                                       ; preds = %for.cond.34
  %70 = load i32**, i32*** %_bo, align 8
  %add.ptr47 = getelementptr inbounds i32*, i32** %70, i64 1
  store i32** %add.ptr47, i32*** %_bo, align 8
  %71 = load i32**, i32*** %_bi, align 8
  %add.ptr48 = getelementptr inbounds i32*, i32** %71, i64 1
  store i32** %add.ptr48, i32*** %_bi, align 8
  %72 = load i32**, i32*** %_bj, align 8
  %add.ptr49 = getelementptr inbounds i32*, i32** %72, i64 1
  store i32** %add.ptr49, i32*** %_bj, align 8
  %73 = load i32**, i32*** %_bo, align 8
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %_o, align 8
  %75 = load i32**, i32*** %_bi, align 8
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %_i, align 8
  %77 = load i32**, i32*** %_bj, align 8
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.60, %for.end.46
  %79 = load i32, i32* %pos, align 4
  %80 = load i32, i32* %max_pos.addr, align 4
  %cmp51 = icmp slt i32 %79, %80
  br i1 %cmp51, label %for.body.52, label %for.end.62

for.body.52:                                      ; preds = %for.cond.50
  %81 = load i32, i32* %pos, align 4
  %idxprom53 = sext i32 %81 to i64
  %82 = load i32*, i32** %_i, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %82, i64 %idxprom53
  %83 = load i32, i32* %arrayidx54, align 4
  %84 = load i32, i32* %pos, align 4
  %idxprom55 = sext i32 %84 to i64
  %85 = load i32*, i32** %_j, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %85, i64 %idxprom55
  %86 = load i32, i32* %arrayidx56, align 4
  %add57 = add nsw i32 %83, %86
  %87 = load i32, i32* %pos, align 4
  %idxprom58 = sext i32 %87 to i64
  %88 = load i32*, i32** %_o, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %88, i64 %idxprom58
  store i32 %add57, i32* %arrayidx59, align 4
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.52
  %89 = load i32, i32* %pos, align 4
  %inc61 = add nsw i32 %89, 1
  store i32 %inc61, i32* %pos, align 4
  br label %for.cond.50

for.end.62:                                       ; preds = %for.cond.50
  %90 = load i32**, i32*** %_bo, align 8
  %add.ptr63 = getelementptr inbounds i32*, i32** %90, i64 5
  store i32** %add.ptr63, i32*** %_bo, align 8
  %91 = load i32**, i32*** %_bi, align 8
  %add.ptr64 = getelementptr inbounds i32*, i32** %91, i64 5
  store i32** %add.ptr64, i32*** %_bi, align 8
  %92 = load i32**, i32*** %_bj, align 8
  %add.ptr65 = getelementptr inbounds i32*, i32** %92, i64 5
  store i32** %add.ptr65, i32*** %_bj, align 8
  %93 = load i32**, i32*** %_bo, align 8
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %_o, align 8
  %95 = load i32**, i32*** %_bi, align 8
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %_i, align 8
  %97 = load i32**, i32*** %_bj, align 8
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.76, %for.end.62
  %99 = load i32, i32* %pos, align 4
  %100 = load i32, i32* %max_pos.addr, align 4
  %cmp67 = icmp slt i32 %99, %100
  br i1 %cmp67, label %for.body.68, label %for.end.78

for.body.68:                                      ; preds = %for.cond.66
  %101 = load i32, i32* %pos, align 4
  %idxprom69 = sext i32 %101 to i64
  %102 = load i32*, i32** %_i, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %102, i64 %idxprom69
  %103 = load i32, i32* %arrayidx70, align 4
  %104 = load i32, i32* %pos, align 4
  %idxprom71 = sext i32 %104 to i64
  %105 = load i32*, i32** %_j, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %105, i64 %idxprom71
  %106 = load i32, i32* %arrayidx72, align 4
  %add73 = add nsw i32 %103, %106
  %107 = load i32, i32* %pos, align 4
  %idxprom74 = sext i32 %107 to i64
  %108 = load i32*, i32** %_o, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %108, i64 %idxprom74
  store i32 %add73, i32* %arrayidx75, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.68
  %109 = load i32, i32* %pos, align 4
  %inc77 = add nsw i32 %109, 1
  store i32 %inc77, i32* %pos, align 4
  br label %for.cond.66

for.end.78:                                       ; preds = %for.cond.66
  %110 = load i32**, i32*** %_bo, align 8
  %add.ptr79 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32** %add.ptr79, i32*** %_bo, align 8
  %111 = load i32**, i32*** %_bi, align 8
  %add.ptr80 = getelementptr inbounds i32*, i32** %111, i64 1
  store i32** %add.ptr80, i32*** %_bi, align 8
  %112 = load i32**, i32*** %_bj, align 8
  %add.ptr81 = getelementptr inbounds i32*, i32** %112, i64 1
  store i32** %add.ptr81, i32*** %_bj, align 8
  %113 = load i32**, i32*** %_bo, align 8
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %_o, align 8
  %115 = load i32**, i32*** %_bi, align 8
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %_i, align 8
  %117 = load i32**, i32*** %_bj, align 8
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.92, %for.end.78
  %119 = load i32, i32* %pos, align 4
  %120 = load i32, i32* %max_pos.addr, align 4
  %cmp83 = icmp slt i32 %119, %120
  br i1 %cmp83, label %for.body.84, label %for.end.94

for.body.84:                                      ; preds = %for.cond.82
  %121 = load i32, i32* %pos, align 4
  %idxprom85 = sext i32 %121 to i64
  %122 = load i32*, i32** %_i, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %122, i64 %idxprom85
  %123 = load i32, i32* %arrayidx86, align 4
  %124 = load i32, i32* %pos, align 4
  %idxprom87 = sext i32 %124 to i64
  %125 = load i32*, i32** %_j, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %125, i64 %idxprom87
  %126 = load i32, i32* %arrayidx88, align 4
  %add89 = add nsw i32 %123, %126
  %127 = load i32, i32* %pos, align 4
  %idxprom90 = sext i32 %127 to i64
  %128 = load i32*, i32** %_o, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %128, i64 %idxprom90
  store i32 %add89, i32* %arrayidx91, align 4
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.84
  %129 = load i32, i32* %pos, align 4
  %inc93 = add nsw i32 %129, 1
  store i32 %inc93, i32* %pos, align 4
  br label %for.cond.82

for.end.94:                                       ; preds = %for.cond.82
  %130 = load i32**, i32*** %_bo, align 8
  %add.ptr95 = getelementptr inbounds i32*, i32** %130, i64 1
  store i32** %add.ptr95, i32*** %_bo, align 8
  %131 = load i32**, i32*** %_bi, align 8
  %add.ptr96 = getelementptr inbounds i32*, i32** %131, i64 1
  store i32** %add.ptr96, i32*** %_bi, align 8
  %132 = load i32**, i32*** %_bj, align 8
  %add.ptr97 = getelementptr inbounds i32*, i32** %132, i64 1
  store i32** %add.ptr97, i32*** %_bj, align 8
  %133 = load i32**, i32*** %_bo, align 8
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %_o, align 8
  %135 = load i32**, i32*** %_bi, align 8
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %_i, align 8
  %137 = load i32**, i32*** %_bj, align 8
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.108, %for.end.94
  %139 = load i32, i32* %pos, align 4
  %140 = load i32, i32* %max_pos.addr, align 4
  %cmp99 = icmp slt i32 %139, %140
  br i1 %cmp99, label %for.body.100, label %for.end.110

for.body.100:                                     ; preds = %for.cond.98
  %141 = load i32, i32* %pos, align 4
  %idxprom101 = sext i32 %141 to i64
  %142 = load i32*, i32** %_i, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %142, i64 %idxprom101
  %143 = load i32, i32* %arrayidx102, align 4
  %144 = load i32, i32* %pos, align 4
  %idxprom103 = sext i32 %144 to i64
  %145 = load i32*, i32** %_j, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %145, i64 %idxprom103
  %146 = load i32, i32* %arrayidx104, align 4
  %add105 = add nsw i32 %143, %146
  %147 = load i32, i32* %pos, align 4
  %idxprom106 = sext i32 %147 to i64
  %148 = load i32*, i32** %_o, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %148, i64 %idxprom106
  store i32 %add105, i32* %arrayidx107, align 4
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.100
  %149 = load i32, i32* %pos, align 4
  %inc109 = add nsw i32 %149, 1
  store i32 %inc109, i32* %pos, align 4
  br label %for.cond.98

for.end.110:                                      ; preds = %for.cond.98
  %150 = load i32**, i32*** %_bo, align 8
  %add.ptr111 = getelementptr inbounds i32*, i32** %150, i64 1
  store i32** %add.ptr111, i32*** %_bo, align 8
  %151 = load i32**, i32*** %_bi, align 8
  %add.ptr112 = getelementptr inbounds i32*, i32** %151, i64 1
  store i32** %add.ptr112, i32*** %_bi, align 8
  %152 = load i32**, i32*** %_bj, align 8
  %add.ptr113 = getelementptr inbounds i32*, i32** %152, i64 1
  store i32** %add.ptr113, i32*** %_bj, align 8
  %153 = load i32**, i32*** %_bo, align 8
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %_o, align 8
  %155 = load i32**, i32*** %_bi, align 8
  %156 = load i32*, i32** %155, align 8
  store i32* %156, i32** %_i, align 8
  %157 = load i32**, i32*** %_bj, align 8
  %158 = load i32*, i32** %157, align 8
  store i32* %158, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.124, %for.end.110
  %159 = load i32, i32* %pos, align 4
  %160 = load i32, i32* %max_pos.addr, align 4
  %cmp115 = icmp slt i32 %159, %160
  br i1 %cmp115, label %for.body.116, label %for.end.126

for.body.116:                                     ; preds = %for.cond.114
  %161 = load i32, i32* %pos, align 4
  %idxprom117 = sext i32 %161 to i64
  %162 = load i32*, i32** %_i, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %162, i64 %idxprom117
  %163 = load i32, i32* %arrayidx118, align 4
  %164 = load i32, i32* %pos, align 4
  %idxprom119 = sext i32 %164 to i64
  %165 = load i32*, i32** %_j, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %165, i64 %idxprom119
  %166 = load i32, i32* %arrayidx120, align 4
  %add121 = add nsw i32 %163, %166
  %167 = load i32, i32* %pos, align 4
  %idxprom122 = sext i32 %167 to i64
  %168 = load i32*, i32** %_o, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %168, i64 %idxprom122
  store i32 %add121, i32* %arrayidx123, align 4
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.116
  %169 = load i32, i32* %pos, align 4
  %inc125 = add nsw i32 %169, 1
  store i32 %inc125, i32* %pos, align 4
  br label %for.cond.114

for.end.126:                                      ; preds = %for.cond.114
  %170 = load i32, i32* %refindex.addr, align 4
  %idxprom127 = sext i32 %170 to i64
  %171 = load i32, i32* %list.addr, align 4
  %idxprom128 = sext i32 %171 to i64
  %172 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx129 = getelementptr inbounds i32****, i32***** %172, i64 %idxprom128
  %173 = load i32****, i32***** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i32***, i32**** %173, i64 %idxprom127
  %174 = load i32***, i32**** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i32**, i32*** %174, i64 5
  %175 = load i32**, i32*** %arrayidx131, align 8
  store i32** %175, i32*** %_bo, align 8
  %176 = load i32, i32* %refindex.addr, align 4
  %idxprom132 = sext i32 %176 to i64
  %177 = load i32, i32* %list.addr, align 4
  %idxprom133 = sext i32 %177 to i64
  %178 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx134 = getelementptr inbounds i32****, i32***** %178, i64 %idxprom133
  %179 = load i32****, i32***** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i32***, i32**** %179, i64 %idxprom132
  %180 = load i32***, i32**** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i32**, i32*** %180, i64 7
  %181 = load i32**, i32*** %arrayidx136, align 8
  store i32** %181, i32*** %_bi, align 8
  %182 = load i32**, i32*** %_bi, align 8
  %add.ptr137 = getelementptr inbounds i32*, i32** %182, i64 1
  store i32** %add.ptr137, i32*** %_bj, align 8
  %183 = load i32**, i32*** %_bo, align 8
  %184 = load i32*, i32** %183, align 8
  store i32* %184, i32** %_o, align 8
  %185 = load i32**, i32*** %_bi, align 8
  %186 = load i32*, i32** %185, align 8
  store i32* %186, i32** %_i, align 8
  %187 = load i32**, i32*** %_bj, align 8
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.148, %for.end.126
  %189 = load i32, i32* %pos, align 4
  %190 = load i32, i32* %max_pos.addr, align 4
  %cmp139 = icmp slt i32 %189, %190
  br i1 %cmp139, label %for.body.140, label %for.end.150

for.body.140:                                     ; preds = %for.cond.138
  %191 = load i32, i32* %pos, align 4
  %idxprom141 = sext i32 %191 to i64
  %192 = load i32*, i32** %_i, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %192, i64 %idxprom141
  %193 = load i32, i32* %arrayidx142, align 4
  %194 = load i32, i32* %pos, align 4
  %idxprom143 = sext i32 %194 to i64
  %195 = load i32*, i32** %_j, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %195, i64 %idxprom143
  %196 = load i32, i32* %arrayidx144, align 4
  %add145 = add nsw i32 %193, %196
  %197 = load i32, i32* %pos, align 4
  %idxprom146 = sext i32 %197 to i64
  %198 = load i32*, i32** %_o, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %198, i64 %idxprom146
  store i32 %add145, i32* %arrayidx147, align 4
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.140
  %199 = load i32, i32* %pos, align 4
  %inc149 = add nsw i32 %199, 1
  store i32 %inc149, i32* %pos, align 4
  br label %for.cond.138

for.end.150:                                      ; preds = %for.cond.138
  %200 = load i32**, i32*** %_bo, align 8
  %add.ptr151 = getelementptr inbounds i32*, i32** %200, i64 2
  store i32** %add.ptr151, i32*** %_bo, align 8
  %201 = load i32**, i32*** %_bi, align 8
  %add.ptr152 = getelementptr inbounds i32*, i32** %201, i64 2
  store i32** %add.ptr152, i32*** %_bi, align 8
  %202 = load i32**, i32*** %_bj, align 8
  %add.ptr153 = getelementptr inbounds i32*, i32** %202, i64 2
  store i32** %add.ptr153, i32*** %_bj, align 8
  %203 = load i32**, i32*** %_bo, align 8
  %204 = load i32*, i32** %203, align 8
  store i32* %204, i32** %_o, align 8
  %205 = load i32**, i32*** %_bi, align 8
  %206 = load i32*, i32** %205, align 8
  store i32* %206, i32** %_i, align 8
  %207 = load i32**, i32*** %_bj, align 8
  %208 = load i32*, i32** %207, align 8
  store i32* %208, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.164, %for.end.150
  %209 = load i32, i32* %pos, align 4
  %210 = load i32, i32* %max_pos.addr, align 4
  %cmp155 = icmp slt i32 %209, %210
  br i1 %cmp155, label %for.body.156, label %for.end.166

for.body.156:                                     ; preds = %for.cond.154
  %211 = load i32, i32* %pos, align 4
  %idxprom157 = sext i32 %211 to i64
  %212 = load i32*, i32** %_i, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %212, i64 %idxprom157
  %213 = load i32, i32* %arrayidx158, align 4
  %214 = load i32, i32* %pos, align 4
  %idxprom159 = sext i32 %214 to i64
  %215 = load i32*, i32** %_j, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %215, i64 %idxprom159
  %216 = load i32, i32* %arrayidx160, align 4
  %add161 = add nsw i32 %213, %216
  %217 = load i32, i32* %pos, align 4
  %idxprom162 = sext i32 %217 to i64
  %218 = load i32*, i32** %_o, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %218, i64 %idxprom162
  store i32 %add161, i32* %arrayidx163, align 4
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.156
  %219 = load i32, i32* %pos, align 4
  %inc165 = add nsw i32 %219, 1
  store i32 %inc165, i32* %pos, align 4
  br label %for.cond.154

for.end.166:                                      ; preds = %for.cond.154
  %220 = load i32**, i32*** %_bo, align 8
  %add.ptr167 = getelementptr inbounds i32*, i32** %220, i64 2
  store i32** %add.ptr167, i32*** %_bo, align 8
  %221 = load i32**, i32*** %_bi, align 8
  %add.ptr168 = getelementptr inbounds i32*, i32** %221, i64 2
  store i32** %add.ptr168, i32*** %_bi, align 8
  %222 = load i32**, i32*** %_bj, align 8
  %add.ptr169 = getelementptr inbounds i32*, i32** %222, i64 2
  store i32** %add.ptr169, i32*** %_bj, align 8
  %223 = load i32**, i32*** %_bo, align 8
  %224 = load i32*, i32** %223, align 8
  store i32* %224, i32** %_o, align 8
  %225 = load i32**, i32*** %_bi, align 8
  %226 = load i32*, i32** %225, align 8
  store i32* %226, i32** %_i, align 8
  %227 = load i32**, i32*** %_bj, align 8
  %228 = load i32*, i32** %227, align 8
  store i32* %228, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.180, %for.end.166
  %229 = load i32, i32* %pos, align 4
  %230 = load i32, i32* %max_pos.addr, align 4
  %cmp171 = icmp slt i32 %229, %230
  br i1 %cmp171, label %for.body.172, label %for.end.182

for.body.172:                                     ; preds = %for.cond.170
  %231 = load i32, i32* %pos, align 4
  %idxprom173 = sext i32 %231 to i64
  %232 = load i32*, i32** %_i, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %232, i64 %idxprom173
  %233 = load i32, i32* %arrayidx174, align 4
  %234 = load i32, i32* %pos, align 4
  %idxprom175 = sext i32 %234 to i64
  %235 = load i32*, i32** %_j, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %235, i64 %idxprom175
  %236 = load i32, i32* %arrayidx176, align 4
  %add177 = add nsw i32 %233, %236
  %237 = load i32, i32* %pos, align 4
  %idxprom178 = sext i32 %237 to i64
  %238 = load i32*, i32** %_o, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %238, i64 %idxprom178
  store i32 %add177, i32* %arrayidx179, align 4
  br label %for.inc.180

for.inc.180:                                      ; preds = %for.body.172
  %239 = load i32, i32* %pos, align 4
  %inc181 = add nsw i32 %239, 1
  store i32 %inc181, i32* %pos, align 4
  br label %for.cond.170

for.end.182:                                      ; preds = %for.cond.170
  %240 = load i32**, i32*** %_bo, align 8
  %add.ptr183 = getelementptr inbounds i32*, i32** %240, i64 2
  store i32** %add.ptr183, i32*** %_bo, align 8
  %241 = load i32**, i32*** %_bi, align 8
  %add.ptr184 = getelementptr inbounds i32*, i32** %241, i64 2
  store i32** %add.ptr184, i32*** %_bi, align 8
  %242 = load i32**, i32*** %_bj, align 8
  %add.ptr185 = getelementptr inbounds i32*, i32** %242, i64 2
  store i32** %add.ptr185, i32*** %_bj, align 8
  %243 = load i32**, i32*** %_bo, align 8
  %244 = load i32*, i32** %243, align 8
  store i32* %244, i32** %_o, align 8
  %245 = load i32**, i32*** %_bi, align 8
  %246 = load i32*, i32** %245, align 8
  store i32* %246, i32** %_i, align 8
  %247 = load i32**, i32*** %_bj, align 8
  %248 = load i32*, i32** %247, align 8
  store i32* %248, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.196, %for.end.182
  %249 = load i32, i32* %pos, align 4
  %250 = load i32, i32* %max_pos.addr, align 4
  %cmp187 = icmp slt i32 %249, %250
  br i1 %cmp187, label %for.body.188, label %for.end.198

for.body.188:                                     ; preds = %for.cond.186
  %251 = load i32, i32* %pos, align 4
  %idxprom189 = sext i32 %251 to i64
  %252 = load i32*, i32** %_i, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %252, i64 %idxprom189
  %253 = load i32, i32* %arrayidx190, align 4
  %254 = load i32, i32* %pos, align 4
  %idxprom191 = sext i32 %254 to i64
  %255 = load i32*, i32** %_j, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %255, i64 %idxprom191
  %256 = load i32, i32* %arrayidx192, align 4
  %add193 = add nsw i32 %253, %256
  %257 = load i32, i32* %pos, align 4
  %idxprom194 = sext i32 %257 to i64
  %258 = load i32*, i32** %_o, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %258, i64 %idxprom194
  store i32 %add193, i32* %arrayidx195, align 4
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.188
  %259 = load i32, i32* %pos, align 4
  %inc197 = add nsw i32 %259, 1
  store i32 %inc197, i32* %pos, align 4
  br label %for.cond.186

for.end.198:                                      ; preds = %for.cond.186
  %260 = load i32**, i32*** %_bo, align 8
  %add.ptr199 = getelementptr inbounds i32*, i32** %260, i64 2
  store i32** %add.ptr199, i32*** %_bo, align 8
  %261 = load i32**, i32*** %_bi, align 8
  %add.ptr200 = getelementptr inbounds i32*, i32** %261, i64 2
  store i32** %add.ptr200, i32*** %_bi, align 8
  %262 = load i32**, i32*** %_bj, align 8
  %add.ptr201 = getelementptr inbounds i32*, i32** %262, i64 2
  store i32** %add.ptr201, i32*** %_bj, align 8
  %263 = load i32**, i32*** %_bo, align 8
  %264 = load i32*, i32** %263, align 8
  store i32* %264, i32** %_o, align 8
  %265 = load i32**, i32*** %_bi, align 8
  %266 = load i32*, i32** %265, align 8
  store i32* %266, i32** %_i, align 8
  %267 = load i32**, i32*** %_bj, align 8
  %268 = load i32*, i32** %267, align 8
  store i32* %268, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.212, %for.end.198
  %269 = load i32, i32* %pos, align 4
  %270 = load i32, i32* %max_pos.addr, align 4
  %cmp203 = icmp slt i32 %269, %270
  br i1 %cmp203, label %for.body.204, label %for.end.214

for.body.204:                                     ; preds = %for.cond.202
  %271 = load i32, i32* %pos, align 4
  %idxprom205 = sext i32 %271 to i64
  %272 = load i32*, i32** %_i, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %272, i64 %idxprom205
  %273 = load i32, i32* %arrayidx206, align 4
  %274 = load i32, i32* %pos, align 4
  %idxprom207 = sext i32 %274 to i64
  %275 = load i32*, i32** %_j, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %275, i64 %idxprom207
  %276 = load i32, i32* %arrayidx208, align 4
  %add209 = add nsw i32 %273, %276
  %277 = load i32, i32* %pos, align 4
  %idxprom210 = sext i32 %277 to i64
  %278 = load i32*, i32** %_o, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %278, i64 %idxprom210
  store i32 %add209, i32* %arrayidx211, align 4
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.body.204
  %279 = load i32, i32* %pos, align 4
  %inc213 = add nsw i32 %279, 1
  store i32 %inc213, i32* %pos, align 4
  br label %for.cond.202

for.end.214:                                      ; preds = %for.cond.202
  %280 = load i32**, i32*** %_bo, align 8
  %add.ptr215 = getelementptr inbounds i32*, i32** %280, i64 2
  store i32** %add.ptr215, i32*** %_bo, align 8
  %281 = load i32**, i32*** %_bi, align 8
  %add.ptr216 = getelementptr inbounds i32*, i32** %281, i64 2
  store i32** %add.ptr216, i32*** %_bi, align 8
  %282 = load i32**, i32*** %_bj, align 8
  %add.ptr217 = getelementptr inbounds i32*, i32** %282, i64 2
  store i32** %add.ptr217, i32*** %_bj, align 8
  %283 = load i32**, i32*** %_bo, align 8
  %284 = load i32*, i32** %283, align 8
  store i32* %284, i32** %_o, align 8
  %285 = load i32**, i32*** %_bi, align 8
  %286 = load i32*, i32** %285, align 8
  store i32* %286, i32** %_i, align 8
  %287 = load i32**, i32*** %_bj, align 8
  %288 = load i32*, i32** %287, align 8
  store i32* %288, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc.228, %for.end.214
  %289 = load i32, i32* %pos, align 4
  %290 = load i32, i32* %max_pos.addr, align 4
  %cmp219 = icmp slt i32 %289, %290
  br i1 %cmp219, label %for.body.220, label %for.end.230

for.body.220:                                     ; preds = %for.cond.218
  %291 = load i32, i32* %pos, align 4
  %idxprom221 = sext i32 %291 to i64
  %292 = load i32*, i32** %_i, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %292, i64 %idxprom221
  %293 = load i32, i32* %arrayidx222, align 4
  %294 = load i32, i32* %pos, align 4
  %idxprom223 = sext i32 %294 to i64
  %295 = load i32*, i32** %_j, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %295, i64 %idxprom223
  %296 = load i32, i32* %arrayidx224, align 4
  %add225 = add nsw i32 %293, %296
  %297 = load i32, i32* %pos, align 4
  %idxprom226 = sext i32 %297 to i64
  %298 = load i32*, i32** %_o, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %298, i64 %idxprom226
  store i32 %add225, i32* %arrayidx227, align 4
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.body.220
  %299 = load i32, i32* %pos, align 4
  %inc229 = add nsw i32 %299, 1
  store i32 %inc229, i32* %pos, align 4
  br label %for.cond.218

for.end.230:                                      ; preds = %for.cond.218
  %300 = load i32**, i32*** %_bo, align 8
  %add.ptr231 = getelementptr inbounds i32*, i32** %300, i64 2
  store i32** %add.ptr231, i32*** %_bo, align 8
  %301 = load i32**, i32*** %_bi, align 8
  %add.ptr232 = getelementptr inbounds i32*, i32** %301, i64 2
  store i32** %add.ptr232, i32*** %_bi, align 8
  %302 = load i32**, i32*** %_bj, align 8
  %add.ptr233 = getelementptr inbounds i32*, i32** %302, i64 2
  store i32** %add.ptr233, i32*** %_bj, align 8
  %303 = load i32**, i32*** %_bo, align 8
  %304 = load i32*, i32** %303, align 8
  store i32* %304, i32** %_o, align 8
  %305 = load i32**, i32*** %_bi, align 8
  %306 = load i32*, i32** %305, align 8
  store i32* %306, i32** %_i, align 8
  %307 = load i32**, i32*** %_bj, align 8
  %308 = load i32*, i32** %307, align 8
  store i32* %308, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.244, %for.end.230
  %309 = load i32, i32* %pos, align 4
  %310 = load i32, i32* %max_pos.addr, align 4
  %cmp235 = icmp slt i32 %309, %310
  br i1 %cmp235, label %for.body.236, label %for.end.246

for.body.236:                                     ; preds = %for.cond.234
  %311 = load i32, i32* %pos, align 4
  %idxprom237 = sext i32 %311 to i64
  %312 = load i32*, i32** %_i, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %312, i64 %idxprom237
  %313 = load i32, i32* %arrayidx238, align 4
  %314 = load i32, i32* %pos, align 4
  %idxprom239 = sext i32 %314 to i64
  %315 = load i32*, i32** %_j, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %315, i64 %idxprom239
  %316 = load i32, i32* %arrayidx240, align 4
  %add241 = add nsw i32 %313, %316
  %317 = load i32, i32* %pos, align 4
  %idxprom242 = sext i32 %317 to i64
  %318 = load i32*, i32** %_o, align 8
  %arrayidx243 = getelementptr inbounds i32, i32* %318, i64 %idxprom242
  store i32 %add241, i32* %arrayidx243, align 4
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.body.236
  %319 = load i32, i32* %pos, align 4
  %inc245 = add nsw i32 %319, 1
  store i32 %inc245, i32* %pos, align 4
  br label %for.cond.234

for.end.246:                                      ; preds = %for.cond.234
  %320 = load i32**, i32*** %_bo, align 8
  %add.ptr247 = getelementptr inbounds i32*, i32** %320, i64 2
  store i32** %add.ptr247, i32*** %_bo, align 8
  %321 = load i32**, i32*** %_bi, align 8
  %add.ptr248 = getelementptr inbounds i32*, i32** %321, i64 2
  store i32** %add.ptr248, i32*** %_bi, align 8
  %322 = load i32**, i32*** %_bj, align 8
  %add.ptr249 = getelementptr inbounds i32*, i32** %322, i64 2
  store i32** %add.ptr249, i32*** %_bj, align 8
  %323 = load i32**, i32*** %_bo, align 8
  %324 = load i32*, i32** %323, align 8
  store i32* %324, i32** %_o, align 8
  %325 = load i32**, i32*** %_bi, align 8
  %326 = load i32*, i32** %325, align 8
  store i32* %326, i32** %_i, align 8
  %327 = load i32**, i32*** %_bj, align 8
  %328 = load i32*, i32** %327, align 8
  store i32* %328, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.250

for.cond.250:                                     ; preds = %for.inc.260, %for.end.246
  %329 = load i32, i32* %pos, align 4
  %330 = load i32, i32* %max_pos.addr, align 4
  %cmp251 = icmp slt i32 %329, %330
  br i1 %cmp251, label %for.body.252, label %for.end.262

for.body.252:                                     ; preds = %for.cond.250
  %331 = load i32, i32* %pos, align 4
  %idxprom253 = sext i32 %331 to i64
  %332 = load i32*, i32** %_i, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %332, i64 %idxprom253
  %333 = load i32, i32* %arrayidx254, align 4
  %334 = load i32, i32* %pos, align 4
  %idxprom255 = sext i32 %334 to i64
  %335 = load i32*, i32** %_j, align 8
  %arrayidx256 = getelementptr inbounds i32, i32* %335, i64 %idxprom255
  %336 = load i32, i32* %arrayidx256, align 4
  %add257 = add nsw i32 %333, %336
  %337 = load i32, i32* %pos, align 4
  %idxprom258 = sext i32 %337 to i64
  %338 = load i32*, i32** %_o, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %338, i64 %idxprom258
  store i32 %add257, i32* %arrayidx259, align 4
  br label %for.inc.260

for.inc.260:                                      ; preds = %for.body.252
  %339 = load i32, i32* %pos, align 4
  %inc261 = add nsw i32 %339, 1
  store i32 %inc261, i32* %pos, align 4
  br label %for.cond.250

for.end.262:                                      ; preds = %for.cond.250
  %340 = load i32, i32* %refindex.addr, align 4
  %idxprom263 = sext i32 %340 to i64
  %341 = load i32, i32* %list.addr, align 4
  %idxprom264 = sext i32 %341 to i64
  %342 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx265 = getelementptr inbounds i32****, i32***** %342, i64 %idxprom264
  %343 = load i32****, i32***** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i32***, i32**** %343, i64 %idxprom263
  %344 = load i32***, i32**** %arrayidx266, align 8
  %arrayidx267 = getelementptr inbounds i32**, i32*** %344, i64 4
  %345 = load i32**, i32*** %arrayidx267, align 8
  store i32** %345, i32*** %_bo, align 8
  %346 = load i32, i32* %refindex.addr, align 4
  %idxprom268 = sext i32 %346 to i64
  %347 = load i32, i32* %list.addr, align 4
  %idxprom269 = sext i32 %347 to i64
  %348 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx270 = getelementptr inbounds i32****, i32***** %348, i64 %idxprom269
  %349 = load i32****, i32***** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i32***, i32**** %349, i64 %idxprom268
  %350 = load i32***, i32**** %arrayidx271, align 8
  %arrayidx272 = getelementptr inbounds i32**, i32*** %350, i64 6
  %351 = load i32**, i32*** %arrayidx272, align 8
  store i32** %351, i32*** %_bi, align 8
  %352 = load i32**, i32*** %_bi, align 8
  %add.ptr273 = getelementptr inbounds i32*, i32** %352, i64 1
  store i32** %add.ptr273, i32*** %_bj, align 8
  %353 = load i32**, i32*** %_bo, align 8
  %354 = load i32*, i32** %353, align 8
  store i32* %354, i32** %_o, align 8
  %355 = load i32**, i32*** %_bi, align 8
  %356 = load i32*, i32** %355, align 8
  store i32* %356, i32** %_i, align 8
  %357 = load i32**, i32*** %_bj, align 8
  %358 = load i32*, i32** %357, align 8
  store i32* %358, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.284, %for.end.262
  %359 = load i32, i32* %pos, align 4
  %360 = load i32, i32* %max_pos.addr, align 4
  %cmp275 = icmp slt i32 %359, %360
  br i1 %cmp275, label %for.body.276, label %for.end.286

for.body.276:                                     ; preds = %for.cond.274
  %361 = load i32, i32* %pos, align 4
  %idxprom277 = sext i32 %361 to i64
  %362 = load i32*, i32** %_i, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %362, i64 %idxprom277
  %363 = load i32, i32* %arrayidx278, align 4
  %364 = load i32, i32* %pos, align 4
  %idxprom279 = sext i32 %364 to i64
  %365 = load i32*, i32** %_j, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %365, i64 %idxprom279
  %366 = load i32, i32* %arrayidx280, align 4
  %add281 = add nsw i32 %363, %366
  %367 = load i32, i32* %pos, align 4
  %idxprom282 = sext i32 %367 to i64
  %368 = load i32*, i32** %_o, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %368, i64 %idxprom282
  store i32 %add281, i32* %arrayidx283, align 4
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.body.276
  %369 = load i32, i32* %pos, align 4
  %inc285 = add nsw i32 %369, 1
  store i32 %inc285, i32* %pos, align 4
  br label %for.cond.274

for.end.286:                                      ; preds = %for.cond.274
  %370 = load i32**, i32*** %_bo, align 8
  %add.ptr287 = getelementptr inbounds i32*, i32** %370, i64 2
  store i32** %add.ptr287, i32*** %_bo, align 8
  %371 = load i32**, i32*** %_bi, align 8
  %add.ptr288 = getelementptr inbounds i32*, i32** %371, i64 2
  store i32** %add.ptr288, i32*** %_bi, align 8
  %372 = load i32**, i32*** %_bj, align 8
  %add.ptr289 = getelementptr inbounds i32*, i32** %372, i64 2
  store i32** %add.ptr289, i32*** %_bj, align 8
  %373 = load i32**, i32*** %_bo, align 8
  %374 = load i32*, i32** %373, align 8
  store i32* %374, i32** %_o, align 8
  %375 = load i32**, i32*** %_bi, align 8
  %376 = load i32*, i32** %375, align 8
  store i32* %376, i32** %_i, align 8
  %377 = load i32**, i32*** %_bj, align 8
  %378 = load i32*, i32** %377, align 8
  store i32* %378, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.290

for.cond.290:                                     ; preds = %for.inc.300, %for.end.286
  %379 = load i32, i32* %pos, align 4
  %380 = load i32, i32* %max_pos.addr, align 4
  %cmp291 = icmp slt i32 %379, %380
  br i1 %cmp291, label %for.body.292, label %for.end.302

for.body.292:                                     ; preds = %for.cond.290
  %381 = load i32, i32* %pos, align 4
  %idxprom293 = sext i32 %381 to i64
  %382 = load i32*, i32** %_i, align 8
  %arrayidx294 = getelementptr inbounds i32, i32* %382, i64 %idxprom293
  %383 = load i32, i32* %arrayidx294, align 4
  %384 = load i32, i32* %pos, align 4
  %idxprom295 = sext i32 %384 to i64
  %385 = load i32*, i32** %_j, align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %385, i64 %idxprom295
  %386 = load i32, i32* %arrayidx296, align 4
  %add297 = add nsw i32 %383, %386
  %387 = load i32, i32* %pos, align 4
  %idxprom298 = sext i32 %387 to i64
  %388 = load i32*, i32** %_o, align 8
  %arrayidx299 = getelementptr inbounds i32, i32* %388, i64 %idxprom298
  store i32 %add297, i32* %arrayidx299, align 4
  br label %for.inc.300

for.inc.300:                                      ; preds = %for.body.292
  %389 = load i32, i32* %pos, align 4
  %inc301 = add nsw i32 %389, 1
  store i32 %inc301, i32* %pos, align 4
  br label %for.cond.290

for.end.302:                                      ; preds = %for.cond.290
  %390 = load i32**, i32*** %_bo, align 8
  %add.ptr303 = getelementptr inbounds i32*, i32** %390, i64 6
  store i32** %add.ptr303, i32*** %_bo, align 8
  %391 = load i32**, i32*** %_bi, align 8
  %add.ptr304 = getelementptr inbounds i32*, i32** %391, i64 6
  store i32** %add.ptr304, i32*** %_bi, align 8
  %392 = load i32**, i32*** %_bj, align 8
  %add.ptr305 = getelementptr inbounds i32*, i32** %392, i64 6
  store i32** %add.ptr305, i32*** %_bj, align 8
  %393 = load i32**, i32*** %_bo, align 8
  %394 = load i32*, i32** %393, align 8
  store i32* %394, i32** %_o, align 8
  %395 = load i32**, i32*** %_bi, align 8
  %396 = load i32*, i32** %395, align 8
  store i32* %396, i32** %_i, align 8
  %397 = load i32**, i32*** %_bj, align 8
  %398 = load i32*, i32** %397, align 8
  store i32* %398, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.306

for.cond.306:                                     ; preds = %for.inc.316, %for.end.302
  %399 = load i32, i32* %pos, align 4
  %400 = load i32, i32* %max_pos.addr, align 4
  %cmp307 = icmp slt i32 %399, %400
  br i1 %cmp307, label %for.body.308, label %for.end.318

for.body.308:                                     ; preds = %for.cond.306
  %401 = load i32, i32* %pos, align 4
  %idxprom309 = sext i32 %401 to i64
  %402 = load i32*, i32** %_i, align 8
  %arrayidx310 = getelementptr inbounds i32, i32* %402, i64 %idxprom309
  %403 = load i32, i32* %arrayidx310, align 4
  %404 = load i32, i32* %pos, align 4
  %idxprom311 = sext i32 %404 to i64
  %405 = load i32*, i32** %_j, align 8
  %arrayidx312 = getelementptr inbounds i32, i32* %405, i64 %idxprom311
  %406 = load i32, i32* %arrayidx312, align 4
  %add313 = add nsw i32 %403, %406
  %407 = load i32, i32* %pos, align 4
  %idxprom314 = sext i32 %407 to i64
  %408 = load i32*, i32** %_o, align 8
  %arrayidx315 = getelementptr inbounds i32, i32* %408, i64 %idxprom314
  store i32 %add313, i32* %arrayidx315, align 4
  br label %for.inc.316

for.inc.316:                                      ; preds = %for.body.308
  %409 = load i32, i32* %pos, align 4
  %inc317 = add nsw i32 %409, 1
  store i32 %inc317, i32* %pos, align 4
  br label %for.cond.306

for.end.318:                                      ; preds = %for.cond.306
  %410 = load i32**, i32*** %_bo, align 8
  %add.ptr319 = getelementptr inbounds i32*, i32** %410, i64 2
  store i32** %add.ptr319, i32*** %_bo, align 8
  %411 = load i32**, i32*** %_bi, align 8
  %add.ptr320 = getelementptr inbounds i32*, i32** %411, i64 2
  store i32** %add.ptr320, i32*** %_bi, align 8
  %412 = load i32**, i32*** %_bj, align 8
  %add.ptr321 = getelementptr inbounds i32*, i32** %412, i64 2
  store i32** %add.ptr321, i32*** %_bj, align 8
  %413 = load i32**, i32*** %_bo, align 8
  %414 = load i32*, i32** %413, align 8
  store i32* %414, i32** %_o, align 8
  %415 = load i32**, i32*** %_bi, align 8
  %416 = load i32*, i32** %415, align 8
  store i32* %416, i32** %_i, align 8
  %417 = load i32**, i32*** %_bj, align 8
  %418 = load i32*, i32** %417, align 8
  store i32* %418, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc.332, %for.end.318
  %419 = load i32, i32* %pos, align 4
  %420 = load i32, i32* %max_pos.addr, align 4
  %cmp323 = icmp slt i32 %419, %420
  br i1 %cmp323, label %for.body.324, label %for.end.334

for.body.324:                                     ; preds = %for.cond.322
  %421 = load i32, i32* %pos, align 4
  %idxprom325 = sext i32 %421 to i64
  %422 = load i32*, i32** %_i, align 8
  %arrayidx326 = getelementptr inbounds i32, i32* %422, i64 %idxprom325
  %423 = load i32, i32* %arrayidx326, align 4
  %424 = load i32, i32* %pos, align 4
  %idxprom327 = sext i32 %424 to i64
  %425 = load i32*, i32** %_j, align 8
  %arrayidx328 = getelementptr inbounds i32, i32* %425, i64 %idxprom327
  %426 = load i32, i32* %arrayidx328, align 4
  %add329 = add nsw i32 %423, %426
  %427 = load i32, i32* %pos, align 4
  %idxprom330 = sext i32 %427 to i64
  %428 = load i32*, i32** %_o, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %428, i64 %idxprom330
  store i32 %add329, i32* %arrayidx331, align 4
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body.324
  %429 = load i32, i32* %pos, align 4
  %inc333 = add nsw i32 %429, 1
  store i32 %inc333, i32* %pos, align 4
  br label %for.cond.322

for.end.334:                                      ; preds = %for.cond.322
  %430 = load i32, i32* %refindex.addr, align 4
  %idxprom335 = sext i32 %430 to i64
  %431 = load i32, i32* %list.addr, align 4
  %idxprom336 = sext i32 %431 to i64
  %432 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx337 = getelementptr inbounds i32****, i32***** %432, i64 %idxprom336
  %433 = load i32****, i32***** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i32***, i32**** %433, i64 %idxprom335
  %434 = load i32***, i32**** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds i32**, i32*** %434, i64 3
  %435 = load i32**, i32*** %arrayidx339, align 8
  store i32** %435, i32*** %_bo, align 8
  %436 = load i32, i32* %refindex.addr, align 4
  %idxprom340 = sext i32 %436 to i64
  %437 = load i32, i32* %list.addr, align 4
  %idxprom341 = sext i32 %437 to i64
  %438 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx342 = getelementptr inbounds i32****, i32***** %438, i64 %idxprom341
  %439 = load i32****, i32***** %arrayidx342, align 8
  %arrayidx343 = getelementptr inbounds i32***, i32**** %439, i64 %idxprom340
  %440 = load i32***, i32**** %arrayidx343, align 8
  %arrayidx344 = getelementptr inbounds i32**, i32*** %440, i64 4
  %441 = load i32**, i32*** %arrayidx344, align 8
  store i32** %441, i32*** %_bi, align 8
  %442 = load i32**, i32*** %_bi, align 8
  %add.ptr345 = getelementptr inbounds i32*, i32** %442, i64 8
  store i32** %add.ptr345, i32*** %_bj, align 8
  %443 = load i32**, i32*** %_bo, align 8
  %444 = load i32*, i32** %443, align 8
  store i32* %444, i32** %_o, align 8
  %445 = load i32**, i32*** %_bi, align 8
  %446 = load i32*, i32** %445, align 8
  store i32* %446, i32** %_i, align 8
  %447 = load i32**, i32*** %_bj, align 8
  %448 = load i32*, i32** %447, align 8
  store i32* %448, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.356, %for.end.334
  %449 = load i32, i32* %pos, align 4
  %450 = load i32, i32* %max_pos.addr, align 4
  %cmp347 = icmp slt i32 %449, %450
  br i1 %cmp347, label %for.body.348, label %for.end.358

for.body.348:                                     ; preds = %for.cond.346
  %451 = load i32, i32* %pos, align 4
  %idxprom349 = sext i32 %451 to i64
  %452 = load i32*, i32** %_i, align 8
  %arrayidx350 = getelementptr inbounds i32, i32* %452, i64 %idxprom349
  %453 = load i32, i32* %arrayidx350, align 4
  %454 = load i32, i32* %pos, align 4
  %idxprom351 = sext i32 %454 to i64
  %455 = load i32*, i32** %_j, align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %455, i64 %idxprom351
  %456 = load i32, i32* %arrayidx352, align 4
  %add353 = add nsw i32 %453, %456
  %457 = load i32, i32* %pos, align 4
  %idxprom354 = sext i32 %457 to i64
  %458 = load i32*, i32** %_o, align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %458, i64 %idxprom354
  store i32 %add353, i32* %arrayidx355, align 4
  br label %for.inc.356

for.inc.356:                                      ; preds = %for.body.348
  %459 = load i32, i32* %pos, align 4
  %inc357 = add nsw i32 %459, 1
  store i32 %inc357, i32* %pos, align 4
  br label %for.cond.346

for.end.358:                                      ; preds = %for.cond.346
  %460 = load i32**, i32*** %_bo, align 8
  %add.ptr359 = getelementptr inbounds i32*, i32** %460, i64 2
  store i32** %add.ptr359, i32*** %_bo, align 8
  %461 = load i32**, i32*** %_bi, align 8
  %add.ptr360 = getelementptr inbounds i32*, i32** %461, i64 2
  store i32** %add.ptr360, i32*** %_bi, align 8
  %462 = load i32**, i32*** %_bj, align 8
  %add.ptr361 = getelementptr inbounds i32*, i32** %462, i64 2
  store i32** %add.ptr361, i32*** %_bj, align 8
  %463 = load i32**, i32*** %_bo, align 8
  %464 = load i32*, i32** %463, align 8
  store i32* %464, i32** %_o, align 8
  %465 = load i32**, i32*** %_bi, align 8
  %466 = load i32*, i32** %465, align 8
  store i32* %466, i32** %_i, align 8
  %467 = load i32**, i32*** %_bj, align 8
  %468 = load i32*, i32** %467, align 8
  store i32* %468, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.362

for.cond.362:                                     ; preds = %for.inc.372, %for.end.358
  %469 = load i32, i32* %pos, align 4
  %470 = load i32, i32* %max_pos.addr, align 4
  %cmp363 = icmp slt i32 %469, %470
  br i1 %cmp363, label %for.body.364, label %for.end.374

for.body.364:                                     ; preds = %for.cond.362
  %471 = load i32, i32* %pos, align 4
  %idxprom365 = sext i32 %471 to i64
  %472 = load i32*, i32** %_i, align 8
  %arrayidx366 = getelementptr inbounds i32, i32* %472, i64 %idxprom365
  %473 = load i32, i32* %arrayidx366, align 4
  %474 = load i32, i32* %pos, align 4
  %idxprom367 = sext i32 %474 to i64
  %475 = load i32*, i32** %_j, align 8
  %arrayidx368 = getelementptr inbounds i32, i32* %475, i64 %idxprom367
  %476 = load i32, i32* %arrayidx368, align 4
  %add369 = add nsw i32 %473, %476
  %477 = load i32, i32* %pos, align 4
  %idxprom370 = sext i32 %477 to i64
  %478 = load i32*, i32** %_o, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %478, i64 %idxprom370
  store i32 %add369, i32* %arrayidx371, align 4
  br label %for.inc.372

for.inc.372:                                      ; preds = %for.body.364
  %479 = load i32, i32* %pos, align 4
  %inc373 = add nsw i32 %479, 1
  store i32 %inc373, i32* %pos, align 4
  br label %for.cond.362

for.end.374:                                      ; preds = %for.cond.362
  %480 = load i32, i32* %refindex.addr, align 4
  %idxprom375 = sext i32 %480 to i64
  %481 = load i32, i32* %list.addr, align 4
  %idxprom376 = sext i32 %481 to i64
  %482 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx377 = getelementptr inbounds i32****, i32***** %482, i64 %idxprom376
  %483 = load i32****, i32***** %arrayidx377, align 8
  %arrayidx378 = getelementptr inbounds i32***, i32**** %483, i64 %idxprom375
  %484 = load i32***, i32**** %arrayidx378, align 8
  %arrayidx379 = getelementptr inbounds i32**, i32*** %484, i64 2
  %485 = load i32**, i32*** %arrayidx379, align 8
  store i32** %485, i32*** %_bo, align 8
  %486 = load i32, i32* %refindex.addr, align 4
  %idxprom380 = sext i32 %486 to i64
  %487 = load i32, i32* %list.addr, align 4
  %idxprom381 = sext i32 %487 to i64
  %488 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx382 = getelementptr inbounds i32****, i32***** %488, i64 %idxprom381
  %489 = load i32****, i32***** %arrayidx382, align 8
  %arrayidx383 = getelementptr inbounds i32***, i32**** %489, i64 %idxprom380
  %490 = load i32***, i32**** %arrayidx383, align 8
  %arrayidx384 = getelementptr inbounds i32**, i32*** %490, i64 4
  %491 = load i32**, i32*** %arrayidx384, align 8
  store i32** %491, i32*** %_bi, align 8
  %492 = load i32**, i32*** %_bi, align 8
  %add.ptr385 = getelementptr inbounds i32*, i32** %492, i64 2
  store i32** %add.ptr385, i32*** %_bj, align 8
  %493 = load i32**, i32*** %_bo, align 8
  %494 = load i32*, i32** %493, align 8
  store i32* %494, i32** %_o, align 8
  %495 = load i32**, i32*** %_bi, align 8
  %496 = load i32*, i32** %495, align 8
  store i32* %496, i32** %_i, align 8
  %497 = load i32**, i32*** %_bj, align 8
  %498 = load i32*, i32** %497, align 8
  store i32* %498, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.386

for.cond.386:                                     ; preds = %for.inc.396, %for.end.374
  %499 = load i32, i32* %pos, align 4
  %500 = load i32, i32* %max_pos.addr, align 4
  %cmp387 = icmp slt i32 %499, %500
  br i1 %cmp387, label %for.body.388, label %for.end.398

for.body.388:                                     ; preds = %for.cond.386
  %501 = load i32, i32* %pos, align 4
  %idxprom389 = sext i32 %501 to i64
  %502 = load i32*, i32** %_i, align 8
  %arrayidx390 = getelementptr inbounds i32, i32* %502, i64 %idxprom389
  %503 = load i32, i32* %arrayidx390, align 4
  %504 = load i32, i32* %pos, align 4
  %idxprom391 = sext i32 %504 to i64
  %505 = load i32*, i32** %_j, align 8
  %arrayidx392 = getelementptr inbounds i32, i32* %505, i64 %idxprom391
  %506 = load i32, i32* %arrayidx392, align 4
  %add393 = add nsw i32 %503, %506
  %507 = load i32, i32* %pos, align 4
  %idxprom394 = sext i32 %507 to i64
  %508 = load i32*, i32** %_o, align 8
  %arrayidx395 = getelementptr inbounds i32, i32* %508, i64 %idxprom394
  store i32 %add393, i32* %arrayidx395, align 4
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.body.388
  %509 = load i32, i32* %pos, align 4
  %inc397 = add nsw i32 %509, 1
  store i32 %inc397, i32* %pos, align 4
  br label %for.cond.386

for.end.398:                                      ; preds = %for.cond.386
  %510 = load i32**, i32*** %_bo, align 8
  %add.ptr399 = getelementptr inbounds i32*, i32** %510, i64 8
  store i32** %add.ptr399, i32*** %_bo, align 8
  %511 = load i32**, i32*** %_bi, align 8
  %add.ptr400 = getelementptr inbounds i32*, i32** %511, i64 8
  store i32** %add.ptr400, i32*** %_bi, align 8
  %512 = load i32**, i32*** %_bj, align 8
  %add.ptr401 = getelementptr inbounds i32*, i32** %512, i64 8
  store i32** %add.ptr401, i32*** %_bj, align 8
  %513 = load i32**, i32*** %_bo, align 8
  %514 = load i32*, i32** %513, align 8
  store i32* %514, i32** %_o, align 8
  %515 = load i32**, i32*** %_bi, align 8
  %516 = load i32*, i32** %515, align 8
  store i32* %516, i32** %_i, align 8
  %517 = load i32**, i32*** %_bj, align 8
  %518 = load i32*, i32** %517, align 8
  store i32* %518, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.402

for.cond.402:                                     ; preds = %for.inc.412, %for.end.398
  %519 = load i32, i32* %pos, align 4
  %520 = load i32, i32* %max_pos.addr, align 4
  %cmp403 = icmp slt i32 %519, %520
  br i1 %cmp403, label %for.body.404, label %for.end.414

for.body.404:                                     ; preds = %for.cond.402
  %521 = load i32, i32* %pos, align 4
  %idxprom405 = sext i32 %521 to i64
  %522 = load i32*, i32** %_i, align 8
  %arrayidx406 = getelementptr inbounds i32, i32* %522, i64 %idxprom405
  %523 = load i32, i32* %arrayidx406, align 4
  %524 = load i32, i32* %pos, align 4
  %idxprom407 = sext i32 %524 to i64
  %525 = load i32*, i32** %_j, align 8
  %arrayidx408 = getelementptr inbounds i32, i32* %525, i64 %idxprom407
  %526 = load i32, i32* %arrayidx408, align 4
  %add409 = add nsw i32 %523, %526
  %527 = load i32, i32* %pos, align 4
  %idxprom410 = sext i32 %527 to i64
  %528 = load i32*, i32** %_o, align 8
  %arrayidx411 = getelementptr inbounds i32, i32* %528, i64 %idxprom410
  store i32 %add409, i32* %arrayidx411, align 4
  br label %for.inc.412

for.inc.412:                                      ; preds = %for.body.404
  %529 = load i32, i32* %pos, align 4
  %inc413 = add nsw i32 %529, 1
  store i32 %inc413, i32* %pos, align 4
  br label %for.cond.402

for.end.414:                                      ; preds = %for.cond.402
  %530 = load i32, i32* %refindex.addr, align 4
  %idxprom415 = sext i32 %530 to i64
  %531 = load i32, i32* %list.addr, align 4
  %idxprom416 = sext i32 %531 to i64
  %532 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx417 = getelementptr inbounds i32****, i32***** %532, i64 %idxprom416
  %533 = load i32****, i32***** %arrayidx417, align 8
  %arrayidx418 = getelementptr inbounds i32***, i32**** %533, i64 %idxprom415
  %534 = load i32***, i32**** %arrayidx418, align 8
  %arrayidx419 = getelementptr inbounds i32**, i32*** %534, i64 1
  %535 = load i32**, i32*** %arrayidx419, align 8
  store i32** %535, i32*** %_bo, align 8
  %536 = load i32, i32* %refindex.addr, align 4
  %idxprom420 = sext i32 %536 to i64
  %537 = load i32, i32* %list.addr, align 4
  %idxprom421 = sext i32 %537 to i64
  %538 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx422 = getelementptr inbounds i32****, i32***** %538, i64 %idxprom421
  %539 = load i32****, i32***** %arrayidx422, align 8
  %arrayidx423 = getelementptr inbounds i32***, i32**** %539, i64 %idxprom420
  %540 = load i32***, i32**** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds i32**, i32*** %540, i64 3
  %541 = load i32**, i32*** %arrayidx424, align 8
  store i32** %541, i32*** %_bi, align 8
  %542 = load i32**, i32*** %_bi, align 8
  %add.ptr425 = getelementptr inbounds i32*, i32** %542, i64 2
  store i32** %add.ptr425, i32*** %_bj, align 8
  %543 = load i32**, i32*** %_bo, align 8
  %544 = load i32*, i32** %543, align 8
  store i32* %544, i32** %_o, align 8
  %545 = load i32**, i32*** %_bi, align 8
  %546 = load i32*, i32** %545, align 8
  store i32* %546, i32** %_i, align 8
  %547 = load i32**, i32*** %_bj, align 8
  %548 = load i32*, i32** %547, align 8
  store i32* %548, i32** %_j, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond.426

for.cond.426:                                     ; preds = %for.inc.436, %for.end.414
  %549 = load i32, i32* %pos, align 4
  %550 = load i32, i32* %max_pos.addr, align 4
  %cmp427 = icmp slt i32 %549, %550
  br i1 %cmp427, label %for.body.428, label %for.end.438

for.body.428:                                     ; preds = %for.cond.426
  %551 = load i32, i32* %pos, align 4
  %idxprom429 = sext i32 %551 to i64
  %552 = load i32*, i32** %_i, align 8
  %arrayidx430 = getelementptr inbounds i32, i32* %552, i64 %idxprom429
  %553 = load i32, i32* %arrayidx430, align 4
  %554 = load i32, i32* %pos, align 4
  %idxprom431 = sext i32 %554 to i64
  %555 = load i32*, i32** %_j, align 8
  %arrayidx432 = getelementptr inbounds i32, i32* %555, i64 %idxprom431
  %556 = load i32, i32* %arrayidx432, align 4
  %add433 = add nsw i32 %553, %556
  %557 = load i32, i32* %pos, align 4
  %idxprom434 = sext i32 %557 to i64
  %558 = load i32*, i32** %_o, align 8
  %arrayidx435 = getelementptr inbounds i32, i32* %558, i64 %idxprom434
  store i32 %add433, i32* %arrayidx435, align 4
  br label %for.inc.436

for.inc.436:                                      ; preds = %for.body.428
  %559 = load i32, i32* %pos, align 4
  %inc437 = add nsw i32 %559, 1
  store i32 %inc437, i32* %pos, align 4
  br label %for.cond.426

for.end.438:                                      ; preds = %for.cond.426
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetupFastFullPelSearch(i16 signext %ref, i32 %list) #0 {
entry:
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %pmv = alloca [2 x i16], align 2
  %srcptr = alloca i16*, align 8
  %refptr = alloca i16*, align 8
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %abs_y4 = alloca i32, align 4
  %abs_x4 = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %range_partly_outside = alloca i32, align 4
  %ref_x = alloca i32, align 4
  %ref_y = alloca i32, align 4
  %pos = alloca i32, align 4
  %abs_x = alloca i32, align 4
  %abs_y = alloca i32, align 4
  %bindex = alloca i32, align 4
  %blky = alloca i32, align 4
  %LineSadBlk0 = alloca i32, align 4
  %LineSadBlk1 = alloca i32, align 4
  %LineSadBlk2 = alloca i32, align 4
  %LineSadBlk3 = alloca i32, align 4
  %max_width = alloca i32, align 4
  %max_height = alloca i32, align 4
  %img_width = alloca i32, align 4
  %img_height = alloca i32, align 4
  %ref_picture = alloca %struct.storable_picture*, align 8
  %block_sad = alloca i32**, align 8
  %search_range = alloca i32, align 4
  %max_pos = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %apply_weights = alloca i32, align 4
  %weighted_pel = alloca i32, align 4
  %dist_method = alloca i32*, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i16* getelementptr inbounds ([768 x i16], [768 x i16]* @SetupFastFullPelSearch.orig_pels, i32 0, i32 0), i16** %srcptr, align 8
  %0 = load i16, i16* %ref.addr, align 2
  %idxprom = sext i16 %0 to i64
  %1 = load i32, i32* %list.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx = getelementptr inbounds i32****, i32***** %2, i64 %idxprom1
  %3 = load i32****, i32***** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32***, i32**** %3, i64 %idxprom
  %4 = load i32***, i32**** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i32**, i32*** %4, i64 7
  %5 = load i32**, i32*** %arrayidx3, align 8
  store i32** %5, i32*** %block_sad, align 8
  %6 = load i16, i16* %ref.addr, align 2
  %idxprom4 = sext i16 %6 to i64
  %7 = load i32, i32* %list.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i32**, i32*** @max_search_range, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %8, i64 %idxprom5
  %9 = load i32*, i32** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %10 = load i32, i32* %arrayidx7, align 4
  store i32 %10, i32* %search_range, align 4
  %11 = load i32, i32* %search_range, align 4
  %mul = mul nsw i32 2, %11
  %add = add nsw i32 %mul, 1
  %12 = load i32, i32* %search_range, align 4
  %mul8 = mul nsw i32 2, %12
  %add9 = add nsw i32 %mul8, 1
  %mul10 = mul nsw i32 %add, %add9
  store i32 %mul10, i32* %max_pos, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 3
  %14 = load i32, i32* %current_mb_nr, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 61
  %16 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i64 %idxprom11
  %list_offset13 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx12, i32 0, i32 21
  %17 = load i32, i32* %list_offset13, align 4
  store i32 %17, i32* %list_offset, align 4
  %18 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %18, i32 0, i32 19
  %19 = load i32, i32* %weighted_pred_flag, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.16

land.lhs.true:                                    ; preds = %entry
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 5
  %21 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 5
  %23 = load i32, i32* %type14, align 4
  %cmp15 = icmp eq i32 %23, 3
  br i1 %cmp15, label %land.rhs, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false, %entry
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %24, i32 0, i32 20
  %25 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %land.lhs.true.18, label %land.end

land.lhs.true.18:                                 ; preds = %lor.lhs.false.16
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 5
  %27 = load i32, i32* %type19, align 4
  %cmp20 = icmp eq i32 %27, 1
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.18, %lor.lhs.false, %land.lhs.true
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 61
  %29 = load i32, i32* %UseWeightedReferenceME, align 4
  %tobool21 = icmp ne i32 %29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.18, %lor.lhs.false.16
  %30 = phi i1 [ false, %land.lhs.true.18 ], [ false, %lor.lhs.false.16 ], [ %tobool21, %land.rhs ]
  %land.ext = zext i1 %30 to i32
  store i32 %land.ext, i32* %apply_weights, align 4
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 199
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric, i32 0, i64 0
  %32 = load i32, i32* %arrayidx22, align 4
  %tobool23 = icmp ne i32 %32, 0
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 62
  %34 = load i32*, i32** %quad, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.end
  %35 = load i32*, i32** @byte_abs, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %34, %cond.true ], [ %35, %cond.false ]
  store i32* %cond, i32** %dist_method, align 8
  %36 = load i16, i16* %ref.addr, align 2
  %idxprom24 = sext i16 %36 to i64
  %37 = load i32, i32* %list.addr, align 4
  %38 = load i32, i32* %list_offset, align 4
  %add25 = add nsw i32 %37, %38
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom26
  %39 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %39, i64 %idxprom24
  %40 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx28, align 8
  store %struct.storable_picture* %40, %struct.storable_picture** %ref_picture, align 8
  store i32 0, i32* @ref_access_method, align 4
  %41 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %41, i32 0, i32 30
  %42 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %42, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %43 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 18
  %44 = load i32, i32* %size_x, align 4
  %sub = sub nsw i32 %44, 17
  store i32 %sub, i32* %max_width, align 4
  %45 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 19
  %46 = load i32, i32* %size_y, align 4
  %sub29 = sub nsw i32 %46, 17
  store i32 %sub29, i32* %max_height, align 4
  %47 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %47, i32 0, i32 18
  %48 = load i32, i32* %size_x30, align 4
  store i32 %48, i32* %img_width, align 4
  %49 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y31 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 19
  %50 = load i32, i32* %size_y31, align 4
  store i32 %50, i32* %img_height, align 4
  %51 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 22
  %52 = load i32, i32* %size_x_pad, align 4
  store i32 %52, i32* @width_pad, align 4
  %53 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 23
  %54 = load i32, i32* %size_y_pad, align 4
  store i32 %54, i32* @height_pad, align 4
  %55 = load i32, i32* %apply_weights, align 4
  %tobool32 = icmp ne i32 %55, 0
  br i1 %tobool32, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %56 = load i16, i16* %ref.addr, align 2
  %idxprom33 = sext i16 %56 to i64
  %57 = load i32, i32* %list.addr, align 4
  %58 = load i32, i32* %list_offset, align 4
  %add34 = add nsw i32 %57, %58
  %idxprom35 = sext i32 %add34 to i64
  %59 = load i32***, i32**** @wp_weight, align 8
  %arrayidx36 = getelementptr inbounds i32**, i32*** %59, i64 %idxprom35
  %60 = load i32**, i32*** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32*, i32** %60, i64 %idxprom33
  %61 = load i32*, i32** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %61, i64 0
  %62 = load i32, i32* %arrayidx38, align 4
  store i32 %62, i32* @weight_luma, align 4
  %63 = load i16, i16* %ref.addr, align 2
  %idxprom39 = sext i16 %63 to i64
  %64 = load i32, i32* %list.addr, align 4
  %65 = load i32, i32* %list_offset, align 4
  %add40 = add nsw i32 %64, %65
  %idxprom41 = sext i32 %add40 to i64
  %66 = load i32***, i32**** @wp_offset, align 8
  %arrayidx42 = getelementptr inbounds i32**, i32*** %66, i64 %idxprom41
  %67 = load i32**, i32*** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %67, i64 %idxprom39
  %68 = load i32*, i32** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %68, i64 0
  %69 = load i32, i32* %arrayidx44, align 4
  store i32 %69, i32* @offset_luma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %70 = load i32, i32* @ChromaMEEnable, align 4
  %tobool45 = icmp ne i32 %70, 0
  br i1 %tobool45, label %if.then.46, label %if.end.77

if.then.46:                                       ; preds = %if.end
  %71 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 32
  %72 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx47 = getelementptr inbounds i16****, i16***** %72, i64 0
  %73 = load i16****, i16***** %arrayidx47, align 8
  store i16**** %73, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 0), align 8
  %74 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub48 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %74, i32 0, i32 32
  %75 = load i16*****, i16****** %imgUV_sub48, align 8
  %arrayidx49 = getelementptr inbounds i16****, i16***** %75, i64 1
  %76 = load i16****, i16***** %arrayidx49, align 8
  store i16**** %76, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 1), align 8
  %77 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 24
  %78 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %78, i32* @width_pad_cr, align 4
  %79 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %79, i32 0, i32 25
  %80 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %80, i32* @height_pad_cr, align 4
  %81 = load i32, i32* %apply_weights, align 4
  %tobool50 = icmp ne i32 %81, 0
  br i1 %tobool50, label %if.then.51, label %if.end.76

if.then.51:                                       ; preds = %if.then.46
  %82 = load i16, i16* %ref.addr, align 2
  %idxprom52 = sext i16 %82 to i64
  %83 = load i32, i32* %list.addr, align 4
  %84 = load i32, i32* %list_offset, align 4
  %add53 = add nsw i32 %83, %84
  %idxprom54 = sext i32 %add53 to i64
  %85 = load i32***, i32**** @wp_weight, align 8
  %arrayidx55 = getelementptr inbounds i32**, i32*** %85, i64 %idxprom54
  %86 = load i32**, i32*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32*, i32** %86, i64 %idxprom52
  %87 = load i32*, i32** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %87, i64 1
  %88 = load i32, i32* %arrayidx57, align 4
  store i32 %88, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 0), align 4
  %89 = load i16, i16* %ref.addr, align 2
  %idxprom58 = sext i16 %89 to i64
  %90 = load i32, i32* %list.addr, align 4
  %91 = load i32, i32* %list_offset, align 4
  %add59 = add nsw i32 %90, %91
  %idxprom60 = sext i32 %add59 to i64
  %92 = load i32***, i32**** @wp_weight, align 8
  %arrayidx61 = getelementptr inbounds i32**, i32*** %92, i64 %idxprom60
  %93 = load i32**, i32*** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i32*, i32** %93, i64 %idxprom58
  %94 = load i32*, i32** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %94, i64 2
  %95 = load i32, i32* %arrayidx63, align 4
  store i32 %95, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 1), align 4
  %96 = load i16, i16* %ref.addr, align 2
  %idxprom64 = sext i16 %96 to i64
  %97 = load i32, i32* %list.addr, align 4
  %98 = load i32, i32* %list_offset, align 4
  %add65 = add nsw i32 %97, %98
  %idxprom66 = sext i32 %add65 to i64
  %99 = load i32***, i32**** @wp_offset, align 8
  %arrayidx67 = getelementptr inbounds i32**, i32*** %99, i64 %idxprom66
  %100 = load i32**, i32*** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i32*, i32** %100, i64 %idxprom64
  %101 = load i32*, i32** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %101, i64 1
  %102 = load i32, i32* %arrayidx69, align 4
  store i32 %102, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 0), align 4
  %103 = load i16, i16* %ref.addr, align 2
  %idxprom70 = sext i16 %103 to i64
  %104 = load i32, i32* %list.addr, align 4
  %105 = load i32, i32* %list_offset, align 4
  %add71 = add nsw i32 %104, %105
  %idxprom72 = sext i32 %add71 to i64
  %106 = load i32***, i32**** @wp_offset, align 8
  %arrayidx73 = getelementptr inbounds i32**, i32*** %106, i64 %idxprom72
  %107 = load i32**, i32*** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i32*, i32** %107, i64 %idxprom70
  %108 = load i32*, i32** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %108, i64 2
  %109 = load i32, i32* %arrayidx75, align 4
  store i32 %109, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 1), align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.51, %if.then.46
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %pmv, i32 0, i32 0
  %110 = load i32, i32* %list.addr, align 4
  %idxprom78 = sext i32 %110 to i64
  %111 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %111, i32 0, i32 35
  %112 = load i8***, i8**** %ref_idx, align 8
  %arrayidx79 = getelementptr inbounds i8**, i8*** %112, i64 %idxprom78
  %113 = load i8**, i8*** %arrayidx79, align 8
  %114 = load i32, i32* %list.addr, align 4
  %idxprom80 = sext i32 %114 to i64
  %115 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %115, i32 0, i32 38
  %116 = load i16****, i16***** %mv, align 8
  %arrayidx81 = getelementptr inbounds i16***, i16**** %116, i64 %idxprom80
  %117 = load i16***, i16**** %arrayidx81, align 8
  %118 = load i16, i16* %ref.addr, align 2
  %119 = load i32, i32* %list.addr, align 4
  call void @SetMotionVectorPredictor(i16* %arraydecay, i8** %113, i16*** %117, i16 signext %118, i32 %119, i32 0, i32 0, i32 16, i32 16)
  %arrayidx82 = getelementptr inbounds [2 x i16], [2 x i16]* %pmv, i32 0, i64 0
  %120 = load i16, i16* %arrayidx82, align 2
  %conv = sext i16 %120 to i32
  %div = sdiv i32 %conv, 4
  %121 = load i16, i16* %ref.addr, align 2
  %idxprom83 = sext i16 %121 to i64
  %122 = load i32, i32* %list.addr, align 4
  %idxprom84 = sext i32 %122 to i64
  %123 = load i32**, i32*** @search_center_x, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %123, i64 %idxprom84
  %124 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %124, i64 %idxprom83
  store i32 %div, i32* %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds [2 x i16], [2 x i16]* %pmv, i32 0, i64 1
  %125 = load i16, i16* %arrayidx87, align 2
  %conv88 = sext i16 %125 to i32
  %div89 = sdiv i32 %conv88, 4
  %126 = load i16, i16* %ref.addr, align 2
  %idxprom90 = sext i16 %126 to i64
  %127 = load i32, i32* %list.addr, align 4
  %idxprom91 = sext i32 %127 to i64
  %128 = load i32**, i32*** @search_center_y, align 8
  %arrayidx92 = getelementptr inbounds i32*, i32** %128, i64 %idxprom91
  %129 = load i32*, i32** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %129, i64 %idxprom90
  store i32 %div89, i32* %arrayidx93, align 4
  %130 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %130, i32 0, i32 113
  %131 = load i32, i32* %rdopt, align 4
  %tobool94 = icmp ne i32 %131, 0
  br i1 %tobool94, label %if.end.115, label %if.then.95

if.then.95:                                       ; preds = %if.end.77
  %132 = load i32, i32* %search_range, align 4
  %sub96 = sub nsw i32 0, %132
  %133 = load i32, i32* %search_range, align 4
  %134 = load i16, i16* %ref.addr, align 2
  %idxprom97 = sext i16 %134 to i64
  %135 = load i32, i32* %list.addr, align 4
  %idxprom98 = sext i32 %135 to i64
  %136 = load i32**, i32*** @search_center_x, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %136, i64 %idxprom98
  %137 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %137, i64 %idxprom97
  %138 = load i32, i32* %arrayidx100, align 4
  %call = call i32 @iClip3(i32 %sub96, i32 %133, i32 %138)
  %139 = load i16, i16* %ref.addr, align 2
  %idxprom101 = sext i16 %139 to i64
  %140 = load i32, i32* %list.addr, align 4
  %idxprom102 = sext i32 %140 to i64
  %141 = load i32**, i32*** @search_center_x, align 8
  %arrayidx103 = getelementptr inbounds i32*, i32** %141, i64 %idxprom102
  %142 = load i32*, i32** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %142, i64 %idxprom101
  store i32 %call, i32* %arrayidx104, align 4
  %143 = load i32, i32* %search_range, align 4
  %sub105 = sub nsw i32 0, %143
  %144 = load i32, i32* %search_range, align 4
  %145 = load i16, i16* %ref.addr, align 2
  %idxprom106 = sext i16 %145 to i64
  %146 = load i32, i32* %list.addr, align 4
  %idxprom107 = sext i32 %146 to i64
  %147 = load i32**, i32*** @search_center_y, align 8
  %arrayidx108 = getelementptr inbounds i32*, i32** %147, i64 %idxprom107
  %148 = load i32*, i32** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %148, i64 %idxprom106
  %149 = load i32, i32* %arrayidx109, align 4
  %call110 = call i32 @iClip3(i32 %sub105, i32 %144, i32 %149)
  %150 = load i16, i16* %ref.addr, align 2
  %idxprom111 = sext i16 %150 to i64
  %151 = load i32, i32* %list.addr, align 4
  %idxprom112 = sext i32 %151 to i64
  %152 = load i32**, i32*** @search_center_y, align 8
  %arrayidx113 = getelementptr inbounds i32*, i32** %152, i64 %idxprom112
  %153 = load i32*, i32** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %153, i64 %idxprom111
  store i32 %call110, i32* %arrayidx114, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.95, %if.end.77
  %154 = load i32, i32* %search_range, align 4
  %add116 = add nsw i32 -2047, %154
  %155 = load i32, i32* %search_range, align 4
  %sub117 = sub nsw i32 2047, %155
  %156 = load i16, i16* %ref.addr, align 2
  %idxprom118 = sext i16 %156 to i64
  %157 = load i32, i32* %list.addr, align 4
  %idxprom119 = sext i32 %157 to i64
  %158 = load i32**, i32*** @search_center_x, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %158, i64 %idxprom119
  %159 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %159, i64 %idxprom118
  %160 = load i32, i32* %arrayidx121, align 4
  %call122 = call i32 @iClip3(i32 %add116, i32 %sub117, i32 %160)
  %161 = load i16, i16* %ref.addr, align 2
  %idxprom123 = sext i16 %161 to i64
  %162 = load i32, i32* %list.addr, align 4
  %idxprom124 = sext i32 %162 to i64
  %163 = load i32**, i32*** @search_center_x, align 8
  %arrayidx125 = getelementptr inbounds i32*, i32** %163, i64 %idxprom124
  %164 = load i32*, i32** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %164, i64 %idxprom123
  store i32 %call122, i32* %arrayidx126, align 4
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 2
  %166 = load i32, i32* %LevelIndex, align 4
  %idxprom127 = sext i32 %166 to i64
  %arrayidx128 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom127
  %arrayidx129 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx128, i32 0, i64 0
  %167 = load i32, i32* %arrayidx129, align 4
  %168 = load i32, i32* %search_range, align 4
  %add130 = add nsw i32 %167, %168
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex131 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 2
  %170 = load i32, i32* %LevelIndex131, align 4
  %idxprom132 = sext i32 %170 to i64
  %arrayidx133 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx133, i32 0, i64 1
  %171 = load i32, i32* %arrayidx134, align 4
  %172 = load i32, i32* %search_range, align 4
  %sub135 = sub nsw i32 %171, %172
  %173 = load i16, i16* %ref.addr, align 2
  %idxprom136 = sext i16 %173 to i64
  %174 = load i32, i32* %list.addr, align 4
  %idxprom137 = sext i32 %174 to i64
  %175 = load i32**, i32*** @search_center_y, align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %175, i64 %idxprom137
  %176 = load i32*, i32** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %176, i64 %idxprom136
  %177 = load i32, i32* %arrayidx139, align 4
  %call140 = call i32 @iClip3(i32 %add130, i32 %sub135, i32 %177)
  %178 = load i16, i16* %ref.addr, align 2
  %idxprom141 = sext i16 %178 to i64
  %179 = load i32, i32* %list.addr, align 4
  %idxprom142 = sext i32 %179 to i64
  %180 = load i32**, i32*** @search_center_y, align 8
  %arrayidx143 = getelementptr inbounds i32*, i32** %180, i64 %idxprom142
  %181 = load i32*, i32** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %181, i64 %idxprom141
  store i32 %call140, i32* %arrayidx144, align 4
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 43
  %183 = load i32, i32* %opix_x, align 4
  %184 = load i16, i16* %ref.addr, align 2
  %idxprom145 = sext i16 %184 to i64
  %185 = load i32, i32* %list.addr, align 4
  %idxprom146 = sext i32 %185 to i64
  %186 = load i32**, i32*** @search_center_x, align 8
  %arrayidx147 = getelementptr inbounds i32*, i32** %186, i64 %idxprom146
  %187 = load i32*, i32** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %187, i64 %idxprom145
  %188 = load i32, i32* %arrayidx148, align 4
  %add149 = add nsw i32 %188, %183
  store i32 %add149, i32* %arrayidx148, align 4
  %189 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %189, i32 0, i32 44
  %190 = load i32, i32* %opix_y, align 4
  %191 = load i16, i16* %ref.addr, align 2
  %idxprom150 = sext i16 %191 to i64
  %192 = load i32, i32* %list.addr, align 4
  %idxprom151 = sext i32 %192 to i64
  %193 = load i32**, i32*** @search_center_y, align 8
  %arrayidx152 = getelementptr inbounds i32*, i32** %193, i64 %idxprom151
  %194 = load i32*, i32** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %194, i64 %idxprom150
  %195 = load i32, i32* %arrayidx153, align 4
  %add154 = add nsw i32 %195, %190
  store i32 %add154, i32* %arrayidx153, align 4
  %196 = load i16, i16* %ref.addr, align 2
  %idxprom155 = sext i16 %196 to i64
  %197 = load i32, i32* %list.addr, align 4
  %idxprom156 = sext i32 %197 to i64
  %198 = load i32**, i32*** @search_center_x, align 8
  %arrayidx157 = getelementptr inbounds i32*, i32** %198, i64 %idxprom156
  %199 = load i32*, i32** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %199, i64 %idxprom155
  %200 = load i32, i32* %arrayidx158, align 4
  store i32 %200, i32* %offset_x, align 4
  %201 = load i16, i16* %ref.addr, align 2
  %idxprom159 = sext i16 %201 to i64
  %202 = load i32, i32* %list.addr, align 4
  %idxprom160 = sext i32 %202 to i64
  %203 = load i32**, i32*** @search_center_y, align 8
  %arrayidx161 = getelementptr inbounds i32*, i32** %203, i64 %idxprom160
  %204 = load i32*, i32** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %204, i64 %idxprom159
  %205 = load i32, i32* %arrayidx162, align 4
  store i32 %205, i32* %offset_y, align 4
  %206 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y163 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %206, i32 0, i32 44
  %207 = load i32, i32* %opix_y163, align 4
  store i32 %207, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.115
  %208 = load i32, i32* %y, align 4
  %209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y164 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %209, i32 0, i32 44
  %210 = load i32, i32* %opix_y164, align 4
  %add165 = add nsw i32 %210, 16
  %cmp166 = icmp slt i32 %208, %add165
  br i1 %cmp166, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %211 = load i16*, i16** %srcptr, align 8
  %212 = bitcast i16* %211 to i8*
  %213 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x168 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %213, i32 0, i32 43
  %214 = load i32, i32* %opix_x168, align 4
  %idxprom169 = sext i32 %214 to i64
  %215 = load i32, i32* %y, align 4
  %idxprom170 = sext i32 %215 to i64
  %216 = load i16**, i16*** @imgY_org, align 8
  %arrayidx171 = getelementptr inbounds i16*, i16** %216, i64 %idxprom170
  %217 = load i16*, i16** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds i16, i16* %217, i64 %idxprom169
  %218 = bitcast i16* %arrayidx172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %212, i8* %218, i64 32, i32 2, i1 false)
  %219 = load i16*, i16** %srcptr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %219, i64 16
  store i16* %add.ptr, i16** %srcptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %220 = load i32, i32* %y, align 4
  %inc = add nsw i32 %220, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %221 = load i32, i32* @ChromaMEEnable, align 4
  %tobool173 = icmp ne i32 %221, 0
  br i1 %tobool173, label %if.then.174, label %if.end.201

if.then.174:                                      ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.198, %if.then.174
  %222 = load i32, i32* %k, align 4
  %cmp176 = icmp slt i32 %222, 2
  br i1 %cmp176, label %for.body.178, label %for.end.200

for.body.178:                                     ; preds = %for.cond.175
  %223 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %223, i32 0, i32 46
  %224 = load i32, i32* %opix_c_y, align 4
  store i32 %224, i32* %y, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.195, %for.body.178
  %225 = load i32, i32* %y, align 4
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_y180 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 46
  %227 = load i32, i32* %opix_c_y180, align 4
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 163
  %229 = load i32, i32* %mb_cr_size_y, align 4
  %add181 = add nsw i32 %227, %229
  %cmp182 = icmp slt i32 %225, %add181
  br i1 %cmp182, label %for.body.184, label %for.end.197

for.body.184:                                     ; preds = %for.cond.179
  %230 = load i16*, i16** %srcptr, align 8
  %231 = bitcast i16* %230 to i8*
  %232 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %232, i32 0, i32 45
  %233 = load i32, i32* %opix_c_x, align 4
  %idxprom185 = sext i32 %233 to i64
  %234 = load i32, i32* %y, align 4
  %idxprom186 = sext i32 %234 to i64
  %235 = load i32, i32* %k, align 4
  %idxprom187 = sext i32 %235 to i64
  %236 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx188 = getelementptr inbounds i16**, i16*** %236, i64 %idxprom187
  %237 = load i16**, i16*** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i16*, i16** %237, i64 %idxprom186
  %238 = load i16*, i16** %arrayidx189, align 8
  %arrayidx190 = getelementptr inbounds i16, i16* %238, i64 %idxprom185
  %239 = bitcast i16* %arrayidx190 to i8*
  %240 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %240, i32 0, i32 162
  %241 = load i32, i32* %mb_cr_size_x, align 4
  %conv191 = sext i32 %241 to i64
  %mul192 = mul i64 %conv191, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %231, i8* %239, i64 %mul192, i32 2, i1 false)
  %242 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x193 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %242, i32 0, i32 162
  %243 = load i32, i32* %mb_cr_size_x193, align 4
  %244 = load i16*, i16** %srcptr, align 8
  %idx.ext = sext i32 %243 to i64
  %add.ptr194 = getelementptr inbounds i16, i16* %244, i64 %idx.ext
  store i16* %add.ptr194, i16** %srcptr, align 8
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.body.184
  %245 = load i32, i32* %y, align 4
  %inc196 = add nsw i32 %245, 1
  store i32 %inc196, i32* %y, align 4
  br label %for.cond.179

for.end.197:                                      ; preds = %for.cond.179
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.end.197
  %246 = load i32, i32* %k, align 4
  %inc199 = add nsw i32 %246, 1
  store i32 %inc199, i32* %k, align 4
  br label %for.cond.175

for.end.200:                                      ; preds = %for.cond.175
  br label %if.end.201

if.end.201:                                       ; preds = %for.end.200, %for.end
  %247 = load i32, i32* %offset_x, align 4
  %248 = load i32, i32* %search_range, align 4
  %cmp202 = icmp sge i32 %247, %248
  br i1 %cmp202, label %land.lhs.true.204, label %if.else

land.lhs.true.204:                                ; preds = %if.end.201
  %249 = load i32, i32* %offset_x, align 4
  %250 = load i32, i32* %max_width, align 4
  %251 = load i32, i32* %search_range, align 4
  %sub205 = sub nsw i32 %250, %251
  %cmp206 = icmp sle i32 %249, %sub205
  br i1 %cmp206, label %land.lhs.true.208, label %if.else

land.lhs.true.208:                                ; preds = %land.lhs.true.204
  %252 = load i32, i32* %offset_y, align 4
  %253 = load i32, i32* %search_range, align 4
  %cmp209 = icmp sge i32 %252, %253
  br i1 %cmp209, label %land.lhs.true.211, label %if.else

land.lhs.true.211:                                ; preds = %land.lhs.true.208
  %254 = load i32, i32* %offset_y, align 4
  %255 = load i32, i32* %max_height, align 4
  %256 = load i32, i32* %search_range, align 4
  %sub212 = sub nsw i32 %255, %256
  %cmp213 = icmp sle i32 %254, %sub212
  br i1 %cmp213, label %if.then.215, label %if.else

if.then.215:                                      ; preds = %land.lhs.true.211
  store i32 0, i32* %range_partly_outside, align 4
  br label %if.end.216

if.else:                                          ; preds = %land.lhs.true.211, %land.lhs.true.208, %land.lhs.true.204, %if.end.201
  store i32 1, i32* %range_partly_outside, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.else, %if.then.215
  %257 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt217 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %257, i32 0, i32 113
  %258 = load i32, i32* %rdopt217, align 4
  %tobool218 = icmp ne i32 %258, 0
  br i1 %tobool218, label %if.end.248, label %if.then.219

if.then.219:                                      ; preds = %if.end.216
  %259 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x220 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %259, i32 0, i32 43
  %260 = load i32, i32* %opix_x220, align 4
  %261 = load i32, i32* %offset_x, align 4
  %sub221 = sub nsw i32 %260, %261
  store i32 %sub221, i32* %ref_x, align 4
  %262 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y222 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %262, i32 0, i32 44
  %263 = load i32, i32* %opix_y222, align 4
  %264 = load i32, i32* %offset_y, align 4
  %sub223 = sub nsw i32 %263, %264
  store i32 %sub223, i32* %ref_y, align 4
  store i32 0, i32* %pos, align 4
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.245, %if.then.219
  %265 = load i32, i32* %pos, align 4
  %266 = load i32, i32* %max_pos, align 4
  %cmp225 = icmp slt i32 %265, %266
  br i1 %cmp225, label %for.body.227, label %for.end.247

for.body.227:                                     ; preds = %for.cond.224
  %267 = load i32, i32* %ref_x, align 4
  %268 = load i32, i32* %pos, align 4
  %idxprom228 = sext i32 %268 to i64
  %269 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx229 = getelementptr inbounds i16, i16* %269, i64 %idxprom228
  %270 = load i16, i16* %arrayidx229, align 2
  %conv230 = sext i16 %270 to i32
  %cmp231 = icmp eq i32 %267, %conv230
  br i1 %cmp231, label %land.lhs.true.233, label %if.end.244

land.lhs.true.233:                                ; preds = %for.body.227
  %271 = load i32, i32* %ref_y, align 4
  %272 = load i32, i32* %pos, align 4
  %idxprom234 = sext i32 %272 to i64
  %273 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx235 = getelementptr inbounds i16, i16* %273, i64 %idxprom234
  %274 = load i16, i16* %arrayidx235, align 2
  %conv236 = sext i16 %274 to i32
  %cmp237 = icmp eq i32 %271, %conv236
  br i1 %cmp237, label %if.then.239, label %if.end.244

if.then.239:                                      ; preds = %land.lhs.true.233
  %275 = load i32, i32* %pos, align 4
  %276 = load i16, i16* %ref.addr, align 2
  %idxprom240 = sext i16 %276 to i64
  %277 = load i32, i32* %list.addr, align 4
  %idxprom241 = sext i32 %277 to i64
  %278 = load i32**, i32*** @pos_00, align 8
  %arrayidx242 = getelementptr inbounds i32*, i32** %278, i64 %idxprom241
  %279 = load i32*, i32** %arrayidx242, align 8
  %arrayidx243 = getelementptr inbounds i32, i32* %279, i64 %idxprom240
  store i32 %275, i32* %arrayidx243, align 4
  br label %for.end.247

if.end.244:                                       ; preds = %land.lhs.true.233, %for.body.227
  br label %for.inc.245

for.inc.245:                                      ; preds = %if.end.244
  %280 = load i32, i32* %pos, align 4
  %inc246 = add nsw i32 %280, 1
  store i32 %inc246, i32* %pos, align 4
  br label %for.cond.224

for.end.247:                                      ; preds = %if.then.239, %for.cond.224
  br label %if.end.248

if.end.248:                                       ; preds = %for.end.247, %if.end.216
  store i32 0, i32* %pos, align 4
  br label %for.cond.249

for.cond.249:                                     ; preds = %for.inc.997, %if.end.248
  %281 = load i32, i32* %pos, align 4
  %282 = load i32, i32* %max_pos, align 4
  %cmp250 = icmp slt i32 %281, %282
  br i1 %cmp250, label %for.body.252, label %for.end.999

for.body.252:                                     ; preds = %for.cond.249
  %283 = load i32, i32* %offset_y, align 4
  %284 = load i32, i32* %pos, align 4
  %idxprom253 = sext i32 %284 to i64
  %285 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx254 = getelementptr inbounds i16, i16* %285, i64 %idxprom253
  %286 = load i16, i16* %arrayidx254, align 2
  %conv255 = sext i16 %286 to i32
  %add256 = add nsw i32 %283, %conv255
  store i32 %add256, i32* %abs_y, align 4
  %287 = load i32, i32* %offset_x, align 4
  %288 = load i32, i32* %pos, align 4
  %idxprom257 = sext i32 %288 to i64
  %289 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx258 = getelementptr inbounds i16, i16* %289, i64 %idxprom257
  %290 = load i16, i16* %arrayidx258, align 2
  %conv259 = sext i16 %290 to i32
  %add260 = add nsw i32 %287, %conv259
  store i32 %add260, i32* %abs_x, align 4
  %291 = load i32, i32* %abs_y, align 4
  %add261 = add nsw i32 %291, 20
  %shl = shl i32 %add261, 2
  store i32 %shl, i32* %abs_y4, align 4
  %292 = load i32, i32* %abs_x, align 4
  %add262 = add nsw i32 %292, 20
  %shl263 = shl i32 %add262, 2
  store i32 %shl263, i32* %abs_x4, align 4
  %293 = load i32, i32* %range_partly_outside, align 4
  %tobool264 = icmp ne i32 %293, 0
  br i1 %tobool264, label %if.then.265, label %if.end.280

if.then.265:                                      ; preds = %for.body.252
  %294 = load i32, i32* %abs_y, align 4
  %cmp266 = icmp sge i32 %294, 0
  br i1 %cmp266, label %land.lhs.true.268, label %if.else.278

land.lhs.true.268:                                ; preds = %if.then.265
  %295 = load i32, i32* %abs_y, align 4
  %296 = load i32, i32* %max_height, align 4
  %cmp269 = icmp sle i32 %295, %296
  br i1 %cmp269, label %land.lhs.true.271, label %if.else.278

land.lhs.true.271:                                ; preds = %land.lhs.true.268
  %297 = load i32, i32* %abs_x, align 4
  %cmp272 = icmp sge i32 %297, 0
  br i1 %cmp272, label %land.lhs.true.274, label %if.else.278

land.lhs.true.274:                                ; preds = %land.lhs.true.271
  %298 = load i32, i32* %abs_x, align 4
  %299 = load i32, i32* %max_width, align 4
  %cmp275 = icmp sle i32 %298, %299
  br i1 %cmp275, label %if.then.277, label %if.else.278

if.then.277:                                      ; preds = %land.lhs.true.274
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.279

if.else.278:                                      ; preds = %land.lhs.true.274, %land.lhs.true.271, %land.lhs.true.268, %if.then.265
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.278, %if.then.277
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %for.body.252
  %300 = load i32, i32* %apply_weights, align 4
  %tobool281 = icmp ne i32 %300, 0
  br i1 %tobool281, label %if.then.282, label %if.else.705

if.then.282:                                      ; preds = %if.end.280
  store i16* getelementptr inbounds ([768 x i16], [768 x i16]* @SetupFastFullPelSearch.orig_pels, i32 0, i32 0), i16** %srcptr, align 8
  store i32 0, i32* %bindex, align 4
  %301 = load i32, i32* @ref_access_method, align 4
  %idxprom283 = sext i32 %301 to i64
  %arrayidx284 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom283
  %302 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx284, align 8
  %303 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %304 = load i32, i32* %abs_y4, align 4
  %305 = load i32, i32* %abs_x4, align 4
  %call285 = call i16* %302(i16**** %303, i32 %304, i32 %305)
  store i16* %call285, i16** %refptr, align 8
  store i32 0, i32* %blky, align 4
  br label %for.cond.286

for.cond.286:                                     ; preds = %for.inc.541, %if.then.282
  %306 = load i32, i32* %blky, align 4
  %cmp287 = icmp slt i32 %306, 4
  br i1 %cmp287, label %for.body.289, label %for.end.543

for.body.289:                                     ; preds = %for.cond.286
  store i32 0, i32* %LineSadBlk3, align 4
  store i32 0, i32* %LineSadBlk2, align 4
  store i32 0, i32* %LineSadBlk1, align 4
  store i32 0, i32* %LineSadBlk0, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.290

for.cond.290:                                     ; preds = %for.inc.518, %for.body.289
  %307 = load i32, i32* %y, align 4
  %cmp291 = icmp slt i32 %307, 4
  br i1 %cmp291, label %for.body.293, label %for.end.520

for.body.293:                                     ; preds = %for.cond.290
  %308 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %308, i32 0, i32 156
  %309 = load i32, i32* %max_imgpel_value, align 4
  %310 = load i32, i32* @weight_luma, align 4
  %311 = load i16*, i16** %refptr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %311, i32 1
  store i16* %incdec.ptr, i16** %refptr, align 8
  %312 = load i16, i16* %311, align 2
  %conv294 = zext i16 %312 to i32
  %mul295 = mul nsw i32 %310, %conv294
  %313 = load i32, i32* @wp_luma_round, align 4
  %add296 = add nsw i32 %mul295, %313
  %314 = load i32, i32* @luma_log_weight_denom, align 4
  %shr = ashr i32 %add296, %314
  %315 = load i32, i32* @offset_luma, align 4
  %add297 = add nsw i32 %shr, %315
  %call298 = call i32 @iClip1(i32 %309, i32 %add297)
  store i32 %call298, i32* %weighted_pel, align 4
  %316 = load i32, i32* %weighted_pel, align 4
  %317 = load i16*, i16** %srcptr, align 8
  %incdec.ptr299 = getelementptr inbounds i16, i16* %317, i32 1
  store i16* %incdec.ptr299, i16** %srcptr, align 8
  %318 = load i16, i16* %317, align 2
  %conv300 = zext i16 %318 to i32
  %sub301 = sub nsw i32 %316, %conv300
  %idxprom302 = sext i32 %sub301 to i64
  %319 = load i32*, i32** %dist_method, align 8
  %arrayidx303 = getelementptr inbounds i32, i32* %319, i64 %idxprom302
  %320 = load i32, i32* %arrayidx303, align 4
  %321 = load i32, i32* %LineSadBlk0, align 4
  %add304 = add nsw i32 %321, %320
  store i32 %add304, i32* %LineSadBlk0, align 4
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value305 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 156
  %323 = load i32, i32* %max_imgpel_value305, align 4
  %324 = load i32, i32* @weight_luma, align 4
  %325 = load i16*, i16** %refptr, align 8
  %incdec.ptr306 = getelementptr inbounds i16, i16* %325, i32 1
  store i16* %incdec.ptr306, i16** %refptr, align 8
  %326 = load i16, i16* %325, align 2
  %conv307 = zext i16 %326 to i32
  %mul308 = mul nsw i32 %324, %conv307
  %327 = load i32, i32* @wp_luma_round, align 4
  %add309 = add nsw i32 %mul308, %327
  %328 = load i32, i32* @luma_log_weight_denom, align 4
  %shr310 = ashr i32 %add309, %328
  %329 = load i32, i32* @offset_luma, align 4
  %add311 = add nsw i32 %shr310, %329
  %call312 = call i32 @iClip1(i32 %323, i32 %add311)
  store i32 %call312, i32* %weighted_pel, align 4
  %330 = load i32, i32* %weighted_pel, align 4
  %331 = load i16*, i16** %srcptr, align 8
  %incdec.ptr313 = getelementptr inbounds i16, i16* %331, i32 1
  store i16* %incdec.ptr313, i16** %srcptr, align 8
  %332 = load i16, i16* %331, align 2
  %conv314 = zext i16 %332 to i32
  %sub315 = sub nsw i32 %330, %conv314
  %idxprom316 = sext i32 %sub315 to i64
  %333 = load i32*, i32** %dist_method, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %333, i64 %idxprom316
  %334 = load i32, i32* %arrayidx317, align 4
  %335 = load i32, i32* %LineSadBlk0, align 4
  %add318 = add nsw i32 %335, %334
  store i32 %add318, i32* %LineSadBlk0, align 4
  %336 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value319 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %336, i32 0, i32 156
  %337 = load i32, i32* %max_imgpel_value319, align 4
  %338 = load i32, i32* @weight_luma, align 4
  %339 = load i16*, i16** %refptr, align 8
  %incdec.ptr320 = getelementptr inbounds i16, i16* %339, i32 1
  store i16* %incdec.ptr320, i16** %refptr, align 8
  %340 = load i16, i16* %339, align 2
  %conv321 = zext i16 %340 to i32
  %mul322 = mul nsw i32 %338, %conv321
  %341 = load i32, i32* @wp_luma_round, align 4
  %add323 = add nsw i32 %mul322, %341
  %342 = load i32, i32* @luma_log_weight_denom, align 4
  %shr324 = ashr i32 %add323, %342
  %343 = load i32, i32* @offset_luma, align 4
  %add325 = add nsw i32 %shr324, %343
  %call326 = call i32 @iClip1(i32 %337, i32 %add325)
  store i32 %call326, i32* %weighted_pel, align 4
  %344 = load i32, i32* %weighted_pel, align 4
  %345 = load i16*, i16** %srcptr, align 8
  %incdec.ptr327 = getelementptr inbounds i16, i16* %345, i32 1
  store i16* %incdec.ptr327, i16** %srcptr, align 8
  %346 = load i16, i16* %345, align 2
  %conv328 = zext i16 %346 to i32
  %sub329 = sub nsw i32 %344, %conv328
  %idxprom330 = sext i32 %sub329 to i64
  %347 = load i32*, i32** %dist_method, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %347, i64 %idxprom330
  %348 = load i32, i32* %arrayidx331, align 4
  %349 = load i32, i32* %LineSadBlk0, align 4
  %add332 = add nsw i32 %349, %348
  store i32 %add332, i32* %LineSadBlk0, align 4
  %350 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value333 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %350, i32 0, i32 156
  %351 = load i32, i32* %max_imgpel_value333, align 4
  %352 = load i32, i32* @weight_luma, align 4
  %353 = load i16*, i16** %refptr, align 8
  %incdec.ptr334 = getelementptr inbounds i16, i16* %353, i32 1
  store i16* %incdec.ptr334, i16** %refptr, align 8
  %354 = load i16, i16* %353, align 2
  %conv335 = zext i16 %354 to i32
  %mul336 = mul nsw i32 %352, %conv335
  %355 = load i32, i32* @wp_luma_round, align 4
  %add337 = add nsw i32 %mul336, %355
  %356 = load i32, i32* @luma_log_weight_denom, align 4
  %shr338 = ashr i32 %add337, %356
  %357 = load i32, i32* @offset_luma, align 4
  %add339 = add nsw i32 %shr338, %357
  %call340 = call i32 @iClip1(i32 %351, i32 %add339)
  store i32 %call340, i32* %weighted_pel, align 4
  %358 = load i32, i32* %weighted_pel, align 4
  %359 = load i16*, i16** %srcptr, align 8
  %incdec.ptr341 = getelementptr inbounds i16, i16* %359, i32 1
  store i16* %incdec.ptr341, i16** %srcptr, align 8
  %360 = load i16, i16* %359, align 2
  %conv342 = zext i16 %360 to i32
  %sub343 = sub nsw i32 %358, %conv342
  %idxprom344 = sext i32 %sub343 to i64
  %361 = load i32*, i32** %dist_method, align 8
  %arrayidx345 = getelementptr inbounds i32, i32* %361, i64 %idxprom344
  %362 = load i32, i32* %arrayidx345, align 4
  %363 = load i32, i32* %LineSadBlk0, align 4
  %add346 = add nsw i32 %363, %362
  store i32 %add346, i32* %LineSadBlk0, align 4
  %364 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value347 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %364, i32 0, i32 156
  %365 = load i32, i32* %max_imgpel_value347, align 4
  %366 = load i32, i32* @weight_luma, align 4
  %367 = load i16*, i16** %refptr, align 8
  %incdec.ptr348 = getelementptr inbounds i16, i16* %367, i32 1
  store i16* %incdec.ptr348, i16** %refptr, align 8
  %368 = load i16, i16* %367, align 2
  %conv349 = zext i16 %368 to i32
  %mul350 = mul nsw i32 %366, %conv349
  %369 = load i32, i32* @wp_luma_round, align 4
  %add351 = add nsw i32 %mul350, %369
  %370 = load i32, i32* @luma_log_weight_denom, align 4
  %shr352 = ashr i32 %add351, %370
  %371 = load i32, i32* @offset_luma, align 4
  %add353 = add nsw i32 %shr352, %371
  %call354 = call i32 @iClip1(i32 %365, i32 %add353)
  store i32 %call354, i32* %weighted_pel, align 4
  %372 = load i32, i32* %weighted_pel, align 4
  %373 = load i16*, i16** %srcptr, align 8
  %incdec.ptr355 = getelementptr inbounds i16, i16* %373, i32 1
  store i16* %incdec.ptr355, i16** %srcptr, align 8
  %374 = load i16, i16* %373, align 2
  %conv356 = zext i16 %374 to i32
  %sub357 = sub nsw i32 %372, %conv356
  %idxprom358 = sext i32 %sub357 to i64
  %375 = load i32*, i32** %dist_method, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %375, i64 %idxprom358
  %376 = load i32, i32* %arrayidx359, align 4
  %377 = load i32, i32* %LineSadBlk1, align 4
  %add360 = add nsw i32 %377, %376
  store i32 %add360, i32* %LineSadBlk1, align 4
  %378 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value361 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %378, i32 0, i32 156
  %379 = load i32, i32* %max_imgpel_value361, align 4
  %380 = load i32, i32* @weight_luma, align 4
  %381 = load i16*, i16** %refptr, align 8
  %incdec.ptr362 = getelementptr inbounds i16, i16* %381, i32 1
  store i16* %incdec.ptr362, i16** %refptr, align 8
  %382 = load i16, i16* %381, align 2
  %conv363 = zext i16 %382 to i32
  %mul364 = mul nsw i32 %380, %conv363
  %383 = load i32, i32* @wp_luma_round, align 4
  %add365 = add nsw i32 %mul364, %383
  %384 = load i32, i32* @luma_log_weight_denom, align 4
  %shr366 = ashr i32 %add365, %384
  %385 = load i32, i32* @offset_luma, align 4
  %add367 = add nsw i32 %shr366, %385
  %call368 = call i32 @iClip1(i32 %379, i32 %add367)
  store i32 %call368, i32* %weighted_pel, align 4
  %386 = load i32, i32* %weighted_pel, align 4
  %387 = load i16*, i16** %srcptr, align 8
  %incdec.ptr369 = getelementptr inbounds i16, i16* %387, i32 1
  store i16* %incdec.ptr369, i16** %srcptr, align 8
  %388 = load i16, i16* %387, align 2
  %conv370 = zext i16 %388 to i32
  %sub371 = sub nsw i32 %386, %conv370
  %idxprom372 = sext i32 %sub371 to i64
  %389 = load i32*, i32** %dist_method, align 8
  %arrayidx373 = getelementptr inbounds i32, i32* %389, i64 %idxprom372
  %390 = load i32, i32* %arrayidx373, align 4
  %391 = load i32, i32* %LineSadBlk1, align 4
  %add374 = add nsw i32 %391, %390
  store i32 %add374, i32* %LineSadBlk1, align 4
  %392 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value375 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %392, i32 0, i32 156
  %393 = load i32, i32* %max_imgpel_value375, align 4
  %394 = load i32, i32* @weight_luma, align 4
  %395 = load i16*, i16** %refptr, align 8
  %incdec.ptr376 = getelementptr inbounds i16, i16* %395, i32 1
  store i16* %incdec.ptr376, i16** %refptr, align 8
  %396 = load i16, i16* %395, align 2
  %conv377 = zext i16 %396 to i32
  %mul378 = mul nsw i32 %394, %conv377
  %397 = load i32, i32* @wp_luma_round, align 4
  %add379 = add nsw i32 %mul378, %397
  %398 = load i32, i32* @luma_log_weight_denom, align 4
  %shr380 = ashr i32 %add379, %398
  %399 = load i32, i32* @offset_luma, align 4
  %add381 = add nsw i32 %shr380, %399
  %call382 = call i32 @iClip1(i32 %393, i32 %add381)
  store i32 %call382, i32* %weighted_pel, align 4
  %400 = load i32, i32* %weighted_pel, align 4
  %401 = load i16*, i16** %srcptr, align 8
  %incdec.ptr383 = getelementptr inbounds i16, i16* %401, i32 1
  store i16* %incdec.ptr383, i16** %srcptr, align 8
  %402 = load i16, i16* %401, align 2
  %conv384 = zext i16 %402 to i32
  %sub385 = sub nsw i32 %400, %conv384
  %idxprom386 = sext i32 %sub385 to i64
  %403 = load i32*, i32** %dist_method, align 8
  %arrayidx387 = getelementptr inbounds i32, i32* %403, i64 %idxprom386
  %404 = load i32, i32* %arrayidx387, align 4
  %405 = load i32, i32* %LineSadBlk1, align 4
  %add388 = add nsw i32 %405, %404
  store i32 %add388, i32* %LineSadBlk1, align 4
  %406 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value389 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %406, i32 0, i32 156
  %407 = load i32, i32* %max_imgpel_value389, align 4
  %408 = load i32, i32* @weight_luma, align 4
  %409 = load i16*, i16** %refptr, align 8
  %incdec.ptr390 = getelementptr inbounds i16, i16* %409, i32 1
  store i16* %incdec.ptr390, i16** %refptr, align 8
  %410 = load i16, i16* %409, align 2
  %conv391 = zext i16 %410 to i32
  %mul392 = mul nsw i32 %408, %conv391
  %411 = load i32, i32* @wp_luma_round, align 4
  %add393 = add nsw i32 %mul392, %411
  %412 = load i32, i32* @luma_log_weight_denom, align 4
  %shr394 = ashr i32 %add393, %412
  %413 = load i32, i32* @offset_luma, align 4
  %add395 = add nsw i32 %shr394, %413
  %call396 = call i32 @iClip1(i32 %407, i32 %add395)
  store i32 %call396, i32* %weighted_pel, align 4
  %414 = load i32, i32* %weighted_pel, align 4
  %415 = load i16*, i16** %srcptr, align 8
  %incdec.ptr397 = getelementptr inbounds i16, i16* %415, i32 1
  store i16* %incdec.ptr397, i16** %srcptr, align 8
  %416 = load i16, i16* %415, align 2
  %conv398 = zext i16 %416 to i32
  %sub399 = sub nsw i32 %414, %conv398
  %idxprom400 = sext i32 %sub399 to i64
  %417 = load i32*, i32** %dist_method, align 8
  %arrayidx401 = getelementptr inbounds i32, i32* %417, i64 %idxprom400
  %418 = load i32, i32* %arrayidx401, align 4
  %419 = load i32, i32* %LineSadBlk1, align 4
  %add402 = add nsw i32 %419, %418
  store i32 %add402, i32* %LineSadBlk1, align 4
  %420 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value403 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %420, i32 0, i32 156
  %421 = load i32, i32* %max_imgpel_value403, align 4
  %422 = load i32, i32* @weight_luma, align 4
  %423 = load i16*, i16** %refptr, align 8
  %incdec.ptr404 = getelementptr inbounds i16, i16* %423, i32 1
  store i16* %incdec.ptr404, i16** %refptr, align 8
  %424 = load i16, i16* %423, align 2
  %conv405 = zext i16 %424 to i32
  %mul406 = mul nsw i32 %422, %conv405
  %425 = load i32, i32* @wp_luma_round, align 4
  %add407 = add nsw i32 %mul406, %425
  %426 = load i32, i32* @luma_log_weight_denom, align 4
  %shr408 = ashr i32 %add407, %426
  %427 = load i32, i32* @offset_luma, align 4
  %add409 = add nsw i32 %shr408, %427
  %call410 = call i32 @iClip1(i32 %421, i32 %add409)
  store i32 %call410, i32* %weighted_pel, align 4
  %428 = load i32, i32* %weighted_pel, align 4
  %429 = load i16*, i16** %srcptr, align 8
  %incdec.ptr411 = getelementptr inbounds i16, i16* %429, i32 1
  store i16* %incdec.ptr411, i16** %srcptr, align 8
  %430 = load i16, i16* %429, align 2
  %conv412 = zext i16 %430 to i32
  %sub413 = sub nsw i32 %428, %conv412
  %idxprom414 = sext i32 %sub413 to i64
  %431 = load i32*, i32** %dist_method, align 8
  %arrayidx415 = getelementptr inbounds i32, i32* %431, i64 %idxprom414
  %432 = load i32, i32* %arrayidx415, align 4
  %433 = load i32, i32* %LineSadBlk2, align 4
  %add416 = add nsw i32 %433, %432
  store i32 %add416, i32* %LineSadBlk2, align 4
  %434 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value417 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %434, i32 0, i32 156
  %435 = load i32, i32* %max_imgpel_value417, align 4
  %436 = load i32, i32* @weight_luma, align 4
  %437 = load i16*, i16** %refptr, align 8
  %incdec.ptr418 = getelementptr inbounds i16, i16* %437, i32 1
  store i16* %incdec.ptr418, i16** %refptr, align 8
  %438 = load i16, i16* %437, align 2
  %conv419 = zext i16 %438 to i32
  %mul420 = mul nsw i32 %436, %conv419
  %439 = load i32, i32* @wp_luma_round, align 4
  %add421 = add nsw i32 %mul420, %439
  %440 = load i32, i32* @luma_log_weight_denom, align 4
  %shr422 = ashr i32 %add421, %440
  %441 = load i32, i32* @offset_luma, align 4
  %add423 = add nsw i32 %shr422, %441
  %call424 = call i32 @iClip1(i32 %435, i32 %add423)
  store i32 %call424, i32* %weighted_pel, align 4
  %442 = load i32, i32* %weighted_pel, align 4
  %443 = load i16*, i16** %srcptr, align 8
  %incdec.ptr425 = getelementptr inbounds i16, i16* %443, i32 1
  store i16* %incdec.ptr425, i16** %srcptr, align 8
  %444 = load i16, i16* %443, align 2
  %conv426 = zext i16 %444 to i32
  %sub427 = sub nsw i32 %442, %conv426
  %idxprom428 = sext i32 %sub427 to i64
  %445 = load i32*, i32** %dist_method, align 8
  %arrayidx429 = getelementptr inbounds i32, i32* %445, i64 %idxprom428
  %446 = load i32, i32* %arrayidx429, align 4
  %447 = load i32, i32* %LineSadBlk2, align 4
  %add430 = add nsw i32 %447, %446
  store i32 %add430, i32* %LineSadBlk2, align 4
  %448 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value431 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %448, i32 0, i32 156
  %449 = load i32, i32* %max_imgpel_value431, align 4
  %450 = load i32, i32* @weight_luma, align 4
  %451 = load i16*, i16** %refptr, align 8
  %incdec.ptr432 = getelementptr inbounds i16, i16* %451, i32 1
  store i16* %incdec.ptr432, i16** %refptr, align 8
  %452 = load i16, i16* %451, align 2
  %conv433 = zext i16 %452 to i32
  %mul434 = mul nsw i32 %450, %conv433
  %453 = load i32, i32* @wp_luma_round, align 4
  %add435 = add nsw i32 %mul434, %453
  %454 = load i32, i32* @luma_log_weight_denom, align 4
  %shr436 = ashr i32 %add435, %454
  %455 = load i32, i32* @offset_luma, align 4
  %add437 = add nsw i32 %shr436, %455
  %call438 = call i32 @iClip1(i32 %449, i32 %add437)
  store i32 %call438, i32* %weighted_pel, align 4
  %456 = load i32, i32* %weighted_pel, align 4
  %457 = load i16*, i16** %srcptr, align 8
  %incdec.ptr439 = getelementptr inbounds i16, i16* %457, i32 1
  store i16* %incdec.ptr439, i16** %srcptr, align 8
  %458 = load i16, i16* %457, align 2
  %conv440 = zext i16 %458 to i32
  %sub441 = sub nsw i32 %456, %conv440
  %idxprom442 = sext i32 %sub441 to i64
  %459 = load i32*, i32** %dist_method, align 8
  %arrayidx443 = getelementptr inbounds i32, i32* %459, i64 %idxprom442
  %460 = load i32, i32* %arrayidx443, align 4
  %461 = load i32, i32* %LineSadBlk2, align 4
  %add444 = add nsw i32 %461, %460
  store i32 %add444, i32* %LineSadBlk2, align 4
  %462 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value445 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %462, i32 0, i32 156
  %463 = load i32, i32* %max_imgpel_value445, align 4
  %464 = load i32, i32* @weight_luma, align 4
  %465 = load i16*, i16** %refptr, align 8
  %incdec.ptr446 = getelementptr inbounds i16, i16* %465, i32 1
  store i16* %incdec.ptr446, i16** %refptr, align 8
  %466 = load i16, i16* %465, align 2
  %conv447 = zext i16 %466 to i32
  %mul448 = mul nsw i32 %464, %conv447
  %467 = load i32, i32* @wp_luma_round, align 4
  %add449 = add nsw i32 %mul448, %467
  %468 = load i32, i32* @luma_log_weight_denom, align 4
  %shr450 = ashr i32 %add449, %468
  %469 = load i32, i32* @offset_luma, align 4
  %add451 = add nsw i32 %shr450, %469
  %call452 = call i32 @iClip1(i32 %463, i32 %add451)
  store i32 %call452, i32* %weighted_pel, align 4
  %470 = load i32, i32* %weighted_pel, align 4
  %471 = load i16*, i16** %srcptr, align 8
  %incdec.ptr453 = getelementptr inbounds i16, i16* %471, i32 1
  store i16* %incdec.ptr453, i16** %srcptr, align 8
  %472 = load i16, i16* %471, align 2
  %conv454 = zext i16 %472 to i32
  %sub455 = sub nsw i32 %470, %conv454
  %idxprom456 = sext i32 %sub455 to i64
  %473 = load i32*, i32** %dist_method, align 8
  %arrayidx457 = getelementptr inbounds i32, i32* %473, i64 %idxprom456
  %474 = load i32, i32* %arrayidx457, align 4
  %475 = load i32, i32* %LineSadBlk2, align 4
  %add458 = add nsw i32 %475, %474
  store i32 %add458, i32* %LineSadBlk2, align 4
  %476 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value459 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %476, i32 0, i32 156
  %477 = load i32, i32* %max_imgpel_value459, align 4
  %478 = load i32, i32* @weight_luma, align 4
  %479 = load i16*, i16** %refptr, align 8
  %incdec.ptr460 = getelementptr inbounds i16, i16* %479, i32 1
  store i16* %incdec.ptr460, i16** %refptr, align 8
  %480 = load i16, i16* %479, align 2
  %conv461 = zext i16 %480 to i32
  %mul462 = mul nsw i32 %478, %conv461
  %481 = load i32, i32* @wp_luma_round, align 4
  %add463 = add nsw i32 %mul462, %481
  %482 = load i32, i32* @luma_log_weight_denom, align 4
  %shr464 = ashr i32 %add463, %482
  %483 = load i32, i32* @offset_luma, align 4
  %add465 = add nsw i32 %shr464, %483
  %call466 = call i32 @iClip1(i32 %477, i32 %add465)
  store i32 %call466, i32* %weighted_pel, align 4
  %484 = load i32, i32* %weighted_pel, align 4
  %485 = load i16*, i16** %srcptr, align 8
  %incdec.ptr467 = getelementptr inbounds i16, i16* %485, i32 1
  store i16* %incdec.ptr467, i16** %srcptr, align 8
  %486 = load i16, i16* %485, align 2
  %conv468 = zext i16 %486 to i32
  %sub469 = sub nsw i32 %484, %conv468
  %idxprom470 = sext i32 %sub469 to i64
  %487 = load i32*, i32** %dist_method, align 8
  %arrayidx471 = getelementptr inbounds i32, i32* %487, i64 %idxprom470
  %488 = load i32, i32* %arrayidx471, align 4
  %489 = load i32, i32* %LineSadBlk3, align 4
  %add472 = add nsw i32 %489, %488
  store i32 %add472, i32* %LineSadBlk3, align 4
  %490 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value473 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %490, i32 0, i32 156
  %491 = load i32, i32* %max_imgpel_value473, align 4
  %492 = load i32, i32* @weight_luma, align 4
  %493 = load i16*, i16** %refptr, align 8
  %incdec.ptr474 = getelementptr inbounds i16, i16* %493, i32 1
  store i16* %incdec.ptr474, i16** %refptr, align 8
  %494 = load i16, i16* %493, align 2
  %conv475 = zext i16 %494 to i32
  %mul476 = mul nsw i32 %492, %conv475
  %495 = load i32, i32* @wp_luma_round, align 4
  %add477 = add nsw i32 %mul476, %495
  %496 = load i32, i32* @luma_log_weight_denom, align 4
  %shr478 = ashr i32 %add477, %496
  %497 = load i32, i32* @offset_luma, align 4
  %add479 = add nsw i32 %shr478, %497
  %call480 = call i32 @iClip1(i32 %491, i32 %add479)
  store i32 %call480, i32* %weighted_pel, align 4
  %498 = load i32, i32* %weighted_pel, align 4
  %499 = load i16*, i16** %srcptr, align 8
  %incdec.ptr481 = getelementptr inbounds i16, i16* %499, i32 1
  store i16* %incdec.ptr481, i16** %srcptr, align 8
  %500 = load i16, i16* %499, align 2
  %conv482 = zext i16 %500 to i32
  %sub483 = sub nsw i32 %498, %conv482
  %idxprom484 = sext i32 %sub483 to i64
  %501 = load i32*, i32** %dist_method, align 8
  %arrayidx485 = getelementptr inbounds i32, i32* %501, i64 %idxprom484
  %502 = load i32, i32* %arrayidx485, align 4
  %503 = load i32, i32* %LineSadBlk3, align 4
  %add486 = add nsw i32 %503, %502
  store i32 %add486, i32* %LineSadBlk3, align 4
  %504 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value487 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %504, i32 0, i32 156
  %505 = load i32, i32* %max_imgpel_value487, align 4
  %506 = load i32, i32* @weight_luma, align 4
  %507 = load i16*, i16** %refptr, align 8
  %incdec.ptr488 = getelementptr inbounds i16, i16* %507, i32 1
  store i16* %incdec.ptr488, i16** %refptr, align 8
  %508 = load i16, i16* %507, align 2
  %conv489 = zext i16 %508 to i32
  %mul490 = mul nsw i32 %506, %conv489
  %509 = load i32, i32* @wp_luma_round, align 4
  %add491 = add nsw i32 %mul490, %509
  %510 = load i32, i32* @luma_log_weight_denom, align 4
  %shr492 = ashr i32 %add491, %510
  %511 = load i32, i32* @offset_luma, align 4
  %add493 = add nsw i32 %shr492, %511
  %call494 = call i32 @iClip1(i32 %505, i32 %add493)
  store i32 %call494, i32* %weighted_pel, align 4
  %512 = load i32, i32* %weighted_pel, align 4
  %513 = load i16*, i16** %srcptr, align 8
  %incdec.ptr495 = getelementptr inbounds i16, i16* %513, i32 1
  store i16* %incdec.ptr495, i16** %srcptr, align 8
  %514 = load i16, i16* %513, align 2
  %conv496 = zext i16 %514 to i32
  %sub497 = sub nsw i32 %512, %conv496
  %idxprom498 = sext i32 %sub497 to i64
  %515 = load i32*, i32** %dist_method, align 8
  %arrayidx499 = getelementptr inbounds i32, i32* %515, i64 %idxprom498
  %516 = load i32, i32* %arrayidx499, align 4
  %517 = load i32, i32* %LineSadBlk3, align 4
  %add500 = add nsw i32 %517, %516
  store i32 %add500, i32* %LineSadBlk3, align 4
  %518 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value501 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %518, i32 0, i32 156
  %519 = load i32, i32* %max_imgpel_value501, align 4
  %520 = load i32, i32* @weight_luma, align 4
  %521 = load i16*, i16** %refptr, align 8
  %incdec.ptr502 = getelementptr inbounds i16, i16* %521, i32 1
  store i16* %incdec.ptr502, i16** %refptr, align 8
  %522 = load i16, i16* %521, align 2
  %conv503 = zext i16 %522 to i32
  %mul504 = mul nsw i32 %520, %conv503
  %523 = load i32, i32* @wp_luma_round, align 4
  %add505 = add nsw i32 %mul504, %523
  %524 = load i32, i32* @luma_log_weight_denom, align 4
  %shr506 = ashr i32 %add505, %524
  %525 = load i32, i32* @offset_luma, align 4
  %add507 = add nsw i32 %shr506, %525
  %call508 = call i32 @iClip1(i32 %519, i32 %add507)
  store i32 %call508, i32* %weighted_pel, align 4
  %526 = load i32, i32* %weighted_pel, align 4
  %527 = load i16*, i16** %srcptr, align 8
  %incdec.ptr509 = getelementptr inbounds i16, i16* %527, i32 1
  store i16* %incdec.ptr509, i16** %srcptr, align 8
  %528 = load i16, i16* %527, align 2
  %conv510 = zext i16 %528 to i32
  %sub511 = sub nsw i32 %526, %conv510
  %idxprom512 = sext i32 %sub511 to i64
  %529 = load i32*, i32** %dist_method, align 8
  %arrayidx513 = getelementptr inbounds i32, i32* %529, i64 %idxprom512
  %530 = load i32, i32* %arrayidx513, align 4
  %531 = load i32, i32* %LineSadBlk3, align 4
  %add514 = add nsw i32 %531, %530
  store i32 %add514, i32* %LineSadBlk3, align 4
  %532 = load i32, i32* @img_padded_size_x, align 4
  %sub515 = sub nsw i32 %532, 16
  %533 = load i16*, i16** %refptr, align 8
  %idx.ext516 = sext i32 %sub515 to i64
  %add.ptr517 = getelementptr inbounds i16, i16* %533, i64 %idx.ext516
  store i16* %add.ptr517, i16** %refptr, align 8
  br label %for.inc.518

for.inc.518:                                      ; preds = %for.body.293
  %534 = load i32, i32* %y, align 4
  %inc519 = add nsw i32 %534, 1
  store i32 %inc519, i32* %y, align 4
  br label %for.cond.290

for.end.520:                                      ; preds = %for.cond.290
  %535 = load i32, i32* %LineSadBlk0, align 4
  %536 = load i32, i32* %pos, align 4
  %idxprom521 = sext i32 %536 to i64
  %537 = load i32, i32* %bindex, align 4
  %inc522 = add nsw i32 %537, 1
  store i32 %inc522, i32* %bindex, align 4
  %idxprom523 = sext i32 %537 to i64
  %538 = load i32**, i32*** %block_sad, align 8
  %arrayidx524 = getelementptr inbounds i32*, i32** %538, i64 %idxprom523
  %539 = load i32*, i32** %arrayidx524, align 8
  %arrayidx525 = getelementptr inbounds i32, i32* %539, i64 %idxprom521
  store i32 %535, i32* %arrayidx525, align 4
  %540 = load i32, i32* %LineSadBlk1, align 4
  %541 = load i32, i32* %pos, align 4
  %idxprom526 = sext i32 %541 to i64
  %542 = load i32, i32* %bindex, align 4
  %inc527 = add nsw i32 %542, 1
  store i32 %inc527, i32* %bindex, align 4
  %idxprom528 = sext i32 %542 to i64
  %543 = load i32**, i32*** %block_sad, align 8
  %arrayidx529 = getelementptr inbounds i32*, i32** %543, i64 %idxprom528
  %544 = load i32*, i32** %arrayidx529, align 8
  %arrayidx530 = getelementptr inbounds i32, i32* %544, i64 %idxprom526
  store i32 %540, i32* %arrayidx530, align 4
  %545 = load i32, i32* %LineSadBlk2, align 4
  %546 = load i32, i32* %pos, align 4
  %idxprom531 = sext i32 %546 to i64
  %547 = load i32, i32* %bindex, align 4
  %inc532 = add nsw i32 %547, 1
  store i32 %inc532, i32* %bindex, align 4
  %idxprom533 = sext i32 %547 to i64
  %548 = load i32**, i32*** %block_sad, align 8
  %arrayidx534 = getelementptr inbounds i32*, i32** %548, i64 %idxprom533
  %549 = load i32*, i32** %arrayidx534, align 8
  %arrayidx535 = getelementptr inbounds i32, i32* %549, i64 %idxprom531
  store i32 %545, i32* %arrayidx535, align 4
  %550 = load i32, i32* %LineSadBlk3, align 4
  %551 = load i32, i32* %pos, align 4
  %idxprom536 = sext i32 %551 to i64
  %552 = load i32, i32* %bindex, align 4
  %inc537 = add nsw i32 %552, 1
  store i32 %inc537, i32* %bindex, align 4
  %idxprom538 = sext i32 %552 to i64
  %553 = load i32**, i32*** %block_sad, align 8
  %arrayidx539 = getelementptr inbounds i32*, i32** %553, i64 %idxprom538
  %554 = load i32*, i32** %arrayidx539, align 8
  %arrayidx540 = getelementptr inbounds i32, i32* %554, i64 %idxprom536
  store i32 %550, i32* %arrayidx540, align 4
  br label %for.inc.541

for.inc.541:                                      ; preds = %for.end.520
  %555 = load i32, i32* %blky, align 4
  %inc542 = add nsw i32 %555, 1
  store i32 %inc542, i32* %blky, align 4
  br label %for.cond.286

for.end.543:                                      ; preds = %for.cond.286
  %556 = load i32, i32* @ChromaMEEnable, align 4
  %tobool544 = icmp ne i32 %556, 0
  br i1 %tobool544, label %if.then.545, label %if.end.704

if.then.545:                                      ; preds = %for.end.543
  store i32 0, i32* %k, align 4
  br label %for.cond.546

for.cond.546:                                     ; preds = %for.inc.701, %if.then.545
  %557 = load i32, i32* %k, align 4
  %cmp547 = icmp slt i32 %557, 2
  br i1 %cmp547, label %for.body.549, label %for.end.703

for.body.549:                                     ; preds = %for.cond.546
  store i32 0, i32* %bindex, align 4
  %558 = load i32, i32* @ref_access_method, align 4
  %idxprom550 = sext i32 %558 to i64
  %arrayidx551 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom550
  %559 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx551, align 8
  %560 = load i32, i32* %k, align 4
  %idxprom552 = sext i32 %560 to i64
  %arrayidx553 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1), i32 0, i64 %idxprom552
  %561 = load i16****, i16***** %arrayidx553, align 8
  %562 = load i32, i32* %abs_y4, align 4
  %563 = load i32, i32* %abs_x4, align 4
  %call554 = call i16* %559(i16**** %561, i32 %562, i32 %563)
  store i16* %call554, i16** %refptr, align 8
  store i32 0, i32* %blky, align 4
  br label %for.cond.555

for.cond.555:                                     ; preds = %for.inc.698, %for.body.549
  %564 = load i32, i32* %blky, align 4
  %cmp556 = icmp slt i32 %564, 4
  br i1 %cmp556, label %for.body.558, label %for.end.700

for.body.558:                                     ; preds = %for.cond.555
  store i32 0, i32* %LineSadBlk3, align 4
  store i32 0, i32* %LineSadBlk2, align 4
  store i32 0, i32* %LineSadBlk1, align 4
  store i32 0, i32* %LineSadBlk0, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.559

for.cond.559:                                     ; preds = %for.inc.671, %for.body.558
  %565 = load i32, i32* %y, align 4
  %566 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y560 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %566, i32 0, i32 163
  %567 = load i32, i32* %mb_cr_size_y560, align 4
  %cmp561 = icmp slt i32 %565, %567
  br i1 %cmp561, label %for.body.563, label %for.end.673

for.body.563:                                     ; preds = %for.cond.559
  store i32 0, i32* %x, align 4
  br label %for.cond.564

for.cond.564:                                     ; preds = %for.inc.586, %for.body.563
  %568 = load i32, i32* %x, align 4
  %569 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x565 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %569, i32 0, i32 162
  %570 = load i32, i32* %mb_cr_size_x565, align 4
  %cmp566 = icmp slt i32 %568, %570
  br i1 %cmp566, label %for.body.568, label %for.end.588

for.body.568:                                     ; preds = %for.cond.564
  %571 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %571, i32 0, i32 157
  %572 = load i32, i32* %max_imgpel_value_uv, align 4
  %573 = load i32, i32* %k, align 4
  %idxprom569 = sext i32 %573 to i64
  %arrayidx570 = getelementptr inbounds [2 x i32], [2 x i32]* @weight_cr, i32 0, i64 %idxprom569
  %574 = load i32, i32* %arrayidx570, align 4
  %575 = load i16*, i16** %refptr, align 8
  %incdec.ptr571 = getelementptr inbounds i16, i16* %575, i32 1
  store i16* %incdec.ptr571, i16** %refptr, align 8
  %576 = load i16, i16* %575, align 2
  %conv572 = zext i16 %576 to i32
  %mul573 = mul nsw i32 %574, %conv572
  %577 = load i32, i32* @wp_chroma_round, align 4
  %add574 = add nsw i32 %mul573, %577
  %578 = load i32, i32* @chroma_log_weight_denom, align 4
  %shr575 = ashr i32 %add574, %578
  %579 = load i32, i32* %k, align 4
  %idxprom576 = sext i32 %579 to i64
  %arrayidx577 = getelementptr inbounds [2 x i32], [2 x i32]* @offset_cr, i32 0, i64 %idxprom576
  %580 = load i32, i32* %arrayidx577, align 4
  %add578 = add nsw i32 %shr575, %580
  %call579 = call i32 @iClip1(i32 %572, i32 %add578)
  store i32 %call579, i32* %weighted_pel, align 4
  %581 = load i32, i32* %weighted_pel, align 4
  %582 = load i16*, i16** %srcptr, align 8
  %incdec.ptr580 = getelementptr inbounds i16, i16* %582, i32 1
  store i16* %incdec.ptr580, i16** %srcptr, align 8
  %583 = load i16, i16* %582, align 2
  %conv581 = zext i16 %583 to i32
  %sub582 = sub nsw i32 %581, %conv581
  %idxprom583 = sext i32 %sub582 to i64
  %584 = load i32*, i32** %dist_method, align 8
  %arrayidx584 = getelementptr inbounds i32, i32* %584, i64 %idxprom583
  %585 = load i32, i32* %arrayidx584, align 4
  %586 = load i32, i32* %LineSadBlk0, align 4
  %add585 = add nsw i32 %586, %585
  store i32 %add585, i32* %LineSadBlk0, align 4
  br label %for.inc.586

for.inc.586:                                      ; preds = %for.body.568
  %587 = load i32, i32* %x, align 4
  %add587 = add nsw i32 %587, 4
  store i32 %add587, i32* %x, align 4
  br label %for.cond.564

for.end.588:                                      ; preds = %for.cond.564
  store i32 0, i32* %x, align 4
  br label %for.cond.589

for.cond.589:                                     ; preds = %for.inc.612, %for.end.588
  %588 = load i32, i32* %x, align 4
  %589 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x590 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %589, i32 0, i32 162
  %590 = load i32, i32* %mb_cr_size_x590, align 4
  %cmp591 = icmp slt i32 %588, %590
  br i1 %cmp591, label %for.body.593, label %for.end.614

for.body.593:                                     ; preds = %for.cond.589
  %591 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv594 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %591, i32 0, i32 157
  %592 = load i32, i32* %max_imgpel_value_uv594, align 4
  %593 = load i32, i32* %k, align 4
  %idxprom595 = sext i32 %593 to i64
  %arrayidx596 = getelementptr inbounds [2 x i32], [2 x i32]* @weight_cr, i32 0, i64 %idxprom595
  %594 = load i32, i32* %arrayidx596, align 4
  %595 = load i16*, i16** %refptr, align 8
  %incdec.ptr597 = getelementptr inbounds i16, i16* %595, i32 1
  store i16* %incdec.ptr597, i16** %refptr, align 8
  %596 = load i16, i16* %595, align 2
  %conv598 = zext i16 %596 to i32
  %mul599 = mul nsw i32 %594, %conv598
  %597 = load i32, i32* @wp_chroma_round, align 4
  %add600 = add nsw i32 %mul599, %597
  %598 = load i32, i32* @chroma_log_weight_denom, align 4
  %shr601 = ashr i32 %add600, %598
  %599 = load i32, i32* %k, align 4
  %idxprom602 = sext i32 %599 to i64
  %arrayidx603 = getelementptr inbounds [2 x i32], [2 x i32]* @offset_cr, i32 0, i64 %idxprom602
  %600 = load i32, i32* %arrayidx603, align 4
  %add604 = add nsw i32 %shr601, %600
  %call605 = call i32 @iClip1(i32 %592, i32 %add604)
  store i32 %call605, i32* %weighted_pel, align 4
  %601 = load i32, i32* %weighted_pel, align 4
  %602 = load i16*, i16** %srcptr, align 8
  %incdec.ptr606 = getelementptr inbounds i16, i16* %602, i32 1
  store i16* %incdec.ptr606, i16** %srcptr, align 8
  %603 = load i16, i16* %602, align 2
  %conv607 = zext i16 %603 to i32
  %sub608 = sub nsw i32 %601, %conv607
  %idxprom609 = sext i32 %sub608 to i64
  %604 = load i32*, i32** %dist_method, align 8
  %arrayidx610 = getelementptr inbounds i32, i32* %604, i64 %idxprom609
  %605 = load i32, i32* %arrayidx610, align 4
  %606 = load i32, i32* %LineSadBlk1, align 4
  %add611 = add nsw i32 %606, %605
  store i32 %add611, i32* %LineSadBlk1, align 4
  br label %for.inc.612

for.inc.612:                                      ; preds = %for.body.593
  %607 = load i32, i32* %x, align 4
  %add613 = add nsw i32 %607, 4
  store i32 %add613, i32* %x, align 4
  br label %for.cond.589

for.end.614:                                      ; preds = %for.cond.589
  store i32 0, i32* %x, align 4
  br label %for.cond.615

for.cond.615:                                     ; preds = %for.inc.638, %for.end.614
  %608 = load i32, i32* %x, align 4
  %609 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x616 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %609, i32 0, i32 162
  %610 = load i32, i32* %mb_cr_size_x616, align 4
  %cmp617 = icmp slt i32 %608, %610
  br i1 %cmp617, label %for.body.619, label %for.end.640

for.body.619:                                     ; preds = %for.cond.615
  %611 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv620 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %611, i32 0, i32 157
  %612 = load i32, i32* %max_imgpel_value_uv620, align 4
  %613 = load i32, i32* %k, align 4
  %idxprom621 = sext i32 %613 to i64
  %arrayidx622 = getelementptr inbounds [2 x i32], [2 x i32]* @weight_cr, i32 0, i64 %idxprom621
  %614 = load i32, i32* %arrayidx622, align 4
  %615 = load i16*, i16** %refptr, align 8
  %incdec.ptr623 = getelementptr inbounds i16, i16* %615, i32 1
  store i16* %incdec.ptr623, i16** %refptr, align 8
  %616 = load i16, i16* %615, align 2
  %conv624 = zext i16 %616 to i32
  %mul625 = mul nsw i32 %614, %conv624
  %617 = load i32, i32* @wp_chroma_round, align 4
  %add626 = add nsw i32 %mul625, %617
  %618 = load i32, i32* @chroma_log_weight_denom, align 4
  %shr627 = ashr i32 %add626, %618
  %619 = load i32, i32* %k, align 4
  %idxprom628 = sext i32 %619 to i64
  %arrayidx629 = getelementptr inbounds [2 x i32], [2 x i32]* @offset_cr, i32 0, i64 %idxprom628
  %620 = load i32, i32* %arrayidx629, align 4
  %add630 = add nsw i32 %shr627, %620
  %call631 = call i32 @iClip1(i32 %612, i32 %add630)
  store i32 %call631, i32* %weighted_pel, align 4
  %621 = load i32, i32* %weighted_pel, align 4
  %622 = load i16*, i16** %srcptr, align 8
  %incdec.ptr632 = getelementptr inbounds i16, i16* %622, i32 1
  store i16* %incdec.ptr632, i16** %srcptr, align 8
  %623 = load i16, i16* %622, align 2
  %conv633 = zext i16 %623 to i32
  %sub634 = sub nsw i32 %621, %conv633
  %idxprom635 = sext i32 %sub634 to i64
  %624 = load i32*, i32** %dist_method, align 8
  %arrayidx636 = getelementptr inbounds i32, i32* %624, i64 %idxprom635
  %625 = load i32, i32* %arrayidx636, align 4
  %626 = load i32, i32* %LineSadBlk2, align 4
  %add637 = add nsw i32 %626, %625
  store i32 %add637, i32* %LineSadBlk2, align 4
  br label %for.inc.638

for.inc.638:                                      ; preds = %for.body.619
  %627 = load i32, i32* %x, align 4
  %add639 = add nsw i32 %627, 4
  store i32 %add639, i32* %x, align 4
  br label %for.cond.615

for.end.640:                                      ; preds = %for.cond.615
  store i32 0, i32* %x, align 4
  br label %for.cond.641

for.cond.641:                                     ; preds = %for.inc.664, %for.end.640
  %628 = load i32, i32* %x, align 4
  %629 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x642 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %629, i32 0, i32 162
  %630 = load i32, i32* %mb_cr_size_x642, align 4
  %cmp643 = icmp slt i32 %628, %630
  br i1 %cmp643, label %for.body.645, label %for.end.666

for.body.645:                                     ; preds = %for.cond.641
  %631 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv646 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %631, i32 0, i32 157
  %632 = load i32, i32* %max_imgpel_value_uv646, align 4
  %633 = load i32, i32* %k, align 4
  %idxprom647 = sext i32 %633 to i64
  %arrayidx648 = getelementptr inbounds [2 x i32], [2 x i32]* @weight_cr, i32 0, i64 %idxprom647
  %634 = load i32, i32* %arrayidx648, align 4
  %635 = load i16*, i16** %refptr, align 8
  %incdec.ptr649 = getelementptr inbounds i16, i16* %635, i32 1
  store i16* %incdec.ptr649, i16** %refptr, align 8
  %636 = load i16, i16* %635, align 2
  %conv650 = zext i16 %636 to i32
  %mul651 = mul nsw i32 %634, %conv650
  %637 = load i32, i32* @wp_chroma_round, align 4
  %add652 = add nsw i32 %mul651, %637
  %638 = load i32, i32* @chroma_log_weight_denom, align 4
  %shr653 = ashr i32 %add652, %638
  %639 = load i32, i32* %k, align 4
  %idxprom654 = sext i32 %639 to i64
  %arrayidx655 = getelementptr inbounds [2 x i32], [2 x i32]* @offset_cr, i32 0, i64 %idxprom654
  %640 = load i32, i32* %arrayidx655, align 4
  %add656 = add nsw i32 %shr653, %640
  %call657 = call i32 @iClip1(i32 %632, i32 %add656)
  store i32 %call657, i32* %weighted_pel, align 4
  %641 = load i32, i32* %weighted_pel, align 4
  %642 = load i16*, i16** %srcptr, align 8
  %incdec.ptr658 = getelementptr inbounds i16, i16* %642, i32 1
  store i16* %incdec.ptr658, i16** %srcptr, align 8
  %643 = load i16, i16* %642, align 2
  %conv659 = zext i16 %643 to i32
  %sub660 = sub nsw i32 %641, %conv659
  %idxprom661 = sext i32 %sub660 to i64
  %644 = load i32*, i32** %dist_method, align 8
  %arrayidx662 = getelementptr inbounds i32, i32* %644, i64 %idxprom661
  %645 = load i32, i32* %arrayidx662, align 4
  %646 = load i32, i32* %LineSadBlk3, align 4
  %add663 = add nsw i32 %646, %645
  store i32 %add663, i32* %LineSadBlk3, align 4
  br label %for.inc.664

for.inc.664:                                      ; preds = %for.body.645
  %647 = load i32, i32* %x, align 4
  %add665 = add nsw i32 %647, 4
  store i32 %add665, i32* %x, align 4
  br label %for.cond.641

for.end.666:                                      ; preds = %for.cond.641
  %648 = load i32, i32* @img_cr_padded_size_x, align 4
  %649 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x667 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %649, i32 0, i32 162
  %650 = load i32, i32* %mb_cr_size_x667, align 4
  %sub668 = sub nsw i32 %648, %650
  %651 = load i16*, i16** %refptr, align 8
  %idx.ext669 = sext i32 %sub668 to i64
  %add.ptr670 = getelementptr inbounds i16, i16* %651, i64 %idx.ext669
  store i16* %add.ptr670, i16** %refptr, align 8
  br label %for.inc.671

for.inc.671:                                      ; preds = %for.end.666
  %652 = load i32, i32* %y, align 4
  %add672 = add nsw i32 %652, 4
  store i32 %add672, i32* %y, align 4
  br label %for.cond.559

for.end.673:                                      ; preds = %for.cond.559
  %653 = load i32, i32* %LineSadBlk0, align 4
  %654 = load i32, i32* %pos, align 4
  %idxprom674 = sext i32 %654 to i64
  %655 = load i32, i32* %bindex, align 4
  %inc675 = add nsw i32 %655, 1
  store i32 %inc675, i32* %bindex, align 4
  %idxprom676 = sext i32 %655 to i64
  %656 = load i32**, i32*** %block_sad, align 8
  %arrayidx677 = getelementptr inbounds i32*, i32** %656, i64 %idxprom676
  %657 = load i32*, i32** %arrayidx677, align 8
  %arrayidx678 = getelementptr inbounds i32, i32* %657, i64 %idxprom674
  %658 = load i32, i32* %arrayidx678, align 4
  %add679 = add nsw i32 %658, %653
  store i32 %add679, i32* %arrayidx678, align 4
  %659 = load i32, i32* %LineSadBlk1, align 4
  %660 = load i32, i32* %pos, align 4
  %idxprom680 = sext i32 %660 to i64
  %661 = load i32, i32* %bindex, align 4
  %inc681 = add nsw i32 %661, 1
  store i32 %inc681, i32* %bindex, align 4
  %idxprom682 = sext i32 %661 to i64
  %662 = load i32**, i32*** %block_sad, align 8
  %arrayidx683 = getelementptr inbounds i32*, i32** %662, i64 %idxprom682
  %663 = load i32*, i32** %arrayidx683, align 8
  %arrayidx684 = getelementptr inbounds i32, i32* %663, i64 %idxprom680
  %664 = load i32, i32* %arrayidx684, align 4
  %add685 = add nsw i32 %664, %659
  store i32 %add685, i32* %arrayidx684, align 4
  %665 = load i32, i32* %LineSadBlk2, align 4
  %666 = load i32, i32* %pos, align 4
  %idxprom686 = sext i32 %666 to i64
  %667 = load i32, i32* %bindex, align 4
  %inc687 = add nsw i32 %667, 1
  store i32 %inc687, i32* %bindex, align 4
  %idxprom688 = sext i32 %667 to i64
  %668 = load i32**, i32*** %block_sad, align 8
  %arrayidx689 = getelementptr inbounds i32*, i32** %668, i64 %idxprom688
  %669 = load i32*, i32** %arrayidx689, align 8
  %arrayidx690 = getelementptr inbounds i32, i32* %669, i64 %idxprom686
  %670 = load i32, i32* %arrayidx690, align 4
  %add691 = add nsw i32 %670, %665
  store i32 %add691, i32* %arrayidx690, align 4
  %671 = load i32, i32* %LineSadBlk3, align 4
  %672 = load i32, i32* %pos, align 4
  %idxprom692 = sext i32 %672 to i64
  %673 = load i32, i32* %bindex, align 4
  %inc693 = add nsw i32 %673, 1
  store i32 %inc693, i32* %bindex, align 4
  %idxprom694 = sext i32 %673 to i64
  %674 = load i32**, i32*** %block_sad, align 8
  %arrayidx695 = getelementptr inbounds i32*, i32** %674, i64 %idxprom694
  %675 = load i32*, i32** %arrayidx695, align 8
  %arrayidx696 = getelementptr inbounds i32, i32* %675, i64 %idxprom692
  %676 = load i32, i32* %arrayidx696, align 4
  %add697 = add nsw i32 %676, %671
  store i32 %add697, i32* %arrayidx696, align 4
  br label %for.inc.698

for.inc.698:                                      ; preds = %for.end.673
  %677 = load i32, i32* %blky, align 4
  %inc699 = add nsw i32 %677, 1
  store i32 %inc699, i32* %blky, align 4
  br label %for.cond.555

for.end.700:                                      ; preds = %for.cond.555
  br label %for.inc.701

for.inc.701:                                      ; preds = %for.end.700
  %678 = load i32, i32* %k, align 4
  %inc702 = add nsw i32 %678, 1
  store i32 %inc702, i32* %k, align 4
  br label %for.cond.546

for.end.703:                                      ; preds = %for.cond.546
  br label %if.end.704

if.end.704:                                       ; preds = %for.end.703, %for.end.543
  br label %if.end.996

if.else.705:                                      ; preds = %if.end.280
  store i16* getelementptr inbounds ([768 x i16], [768 x i16]* @SetupFastFullPelSearch.orig_pels, i32 0, i32 0), i16** %srcptr, align 8
  store i32 0, i32* %bindex, align 4
  %679 = load i32, i32* @ref_access_method, align 4
  %idxprom706 = sext i32 %679 to i64
  %arrayidx707 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom706
  %680 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx707, align 8
  %681 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %682 = load i32, i32* %abs_y4, align 4
  %683 = load i32, i32* %abs_x4, align 4
  %call708 = call i16* %680(i16**** %681, i32 %682, i32 %683)
  store i16* %call708, i16** %refptr, align 8
  store i32 0, i32* %blky, align 4
  br label %for.cond.709

for.cond.709:                                     ; preds = %for.inc.871, %if.else.705
  %684 = load i32, i32* %blky, align 4
  %cmp710 = icmp slt i32 %684, 4
  br i1 %cmp710, label %for.body.712, label %for.end.873

for.body.712:                                     ; preds = %for.cond.709
  store i32 0, i32* %LineSadBlk3, align 4
  store i32 0, i32* %LineSadBlk2, align 4
  store i32 0, i32* %LineSadBlk1, align 4
  store i32 0, i32* %LineSadBlk0, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.713

for.cond.713:                                     ; preds = %for.inc.848, %for.body.712
  %685 = load i32, i32* %y, align 4
  %cmp714 = icmp slt i32 %685, 4
  br i1 %cmp714, label %for.body.716, label %for.end.850

for.body.716:                                     ; preds = %for.cond.713
  %686 = load i16*, i16** %refptr, align 8
  %incdec.ptr717 = getelementptr inbounds i16, i16* %686, i32 1
  store i16* %incdec.ptr717, i16** %refptr, align 8
  %687 = load i16, i16* %686, align 2
  %conv718 = zext i16 %687 to i32
  %688 = load i16*, i16** %srcptr, align 8
  %incdec.ptr719 = getelementptr inbounds i16, i16* %688, i32 1
  store i16* %incdec.ptr719, i16** %srcptr, align 8
  %689 = load i16, i16* %688, align 2
  %conv720 = zext i16 %689 to i32
  %sub721 = sub nsw i32 %conv718, %conv720
  %idxprom722 = sext i32 %sub721 to i64
  %690 = load i32*, i32** %dist_method, align 8
  %arrayidx723 = getelementptr inbounds i32, i32* %690, i64 %idxprom722
  %691 = load i32, i32* %arrayidx723, align 4
  %692 = load i32, i32* %LineSadBlk0, align 4
  %add724 = add nsw i32 %692, %691
  store i32 %add724, i32* %LineSadBlk0, align 4
  %693 = load i16*, i16** %refptr, align 8
  %incdec.ptr725 = getelementptr inbounds i16, i16* %693, i32 1
  store i16* %incdec.ptr725, i16** %refptr, align 8
  %694 = load i16, i16* %693, align 2
  %conv726 = zext i16 %694 to i32
  %695 = load i16*, i16** %srcptr, align 8
  %incdec.ptr727 = getelementptr inbounds i16, i16* %695, i32 1
  store i16* %incdec.ptr727, i16** %srcptr, align 8
  %696 = load i16, i16* %695, align 2
  %conv728 = zext i16 %696 to i32
  %sub729 = sub nsw i32 %conv726, %conv728
  %idxprom730 = sext i32 %sub729 to i64
  %697 = load i32*, i32** %dist_method, align 8
  %arrayidx731 = getelementptr inbounds i32, i32* %697, i64 %idxprom730
  %698 = load i32, i32* %arrayidx731, align 4
  %699 = load i32, i32* %LineSadBlk0, align 4
  %add732 = add nsw i32 %699, %698
  store i32 %add732, i32* %LineSadBlk0, align 4
  %700 = load i16*, i16** %refptr, align 8
  %incdec.ptr733 = getelementptr inbounds i16, i16* %700, i32 1
  store i16* %incdec.ptr733, i16** %refptr, align 8
  %701 = load i16, i16* %700, align 2
  %conv734 = zext i16 %701 to i32
  %702 = load i16*, i16** %srcptr, align 8
  %incdec.ptr735 = getelementptr inbounds i16, i16* %702, i32 1
  store i16* %incdec.ptr735, i16** %srcptr, align 8
  %703 = load i16, i16* %702, align 2
  %conv736 = zext i16 %703 to i32
  %sub737 = sub nsw i32 %conv734, %conv736
  %idxprom738 = sext i32 %sub737 to i64
  %704 = load i32*, i32** %dist_method, align 8
  %arrayidx739 = getelementptr inbounds i32, i32* %704, i64 %idxprom738
  %705 = load i32, i32* %arrayidx739, align 4
  %706 = load i32, i32* %LineSadBlk0, align 4
  %add740 = add nsw i32 %706, %705
  store i32 %add740, i32* %LineSadBlk0, align 4
  %707 = load i16*, i16** %refptr, align 8
  %incdec.ptr741 = getelementptr inbounds i16, i16* %707, i32 1
  store i16* %incdec.ptr741, i16** %refptr, align 8
  %708 = load i16, i16* %707, align 2
  %conv742 = zext i16 %708 to i32
  %709 = load i16*, i16** %srcptr, align 8
  %incdec.ptr743 = getelementptr inbounds i16, i16* %709, i32 1
  store i16* %incdec.ptr743, i16** %srcptr, align 8
  %710 = load i16, i16* %709, align 2
  %conv744 = zext i16 %710 to i32
  %sub745 = sub nsw i32 %conv742, %conv744
  %idxprom746 = sext i32 %sub745 to i64
  %711 = load i32*, i32** %dist_method, align 8
  %arrayidx747 = getelementptr inbounds i32, i32* %711, i64 %idxprom746
  %712 = load i32, i32* %arrayidx747, align 4
  %713 = load i32, i32* %LineSadBlk0, align 4
  %add748 = add nsw i32 %713, %712
  store i32 %add748, i32* %LineSadBlk0, align 4
  %714 = load i16*, i16** %refptr, align 8
  %incdec.ptr749 = getelementptr inbounds i16, i16* %714, i32 1
  store i16* %incdec.ptr749, i16** %refptr, align 8
  %715 = load i16, i16* %714, align 2
  %conv750 = zext i16 %715 to i32
  %716 = load i16*, i16** %srcptr, align 8
  %incdec.ptr751 = getelementptr inbounds i16, i16* %716, i32 1
  store i16* %incdec.ptr751, i16** %srcptr, align 8
  %717 = load i16, i16* %716, align 2
  %conv752 = zext i16 %717 to i32
  %sub753 = sub nsw i32 %conv750, %conv752
  %idxprom754 = sext i32 %sub753 to i64
  %718 = load i32*, i32** %dist_method, align 8
  %arrayidx755 = getelementptr inbounds i32, i32* %718, i64 %idxprom754
  %719 = load i32, i32* %arrayidx755, align 4
  %720 = load i32, i32* %LineSadBlk1, align 4
  %add756 = add nsw i32 %720, %719
  store i32 %add756, i32* %LineSadBlk1, align 4
  %721 = load i16*, i16** %refptr, align 8
  %incdec.ptr757 = getelementptr inbounds i16, i16* %721, i32 1
  store i16* %incdec.ptr757, i16** %refptr, align 8
  %722 = load i16, i16* %721, align 2
  %conv758 = zext i16 %722 to i32
  %723 = load i16*, i16** %srcptr, align 8
  %incdec.ptr759 = getelementptr inbounds i16, i16* %723, i32 1
  store i16* %incdec.ptr759, i16** %srcptr, align 8
  %724 = load i16, i16* %723, align 2
  %conv760 = zext i16 %724 to i32
  %sub761 = sub nsw i32 %conv758, %conv760
  %idxprom762 = sext i32 %sub761 to i64
  %725 = load i32*, i32** %dist_method, align 8
  %arrayidx763 = getelementptr inbounds i32, i32* %725, i64 %idxprom762
  %726 = load i32, i32* %arrayidx763, align 4
  %727 = load i32, i32* %LineSadBlk1, align 4
  %add764 = add nsw i32 %727, %726
  store i32 %add764, i32* %LineSadBlk1, align 4
  %728 = load i16*, i16** %refptr, align 8
  %incdec.ptr765 = getelementptr inbounds i16, i16* %728, i32 1
  store i16* %incdec.ptr765, i16** %refptr, align 8
  %729 = load i16, i16* %728, align 2
  %conv766 = zext i16 %729 to i32
  %730 = load i16*, i16** %srcptr, align 8
  %incdec.ptr767 = getelementptr inbounds i16, i16* %730, i32 1
  store i16* %incdec.ptr767, i16** %srcptr, align 8
  %731 = load i16, i16* %730, align 2
  %conv768 = zext i16 %731 to i32
  %sub769 = sub nsw i32 %conv766, %conv768
  %idxprom770 = sext i32 %sub769 to i64
  %732 = load i32*, i32** %dist_method, align 8
  %arrayidx771 = getelementptr inbounds i32, i32* %732, i64 %idxprom770
  %733 = load i32, i32* %arrayidx771, align 4
  %734 = load i32, i32* %LineSadBlk1, align 4
  %add772 = add nsw i32 %734, %733
  store i32 %add772, i32* %LineSadBlk1, align 4
  %735 = load i16*, i16** %refptr, align 8
  %incdec.ptr773 = getelementptr inbounds i16, i16* %735, i32 1
  store i16* %incdec.ptr773, i16** %refptr, align 8
  %736 = load i16, i16* %735, align 2
  %conv774 = zext i16 %736 to i32
  %737 = load i16*, i16** %srcptr, align 8
  %incdec.ptr775 = getelementptr inbounds i16, i16* %737, i32 1
  store i16* %incdec.ptr775, i16** %srcptr, align 8
  %738 = load i16, i16* %737, align 2
  %conv776 = zext i16 %738 to i32
  %sub777 = sub nsw i32 %conv774, %conv776
  %idxprom778 = sext i32 %sub777 to i64
  %739 = load i32*, i32** %dist_method, align 8
  %arrayidx779 = getelementptr inbounds i32, i32* %739, i64 %idxprom778
  %740 = load i32, i32* %arrayidx779, align 4
  %741 = load i32, i32* %LineSadBlk1, align 4
  %add780 = add nsw i32 %741, %740
  store i32 %add780, i32* %LineSadBlk1, align 4
  %742 = load i16*, i16** %refptr, align 8
  %incdec.ptr781 = getelementptr inbounds i16, i16* %742, i32 1
  store i16* %incdec.ptr781, i16** %refptr, align 8
  %743 = load i16, i16* %742, align 2
  %conv782 = zext i16 %743 to i32
  %744 = load i16*, i16** %srcptr, align 8
  %incdec.ptr783 = getelementptr inbounds i16, i16* %744, i32 1
  store i16* %incdec.ptr783, i16** %srcptr, align 8
  %745 = load i16, i16* %744, align 2
  %conv784 = zext i16 %745 to i32
  %sub785 = sub nsw i32 %conv782, %conv784
  %idxprom786 = sext i32 %sub785 to i64
  %746 = load i32*, i32** %dist_method, align 8
  %arrayidx787 = getelementptr inbounds i32, i32* %746, i64 %idxprom786
  %747 = load i32, i32* %arrayidx787, align 4
  %748 = load i32, i32* %LineSadBlk2, align 4
  %add788 = add nsw i32 %748, %747
  store i32 %add788, i32* %LineSadBlk2, align 4
  %749 = load i16*, i16** %refptr, align 8
  %incdec.ptr789 = getelementptr inbounds i16, i16* %749, i32 1
  store i16* %incdec.ptr789, i16** %refptr, align 8
  %750 = load i16, i16* %749, align 2
  %conv790 = zext i16 %750 to i32
  %751 = load i16*, i16** %srcptr, align 8
  %incdec.ptr791 = getelementptr inbounds i16, i16* %751, i32 1
  store i16* %incdec.ptr791, i16** %srcptr, align 8
  %752 = load i16, i16* %751, align 2
  %conv792 = zext i16 %752 to i32
  %sub793 = sub nsw i32 %conv790, %conv792
  %idxprom794 = sext i32 %sub793 to i64
  %753 = load i32*, i32** %dist_method, align 8
  %arrayidx795 = getelementptr inbounds i32, i32* %753, i64 %idxprom794
  %754 = load i32, i32* %arrayidx795, align 4
  %755 = load i32, i32* %LineSadBlk2, align 4
  %add796 = add nsw i32 %755, %754
  store i32 %add796, i32* %LineSadBlk2, align 4
  %756 = load i16*, i16** %refptr, align 8
  %incdec.ptr797 = getelementptr inbounds i16, i16* %756, i32 1
  store i16* %incdec.ptr797, i16** %refptr, align 8
  %757 = load i16, i16* %756, align 2
  %conv798 = zext i16 %757 to i32
  %758 = load i16*, i16** %srcptr, align 8
  %incdec.ptr799 = getelementptr inbounds i16, i16* %758, i32 1
  store i16* %incdec.ptr799, i16** %srcptr, align 8
  %759 = load i16, i16* %758, align 2
  %conv800 = zext i16 %759 to i32
  %sub801 = sub nsw i32 %conv798, %conv800
  %idxprom802 = sext i32 %sub801 to i64
  %760 = load i32*, i32** %dist_method, align 8
  %arrayidx803 = getelementptr inbounds i32, i32* %760, i64 %idxprom802
  %761 = load i32, i32* %arrayidx803, align 4
  %762 = load i32, i32* %LineSadBlk2, align 4
  %add804 = add nsw i32 %762, %761
  store i32 %add804, i32* %LineSadBlk2, align 4
  %763 = load i16*, i16** %refptr, align 8
  %incdec.ptr805 = getelementptr inbounds i16, i16* %763, i32 1
  store i16* %incdec.ptr805, i16** %refptr, align 8
  %764 = load i16, i16* %763, align 2
  %conv806 = zext i16 %764 to i32
  %765 = load i16*, i16** %srcptr, align 8
  %incdec.ptr807 = getelementptr inbounds i16, i16* %765, i32 1
  store i16* %incdec.ptr807, i16** %srcptr, align 8
  %766 = load i16, i16* %765, align 2
  %conv808 = zext i16 %766 to i32
  %sub809 = sub nsw i32 %conv806, %conv808
  %idxprom810 = sext i32 %sub809 to i64
  %767 = load i32*, i32** %dist_method, align 8
  %arrayidx811 = getelementptr inbounds i32, i32* %767, i64 %idxprom810
  %768 = load i32, i32* %arrayidx811, align 4
  %769 = load i32, i32* %LineSadBlk2, align 4
  %add812 = add nsw i32 %769, %768
  store i32 %add812, i32* %LineSadBlk2, align 4
  %770 = load i16*, i16** %refptr, align 8
  %incdec.ptr813 = getelementptr inbounds i16, i16* %770, i32 1
  store i16* %incdec.ptr813, i16** %refptr, align 8
  %771 = load i16, i16* %770, align 2
  %conv814 = zext i16 %771 to i32
  %772 = load i16*, i16** %srcptr, align 8
  %incdec.ptr815 = getelementptr inbounds i16, i16* %772, i32 1
  store i16* %incdec.ptr815, i16** %srcptr, align 8
  %773 = load i16, i16* %772, align 2
  %conv816 = zext i16 %773 to i32
  %sub817 = sub nsw i32 %conv814, %conv816
  %idxprom818 = sext i32 %sub817 to i64
  %774 = load i32*, i32** %dist_method, align 8
  %arrayidx819 = getelementptr inbounds i32, i32* %774, i64 %idxprom818
  %775 = load i32, i32* %arrayidx819, align 4
  %776 = load i32, i32* %LineSadBlk3, align 4
  %add820 = add nsw i32 %776, %775
  store i32 %add820, i32* %LineSadBlk3, align 4
  %777 = load i16*, i16** %refptr, align 8
  %incdec.ptr821 = getelementptr inbounds i16, i16* %777, i32 1
  store i16* %incdec.ptr821, i16** %refptr, align 8
  %778 = load i16, i16* %777, align 2
  %conv822 = zext i16 %778 to i32
  %779 = load i16*, i16** %srcptr, align 8
  %incdec.ptr823 = getelementptr inbounds i16, i16* %779, i32 1
  store i16* %incdec.ptr823, i16** %srcptr, align 8
  %780 = load i16, i16* %779, align 2
  %conv824 = zext i16 %780 to i32
  %sub825 = sub nsw i32 %conv822, %conv824
  %idxprom826 = sext i32 %sub825 to i64
  %781 = load i32*, i32** %dist_method, align 8
  %arrayidx827 = getelementptr inbounds i32, i32* %781, i64 %idxprom826
  %782 = load i32, i32* %arrayidx827, align 4
  %783 = load i32, i32* %LineSadBlk3, align 4
  %add828 = add nsw i32 %783, %782
  store i32 %add828, i32* %LineSadBlk3, align 4
  %784 = load i16*, i16** %refptr, align 8
  %incdec.ptr829 = getelementptr inbounds i16, i16* %784, i32 1
  store i16* %incdec.ptr829, i16** %refptr, align 8
  %785 = load i16, i16* %784, align 2
  %conv830 = zext i16 %785 to i32
  %786 = load i16*, i16** %srcptr, align 8
  %incdec.ptr831 = getelementptr inbounds i16, i16* %786, i32 1
  store i16* %incdec.ptr831, i16** %srcptr, align 8
  %787 = load i16, i16* %786, align 2
  %conv832 = zext i16 %787 to i32
  %sub833 = sub nsw i32 %conv830, %conv832
  %idxprom834 = sext i32 %sub833 to i64
  %788 = load i32*, i32** %dist_method, align 8
  %arrayidx835 = getelementptr inbounds i32, i32* %788, i64 %idxprom834
  %789 = load i32, i32* %arrayidx835, align 4
  %790 = load i32, i32* %LineSadBlk3, align 4
  %add836 = add nsw i32 %790, %789
  store i32 %add836, i32* %LineSadBlk3, align 4
  %791 = load i16*, i16** %refptr, align 8
  %incdec.ptr837 = getelementptr inbounds i16, i16* %791, i32 1
  store i16* %incdec.ptr837, i16** %refptr, align 8
  %792 = load i16, i16* %791, align 2
  %conv838 = zext i16 %792 to i32
  %793 = load i16*, i16** %srcptr, align 8
  %incdec.ptr839 = getelementptr inbounds i16, i16* %793, i32 1
  store i16* %incdec.ptr839, i16** %srcptr, align 8
  %794 = load i16, i16* %793, align 2
  %conv840 = zext i16 %794 to i32
  %sub841 = sub nsw i32 %conv838, %conv840
  %idxprom842 = sext i32 %sub841 to i64
  %795 = load i32*, i32** %dist_method, align 8
  %arrayidx843 = getelementptr inbounds i32, i32* %795, i64 %idxprom842
  %796 = load i32, i32* %arrayidx843, align 4
  %797 = load i32, i32* %LineSadBlk3, align 4
  %add844 = add nsw i32 %797, %796
  store i32 %add844, i32* %LineSadBlk3, align 4
  %798 = load i32, i32* @img_padded_size_x, align 4
  %sub845 = sub nsw i32 %798, 16
  %799 = load i16*, i16** %refptr, align 8
  %idx.ext846 = sext i32 %sub845 to i64
  %add.ptr847 = getelementptr inbounds i16, i16* %799, i64 %idx.ext846
  store i16* %add.ptr847, i16** %refptr, align 8
  br label %for.inc.848

for.inc.848:                                      ; preds = %for.body.716
  %800 = load i32, i32* %y, align 4
  %inc849 = add nsw i32 %800, 1
  store i32 %inc849, i32* %y, align 4
  br label %for.cond.713

for.end.850:                                      ; preds = %for.cond.713
  %801 = load i32, i32* %LineSadBlk0, align 4
  %802 = load i32, i32* %pos, align 4
  %idxprom851 = sext i32 %802 to i64
  %803 = load i32, i32* %bindex, align 4
  %inc852 = add nsw i32 %803, 1
  store i32 %inc852, i32* %bindex, align 4
  %idxprom853 = sext i32 %803 to i64
  %804 = load i32**, i32*** %block_sad, align 8
  %arrayidx854 = getelementptr inbounds i32*, i32** %804, i64 %idxprom853
  %805 = load i32*, i32** %arrayidx854, align 8
  %arrayidx855 = getelementptr inbounds i32, i32* %805, i64 %idxprom851
  store i32 %801, i32* %arrayidx855, align 4
  %806 = load i32, i32* %LineSadBlk1, align 4
  %807 = load i32, i32* %pos, align 4
  %idxprom856 = sext i32 %807 to i64
  %808 = load i32, i32* %bindex, align 4
  %inc857 = add nsw i32 %808, 1
  store i32 %inc857, i32* %bindex, align 4
  %idxprom858 = sext i32 %808 to i64
  %809 = load i32**, i32*** %block_sad, align 8
  %arrayidx859 = getelementptr inbounds i32*, i32** %809, i64 %idxprom858
  %810 = load i32*, i32** %arrayidx859, align 8
  %arrayidx860 = getelementptr inbounds i32, i32* %810, i64 %idxprom856
  store i32 %806, i32* %arrayidx860, align 4
  %811 = load i32, i32* %LineSadBlk2, align 4
  %812 = load i32, i32* %pos, align 4
  %idxprom861 = sext i32 %812 to i64
  %813 = load i32, i32* %bindex, align 4
  %inc862 = add nsw i32 %813, 1
  store i32 %inc862, i32* %bindex, align 4
  %idxprom863 = sext i32 %813 to i64
  %814 = load i32**, i32*** %block_sad, align 8
  %arrayidx864 = getelementptr inbounds i32*, i32** %814, i64 %idxprom863
  %815 = load i32*, i32** %arrayidx864, align 8
  %arrayidx865 = getelementptr inbounds i32, i32* %815, i64 %idxprom861
  store i32 %811, i32* %arrayidx865, align 4
  %816 = load i32, i32* %LineSadBlk3, align 4
  %817 = load i32, i32* %pos, align 4
  %idxprom866 = sext i32 %817 to i64
  %818 = load i32, i32* %bindex, align 4
  %inc867 = add nsw i32 %818, 1
  store i32 %inc867, i32* %bindex, align 4
  %idxprom868 = sext i32 %818 to i64
  %819 = load i32**, i32*** %block_sad, align 8
  %arrayidx869 = getelementptr inbounds i32*, i32** %819, i64 %idxprom868
  %820 = load i32*, i32** %arrayidx869, align 8
  %arrayidx870 = getelementptr inbounds i32, i32* %820, i64 %idxprom866
  store i32 %816, i32* %arrayidx870, align 4
  br label %for.inc.871

for.inc.871:                                      ; preds = %for.end.850
  %821 = load i32, i32* %blky, align 4
  %inc872 = add nsw i32 %821, 1
  store i32 %inc872, i32* %blky, align 4
  br label %for.cond.709

for.end.873:                                      ; preds = %for.cond.709
  %822 = load i32, i32* @ChromaMEEnable, align 4
  %tobool874 = icmp ne i32 %822, 0
  br i1 %tobool874, label %if.then.875, label %if.end.995

if.then.875:                                      ; preds = %for.end.873
  store i32 0, i32* %k, align 4
  br label %for.cond.876

for.cond.876:                                     ; preds = %for.inc.992, %if.then.875
  %823 = load i32, i32* %k, align 4
  %cmp877 = icmp slt i32 %823, 2
  br i1 %cmp877, label %for.body.879, label %for.end.994

for.body.879:                                     ; preds = %for.cond.876
  store i32 0, i32* %bindex, align 4
  %824 = load i32, i32* @ref_access_method, align 4
  %idxprom880 = sext i32 %824 to i64
  %arrayidx881 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom880
  %825 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx881, align 8
  %826 = load i32, i32* %k, align 4
  %idxprom882 = sext i32 %826 to i64
  %arrayidx883 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1), i32 0, i64 %idxprom882
  %827 = load i16****, i16***** %arrayidx883, align 8
  %828 = load i32, i32* %abs_y4, align 4
  %829 = load i32, i32* %abs_x4, align 4
  %call884 = call i16* %825(i16**** %827, i32 %828, i32 %829)
  store i16* %call884, i16** %refptr, align 8
  store i32 0, i32* %blky, align 4
  br label %for.cond.885

for.cond.885:                                     ; preds = %for.inc.989, %for.body.879
  %830 = load i32, i32* %blky, align 4
  %cmp886 = icmp slt i32 %830, 4
  br i1 %cmp886, label %for.body.888, label %for.end.991

for.body.888:                                     ; preds = %for.cond.885
  store i32 0, i32* %LineSadBlk3, align 4
  store i32 0, i32* %LineSadBlk2, align 4
  store i32 0, i32* %LineSadBlk1, align 4
  store i32 0, i32* %LineSadBlk0, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.889

for.cond.889:                                     ; preds = %for.inc.962, %for.body.888
  %831 = load i32, i32* %y, align 4
  %832 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y890 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %832, i32 0, i32 163
  %833 = load i32, i32* %mb_cr_size_y890, align 4
  %cmp891 = icmp slt i32 %831, %833
  br i1 %cmp891, label %for.body.893, label %for.end.964

for.body.893:                                     ; preds = %for.cond.889
  store i32 0, i32* %x, align 4
  br label %for.cond.894

for.cond.894:                                     ; preds = %for.inc.907, %for.body.893
  %834 = load i32, i32* %x, align 4
  %835 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x895 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %835, i32 0, i32 162
  %836 = load i32, i32* %mb_cr_size_x895, align 4
  %cmp896 = icmp slt i32 %834, %836
  br i1 %cmp896, label %for.body.898, label %for.end.909

for.body.898:                                     ; preds = %for.cond.894
  %837 = load i16*, i16** %refptr, align 8
  %incdec.ptr899 = getelementptr inbounds i16, i16* %837, i32 1
  store i16* %incdec.ptr899, i16** %refptr, align 8
  %838 = load i16, i16* %837, align 2
  %conv900 = zext i16 %838 to i32
  %839 = load i16*, i16** %srcptr, align 8
  %incdec.ptr901 = getelementptr inbounds i16, i16* %839, i32 1
  store i16* %incdec.ptr901, i16** %srcptr, align 8
  %840 = load i16, i16* %839, align 2
  %conv902 = zext i16 %840 to i32
  %sub903 = sub nsw i32 %conv900, %conv902
  %idxprom904 = sext i32 %sub903 to i64
  %841 = load i32*, i32** %dist_method, align 8
  %arrayidx905 = getelementptr inbounds i32, i32* %841, i64 %idxprom904
  %842 = load i32, i32* %arrayidx905, align 4
  %843 = load i32, i32* %LineSadBlk0, align 4
  %add906 = add nsw i32 %843, %842
  store i32 %add906, i32* %LineSadBlk0, align 4
  br label %for.inc.907

for.inc.907:                                      ; preds = %for.body.898
  %844 = load i32, i32* %x, align 4
  %add908 = add nsw i32 %844, 4
  store i32 %add908, i32* %x, align 4
  br label %for.cond.894

for.end.909:                                      ; preds = %for.cond.894
  store i32 0, i32* %x, align 4
  br label %for.cond.910

for.cond.910:                                     ; preds = %for.inc.923, %for.end.909
  %845 = load i32, i32* %x, align 4
  %846 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x911 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %846, i32 0, i32 162
  %847 = load i32, i32* %mb_cr_size_x911, align 4
  %cmp912 = icmp slt i32 %845, %847
  br i1 %cmp912, label %for.body.914, label %for.end.925

for.body.914:                                     ; preds = %for.cond.910
  %848 = load i16*, i16** %refptr, align 8
  %incdec.ptr915 = getelementptr inbounds i16, i16* %848, i32 1
  store i16* %incdec.ptr915, i16** %refptr, align 8
  %849 = load i16, i16* %848, align 2
  %conv916 = zext i16 %849 to i32
  %850 = load i16*, i16** %srcptr, align 8
  %incdec.ptr917 = getelementptr inbounds i16, i16* %850, i32 1
  store i16* %incdec.ptr917, i16** %srcptr, align 8
  %851 = load i16, i16* %850, align 2
  %conv918 = zext i16 %851 to i32
  %sub919 = sub nsw i32 %conv916, %conv918
  %idxprom920 = sext i32 %sub919 to i64
  %852 = load i32*, i32** %dist_method, align 8
  %arrayidx921 = getelementptr inbounds i32, i32* %852, i64 %idxprom920
  %853 = load i32, i32* %arrayidx921, align 4
  %854 = load i32, i32* %LineSadBlk1, align 4
  %add922 = add nsw i32 %854, %853
  store i32 %add922, i32* %LineSadBlk1, align 4
  br label %for.inc.923

for.inc.923:                                      ; preds = %for.body.914
  %855 = load i32, i32* %x, align 4
  %add924 = add nsw i32 %855, 4
  store i32 %add924, i32* %x, align 4
  br label %for.cond.910

for.end.925:                                      ; preds = %for.cond.910
  store i32 0, i32* %x, align 4
  br label %for.cond.926

for.cond.926:                                     ; preds = %for.inc.939, %for.end.925
  %856 = load i32, i32* %x, align 4
  %857 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x927 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %857, i32 0, i32 162
  %858 = load i32, i32* %mb_cr_size_x927, align 4
  %cmp928 = icmp slt i32 %856, %858
  br i1 %cmp928, label %for.body.930, label %for.end.941

for.body.930:                                     ; preds = %for.cond.926
  %859 = load i16*, i16** %refptr, align 8
  %incdec.ptr931 = getelementptr inbounds i16, i16* %859, i32 1
  store i16* %incdec.ptr931, i16** %refptr, align 8
  %860 = load i16, i16* %859, align 2
  %conv932 = zext i16 %860 to i32
  %861 = load i16*, i16** %srcptr, align 8
  %incdec.ptr933 = getelementptr inbounds i16, i16* %861, i32 1
  store i16* %incdec.ptr933, i16** %srcptr, align 8
  %862 = load i16, i16* %861, align 2
  %conv934 = zext i16 %862 to i32
  %sub935 = sub nsw i32 %conv932, %conv934
  %idxprom936 = sext i32 %sub935 to i64
  %863 = load i32*, i32** %dist_method, align 8
  %arrayidx937 = getelementptr inbounds i32, i32* %863, i64 %idxprom936
  %864 = load i32, i32* %arrayidx937, align 4
  %865 = load i32, i32* %LineSadBlk2, align 4
  %add938 = add nsw i32 %865, %864
  store i32 %add938, i32* %LineSadBlk2, align 4
  br label %for.inc.939

for.inc.939:                                      ; preds = %for.body.930
  %866 = load i32, i32* %x, align 4
  %add940 = add nsw i32 %866, 4
  store i32 %add940, i32* %x, align 4
  br label %for.cond.926

for.end.941:                                      ; preds = %for.cond.926
  store i32 0, i32* %x, align 4
  br label %for.cond.942

for.cond.942:                                     ; preds = %for.inc.955, %for.end.941
  %867 = load i32, i32* %x, align 4
  %868 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x943 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %868, i32 0, i32 162
  %869 = load i32, i32* %mb_cr_size_x943, align 4
  %cmp944 = icmp slt i32 %867, %869
  br i1 %cmp944, label %for.body.946, label %for.end.957

for.body.946:                                     ; preds = %for.cond.942
  %870 = load i16*, i16** %refptr, align 8
  %incdec.ptr947 = getelementptr inbounds i16, i16* %870, i32 1
  store i16* %incdec.ptr947, i16** %refptr, align 8
  %871 = load i16, i16* %870, align 2
  %conv948 = zext i16 %871 to i32
  %872 = load i16*, i16** %srcptr, align 8
  %incdec.ptr949 = getelementptr inbounds i16, i16* %872, i32 1
  store i16* %incdec.ptr949, i16** %srcptr, align 8
  %873 = load i16, i16* %872, align 2
  %conv950 = zext i16 %873 to i32
  %sub951 = sub nsw i32 %conv948, %conv950
  %idxprom952 = sext i32 %sub951 to i64
  %874 = load i32*, i32** %dist_method, align 8
  %arrayidx953 = getelementptr inbounds i32, i32* %874, i64 %idxprom952
  %875 = load i32, i32* %arrayidx953, align 4
  %876 = load i32, i32* %LineSadBlk3, align 4
  %add954 = add nsw i32 %876, %875
  store i32 %add954, i32* %LineSadBlk3, align 4
  br label %for.inc.955

for.inc.955:                                      ; preds = %for.body.946
  %877 = load i32, i32* %x, align 4
  %add956 = add nsw i32 %877, 4
  store i32 %add956, i32* %x, align 4
  br label %for.cond.942

for.end.957:                                      ; preds = %for.cond.942
  %878 = load i32, i32* @img_cr_padded_size_x, align 4
  %879 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x958 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %879, i32 0, i32 162
  %880 = load i32, i32* %mb_cr_size_x958, align 4
  %sub959 = sub nsw i32 %878, %880
  %881 = load i16*, i16** %refptr, align 8
  %idx.ext960 = sext i32 %sub959 to i64
  %add.ptr961 = getelementptr inbounds i16, i16* %881, i64 %idx.ext960
  store i16* %add.ptr961, i16** %refptr, align 8
  br label %for.inc.962

for.inc.962:                                      ; preds = %for.end.957
  %882 = load i32, i32* %y, align 4
  %add963 = add nsw i32 %882, 4
  store i32 %add963, i32* %y, align 4
  br label %for.cond.889

for.end.964:                                      ; preds = %for.cond.889
  %883 = load i32, i32* %LineSadBlk0, align 4
  %884 = load i32, i32* %pos, align 4
  %idxprom965 = sext i32 %884 to i64
  %885 = load i32, i32* %bindex, align 4
  %inc966 = add nsw i32 %885, 1
  store i32 %inc966, i32* %bindex, align 4
  %idxprom967 = sext i32 %885 to i64
  %886 = load i32**, i32*** %block_sad, align 8
  %arrayidx968 = getelementptr inbounds i32*, i32** %886, i64 %idxprom967
  %887 = load i32*, i32** %arrayidx968, align 8
  %arrayidx969 = getelementptr inbounds i32, i32* %887, i64 %idxprom965
  %888 = load i32, i32* %arrayidx969, align 4
  %add970 = add nsw i32 %888, %883
  store i32 %add970, i32* %arrayidx969, align 4
  %889 = load i32, i32* %LineSadBlk1, align 4
  %890 = load i32, i32* %pos, align 4
  %idxprom971 = sext i32 %890 to i64
  %891 = load i32, i32* %bindex, align 4
  %inc972 = add nsw i32 %891, 1
  store i32 %inc972, i32* %bindex, align 4
  %idxprom973 = sext i32 %891 to i64
  %892 = load i32**, i32*** %block_sad, align 8
  %arrayidx974 = getelementptr inbounds i32*, i32** %892, i64 %idxprom973
  %893 = load i32*, i32** %arrayidx974, align 8
  %arrayidx975 = getelementptr inbounds i32, i32* %893, i64 %idxprom971
  %894 = load i32, i32* %arrayidx975, align 4
  %add976 = add nsw i32 %894, %889
  store i32 %add976, i32* %arrayidx975, align 4
  %895 = load i32, i32* %LineSadBlk2, align 4
  %896 = load i32, i32* %pos, align 4
  %idxprom977 = sext i32 %896 to i64
  %897 = load i32, i32* %bindex, align 4
  %inc978 = add nsw i32 %897, 1
  store i32 %inc978, i32* %bindex, align 4
  %idxprom979 = sext i32 %897 to i64
  %898 = load i32**, i32*** %block_sad, align 8
  %arrayidx980 = getelementptr inbounds i32*, i32** %898, i64 %idxprom979
  %899 = load i32*, i32** %arrayidx980, align 8
  %arrayidx981 = getelementptr inbounds i32, i32* %899, i64 %idxprom977
  %900 = load i32, i32* %arrayidx981, align 4
  %add982 = add nsw i32 %900, %895
  store i32 %add982, i32* %arrayidx981, align 4
  %901 = load i32, i32* %LineSadBlk3, align 4
  %902 = load i32, i32* %pos, align 4
  %idxprom983 = sext i32 %902 to i64
  %903 = load i32, i32* %bindex, align 4
  %inc984 = add nsw i32 %903, 1
  store i32 %inc984, i32* %bindex, align 4
  %idxprom985 = sext i32 %903 to i64
  %904 = load i32**, i32*** %block_sad, align 8
  %arrayidx986 = getelementptr inbounds i32*, i32** %904, i64 %idxprom985
  %905 = load i32*, i32** %arrayidx986, align 8
  %arrayidx987 = getelementptr inbounds i32, i32* %905, i64 %idxprom983
  %906 = load i32, i32* %arrayidx987, align 4
  %add988 = add nsw i32 %906, %901
  store i32 %add988, i32* %arrayidx987, align 4
  br label %for.inc.989

for.inc.989:                                      ; preds = %for.end.964
  %907 = load i32, i32* %blky, align 4
  %inc990 = add nsw i32 %907, 1
  store i32 %inc990, i32* %blky, align 4
  br label %for.cond.885

for.end.991:                                      ; preds = %for.cond.885
  br label %for.inc.992

for.inc.992:                                      ; preds = %for.end.991
  %908 = load i32, i32* %k, align 4
  %inc993 = add nsw i32 %908, 1
  store i32 %inc993, i32* %k, align 4
  br label %for.cond.876

for.end.994:                                      ; preds = %for.cond.876
  br label %if.end.995

if.end.995:                                       ; preds = %for.end.994, %for.end.873
  br label %if.end.996

if.end.996:                                       ; preds = %if.end.995, %if.end.704
  br label %for.inc.997

for.inc.997:                                      ; preds = %if.end.996
  %909 = load i32, i32* %pos, align 4
  %inc998 = add nsw i32 %909, 1
  store i32 %inc998, i32* %pos, align 4
  br label %for.cond.249

for.end.999:                                      ; preds = %for.cond.249
  %910 = load i32, i32* %list.addr, align 4
  %911 = load i16, i16* %ref.addr, align 2
  %conv1000 = sext i16 %911 to i32
  %912 = load i32, i32* %max_pos, align 4
  call void @SetupLargerBlocks(i32 %910, i32 %conv1000, i32 %912)
  %913 = load i16, i16* %ref.addr, align 2
  %idxprom1001 = sext i16 %913 to i64
  %914 = load i32, i32* %list.addr, align 4
  %idxprom1002 = sext i32 %914 to i64
  %915 = load i32**, i32*** @search_setup_done, align 8
  %arrayidx1003 = getelementptr inbounds i32*, i32** %915, i64 %idxprom1002
  %916 = load i32*, i32** %arrayidx1003, align 8
  %arrayidx1004 = getelementptr inbounds i32, i32* %916, i64 %idxprom1001
  store i32 1, i32* %arrayidx1004, align 4
  ret void
}

declare void @SetMotionVectorPredictor(i16*, i8**, i16***, i16 signext, i32, i32, i32, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #4 {
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip1(i32 %high, i32 %x) #4 {
entry:
  %high.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %call = call i32 @imax(i32 %0, i32 0)
  store i32 %call, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %high.addr, align 4
  %call1 = call i32 @imin(i32 %1, i32 %2)
  store i32 %call1, i32* %x.addr, align 4
  %3 = load i32, i32* %x.addr, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @FastFullPelBlockMotionSearch(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i32 %search_range, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %orig_pic.addr = alloca i16*, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv_x.addr = alloca i16, align 2
  %pred_mv_y.addr = alloca i16, align 2
  %mv_x.addr = alloca i16*, align 8
  %mv_y.addr = alloca i16*, align 8
  %search_range.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda_factor.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %cand_x = alloca i32, align 4
  %cand_y = alloca i32, align 4
  %mcost = alloca i32, align 4
  %max_pos = alloca i32, align 4
  %best_pos = alloca i32, align 4
  %block_index = alloca i32, align 4
  %block_sad = alloca i32*, align 8
  store i16* %orig_pic, i16** %orig_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16 %pred_mv_x, i16* %pred_mv_x.addr, align 2
  store i16 %pred_mv_y, i16* %pred_mv_y.addr, align 2
  store i16* %mv_x, i16** %mv_x.addr, align 8
  store i16* %mv_y, i16** %mv_y.addr, align 8
  store i32 %search_range, i32* %search_range.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
  %0 = load i32, i32* %search_range.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %1 = load i32, i32* %search_range.addr, align 4
  %mul1 = mul nsw i32 2, %1
  %add2 = add nsw i32 %mul1, 1
  %mul3 = mul nsw i32 %add, %add2
  store i32 %mul3, i32* %max_pos, align 4
  store i32 0, i32* %best_pos, align 4
  %2 = load i32, i32* %pic_pix_y.addr, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 44
  %4 = load i32, i32* %opix_y, align 4
  %sub = sub nsw i32 %2, %4
  %5 = load i32, i32* %pic_pix_x.addr, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 43
  %7 = load i32, i32* %opix_x, align 4
  %sub4 = sub nsw i32 %5, %7
  %shr = ashr i32 %sub4, 2
  %add5 = add nsw i32 %sub, %shr
  store i32 %add5, i32* %block_index, align 4
  %8 = load i32, i32* %block_index, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %blocktype.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i16, i16* %ref.addr, align 2
  %idxprom7 = sext i16 %10 to i64
  %11 = load i32, i32* %list.addr, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32*****, i32****** @BlockSAD, align 8
  %arrayidx = getelementptr inbounds i32****, i32***** %12, i64 %idxprom8
  %13 = load i32****, i32***** %arrayidx, align 8
  %arrayidx9 = getelementptr inbounds i32***, i32**** %13, i64 %idxprom7
  %14 = load i32***, i32**** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32**, i32*** %14, i64 %idxprom6
  %15 = load i32**, i32*** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %15, i64 %idxprom
  %16 = load i32*, i32** %arrayidx11, align 8
  store i32* %16, i32** %block_sad, align 8
  %17 = load i16, i16* %ref.addr, align 2
  %idxprom12 = sext i16 %17 to i64
  %18 = load i32, i32* %list.addr, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load i32**, i32*** @search_setup_done, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %19, i64 %idxprom13
  %20 = load i32*, i32** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom12
  %21 = load i32, i32* %arrayidx15, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %22 = load i16, i16* %ref.addr, align 2
  %23 = load i32, i32* %list.addr, align 4
  call void @SetupFastFullPelSearch(i16 signext %22, i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i16, i16* %ref.addr, align 2
  %idxprom16 = sext i16 %24 to i64
  %25 = load i32, i32* %list.addr, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load i32**, i32*** @search_center_x, align 8
  %arrayidx18 = getelementptr inbounds i32*, i32** %26, i64 %idxprom17
  %27 = load i32*, i32** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %27, i64 %idxprom16
  %28 = load i32, i32* %arrayidx19, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 43
  %30 = load i32, i32* %opix_x20, align 4
  %sub21 = sub nsw i32 %28, %30
  store i32 %sub21, i32* %offset_x, align 4
  %31 = load i16, i16* %ref.addr, align 2
  %idxprom22 = sext i16 %31 to i64
  %32 = load i32, i32* %list.addr, align 4
  %idxprom23 = sext i32 %32 to i64
  %33 = load i32**, i32*** @search_center_y, align 8
  %arrayidx24 = getelementptr inbounds i32*, i32** %33, i64 %idxprom23
  %34 = load i32*, i32** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %34, i64 %idxprom22
  %35 = load i32, i32* %arrayidx25, align 4
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 44
  %37 = load i32, i32* %opix_y26, align 4
  %sub27 = sub nsw i32 %35, %37
  store i32 %sub27, i32* %offset_y, align 4
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 113
  %39 = load i32, i32* %rdopt, align 4
  %tobool28 = icmp ne i32 %39, 0
  br i1 %tobool28, label %if.end.54, label %if.then.29

if.then.29:                                       ; preds = %if.end
  %40 = load i16, i16* %ref.addr, align 2
  %idxprom30 = sext i16 %40 to i64
  %41 = load i32, i32* %list.addr, align 4
  %idxprom31 = sext i32 %41 to i64
  %42 = load i32**, i32*** @pos_00, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %42, i64 %idxprom31
  %43 = load i32*, i32** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %43, i64 %idxprom30
  %44 = load i32, i32* %arrayidx33, align 4
  %idxprom34 = sext i32 %44 to i64
  %45 = load i32*, i32** %block_sad, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %45, i64 %idxprom34
  %46 = load i32, i32* %arrayidx35, align 4
  %47 = load i32, i32* %lambda_factor.addr, align 4
  %48 = load i16, i16* %pred_mv_x.addr, align 2
  %conv = sext i16 %48 to i32
  %sub36 = sub nsw i32 0, %conv
  %idxprom37 = sext i32 %sub36 to i64
  %49 = load i32*, i32** @mvbits, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %49, i64 %idxprom37
  %50 = load i32, i32* %arrayidx38, align 4
  %51 = load i16, i16* %pred_mv_y.addr, align 2
  %conv39 = sext i16 %51 to i32
  %sub40 = sub nsw i32 0, %conv39
  %idxprom41 = sext i32 %sub40 to i64
  %52 = load i32*, i32** @mvbits, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %52, i64 %idxprom41
  %53 = load i32, i32* %arrayidx42, align 4
  %add43 = add nsw i32 %50, %53
  %mul44 = mul nsw i32 %47, %add43
  %shr45 = ashr i32 %mul44, 16
  %add46 = add nsw i32 %46, %shr45
  store i32 %add46, i32* %mcost, align 4
  %54 = load i32, i32* %mcost, align 4
  %55 = load i32, i32* %min_mcost.addr, align 4
  %cmp = icmp slt i32 %54, %55
  br i1 %cmp, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.then.29
  %56 = load i32, i32* %mcost, align 4
  store i32 %56, i32* %min_mcost.addr, align 4
  %57 = load i16, i16* %ref.addr, align 2
  %idxprom49 = sext i16 %57 to i64
  %58 = load i32, i32* %list.addr, align 4
  %idxprom50 = sext i32 %58 to i64
  %59 = load i32**, i32*** @pos_00, align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %59, i64 %idxprom50
  %60 = load i32*, i32** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %60, i64 %idxprom49
  %61 = load i32, i32* %arrayidx52, align 4
  store i32 %61, i32* %best_pos, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %if.then.29
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.54
  %62 = load i32, i32* %pos, align 4
  %63 = load i32, i32* %max_pos, align 4
  %cmp55 = icmp slt i32 %62, %63
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i32*, i32** %block_sad, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %min_mcost.addr, align 4
  %cmp57 = icmp slt i32 %65, %66
  br i1 %cmp57, label %if.then.59, label %if.end.85

if.then.59:                                       ; preds = %for.body
  %67 = load i32, i32* %offset_x, align 4
  %68 = load i32, i32* %pos, align 4
  %idxprom60 = sext i32 %68 to i64
  %69 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %69, i64 %idxprom60
  %70 = load i16, i16* %arrayidx61, align 2
  %conv62 = sext i16 %70 to i32
  %add63 = add nsw i32 %67, %conv62
  %shl = shl i32 %add63, 2
  store i32 %shl, i32* %cand_x, align 4
  %71 = load i32, i32* %offset_y, align 4
  %72 = load i32, i32* %pos, align 4
  %idxprom64 = sext i32 %72 to i64
  %73 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %73, i64 %idxprom64
  %74 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %74 to i32
  %add67 = add nsw i32 %71, %conv66
  %shl68 = shl i32 %add67, 2
  store i32 %shl68, i32* %cand_y, align 4
  %75 = load i32*, i32** %block_sad, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %mcost, align 4
  %77 = load i32, i32* %lambda_factor.addr, align 4
  %78 = load i32, i32* %cand_x, align 4
  %79 = load i16, i16* %pred_mv_x.addr, align 2
  %conv69 = sext i16 %79 to i32
  %sub70 = sub nsw i32 %78, %conv69
  %idxprom71 = sext i32 %sub70 to i64
  %80 = load i32*, i32** @mvbits, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %80, i64 %idxprom71
  %81 = load i32, i32* %arrayidx72, align 4
  %82 = load i32, i32* %cand_y, align 4
  %83 = load i16, i16* %pred_mv_y.addr, align 2
  %conv73 = sext i16 %83 to i32
  %sub74 = sub nsw i32 %82, %conv73
  %idxprom75 = sext i32 %sub74 to i64
  %84 = load i32*, i32** @mvbits, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %84, i64 %idxprom75
  %85 = load i32, i32* %arrayidx76, align 4
  %add77 = add nsw i32 %81, %85
  %mul78 = mul nsw i32 %77, %add77
  %shr79 = ashr i32 %mul78, 16
  %86 = load i32, i32* %mcost, align 4
  %add80 = add nsw i32 %86, %shr79
  store i32 %add80, i32* %mcost, align 4
  %87 = load i32, i32* %mcost, align 4
  %88 = load i32, i32* %min_mcost.addr, align 4
  %cmp81 = icmp slt i32 %87, %88
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.59
  %89 = load i32, i32* %mcost, align 4
  store i32 %89, i32* %min_mcost.addr, align 4
  %90 = load i32, i32* %pos, align 4
  store i32 %90, i32* %best_pos, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.then.59
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %91 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %pos, align 4
  %92 = load i32*, i32** %block_sad, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %incdec.ptr, i32** %block_sad, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %93 = load i32, i32* %offset_x, align 4
  %94 = load i32, i32* %best_pos, align 4
  %idxprom86 = sext i32 %94 to i64
  %95 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx87 = getelementptr inbounds i16, i16* %95, i64 %idxprom86
  %96 = load i16, i16* %arrayidx87, align 2
  %conv88 = sext i16 %96 to i32
  %add89 = add nsw i32 %93, %conv88
  %conv90 = trunc i32 %add89 to i16
  %97 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv90, i16* %97, align 2
  %98 = load i32, i32* %offset_y, align 4
  %99 = load i32, i32* %best_pos, align 4
  %idxprom91 = sext i32 %99 to i64
  %100 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx92 = getelementptr inbounds i16, i16* %100, i64 %idxprom91
  %101 = load i16, i16* %arrayidx92, align 2
  %conv93 = sext i16 %101 to i32
  %add94 = add nsw i32 %98, %conv93
  %conv95 = trunc i32 %add94 to i16
  %102 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv95, i16* %102, align 2
  %103 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %103
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #4 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #4 {
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
