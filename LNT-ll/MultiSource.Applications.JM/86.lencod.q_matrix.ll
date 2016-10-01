; ModuleID = './MultiSource.Applications.JM/86.lencod.q_matrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@matrix4x4_check = global [6 x i32] zeroinitializer, align 16
@matrix8x8_check = global [2 x i32] zeroinitializer, align 4
@MatrixType4x4 = internal constant [6 x [20 x i8]] [[20 x i8] c"INTRA4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAV\00\00\00\00", [20 x i8] c"INTER4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAV\00\00\00\00"], align 16
@MatrixType8x8 = internal constant [2 x [20 x i8]] [[20 x i8] c"INTRA8X8_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER8X8_LUMA\00\00\00\00\00\00\00"], align 16
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@ScalingList4x4input = common global [6 x [16 x i16]] zeroinitializer, align 16
@ScalingList8x8input = common global [2 x [64 x i16]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@input = external global %struct.InputParameters*, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"\0A%s value exceed range. (Value must be 1 to 255)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Setting default values for this matrix.\00", align 1
@Quant_inter_default = internal constant [16 x i16] [i16 10, i16 14, i16 20, i16 24, i16 14, i16 20, i16 24, i16 27, i16 20, i16 24, i16 27, i16 30, i16 24, i16 27, i16 30, i16 34], align 16
@Quant_intra_default = internal constant [16 x i16] [i16 6, i16 13, i16 20, i16 28, i16 13, i16 20, i16 28, i16 32, i16 20, i16 28, i16 32, i16 37, i16 28, i16 32, i16 37, i16 42], align 16
@.str.8 = private unnamed_addr constant [57 x i8] c"\0A%s matrix definition not found. Setting default values.\00", align 1
@Quant8_inter_default = internal constant [64 x i16] [i16 9, i16 13, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 13, i16 13, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 35], align 16
@Quant8_intra_default = internal constant [64 x i16] [i16 6, i16 10, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 10, i16 11, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 42], align 16
@qp_per_matrix = common global i32* null, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"init_global_buffers: qp_per_matrix\00", align 1
@qp_rem_matrix = common global i32* null, align 8
@LevelScale4x4Luma = common global i32**** null, align 8
@LevelScale4x4Chroma = common global i32***** null, align 8
@LevelScale8x8Luma = common global i32**** null, align 8
@InvLevelScale4x4Luma = common global i32**** null, align 8
@InvLevelScale4x4Chroma = common global i32***** null, align 8
@InvLevelScale8x8Luma = common global i32**** null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"Parsing QMatrix file %s \00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UseDefaultScalingMatrix4x4Flag = common global [6 x i16] zeroinitializer, align 2
@UseDefaultScalingMatrix8x8Flag = common global [2 x i16] zeroinitializer, align 2
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@quant_coef = external constant [6 x [4 x [4 x i32]]], align 16
@dequant_coef = external constant [6 x [4 x [4 x i32]]], align 16
@ScalingList4x4 = common global [6 x [16 x i16]] zeroinitializer, align 16
@quant_coef8 = external constant [6 x [8 x [8 x i32]]], align 16
@dequant_coef8 = external constant [6 x [8 x [8 x i32]]], align 16
@ScalingList8x8 = common global [2 x [64 x i16]] zeroinitializer, align 16
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

; Function Attrs: nounwind uwtable
define i32 @CheckParameterName(i8* %s, i32* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %type.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32* %type, i32** %type.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i32*, i32** %type.addr, align 8
  store i32 0, i32* %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx, i32 0, i32 0
  %cmp = icmp ne i8* %arraydecay, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i32 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx3, i32 0, i32 0
  %5 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* %arraydecay4, i8* %5) #5
  %cmp5 = icmp eq i32 0, %call
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* %i, align 4
  %8 = load i32*, i32** %type.addr, align 8
  store i32 1, i32* %8, align 4
  br label %while.cond.6

while.cond.6:                                     ; preds = %if.end.23, %while.end
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i32 0, i64 %idxprom7
  %arraydecay9 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx8, i32 0, i32 0
  %cmp10 = icmp ne i8* %arraydecay9, null
  br i1 %cmp10, label %land.rhs.11, label %land.end.13

land.rhs.11:                                      ; preds = %while.cond.6
  %10 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %10, 2
  br label %land.end.13

land.end.13:                                      ; preds = %land.rhs.11, %while.cond.6
  %11 = phi i1 [ false, %while.cond.6 ], [ %cmp12, %land.rhs.11 ]
  br i1 %11, label %while.body.14, label %while.end.24

while.body.14:                                    ; preds = %land.end.13
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i32 0, i64 %idxprom15
  %arraydecay17 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx16, i32 0, i32 0
  %13 = load i8*, i8** %s.addr, align 8
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* %13) #5
  %cmp19 = icmp eq i32 0, %call18
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %while.body.14
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %retval
  br label %return

if.else.21:                                       ; preds = %while.body.14
  %15 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %15, 1
  store i32 %inc22, i32* %i, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21
  br label %while.cond.6

while.end.24:                                     ; preds = %land.end.13
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.24, %if.then.20, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @ParseMatrix(i8* %buf, i32 %bufsize) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %items = alloca [1000 x i8*], align 16
  %MapIdx = alloca i32, align 4
  %item = alloca i32, align 4
  %InString = alloca i32, align 4
  %InItem = alloca i32, align 4
  %p = alloca i8*, align 8
  %bufend = alloca i8*, align 8
  %IntContent = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %range = alloca i32, align 4
  %type = alloca i32, align 4
  %cnt = alloca i32, align 4
  %ScalingList = alloca i16*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 0, i32* %item, align 4
  store i32 0, i32* %InString, align 4
  store i32 0, i32* %InItem, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i32, i32* %bufsize.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8* %arrayidx, i8** %bufend, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8*, i8** %bufend, align 8
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %while.body, label %while.end.34

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 35, label %sw.bb.1
    i32 10, label %sw.bb.10
    i32 32, label %sw.bb.12
    i32 9, label %sw.bb.12
    i32 34, label %sw.bb.15
    i32 44, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %8 = load i8*, i8** %p, align 8
  store i8 0, i8* %8, align 1
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.8, %sw.bb.1
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp ne i32 %conv3, 10
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.2
  %11 = load i8*, i8** %p, align 8
  %12 = load i8*, i8** %bufend, align 8
  %cmp6 = icmp ult i8* %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.2
  %13 = phi i1 [ false, %while.cond.2 ], [ %cmp6, %land.rhs ]
  br i1 %13, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %land.end
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8
  br label %while.cond.2

while.end:                                        ; preds = %land.end
  store i32 0, i32* %InString, align 4
  store i32 0, i32* %InItem, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  store i32 0, i32* %InItem, align 4
  store i32 0, i32* %InString, align 4
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  store i8 0, i8* %15, align 1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body, %while.body
  %16 = load i32, i32* %InString, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.12
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.12
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr14, i8** %p, align 8
  store i8 0, i8* %18, align 1
  store i32 0, i32* %InItem, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %InString, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %if.else.21, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.15
  %21 = load i8*, i8** %p, align 8
  %22 = load i32, i32* %item, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %item, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom19
  store i8* %21, i8** %arrayidx20, align 8
  %23 = load i32, i32* %InItem, align 4
  %neg = xor i32 %23, -1
  store i32 %neg, i32* %InItem, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %sw.bb.15
  store i32 0, i32* %InItem, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.18
  %24 = load i32, i32* %InString, align 4
  %neg23 = xor i32 %24, -1
  store i32 %neg23, i32* %InString, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %while.body
  %25 = load i8*, i8** %p, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr25, i8** %p, align 8
  store i32 0, i32* %InItem, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %26 = load i32, i32* %InItem, align 4
  %tobool26 = icmp ne i32 %26, 0
  br i1 %tobool26, label %if.end.32, label %if.then.27

if.then.27:                                       ; preds = %sw.default
  %27 = load i8*, i8** %p, align 8
  %28 = load i32, i32* %item, align 4
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, i32* %item, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom29
  store i8* %27, i8** %arrayidx30, align 8
  %29 = load i32, i32* %InItem, align 4
  %neg31 = xor i32 %29, -1
  store i32 %neg31, i32* %InItem, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %sw.default
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr33, i8** %p, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.32, %sw.bb.24, %if.end.22, %if.end, %sw.bb.10, %while.end, %sw.bb
  br label %while.cond

while.end.34:                                     ; preds = %while.cond
  %31 = load i32, i32* %item, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %item, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %while.end.34
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %item, align 4
  %cmp35 = icmp slt i32 %32, %33
  br i1 %cmp35, label %for.body, label %for.end.98

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %cnt, align 4
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %cnt, align 4
  %add = add nsw i32 %34, %35
  %idxprom37 = sext i32 %add to i64
  %arrayidx38 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom37
  %36 = load i8*, i8** %arrayidx38, align 8
  %call = call i32 @CheckParameterName(i8* %36, i32* %type)
  store i32 %call, i32* %MapIdx, align 4
  %cmp39 = icmp sgt i32 0, %call
  br i1 %cmp39, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %cnt, align 4
  %add42 = add nsw i32 %37, %38
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom43
  %39 = load i8*, i8** %arrayidx44, align 8
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i32 0, i32 0), i8* %39) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %for.body
  %40 = load i32, i32* %cnt, align 4
  %inc47 = add nsw i32 %40, 1
  store i32 %inc47, i32* %cnt, align 4
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %cnt, align 4
  %add48 = add nsw i32 %41, %42
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom49
  %43 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %43) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.46
  %call54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.46
  %44 = load i32, i32* %cnt, align 4
  %inc56 = add nsw i32 %44, 1
  store i32 %inc56, i32* %cnt, align 4
  %45 = load i32, i32* %type, align 4
  %tobool57 = icmp ne i32 %45, 0
  br i1 %tobool57, label %if.else.63, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  store i32 16, i32* %range, align 4
  %46 = load i32, i32* %MapIdx, align 4
  %idxprom59 = sext i32 %46 to i64
  %arrayidx60 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4input, i32 0, i64 %idxprom59
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx60, i32 0, i32 0
  store i16* %arraydecay, i16** %ScalingList, align 8
  %47 = load i32, i32* %MapIdx, align 4
  %idxprom61 = sext i32 %47 to i64
  %arrayidx62 = getelementptr inbounds [6 x i32], [6 x i32]* @matrix4x4_check, i32 0, i64 %idxprom61
  store i32 1, i32* %arrayidx62, align 4
  br label %if.end.69

if.else.63:                                       ; preds = %if.end.55
  store i32 64, i32* %range, align 4
  %48 = load i32, i32* %MapIdx, align 4
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8input, i32 0, i64 %idxprom64
  %arraydecay66 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx65, i32 0, i32 0
  store i16* %arraydecay66, i16** %ScalingList, align 8
  %49 = load i32, i32* %MapIdx, align 4
  %idxprom67 = sext i32 %49 to i64
  %arrayidx68 = getelementptr inbounds [2 x i32], [2 x i32]* @matrix8x8_check, i32 0, i64 %idxprom67
  store i32 1, i32* %arrayidx68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.63, %if.then.58
  store i32 0, i32* %j, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %if.end.69
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %range, align 4
  %cmp71 = icmp slt i32 %50, %51
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %cnt, align 4
  %add74 = add nsw i32 %52, %53
  %54 = load i32, i32* %j, align 4
  %add75 = add nsw i32 %add74, %54
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom76
  %55 = load i8*, i8** %arrayidx77, align 8
  %call78 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %IntContent) #4
  %cmp79 = icmp ne i32 1, %call78
  br i1 %cmp79, label %if.then.81, label %if.end.89

if.then.81:                                       ; preds = %for.body.73
  %56 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %56 to i64
  %arrayidx83 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom82
  %57 = load i8*, i8** %arrayidx83, align 8
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %cnt, align 4
  %add84 = add nsw i32 %58, %59
  %60 = load i32, i32* %j, align 4
  %add85 = add nsw i32 %add84, %60
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom86
  %61 = load i8*, i8** %arrayidx87, align 8
  %call88 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i32 0, i32 0), i8* %57, i8* %61) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.81, %for.body.73
  %62 = load i32, i32* %IntContent, align 4
  %conv90 = trunc i32 %62 to i16
  %63 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %63 to i64
  %64 = load i16*, i16** %ScalingList, align 8
  %arrayidx92 = getelementptr inbounds i16, i16* %64, i64 %idxprom91
  store i16 %conv90, i16* %arrayidx92, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.89
  %65 = load i32, i32* %j, align 4
  %inc93 = add nsw i32 %65, 1
  store i32 %inc93, i32* %j, align 4
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %cnt, align 4
  %add94 = add nsw i32 %67, %66
  store i32 %add94, i32* %cnt, align 4
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end
  %68 = load i32, i32* %cnt, align 4
  %69 = load i32, i32* %i, align 4
  %add97 = add nsw i32 %69, %68
  store i32 %add97, i32* %i, align 4
  br label %for.cond

for.end.98:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @PatchMatrix() #0 {
entry:
  %ScalingList = alloca i16*, align 8
  %i = alloca i32, align 4
  %cnt = alloca i32, align 4
  %fail = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.102, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingListPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 168
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %ScalingListPresentFlag, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.42

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4input, i32 0, i64 %idxprom1
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx2, i32 0, i32 0
  store i16* %arraydecay, i16** %ScalingList, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [6 x i32], [6 x i32]* @matrix4x4_check, i32 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then.6, label %if.else.31

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %fail, align 4
  store i32 0, i32* %cnt, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.then.6
  %7 = load i32, i32* %cnt, align 4
  %cmp8 = icmp slt i32 %7, 16
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %8 = load i32, i32* %cnt, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load i16*, i16** %ScalingList, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %9, i64 %idxprom10
  %10 = load i16, i16* %arrayidx11, align 2
  %conv = sext i16 %10 to i32
  %cmp12 = icmp slt i32 %conv, 0
  br i1 %cmp12, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.9
  %11 = load i32, i32* %cnt, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load i16*, i16** %ScalingList, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %12, i64 %idxprom14
  %13 = load i16, i16* %arrayidx15, align 2
  %conv16 = sext i16 %13 to i32
  %cmp17 = icmp sgt i32 %conv16, 255
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %lor.lhs.false, %for.body.9
  store i32 1, i32* %fail, align 4
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond.7

for.end:                                          ; preds = %if.then.19, %for.cond.7
  %15 = load i32, i32* %fail, align 4
  %tobool20 = icmp ne i32 %15, 0
  br i1 %tobool20, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i32 0, i64 %idxprom22
  %arraydecay24 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx23, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay24)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  %17 = load i32, i32* %i, align 4
  %cmp26 = icmp sgt i32 %17, 2
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.21
  %18 = load i16*, i16** %ScalingList, align 8
  %19 = bitcast i16* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i32 2, i1 false)
  br label %if.end.29

if.else:                                          ; preds = %if.then.21
  %20 = load i16*, i16** %ScalingList, align 8
  %21 = bitcast i16* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i32 2, i1 false)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %for.end
  br label %if.end.41

if.else.31:                                       ; preds = %if.then
  %22 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i32 0, i64 %idxprom32
  %arraydecay34 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx33, i32 0, i32 0
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay34)
  %23 = load i32, i32* %i, align 4
  %cmp36 = icmp sgt i32 %23, 2
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.31
  %24 = load i16*, i16** %ScalingList, align 8
  %25 = bitcast i16* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i32 2, i1 false)
  br label %if.end.40

if.else.39:                                       ; preds = %if.else.31
  %26 = load i16*, i16** %ScalingList, align 8
  %27 = bitcast i16* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i32 2, i1 false)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.30
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %for.body
  %28 = load i32, i32* %i, align 4
  %cmp43 = icmp slt i32 %28, 2
  br i1 %cmp43, label %land.lhs.true, label %if.end.101

land.lhs.true:                                    ; preds = %if.end.42
  %29 = load i32, i32* %i, align 4
  %add = add nsw i32 %29, 6
  %idxprom45 = sext i32 %add to i64
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingListPresentFlag46 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 168
  %arrayidx47 = getelementptr inbounds [8 x i32], [8 x i32]* %ScalingListPresentFlag46, i32 0, i64 %idxprom45
  %31 = load i32, i32* %arrayidx47, align 4
  %tobool48 = icmp ne i32 %31, 0
  br i1 %tobool48, label %if.then.49, label %if.end.101

if.then.49:                                       ; preds = %land.lhs.true
  %32 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8input, i32 0, i64 %idxprom50
  %arraydecay52 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx51, i32 0, i32 0
  store i16* %arraydecay52, i16** %ScalingList, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %33 to i64
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* @matrix8x8_check, i32 0, i64 %idxprom53
  %34 = load i32, i32* %arrayidx54, align 4
  %tobool55 = icmp ne i32 %34, 0
  br i1 %tobool55, label %if.then.56, label %if.else.90

if.then.56:                                       ; preds = %if.then.49
  store i32 0, i32* %fail, align 4
  store i32 0, i32* %cnt, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.74, %if.then.56
  %35 = load i32, i32* %cnt, align 4
  %cmp58 = icmp slt i32 %35, 64
  br i1 %cmp58, label %for.body.60, label %for.end.76

for.body.60:                                      ; preds = %for.cond.57
  %36 = load i32, i32* %cnt, align 4
  %idxprom61 = sext i32 %36 to i64
  %37 = load i16*, i16** %ScalingList, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %37, i64 %idxprom61
  %38 = load i16, i16* %arrayidx62, align 2
  %conv63 = sext i16 %38 to i32
  %cmp64 = icmp slt i32 %conv63, 0
  br i1 %cmp64, label %if.then.72, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %for.body.60
  %39 = load i32, i32* %cnt, align 4
  %idxprom67 = sext i32 %39 to i64
  %40 = load i16*, i16** %ScalingList, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %40, i64 %idxprom67
  %41 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %41 to i32
  %cmp70 = icmp sgt i32 %conv69, 255
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.66, %for.body.60
  store i32 1, i32* %fail, align 4
  br label %for.end.76

if.end.73:                                        ; preds = %lor.lhs.false.66
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %42 = load i32, i32* %cnt, align 4
  %inc75 = add nsw i32 %42, 1
  store i32 %inc75, i32* %cnt, align 4
  br label %for.cond.57

for.end.76:                                       ; preds = %if.then.72, %for.cond.57
  %43 = load i32, i32* %fail, align 4
  %tobool77 = icmp ne i32 %43, 0
  br i1 %tobool77, label %if.then.78, label %if.end.89

if.then.78:                                       ; preds = %for.end.76
  %44 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %44 to i64
  %arrayidx80 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i32 0, i64 %idxprom79
  %arraydecay81 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx80, i32 0, i32 0
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay81)
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  %45 = load i32, i32* %i, align 4
  %cmp84 = icmp eq i32 %45, 7
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.then.78
  %46 = load i16*, i16** %ScalingList, align 8
  %47 = bitcast i16* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast ([64 x i16]* @Quant8_inter_default to i8*), i64 128, i32 2, i1 false)
  br label %if.end.88

if.else.87:                                       ; preds = %if.then.78
  %48 = load i16*, i16** %ScalingList, align 8
  %49 = bitcast i16* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i32 2, i1 false)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %for.end.76
  br label %if.end.100

if.else.90:                                       ; preds = %if.then.49
  %50 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %50 to i64
  %arrayidx92 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i32 0, i64 %idxprom91
  %arraydecay93 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx92, i32 0, i32 0
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay93)
  %51 = load i32, i32* %i, align 4
  %cmp95 = icmp eq i32 %51, 7
  br i1 %cmp95, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %if.else.90
  %52 = load i16*, i16** %ScalingList, align 8
  %53 = bitcast i16* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast ([64 x i16]* @Quant8_inter_default to i8*), i64 128, i32 2, i1 false)
  br label %if.end.99

if.else.98:                                       ; preds = %if.else.90
  %54 = load i16*, i16** %ScalingList, align 8
  %55 = bitcast i16* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i32 2, i1 false)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.then.97
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.89
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %land.lhs.true, %if.end.42
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %56 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %56, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @allocate_QMatrix() #0 {
entry:
  %bitdepth_qp_scale = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 172
  %1 = load i32, i32* %BitDepthLuma, align 4
  %sub = sub nsw i32 %1, 8
  %mul = mul nsw i32 6, %sub
  store i32 %mul, i32* %bitdepth_qp_scale, align 4
  %2 = load i32, i32* %bitdepth_qp_scale, align 4
  %add = add nsw i32 52, %2
  %conv = sext i32 %add to i64
  %mul1 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul1) #4
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** @qp_per_matrix, align 8
  %cmp = icmp eq i32* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %bitdepth_qp_scale, align 4
  %add3 = add nsw i32 52, %4
  %conv4 = sext i32 %add3 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call noalias i8* @malloc(i64 %mul5) #4
  %5 = bitcast i8* %call6 to i32*
  store i32* %5, i32** @qp_rem_matrix, align 8
  %cmp7 = icmp eq i32* %5, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %bitdepth_qp_scale, align 4
  %add11 = add nsw i32 51, %7
  %add12 = add nsw i32 %add11, 1
  %cmp13 = icmp slt i32 %6, %add12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %div = sdiv i32 %8, 6
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** @qp_per_matrix, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 %div, i32* %arrayidx, align 4
  %11 = load i32, i32* %i, align 4
  %rem = srem i32 %11, 6
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %13 = load i32*, i32** @qp_rem_matrix, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %13, i64 %idxprom15
  store i32 %rem, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call17 = call i32 @get_mem4Dint(i32***** @LevelScale4x4Luma, i32 2, i32 6, i32 4, i32 4)
  %call18 = call i32 @get_mem5Dint(i32****** @LevelScale4x4Chroma, i32 2, i32 2, i32 6, i32 4, i32 4)
  %call19 = call i32 @get_mem4Dint(i32***** @LevelScale8x8Luma, i32 2, i32 6, i32 8, i32 8)
  %call20 = call i32 @get_mem4Dint(i32***** @InvLevelScale4x4Luma, i32 2, i32 6, i32 4, i32 4)
  %call21 = call i32 @get_mem5Dint(i32****** @InvLevelScale4x4Chroma, i32 2, i32 2, i32 6, i32 4, i32 4)
  %call22 = call i32 @get_mem4Dint(i32***** @InvLevelScale8x8Luma, i32 2, i32 6, i32 8, i32 8)
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @no_mem_exit(i8*) #3

declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #3

declare i32 @get_mem5Dint(i32******, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @free_QMatrix() #0 {
entry:
  %0 = load i32*, i32** @qp_rem_matrix, align 8
  %1 = bitcast i32* %0 to i8*
  call void @free(i8* %1) #4
  %2 = load i32*, i32** @qp_per_matrix, align 8
  %3 = bitcast i32* %2 to i8*
  call void @free(i8* %3) #4
  %4 = load i32****, i32***** @LevelScale4x4Luma, align 8
  call void @free_mem4Dint(i32**** %4, i32 2, i32 6)
  %5 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  call void @free_mem5Dint(i32***** %5, i32 2, i32 2, i32 6)
  %6 = load i32****, i32***** @LevelScale8x8Luma, align 8
  call void @free_mem4Dint(i32**** %6, i32 2, i32 6)
  %7 = load i32****, i32***** @InvLevelScale4x4Luma, align 8
  call void @free_mem4Dint(i32**** %7, i32 2, i32 6)
  %8 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  call void @free_mem5Dint(i32***** %8, i32 2, i32 2, i32 6)
  %9 = load i32****, i32***** @InvLevelScale8x8Luma, align 8
  call void @free_mem4Dint(i32**** %9, i32 2, i32 6)
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @free_mem4Dint(i32****, i32, i32) #3

declare void @free_mem5Dint(i32*****, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @Init_QMatrix() #0 {
entry:
  %content = alloca i8*, align 8
  call void @allocate_QMatrix()
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 167
  %1 = load i32, i32* %ScalingMatrixPresentFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %QmatrixFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 29
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %QmatrixFile, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay)
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %QmatrixFile1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 29
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %QmatrixFile1, i32 0, i32 0
  %call3 = call i8* @GetConfigFileContent(i8* %arraydecay2, i32 0)
  store i8* %call3, i8** %content, align 8
  %4 = load i8*, i8** %content, align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %5 = load i8*, i8** %content, align 8
  %6 = load i8*, i8** %content, align 8
  %call5 = call i64 @strlen(i8* %6) #5
  %conv = trunc i64 %call5 to i32
  call void @ParseMatrix(i8* %5, i32 %conv)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  call void @PatchMatrix()
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i16]* @UseDefaultScalingMatrix4x4Flag to i8*), i8 0, i64 12, i32 2, i1 false)
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 1), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 0), align 2
  %7 = load i8*, i8** %content, align 8
  call void @free(i8* %7) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  ret void
}

declare i8* @GetConfigFileContent(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @CalculateQuantParam() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %present = alloca [6 x i32], align 16
  %no_q_matrix = alloca i32, align 4
  store i32 0, i32* %no_q_matrix, align 4
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 9
  %1 = load i32, i32* %seq_scaling_matrix_present_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 5
  %3 = load i32, i32* %pic_scaling_matrix_present_flag, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %no_q_matrix, align 4
  br label %if.end.31

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = bitcast [6 x i32]* %present to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 16, i1 false)
  %5 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_matrix_present_flag2 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %5, i32 0, i32 9
  %6 = load i32, i32* %seq_scaling_matrix_present_flag2, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_list_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 %idxprom5
  store i32 %10, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  %13 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_matrix_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %13, i32 0, i32 5
  %14 = load i32, i32* %pic_scaling_matrix_present_flag7, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.end.30

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.27, %if.then.9
  %15 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %15, 6
  br i1 %cmp11, label %for.body.12, label %for.end.29

for.body.12:                                      ; preds = %for.cond.10
  %16 = load i32, i32* %i, align 4
  %cmp13 = icmp eq i32 %16, 0
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.12
  %17 = load i32, i32* %i, align 4
  %cmp14 = icmp eq i32 %17, 3
  br i1 %cmp14, label %if.then.15, label %if.else.20

if.then.15:                                       ; preds = %lor.lhs.false, %for.body.12
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_list_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %19, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag, i32 0, i64 %idxprom16
  %20 = load i32, i32* %arrayidx17, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 %idxprom18
  %22 = load i32, i32* %arrayidx19, align 4
  %or = or i32 %22, %20
  store i32 %or, i32* %arrayidx19, align 4
  br label %if.end.26

if.else.20:                                       ; preds = %lor.lhs.false
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_list_present_flag22 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %24, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag22, i32 0, i64 %idxprom21
  %25 = load i32, i32* %arrayidx23, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 %idxprom24
  store i32 %25, i32* %arrayidx25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.20, %if.then.15
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %27 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.10

for.end.29:                                       ; preds = %for.cond.10
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then
  %28 = load i32, i32* %no_q_matrix, align 4
  %cmp32 = icmp eq i32 %28, 1
  br i1 %cmp32, label %if.then.33, label %if.else.221

if.then.33:                                       ; preds = %if.end.31
  store i32 0, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.218, %if.then.33
  %29 = load i32, i32* %k, align 4
  %cmp35 = icmp slt i32 %29, 6
  br i1 %cmp35, label %for.body.36, label %for.end.220

for.body.36:                                      ; preds = %for.cond.34
  store i32 0, i32* %j, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.215, %for.body.36
  %30 = load i32, i32* %j, align 4
  %cmp38 = icmp slt i32 %30, 4
  br i1 %cmp38, label %for.body.39, label %for.end.217

for.body.39:                                      ; preds = %for.cond.37
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.212, %for.body.39
  %31 = load i32, i32* %i, align 4
  %cmp41 = icmp slt i32 %31, 4
  br i1 %cmp41, label %for.body.42, label %for.end.214

for.body.42:                                      ; preds = %for.cond.40
  %32 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %32 to i64
  %33 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %33 to i64
  %34 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx46, i32 0, i64 %idxprom44
  %arrayidx48 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx47, i32 0, i64 %idxprom43
  %35 = load i32, i32* %arrayidx48, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %38 to i64
  %39 = load i32****, i32***** @LevelScale4x4Luma, align 8
  %arrayidx52 = getelementptr inbounds i32***, i32**** %39, i64 1
  %40 = load i32***, i32**** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i32**, i32*** %40, i64 %idxprom51
  %41 = load i32**, i32*** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32*, i32** %41, i64 %idxprom50
  %42 = load i32*, i32** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %42, i64 %idxprom49
  store i32 %35, i32* %arrayidx55, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %43 to i64
  %44 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %44 to i64
  %45 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %45 to i64
  %arrayidx59 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx59, i32 0, i64 %idxprom57
  %arrayidx61 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx60, i32 0, i64 %idxprom56
  %46 = load i32, i32* %arrayidx61, align 4
  %shl = shl i32 %46, 4
  %47 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %47 to i64
  %48 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %48 to i64
  %49 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %49 to i64
  %50 = load i32****, i32***** @InvLevelScale4x4Luma, align 8
  %arrayidx65 = getelementptr inbounds i32***, i32**** %50, i64 1
  %51 = load i32***, i32**** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32**, i32*** %51, i64 %idxprom64
  %52 = load i32**, i32*** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32*, i32** %52, i64 %idxprom63
  %53 = load i32*, i32** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %53, i64 %idxprom62
  store i32 %shl, i32* %arrayidx68, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %55 to i64
  %56 = load i32, i32* %k, align 4
  %idxprom71 = sext i32 %56 to i64
  %arrayidx72 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx72, i32 0, i64 %idxprom70
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx73, i32 0, i64 %idxprom69
  %57 = load i32, i32* %arrayidx74, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %58 to i64
  %59 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %59 to i64
  %60 = load i32, i32* %k, align 4
  %idxprom77 = sext i32 %60 to i64
  %61 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx78 = getelementptr inbounds i32****, i32***** %61, i64 0
  %62 = load i32****, i32***** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32***, i32**** %62, i64 1
  %63 = load i32***, i32**** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32**, i32*** %63, i64 %idxprom77
  %64 = load i32**, i32*** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i32*, i32** %64, i64 %idxprom76
  %65 = load i32*, i32** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %65, i64 %idxprom75
  store i32 %57, i32* %arrayidx82, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %66 to i64
  %67 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %67 to i64
  %68 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %68 to i64
  %arrayidx86 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx86, i32 0, i64 %idxprom84
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx87, i32 0, i64 %idxprom83
  %69 = load i32, i32* %arrayidx88, align 4
  %shl89 = shl i32 %69, 4
  %70 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %70 to i64
  %71 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %71 to i64
  %72 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %72 to i64
  %73 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx93 = getelementptr inbounds i32****, i32***** %73, i64 0
  %74 = load i32****, i32***** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32***, i32**** %74, i64 1
  %75 = load i32***, i32**** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i32**, i32*** %75, i64 %idxprom92
  %76 = load i32**, i32*** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %76, i64 %idxprom91
  %77 = load i32*, i32** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %77, i64 %idxprom90
  store i32 %shl89, i32* %arrayidx97, align 4
  %78 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %78 to i64
  %79 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %79 to i64
  %80 = load i32, i32* %k, align 4
  %idxprom100 = sext i32 %80 to i64
  %arrayidx101 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx101, i32 0, i64 %idxprom99
  %arrayidx103 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx102, i32 0, i64 %idxprom98
  %81 = load i32, i32* %arrayidx103, align 4
  %82 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %82 to i64
  %83 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %83 to i64
  %84 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %84 to i64
  %85 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx107 = getelementptr inbounds i32****, i32***** %85, i64 1
  %86 = load i32****, i32***** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32***, i32**** %86, i64 1
  %87 = load i32***, i32**** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i32**, i32*** %87, i64 %idxprom106
  %88 = load i32**, i32*** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i32*, i32** %88, i64 %idxprom105
  %89 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %89, i64 %idxprom104
  store i32 %81, i32* %arrayidx111, align 4
  %90 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %90 to i64
  %91 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %91 to i64
  %92 = load i32, i32* %k, align 4
  %idxprom114 = sext i32 %92 to i64
  %arrayidx115 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx115, i32 0, i64 %idxprom113
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx116, i32 0, i64 %idxprom112
  %93 = load i32, i32* %arrayidx117, align 4
  %shl118 = shl i32 %93, 4
  %94 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %94 to i64
  %95 = load i32, i32* %j, align 4
  %idxprom120 = sext i32 %95 to i64
  %96 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %96 to i64
  %97 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx122 = getelementptr inbounds i32****, i32***** %97, i64 1
  %98 = load i32****, i32***** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i32***, i32**** %98, i64 1
  %99 = load i32***, i32**** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds i32**, i32*** %99, i64 %idxprom121
  %100 = load i32**, i32*** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i32*, i32** %100, i64 %idxprom120
  %101 = load i32*, i32** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %101, i64 %idxprom119
  store i32 %shl118, i32* %arrayidx126, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %102 to i64
  %103 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %103 to i64
  %104 = load i32, i32* %k, align 4
  %idxprom129 = sext i32 %104 to i64
  %arrayidx130 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx130, i32 0, i64 %idxprom128
  %arrayidx132 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx131, i32 0, i64 %idxprom127
  %105 = load i32, i32* %arrayidx132, align 4
  %106 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %106 to i64
  %107 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %107 to i64
  %108 = load i32, i32* %k, align 4
  %idxprom135 = sext i32 %108 to i64
  %109 = load i32****, i32***** @LevelScale4x4Luma, align 8
  %arrayidx136 = getelementptr inbounds i32***, i32**** %109, i64 0
  %110 = load i32***, i32**** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i32**, i32*** %110, i64 %idxprom135
  %111 = load i32**, i32*** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %111, i64 %idxprom134
  %112 = load i32*, i32** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %112, i64 %idxprom133
  store i32 %105, i32* %arrayidx139, align 4
  %113 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %113 to i64
  %114 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %114 to i64
  %115 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %115 to i64
  %arrayidx143 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx143, i32 0, i64 %idxprom141
  %arrayidx145 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx144, i32 0, i64 %idxprom140
  %116 = load i32, i32* %arrayidx145, align 4
  %shl146 = shl i32 %116, 4
  %117 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %117 to i64
  %118 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %118 to i64
  %119 = load i32, i32* %k, align 4
  %idxprom149 = sext i32 %119 to i64
  %120 = load i32****, i32***** @InvLevelScale4x4Luma, align 8
  %arrayidx150 = getelementptr inbounds i32***, i32**** %120, i64 0
  %121 = load i32***, i32**** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i32**, i32*** %121, i64 %idxprom149
  %122 = load i32**, i32*** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32*, i32** %122, i64 %idxprom148
  %123 = load i32*, i32** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %123, i64 %idxprom147
  store i32 %shl146, i32* %arrayidx153, align 4
  %124 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %124 to i64
  %125 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %125 to i64
  %126 = load i32, i32* %k, align 4
  %idxprom156 = sext i32 %126 to i64
  %arrayidx157 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom156
  %arrayidx158 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx157, i32 0, i64 %idxprom155
  %arrayidx159 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx158, i32 0, i64 %idxprom154
  %127 = load i32, i32* %arrayidx159, align 4
  %128 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %128 to i64
  %129 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %129 to i64
  %130 = load i32, i32* %k, align 4
  %idxprom162 = sext i32 %130 to i64
  %131 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx163 = getelementptr inbounds i32****, i32***** %131, i64 0
  %132 = load i32****, i32***** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i32***, i32**** %132, i64 0
  %133 = load i32***, i32**** %arrayidx164, align 8
  %arrayidx165 = getelementptr inbounds i32**, i32*** %133, i64 %idxprom162
  %134 = load i32**, i32*** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds i32*, i32** %134, i64 %idxprom161
  %135 = load i32*, i32** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %135, i64 %idxprom160
  store i32 %127, i32* %arrayidx167, align 4
  %136 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %136 to i64
  %137 = load i32, i32* %j, align 4
  %idxprom169 = sext i32 %137 to i64
  %138 = load i32, i32* %k, align 4
  %idxprom170 = sext i32 %138 to i64
  %arrayidx171 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx171, i32 0, i64 %idxprom169
  %arrayidx173 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx172, i32 0, i64 %idxprom168
  %139 = load i32, i32* %arrayidx173, align 4
  %shl174 = shl i32 %139, 4
  %140 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %140 to i64
  %141 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %141 to i64
  %142 = load i32, i32* %k, align 4
  %idxprom177 = sext i32 %142 to i64
  %143 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx178 = getelementptr inbounds i32****, i32***** %143, i64 0
  %144 = load i32****, i32***** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i32***, i32**** %144, i64 0
  %145 = load i32***, i32**** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32**, i32*** %145, i64 %idxprom177
  %146 = load i32**, i32*** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds i32*, i32** %146, i64 %idxprom176
  %147 = load i32*, i32** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %147, i64 %idxprom175
  store i32 %shl174, i32* %arrayidx182, align 4
  %148 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %148 to i64
  %149 = load i32, i32* %j, align 4
  %idxprom184 = sext i32 %149 to i64
  %150 = load i32, i32* %k, align 4
  %idxprom185 = sext i32 %150 to i64
  %arrayidx186 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom185
  %arrayidx187 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx186, i32 0, i64 %idxprom184
  %arrayidx188 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx187, i32 0, i64 %idxprom183
  %151 = load i32, i32* %arrayidx188, align 4
  %152 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %152 to i64
  %153 = load i32, i32* %j, align 4
  %idxprom190 = sext i32 %153 to i64
  %154 = load i32, i32* %k, align 4
  %idxprom191 = sext i32 %154 to i64
  %155 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx192 = getelementptr inbounds i32****, i32***** %155, i64 1
  %156 = load i32****, i32***** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i32***, i32**** %156, i64 0
  %157 = load i32***, i32**** %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds i32**, i32*** %157, i64 %idxprom191
  %158 = load i32**, i32*** %arrayidx194, align 8
  %arrayidx195 = getelementptr inbounds i32*, i32** %158, i64 %idxprom190
  %159 = load i32*, i32** %arrayidx195, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %159, i64 %idxprom189
  store i32 %151, i32* %arrayidx196, align 4
  %160 = load i32, i32* %i, align 4
  %idxprom197 = sext i32 %160 to i64
  %161 = load i32, i32* %j, align 4
  %idxprom198 = sext i32 %161 to i64
  %162 = load i32, i32* %k, align 4
  %idxprom199 = sext i32 %162 to i64
  %arrayidx200 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom199
  %arrayidx201 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx200, i32 0, i64 %idxprom198
  %arrayidx202 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx201, i32 0, i64 %idxprom197
  %163 = load i32, i32* %arrayidx202, align 4
  %shl203 = shl i32 %163, 4
  %164 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %164 to i64
  %165 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %165 to i64
  %166 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %166 to i64
  %167 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx207 = getelementptr inbounds i32****, i32***** %167, i64 1
  %168 = load i32****, i32***** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i32***, i32**** %168, i64 0
  %169 = load i32***, i32**** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds i32**, i32*** %169, i64 %idxprom206
  %170 = load i32**, i32*** %arrayidx209, align 8
  %arrayidx210 = getelementptr inbounds i32*, i32** %170, i64 %idxprom205
  %171 = load i32*, i32** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %171, i64 %idxprom204
  store i32 %shl203, i32* %arrayidx211, align 4
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.body.42
  %172 = load i32, i32* %i, align 4
  %inc213 = add nsw i32 %172, 1
  store i32 %inc213, i32* %i, align 4
  br label %for.cond.40

for.end.214:                                      ; preds = %for.cond.40
  br label %for.inc.215

for.inc.215:                                      ; preds = %for.end.214
  %173 = load i32, i32* %j, align 4
  %inc216 = add nsw i32 %173, 1
  store i32 %inc216, i32* %j, align 4
  br label %for.cond.37

for.end.217:                                      ; preds = %for.cond.37
  br label %for.inc.218

for.inc.218:                                      ; preds = %for.end.217
  %174 = load i32, i32* %k, align 4
  %inc219 = add nsw i32 %174, 1
  store i32 %inc219, i32* %k, align 4
  br label %for.cond.34

for.end.220:                                      ; preds = %for.cond.34
  br label %if.end.754

if.else.221:                                      ; preds = %if.end.31
  store i32 0, i32* %k, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.751, %if.else.221
  %175 = load i32, i32* %k, align 4
  %cmp223 = icmp slt i32 %175, 6
  br i1 %cmp223, label %for.body.224, label %for.end.753

for.body.224:                                     ; preds = %for.cond.222
  store i32 0, i32* %j, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.748, %for.body.224
  %176 = load i32, i32* %j, align 4
  %cmp226 = icmp slt i32 %176, 4
  br i1 %cmp226, label %for.body.227, label %for.end.750

for.body.227:                                     ; preds = %for.cond.225
  store i32 0, i32* %i, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.745, %for.body.227
  %177 = load i32, i32* %i, align 4
  %cmp229 = icmp slt i32 %177, 4
  br i1 %cmp229, label %for.body.230, label %for.end.747

for.body.230:                                     ; preds = %for.cond.228
  %178 = load i32, i32* %j, align 4
  %shl231 = shl i32 %178, 2
  %179 = load i32, i32* %i, align 4
  %add = add nsw i32 %shl231, %179
  store i32 %add, i32* %temp, align 4
  %arrayidx232 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 0
  %180 = load i32, i32* %arrayidx232, align 4
  %tobool233 = icmp ne i32 %180, 0
  br i1 %tobool233, label %lor.lhs.false.234, label %if.then.236

lor.lhs.false.234:                                ; preds = %for.body.230
  %181 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 0), align 2
  %conv = sext i16 %181 to i32
  %tobool235 = icmp ne i32 %conv, 0
  br i1 %tobool235, label %if.then.236, label %if.else.270

if.then.236:                                      ; preds = %lor.lhs.false.234, %for.body.230
  %182 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %182 to i64
  %183 = load i32, i32* %j, align 4
  %idxprom238 = sext i32 %183 to i64
  %184 = load i32, i32* %k, align 4
  %idxprom239 = sext i32 %184 to i64
  %arrayidx240 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom239
  %arrayidx241 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx240, i32 0, i64 %idxprom238
  %arrayidx242 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx241, i32 0, i64 %idxprom237
  %185 = load i32, i32* %arrayidx242, align 4
  %shl243 = shl i32 %185, 4
  %186 = load i32, i32* %temp, align 4
  %idxprom244 = sext i32 %186 to i64
  %arrayidx245 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom244
  %187 = load i16, i16* %arrayidx245, align 2
  %conv246 = sext i16 %187 to i32
  %div = sdiv i32 %shl243, %conv246
  %188 = load i32, i32* %i, align 4
  %idxprom247 = sext i32 %188 to i64
  %189 = load i32, i32* %j, align 4
  %idxprom248 = sext i32 %189 to i64
  %190 = load i32, i32* %k, align 4
  %idxprom249 = sext i32 %190 to i64
  %191 = load i32****, i32***** @LevelScale4x4Luma, align 8
  %arrayidx250 = getelementptr inbounds i32***, i32**** %191, i64 1
  %192 = load i32***, i32**** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i32**, i32*** %192, i64 %idxprom249
  %193 = load i32**, i32*** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i32*, i32** %193, i64 %idxprom248
  %194 = load i32*, i32** %arrayidx252, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %194, i64 %idxprom247
  store i32 %div, i32* %arrayidx253, align 4
  %195 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %195 to i64
  %196 = load i32, i32* %j, align 4
  %idxprom255 = sext i32 %196 to i64
  %197 = load i32, i32* %k, align 4
  %idxprom256 = sext i32 %197 to i64
  %arrayidx257 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx257, i32 0, i64 %idxprom255
  %arrayidx259 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx258, i32 0, i64 %idxprom254
  %198 = load i32, i32* %arrayidx259, align 4
  %199 = load i32, i32* %temp, align 4
  %idxprom260 = sext i32 %199 to i64
  %arrayidx261 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom260
  %200 = load i16, i16* %arrayidx261, align 2
  %conv262 = sext i16 %200 to i32
  %mul = mul nsw i32 %198, %conv262
  %201 = load i32, i32* %i, align 4
  %idxprom263 = sext i32 %201 to i64
  %202 = load i32, i32* %j, align 4
  %idxprom264 = sext i32 %202 to i64
  %203 = load i32, i32* %k, align 4
  %idxprom265 = sext i32 %203 to i64
  %204 = load i32****, i32***** @InvLevelScale4x4Luma, align 8
  %arrayidx266 = getelementptr inbounds i32***, i32**** %204, i64 1
  %205 = load i32***, i32**** %arrayidx266, align 8
  %arrayidx267 = getelementptr inbounds i32**, i32*** %205, i64 %idxprom265
  %206 = load i32**, i32*** %arrayidx267, align 8
  %arrayidx268 = getelementptr inbounds i32*, i32** %206, i64 %idxprom264
  %207 = load i32*, i32** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %207, i64 %idxprom263
  store i32 %mul, i32* %arrayidx269, align 4
  br label %if.end.306

if.else.270:                                      ; preds = %lor.lhs.false.234
  %208 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %208 to i64
  %209 = load i32, i32* %j, align 4
  %idxprom272 = sext i32 %209 to i64
  %210 = load i32, i32* %k, align 4
  %idxprom273 = sext i32 %210 to i64
  %arrayidx274 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom273
  %arrayidx275 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx274, i32 0, i64 %idxprom272
  %arrayidx276 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx275, i32 0, i64 %idxprom271
  %211 = load i32, i32* %arrayidx276, align 4
  %shl277 = shl i32 %211, 4
  %212 = load i32, i32* %temp, align 4
  %idxprom278 = sext i32 %212 to i64
  %arrayidx279 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 0), i32 0, i64 %idxprom278
  %213 = load i16, i16* %arrayidx279, align 2
  %conv280 = sext i16 %213 to i32
  %div281 = sdiv i32 %shl277, %conv280
  %214 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %214 to i64
  %215 = load i32, i32* %j, align 4
  %idxprom283 = sext i32 %215 to i64
  %216 = load i32, i32* %k, align 4
  %idxprom284 = sext i32 %216 to i64
  %217 = load i32****, i32***** @LevelScale4x4Luma, align 8
  %arrayidx285 = getelementptr inbounds i32***, i32**** %217, i64 1
  %218 = load i32***, i32**** %arrayidx285, align 8
  %arrayidx286 = getelementptr inbounds i32**, i32*** %218, i64 %idxprom284
  %219 = load i32**, i32*** %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds i32*, i32** %219, i64 %idxprom283
  %220 = load i32*, i32** %arrayidx287, align 8
  %arrayidx288 = getelementptr inbounds i32, i32* %220, i64 %idxprom282
  store i32 %div281, i32* %arrayidx288, align 4
  %221 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %221 to i64
  %222 = load i32, i32* %j, align 4
  %idxprom290 = sext i32 %222 to i64
  %223 = load i32, i32* %k, align 4
  %idxprom291 = sext i32 %223 to i64
  %arrayidx292 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom291
  %arrayidx293 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx292, i32 0, i64 %idxprom290
  %arrayidx294 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx293, i32 0, i64 %idxprom289
  %224 = load i32, i32* %arrayidx294, align 4
  %225 = load i32, i32* %temp, align 4
  %idxprom295 = sext i32 %225 to i64
  %arrayidx296 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 0), i32 0, i64 %idxprom295
  %226 = load i16, i16* %arrayidx296, align 2
  %conv297 = sext i16 %226 to i32
  %mul298 = mul nsw i32 %224, %conv297
  %227 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %227 to i64
  %228 = load i32, i32* %j, align 4
  %idxprom300 = sext i32 %228 to i64
  %229 = load i32, i32* %k, align 4
  %idxprom301 = sext i32 %229 to i64
  %230 = load i32****, i32***** @InvLevelScale4x4Luma, align 8
  %arrayidx302 = getelementptr inbounds i32***, i32**** %230, i64 1
  %231 = load i32***, i32**** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i32**, i32*** %231, i64 %idxprom301
  %232 = load i32**, i32*** %arrayidx303, align 8
  %arrayidx304 = getelementptr inbounds i32*, i32** %232, i64 %idxprom300
  %233 = load i32*, i32** %arrayidx304, align 8
  %arrayidx305 = getelementptr inbounds i32, i32* %233, i64 %idxprom299
  store i32 %mul298, i32* %arrayidx305, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.else.270, %if.then.236
  %arrayidx307 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 1
  %234 = load i32, i32* %arrayidx307, align 4
  %tobool308 = icmp ne i32 %234, 0
  br i1 %tobool308, label %if.else.340, label %if.then.309

if.then.309:                                      ; preds = %if.end.306
  %235 = load i32, i32* %i, align 4
  %idxprom310 = sext i32 %235 to i64
  %236 = load i32, i32* %j, align 4
  %idxprom311 = sext i32 %236 to i64
  %237 = load i32, i32* %k, align 4
  %idxprom312 = sext i32 %237 to i64
  %238 = load i32****, i32***** @LevelScale4x4Luma, align 8
  %arrayidx313 = getelementptr inbounds i32***, i32**** %238, i64 1
  %239 = load i32***, i32**** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i32**, i32*** %239, i64 %idxprom312
  %240 = load i32**, i32*** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds i32*, i32** %240, i64 %idxprom311
  %241 = load i32*, i32** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %241, i64 %idxprom310
  %242 = load i32, i32* %arrayidx316, align 4
  %243 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %243 to i64
  %244 = load i32, i32* %j, align 4
  %idxprom318 = sext i32 %244 to i64
  %245 = load i32, i32* %k, align 4
  %idxprom319 = sext i32 %245 to i64
  %246 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx320 = getelementptr inbounds i32****, i32***** %246, i64 0
  %247 = load i32****, i32***** %arrayidx320, align 8
  %arrayidx321 = getelementptr inbounds i32***, i32**** %247, i64 1
  %248 = load i32***, i32**** %arrayidx321, align 8
  %arrayidx322 = getelementptr inbounds i32**, i32*** %248, i64 %idxprom319
  %249 = load i32**, i32*** %arrayidx322, align 8
  %arrayidx323 = getelementptr inbounds i32*, i32** %249, i64 %idxprom318
  %250 = load i32*, i32** %arrayidx323, align 8
  %arrayidx324 = getelementptr inbounds i32, i32* %250, i64 %idxprom317
  store i32 %242, i32* %arrayidx324, align 4
  %251 = load i32, i32* %i, align 4
  %idxprom325 = sext i32 %251 to i64
  %252 = load i32, i32* %j, align 4
  %idxprom326 = sext i32 %252 to i64
  %253 = load i32, i32* %k, align 4
  %idxprom327 = sext i32 %253 to i64
  %254 = load i32****, i32***** @InvLevelScale4x4Luma, align 8
  %arrayidx328 = getelementptr inbounds i32***, i32**** %254, i64 1
  %255 = load i32***, i32**** %arrayidx328, align 8
  %arrayidx329 = getelementptr inbounds i32**, i32*** %255, i64 %idxprom327
  %256 = load i32**, i32*** %arrayidx329, align 8
  %arrayidx330 = getelementptr inbounds i32*, i32** %256, i64 %idxprom326
  %257 = load i32*, i32** %arrayidx330, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %257, i64 %idxprom325
  %258 = load i32, i32* %arrayidx331, align 4
  %259 = load i32, i32* %i, align 4
  %idxprom332 = sext i32 %259 to i64
  %260 = load i32, i32* %j, align 4
  %idxprom333 = sext i32 %260 to i64
  %261 = load i32, i32* %k, align 4
  %idxprom334 = sext i32 %261 to i64
  %262 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx335 = getelementptr inbounds i32****, i32***** %262, i64 0
  %263 = load i32****, i32***** %arrayidx335, align 8
  %arrayidx336 = getelementptr inbounds i32***, i32**** %263, i64 1
  %264 = load i32***, i32**** %arrayidx336, align 8
  %arrayidx337 = getelementptr inbounds i32**, i32*** %264, i64 %idxprom334
  %265 = load i32**, i32*** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i32*, i32** %265, i64 %idxprom333
  %266 = load i32*, i32** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds i32, i32* %266, i64 %idxprom332
  store i32 %258, i32* %arrayidx339, align 4
  br label %if.end.392

if.else.340:                                      ; preds = %if.end.306
  %267 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %267 to i64
  %268 = load i32, i32* %j, align 4
  %idxprom342 = sext i32 %268 to i64
  %269 = load i32, i32* %k, align 4
  %idxprom343 = sext i32 %269 to i64
  %arrayidx344 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom343
  %arrayidx345 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx344, i32 0, i64 %idxprom342
  %arrayidx346 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx345, i32 0, i64 %idxprom341
  %270 = load i32, i32* %arrayidx346, align 4
  %shl347 = shl i32 %270, 4
  %271 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 1), align 2
  %conv348 = sext i16 %271 to i32
  %tobool349 = icmp ne i32 %conv348, 0
  br i1 %tobool349, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.340
  %272 = load i32, i32* %temp, align 4
  %idxprom350 = sext i32 %272 to i64
  %arrayidx351 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom350
  %273 = load i16, i16* %arrayidx351, align 2
  %conv352 = sext i16 %273 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else.340
  %274 = load i32, i32* %temp, align 4
  %idxprom353 = sext i32 %274 to i64
  %arrayidx354 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 1), i32 0, i64 %idxprom353
  %275 = load i16, i16* %arrayidx354, align 2
  %conv355 = sext i16 %275 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv352, %cond.true ], [ %conv355, %cond.false ]
  %div356 = sdiv i32 %shl347, %cond
  %276 = load i32, i32* %i, align 4
  %idxprom357 = sext i32 %276 to i64
  %277 = load i32, i32* %j, align 4
  %idxprom358 = sext i32 %277 to i64
  %278 = load i32, i32* %k, align 4
  %idxprom359 = sext i32 %278 to i64
  %279 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx360 = getelementptr inbounds i32****, i32***** %279, i64 0
  %280 = load i32****, i32***** %arrayidx360, align 8
  %arrayidx361 = getelementptr inbounds i32***, i32**** %280, i64 1
  %281 = load i32***, i32**** %arrayidx361, align 8
  %arrayidx362 = getelementptr inbounds i32**, i32*** %281, i64 %idxprom359
  %282 = load i32**, i32*** %arrayidx362, align 8
  %arrayidx363 = getelementptr inbounds i32*, i32** %282, i64 %idxprom358
  %283 = load i32*, i32** %arrayidx363, align 8
  %arrayidx364 = getelementptr inbounds i32, i32* %283, i64 %idxprom357
  store i32 %div356, i32* %arrayidx364, align 4
  %284 = load i32, i32* %i, align 4
  %idxprom365 = sext i32 %284 to i64
  %285 = load i32, i32* %j, align 4
  %idxprom366 = sext i32 %285 to i64
  %286 = load i32, i32* %k, align 4
  %idxprom367 = sext i32 %286 to i64
  %arrayidx368 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom367
  %arrayidx369 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx368, i32 0, i64 %idxprom366
  %arrayidx370 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx369, i32 0, i64 %idxprom365
  %287 = load i32, i32* %arrayidx370, align 4
  %288 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 1), align 2
  %conv371 = sext i16 %288 to i32
  %tobool372 = icmp ne i32 %conv371, 0
  br i1 %tobool372, label %cond.true.373, label %cond.false.377

cond.true.373:                                    ; preds = %cond.end
  %289 = load i32, i32* %temp, align 4
  %idxprom374 = sext i32 %289 to i64
  %arrayidx375 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom374
  %290 = load i16, i16* %arrayidx375, align 2
  %conv376 = sext i16 %290 to i32
  br label %cond.end.381

cond.false.377:                                   ; preds = %cond.end
  %291 = load i32, i32* %temp, align 4
  %idxprom378 = sext i32 %291 to i64
  %arrayidx379 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 1), i32 0, i64 %idxprom378
  %292 = load i16, i16* %arrayidx379, align 2
  %conv380 = sext i16 %292 to i32
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.377, %cond.true.373
  %cond382 = phi i32 [ %conv376, %cond.true.373 ], [ %conv380, %cond.false.377 ]
  %mul383 = mul nsw i32 %287, %cond382
  %293 = load i32, i32* %i, align 4
  %idxprom384 = sext i32 %293 to i64
  %294 = load i32, i32* %j, align 4
  %idxprom385 = sext i32 %294 to i64
  %295 = load i32, i32* %k, align 4
  %idxprom386 = sext i32 %295 to i64
  %296 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx387 = getelementptr inbounds i32****, i32***** %296, i64 0
  %297 = load i32****, i32***** %arrayidx387, align 8
  %arrayidx388 = getelementptr inbounds i32***, i32**** %297, i64 1
  %298 = load i32***, i32**** %arrayidx388, align 8
  %arrayidx389 = getelementptr inbounds i32**, i32*** %298, i64 %idxprom386
  %299 = load i32**, i32*** %arrayidx389, align 8
  %arrayidx390 = getelementptr inbounds i32*, i32** %299, i64 %idxprom385
  %300 = load i32*, i32** %arrayidx390, align 8
  %arrayidx391 = getelementptr inbounds i32, i32* %300, i64 %idxprom384
  store i32 %mul383, i32* %arrayidx391, align 4
  br label %if.end.392

if.end.392:                                       ; preds = %cond.end.381, %if.then.309
  %arrayidx393 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 2
  %301 = load i32, i32* %arrayidx393, align 4
  %tobool394 = icmp ne i32 %301, 0
  br i1 %tobool394, label %if.else.428, label %if.then.395

if.then.395:                                      ; preds = %if.end.392
  %302 = load i32, i32* %i, align 4
  %idxprom396 = sext i32 %302 to i64
  %303 = load i32, i32* %j, align 4
  %idxprom397 = sext i32 %303 to i64
  %304 = load i32, i32* %k, align 4
  %idxprom398 = sext i32 %304 to i64
  %305 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx399 = getelementptr inbounds i32****, i32***** %305, i64 0
  %306 = load i32****, i32***** %arrayidx399, align 8
  %arrayidx400 = getelementptr inbounds i32***, i32**** %306, i64 1
  %307 = load i32***, i32**** %arrayidx400, align 8
  %arrayidx401 = getelementptr inbounds i32**, i32*** %307, i64 %idxprom398
  %308 = load i32**, i32*** %arrayidx401, align 8
  %arrayidx402 = getelementptr inbounds i32*, i32** %308, i64 %idxprom397
  %309 = load i32*, i32** %arrayidx402, align 8
  %arrayidx403 = getelementptr inbounds i32, i32* %309, i64 %idxprom396
  %310 = load i32, i32* %arrayidx403, align 4
  %311 = load i32, i32* %i, align 4
  %idxprom404 = sext i32 %311 to i64
  %312 = load i32, i32* %j, align 4
  %idxprom405 = sext i32 %312 to i64
  %313 = load i32, i32* %k, align 4
  %idxprom406 = sext i32 %313 to i64
  %314 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx407 = getelementptr inbounds i32****, i32***** %314, i64 1
  %315 = load i32****, i32***** %arrayidx407, align 8
  %arrayidx408 = getelementptr inbounds i32***, i32**** %315, i64 1
  %316 = load i32***, i32**** %arrayidx408, align 8
  %arrayidx409 = getelementptr inbounds i32**, i32*** %316, i64 %idxprom406
  %317 = load i32**, i32*** %arrayidx409, align 8
  %arrayidx410 = getelementptr inbounds i32*, i32** %317, i64 %idxprom405
  %318 = load i32*, i32** %arrayidx410, align 8
  %arrayidx411 = getelementptr inbounds i32, i32* %318, i64 %idxprom404
  store i32 %310, i32* %arrayidx411, align 4
  %319 = load i32, i32* %i, align 4
  %idxprom412 = sext i32 %319 to i64
  %320 = load i32, i32* %j, align 4
  %idxprom413 = sext i32 %320 to i64
  %321 = load i32, i32* %k, align 4
  %idxprom414 = sext i32 %321 to i64
  %322 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx415 = getelementptr inbounds i32****, i32***** %322, i64 0
  %323 = load i32****, i32***** %arrayidx415, align 8
  %arrayidx416 = getelementptr inbounds i32***, i32**** %323, i64 1
  %324 = load i32***, i32**** %arrayidx416, align 8
  %arrayidx417 = getelementptr inbounds i32**, i32*** %324, i64 %idxprom414
  %325 = load i32**, i32*** %arrayidx417, align 8
  %arrayidx418 = getelementptr inbounds i32*, i32** %325, i64 %idxprom413
  %326 = load i32*, i32** %arrayidx418, align 8
  %arrayidx419 = getelementptr inbounds i32, i32* %326, i64 %idxprom412
  %327 = load i32, i32* %arrayidx419, align 4
  %328 = load i32, i32* %i, align 4
  %idxprom420 = sext i32 %328 to i64
  %329 = load i32, i32* %j, align 4
  %idxprom421 = sext i32 %329 to i64
  %330 = load i32, i32* %k, align 4
  %idxprom422 = sext i32 %330 to i64
  %331 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx423 = getelementptr inbounds i32****, i32***** %331, i64 1
  %332 = load i32****, i32***** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds i32***, i32**** %332, i64 1
  %333 = load i32***, i32**** %arrayidx424, align 8
  %arrayidx425 = getelementptr inbounds i32**, i32*** %333, i64 %idxprom422
  %334 = load i32**, i32*** %arrayidx425, align 8
  %arrayidx426 = getelementptr inbounds i32*, i32** %334, i64 %idxprom421
  %335 = load i32*, i32** %arrayidx426, align 8
  %arrayidx427 = getelementptr inbounds i32, i32* %335, i64 %idxprom420
  store i32 %327, i32* %arrayidx427, align 4
  br label %if.end.484

if.else.428:                                      ; preds = %if.end.392
  %336 = load i32, i32* %i, align 4
  %idxprom429 = sext i32 %336 to i64
  %337 = load i32, i32* %j, align 4
  %idxprom430 = sext i32 %337 to i64
  %338 = load i32, i32* %k, align 4
  %idxprom431 = sext i32 %338 to i64
  %arrayidx432 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom431
  %arrayidx433 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx432, i32 0, i64 %idxprom430
  %arrayidx434 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx433, i32 0, i64 %idxprom429
  %339 = load i32, i32* %arrayidx434, align 4
  %shl435 = shl i32 %339, 4
  %340 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 2), align 2
  %conv436 = sext i16 %340 to i32
  %tobool437 = icmp ne i32 %conv436, 0
  br i1 %tobool437, label %cond.true.438, label %cond.false.442

cond.true.438:                                    ; preds = %if.else.428
  %341 = load i32, i32* %temp, align 4
  %idxprom439 = sext i32 %341 to i64
  %arrayidx440 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom439
  %342 = load i16, i16* %arrayidx440, align 2
  %conv441 = sext i16 %342 to i32
  br label %cond.end.446

cond.false.442:                                   ; preds = %if.else.428
  %343 = load i32, i32* %temp, align 4
  %idxprom443 = sext i32 %343 to i64
  %arrayidx444 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 2), i32 0, i64 %idxprom443
  %344 = load i16, i16* %arrayidx444, align 2
  %conv445 = sext i16 %344 to i32
  br label %cond.end.446

cond.end.446:                                     ; preds = %cond.false.442, %cond.true.438
  %cond447 = phi i32 [ %conv441, %cond.true.438 ], [ %conv445, %cond.false.442 ]
  %div448 = sdiv i32 %shl435, %cond447
  %345 = load i32, i32* %i, align 4
  %idxprom449 = sext i32 %345 to i64
  %346 = load i32, i32* %j, align 4
  %idxprom450 = sext i32 %346 to i64
  %347 = load i32, i32* %k, align 4
  %idxprom451 = sext i32 %347 to i64
  %348 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx452 = getelementptr inbounds i32****, i32***** %348, i64 1
  %349 = load i32****, i32***** %arrayidx452, align 8
  %arrayidx453 = getelementptr inbounds i32***, i32**** %349, i64 1
  %350 = load i32***, i32**** %arrayidx453, align 8
  %arrayidx454 = getelementptr inbounds i32**, i32*** %350, i64 %idxprom451
  %351 = load i32**, i32*** %arrayidx454, align 8
  %arrayidx455 = getelementptr inbounds i32*, i32** %351, i64 %idxprom450
  %352 = load i32*, i32** %arrayidx455, align 8
  %arrayidx456 = getelementptr inbounds i32, i32* %352, i64 %idxprom449
  store i32 %div448, i32* %arrayidx456, align 4
  %353 = load i32, i32* %i, align 4
  %idxprom457 = sext i32 %353 to i64
  %354 = load i32, i32* %j, align 4
  %idxprom458 = sext i32 %354 to i64
  %355 = load i32, i32* %k, align 4
  %idxprom459 = sext i32 %355 to i64
  %arrayidx460 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom459
  %arrayidx461 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx460, i32 0, i64 %idxprom458
  %arrayidx462 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx461, i32 0, i64 %idxprom457
  %356 = load i32, i32* %arrayidx462, align 4
  %357 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 2), align 2
  %conv463 = sext i16 %357 to i32
  %tobool464 = icmp ne i32 %conv463, 0
  br i1 %tobool464, label %cond.true.465, label %cond.false.469

cond.true.465:                                    ; preds = %cond.end.446
  %358 = load i32, i32* %temp, align 4
  %idxprom466 = sext i32 %358 to i64
  %arrayidx467 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom466
  %359 = load i16, i16* %arrayidx467, align 2
  %conv468 = sext i16 %359 to i32
  br label %cond.end.473

cond.false.469:                                   ; preds = %cond.end.446
  %360 = load i32, i32* %temp, align 4
  %idxprom470 = sext i32 %360 to i64
  %arrayidx471 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 2), i32 0, i64 %idxprom470
  %361 = load i16, i16* %arrayidx471, align 2
  %conv472 = sext i16 %361 to i32
  br label %cond.end.473

cond.end.473:                                     ; preds = %cond.false.469, %cond.true.465
  %cond474 = phi i32 [ %conv468, %cond.true.465 ], [ %conv472, %cond.false.469 ]
  %mul475 = mul nsw i32 %356, %cond474
  %362 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %362 to i64
  %363 = load i32, i32* %j, align 4
  %idxprom477 = sext i32 %363 to i64
  %364 = load i32, i32* %k, align 4
  %idxprom478 = sext i32 %364 to i64
  %365 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx479 = getelementptr inbounds i32****, i32***** %365, i64 1
  %366 = load i32****, i32***** %arrayidx479, align 8
  %arrayidx480 = getelementptr inbounds i32***, i32**** %366, i64 1
  %367 = load i32***, i32**** %arrayidx480, align 8
  %arrayidx481 = getelementptr inbounds i32**, i32*** %367, i64 %idxprom478
  %368 = load i32**, i32*** %arrayidx481, align 8
  %arrayidx482 = getelementptr inbounds i32*, i32** %368, i64 %idxprom477
  %369 = load i32*, i32** %arrayidx482, align 8
  %arrayidx483 = getelementptr inbounds i32, i32* %369, i64 %idxprom476
  store i32 %mul475, i32* %arrayidx483, align 4
  br label %if.end.484

if.end.484:                                       ; preds = %cond.end.473, %if.then.395
  %arrayidx485 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 3
  %370 = load i32, i32* %arrayidx485, align 4
  %tobool486 = icmp ne i32 %370, 0
  br i1 %tobool486, label %lor.lhs.false.487, label %if.then.490

lor.lhs.false.487:                                ; preds = %if.end.484
  %371 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 3), align 2
  %conv488 = sext i16 %371 to i32
  %tobool489 = icmp ne i32 %conv488, 0
  br i1 %tobool489, label %if.then.490, label %if.else.526

if.then.490:                                      ; preds = %lor.lhs.false.487, %if.end.484
  %372 = load i32, i32* %i, align 4
  %idxprom491 = sext i32 %372 to i64
  %373 = load i32, i32* %j, align 4
  %idxprom492 = sext i32 %373 to i64
  %374 = load i32, i32* %k, align 4
  %idxprom493 = sext i32 %374 to i64
  %arrayidx494 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom493
  %arrayidx495 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx494, i32 0, i64 %idxprom492
  %arrayidx496 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx495, i32 0, i64 %idxprom491
  %375 = load i32, i32* %arrayidx496, align 4
  %shl497 = shl i32 %375, 4
  %376 = load i32, i32* %temp, align 4
  %idxprom498 = sext i32 %376 to i64
  %arrayidx499 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom498
  %377 = load i16, i16* %arrayidx499, align 2
  %conv500 = sext i16 %377 to i32
  %div501 = sdiv i32 %shl497, %conv500
  %378 = load i32, i32* %i, align 4
  %idxprom502 = sext i32 %378 to i64
  %379 = load i32, i32* %j, align 4
  %idxprom503 = sext i32 %379 to i64
  %380 = load i32, i32* %k, align 4
  %idxprom504 = sext i32 %380 to i64
  %381 = load i32****, i32***** @LevelScale4x4Luma, align 8
  %arrayidx505 = getelementptr inbounds i32***, i32**** %381, i64 0
  %382 = load i32***, i32**** %arrayidx505, align 8
  %arrayidx506 = getelementptr inbounds i32**, i32*** %382, i64 %idxprom504
  %383 = load i32**, i32*** %arrayidx506, align 8
  %arrayidx507 = getelementptr inbounds i32*, i32** %383, i64 %idxprom503
  %384 = load i32*, i32** %arrayidx507, align 8
  %arrayidx508 = getelementptr inbounds i32, i32* %384, i64 %idxprom502
  store i32 %div501, i32* %arrayidx508, align 4
  %385 = load i32, i32* %i, align 4
  %idxprom509 = sext i32 %385 to i64
  %386 = load i32, i32* %j, align 4
  %idxprom510 = sext i32 %386 to i64
  %387 = load i32, i32* %k, align 4
  %idxprom511 = sext i32 %387 to i64
  %arrayidx512 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom511
  %arrayidx513 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx512, i32 0, i64 %idxprom510
  %arrayidx514 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx513, i32 0, i64 %idxprom509
  %388 = load i32, i32* %arrayidx514, align 4
  %389 = load i32, i32* %temp, align 4
  %idxprom515 = sext i32 %389 to i64
  %arrayidx516 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom515
  %390 = load i16, i16* %arrayidx516, align 2
  %conv517 = sext i16 %390 to i32
  %mul518 = mul nsw i32 %388, %conv517
  %391 = load i32, i32* %i, align 4
  %idxprom519 = sext i32 %391 to i64
  %392 = load i32, i32* %j, align 4
  %idxprom520 = sext i32 %392 to i64
  %393 = load i32, i32* %k, align 4
  %idxprom521 = sext i32 %393 to i64
  %394 = load i32****, i32***** @InvLevelScale4x4Luma, align 8
  %arrayidx522 = getelementptr inbounds i32***, i32**** %394, i64 0
  %395 = load i32***, i32**** %arrayidx522, align 8
  %arrayidx523 = getelementptr inbounds i32**, i32*** %395, i64 %idxprom521
  %396 = load i32**, i32*** %arrayidx523, align 8
  %arrayidx524 = getelementptr inbounds i32*, i32** %396, i64 %idxprom520
  %397 = load i32*, i32** %arrayidx524, align 8
  %arrayidx525 = getelementptr inbounds i32, i32* %397, i64 %idxprom519
  store i32 %mul518, i32* %arrayidx525, align 4
  br label %if.end.562

if.else.526:                                      ; preds = %lor.lhs.false.487
  %398 = load i32, i32* %i, align 4
  %idxprom527 = sext i32 %398 to i64
  %399 = load i32, i32* %j, align 4
  %idxprom528 = sext i32 %399 to i64
  %400 = load i32, i32* %k, align 4
  %idxprom529 = sext i32 %400 to i64
  %arrayidx530 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom529
  %arrayidx531 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx530, i32 0, i64 %idxprom528
  %arrayidx532 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx531, i32 0, i64 %idxprom527
  %401 = load i32, i32* %arrayidx532, align 4
  %shl533 = shl i32 %401, 4
  %402 = load i32, i32* %temp, align 4
  %idxprom534 = sext i32 %402 to i64
  %arrayidx535 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 3), i32 0, i64 %idxprom534
  %403 = load i16, i16* %arrayidx535, align 2
  %conv536 = sext i16 %403 to i32
  %div537 = sdiv i32 %shl533, %conv536
  %404 = load i32, i32* %i, align 4
  %idxprom538 = sext i32 %404 to i64
  %405 = load i32, i32* %j, align 4
  %idxprom539 = sext i32 %405 to i64
  %406 = load i32, i32* %k, align 4
  %idxprom540 = sext i32 %406 to i64
  %407 = load i32****, i32***** @LevelScale4x4Luma, align 8
  %arrayidx541 = getelementptr inbounds i32***, i32**** %407, i64 0
  %408 = load i32***, i32**** %arrayidx541, align 8
  %arrayidx542 = getelementptr inbounds i32**, i32*** %408, i64 %idxprom540
  %409 = load i32**, i32*** %arrayidx542, align 8
  %arrayidx543 = getelementptr inbounds i32*, i32** %409, i64 %idxprom539
  %410 = load i32*, i32** %arrayidx543, align 8
  %arrayidx544 = getelementptr inbounds i32, i32* %410, i64 %idxprom538
  store i32 %div537, i32* %arrayidx544, align 4
  %411 = load i32, i32* %i, align 4
  %idxprom545 = sext i32 %411 to i64
  %412 = load i32, i32* %j, align 4
  %idxprom546 = sext i32 %412 to i64
  %413 = load i32, i32* %k, align 4
  %idxprom547 = sext i32 %413 to i64
  %arrayidx548 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom547
  %arrayidx549 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx548, i32 0, i64 %idxprom546
  %arrayidx550 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx549, i32 0, i64 %idxprom545
  %414 = load i32, i32* %arrayidx550, align 4
  %415 = load i32, i32* %temp, align 4
  %idxprom551 = sext i32 %415 to i64
  %arrayidx552 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 3), i32 0, i64 %idxprom551
  %416 = load i16, i16* %arrayidx552, align 2
  %conv553 = sext i16 %416 to i32
  %mul554 = mul nsw i32 %414, %conv553
  %417 = load i32, i32* %i, align 4
  %idxprom555 = sext i32 %417 to i64
  %418 = load i32, i32* %j, align 4
  %idxprom556 = sext i32 %418 to i64
  %419 = load i32, i32* %k, align 4
  %idxprom557 = sext i32 %419 to i64
  %420 = load i32****, i32***** @InvLevelScale4x4Luma, align 8
  %arrayidx558 = getelementptr inbounds i32***, i32**** %420, i64 0
  %421 = load i32***, i32**** %arrayidx558, align 8
  %arrayidx559 = getelementptr inbounds i32**, i32*** %421, i64 %idxprom557
  %422 = load i32**, i32*** %arrayidx559, align 8
  %arrayidx560 = getelementptr inbounds i32*, i32** %422, i64 %idxprom556
  %423 = load i32*, i32** %arrayidx560, align 8
  %arrayidx561 = getelementptr inbounds i32, i32* %423, i64 %idxprom555
  store i32 %mul554, i32* %arrayidx561, align 4
  br label %if.end.562

if.end.562:                                       ; preds = %if.else.526, %if.then.490
  %arrayidx563 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 4
  %424 = load i32, i32* %arrayidx563, align 4
  %tobool564 = icmp ne i32 %424, 0
  br i1 %tobool564, label %if.else.596, label %if.then.565

if.then.565:                                      ; preds = %if.end.562
  %425 = load i32, i32* %i, align 4
  %idxprom566 = sext i32 %425 to i64
  %426 = load i32, i32* %j, align 4
  %idxprom567 = sext i32 %426 to i64
  %427 = load i32, i32* %k, align 4
  %idxprom568 = sext i32 %427 to i64
  %428 = load i32****, i32***** @LevelScale4x4Luma, align 8
  %arrayidx569 = getelementptr inbounds i32***, i32**** %428, i64 0
  %429 = load i32***, i32**** %arrayidx569, align 8
  %arrayidx570 = getelementptr inbounds i32**, i32*** %429, i64 %idxprom568
  %430 = load i32**, i32*** %arrayidx570, align 8
  %arrayidx571 = getelementptr inbounds i32*, i32** %430, i64 %idxprom567
  %431 = load i32*, i32** %arrayidx571, align 8
  %arrayidx572 = getelementptr inbounds i32, i32* %431, i64 %idxprom566
  %432 = load i32, i32* %arrayidx572, align 4
  %433 = load i32, i32* %i, align 4
  %idxprom573 = sext i32 %433 to i64
  %434 = load i32, i32* %j, align 4
  %idxprom574 = sext i32 %434 to i64
  %435 = load i32, i32* %k, align 4
  %idxprom575 = sext i32 %435 to i64
  %436 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx576 = getelementptr inbounds i32****, i32***** %436, i64 0
  %437 = load i32****, i32***** %arrayidx576, align 8
  %arrayidx577 = getelementptr inbounds i32***, i32**** %437, i64 0
  %438 = load i32***, i32**** %arrayidx577, align 8
  %arrayidx578 = getelementptr inbounds i32**, i32*** %438, i64 %idxprom575
  %439 = load i32**, i32*** %arrayidx578, align 8
  %arrayidx579 = getelementptr inbounds i32*, i32** %439, i64 %idxprom574
  %440 = load i32*, i32** %arrayidx579, align 8
  %arrayidx580 = getelementptr inbounds i32, i32* %440, i64 %idxprom573
  store i32 %432, i32* %arrayidx580, align 4
  %441 = load i32, i32* %i, align 4
  %idxprom581 = sext i32 %441 to i64
  %442 = load i32, i32* %j, align 4
  %idxprom582 = sext i32 %442 to i64
  %443 = load i32, i32* %k, align 4
  %idxprom583 = sext i32 %443 to i64
  %444 = load i32****, i32***** @InvLevelScale4x4Luma, align 8
  %arrayidx584 = getelementptr inbounds i32***, i32**** %444, i64 0
  %445 = load i32***, i32**** %arrayidx584, align 8
  %arrayidx585 = getelementptr inbounds i32**, i32*** %445, i64 %idxprom583
  %446 = load i32**, i32*** %arrayidx585, align 8
  %arrayidx586 = getelementptr inbounds i32*, i32** %446, i64 %idxprom582
  %447 = load i32*, i32** %arrayidx586, align 8
  %arrayidx587 = getelementptr inbounds i32, i32* %447, i64 %idxprom581
  %448 = load i32, i32* %arrayidx587, align 4
  %449 = load i32, i32* %i, align 4
  %idxprom588 = sext i32 %449 to i64
  %450 = load i32, i32* %j, align 4
  %idxprom589 = sext i32 %450 to i64
  %451 = load i32, i32* %k, align 4
  %idxprom590 = sext i32 %451 to i64
  %452 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx591 = getelementptr inbounds i32****, i32***** %452, i64 0
  %453 = load i32****, i32***** %arrayidx591, align 8
  %arrayidx592 = getelementptr inbounds i32***, i32**** %453, i64 0
  %454 = load i32***, i32**** %arrayidx592, align 8
  %arrayidx593 = getelementptr inbounds i32**, i32*** %454, i64 %idxprom590
  %455 = load i32**, i32*** %arrayidx593, align 8
  %arrayidx594 = getelementptr inbounds i32*, i32** %455, i64 %idxprom589
  %456 = load i32*, i32** %arrayidx594, align 8
  %arrayidx595 = getelementptr inbounds i32, i32* %456, i64 %idxprom588
  store i32 %448, i32* %arrayidx595, align 4
  br label %if.end.652

if.else.596:                                      ; preds = %if.end.562
  %457 = load i32, i32* %i, align 4
  %idxprom597 = sext i32 %457 to i64
  %458 = load i32, i32* %j, align 4
  %idxprom598 = sext i32 %458 to i64
  %459 = load i32, i32* %k, align 4
  %idxprom599 = sext i32 %459 to i64
  %arrayidx600 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom599
  %arrayidx601 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx600, i32 0, i64 %idxprom598
  %arrayidx602 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx601, i32 0, i64 %idxprom597
  %460 = load i32, i32* %arrayidx602, align 4
  %shl603 = shl i32 %460, 4
  %461 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 4), align 2
  %conv604 = sext i16 %461 to i32
  %tobool605 = icmp ne i32 %conv604, 0
  br i1 %tobool605, label %cond.true.606, label %cond.false.610

cond.true.606:                                    ; preds = %if.else.596
  %462 = load i32, i32* %temp, align 4
  %idxprom607 = sext i32 %462 to i64
  %arrayidx608 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom607
  %463 = load i16, i16* %arrayidx608, align 2
  %conv609 = sext i16 %463 to i32
  br label %cond.end.614

cond.false.610:                                   ; preds = %if.else.596
  %464 = load i32, i32* %temp, align 4
  %idxprom611 = sext i32 %464 to i64
  %arrayidx612 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 4), i32 0, i64 %idxprom611
  %465 = load i16, i16* %arrayidx612, align 2
  %conv613 = sext i16 %465 to i32
  br label %cond.end.614

cond.end.614:                                     ; preds = %cond.false.610, %cond.true.606
  %cond615 = phi i32 [ %conv609, %cond.true.606 ], [ %conv613, %cond.false.610 ]
  %div616 = sdiv i32 %shl603, %cond615
  %466 = load i32, i32* %i, align 4
  %idxprom617 = sext i32 %466 to i64
  %467 = load i32, i32* %j, align 4
  %idxprom618 = sext i32 %467 to i64
  %468 = load i32, i32* %k, align 4
  %idxprom619 = sext i32 %468 to i64
  %469 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx620 = getelementptr inbounds i32****, i32***** %469, i64 0
  %470 = load i32****, i32***** %arrayidx620, align 8
  %arrayidx621 = getelementptr inbounds i32***, i32**** %470, i64 0
  %471 = load i32***, i32**** %arrayidx621, align 8
  %arrayidx622 = getelementptr inbounds i32**, i32*** %471, i64 %idxprom619
  %472 = load i32**, i32*** %arrayidx622, align 8
  %arrayidx623 = getelementptr inbounds i32*, i32** %472, i64 %idxprom618
  %473 = load i32*, i32** %arrayidx623, align 8
  %arrayidx624 = getelementptr inbounds i32, i32* %473, i64 %idxprom617
  store i32 %div616, i32* %arrayidx624, align 4
  %474 = load i32, i32* %i, align 4
  %idxprom625 = sext i32 %474 to i64
  %475 = load i32, i32* %j, align 4
  %idxprom626 = sext i32 %475 to i64
  %476 = load i32, i32* %k, align 4
  %idxprom627 = sext i32 %476 to i64
  %arrayidx628 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom627
  %arrayidx629 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx628, i32 0, i64 %idxprom626
  %arrayidx630 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx629, i32 0, i64 %idxprom625
  %477 = load i32, i32* %arrayidx630, align 4
  %478 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 4), align 2
  %conv631 = sext i16 %478 to i32
  %tobool632 = icmp ne i32 %conv631, 0
  br i1 %tobool632, label %cond.true.633, label %cond.false.637

cond.true.633:                                    ; preds = %cond.end.614
  %479 = load i32, i32* %temp, align 4
  %idxprom634 = sext i32 %479 to i64
  %arrayidx635 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom634
  %480 = load i16, i16* %arrayidx635, align 2
  %conv636 = sext i16 %480 to i32
  br label %cond.end.641

cond.false.637:                                   ; preds = %cond.end.614
  %481 = load i32, i32* %temp, align 4
  %idxprom638 = sext i32 %481 to i64
  %arrayidx639 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 4), i32 0, i64 %idxprom638
  %482 = load i16, i16* %arrayidx639, align 2
  %conv640 = sext i16 %482 to i32
  br label %cond.end.641

cond.end.641:                                     ; preds = %cond.false.637, %cond.true.633
  %cond642 = phi i32 [ %conv636, %cond.true.633 ], [ %conv640, %cond.false.637 ]
  %mul643 = mul nsw i32 %477, %cond642
  %483 = load i32, i32* %i, align 4
  %idxprom644 = sext i32 %483 to i64
  %484 = load i32, i32* %j, align 4
  %idxprom645 = sext i32 %484 to i64
  %485 = load i32, i32* %k, align 4
  %idxprom646 = sext i32 %485 to i64
  %486 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx647 = getelementptr inbounds i32****, i32***** %486, i64 0
  %487 = load i32****, i32***** %arrayidx647, align 8
  %arrayidx648 = getelementptr inbounds i32***, i32**** %487, i64 0
  %488 = load i32***, i32**** %arrayidx648, align 8
  %arrayidx649 = getelementptr inbounds i32**, i32*** %488, i64 %idxprom646
  %489 = load i32**, i32*** %arrayidx649, align 8
  %arrayidx650 = getelementptr inbounds i32*, i32** %489, i64 %idxprom645
  %490 = load i32*, i32** %arrayidx650, align 8
  %arrayidx651 = getelementptr inbounds i32, i32* %490, i64 %idxprom644
  store i32 %mul643, i32* %arrayidx651, align 4
  br label %if.end.652

if.end.652:                                       ; preds = %cond.end.641, %if.then.565
  %arrayidx653 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 5
  %491 = load i32, i32* %arrayidx653, align 4
  %tobool654 = icmp ne i32 %491, 0
  br i1 %tobool654, label %if.else.688, label %if.then.655

if.then.655:                                      ; preds = %if.end.652
  %492 = load i32, i32* %i, align 4
  %idxprom656 = sext i32 %492 to i64
  %493 = load i32, i32* %j, align 4
  %idxprom657 = sext i32 %493 to i64
  %494 = load i32, i32* %k, align 4
  %idxprom658 = sext i32 %494 to i64
  %495 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx659 = getelementptr inbounds i32****, i32***** %495, i64 0
  %496 = load i32****, i32***** %arrayidx659, align 8
  %arrayidx660 = getelementptr inbounds i32***, i32**** %496, i64 0
  %497 = load i32***, i32**** %arrayidx660, align 8
  %arrayidx661 = getelementptr inbounds i32**, i32*** %497, i64 %idxprom658
  %498 = load i32**, i32*** %arrayidx661, align 8
  %arrayidx662 = getelementptr inbounds i32*, i32** %498, i64 %idxprom657
  %499 = load i32*, i32** %arrayidx662, align 8
  %arrayidx663 = getelementptr inbounds i32, i32* %499, i64 %idxprom656
  %500 = load i32, i32* %arrayidx663, align 4
  %501 = load i32, i32* %i, align 4
  %idxprom664 = sext i32 %501 to i64
  %502 = load i32, i32* %j, align 4
  %idxprom665 = sext i32 %502 to i64
  %503 = load i32, i32* %k, align 4
  %idxprom666 = sext i32 %503 to i64
  %504 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx667 = getelementptr inbounds i32****, i32***** %504, i64 1
  %505 = load i32****, i32***** %arrayidx667, align 8
  %arrayidx668 = getelementptr inbounds i32***, i32**** %505, i64 0
  %506 = load i32***, i32**** %arrayidx668, align 8
  %arrayidx669 = getelementptr inbounds i32**, i32*** %506, i64 %idxprom666
  %507 = load i32**, i32*** %arrayidx669, align 8
  %arrayidx670 = getelementptr inbounds i32*, i32** %507, i64 %idxprom665
  %508 = load i32*, i32** %arrayidx670, align 8
  %arrayidx671 = getelementptr inbounds i32, i32* %508, i64 %idxprom664
  store i32 %500, i32* %arrayidx671, align 4
  %509 = load i32, i32* %i, align 4
  %idxprom672 = sext i32 %509 to i64
  %510 = load i32, i32* %j, align 4
  %idxprom673 = sext i32 %510 to i64
  %511 = load i32, i32* %k, align 4
  %idxprom674 = sext i32 %511 to i64
  %512 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx675 = getelementptr inbounds i32****, i32***** %512, i64 0
  %513 = load i32****, i32***** %arrayidx675, align 8
  %arrayidx676 = getelementptr inbounds i32***, i32**** %513, i64 0
  %514 = load i32***, i32**** %arrayidx676, align 8
  %arrayidx677 = getelementptr inbounds i32**, i32*** %514, i64 %idxprom674
  %515 = load i32**, i32*** %arrayidx677, align 8
  %arrayidx678 = getelementptr inbounds i32*, i32** %515, i64 %idxprom673
  %516 = load i32*, i32** %arrayidx678, align 8
  %arrayidx679 = getelementptr inbounds i32, i32* %516, i64 %idxprom672
  %517 = load i32, i32* %arrayidx679, align 4
  %518 = load i32, i32* %i, align 4
  %idxprom680 = sext i32 %518 to i64
  %519 = load i32, i32* %j, align 4
  %idxprom681 = sext i32 %519 to i64
  %520 = load i32, i32* %k, align 4
  %idxprom682 = sext i32 %520 to i64
  %521 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx683 = getelementptr inbounds i32****, i32***** %521, i64 1
  %522 = load i32****, i32***** %arrayidx683, align 8
  %arrayidx684 = getelementptr inbounds i32***, i32**** %522, i64 0
  %523 = load i32***, i32**** %arrayidx684, align 8
  %arrayidx685 = getelementptr inbounds i32**, i32*** %523, i64 %idxprom682
  %524 = load i32**, i32*** %arrayidx685, align 8
  %arrayidx686 = getelementptr inbounds i32*, i32** %524, i64 %idxprom681
  %525 = load i32*, i32** %arrayidx686, align 8
  %arrayidx687 = getelementptr inbounds i32, i32* %525, i64 %idxprom680
  store i32 %517, i32* %arrayidx687, align 4
  br label %if.end.744

if.else.688:                                      ; preds = %if.end.652
  %526 = load i32, i32* %i, align 4
  %idxprom689 = sext i32 %526 to i64
  %527 = load i32, i32* %j, align 4
  %idxprom690 = sext i32 %527 to i64
  %528 = load i32, i32* %k, align 4
  %idxprom691 = sext i32 %528 to i64
  %arrayidx692 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom691
  %arrayidx693 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx692, i32 0, i64 %idxprom690
  %arrayidx694 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx693, i32 0, i64 %idxprom689
  %529 = load i32, i32* %arrayidx694, align 4
  %shl695 = shl i32 %529, 4
  %530 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 5), align 2
  %conv696 = sext i16 %530 to i32
  %tobool697 = icmp ne i32 %conv696, 0
  br i1 %tobool697, label %cond.true.698, label %cond.false.702

cond.true.698:                                    ; preds = %if.else.688
  %531 = load i32, i32* %temp, align 4
  %idxprom699 = sext i32 %531 to i64
  %arrayidx700 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom699
  %532 = load i16, i16* %arrayidx700, align 2
  %conv701 = sext i16 %532 to i32
  br label %cond.end.706

cond.false.702:                                   ; preds = %if.else.688
  %533 = load i32, i32* %temp, align 4
  %idxprom703 = sext i32 %533 to i64
  %arrayidx704 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 5), i32 0, i64 %idxprom703
  %534 = load i16, i16* %arrayidx704, align 2
  %conv705 = sext i16 %534 to i32
  br label %cond.end.706

cond.end.706:                                     ; preds = %cond.false.702, %cond.true.698
  %cond707 = phi i32 [ %conv701, %cond.true.698 ], [ %conv705, %cond.false.702 ]
  %div708 = sdiv i32 %shl695, %cond707
  %535 = load i32, i32* %i, align 4
  %idxprom709 = sext i32 %535 to i64
  %536 = load i32, i32* %j, align 4
  %idxprom710 = sext i32 %536 to i64
  %537 = load i32, i32* %k, align 4
  %idxprom711 = sext i32 %537 to i64
  %538 = load i32*****, i32****** @LevelScale4x4Chroma, align 8
  %arrayidx712 = getelementptr inbounds i32****, i32***** %538, i64 1
  %539 = load i32****, i32***** %arrayidx712, align 8
  %arrayidx713 = getelementptr inbounds i32***, i32**** %539, i64 0
  %540 = load i32***, i32**** %arrayidx713, align 8
  %arrayidx714 = getelementptr inbounds i32**, i32*** %540, i64 %idxprom711
  %541 = load i32**, i32*** %arrayidx714, align 8
  %arrayidx715 = getelementptr inbounds i32*, i32** %541, i64 %idxprom710
  %542 = load i32*, i32** %arrayidx715, align 8
  %arrayidx716 = getelementptr inbounds i32, i32* %542, i64 %idxprom709
  store i32 %div708, i32* %arrayidx716, align 4
  %543 = load i32, i32* %i, align 4
  %idxprom717 = sext i32 %543 to i64
  %544 = load i32, i32* %j, align 4
  %idxprom718 = sext i32 %544 to i64
  %545 = load i32, i32* %k, align 4
  %idxprom719 = sext i32 %545 to i64
  %arrayidx720 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom719
  %arrayidx721 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx720, i32 0, i64 %idxprom718
  %arrayidx722 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx721, i32 0, i64 %idxprom717
  %546 = load i32, i32* %arrayidx722, align 4
  %547 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 5), align 2
  %conv723 = sext i16 %547 to i32
  %tobool724 = icmp ne i32 %conv723, 0
  br i1 %tobool724, label %cond.true.725, label %cond.false.729

cond.true.725:                                    ; preds = %cond.end.706
  %548 = load i32, i32* %temp, align 4
  %idxprom726 = sext i32 %548 to i64
  %arrayidx727 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom726
  %549 = load i16, i16* %arrayidx727, align 2
  %conv728 = sext i16 %549 to i32
  br label %cond.end.733

cond.false.729:                                   ; preds = %cond.end.706
  %550 = load i32, i32* %temp, align 4
  %idxprom730 = sext i32 %550 to i64
  %arrayidx731 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 5), i32 0, i64 %idxprom730
  %551 = load i16, i16* %arrayidx731, align 2
  %conv732 = sext i16 %551 to i32
  br label %cond.end.733

cond.end.733:                                     ; preds = %cond.false.729, %cond.true.725
  %cond734 = phi i32 [ %conv728, %cond.true.725 ], [ %conv732, %cond.false.729 ]
  %mul735 = mul nsw i32 %546, %cond734
  %552 = load i32, i32* %i, align 4
  %idxprom736 = sext i32 %552 to i64
  %553 = load i32, i32* %j, align 4
  %idxprom737 = sext i32 %553 to i64
  %554 = load i32, i32* %k, align 4
  %idxprom738 = sext i32 %554 to i64
  %555 = load i32*****, i32****** @InvLevelScale4x4Chroma, align 8
  %arrayidx739 = getelementptr inbounds i32****, i32***** %555, i64 1
  %556 = load i32****, i32***** %arrayidx739, align 8
  %arrayidx740 = getelementptr inbounds i32***, i32**** %556, i64 0
  %557 = load i32***, i32**** %arrayidx740, align 8
  %arrayidx741 = getelementptr inbounds i32**, i32*** %557, i64 %idxprom738
  %558 = load i32**, i32*** %arrayidx741, align 8
  %arrayidx742 = getelementptr inbounds i32*, i32** %558, i64 %idxprom737
  %559 = load i32*, i32** %arrayidx742, align 8
  %arrayidx743 = getelementptr inbounds i32, i32* %559, i64 %idxprom736
  store i32 %mul735, i32* %arrayidx743, align 4
  br label %if.end.744

if.end.744:                                       ; preds = %cond.end.733, %if.then.655
  br label %for.inc.745

for.inc.745:                                      ; preds = %if.end.744
  %560 = load i32, i32* %i, align 4
  %inc746 = add nsw i32 %560, 1
  store i32 %inc746, i32* %i, align 4
  br label %for.cond.228

for.end.747:                                      ; preds = %for.cond.228
  br label %for.inc.748

for.inc.748:                                      ; preds = %for.end.747
  %561 = load i32, i32* %j, align 4
  %inc749 = add nsw i32 %561, 1
  store i32 %inc749, i32* %j, align 4
  br label %for.cond.225

for.end.750:                                      ; preds = %for.cond.225
  br label %for.inc.751

for.inc.751:                                      ; preds = %for.end.750
  %562 = load i32, i32* %k, align 4
  %inc752 = add nsw i32 %562, 1
  store i32 %inc752, i32* %k, align 4
  br label %for.cond.222

for.end.753:                                      ; preds = %for.cond.222
  br label %if.end.754

if.end.754:                                       ; preds = %for.end.753, %for.end.220
  ret void
}

; Function Attrs: nounwind uwtable
define void @CalculateQuant8Param() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %present = alloca [2 x i32], align 4
  %no_q_matrix = alloca i32, align 4
  store i32 0, i32* %no_q_matrix, align 4
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 9
  %1 = load i32, i32* %seq_scaling_matrix_present_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 5
  %3 = load i32, i32* %pic_scaling_matrix_present_flag, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %no_q_matrix, align 4
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = bitcast [2 x i32]* %present to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 8, i32 4, i1 false)
  %5 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_matrix_present_flag2 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %5, i32 0, i32 9
  %6 = load i32, i32* %seq_scaling_matrix_present_flag2, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 6
  %idxprom = sext i32 %add to i64
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_list_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %present, i32 0, i64 %idxprom5
  store i32 %10, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  %13 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_matrix_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %13, i32 0, i32 5
  %14 = load i32, i32* %pic_scaling_matrix_present_flag7, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.18, %if.then.9
  %15 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %15, 2
  br i1 %cmp11, label %for.body.12, label %for.end.20

for.body.12:                                      ; preds = %for.cond.10
  %16 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %16, 6
  %idxprom14 = sext i32 %add13 to i64
  %17 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_list_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %17, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag, i32 0, i64 %idxprom14
  %18 = load i32, i32* %arrayidx15, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %present, i32 0, i64 %idxprom16
  %20 = load i32, i32* %arrayidx17, align 4
  %or = or i32 %20, %18
  store i32 %or, i32* %arrayidx17, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.12
  %21 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.10

for.end.20:                                       ; preds = %for.cond.10
  br label %if.end.21

if.end.21:                                        ; preds = %for.end.20, %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  %22 = load i32, i32* %no_q_matrix, align 4
  %cmp23 = icmp eq i32 %22, 1
  br i1 %cmp23, label %if.then.24, label %if.else.96

if.then.24:                                       ; preds = %if.end.22
  store i32 0, i32* %k, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.93, %if.then.24
  %23 = load i32, i32* %k, align 4
  %cmp26 = icmp slt i32 %23, 6
  br i1 %cmp26, label %for.body.27, label %for.end.95

for.body.27:                                      ; preds = %for.cond.25
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.90, %for.body.27
  %24 = load i32, i32* %j, align 4
  %cmp29 = icmp slt i32 %24, 8
  br i1 %cmp29, label %for.body.30, label %for.end.92

for.body.30:                                      ; preds = %for.cond.28
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.87, %for.body.30
  %25 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %25, 8
  br i1 %cmp32, label %for.body.33, label %for.end.89

for.body.33:                                      ; preds = %for.cond.31
  %26 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx37, i32 0, i64 %idxprom35
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx38, i32 0, i64 %idxprom34
  %29 = load i32, i32* %arrayidx39, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %31 to i64
  %32 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %32 to i64
  %33 = load i32****, i32***** @LevelScale8x8Luma, align 8
  %arrayidx43 = getelementptr inbounds i32***, i32**** %33, i64 1
  %34 = load i32***, i32**** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i32**, i32*** %34, i64 %idxprom42
  %35 = load i32**, i32*** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i32*, i32** %35, i64 %idxprom41
  %36 = load i32*, i32** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %36, i64 %idxprom40
  store i32 %29, i32* %arrayidx46, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %37 to i64
  %38 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %38 to i64
  %39 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx50, i32 0, i64 %idxprom48
  %arrayidx52 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx51, i32 0, i64 %idxprom47
  %40 = load i32, i32* %arrayidx52, align 4
  %shl = shl i32 %40, 4
  %41 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %41 to i64
  %42 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %42 to i64
  %43 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %43 to i64
  %44 = load i32****, i32***** @InvLevelScale8x8Luma, align 8
  %arrayidx56 = getelementptr inbounds i32***, i32**** %44, i64 1
  %45 = load i32***, i32**** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32**, i32*** %45, i64 %idxprom55
  %46 = load i32**, i32*** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32*, i32** %46, i64 %idxprom54
  %47 = load i32*, i32** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %47, i64 %idxprom53
  store i32 %shl, i32* %arrayidx59, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %48 to i64
  %49 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %49 to i64
  %50 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %50 to i64
  %arrayidx63 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx63, i32 0, i64 %idxprom61
  %arrayidx65 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx64, i32 0, i64 %idxprom60
  %51 = load i32, i32* %arrayidx65, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %52 to i64
  %53 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %53 to i64
  %54 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %54 to i64
  %55 = load i32****, i32***** @LevelScale8x8Luma, align 8
  %arrayidx69 = getelementptr inbounds i32***, i32**** %55, i64 0
  %56 = load i32***, i32**** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32**, i32*** %56, i64 %idxprom68
  %57 = load i32**, i32*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %57, i64 %idxprom67
  %58 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %58, i64 %idxprom66
  store i32 %51, i32* %arrayidx72, align 4
  %59 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %59 to i64
  %60 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %60 to i64
  %61 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %61 to i64
  %arrayidx76 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx76, i32 0, i64 %idxprom74
  %arrayidx78 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx77, i32 0, i64 %idxprom73
  %62 = load i32, i32* %arrayidx78, align 4
  %shl79 = shl i32 %62, 4
  %63 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %63 to i64
  %64 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %64 to i64
  %65 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %65 to i64
  %66 = load i32****, i32***** @InvLevelScale8x8Luma, align 8
  %arrayidx83 = getelementptr inbounds i32***, i32**** %66, i64 0
  %67 = load i32***, i32**** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32**, i32*** %67, i64 %idxprom82
  %68 = load i32**, i32*** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %68, i64 %idxprom81
  %69 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %69, i64 %idxprom80
  store i32 %shl79, i32* %arrayidx86, align 4
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.33
  %70 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %70, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.31

for.end.89:                                       ; preds = %for.cond.31
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.end.89
  %71 = load i32, i32* %j, align 4
  %inc91 = add nsw i32 %71, 1
  store i32 %inc91, i32* %j, align 4
  br label %for.cond.28

for.end.92:                                       ; preds = %for.cond.28
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.92
  %72 = load i32, i32* %k, align 4
  %inc94 = add nsw i32 %72, 1
  store i32 %inc94, i32* %k, align 4
  br label %for.cond.25

for.end.95:                                       ; preds = %for.cond.25
  br label %if.end.269

if.else.96:                                       ; preds = %if.end.22
  store i32 0, i32* %k, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.266, %if.else.96
  %73 = load i32, i32* %k, align 4
  %cmp98 = icmp slt i32 %73, 6
  br i1 %cmp98, label %for.body.99, label %for.end.268

for.body.99:                                      ; preds = %for.cond.97
  store i32 0, i32* %j, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.263, %for.body.99
  %74 = load i32, i32* %j, align 4
  %cmp101 = icmp slt i32 %74, 8
  br i1 %cmp101, label %for.body.102, label %for.end.265

for.body.102:                                     ; preds = %for.cond.100
  store i32 0, i32* %i, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.260, %for.body.102
  %75 = load i32, i32* %i, align 4
  %cmp104 = icmp slt i32 %75, 8
  br i1 %cmp104, label %for.body.105, label %for.end.262

for.body.105:                                     ; preds = %for.cond.103
  %76 = load i32, i32* %j, align 4
  %shl106 = shl i32 %76, 3
  %77 = load i32, i32* %i, align 4
  %add107 = add nsw i32 %shl106, %77
  store i32 %add107, i32* %temp, align 4
  %arrayidx108 = getelementptr inbounds [2 x i32], [2 x i32]* %present, i32 0, i64 0
  %78 = load i32, i32* %arrayidx108, align 4
  %tobool109 = icmp ne i32 %78, 0
  br i1 %tobool109, label %lor.lhs.false, label %if.then.111

lor.lhs.false:                                    ; preds = %for.body.105
  %79 = load i16, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 0), align 2
  %conv = sext i16 %79 to i32
  %tobool110 = icmp ne i32 %conv, 0
  br i1 %tobool110, label %if.then.111, label %if.else.145

if.then.111:                                      ; preds = %lor.lhs.false, %for.body.105
  %80 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %80 to i64
  %81 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %81 to i64
  %82 = load i32, i32* %k, align 4
  %idxprom114 = sext i32 %82 to i64
  %arrayidx115 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx115, i32 0, i64 %idxprom113
  %arrayidx117 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx116, i32 0, i64 %idxprom112
  %83 = load i32, i32* %arrayidx117, align 4
  %shl118 = shl i32 %83, 4
  %84 = load i32, i32* %temp, align 4
  %idxprom119 = sext i32 %84 to i64
  %arrayidx120 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_intra_default, i32 0, i64 %idxprom119
  %85 = load i16, i16* %arrayidx120, align 2
  %conv121 = sext i16 %85 to i32
  %div = sdiv i32 %shl118, %conv121
  %86 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %86 to i64
  %87 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %87 to i64
  %88 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %88 to i64
  %89 = load i32****, i32***** @LevelScale8x8Luma, align 8
  %arrayidx125 = getelementptr inbounds i32***, i32**** %89, i64 1
  %90 = load i32***, i32**** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i32**, i32*** %90, i64 %idxprom124
  %91 = load i32**, i32*** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i32*, i32** %91, i64 %idxprom123
  %92 = load i32*, i32** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %92, i64 %idxprom122
  store i32 %div, i32* %arrayidx128, align 4
  %93 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %93 to i64
  %94 = load i32, i32* %j, align 4
  %idxprom130 = sext i32 %94 to i64
  %95 = load i32, i32* %k, align 4
  %idxprom131 = sext i32 %95 to i64
  %arrayidx132 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx132, i32 0, i64 %idxprom130
  %arrayidx134 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx133, i32 0, i64 %idxprom129
  %96 = load i32, i32* %arrayidx134, align 4
  %97 = load i32, i32* %temp, align 4
  %idxprom135 = sext i32 %97 to i64
  %arrayidx136 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_intra_default, i32 0, i64 %idxprom135
  %98 = load i16, i16* %arrayidx136, align 2
  %conv137 = sext i16 %98 to i32
  %mul = mul nsw i32 %96, %conv137
  %99 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %100 to i64
  %101 = load i32, i32* %k, align 4
  %idxprom140 = sext i32 %101 to i64
  %102 = load i32****, i32***** @InvLevelScale8x8Luma, align 8
  %arrayidx141 = getelementptr inbounds i32***, i32**** %102, i64 1
  %103 = load i32***, i32**** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i32**, i32*** %103, i64 %idxprom140
  %104 = load i32**, i32*** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i32*, i32** %104, i64 %idxprom139
  %105 = load i32*, i32** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %105, i64 %idxprom138
  store i32 %mul, i32* %arrayidx144, align 4
  br label %if.end.181

if.else.145:                                      ; preds = %lor.lhs.false
  %106 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %106 to i64
  %107 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %107 to i64
  %108 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %108 to i64
  %arrayidx149 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom148
  %arrayidx150 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx149, i32 0, i64 %idxprom147
  %arrayidx151 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx150, i32 0, i64 %idxprom146
  %109 = load i32, i32* %arrayidx151, align 4
  %shl152 = shl i32 %109, 4
  %110 = load i32, i32* %temp, align 4
  %idxprom153 = sext i32 %110 to i64
  %arrayidx154 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 0), i32 0, i64 %idxprom153
  %111 = load i16, i16* %arrayidx154, align 2
  %conv155 = sext i16 %111 to i32
  %div156 = sdiv i32 %shl152, %conv155
  %112 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %112 to i64
  %113 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %113 to i64
  %114 = load i32, i32* %k, align 4
  %idxprom159 = sext i32 %114 to i64
  %115 = load i32****, i32***** @LevelScale8x8Luma, align 8
  %arrayidx160 = getelementptr inbounds i32***, i32**** %115, i64 1
  %116 = load i32***, i32**** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i32**, i32*** %116, i64 %idxprom159
  %117 = load i32**, i32*** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i32*, i32** %117, i64 %idxprom158
  %118 = load i32*, i32** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %118, i64 %idxprom157
  store i32 %div156, i32* %arrayidx163, align 4
  %119 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %119 to i64
  %120 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %120 to i64
  %121 = load i32, i32* %k, align 4
  %idxprom166 = sext i32 %121 to i64
  %arrayidx167 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx167, i32 0, i64 %idxprom165
  %arrayidx169 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx168, i32 0, i64 %idxprom164
  %122 = load i32, i32* %arrayidx169, align 4
  %123 = load i32, i32* %temp, align 4
  %idxprom170 = sext i32 %123 to i64
  %arrayidx171 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 0), i32 0, i64 %idxprom170
  %124 = load i16, i16* %arrayidx171, align 2
  %conv172 = sext i16 %124 to i32
  %mul173 = mul nsw i32 %122, %conv172
  %125 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %125 to i64
  %126 = load i32, i32* %j, align 4
  %idxprom175 = sext i32 %126 to i64
  %127 = load i32, i32* %k, align 4
  %idxprom176 = sext i32 %127 to i64
  %128 = load i32****, i32***** @InvLevelScale8x8Luma, align 8
  %arrayidx177 = getelementptr inbounds i32***, i32**** %128, i64 1
  %129 = load i32***, i32**** %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds i32**, i32*** %129, i64 %idxprom176
  %130 = load i32**, i32*** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i32*, i32** %130, i64 %idxprom175
  %131 = load i32*, i32** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %131, i64 %idxprom174
  store i32 %mul173, i32* %arrayidx180, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.145, %if.then.111
  %arrayidx182 = getelementptr inbounds [2 x i32], [2 x i32]* %present, i32 0, i64 1
  %132 = load i32, i32* %arrayidx182, align 4
  %tobool183 = icmp ne i32 %132, 0
  br i1 %tobool183, label %lor.lhs.false.184, label %if.then.187

lor.lhs.false.184:                                ; preds = %if.end.181
  %133 = load i16, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 1), align 2
  %conv185 = sext i16 %133 to i32
  %tobool186 = icmp ne i32 %conv185, 0
  br i1 %tobool186, label %if.then.187, label %if.else.223

if.then.187:                                      ; preds = %lor.lhs.false.184, %if.end.181
  %134 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %134 to i64
  %135 = load i32, i32* %j, align 4
  %idxprom189 = sext i32 %135 to i64
  %136 = load i32, i32* %k, align 4
  %idxprom190 = sext i32 %136 to i64
  %arrayidx191 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom190
  %arrayidx192 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx191, i32 0, i64 %idxprom189
  %arrayidx193 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx192, i32 0, i64 %idxprom188
  %137 = load i32, i32* %arrayidx193, align 4
  %shl194 = shl i32 %137, 4
  %138 = load i32, i32* %temp, align 4
  %idxprom195 = sext i32 %138 to i64
  %arrayidx196 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_inter_default, i32 0, i64 %idxprom195
  %139 = load i16, i16* %arrayidx196, align 2
  %conv197 = sext i16 %139 to i32
  %div198 = sdiv i32 %shl194, %conv197
  %140 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %140 to i64
  %141 = load i32, i32* %j, align 4
  %idxprom200 = sext i32 %141 to i64
  %142 = load i32, i32* %k, align 4
  %idxprom201 = sext i32 %142 to i64
  %143 = load i32****, i32***** @LevelScale8x8Luma, align 8
  %arrayidx202 = getelementptr inbounds i32***, i32**** %143, i64 0
  %144 = load i32***, i32**** %arrayidx202, align 8
  %arrayidx203 = getelementptr inbounds i32**, i32*** %144, i64 %idxprom201
  %145 = load i32**, i32*** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i32*, i32** %145, i64 %idxprom200
  %146 = load i32*, i32** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %146, i64 %idxprom199
  store i32 %div198, i32* %arrayidx205, align 4
  %147 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %147 to i64
  %148 = load i32, i32* %j, align 4
  %idxprom207 = sext i32 %148 to i64
  %149 = load i32, i32* %k, align 4
  %idxprom208 = sext i32 %149 to i64
  %arrayidx209 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx209, i32 0, i64 %idxprom207
  %arrayidx211 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx210, i32 0, i64 %idxprom206
  %150 = load i32, i32* %arrayidx211, align 4
  %151 = load i32, i32* %temp, align 4
  %idxprom212 = sext i32 %151 to i64
  %arrayidx213 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_inter_default, i32 0, i64 %idxprom212
  %152 = load i16, i16* %arrayidx213, align 2
  %conv214 = sext i16 %152 to i32
  %mul215 = mul nsw i32 %150, %conv214
  %153 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %153 to i64
  %154 = load i32, i32* %j, align 4
  %idxprom217 = sext i32 %154 to i64
  %155 = load i32, i32* %k, align 4
  %idxprom218 = sext i32 %155 to i64
  %156 = load i32****, i32***** @InvLevelScale8x8Luma, align 8
  %arrayidx219 = getelementptr inbounds i32***, i32**** %156, i64 0
  %157 = load i32***, i32**** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds i32**, i32*** %157, i64 %idxprom218
  %158 = load i32**, i32*** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i32*, i32** %158, i64 %idxprom217
  %159 = load i32*, i32** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %159, i64 %idxprom216
  store i32 %mul215, i32* %arrayidx222, align 4
  br label %if.end.259

if.else.223:                                      ; preds = %lor.lhs.false.184
  %160 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %160 to i64
  %161 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %161 to i64
  %162 = load i32, i32* %k, align 4
  %idxprom226 = sext i32 %162 to i64
  %arrayidx227 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom226
  %arrayidx228 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx227, i32 0, i64 %idxprom225
  %arrayidx229 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx228, i32 0, i64 %idxprom224
  %163 = load i32, i32* %arrayidx229, align 4
  %shl230 = shl i32 %163, 4
  %164 = load i32, i32* %temp, align 4
  %idxprom231 = sext i32 %164 to i64
  %arrayidx232 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 1), i32 0, i64 %idxprom231
  %165 = load i16, i16* %arrayidx232, align 2
  %conv233 = sext i16 %165 to i32
  %div234 = sdiv i32 %shl230, %conv233
  %166 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %166 to i64
  %167 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %167 to i64
  %168 = load i32, i32* %k, align 4
  %idxprom237 = sext i32 %168 to i64
  %169 = load i32****, i32***** @LevelScale8x8Luma, align 8
  %arrayidx238 = getelementptr inbounds i32***, i32**** %169, i64 0
  %170 = load i32***, i32**** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i32**, i32*** %170, i64 %idxprom237
  %171 = load i32**, i32*** %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds i32*, i32** %171, i64 %idxprom236
  %172 = load i32*, i32** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %172, i64 %idxprom235
  store i32 %div234, i32* %arrayidx241, align 4
  %173 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %173 to i64
  %174 = load i32, i32* %j, align 4
  %idxprom243 = sext i32 %174 to i64
  %175 = load i32, i32* %k, align 4
  %idxprom244 = sext i32 %175 to i64
  %arrayidx245 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom244
  %arrayidx246 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx245, i32 0, i64 %idxprom243
  %arrayidx247 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx246, i32 0, i64 %idxprom242
  %176 = load i32, i32* %arrayidx247, align 4
  %177 = load i32, i32* %temp, align 4
  %idxprom248 = sext i32 %177 to i64
  %arrayidx249 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 1), i32 0, i64 %idxprom248
  %178 = load i16, i16* %arrayidx249, align 2
  %conv250 = sext i16 %178 to i32
  %mul251 = mul nsw i32 %176, %conv250
  %179 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %179 to i64
  %180 = load i32, i32* %j, align 4
  %idxprom253 = sext i32 %180 to i64
  %181 = load i32, i32* %k, align 4
  %idxprom254 = sext i32 %181 to i64
  %182 = load i32****, i32***** @InvLevelScale8x8Luma, align 8
  %arrayidx255 = getelementptr inbounds i32***, i32**** %182, i64 0
  %183 = load i32***, i32**** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds i32**, i32*** %183, i64 %idxprom254
  %184 = load i32**, i32*** %arrayidx256, align 8
  %arrayidx257 = getelementptr inbounds i32*, i32** %184, i64 %idxprom253
  %185 = load i32*, i32** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %185, i64 %idxprom252
  store i32 %mul251, i32* %arrayidx258, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.223, %if.then.187
  br label %for.inc.260

for.inc.260:                                      ; preds = %if.end.259
  %186 = load i32, i32* %i, align 4
  %inc261 = add nsw i32 %186, 1
  store i32 %inc261, i32* %i, align 4
  br label %for.cond.103

for.end.262:                                      ; preds = %for.cond.103
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.end.262
  %187 = load i32, i32* %j, align 4
  %inc264 = add nsw i32 %187, 1
  store i32 %inc264, i32* %j, align 4
  br label %for.cond.100

for.end.265:                                      ; preds = %for.cond.100
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.end.265
  %188 = load i32, i32* %k, align 4
  %inc267 = add nsw i32 %188, 1
  store i32 %inc267, i32* %k, align 4
  br label %for.cond.97

for.end.268:                                      ; preds = %for.cond.97
  br label %if.end.269

if.end.269:                                       ; preds = %for.end.268, %for.end.95
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
