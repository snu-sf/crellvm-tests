; ModuleID = './MultiSource.Applications.JM/57.lencod.q_offsets.bc'
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
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@offset4x4_check = global [6 x i32] zeroinitializer, align 16
@offset8x8_check = global [2 x i32] zeroinitializer, align 4
@OffsetBits = constant i32 11, align 4
@input = external global %struct.InputParameters*, align 8
@LevelOffset4x4Luma = common global i32**** null, align 8
@LevelOffset4x4Chroma = common global i32***** null, align 8
@LevelOffset8x8Luma = common global i32**** null, align 8
@OffsetList4x4input = common global i16** null, align 8
@OffsetList8x8input = common global i16** null, align 8
@OffsetList4x4 = common global i16** null, align 8
@OffsetList8x8 = common global i16** null, align 8
@OffsetType4x4 = internal constant [15 x [24 x i8]] [[24 x i8] c"INTRA4X4_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTRA\00\00", [24 x i8] c"INTRA4X4_CHROMAV_INTRA\00\00", [24 x i8] c"INTRA4X4_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTERP\00", [24 x i8] c"INTRA4X4_CHROMAV_INTERP\00", [24 x i8] c"INTRA4X4_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTERB\00", [24 x i8] c"INTRA4X4_CHROMAV_INTERB\00", [24 x i8] c"INTER4X4_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU_INTERP\00", [24 x i8] c"INTER4X4_CHROMAV_INTERP\00", [24 x i8] c"INTER4X4_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU_INTERB\00", [24 x i8] c"INTER4X4_CHROMAV_INTERB\00"], align 16
@OffsetType8x8 = internal constant [5 x [24 x i8]] [[24 x i8] c"INTRA8X8_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTER8X8_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTER8X8_LUMA_INTERB\00\00\00\00"], align 16
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Parsing Quantization Offset Matrix file %s \00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Offset_intra_default_intra = internal constant [16 x i16] [i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682], align 16
@Offset_intra_default_chroma = internal constant [16 x i16] [i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682], align 16
@Offset_intra_default_inter = internal constant [16 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 16
@Offset_inter_default = internal constant [16 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 16
@Offset8_intra_default_intra = internal constant [64 x i16] [i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682], align 16
@Offset8_intra_default_inter = internal constant [64 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 16
@Offset8_inter_default = internal constant [64 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 16
@img = external global %struct.ImageParameters*, align 8
@qp_per_matrix = external global i32*, align 8
@AdaptRndWeight = common global i32 0, align 4
@AdaptRndCrWeight = common global i32 0, align 4
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
define void @allocate_QOffsets() #0 {
entry:
  %max_qp_per_luma = alloca i32, align 4
  %max_qp_per_cr = alloca i32, align 4
  %max_qp_per = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 172
  %1 = load i32, i32* %BitDepthLuma, align 4
  %mul = mul nsw i32 6, %1
  %add = add nsw i32 3, %mul
  %sub = sub nsw i32 %add, 0
  %div = sdiv i32 %sub, 6
  %add1 = add nsw i32 %div, 1
  store i32 %add1, i32* %max_qp_per_luma, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthChroma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 173
  %3 = load i32, i32* %BitDepthChroma, align 4
  %mul2 = mul nsw i32 6, %3
  %add3 = add nsw i32 3, %mul2
  %sub4 = sub nsw i32 %add3, 0
  %div5 = sdiv i32 %sub4, 6
  %add6 = add nsw i32 %div5, 1
  store i32 %add6, i32* %max_qp_per_cr, align 4
  %4 = load i32, i32* %max_qp_per_luma, align 4
  %5 = load i32, i32* %max_qp_per_cr, align 4
  %call = call i32 @imax(i32 %4, i32 %5)
  store i32 %call, i32* %max_qp_per, align 4
  %6 = load i32, i32* %max_qp_per, align 4
  %call7 = call i32 @get_mem4Dint(i32***** @LevelOffset4x4Luma, i32 2, i32 %6, i32 4, i32 4)
  %7 = load i32, i32* %max_qp_per, align 4
  %call8 = call i32 @get_mem5Dint(i32****** @LevelOffset4x4Chroma, i32 2, i32 2, i32 %7, i32 4, i32 4)
  %8 = load i32, i32* %max_qp_per, align 4
  %call9 = call i32 @get_mem4Dint(i32***** @LevelOffset8x8Luma, i32 2, i32 %8, i32 8, i32 8)
  %call10 = call i32 @get_mem2Dshort(i16*** @OffsetList4x4input, i32 15, i32 16)
  %call11 = call i32 @get_mem2Dshort(i16*** @OffsetList8x8input, i32 5, i32 64)
  %call12 = call i32 @get_mem2Dshort(i16*** @OffsetList4x4, i32 15, i32 16)
  %call13 = call i32 @get_mem2Dshort(i16*** @OffsetList8x8, i32 5, i32 64)
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

declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #2

declare i32 @get_mem5Dint(i32******, i32, i32, i32, i32, i32) #2

declare i32 @get_mem2Dshort(i16***, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @free_QOffsets() #0 {
entry:
  %max_qp_per_luma = alloca i32, align 4
  %max_qp_per_cr = alloca i32, align 4
  %max_qp_per = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 172
  %1 = load i32, i32* %BitDepthLuma, align 4
  %mul = mul nsw i32 6, %1
  %add = add nsw i32 3, %mul
  %sub = sub nsw i32 %add, 0
  %div = sdiv i32 %sub, 6
  %add1 = add nsw i32 %div, 1
  store i32 %add1, i32* %max_qp_per_luma, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthChroma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 173
  %3 = load i32, i32* %BitDepthChroma, align 4
  %mul2 = mul nsw i32 6, %3
  %add3 = add nsw i32 3, %mul2
  %sub4 = sub nsw i32 %add3, 0
  %div5 = sdiv i32 %sub4, 6
  %add6 = add nsw i32 %div5, 1
  store i32 %add6, i32* %max_qp_per_cr, align 4
  %4 = load i32, i32* %max_qp_per_luma, align 4
  %5 = load i32, i32* %max_qp_per_cr, align 4
  %call = call i32 @imax(i32 %4, i32 %5)
  store i32 %call, i32* %max_qp_per, align 4
  %6 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %7 = load i32, i32* %max_qp_per, align 4
  call void @free_mem4Dint(i32**** %6, i32 2, i32 %7)
  %8 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %9 = load i32, i32* %max_qp_per, align 4
  call void @free_mem5Dint(i32***** %8, i32 2, i32 2, i32 %9)
  %10 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %11 = load i32, i32* %max_qp_per, align 4
  call void @free_mem4Dint(i32**** %10, i32 2, i32 %11)
  %12 = load i16**, i16*** @OffsetList8x8, align 8
  call void @free_mem2Dshort(i16** %12)
  %13 = load i16**, i16*** @OffsetList4x4, align 8
  call void @free_mem2Dshort(i16** %13)
  %14 = load i16**, i16*** @OffsetList8x8input, align 8
  call void @free_mem2Dshort(i16** %14)
  %15 = load i16**, i16*** @OffsetList4x4input, align 8
  call void @free_mem2Dshort(i16** %15)
  ret void
}

declare void @free_mem4Dint(i32****, i32, i32) #2

declare void @free_mem5Dint(i32*****, i32, i32, i32) #2

declare void @free_mem2Dshort(i16**) #2

; Function Attrs: nounwind uwtable
define i32 @CheckOffsetParameterName(i8* %s, i32* %type) #0 {
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
  %arrayidx = getelementptr inbounds [15 x [24 x i8]], [15 x [24 x i8]]* @OffsetType4x4, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %arrayidx, i32 0, i32 0
  %cmp = icmp ne i8* %arraydecay, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [15 x [24 x i8]], [15 x [24 x i8]]* @OffsetType4x4, i32 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [24 x i8], [24 x i8]* %arrayidx3, i32 0, i32 0
  %5 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* %arraydecay4, i8* %5) #6
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
  %arrayidx8 = getelementptr inbounds [5 x [24 x i8]], [5 x [24 x i8]]* @OffsetType8x8, i32 0, i64 %idxprom7
  %arraydecay9 = getelementptr inbounds [24 x i8], [24 x i8]* %arrayidx8, i32 0, i32 0
  %cmp10 = icmp ne i8* %arraydecay9, null
  br i1 %cmp10, label %land.rhs.11, label %land.end.13

land.rhs.11:                                      ; preds = %while.cond.6
  %10 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %10, 5
  br label %land.end.13

land.end.13:                                      ; preds = %land.rhs.11, %while.cond.6
  %11 = phi i1 [ false, %while.cond.6 ], [ %cmp12, %land.rhs.11 ]
  br i1 %11, label %while.body.14, label %while.end.24

while.body.14:                                    ; preds = %land.end.13
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [5 x [24 x i8]], [5 x [24 x i8]]* @OffsetType8x8, i32 0, i64 %idxprom15
  %arraydecay17 = getelementptr inbounds [24 x i8], [24 x i8]* %arrayidx16, i32 0, i32 0
  %13 = load i8*, i8** %s.addr, align 8
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* %13) #6
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
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @ParseQOffsetMatrix(i8* %buf, i32 %bufsize) #0 {
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
  %OffsetList = alloca i16*, align 8
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

for.cond:                                         ; preds = %for.inc.95, %while.end.34
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %item, align 4
  %cmp35 = icmp slt i32 %32, %33
  br i1 %cmp35, label %for.body, label %for.end.97

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %cnt, align 4
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %cnt, align 4
  %add = add nsw i32 %34, %35
  %idxprom37 = sext i32 %add to i64
  %arrayidx38 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom37
  %36 = load i8*, i8** %arrayidx38, align 8
  %call = call i32 @CheckOffsetParameterName(i8* %36, i32* %type)
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
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i32 0, i32 0), i8* %39) #5
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
  %call51 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %43) #6
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.46
  %call54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i32 0, i32 0)) #5
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
  %47 = load i16**, i16*** @OffsetList4x4input, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %47, i64 %idxprom59
  %48 = load i16*, i16** %arrayidx60, align 8
  store i16* %48, i16** %OffsetList, align 8
  %49 = load i32, i32* %MapIdx, align 4
  %idxprom61 = sext i32 %49 to i64
  %arrayidx62 = getelementptr inbounds [6 x i32], [6 x i32]* @offset4x4_check, i32 0, i64 %idxprom61
  store i32 1, i32* %arrayidx62, align 4
  br label %if.end.68

if.else.63:                                       ; preds = %if.end.55
  store i32 64, i32* %range, align 4
  %50 = load i32, i32* %MapIdx, align 4
  %idxprom64 = sext i32 %50 to i64
  %51 = load i16**, i16*** @OffsetList8x8input, align 8
  %arrayidx65 = getelementptr inbounds i16*, i16** %51, i64 %idxprom64
  %52 = load i16*, i16** %arrayidx65, align 8
  store i16* %52, i16** %OffsetList, align 8
  %53 = load i32, i32* %MapIdx, align 4
  %idxprom66 = sext i32 %53 to i64
  %arrayidx67 = getelementptr inbounds [2 x i32], [2 x i32]* @offset8x8_check, i32 0, i64 %idxprom66
  store i32 1, i32* %arrayidx67, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.63, %if.then.58
  store i32 0, i32* %j, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc, %if.end.68
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %range, align 4
  %cmp70 = icmp slt i32 %54, %55
  br i1 %cmp70, label %for.body.72, label %for.end

for.body.72:                                      ; preds = %for.cond.69
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %cnt, align 4
  %add73 = add nsw i32 %56, %57
  %58 = load i32, i32* %j, align 4
  %add74 = add nsw i32 %add73, %58
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom75
  %59 = load i8*, i8** %arrayidx76, align 8
  %call77 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %IntContent) #5
  %cmp78 = icmp ne i32 1, %call77
  br i1 %cmp78, label %if.then.80, label %if.end.88

if.then.80:                                       ; preds = %for.body.72
  %60 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %60 to i64
  %arrayidx82 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom81
  %61 = load i8*, i8** %arrayidx82, align 8
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %cnt, align 4
  %add83 = add nsw i32 %62, %63
  %64 = load i32, i32* %j, align 4
  %add84 = add nsw i32 %add83, %64
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom85
  %65 = load i8*, i8** %arrayidx86, align 8
  %call87 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i32 0, i32 0), i8* %61, i8* %65) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.80, %for.body.72
  %66 = load i32, i32* %IntContent, align 4
  %conv89 = trunc i32 %66 to i16
  %67 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %67 to i64
  %68 = load i16*, i16** %OffsetList, align 8
  %arrayidx91 = getelementptr inbounds i16, i16* %68, i64 %idxprom90
  store i16 %conv89, i16* %arrayidx91, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %69 = load i32, i32* %j, align 4
  %inc92 = add nsw i32 %69, 1
  store i32 %inc92, i32* %j, align 4
  br label %for.cond.69

for.end:                                          ; preds = %for.cond.69
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* %cnt, align 4
  %add93 = add nsw i32 %71, %70
  store i32 %add93, i32* %cnt, align 4
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end
  %72 = load i32, i32* %cnt, align 4
  %73 = load i32, i32* %i, align 4
  %add96 = add nsw i32 %73, %72
  store i32 %add96, i32* %i, align 4
  br label %for.cond

for.end.97:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

declare void @error(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @Init_QOffsetMatrix() #0 {
entry:
  %content = alloca i8*, align 8
  call void @allocate_QOffsets()
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 184
  %1 = load i32, i32* %OffsetMatrixPresentFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %QOffsetMatrixFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 183
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %QOffsetMatrixFile, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay)
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %QOffsetMatrixFile1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 183
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %QOffsetMatrixFile1, i32 0, i32 0
  %call3 = call i8* @GetConfigFileContent(i8* %arraydecay2, i32 0)
  store i8* %call3, i8** %content, align 8
  %4 = load i8*, i8** %content, align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %5 = load i8*, i8** %content, align 8
  %6 = load i8*, i8** %content, align 8
  %call5 = call i64 @strlen(i8* %6) #6
  %conv = trunc i64 %call5 to i32
  call void @ParseQOffsetMatrix(i8* %5, i32 %conv)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0))
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %OffsetMatrixPresentFlag7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 184
  store i32 0, i32* %OffsetMatrixPresentFlag7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %8 = load i8*, i8** %content, align 8
  call void @free(i8* %8) #5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  call void @InitOffsetParam()
  ret void
}

declare i8* @GetConfigFileContent(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @InitOffsetParam() #0 {
entry:
  %k = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 184
  %1 = load i32, i32* %OffsetMatrixPresentFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %2, i64 0
  %3 = load i16*, i16** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 0
  %4 = bitcast i16* %arrayidx1 to i8*
  %5 = load i16**, i16*** @OffsetList4x4input, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %5, i64 0
  %6 = load i16*, i16** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = bitcast i16* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %7, i64 480, i32 2, i1 false)
  %8 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx4 = getelementptr inbounds i16*, i16** %8, i64 0
  %9 = load i16*, i16** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %9, i64 0
  %10 = bitcast i16* %arrayidx5 to i8*
  %11 = load i16**, i16*** @OffsetList8x8input, align 8
  %arrayidx6 = getelementptr inbounds i16*, i16** %11, i64 0
  %12 = load i16*, i16** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %12, i64 0
  %13 = bitcast i16* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %13, i64 640, i32 2, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %14, i64 0
  %15 = load i16*, i16** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %15, i64 0
  %16 = bitcast i16* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([16 x i16]* @Offset_intra_default_intra to i8*), i64 32, i32 2, i1 false)
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %17 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %17, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %k, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx10 = getelementptr inbounds i16*, i16** %19, i64 %idxprom
  %20 = load i16*, i16** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %20, i64 0
  %21 = bitcast i16* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([16 x i16]* @Offset_intra_default_chroma to i8*), i64 32, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 3, i32* %k, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.18, %for.end
  %23 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %23, 9
  br i1 %cmp13, label %for.body.14, label %for.end.20

for.body.14:                                      ; preds = %for.cond.12
  %24 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx16 = getelementptr inbounds i16*, i16** %25, i64 %idxprom15
  %26 = load i16*, i16** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %26, i64 0
  %27 = bitcast i16* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([16 x i16]* @Offset_intra_default_inter to i8*), i64 32, i32 2, i1 false)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.14
  %28 = load i32, i32* %k, align 4
  %inc19 = add nsw i32 %28, 1
  store i32 %inc19, i32* %k, align 4
  br label %for.cond.12

for.end.20:                                       ; preds = %for.cond.12
  store i32 9, i32* %k, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.27, %for.end.20
  %29 = load i32, i32* %k, align 4
  %cmp22 = icmp slt i32 %29, 15
  br i1 %cmp22, label %for.body.23, label %for.end.29

for.body.23:                                      ; preds = %for.cond.21
  %30 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx25 = getelementptr inbounds i16*, i16** %31, i64 %idxprom24
  %32 = load i16*, i16** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %32, i64 0
  %33 = bitcast i16* %arrayidx26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* bitcast ([16 x i16]* @Offset_inter_default to i8*), i64 32, i32 2, i1 false)
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.23
  %34 = load i32, i32* %k, align 4
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, i32* %k, align 4
  br label %for.cond.21

for.end.29:                                       ; preds = %for.cond.21
  %35 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx30 = getelementptr inbounds i16*, i16** %35, i64 0
  %36 = load i16*, i16** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %36, i64 0
  %37 = bitcast i16* %arrayidx31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* bitcast ([64 x i16]* @Offset8_intra_default_intra to i8*), i64 128, i32 2, i1 false)
  %38 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx32 = getelementptr inbounds i16*, i16** %38, i64 1
  %39 = load i16*, i16** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %39, i64 0
  %40 = bitcast i16* %arrayidx33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast ([64 x i16]* @Offset8_intra_default_inter to i8*), i64 128, i32 2, i1 false)
  %41 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx34 = getelementptr inbounds i16*, i16** %41, i64 2
  %42 = load i16*, i16** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %42, i64 0
  %43 = bitcast i16* %arrayidx35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast ([64 x i16]* @Offset8_intra_default_inter to i8*), i64 128, i32 2, i1 false)
  %44 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx36 = getelementptr inbounds i16*, i16** %44, i64 3
  %45 = load i16*, i16** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %45, i64 0
  %46 = bitcast i16* %arrayidx37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* bitcast ([64 x i16]* @Offset8_inter_default to i8*), i64 128, i32 2, i1 false)
  %47 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx38 = getelementptr inbounds i16*, i16** %47, i64 4
  %48 = load i16*, i16** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %48, i64 0
  %49 = bitcast i16* %arrayidx39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast ([64 x i16]* @Offset8_inter_default to i8*), i64 128, i32 2, i1 false)
  br label %if.end

if.end:                                           ; preds = %for.end.29, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @CalculateOffsetParam() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %qp_per = alloca i32, align 4
  %img_type = alloca i32, align 4
  %max_qp_per_luma = alloca i32, align 4
  %max_qp_per_cr = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 5
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 5
  %5 = load i32, i32* %type5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi i32 [ 0, %cond.true.3 ], [ %5, %cond.false.4 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ 2, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond7, i32* %img_type, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 144
  %7 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %add = add nsw i32 51, %7
  %sub = sub nsw i32 %add, 0
  %idxprom = sext i32 %sub to i64
  %8 = load i32*, i32** @qp_per_matrix, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %add8 = add nsw i32 %9, 1
  store i32 %add8, i32* %max_qp_per_luma, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 145
  %11 = load i32, i32* %bitdepth_chroma_qp_scale, align 4
  %add9 = add nsw i32 51, %11
  %sub10 = sub nsw i32 %add9, 0
  %idxprom11 = sext i32 %sub10 to i64
  %12 = load i32*, i32** @qp_per_matrix, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 %idxprom11
  %13 = load i32, i32* %arrayidx12, align 4
  %add13 = add nsw i32 %13, 1
  store i32 %add13, i32* %max_qp_per_cr, align 4
  %14 = load i32, i32* %img_type, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 122
  %16 = load i32, i32* %nal_reference_idc, align 4
  %cmp15 = icmp ne i32 %16, 0
  %conv = zext i1 %cmp15 to i32
  %idxprom16 = sext i32 %conv to i64
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AdaptRndWFactor = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 188
  %arrayidx17 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %AdaptRndWFactor, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx17, i32 0, i64 %idxprom14
  %18 = load i32, i32* %arrayidx18, align 4
  store i32 %18, i32* @AdaptRndWeight, align 4
  %19 = load i32, i32* %img_type, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 122
  %21 = load i32, i32* %nal_reference_idc20, align 4
  %cmp21 = icmp ne i32 %21, 0
  %conv22 = zext i1 %cmp21 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AdaptRndCrWFactor = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 189
  %arrayidx24 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %AdaptRndCrWFactor, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx24, i32 0, i64 %idxprom19
  %23 = load i32, i32* %arrayidx25, align 4
  store i32 %23, i32* @AdaptRndCrWeight, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.244, %cond.end.6
  %24 = load i32, i32* %k, align 4
  %25 = load i32, i32* %max_qp_per_luma, align 4
  %26 = load i32, i32* %max_qp_per_cr, align 4
  %call = call i32 @imax(i32 %25, i32 %26)
  %cmp26 = icmp slt i32 %24, %call
  br i1 %cmp26, label %for.body, label %for.end.246

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %k, align 4
  %add28 = add nsw i32 15, %27
  %sub29 = sub nsw i32 %add28, 11
  store i32 %sub29, i32* %qp_per, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.241, %for.body
  %28 = load i32, i32* %j, align 4
  %cmp31 = icmp slt i32 %28, 4
  br i1 %cmp31, label %for.body.33, label %for.end.243

for.body.33:                                      ; preds = %for.cond.30
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %for.body.33
  %29 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %29, 4
  br i1 %cmp35, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.34
  %30 = load i32, i32* %j, align 4
  %shl = shl i32 %30, 2
  %31 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %shl, %31
  store i32 %add38, i32* %temp, align 4
  %32 = load i32, i32* %img_type, align 4
  %cmp39 = icmp eq i32 %32, 2
  br i1 %cmp39, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.37
  %33 = load i32, i32* %temp, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx42 = getelementptr inbounds i16*, i16** %34, i64 0
  %35 = load i16*, i16** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %35, i64 %idxprom41
  %36 = load i16, i16* %arrayidx43, align 2
  %conv44 = sext i16 %36 to i32
  %37 = load i32, i32* %qp_per, align 4
  %shl45 = shl i32 %conv44, %37
  %38 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %38 to i64
  %39 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %39 to i64
  %40 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %40 to i64
  %41 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %arrayidx49 = getelementptr inbounds i32***, i32**** %41, i64 1
  %42 = load i32***, i32**** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i32**, i32*** %42, i64 %idxprom48
  %43 = load i32**, i32*** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %43, i64 %idxprom47
  %44 = load i32*, i32** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %44, i64 %idxprom46
  store i32 %shl45, i32* %arrayidx52, align 4
  %45 = load i32, i32* %temp, align 4
  %idxprom53 = sext i32 %45 to i64
  %46 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx54 = getelementptr inbounds i16*, i16** %46, i64 1
  %47 = load i16*, i16** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %47, i64 %idxprom53
  %48 = load i16, i16* %arrayidx55, align 2
  %conv56 = sext i16 %48 to i32
  %49 = load i32, i32* %qp_per, align 4
  %shl57 = shl i32 %conv56, %49
  %50 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %50 to i64
  %51 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %51 to i64
  %52 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %52 to i64
  %53 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %arrayidx61 = getelementptr inbounds i32****, i32***** %53, i64 0
  %54 = load i32****, i32***** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i32***, i32**** %54, i64 1
  %55 = load i32***, i32**** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i32**, i32*** %55, i64 %idxprom60
  %56 = load i32**, i32*** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i32*, i32** %56, i64 %idxprom59
  %57 = load i32*, i32** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %57, i64 %idxprom58
  store i32 %shl57, i32* %arrayidx65, align 4
  %58 = load i32, i32* %temp, align 4
  %idxprom66 = sext i32 %58 to i64
  %59 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx67 = getelementptr inbounds i16*, i16** %59, i64 2
  %60 = load i16*, i16** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %60, i64 %idxprom66
  %61 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %61 to i32
  %62 = load i32, i32* %qp_per, align 4
  %shl70 = shl i32 %conv69, %62
  %63 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %63 to i64
  %64 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %64 to i64
  %65 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %65 to i64
  %66 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %arrayidx74 = getelementptr inbounds i32****, i32***** %66, i64 1
  %67 = load i32****, i32***** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i32***, i32**** %67, i64 1
  %68 = load i32***, i32**** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i32**, i32*** %68, i64 %idxprom73
  %69 = load i32**, i32*** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i32*, i32** %69, i64 %idxprom72
  %70 = load i32*, i32** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %70, i64 %idxprom71
  store i32 %shl70, i32* %arrayidx78, align 4
  br label %if.end.159

if.else:                                          ; preds = %for.body.37
  %71 = load i32, i32* %img_type, align 4
  %cmp79 = icmp eq i32 %71, 1
  br i1 %cmp79, label %if.then.81, label %if.else.120

if.then.81:                                       ; preds = %if.else
  %72 = load i32, i32* %temp, align 4
  %idxprom82 = sext i32 %72 to i64
  %73 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx83 = getelementptr inbounds i16*, i16** %73, i64 6
  %74 = load i16*, i16** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i16, i16* %74, i64 %idxprom82
  %75 = load i16, i16* %arrayidx84, align 2
  %conv85 = sext i16 %75 to i32
  %76 = load i32, i32* %qp_per, align 4
  %shl86 = shl i32 %conv85, %76
  %77 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %77 to i64
  %78 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %78 to i64
  %79 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %79 to i64
  %80 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %arrayidx90 = getelementptr inbounds i32***, i32**** %80, i64 1
  %81 = load i32***, i32**** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i32**, i32*** %81, i64 %idxprom89
  %82 = load i32**, i32*** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32*, i32** %82, i64 %idxprom88
  %83 = load i32*, i32** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %83, i64 %idxprom87
  store i32 %shl86, i32* %arrayidx93, align 4
  %84 = load i32, i32* %temp, align 4
  %idxprom94 = sext i32 %84 to i64
  %85 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx95 = getelementptr inbounds i16*, i16** %85, i64 7
  %86 = load i16*, i16** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %86, i64 %idxprom94
  %87 = load i16, i16* %arrayidx96, align 2
  %conv97 = sext i16 %87 to i32
  %88 = load i32, i32* %qp_per, align 4
  %shl98 = shl i32 %conv97, %88
  %89 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %89 to i64
  %90 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %90 to i64
  %91 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %91 to i64
  %92 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %arrayidx102 = getelementptr inbounds i32****, i32***** %92, i64 0
  %93 = load i32****, i32***** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i32***, i32**** %93, i64 1
  %94 = load i32***, i32**** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i32**, i32*** %94, i64 %idxprom101
  %95 = load i32**, i32*** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i32*, i32** %95, i64 %idxprom100
  %96 = load i32*, i32** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %96, i64 %idxprom99
  store i32 %shl98, i32* %arrayidx106, align 4
  %97 = load i32, i32* %temp, align 4
  %idxprom107 = sext i32 %97 to i64
  %98 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx108 = getelementptr inbounds i16*, i16** %98, i64 8
  %99 = load i16*, i16** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i16, i16* %99, i64 %idxprom107
  %100 = load i16, i16* %arrayidx109, align 2
  %conv110 = sext i16 %100 to i32
  %101 = load i32, i32* %qp_per, align 4
  %shl111 = shl i32 %conv110, %101
  %102 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %102 to i64
  %103 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %103 to i64
  %104 = load i32, i32* %k, align 4
  %idxprom114 = sext i32 %104 to i64
  %105 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %arrayidx115 = getelementptr inbounds i32****, i32***** %105, i64 1
  %106 = load i32****, i32***** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i32***, i32**** %106, i64 1
  %107 = load i32***, i32**** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i32**, i32*** %107, i64 %idxprom114
  %108 = load i32**, i32*** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i32*, i32** %108, i64 %idxprom113
  %109 = load i32*, i32** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %109, i64 %idxprom112
  store i32 %shl111, i32* %arrayidx119, align 4
  br label %if.end

if.else.120:                                      ; preds = %if.else
  %110 = load i32, i32* %temp, align 4
  %idxprom121 = sext i32 %110 to i64
  %111 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx122 = getelementptr inbounds i16*, i16** %111, i64 3
  %112 = load i16*, i16** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i16, i16* %112, i64 %idxprom121
  %113 = load i16, i16* %arrayidx123, align 2
  %conv124 = sext i16 %113 to i32
  %114 = load i32, i32* %qp_per, align 4
  %shl125 = shl i32 %conv124, %114
  %115 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %115 to i64
  %116 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %116 to i64
  %117 = load i32, i32* %k, align 4
  %idxprom128 = sext i32 %117 to i64
  %118 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %arrayidx129 = getelementptr inbounds i32***, i32**** %118, i64 1
  %119 = load i32***, i32**** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i32**, i32*** %119, i64 %idxprom128
  %120 = load i32**, i32*** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i32*, i32** %120, i64 %idxprom127
  %121 = load i32*, i32** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %121, i64 %idxprom126
  store i32 %shl125, i32* %arrayidx132, align 4
  %122 = load i32, i32* %temp, align 4
  %idxprom133 = sext i32 %122 to i64
  %123 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx134 = getelementptr inbounds i16*, i16** %123, i64 4
  %124 = load i16*, i16** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i16, i16* %124, i64 %idxprom133
  %125 = load i16, i16* %arrayidx135, align 2
  %conv136 = sext i16 %125 to i32
  %126 = load i32, i32* %qp_per, align 4
  %shl137 = shl i32 %conv136, %126
  %127 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %127 to i64
  %128 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %128 to i64
  %129 = load i32, i32* %k, align 4
  %idxprom140 = sext i32 %129 to i64
  %130 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %arrayidx141 = getelementptr inbounds i32****, i32***** %130, i64 0
  %131 = load i32****, i32***** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i32***, i32**** %131, i64 1
  %132 = load i32***, i32**** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i32**, i32*** %132, i64 %idxprom140
  %133 = load i32**, i32*** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds i32*, i32** %133, i64 %idxprom139
  %134 = load i32*, i32** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %134, i64 %idxprom138
  store i32 %shl137, i32* %arrayidx145, align 4
  %135 = load i32, i32* %temp, align 4
  %idxprom146 = sext i32 %135 to i64
  %136 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx147 = getelementptr inbounds i16*, i16** %136, i64 5
  %137 = load i16*, i16** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i16, i16* %137, i64 %idxprom146
  %138 = load i16, i16* %arrayidx148, align 2
  %conv149 = sext i16 %138 to i32
  %139 = load i32, i32* %qp_per, align 4
  %shl150 = shl i32 %conv149, %139
  %140 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %140 to i64
  %141 = load i32, i32* %j, align 4
  %idxprom152 = sext i32 %141 to i64
  %142 = load i32, i32* %k, align 4
  %idxprom153 = sext i32 %142 to i64
  %143 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %arrayidx154 = getelementptr inbounds i32****, i32***** %143, i64 1
  %144 = load i32****, i32***** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i32***, i32**** %144, i64 1
  %145 = load i32***, i32**** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds i32**, i32*** %145, i64 %idxprom153
  %146 = load i32**, i32*** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds i32*, i32** %146, i64 %idxprom152
  %147 = load i32*, i32** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %147, i64 %idxprom151
  store i32 %shl150, i32* %arrayidx158, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.120, %if.then.81
  br label %if.end.159

if.end.159:                                       ; preds = %if.end, %if.then
  %148 = load i32, i32* %img_type, align 4
  %cmp160 = icmp eq i32 %148, 1
  br i1 %cmp160, label %if.then.162, label %if.else.201

if.then.162:                                      ; preds = %if.end.159
  %149 = load i32, i32* %temp, align 4
  %idxprom163 = sext i32 %149 to i64
  %150 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx164 = getelementptr inbounds i16*, i16** %150, i64 12
  %151 = load i16*, i16** %arrayidx164, align 8
  %arrayidx165 = getelementptr inbounds i16, i16* %151, i64 %idxprom163
  %152 = load i16, i16* %arrayidx165, align 2
  %conv166 = sext i16 %152 to i32
  %153 = load i32, i32* %qp_per, align 4
  %shl167 = shl i32 %conv166, %153
  %154 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %154 to i64
  %155 = load i32, i32* %j, align 4
  %idxprom169 = sext i32 %155 to i64
  %156 = load i32, i32* %k, align 4
  %idxprom170 = sext i32 %156 to i64
  %157 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %arrayidx171 = getelementptr inbounds i32***, i32**** %157, i64 0
  %158 = load i32***, i32**** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds i32**, i32*** %158, i64 %idxprom170
  %159 = load i32**, i32*** %arrayidx172, align 8
  %arrayidx173 = getelementptr inbounds i32*, i32** %159, i64 %idxprom169
  %160 = load i32*, i32** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %160, i64 %idxprom168
  store i32 %shl167, i32* %arrayidx174, align 4
  %161 = load i32, i32* %temp, align 4
  %idxprom175 = sext i32 %161 to i64
  %162 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx176 = getelementptr inbounds i16*, i16** %162, i64 13
  %163 = load i16*, i16** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds i16, i16* %163, i64 %idxprom175
  %164 = load i16, i16* %arrayidx177, align 2
  %conv178 = sext i16 %164 to i32
  %165 = load i32, i32* %qp_per, align 4
  %shl179 = shl i32 %conv178, %165
  %166 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %166 to i64
  %167 = load i32, i32* %j, align 4
  %idxprom181 = sext i32 %167 to i64
  %168 = load i32, i32* %k, align 4
  %idxprom182 = sext i32 %168 to i64
  %169 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %arrayidx183 = getelementptr inbounds i32****, i32***** %169, i64 0
  %170 = load i32****, i32***** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds i32***, i32**** %170, i64 0
  %171 = load i32***, i32**** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32**, i32*** %171, i64 %idxprom182
  %172 = load i32**, i32*** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i32*, i32** %172, i64 %idxprom181
  %173 = load i32*, i32** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %173, i64 %idxprom180
  store i32 %shl179, i32* %arrayidx187, align 4
  %174 = load i32, i32* %temp, align 4
  %idxprom188 = sext i32 %174 to i64
  %175 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx189 = getelementptr inbounds i16*, i16** %175, i64 14
  %176 = load i16*, i16** %arrayidx189, align 8
  %arrayidx190 = getelementptr inbounds i16, i16* %176, i64 %idxprom188
  %177 = load i16, i16* %arrayidx190, align 2
  %conv191 = sext i16 %177 to i32
  %178 = load i32, i32* %qp_per, align 4
  %shl192 = shl i32 %conv191, %178
  %179 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %179 to i64
  %180 = load i32, i32* %j, align 4
  %idxprom194 = sext i32 %180 to i64
  %181 = load i32, i32* %k, align 4
  %idxprom195 = sext i32 %181 to i64
  %182 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %arrayidx196 = getelementptr inbounds i32****, i32***** %182, i64 1
  %183 = load i32****, i32***** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i32***, i32**** %183, i64 0
  %184 = load i32***, i32**** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds i32**, i32*** %184, i64 %idxprom195
  %185 = load i32**, i32*** %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds i32*, i32** %185, i64 %idxprom194
  %186 = load i32*, i32** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %186, i64 %idxprom193
  store i32 %shl192, i32* %arrayidx200, align 4
  br label %if.end.240

if.else.201:                                      ; preds = %if.end.159
  %187 = load i32, i32* %temp, align 4
  %idxprom202 = sext i32 %187 to i64
  %188 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx203 = getelementptr inbounds i16*, i16** %188, i64 9
  %189 = load i16*, i16** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i16, i16* %189, i64 %idxprom202
  %190 = load i16, i16* %arrayidx204, align 2
  %conv205 = sext i16 %190 to i32
  %191 = load i32, i32* %qp_per, align 4
  %shl206 = shl i32 %conv205, %191
  %192 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %192 to i64
  %193 = load i32, i32* %j, align 4
  %idxprom208 = sext i32 %193 to i64
  %194 = load i32, i32* %k, align 4
  %idxprom209 = sext i32 %194 to i64
  %195 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %arrayidx210 = getelementptr inbounds i32***, i32**** %195, i64 0
  %196 = load i32***, i32**** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i32**, i32*** %196, i64 %idxprom209
  %197 = load i32**, i32*** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i32*, i32** %197, i64 %idxprom208
  %198 = load i32*, i32** %arrayidx212, align 8
  %arrayidx213 = getelementptr inbounds i32, i32* %198, i64 %idxprom207
  store i32 %shl206, i32* %arrayidx213, align 4
  %199 = load i32, i32* %temp, align 4
  %idxprom214 = sext i32 %199 to i64
  %200 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx215 = getelementptr inbounds i16*, i16** %200, i64 10
  %201 = load i16*, i16** %arrayidx215, align 8
  %arrayidx216 = getelementptr inbounds i16, i16* %201, i64 %idxprom214
  %202 = load i16, i16* %arrayidx216, align 2
  %conv217 = sext i16 %202 to i32
  %203 = load i32, i32* %qp_per, align 4
  %shl218 = shl i32 %conv217, %203
  %204 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %204 to i64
  %205 = load i32, i32* %j, align 4
  %idxprom220 = sext i32 %205 to i64
  %206 = load i32, i32* %k, align 4
  %idxprom221 = sext i32 %206 to i64
  %207 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %arrayidx222 = getelementptr inbounds i32****, i32***** %207, i64 0
  %208 = load i32****, i32***** %arrayidx222, align 8
  %arrayidx223 = getelementptr inbounds i32***, i32**** %208, i64 0
  %209 = load i32***, i32**** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i32**, i32*** %209, i64 %idxprom221
  %210 = load i32**, i32*** %arrayidx224, align 8
  %arrayidx225 = getelementptr inbounds i32*, i32** %210, i64 %idxprom220
  %211 = load i32*, i32** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %211, i64 %idxprom219
  store i32 %shl218, i32* %arrayidx226, align 4
  %212 = load i32, i32* %temp, align 4
  %idxprom227 = sext i32 %212 to i64
  %213 = load i16**, i16*** @OffsetList4x4, align 8
  %arrayidx228 = getelementptr inbounds i16*, i16** %213, i64 11
  %214 = load i16*, i16** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds i16, i16* %214, i64 %idxprom227
  %215 = load i16, i16* %arrayidx229, align 2
  %conv230 = sext i16 %215 to i32
  %216 = load i32, i32* %qp_per, align 4
  %shl231 = shl i32 %conv230, %216
  %217 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %217 to i64
  %218 = load i32, i32* %j, align 4
  %idxprom233 = sext i32 %218 to i64
  %219 = load i32, i32* %k, align 4
  %idxprom234 = sext i32 %219 to i64
  %220 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %arrayidx235 = getelementptr inbounds i32****, i32***** %220, i64 1
  %221 = load i32****, i32***** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds i32***, i32**** %221, i64 0
  %222 = load i32***, i32**** %arrayidx236, align 8
  %arrayidx237 = getelementptr inbounds i32**, i32*** %222, i64 %idxprom234
  %223 = load i32**, i32*** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i32*, i32** %223, i64 %idxprom233
  %224 = load i32*, i32** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %224, i64 %idxprom232
  store i32 %shl231, i32* %arrayidx239, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.201, %if.then.162
  br label %for.inc

for.inc:                                          ; preds = %if.end.240
  %225 = load i32, i32* %i, align 4
  %inc = add nsw i32 %225, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.34

for.end:                                          ; preds = %for.cond.34
  br label %for.inc.241

for.inc.241:                                      ; preds = %for.end
  %226 = load i32, i32* %j, align 4
  %inc242 = add nsw i32 %226, 1
  store i32 %inc242, i32* %j, align 4
  br label %for.cond.30

for.end.243:                                      ; preds = %for.cond.30
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.end.243
  %227 = load i32, i32* %k, align 4
  %inc245 = add nsw i32 %227, 1
  store i32 %inc245, i32* %k, align 4
  br label %for.cond

for.end.246:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @CalculateOffset8Param() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %q_bits = alloca i32, align 4
  %max_qp_per_luma = alloca i32, align 4
  %max_qp_per_cr = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 144
  %1 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %add = add nsw i32 51, %1
  %sub = sub nsw i32 %add, 0
  %idxprom = sext i32 %sub to i64
  %2 = load i32*, i32** @qp_per_matrix, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add1 = add nsw i32 %3, 1
  store i32 %add1, i32* %max_qp_per_luma, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 145
  %5 = load i32, i32* %bitdepth_chroma_qp_scale, align 4
  %add2 = add nsw i32 51, %5
  %sub3 = sub nsw i32 %add2, 0
  %idxprom4 = sext i32 %sub3 to i64
  %6 = load i32*, i32** @qp_per_matrix, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %7, 1
  store i32 %add6, i32* %max_qp_per_cr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %entry
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %max_qp_per_luma, align 4
  %10 = load i32, i32* %max_qp_per_cr, align 4
  %call = call i32 @imax(i32 %9, i32 %10)
  %cmp = icmp slt i32 %8, %call
  br i1 %cmp, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %k, align 4
  %add7 = add nsw i32 16, %11
  %sub8 = sub nsw i32 %add7, 11
  store i32 %sub8, i32* %q_bits, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.88, %for.body
  %12 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %12, 8
  br i1 %cmp10, label %for.body.11, label %for.end.90

for.body.11:                                      ; preds = %for.cond.9
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body.11
  %13 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %13, 8
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %14 = load i32, i32* %j, align 4
  %shl = shl i32 %14, 3
  %15 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %shl, %15
  store i32 %add15, i32* %temp, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 5
  %17 = load i32, i32* %type, align 4
  %cmp16 = icmp eq i32 %17, 2
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.14
  %18 = load i32, i32* %temp, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx18 = getelementptr inbounds i16*, i16** %19, i64 0
  %20 = load i16*, i16** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %20, i64 %idxprom17
  %21 = load i16, i16* %arrayidx19, align 2
  %conv = sext i16 %21 to i32
  %22 = load i32, i32* %q_bits, align 4
  %shl20 = shl i32 %conv, %22
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %25 to i64
  %26 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %arrayidx24 = getelementptr inbounds i32***, i32**** %26, i64 1
  %27 = load i32***, i32**** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i32**, i32*** %27, i64 %idxprom23
  %28 = load i32**, i32*** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %28, i64 %idxprom22
  %29 = load i32*, i32** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %29, i64 %idxprom21
  store i32 %shl20, i32* %arrayidx27, align 4
  br label %if.end.57

if.else:                                          ; preds = %for.body.14
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 5
  %31 = load i32, i32* %type28, align 4
  %cmp29 = icmp eq i32 %31, 1
  br i1 %cmp29, label %if.then.31, label %if.else.44

if.then.31:                                       ; preds = %if.else
  %32 = load i32, i32* %temp, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx33 = getelementptr inbounds i16*, i16** %33, i64 2
  %34 = load i16*, i16** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %34, i64 %idxprom32
  %35 = load i16, i16* %arrayidx34, align 2
  %conv35 = sext i16 %35 to i32
  %36 = load i32, i32* %q_bits, align 4
  %shl36 = shl i32 %conv35, %36
  %37 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %37 to i64
  %38 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %38 to i64
  %39 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %39 to i64
  %40 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %arrayidx40 = getelementptr inbounds i32***, i32**** %40, i64 1
  %41 = load i32***, i32**** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32**, i32*** %41, i64 %idxprom39
  %42 = load i32**, i32*** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %42, i64 %idxprom38
  %43 = load i32*, i32** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %43, i64 %idxprom37
  store i32 %shl36, i32* %arrayidx43, align 4
  br label %if.end

if.else.44:                                       ; preds = %if.else
  %44 = load i32, i32* %temp, align 4
  %idxprom45 = sext i32 %44 to i64
  %45 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx46 = getelementptr inbounds i16*, i16** %45, i64 1
  %46 = load i16*, i16** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %46, i64 %idxprom45
  %47 = load i16, i16* %arrayidx47, align 2
  %conv48 = sext i16 %47 to i32
  %48 = load i32, i32* %q_bits, align 4
  %shl49 = shl i32 %conv48, %48
  %49 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %49 to i64
  %50 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %50 to i64
  %51 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %51 to i64
  %52 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %arrayidx53 = getelementptr inbounds i32***, i32**** %52, i64 1
  %53 = load i32***, i32**** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32**, i32*** %53, i64 %idxprom52
  %54 = load i32**, i32*** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %54, i64 %idxprom51
  %55 = load i32*, i32** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %55, i64 %idxprom50
  store i32 %shl49, i32* %arrayidx56, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.44, %if.then.31
  br label %if.end.57

if.end.57:                                        ; preds = %if.end, %if.then
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 5
  %57 = load i32, i32* %type58, align 4
  %cmp59 = icmp eq i32 %57, 1
  br i1 %cmp59, label %if.then.61, label %if.else.74

if.then.61:                                       ; preds = %if.end.57
  %58 = load i32, i32* %temp, align 4
  %idxprom62 = sext i32 %58 to i64
  %59 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx63 = getelementptr inbounds i16*, i16** %59, i64 4
  %60 = load i16*, i16** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i16, i16* %60, i64 %idxprom62
  %61 = load i16, i16* %arrayidx64, align 2
  %conv65 = sext i16 %61 to i32
  %62 = load i32, i32* %q_bits, align 4
  %shl66 = shl i32 %conv65, %62
  %63 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %63 to i64
  %64 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %64 to i64
  %65 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %65 to i64
  %66 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %arrayidx70 = getelementptr inbounds i32***, i32**** %66, i64 0
  %67 = load i32***, i32**** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32**, i32*** %67, i64 %idxprom69
  %68 = load i32**, i32*** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32*, i32** %68, i64 %idxprom68
  %69 = load i32*, i32** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %69, i64 %idxprom67
  store i32 %shl66, i32* %arrayidx73, align 4
  br label %if.end.87

if.else.74:                                       ; preds = %if.end.57
  %70 = load i32, i32* %temp, align 4
  %idxprom75 = sext i32 %70 to i64
  %71 = load i16**, i16*** @OffsetList8x8, align 8
  %arrayidx76 = getelementptr inbounds i16*, i16** %71, i64 3
  %72 = load i16*, i16** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i16, i16* %72, i64 %idxprom75
  %73 = load i16, i16* %arrayidx77, align 2
  %conv78 = sext i16 %73 to i32
  %74 = load i32, i32* %q_bits, align 4
  %shl79 = shl i32 %conv78, %74
  %75 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %75 to i64
  %76 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %76 to i64
  %77 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %77 to i64
  %78 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %arrayidx83 = getelementptr inbounds i32***, i32**** %78, i64 0
  %79 = load i32***, i32**** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32**, i32*** %79, i64 %idxprom82
  %80 = load i32**, i32*** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %80, i64 %idxprom81
  %81 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %81, i64 %idxprom80
  store i32 %shl79, i32* %arrayidx86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.74, %if.then.61
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %82 = load i32, i32* %i, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end
  %83 = load i32, i32* %j, align 4
  %inc89 = add nsw i32 %83, 1
  store i32 %inc89, i32* %j, align 4
  br label %for.cond.9

for.end.90:                                       ; preds = %for.cond.9
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.90
  %84 = load i32, i32* %k, align 4
  %inc92 = add nsw i32 %84, 1
  store i32 %inc92, i32* %k, align 4
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
