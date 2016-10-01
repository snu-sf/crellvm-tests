; ModuleID = './MultiSource.Applications.JM/52.lencod.slice.bc'
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
%struct.StatParameters = type { i32, i32, float, float, i64, i64, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, i32*, i32*, i64, i64, i64, float, float, float, [5 x [15 x i64]], [5 x [15 x i64]], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], i32, i32, i32*, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rc_quadratic = type { float, float, float, double, double, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, double*, double*, double*, double*, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32 }
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, i8, i8** }
%struct.EPZSColocParams = type { i32, i32, i32, i16****, i16****, i16**** }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)* }

@img = external global %struct.ImageParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@terminate_slice.MbWidthC = internal global [4 x i32] [i32 0, i32 8, i32 8, i32 16], align 16
@terminate_slice.MbHeightC = internal global [4 x i32] [i32 0, i32 8, i32 16, i32 16], align 16
@stats = external global %struct.StatParameters*, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"CABAC stuffing words = %6d\0A\00", align 1
@Bytes_After_Header = common global i32 0, align 4
@generic_RC = common global %struct.rc_generic* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@encode_one_macroblock = common global void ()* null, align 8
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [84 x i8] c"Error encoding first MB with specified parameter, bits of current MB may be too big\00", align 1
@quadratic_RC_init = common global %struct.rc_quadratic* null, align 8
@quadratic_RC = common global %struct.rc_quadratic* null, align 8
@generic_RC_init = common global %struct.rc_generic* null, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@quadratic_RC_best = common global %struct.rc_quadratic* null, align 8
@generic_RC_best = common global %struct.rc_generic* null, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@MBPairIsField = common global i32 0, align 4
@log2_max_frame_num_minus4 = common global i32 0, align 4
@dpb = external global %struct.decoded_picture_buffer, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@gop_structure = common global %struct.GOP_DATA* null, align 8
@QP2QUANT = external constant [40 x i32], align 16
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
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
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
@p_stat = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_trace = common global %struct._IO_FILE* null, align 8
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@mb16x16_cost_frame = common global double* null, align 8
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
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@delta_qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@updateQP = common global i32 (%struct.rc_quadratic*, i32)* null, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"Too many slices per picture, increase MAXSLICEPERPICTURE in global.h.\00", align 1
@listXsize = external global [6 x i32], align 16
@listX = external global [6 x %struct.storable_picture**], align 16
@enc_frame_picture2 = external global %struct.storable_picture*, align 8
@Co_located = external global %struct.colocated_params*, align 8
@EPZSCo_located = external global %struct.EPZSColocParams*, align 8
@writeMB_typeInfo = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeIntraPredMode = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeB8_typeInfo = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeRefFrame = external global [6 x void (%struct.syntaxelement*, %struct.datapartition*)*], align 16
@writeMVD = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeCBP = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeDquant = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeCIPredMode = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeFieldModeInfo = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeMB_transform_size = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"malloc_slice: slice structure\00", align 1
@assignSE2partition_NoDP = external global [18 x i32], align 16
@assignSE2partition = external global [2 x i32*], align 16
@assignSE2partition_DP = external global [18 x i32], align 16
@.str.4 = private unnamed_addr constant [22 x i8] c"malloc_slice: partArr\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"malloc_slice: Bitstream\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"malloc_slice: StreamBuffer\00", align 1

; Function Attrs: nounwind uwtable
define void @init_ref_pic_list_reordering() #0 {
entry:
  %currSlice = alloca %struct.Slice*, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 60
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 9
  store i32 0, i32* %ref_pic_list_reordering_flag_l0, align 4
  %3 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 13
  store i32 0, i32* %ref_pic_list_reordering_flag_l1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @start_slice() #0 {
entry:
  %eep = alloca %struct.EncodingEnvironment*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %header_len = alloca i32, align 4
  %i = alloca i32, align 4
  %NumberOfPartitions = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 60
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  store i32 0, i32* %header_len, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 76
  %3 = load i32, i32* %partition_mode, align 4
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, i32 1, i32 3
  store i32 %cond, i32* %NumberOfPartitions, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 59
  %5 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %5, i32 0, i32 1
  %6 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %NumberOfPartitions, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 64
  %8 = load i32, i32* %tr, align 4
  call void @RTPUpdateTimestamp(i32 %8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %NumberOfPartitions, align 4
  %cmp1 = icmp slt i32 %9, %10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %12, i32 0, i32 6
  %13 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %13, i64 %idxprom
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %14 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %14, %struct.Bitstream** %currStream, align 8
  %15 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %15, i32 0, i32 10
  store i32 0, i32* %write_flag, align 4
  %16 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %16, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %call = call i32 (i32, ...) bitcast (i32 (...)* @SliceHeader to i32 (i32, ...)*)(i32 0)
  %17 = load i32, i32* %header_len, align 4
  %add = add nsw i32 %17, %call
  store i32 %add, i32* %header_len, align 4
  br label %if.end.6

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %call4 = call i32 (i32, ...) bitcast (i32 (...)* @Partition_BC_Header to i32 (i32, ...)*)(i32 %18)
  %19 = load i32, i32* %header_len, align 4
  %add5 = add nsw i32 %19, %call4
  store i32 %add5, i32* %header_len, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 74
  %21 = load i32, i32* %symbol_mode, align 4
  %cmp7 = icmp eq i32 %21, 1
  br i1 %cmp7, label %if.then.8, label %if.else.17

if.then.8:                                        ; preds = %if.end.6
  %22 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr10 = getelementptr inbounds %struct.Slice, %struct.Slice* %23, i32 0, i32 6
  %24 = load %struct.datapartition*, %struct.datapartition** %partArr10, align 8
  %arrayidx11 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %24, i64 %idxprom9
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx11, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep, align 8
  %25 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %25, i32 0, i32 1
  %26 = load i32, i32* %bits_to_go, align 4
  %cmp12 = icmp ne i32 %26, 8
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.8
  %27 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go14 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %27, i32 0, i32 1
  %28 = load i32, i32* %bits_to_go14, align 4
  %29 = load i32, i32* %header_len, align 4
  %add15 = add nsw i32 %29, %28
  store i32 %add15, i32* %header_len, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.8
  %30 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  call void @writeVlcByteAlign(%struct.Bitstream* %30)
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  %32 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %32, i32 0, i32 9
  %33 = load i8*, i8** %streamBuffer, align 8
  %34 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 0
  call void @arienco_start_encoding(%struct.EncodingEnvironment* %31, i8* %33, i32* %byte_pos)
  call void @cabac_new_slice()
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.6
  call void @CAVLC_init()
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 74
  %37 = load i32, i32* %symbol_mode19, align 4
  %cmp20 = icmp eq i32 %37, 1
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.end
  call void @init_contexts()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %for.end
  %38 = load i32, i32* %header_len, align 4
  ret i32 %38
}

declare void @RTPUpdateTimestamp(i32) #1

declare i32 @SliceHeader(...) #1

declare i32 @Partition_BC_Header(...) #1

declare void @writeVlcByteAlign(%struct.Bitstream*) #1

declare void @arienco_start_encoding(%struct.EncodingEnvironment*, i8*, i32*) #1

declare void @cabac_new_slice() #1

declare void @CAVLC_init() #1

declare void @init_contexts() #1

; Function Attrs: nounwind uwtable
define i32 @terminate_slice(i32 %lastslice) #0 {
entry:
  %lastslice.addr = alloca i32, align 4
  %bytes_written = alloca i32, align 4
  %currStream = alloca %struct.Bitstream*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %eep = alloca %struct.EncodingEnvironment*, align 8
  %i = alloca i32, align 4
  %byte_pos_before_startcode_emu_prevention = alloca i32, align 4
  %min_num_bytes = alloca i32, align 4
  %stuffing_bytes = alloca i32, align 4
  %RawMbBits = alloca i32, align 4
  store i32 %lastslice, i32* %lastslice.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 60
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  store i32 0, i32* %min_num_bytes, align 4
  store i32 0, i32* %stuffing_bytes, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 74
  %3 = load i32, i32* %symbol_mode, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @write_terminating_bit(i16 signext 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %5, i32 0, i32 4
  %6 = load i32, i32* %max_part_nr, align 4
  %cmp1 = icmp slt i32 %4, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %8, i32 0, i32 6
  %9 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %9, i64 %idxprom
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %10 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %10, %struct.Bitstream** %currStream, align 8
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 74
  %12 = load i32, i32* %symbol_mode2, align 4
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %13 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  call void @SODBtoRBSP(%struct.Bitstream* %13)
  %14 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 0
  %15 = load i32, i32* %byte_pos, align 4
  store i32 %15, i32* %byte_pos_before_startcode_emu_prevention, align 4
  %16 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %16, i32 0, i32 9
  %17 = load i8*, i8** %streamBuffer, align 8
  %18 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos5 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %18, i32 0, i32 0
  %19 = load i32, i32* %byte_pos5, align 4
  %call = call i32 @RBSPtoEBSP(i8* %17, i32 0, i32 %19, i32 0)
  %20 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos6 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %20, i32 0, i32 0
  store i32 %call, i32* %byte_pos6, align 4
  %21 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos7 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %21, i32 0, i32 0
  %22 = load i32, i32* %byte_pos7, align 4
  %23 = load i32, i32* %byte_pos_before_startcode_emu_prevention, align 4
  %sub = sub nsw i32 %22, %23
  %mul = mul nsw i32 %sub, 8
  %24 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %24, i32 0, i32 33
  %25 = load i32*, i32** %em_prev_bits, align 8
  %26 = load i32, i32* %25, align 4
  %add = add nsw i32 %26, %mul
  store i32 %add, i32* %25, align 4
  br label %if.end.55

if.else:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %27 to i64
  %28 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr9 = getelementptr inbounds %struct.Slice, %struct.Slice* %28, i32 0, i32 6
  %29 = load %struct.datapartition*, %struct.datapartition** %partArr9, align 8
  %arrayidx10 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %29, i64 %idxprom8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx10, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep, align 8
  %30 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  call void @arienco_done_encoding(%struct.EncodingEnvironment* %30)
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %31, i32 0, i32 3
  %32 = load i32, i32* %Ebits_to_go, align 4
  %33 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %33, i32 0, i32 1
  store i32 %32, i32* %bits_to_go, align 4
  %34 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  %35 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos11 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %35, i32 0, i32 0
  %36 = load i32, i32* %byte_pos11, align 4
  store i32 %36, i32* %bytes_written, align 4
  %37 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos12 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %37, i32 0, i32 0
  %38 = load i32, i32* %byte_pos12, align 4
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bytes_in_picture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 170
  %40 = load i32, i32* %bytes_in_picture, align 4
  %add13 = add nsw i32 %40, %38
  store i32 %add13, i32* %bytes_in_picture, align 4
  %41 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos14 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %41, i32 0, i32 0
  %42 = load i32, i32* %byte_pos14, align 4
  store i32 %42, i32* %byte_pos_before_startcode_emu_prevention, align 4
  %43 = load i32, i32* %lastslice.addr, align 4
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.else
  %44 = load i32, i32* %i, align 4
  %45 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr15 = getelementptr inbounds %struct.Slice, %struct.Slice* %45, i32 0, i32 4
  %46 = load i32, i32* %max_part_nr15, align 4
  %sub16 = sub nsw i32 %46, 1
  %cmp17 = icmp eq i32 %44, %sub16
  br i1 %cmp17, label %if.then.18, label %if.end.43

if.then.18:                                       ; preds = %land.lhs.true
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 142
  %48 = load i32, i32* %bitdepth_luma, align 4
  %mul19 = mul nsw i32 256, %48
  %49 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %49, i32 0, i32 8
  %50 = load i32, i32* %chroma_format_idc, align 4
  %idxprom20 = zext i32 %50 to i64
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* @terminate_slice.MbWidthC, i32 0, i64 %idxprom20
  %51 = load i32, i32* %arrayidx21, align 4
  %mul22 = mul nsw i32 2, %51
  %52 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc23 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %52, i32 0, i32 8
  %53 = load i32, i32* %chroma_format_idc23, align 4
  %idxprom24 = zext i32 %53 to i64
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* @terminate_slice.MbHeightC, i32 0, i64 %idxprom24
  %54 = load i32, i32* %arrayidx25, align 4
  %mul26 = mul nsw i32 %mul22, %54
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 143
  %56 = load i32, i32* %bitdepth_chroma, align 4
  %mul27 = mul nsw i32 %mul26, %56
  %add28 = add nsw i32 %mul19, %mul27
  store i32 %add28, i32* %RawMbBits, align 4
  %call29 = call i32 @get_pic_bin_count()
  %mul30 = mul nsw i32 96, %call29
  %57 = load i32, i32* %RawMbBits, align 4
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 119
  %59 = load i32, i32* %PicSizeInMbs, align 4
  %mul31 = mul nsw i32 %57, %59
  %mul32 = mul nsw i32 %mul31, 3
  %sub33 = sub nsw i32 %mul30, %mul32
  %add34 = add nsw i32 %sub33, 1023
  %div = sdiv i32 %add34, 1024
  store i32 %div, i32* %min_num_bytes, align 4
  %60 = load i32, i32* %min_num_bytes, align 4
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bytes_in_picture35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 170
  %62 = load i32, i32* %bytes_in_picture35, align 4
  %cmp36 = icmp sgt i32 %60, %62
  br i1 %cmp36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.then.18
  %63 = load i32, i32* %min_num_bytes, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bytes_in_picture38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 170
  %65 = load i32, i32* %bytes_in_picture38, align 4
  %sub39 = sub nsw i32 %63, %65
  store i32 %sub39, i32* %stuffing_bytes, align 4
  %66 = load i32, i32* %stuffing_bytes, align 4
  %div40 = sdiv i32 %66, 3
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %div40)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %if.then.18
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true, %if.else
  %67 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer44 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %67, i32 0, i32 9
  %68 = load i8*, i8** %streamBuffer44, align 8
  %69 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos45 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %69, i32 0, i32 0
  %70 = load i32, i32* %byte_pos45, align 4
  %71 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos46 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %71, i32 0, i32 0
  %72 = load i32, i32* %byte_pos46, align 4
  %73 = load i32, i32* %stuffing_bytes, align 4
  %add47 = add nsw i32 %72, %73
  %call48 = call i32 @RBSPtoEBSP(i8* %68, i32 0, i32 %70, i32 %add47)
  %74 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos49 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %74, i32 0, i32 0
  store i32 %call48, i32* %byte_pos49, align 4
  %75 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos50 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %75, i32 0, i32 0
  %76 = load i32, i32* %byte_pos50, align 4
  %77 = load i32, i32* %byte_pos_before_startcode_emu_prevention, align 4
  %sub51 = sub nsw i32 %76, %77
  %mul52 = mul nsw i32 %sub51, 8
  %78 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits53 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %78, i32 0, i32 33
  %79 = load i32*, i32** %em_prev_bits53, align 8
  %80 = load i32, i32* %79, align 4
  %add54 = add nsw i32 %80, %mul52
  store i32 %add54, i32* %79, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.43, %if.then.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode56 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 74
  %83 = load i32, i32* %symbol_mode56, align 4
  %cmp57 = icmp eq i32 %83, 1
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.end
  call void @store_contexts()
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %for.end
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 5
  %85 = load i32, i32* %type, align 4
  %cmp60 = icmp ne i32 %85, 2
  br i1 %cmp60, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.59
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 5
  %87 = load i32, i32* %type61, align 4
  %cmp62 = icmp ne i32 %87, 4
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %lor.lhs.false, %if.end.59
  %88 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  call void @free_ref_pic_list_reordering_buffer(%struct.Slice* %88)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %lor.lhs.false
  ret i32 0
}

declare void @write_terminating_bit(i16 signext) #1

declare void @SODBtoRBSP(%struct.Bitstream*) #1

declare i32 @RBSPtoEBSP(i8*, i32, i32, i32) #1

declare void @arienco_done_encoding(%struct.EncodingEnvironment*) #1

declare i32 @get_pic_bin_count() #1

declare i32 @printf(i8*, ...) #1

declare void @store_contexts() #1

declare void @free_ref_pic_list_reordering_buffer(%struct.Slice*) #1

; Function Attrs: nounwind uwtable
define i32 @encode_one_slice(i32 %SliceGroupId, %struct.Picture* %pic, i32 %TotalCodedMBs) #0 {
entry:
  %SliceGroupId.addr = alloca i32, align 4
  %pic.addr = alloca %struct.Picture*, align 8
  %TotalCodedMBs.addr = alloca i32, align 4
  %end_of_slice = alloca i32, align 4
  %recode_macroblock = alloca i32, align 4
  %len = alloca i32, align 4
  %NumberOfCodedMBs = alloca i32, align 4
  %CurrentMbAddr = alloca i32, align 4
  %FrameRDCost = alloca double, align 8
  %FieldRDCost = alloca double, align 8
  store i32 %SliceGroupId, i32* %SliceGroupId.addr, align 4
  store %struct.Picture* %pic, %struct.Picture** %pic.addr, align 8
  store i32 %TotalCodedMBs, i32* %TotalCodedMBs.addr, align 4
  store i32 0, i32* %end_of_slice, align 4
  store i32 0, i32* %NumberOfCodedMBs, align 4
  store double 0x7FEFFFFFFFFFFFFF, double* %FrameRDCost, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %FieldRDCost, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 33
  store i32 0, i32* %cod_counter, align 4
  %1 = load i32, i32* %SliceGroupId.addr, align 4
  %call = call i32 @FmoGetFirstMacroblockInSlice(i32 %1)
  store i32 %call, i32* %CurrentMbAddr, align 4
  %2 = load i32, i32* %CurrentMbAddr, align 4
  call void @init_slice(i32 %2)
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 60
  %4 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %4, i32 0, i32 6
  %5 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %5, i64 0
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %6 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 0
  %7 = load i32, i32* %byte_pos, align 4
  store i32 %7, i32* @Bytes_After_Header, align 4
  call void @SetLagrangianMultipliers()
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 74
  %9 = load i32, i32* %symbol_mode, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @SetCtxModelNumber()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 113
  %11 = load i32, i32* %rdopt, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 128
  %13 = load i32, i32* %RestrictRef, align 4
  %tobool1 = icmp ne i32 %13, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 5
  %15 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %15, 0
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 5
  %17 = load i32, i32* %type3, align 4
  %cmp4 = icmp eq i32 %17, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %18 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %if.end
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %18, %lor.end ]
  %land.ext = zext i1 %19 to i32
  %conv = trunc i32 %land.ext to i16
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %checkref = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 168
  store i16 %conv, i16* %checkref, align 2
  %call5 = call i32 @start_slice()
  store i32 %call5, i32* %len, align 4
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 157
  %22 = load i32, i32* %RCEnable, align 4
  %tobool6 = icmp ne i32 %22, 0
  br i1 %tobool6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %land.end
  %23 = load i32, i32* %len, align 4
  %24 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %24, i32 0, i32 4
  %25 = load i32, i32* %NumberofHeaderBits, align 4
  %add = add nsw i32 %25, %23
  store i32 %add, i32* %NumberofHeaderBits, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 132
  %27 = load i32, i32* %BasicUnit, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 120
  %29 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp8 = icmp ult i32 %27, %29
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.7
  %30 = load i32, i32* %len, align 4
  %31 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %31, i32 0, i32 6
  %32 = load i32, i32* %NumberofBasicUnitHeaderBits, align 4
  %add11 = add nsw i32 %32, %30
  store i32 %add11, i32* %NumberofBasicUnitHeaderBits, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %land.end
  %33 = load i32, i32* %len, align 4
  %34 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %34, i32 0, i32 6
  %35 = load i32, i32* %bit_slice, align 4
  %add14 = add nsw i32 %35, %33
  store i32 %add14, i32* %bit_slice, align 4
  %36 = load i32, i32* %len, align 4
  %conv15 = sext i32 %36 to i64
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 5
  %38 = load i32, i32* %type16, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_header = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %39, i32 0, i32 26
  %arrayidx17 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_header, i32 0, i64 %idxprom
  %40 = load i64, i64* %arrayidx17, align 8
  %add18 = add nsw i64 %40, %conv15
  store i64 %add18, i64* %arrayidx17, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.301, %if.end.13
  %41 = load i32, i32* %end_of_slice, align 4
  %cmp19 = icmp eq i32 %41, 0
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 98
  %43 = load i32, i32* %AdaptiveRounding, align 4
  %tobool21 = icmp ne i32 %43, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.32

land.lhs.true.22:                                 ; preds = %while.body
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AdaptRndPeriod = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 186
  %45 = load i32, i32* %AdaptRndPeriod, align 4
  %tobool23 = icmp ne i32 %45, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.32

land.lhs.true.24:                                 ; preds = %land.lhs.true.22
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 3
  %47 = load i32, i32* %current_mb_nr, align 4
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AdaptRndPeriod25 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 186
  %49 = load i32, i32* %AdaptRndPeriod25, align 4
  %rem = srem i32 %47, %49
  %cmp26 = icmp eq i32 %rem, 0
  br i1 %cmp26, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %land.lhs.true.24
  call void @CalculateOffsetParam()
  %50 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %50, i32 0, i32 153
  %51 = load i32, i32* %Transform8x8Mode, align 4
  %tobool29 = icmp ne i32 %51, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.28
  call void @CalculateOffset8Param()
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true.24, %land.lhs.true.22, %while.body
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 100
  %53 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool33 = icmp ne i32 %53, 0
  br i1 %tobool33, label %if.else.53, label %if.then.34

if.then.34:                                       ; preds = %if.end.32
  store i32 0, i32* %recode_macroblock, align 4
  store %struct.RD_DATA* @rddata_top_frame_mb, %struct.RD_DATA** @rdopt, align 8
  %54 = load i32, i32* %CurrentMbAddr, align 4
  call void @start_macroblock(i32 %54, i32 0)
  %55 = load void ()*, void ()** @encode_one_macroblock, align 8
  call void %55()
  call void @write_one_macroblock(i32 1)
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock)
  %56 = load i32, i32* %recode_macroblock, align 4
  %cmp35 = icmp eq i32 %56, 0
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.34
  %57 = load i32, i32* %CurrentMbAddr, align 4
  %call38 = call i32 @FmoGetNextMBNr(i32 %57)
  store i32 %call38, i32* %CurrentMbAddr, align 4
  %58 = load i32, i32* %CurrentMbAddr, align 4
  %cmp39 = icmp eq i32 %58, -1
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.37
  store i32 1, i32* %end_of_slice, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.then.37
  %59 = load i32, i32* %NumberOfCodedMBs, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %NumberOfCodedMBs, align 4
  call void @proceed2nextMacroblock()
  br label %if.end.52

if.else:                                          ; preds = %if.then.34
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 3
  %61 = load i32, i32* %current_mb_nr43, align 4
  %call44 = call i32 @FmoGetPreviousMBNr(i32 %61)
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 3
  store i32 %call44, i32* %current_mb_nr45, align 4
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr46 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 3
  %64 = load i32, i32* %current_mb_nr46, align 4
  %cmp47 = icmp eq i32 %64, -1
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.else
  %call50 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.42
  br label %if.end.301

if.else.53:                                       ; preds = %if.end.32
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 133
  store i32 0, i32* %write_macroblock, align 4
  %66 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %66, i32 0, i32 122
  %67 = load i32, i32* %MbInterlace, align 4
  %cmp54 = icmp eq i32 %67, 2
  br i1 %cmp54, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.53
  %68 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace56 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %68, i32 0, i32 122
  %69 = load i32, i32* %MbInterlace56, align 4
  %cmp57 = icmp eq i32 %69, 3
  br i1 %cmp57, label %if.then.59, label %if.end.117

if.then.59:                                       ; preds = %lor.lhs.false, %if.else.53
  store i32 0, i32* %recode_macroblock, align 4
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 90
  store i32 0, i32* %field_mode, align 4
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 91
  store i32 0, i32* %top_field, align 4
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 133
  store i32 0, i32* %write_macroblock60, align 4
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 134
  store i32 0, i32* %bot_MB, align 4
  %74 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable61 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %74, i32 0, i32 157
  %75 = load i32, i32* %RCEnable61, align 4
  %tobool62 = icmp ne i32 %75, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.77

land.lhs.true.63:                                 ; preds = %if.then.59
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace64 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 122
  %77 = load i32, i32* %MbInterlace64, align 4
  %cmp65 = icmp eq i32 %77, 2
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.77

land.lhs.true.67:                                 ; preds = %land.lhs.true.63
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 128
  %79 = load i32, i32* %NumberofCodedMacroBlocks, align 4
  %cmp68 = icmp sgt i32 %79, 0
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.77

land.lhs.true.70:                                 ; preds = %land.lhs.true.67
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 128
  %81 = load i32, i32* %NumberofCodedMacroBlocks71, align 4
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit72 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 132
  %83 = load i32, i32* %BasicUnit72, align 4
  %rem73 = urem i32 %81, %83
  %cmp74 = icmp eq i32 %rem73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.70
  %84 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_init, align 8
  %85 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %84, %struct.rc_quadratic* %85)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %land.lhs.true.70, %land.lhs.true.67, %land.lhs.true.63, %if.then.59
  %86 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable78 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %86, i32 0, i32 157
  %87 = load i32, i32* %RCEnable78, align 4
  %tobool79 = icmp ne i32 %87, 0
  br i1 %tobool79, label %land.lhs.true.80, label %if.end.85

land.lhs.true.80:                                 ; preds = %if.end.77
  %88 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace81 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %88, i32 0, i32 122
  %89 = load i32, i32* %MbInterlace81, align 4
  %cmp82 = icmp eq i32 %89, 2
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.80
  %90 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_init, align 8
  %91 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  call void @copy_rc_generic(%struct.rc_generic* %90, %struct.rc_generic* %91)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %land.lhs.true.80, %if.end.77
  %92 = load i32, i32* %CurrentMbAddr, align 4
  call void @start_macroblock(i32 %92, i32 0)
  store %struct.RD_DATA* @rddata_top_frame_mb, %struct.RD_DATA** @rdopt, align 8
  %93 = load void ()*, void ()** @encode_one_macroblock, align 8
  call void %93()
  %94 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %94, i32 0, i32 0
  %95 = load double, double* %min_rdcost, align 8
  store double %95, double* %FrameRDCost, align 8
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 134
  store i32 1, i32* %bot_MB86, align 4
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 90
  store i32 0, i32* %field_mode87, align 4
  %98 = load i32, i32* %CurrentMbAddr, align 4
  %add88 = add nsw i32 %98, 1
  call void @start_macroblock(i32 %add88, i32 0)
  store %struct.RD_DATA* @rddata_bot_frame_mb, %struct.RD_DATA** @rdopt, align 8
  %99 = load void ()*, void ()** @encode_one_macroblock, align 8
  call void %99()
  %100 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable89 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %100, i32 0, i32 157
  %101 = load i32, i32* %RCEnable89, align 4
  %tobool90 = icmp ne i32 %101, 0
  br i1 %tobool90, label %land.lhs.true.91, label %if.end.106

land.lhs.true.91:                                 ; preds = %if.end.85
  %102 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %102, i32 0, i32 122
  %103 = load i32, i32* %MbInterlace92, align 4
  %cmp93 = icmp eq i32 %103, 2
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.106

land.lhs.true.95:                                 ; preds = %land.lhs.true.91
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 128
  %105 = load i32, i32* %NumberofCodedMacroBlocks96, align 4
  %cmp97 = icmp sgt i32 %105, 0
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.106

land.lhs.true.99:                                 ; preds = %land.lhs.true.95
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 128
  %107 = load i32, i32* %NumberofCodedMacroBlocks100, align 4
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit101 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 132
  %109 = load i32, i32* %BasicUnit101, align 4
  %rem102 = urem i32 %107, %109
  %cmp103 = icmp eq i32 %rem102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %land.lhs.true.99
  %110 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_best, align 8
  %111 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %110, %struct.rc_quadratic* %111)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %land.lhs.true.99, %land.lhs.true.95, %land.lhs.true.91, %if.end.85
  %112 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable107 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %112, i32 0, i32 157
  %113 = load i32, i32* %RCEnable107, align 4
  %tobool108 = icmp ne i32 %113, 0
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.114

land.lhs.true.109:                                ; preds = %if.end.106
  %114 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace110 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %114, i32 0, i32 122
  %115 = load i32, i32* %MbInterlace110, align 4
  %cmp111 = icmp eq i32 %115, 2
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.109
  %116 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_best, align 8
  %117 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  call void @copy_rc_generic(%struct.rc_generic* %116, %struct.rc_generic* %117)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %land.lhs.true.109, %if.end.106
  %118 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost115 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %118, i32 0, i32 0
  %119 = load double, double* %min_rdcost115, align 8
  %120 = load double, double* %FrameRDCost, align 8
  %add116 = fadd double %120, %119
  store double %add116, double* %FrameRDCost, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.114, %lor.lhs.false
  %121 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace118 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %121, i32 0, i32 122
  %122 = load i32, i32* %MbInterlace118, align 4
  %cmp119 = icmp eq i32 %122, 2
  br i1 %cmp119, label %if.then.125, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.end.117
  %123 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace122 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %123, i32 0, i32 122
  %124 = load i32, i32* %MbInterlace122, align 4
  %cmp123 = icmp eq i32 %124, 1
  br i1 %cmp123, label %if.then.125, label %if.end.165

if.then.125:                                      ; preds = %lor.lhs.false.121, %if.end.117
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 134
  store i32 0, i32* %bot_MB126, align 4
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode127 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 90
  store i32 1, i32* %field_mode127, align 4
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field128 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 91
  store i32 1, i32* %top_field128, align 4
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 93
  %129 = load i32, i32* %buf_cycle, align 4
  %shl = shl i32 %129, 1
  store i32 %shl, i32* %buf_cycle, align 4
  %130 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %130, i32 0, i32 8
  %131 = load i32, i32* %num_ref_frames, align 4
  %shl129 = shl i32 %131, 1
  store i32 %shl129, i32* %num_ref_frames, align 4
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 88
  %133 = load i32, i32* %num_ref_idx_l0_active, align 4
  %shl130 = shl i32 %133, 1
  store i32 %shl130, i32* %num_ref_idx_l0_active, align 4
  %134 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active131 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %134, i32 0, i32 88
  %135 = load i32, i32* %num_ref_idx_l0_active131, align 4
  %add132 = add nsw i32 %135, 1
  store i32 %add132, i32* %num_ref_idx_l0_active131, align 4
  %136 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable133 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %136, i32 0, i32 157
  %137 = load i32, i32* %RCEnable133, align 4
  %tobool134 = icmp ne i32 %137, 0
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.150

land.lhs.true.135:                                ; preds = %if.then.125
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace136 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 122
  %139 = load i32, i32* %MbInterlace136, align 4
  %cmp137 = icmp eq i32 %139, 2
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.150

land.lhs.true.139:                                ; preds = %land.lhs.true.135
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks140 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 128
  %141 = load i32, i32* %NumberofCodedMacroBlocks140, align 4
  %cmp141 = icmp sgt i32 %141, 0
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.150

land.lhs.true.143:                                ; preds = %land.lhs.true.139
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 128
  %143 = load i32, i32* %NumberofCodedMacroBlocks144, align 4
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit145 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 132
  %145 = load i32, i32* %BasicUnit145, align 4
  %rem146 = urem i32 %143, %145
  %cmp147 = icmp eq i32 %rem146, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %land.lhs.true.143
  %146 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %147 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_init, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %146, %struct.rc_quadratic* %147)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %land.lhs.true.143, %land.lhs.true.139, %land.lhs.true.135, %if.then.125
  %148 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable151 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %148, i32 0, i32 157
  %149 = load i32, i32* %RCEnable151, align 4
  %tobool152 = icmp ne i32 %149, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.158

land.lhs.true.153:                                ; preds = %if.end.150
  %150 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace154 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %150, i32 0, i32 122
  %151 = load i32, i32* %MbInterlace154, align 4
  %cmp155 = icmp eq i32 %151, 2
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %land.lhs.true.153
  %152 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %153 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_init, align 8
  call void @copy_rc_generic(%struct.rc_generic* %152, %struct.rc_generic* %153)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %land.lhs.true.153, %if.end.150
  %154 = load i32, i32* %CurrentMbAddr, align 4
  call void @start_macroblock(i32 %154, i32 1)
  store %struct.RD_DATA* @rddata_top_field_mb, %struct.RD_DATA** @rdopt, align 8
  %155 = load void ()*, void ()** @encode_one_macroblock, align 8
  call void %155()
  %156 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost159 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %156, i32 0, i32 0
  %157 = load double, double* %min_rdcost159, align 8
  store double %157, double* %FieldRDCost, align 8
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB160 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 134
  store i32 1, i32* %bot_MB160, align 4
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field161 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 91
  store i32 0, i32* %top_field161, align 4
  %160 = load i32, i32* %CurrentMbAddr, align 4
  %add162 = add nsw i32 %160, 1
  call void @start_macroblock(i32 %add162, i32 1)
  store %struct.RD_DATA* @rddata_bot_field_mb, %struct.RD_DATA** @rdopt, align 8
  %161 = load void ()*, void ()** @encode_one_macroblock, align 8
  call void %161()
  %162 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost163 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %162, i32 0, i32 0
  %163 = load double, double* %min_rdcost163, align 8
  %164 = load double, double* %FieldRDCost, align 8
  %add164 = fadd double %164, %163
  store double %add164, double* %FieldRDCost, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.158, %lor.lhs.false.121
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_mbaff_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 135
  store i32 0, i32* %write_mbaff_frame, align 4
  %166 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace166 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %166, i32 0, i32 122
  %167 = load i32, i32* %MbInterlace166, align 4
  %cmp167 = icmp eq i32 %167, 2
  br i1 %cmp167, label %land.lhs.true.169, label %lor.lhs.false.172

land.lhs.true.169:                                ; preds = %if.end.165
  %168 = load double, double* %FrameRDCost, align 8
  %169 = load double, double* %FieldRDCost, align 8
  %cmp170 = fcmp olt double %168, %169
  br i1 %cmp170, label %if.then.176, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %land.lhs.true.169, %if.end.165
  %170 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace173 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %170, i32 0, i32 122
  %171 = load i32, i32* %MbInterlace173, align 4
  %cmp174 = icmp eq i32 %171, 3
  br i1 %cmp174, label %if.then.176, label %if.else.216

if.then.176:                                      ; preds = %lor.lhs.false.172, %land.lhs.true.169
  %172 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode177 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %172, i32 0, i32 90
  store i32 0, i32* %field_mode177, align 4
  store i32 0, i32* @MBPairIsField, align 4
  %173 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace178 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %173, i32 0, i32 122
  %174 = load i32, i32* %MbInterlace178, align 4
  %cmp179 = icmp ne i32 %174, 3
  br i1 %cmp179, label %if.then.181, label %if.end.188

if.then.181:                                      ; preds = %if.then.176
  %175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle182 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %175, i32 0, i32 93
  %176 = load i32, i32* %buf_cycle182, align 4
  %shr = ashr i32 %176, 1
  store i32 %shr, i32* %buf_cycle182, align 4
  %177 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames183 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %177, i32 0, i32 8
  %178 = load i32, i32* %num_ref_frames183, align 4
  %shr184 = ashr i32 %178, 1
  store i32 %shr184, i32* %num_ref_frames183, align 4
  %179 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active185 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %179, i32 0, i32 88
  %180 = load i32, i32* %num_ref_idx_l0_active185, align 4
  %sub = sub nsw i32 %180, 1
  store i32 %sub, i32* %num_ref_idx_l0_active185, align 4
  %181 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active186 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %181, i32 0, i32 88
  %182 = load i32, i32* %num_ref_idx_l0_active186, align 4
  %shr187 = ashr i32 %182, 1
  store i32 %shr187, i32* %num_ref_idx_l0_active186, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.181, %if.then.176
  %183 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable189 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %183, i32 0, i32 157
  %184 = load i32, i32* %RCEnable189, align 4
  %tobool190 = icmp ne i32 %184, 0
  br i1 %tobool190, label %land.lhs.true.191, label %if.end.206

land.lhs.true.191:                                ; preds = %if.end.188
  %185 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace192 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %185, i32 0, i32 122
  %186 = load i32, i32* %MbInterlace192, align 4
  %cmp193 = icmp eq i32 %186, 2
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.206

land.lhs.true.195:                                ; preds = %land.lhs.true.191
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks196 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 128
  %188 = load i32, i32* %NumberofCodedMacroBlocks196, align 4
  %cmp197 = icmp sgt i32 %188, 0
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.206

land.lhs.true.199:                                ; preds = %land.lhs.true.195
  %189 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks200 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %189, i32 0, i32 128
  %190 = load i32, i32* %NumberofCodedMacroBlocks200, align 4
  %191 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit201 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %191, i32 0, i32 132
  %192 = load i32, i32* %BasicUnit201, align 4
  %rem202 = urem i32 %190, %192
  %cmp203 = icmp eq i32 %rem202, 0
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %land.lhs.true.199
  %193 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %194 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_best, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %193, %struct.rc_quadratic* %194)
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.205, %land.lhs.true.199, %land.lhs.true.195, %land.lhs.true.191, %if.end.188
  %195 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable207 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %195, i32 0, i32 157
  %196 = load i32, i32* %RCEnable207, align 4
  %tobool208 = icmp ne i32 %196, 0
  br i1 %tobool208, label %land.lhs.true.209, label %if.end.214

land.lhs.true.209:                                ; preds = %if.end.206
  %197 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace210 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %197, i32 0, i32 122
  %198 = load i32, i32* %MbInterlace210, align 4
  %cmp211 = icmp eq i32 %198, 2
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %land.lhs.true.209
  %199 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %200 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_best, align 8
  call void @copy_rc_generic(%struct.rc_generic* %199, %struct.rc_generic* %200)
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %land.lhs.true.209, %if.end.206
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_mbaff_frame215 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 135
  store i32 1, i32* %write_mbaff_frame215, align 4
  br label %if.end.218

if.else.216:                                      ; preds = %lor.lhs.false.172
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode217 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 90
  store i32 1, i32* %field_mode217, align 4
  store i32 1, i32* @MBPairIsField, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.216, %if.end.214
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock219 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 133
  store i32 1, i32* %write_macroblock219, align 4
  %204 = load i32, i32* @MBPairIsField, align 4
  %tobool220 = icmp ne i32 %204, 0
  br i1 %tobool220, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %if.end.218
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field222 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 91
  store i32 1, i32* %top_field222, align 4
  br label %if.end.225

if.else.223:                                      ; preds = %if.end.218
  %206 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field224 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %206, i32 0, i32 91
  store i32 0, i32* %top_field224, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.223, %if.then.221
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB226 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 134
  store i32 0, i32* %bot_MB226, align 4
  %208 = load i32, i32* %CurrentMbAddr, align 4
  %209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode227 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %209, i32 0, i32 90
  %210 = load i32, i32* %field_mode227, align 4
  call void @start_macroblock(i32 %208, i32 %210)
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode228 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 90
  %212 = load i32, i32* %field_mode228, align 4
  %tobool229 = icmp ne i32 %212, 0
  %cond = select i1 %tobool229, %struct.RD_DATA* @rddata_top_field_mb, %struct.RD_DATA* @rddata_top_frame_mb
  store %struct.RD_DATA* %cond, %struct.RD_DATA** @rdopt, align 8
  call void @copy_rdopt_data(i32 0)
  call void @write_one_macroblock(i32 1)
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock)
  %213 = load i32, i32* %recode_macroblock, align 4
  %cmp230 = icmp eq i32 %213, 0
  br i1 %cmp230, label %if.then.232, label %if.else.268

if.then.232:                                      ; preds = %if.end.225
  %214 = load i32, i32* %CurrentMbAddr, align 4
  %call233 = call i32 @FmoGetNextMBNr(i32 %214)
  store i32 %call233, i32* %CurrentMbAddr, align 4
  %215 = load i32, i32* %CurrentMbAddr, align 4
  %cmp234 = icmp eq i32 %215, -1
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.then.232
  store i32 1, i32* %end_of_slice, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.then.232
  %216 = load i32, i32* %NumberOfCodedMBs, align 4
  %inc238 = add nsw i32 %216, 1
  store i32 %inc238, i32* %NumberOfCodedMBs, align 4
  call void @proceed2nextMacroblock()
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB239 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 134
  store i32 1, i32* %bot_MB239, align 4
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field240 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 91
  store i32 0, i32* %top_field240, align 4
  %219 = load i32, i32* %CurrentMbAddr, align 4
  %220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode241 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %220, i32 0, i32 90
  %221 = load i32, i32* %field_mode241, align 4
  call void @start_macroblock(i32 %219, i32 %221)
  %222 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode242 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %222, i32 0, i32 90
  %223 = load i32, i32* %field_mode242, align 4
  %tobool243 = icmp ne i32 %223, 0
  %cond244 = select i1 %tobool243, %struct.RD_DATA* @rddata_bot_field_mb, %struct.RD_DATA* @rddata_bot_frame_mb
  store %struct.RD_DATA* %cond244, %struct.RD_DATA** @rdopt, align 8
  call void @copy_rdopt_data(i32 1)
  call void @write_one_macroblock(i32 0)
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock)
  %224 = load i32, i32* %recode_macroblock, align 4
  %cmp245 = icmp eq i32 %224, 0
  br i1 %cmp245, label %if.then.247, label %if.else.254

if.then.247:                                      ; preds = %if.end.237
  %225 = load i32, i32* %CurrentMbAddr, align 4
  %call248 = call i32 @FmoGetNextMBNr(i32 %225)
  store i32 %call248, i32* %CurrentMbAddr, align 4
  %226 = load i32, i32* %CurrentMbAddr, align 4
  %cmp249 = icmp eq i32 %226, -1
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.then.247
  store i32 1, i32* %end_of_slice, align 4
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.251, %if.then.247
  %227 = load i32, i32* %NumberOfCodedMBs, align 4
  %inc253 = add nsw i32 %227, 1
  store i32 %inc253, i32* %NumberOfCodedMBs, align 4
  call void @proceed2nextMacroblock()
  br label %if.end.267

if.else.254:                                      ; preds = %if.end.237
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr255 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 3
  %229 = load i32, i32* %current_mb_nr255, align 4
  %call256 = call i32 @FmoGetPreviousMBNr(i32 %229)
  %230 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr257 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %230, i32 0, i32 3
  store i32 %call256, i32* %current_mb_nr257, align 4
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr258 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 3
  %232 = load i32, i32* %current_mb_nr258, align 4
  %call259 = call i32 @FmoGetPreviousMBNr(i32 %232)
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr260 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 3
  store i32 %call259, i32* %current_mb_nr260, align 4
  %234 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr261 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %234, i32 0, i32 3
  %235 = load i32, i32* %current_mb_nr261, align 4
  %cmp262 = icmp eq i32 %235, -1
  br i1 %cmp262, label %if.then.264, label %if.end.266

if.then.264:                                      ; preds = %if.else.254
  %call265 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.264, %if.else.254
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.end.252
  br label %if.end.278

if.else.268:                                      ; preds = %if.end.225
  %236 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr269 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %236, i32 0, i32 3
  %237 = load i32, i32* %current_mb_nr269, align 4
  %call270 = call i32 @FmoGetPreviousMBNr(i32 %237)
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr271 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 3
  store i32 %call270, i32* %current_mb_nr271, align 4
  %239 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr272 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %239, i32 0, i32 3
  %240 = load i32, i32* %current_mb_nr272, align 4
  %cmp273 = icmp eq i32 %240, -1
  br i1 %cmp273, label %if.then.275, label %if.end.277

if.then.275:                                      ; preds = %if.else.268
  %call276 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.275, %if.else.268
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.end.267
  %241 = load i32, i32* @MBPairIsField, align 4
  %tobool279 = icmp ne i32 %241, 0
  br i1 %tobool279, label %if.then.280, label %if.end.289

if.then.280:                                      ; preds = %if.end.278
  %242 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle281 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %242, i32 0, i32 93
  %243 = load i32, i32* %buf_cycle281, align 4
  %shr282 = ashr i32 %243, 1
  store i32 %shr282, i32* %buf_cycle281, align 4
  %244 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames283 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %244, i32 0, i32 8
  %245 = load i32, i32* %num_ref_frames283, align 4
  %shr284 = ashr i32 %245, 1
  store i32 %shr284, i32* %num_ref_frames283, align 4
  %246 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active285 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %246, i32 0, i32 88
  %247 = load i32, i32* %num_ref_idx_l0_active285, align 4
  %sub286 = sub nsw i32 %247, 1
  store i32 %sub286, i32* %num_ref_idx_l0_active285, align 4
  %248 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active287 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %248, i32 0, i32 88
  %249 = load i32, i32* %num_ref_idx_l0_active287, align 4
  %shr288 = ashr i32 %249, 1
  store i32 %shr288, i32* %num_ref_idx_l0_active287, align 4
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.280, %if.end.278
  %250 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field290 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %250, i32 0, i32 91
  store i32 0, i32* %top_field290, align 4
  %251 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %251, i32 0, i32 90
  store i32 0, i32* %field_mode291, align 4
  %252 = load i32, i32* %end_of_slice, align 4
  %tobool292 = icmp ne i32 %252, 0
  br i1 %tobool292, label %if.end.300, label %if.then.293

if.then.293:                                      ; preds = %if.end.289
  %253 = load i32, i32* %CurrentMbAddr, align 4
  %254 = load i32, i32* %CurrentMbAddr, align 4
  %call294 = call i32 @FmoMB2SliceGroup(i32 %254)
  %call295 = call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call294)
  %cmp296 = icmp eq i32 %253, %call295
  br i1 %cmp296, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %if.then.293
  store i32 1, i32* %end_of_slice, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.298, %if.then.293
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.end.289
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %if.end.52
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %255 = load i32, i32* %NumberOfCodedMBs, align 4
  %256 = load i32, i32* %TotalCodedMBs.addr, align 4
  %add302 = add nsw i32 %255, %256
  %257 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %257, i32 0, i32 119
  %258 = load i32, i32* %PicSizeInMbs, align 4
  %cmp303 = icmp sge i32 %add302, %258
  %conv304 = zext i1 %cmp303 to i32
  %call305 = call i32 @terminate_slice(i32 %conv304)
  %259 = load i32, i32* %NumberOfCodedMBs, align 4
  ret i32 %259
}

declare i32 @FmoGetFirstMacroblockInSlice(i32) #1

; Function Attrs: nounwind uwtable
define internal void @init_slice(i32 %start_mb_addr) #0 {
entry:
  %start_mb_addr.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %currPic = alloca %struct.Picture*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %i125 = alloca i32, align 4
  %num_ref = alloca i32, align 4
  store i32 %start_mb_addr, i32* %start_mb_addr.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 59
  %1 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  store %struct.Picture* %1, %struct.Picture** %currPic, align 8
  %2 = load i32, i32* %start_mb_addr.addr, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 3
  store i32 %2, i32* %current_mb_nr, align 4
  %4 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %no_slices = getelementptr inbounds %struct.Picture, %struct.Picture* %4, i32 0, i32 0
  %5 = load i32, i32* %no_slices, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %no_slices, align 4
  %6 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %no_slices1 = getelementptr inbounds %struct.Picture, %struct.Picture* %6, i32 0, i32 0
  %7 = load i32, i32* %no_slices1, align 4
  %cmp = icmp sge i32 %7, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i32 0, i32 0), i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.Slice* @malloc_slice()
  %8 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %no_slices2 = getelementptr inbounds %struct.Picture, %struct.Picture* %8, i32 0, i32 0
  %9 = load i32, i32* %no_slices2, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %10 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %slices = getelementptr inbounds %struct.Picture, %struct.Picture* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [100 x %struct.Slice*], [100 x %struct.Slice*]* %slices, i32 0, i64 %idxprom
  store %struct.Slice* %call, %struct.Slice** %arrayidx, align 8
  %11 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %no_slices3 = getelementptr inbounds %struct.Picture, %struct.Picture* %11, i32 0, i32 0
  %12 = load i32, i32* %no_slices3, align 4
  %sub4 = sub nsw i32 %12, 1
  %idxprom5 = sext i32 %sub4 to i64
  %13 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %slices6 = getelementptr inbounds %struct.Picture, %struct.Picture* %13, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [100 x %struct.Slice*], [100 x %struct.Slice*]* %slices6, i32 0, i64 %idxprom5
  %14 = load %struct.Slice*, %struct.Slice** %arrayidx7, align 8
  store %struct.Slice* %14, %struct.Slice** %currSlice, align 8
  %15 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 60
  store %struct.Slice* %15, %struct.Slice** %currentSlice, align 8
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 64
  %18 = load i32, i32* %tr, align 4
  %rem = srem i32 %18, 256
  %19 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %picture_id = getelementptr inbounds %struct.Slice, %struct.Slice* %19, i32 0, i32 0
  store i32 %rem, i32* %picture_id, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 9
  %21 = load i32, i32* %qp, align 4
  %22 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %qp8 = getelementptr inbounds %struct.Slice, %struct.Slice* %22, i32 0, i32 1
  store i32 %21, i32* %qp8, align 4
  %23 = load i32, i32* %start_mb_addr.addr, align 4
  %24 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %start_mb_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %24, i32 0, i32 3
  store i32 %23, i32* %start_mb_nr, align 4
  %25 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %slice_too_big = getelementptr inbounds %struct.Slice, %struct.Slice* %25, i32 0, i32 17
  store i32 (i32)* @dummy_slice_too_big, i32 (i32)** %slice_too_big, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %27, i32 0, i32 4
  %28 = load i32, i32* %max_part_nr, align 4
  %cmp9 = icmp slt i32 %26, %28
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %29 to i64
  %30 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %30, i32 0, i32 6
  %31 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx11 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %31, i64 %idxprom10
  store %struct.datapartition* %arrayidx11, %struct.datapartition** %dataPart, align 8
  %32 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %32, i32 0, i32 0
  %33 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %33, %struct.Bitstream** %currStream, align 8
  %34 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %35 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %35, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %36 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %36, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %37, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %38, i32 0, i32 17
  %39 = load i32, i32* %num_ref_idx_l0_active_minus1, align 4
  %add = add nsw i32 %39, 1
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 88
  store i32 %add, i32* %num_ref_idx_l0_active, align 4
  %41 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %41, i32 0, i32 18
  %42 = load i32, i32* %num_ref_idx_l1_active_minus1, align 4
  %add13 = add nsw i32 %42, 1
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 89
  store i32 %add13, i32* %num_ref_idx_l1_active, align 4
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 149
  %45 = load i32, i32* %redundant_pic_flag, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %for.end
  %46 = load i32, i32* @redundant_coding, align 4
  %tobool15 = icmp ne i32 %46, 0
  br i1 %tobool15, label %if.else, label %if.then.16

if.then.16:                                       ; preds = %if.then.14
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 0
  %48 = load i32, i32* %number, align 4
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumRefPrimary = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 196
  %50 = load i32, i32* %NumRefPrimary, align 4
  %call17 = call i32 @imin(i32 %48, i32 %50)
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 88
  store i32 %call17, i32* %num_ref_idx_l0_active18, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.then.14
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 88
  store i32 1, i32* %num_ref_idx_l0_active19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.end
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 5
  %54 = load i32, i32* %type, align 4
  %cmp22 = icmp eq i32 %54, 0
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 5
  %56 = load i32, i32* %type23, align 4
  %cmp24 = icmp eq i32 %56, 3
  br i1 %cmp24, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.21
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 9
  %58 = load i32, i32* %P_List0_refs, align 4
  %tobool25 = icmp ne i32 %58, 0
  br i1 %tobool25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %land.lhs.true
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 88
  %60 = load i32, i32* %num_ref_idx_l0_active27, align 4
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 9
  %62 = load i32, i32* %P_List0_refs28, align 4
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 6
  %64 = load i32, i32* %structure, align 4
  %cmp29 = icmp ne i32 %64, 0
  %conv = zext i1 %cmp29 to i32
  %add30 = add nsw i32 %conv, 1
  %mul = mul nsw i32 %62, %add30
  %call31 = call i32 @imin(i32 %60, i32 %mul)
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 88
  store i32 %call31, i32* %num_ref_idx_l0_active32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.26, %land.lhs.true, %lor.lhs.false
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 5
  %67 = load i32, i32* %type34, align 4
  %cmp35 = icmp eq i32 %67, 1
  br i1 %cmp35, label %if.then.37, label %if.end.62

if.then.37:                                       ; preds = %if.end.33
  %68 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %68, i32 0, i32 10
  %69 = load i32, i32* %B_List0_refs, align 4
  %tobool38 = icmp ne i32 %69, 0
  br i1 %tobool38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %if.then.37
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 88
  %71 = load i32, i32* %num_ref_idx_l0_active40, align 4
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs41 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 10
  %73 = load i32, i32* %B_List0_refs41, align 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 6
  %75 = load i32, i32* %structure42, align 4
  %cmp43 = icmp ne i32 %75, 0
  %conv44 = zext i1 %cmp43 to i32
  %add45 = add nsw i32 %conv44, 1
  %mul46 = mul nsw i32 %73, %add45
  %call47 = call i32 @imin(i32 %71, i32 %mul46)
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 88
  store i32 %call47, i32* %num_ref_idx_l0_active48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.39, %if.then.37
  %77 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %77, i32 0, i32 11
  %78 = load i32, i32* %B_List1_refs, align 4
  %tobool50 = icmp ne i32 %78, 0
  br i1 %tobool50, label %if.then.51, label %if.end.61

if.then.51:                                       ; preds = %if.end.49
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 89
  %80 = load i32, i32* %num_ref_idx_l1_active52, align 4
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 11
  %82 = load i32, i32* %B_List1_refs53, align 4
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 6
  %84 = load i32, i32* %structure54, align 4
  %cmp55 = icmp ne i32 %84, 0
  %conv56 = zext i1 %cmp55 to i32
  %add57 = add nsw i32 %conv56, 1
  %mul58 = mul nsw i32 %82, %add57
  %call59 = call i32 @imin(i32 %80, i32 %mul58)
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 89
  store i32 %call59, i32* %num_ref_idx_l1_active60, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.51, %if.end.49
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.33
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 5
  %87 = load i32, i32* %type63, align 4
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 6
  %89 = load i32, i32* %structure64, align 4
  call void @init_lists(i32 %87, i32 %89)
  %90 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 88
  store i32 %90, i32* %num_ref_idx_l0_active65, align 4
  %92 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 89
  store i32 %92, i32* %num_ref_idx_l1_active66, align 4
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 122
  %95 = load i32, i32* %nal_reference_idc, align 4
  %tobool67 = icmp ne i32 %95, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.end.74

land.lhs.true.68:                                 ; preds = %if.end.62
  %96 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PocMemoryManagement = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %96, i32 0, i32 73
  %97 = load i32, i32* %PocMemoryManagement, align 4
  %tobool69 = icmp ne i32 %97, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.74

land.lhs.true.70:                                 ; preds = %land.lhs.true.68
  %98 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  %99 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %99, i32 0, i32 21
  %100 = load i32, i32* %num_ref_frames, align 4
  %cmp71 = icmp eq i32 %98, %100
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true.70
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 115
  %102 = load i32, i32* %frame_num, align 4
  call void @poc_based_ref_management(i32 %102)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %land.lhs.true.70, %land.lhs.true.68, %if.end.62
  %103 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EnableOpenGOP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %103, i32 0, i32 31
  %104 = load i32, i32* %EnableOpenGOP, align 4
  %tobool75 = icmp ne i32 %104, 0
  br i1 %tobool75, label %if.then.76, label %if.end.118

if.then.76:                                       ; preds = %if.end.74
  store i32 0, i32* %i, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.93, %if.then.76
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp78 = icmp slt i32 %105, %106
  br i1 %cmp78, label %for.body.80, label %for.end.95

for.body.80:                                      ; preds = %for.cond.77
  %107 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %107 to i64
  %108 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx82 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %108, i64 %idxprom81
  %109 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx82, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %109, i32 0, i32 1
  %110 = load i32, i32* %poc, align 4
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %last_valid_reference = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 169
  %112 = load i32, i32* %last_valid_reference, align 4
  %cmp83 = icmp slt i32 %110, %112
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.92

land.lhs.true.85:                                 ; preds = %for.body.80
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 114
  %114 = load i32, i32* %ThisPOC, align 4
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %last_valid_reference86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 169
  %116 = load i32, i32* %last_valid_reference86, align 4
  %cmp87 = icmp sgt i32 %114, %116
  br i1 %cmp87, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %land.lhs.true.85
  %117 = load i32, i32* %i, align 4
  %call90 = call i32 @imax(i32 1, i32 %117)
  %118 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active91 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %118, i32 0, i32 88
  store i32 %call90, i32* %num_ref_idx_l0_active91, align 4
  store i32 %call90, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  br label %for.end.95

if.end.92:                                        ; preds = %land.lhs.true.85, %for.body.80
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %119 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %119, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.77

for.end.95:                                       ; preds = %if.then.89, %for.cond.77
  store i32 0, i32* %i, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.115, %for.end.95
  %120 = load i32, i32* %i, align 4
  %121 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp97 = icmp slt i32 %120, %121
  br i1 %cmp97, label %for.body.99, label %for.end.117

for.body.99:                                      ; preds = %for.cond.96
  %122 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %122 to i64
  %123 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx101 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %123, i64 %idxprom100
  %124 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx101, align 8
  %poc102 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %124, i32 0, i32 1
  %125 = load i32, i32* %poc102, align 4
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %last_valid_reference103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 169
  %127 = load i32, i32* %last_valid_reference103, align 4
  %cmp104 = icmp slt i32 %125, %127
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.114

land.lhs.true.106:                                ; preds = %for.body.99
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC107 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 114
  %129 = load i32, i32* %ThisPOC107, align 4
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %last_valid_reference108 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 169
  %131 = load i32, i32* %last_valid_reference108, align 4
  %cmp109 = icmp sgt i32 %129, %131
  br i1 %cmp109, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %land.lhs.true.106
  %132 = load i32, i32* %i, align 4
  %call112 = call i32 @imax(i32 1, i32 %132)
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active113 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 89
  store i32 %call112, i32* %num_ref_idx_l1_active113, align 4
  store i32 %call112, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  br label %for.end.117

if.end.114:                                       ; preds = %land.lhs.true.106, %for.body.99
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %134 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %134, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.96

for.end.117:                                      ; preds = %if.then.111, %for.cond.96
  br label %if.end.118

if.end.118:                                       ; preds = %for.end.117, %if.end.74
  call void @init_ref_pic_list_reordering()
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 5
  %136 = load i32, i32* %type119, align 4
  %cmp120 = icmp eq i32 %136, 0
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.202

land.lhs.true.122:                                ; preds = %if.end.118
  %137 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReferenceReorder = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %137, i32 0, i32 72
  %138 = load i32, i32* %ReferenceReorder, align 4
  %tobool123 = icmp ne i32 %138, 0
  br i1 %tobool123, label %if.then.124, label %if.end.202

if.then.124:                                      ; preds = %land.lhs.true.122
  %139 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  call void @alloc_ref_pic_list_reordering_buffer(%struct.Slice* %139)
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 5
  %141 = load i32, i32* %type126, align 4
  %cmp127 = icmp ne i32 %141, 2
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.169

land.lhs.true.129:                                ; preds = %if.then.124
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type130 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 5
  %143 = load i32, i32* %type130, align 4
  %cmp131 = icmp ne i32 %143, 4
  br i1 %cmp131, label %if.then.133, label %if.end.169

if.then.133:                                      ; preds = %land.lhs.true.129
  store i32 0, i32* %i125, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.146, %if.then.133
  %144 = load i32, i32* %i125, align 4
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active135 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 88
  %146 = load i32, i32* %num_ref_idx_l0_active135, align 4
  %add136 = add nsw i32 %146, 1
  %cmp137 = icmp slt i32 %144, %add136
  br i1 %cmp137, label %for.body.139, label %for.end.148

for.body.139:                                     ; preds = %for.cond.134
  %147 = load i32, i32* %i125, align 4
  %idxprom140 = sext i32 %147 to i64
  %148 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %148, i32 0, i32 10
  %149 = load i32*, i32** %reordering_of_pic_nums_idc_l0, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %149, i64 %idxprom140
  store i32 3, i32* %arrayidx141, align 4
  %150 = load i32, i32* %i125, align 4
  %idxprom142 = sext i32 %150 to i64
  %151 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %151, i32 0, i32 11
  %152 = load i32*, i32** %abs_diff_pic_num_minus1_l0, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %152, i64 %idxprom142
  store i32 0, i32* %arrayidx143, align 4
  %153 = load i32, i32* %i125, align 4
  %idxprom144 = sext i32 %153 to i64
  %154 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %154, i32 0, i32 12
  %155 = load i32*, i32** %long_term_pic_idx_l0, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %155, i64 %idxprom144
  store i32 0, i32* %arrayidx145, align 4
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.139
  %156 = load i32, i32* %i125, align 4
  %inc147 = add nsw i32 %156, 1
  store i32 %inc147, i32* %i125, align 4
  br label %for.cond.134

for.end.148:                                      ; preds = %for.cond.134
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type149 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 5
  %158 = load i32, i32* %type149, align 4
  %cmp150 = icmp eq i32 %158, 1
  br i1 %cmp150, label %if.then.152, label %if.end.168

if.then.152:                                      ; preds = %for.end.148
  store i32 0, i32* %i125, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.165, %if.then.152
  %159 = load i32, i32* %i125, align 4
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active154 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 89
  %161 = load i32, i32* %num_ref_idx_l1_active154, align 4
  %add155 = add nsw i32 %161, 1
  %cmp156 = icmp slt i32 %159, %add155
  br i1 %cmp156, label %for.body.158, label %for.end.167

for.body.158:                                     ; preds = %for.cond.153
  %162 = load i32, i32* %i125, align 4
  %idxprom159 = sext i32 %162 to i64
  %163 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %163, i32 0, i32 14
  %164 = load i32*, i32** %reordering_of_pic_nums_idc_l1, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %164, i64 %idxprom159
  store i32 3, i32* %arrayidx160, align 4
  %165 = load i32, i32* %i125, align 4
  %idxprom161 = sext i32 %165 to i64
  %166 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %166, i32 0, i32 15
  %167 = load i32*, i32** %abs_diff_pic_num_minus1_l1, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %167, i64 %idxprom161
  store i32 0, i32* %arrayidx162, align 4
  %168 = load i32, i32* %i125, align 4
  %idxprom163 = sext i32 %168 to i64
  %169 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %169, i32 0, i32 16
  %170 = load i32*, i32** %long_term_pic_idx_l1, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %170, i64 %idxprom163
  store i32 0, i32* %arrayidx164, align 4
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.158
  %171 = load i32, i32* %i125, align 4
  %inc166 = add nsw i32 %171, 1
  store i32 %inc166, i32* %i125, align 4
  br label %for.cond.153

for.end.167:                                      ; preds = %for.cond.153
  br label %if.end.168

if.end.168:                                       ; preds = %for.end.167, %for.end.148
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %land.lhs.true.129, %if.then.124
  %172 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type170 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %172, i32 0, i32 5
  %173 = load i32, i32* %type170, align 4
  %cmp171 = icmp ne i32 %173, 2
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.201

land.lhs.true.173:                                ; preds = %if.end.169
  %174 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %174, i32 0, i32 5
  %175 = load i32, i32* %type174, align 4
  %cmp175 = icmp ne i32 %175, 4
  br i1 %cmp175, label %if.then.177, label %if.end.201

if.then.177:                                      ; preds = %land.lhs.true.173
  %176 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %176, i32 0, i32 88
  %177 = load i32, i32* %num_ref_idx_l0_active178, align 4
  store i32 %177, i32* %num_ref, align 4
  %178 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %179 = load i32, i32* %num_ref, align 4
  %180 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l0179 = getelementptr inbounds %struct.Slice, %struct.Slice* %180, i32 0, i32 10
  %181 = load i32*, i32** %reordering_of_pic_nums_idc_l0179, align 8
  %182 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l0180 = getelementptr inbounds %struct.Slice, %struct.Slice* %182, i32 0, i32 11
  %183 = load i32*, i32** %abs_diff_pic_num_minus1_l0180, align 8
  %184 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l0181 = getelementptr inbounds %struct.Slice, %struct.Slice* %184, i32 0, i32 12
  %185 = load i32*, i32** %long_term_pic_idx_l0181, align 8
  call void @poc_ref_pic_reorder(%struct.storable_picture** %178, i32 %179, i32* %181, i32* %183, i32* %185, i32 0)
  %186 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active182 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 88
  %188 = load i32, i32* %num_ref_idx_l0_active182, align 4
  %sub183 = sub nsw i32 %188, 1
  %189 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l0184 = getelementptr inbounds %struct.Slice, %struct.Slice* %189, i32 0, i32 10
  %190 = load i32*, i32** %reordering_of_pic_nums_idc_l0184, align 8
  %191 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l0185 = getelementptr inbounds %struct.Slice, %struct.Slice* %191, i32 0, i32 11
  %192 = load i32*, i32** %abs_diff_pic_num_minus1_l0185, align 8
  %193 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l0186 = getelementptr inbounds %struct.Slice, %struct.Slice* %193, i32 0, i32 12
  %194 = load i32*, i32** %long_term_pic_idx_l0186, align 8
  call void @reorder_ref_pic_list(%struct.storable_picture** %186, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), i32 %sub183, i32* %190, i32* %192, i32* %194)
  %195 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %195, i32 0, i32 5
  %196 = load i32, i32* %type187, align 4
  %cmp188 = icmp eq i32 %196, 1
  br i1 %cmp188, label %if.then.190, label %if.end.200

if.then.190:                                      ; preds = %if.then.177
  %197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active191 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %197, i32 0, i32 89
  %198 = load i32, i32* %num_ref_idx_l1_active191, align 4
  store i32 %198, i32* %num_ref, align 4
  %199 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %200 = load i32, i32* %num_ref, align 4
  %201 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l1192 = getelementptr inbounds %struct.Slice, %struct.Slice* %201, i32 0, i32 14
  %202 = load i32*, i32** %reordering_of_pic_nums_idc_l1192, align 8
  %203 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l1193 = getelementptr inbounds %struct.Slice, %struct.Slice* %203, i32 0, i32 15
  %204 = load i32*, i32** %abs_diff_pic_num_minus1_l1193, align 8
  %205 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l1194 = getelementptr inbounds %struct.Slice, %struct.Slice* %205, i32 0, i32 16
  %206 = load i32*, i32** %long_term_pic_idx_l1194, align 8
  call void @poc_ref_pic_reorder(%struct.storable_picture** %199, i32 %200, i32* %202, i32* %204, i32* %206, i32 1)
  %207 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active195 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 89
  %209 = load i32, i32* %num_ref_idx_l1_active195, align 4
  %sub196 = sub nsw i32 %209, 1
  %210 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l1197 = getelementptr inbounds %struct.Slice, %struct.Slice* %210, i32 0, i32 14
  %211 = load i32*, i32** %reordering_of_pic_nums_idc_l1197, align 8
  %212 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l1198 = getelementptr inbounds %struct.Slice, %struct.Slice* %212, i32 0, i32 15
  %213 = load i32*, i32** %abs_diff_pic_num_minus1_l1198, align 8
  %214 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l1199 = getelementptr inbounds %struct.Slice, %struct.Slice* %214, i32 0, i32 16
  %215 = load i32*, i32** %long_term_pic_idx_l1199, align 8
  call void @reorder_ref_pic_list(%struct.storable_picture** %207, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), i32 %sub196, i32* %211, i32* %213, i32* %215)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.190, %if.then.177
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %land.lhs.true.173, %if.end.169
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %land.lhs.true.122, %if.end.118
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 6
  %217 = load i32, i32* %structure203, align 4
  %cmp204 = icmp eq i32 %217, 0
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.202
  call void @init_mbaff_lists()
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %if.end.202
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type208 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 5
  %219 = load i32, i32* %type208, align 4
  %cmp209 = icmp ne i32 %219, 2
  br i1 %cmp209, label %land.lhs.true.211, label %if.end.243

land.lhs.true.211:                                ; preds = %if.end.207
  %220 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %220, i32 0, i32 19
  %221 = load i32, i32* %weighted_pred_flag, align 4
  %cmp212 = icmp eq i32 %221, 1
  br i1 %cmp212, label %if.then.221, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %land.lhs.true.211
  %222 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %222, i32 0, i32 20
  %223 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp215 = icmp ugt i32 %223, 0
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.243

land.lhs.true.217:                                ; preds = %lor.lhs.false.214
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type218 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 5
  %225 = load i32, i32* %type218, align 4
  %cmp219 = icmp eq i32 %225, 1
  br i1 %cmp219, label %if.then.221, label %if.end.243

if.then.221:                                      ; preds = %land.lhs.true.217, %land.lhs.true.211
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type222 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 5
  %227 = load i32, i32* %type222, align 4
  %cmp223 = icmp eq i32 %227, 0
  br i1 %cmp223, label %if.then.229, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %if.then.221
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type226 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 5
  %229 = load i32, i32* %type226, align 4
  %cmp227 = icmp eq i32 %229, 3
  br i1 %cmp227, label %if.then.229, label %if.else.241

if.then.229:                                      ; preds = %lor.lhs.false.225, %if.then.221
  %230 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %230, i32 0, i32 34
  %231 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool230 = icmp ne i32 %231, 0
  br i1 %tobool230, label %land.lhs.true.231, label %if.else.239

land.lhs.true.231:                                ; preds = %if.then.229
  %232 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %232, i32 0, i32 62
  %233 = load i32, i32* %RDPictureDecision, align 4
  %tobool232 = icmp ne i32 %233, 0
  br i1 %tobool232, label %if.then.233, label %if.else.239

if.then.233:                                      ; preds = %land.lhs.true.231
  %234 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %235 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %cmp234 = icmp eq %struct.storable_picture* %234, %235
  br i1 %cmp234, label %if.then.236, label %if.else.237

if.then.236:                                      ; preds = %if.then.233
  call void @estimate_weighting_factor_P_slice(i32 0)
  br label %if.end.238

if.else.237:                                      ; preds = %if.then.233
  call void @estimate_weighting_factor_P_slice(i32 1)
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.237, %if.then.236
  br label %if.end.240

if.else.239:                                      ; preds = %land.lhs.true.231, %if.then.229
  call void @estimate_weighting_factor_P_slice(i32 0)
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.239, %if.end.238
  br label %if.end.242

if.else.241:                                      ; preds = %lor.lhs.false.225
  call void @estimate_weighting_factor_B_slice()
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.241, %if.end.240
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %land.lhs.true.217, %lor.lhs.false.214, %if.end.207
  call void @set_ref_pic_num()
  %236 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type244 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %236, i32 0, i32 5
  %237 = load i32, i32* %type244, align 4
  %cmp245 = icmp eq i32 %237, 1
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.end.243
  %238 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @compute_colocated(%struct.colocated_params* %238, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i32 0))
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.247, %if.end.243
  %239 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type249 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %239, i32 0, i32 5
  %240 = load i32, i32* %type249, align 4
  %cmp250 = icmp ne i32 %240, 2
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.256

land.lhs.true.252:                                ; preds = %if.end.248
  %241 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %241, i32 0, i32 169
  %242 = load i32, i32* %SearchMode, align 4
  %cmp253 = icmp eq i32 %242, 3
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %land.lhs.true.252
  %243 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** @EPZSCo_located, align 8
  call void @EPZSSliceInit(%struct.EPZSColocParams* %243, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i32 0))
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.255, %land.lhs.true.252, %if.end.248
  %244 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %244, i32 0, i32 74
  %245 = load i32, i32* %symbol_mode, align 4
  %cmp257 = icmp eq i32 %245, 0
  br i1 %cmp257, label %if.then.259, label %if.else.279

if.then.259:                                      ; preds = %if.end.256
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_UVLC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMB_typeInfo, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeIntraPredMode_CAVLC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeIntraPredMode, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_UVLC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeB8_typeInfo, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.260

for.cond.260:                                     ; preds = %for.inc.276, %if.then.259
  %246 = load i32, i32* %i, align 4
  %cmp261 = icmp slt i32 %246, 6
  br i1 %cmp261, label %for.body.263, label %for.end.278

for.body.263:                                     ; preds = %for.cond.260
  %247 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %247 to i64
  %arrayidx265 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom264
  %248 = load i32, i32* %arrayidx265, align 4
  switch i32 %248, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.268
    i32 2, label %sw.bb.271
  ]

sw.bb:                                            ; preds = %for.body.263
  %249 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %249 to i64
  %arrayidx267 = getelementptr inbounds [6 x void (%struct.syntaxelement*, %struct.datapartition*)*], [6 x void (%struct.syntaxelement*, %struct.datapartition*)*]* @writeRefFrame, i32 0, i64 %idxprom266
  store void (%struct.syntaxelement*, %struct.datapartition*)* null, void (%struct.syntaxelement*, %struct.datapartition*)** %arrayidx267, align 8
  br label %sw.epilog

sw.bb.268:                                        ; preds = %for.body.263
  %250 = load i32, i32* %i, align 4
  %idxprom269 = sext i32 %250 to i64
  %arrayidx270 = getelementptr inbounds [6 x void (%struct.syntaxelement*, %struct.datapartition*)*], [6 x void (%struct.syntaxelement*, %struct.datapartition*)*]* @writeRefFrame, i32 0, i64 %idxprom269
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_Dummy, void (%struct.syntaxelement*, %struct.datapartition*)** %arrayidx270, align 8
  br label %sw.epilog

sw.bb.271:                                        ; preds = %for.body.263
  %251 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %251 to i64
  %arrayidx273 = getelementptr inbounds [6 x void (%struct.syntaxelement*, %struct.datapartition*)*], [6 x void (%struct.syntaxelement*, %struct.datapartition*)*]* @writeRefFrame, i32 0, i64 %idxprom272
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_invFlag, void (%struct.syntaxelement*, %struct.datapartition*)** %arrayidx273, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.263
  %252 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %252 to i64
  %arrayidx275 = getelementptr inbounds [6 x void (%struct.syntaxelement*, %struct.datapartition*)*], [6 x void (%struct.syntaxelement*, %struct.datapartition*)*]* @writeRefFrame, i32 0, i64 %idxprom274
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_UVLC, void (%struct.syntaxelement*, %struct.datapartition*)** %arrayidx275, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.271, %sw.bb.268, %sw.bb
  br label %for.inc.276

for.inc.276:                                      ; preds = %sw.epilog
  %253 = load i32, i32* %i, align 4
  %inc277 = add nsw i32 %253, 1
  store i32 %inc277, i32* %i, align 4
  br label %for.cond.260

for.end.278:                                      ; preds = %for.cond.260
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_SVLC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMVD, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeCBP_VLC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeCBP, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_SVLC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeDquant, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_UVLC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeCIPredMode, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_Flag, void (%struct.syntaxelement*, %struct.datapartition*)** @writeFieldModeInfo, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_Flag, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMB_transform_size, align 8
  br label %if.end.299

if.else.279:                                      ; preds = %if.end.256
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeMB_typeInfo_CABAC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMB_typeInfo, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeIntraPredMode_CABAC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeIntraPredMode, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeB8_typeInfo_CABAC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeB8_typeInfo, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.296, %if.else.279
  %254 = load i32, i32* %i, align 4
  %cmp281 = icmp slt i32 %254, 6
  br i1 %cmp281, label %for.body.283, label %for.end.298

for.body.283:                                     ; preds = %for.cond.280
  %255 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %255 to i64
  %arrayidx285 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom284
  %256 = load i32, i32* %arrayidx285, align 4
  switch i32 %256, label %sw.default.292 [
    i32 0, label %sw.bb.286
    i32 1, label %sw.bb.289
  ]

sw.bb.286:                                        ; preds = %for.body.283
  %257 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %257 to i64
  %arrayidx288 = getelementptr inbounds [6 x void (%struct.syntaxelement*, %struct.datapartition*)*], [6 x void (%struct.syntaxelement*, %struct.datapartition*)*]* @writeRefFrame, i32 0, i64 %idxprom287
  store void (%struct.syntaxelement*, %struct.datapartition*)* null, void (%struct.syntaxelement*, %struct.datapartition*)** %arrayidx288, align 8
  br label %sw.bb.289

sw.bb.289:                                        ; preds = %for.body.283, %sw.bb.286
  %258 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %258 to i64
  %arrayidx291 = getelementptr inbounds [6 x void (%struct.syntaxelement*, %struct.datapartition*)*], [6 x void (%struct.syntaxelement*, %struct.datapartition*)*]* @writeRefFrame, i32 0, i64 %idxprom290
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeSE_Dummy, void (%struct.syntaxelement*, %struct.datapartition*)** %arrayidx291, align 8
  br label %sw.epilog.295

sw.default.292:                                   ; preds = %for.body.283
  %259 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %259 to i64
  %arrayidx294 = getelementptr inbounds [6 x void (%struct.syntaxelement*, %struct.datapartition*)*], [6 x void (%struct.syntaxelement*, %struct.datapartition*)*]* @writeRefFrame, i32 0, i64 %idxprom293
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeRefFrame_CABAC, void (%struct.syntaxelement*, %struct.datapartition*)** %arrayidx294, align 8
  br label %sw.epilog.295

sw.epilog.295:                                    ; preds = %sw.default.292, %sw.bb.289
  br label %for.inc.296

for.inc.296:                                      ; preds = %sw.epilog.295
  %260 = load i32, i32* %i, align 4
  %inc297 = add nsw i32 %260, 1
  store i32 %inc297, i32* %i, align 4
  br label %for.cond.280

for.end.298:                                      ; preds = %for.cond.280
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeMVD_CABAC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMVD, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeCBP_CABAC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeCBP, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeDquant_CABAC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeDquant, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeCIPredMode_CABAC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeCIPredMode, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeFieldModeInfo_CABAC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeFieldModeInfo, align 8
  store void (%struct.syntaxelement*, %struct.datapartition*)* @writeMB_transform_size_CABAC, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMB_transform_size, align 8
  br label %if.end.299

if.end.299:                                       ; preds = %for.end.298, %for.end.278
  ret void
}

declare void @SetCtxModelNumber() #1

declare void @CalculateOffsetParam() #1

declare void @CalculateOffset8Param() #1

declare void @start_macroblock(i32, i32) #1

declare void @write_one_macroblock(i32) #1

declare void @terminate_macroblock(i32*, i32*) #1

declare i32 @FmoGetNextMBNr(i32) #1

declare void @proceed2nextMacroblock() #1

declare i32 @FmoGetPreviousMBNr(i32) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #1

declare void @copy_rc_jvt(%struct.rc_quadratic*, %struct.rc_quadratic*) #1

declare void @copy_rc_generic(%struct.rc_generic*, %struct.rc_generic*) #1

declare void @copy_rdopt_data(i32) #1

declare i32 @FmoGetLastCodedMBOfSliceGroup(i32) #1

declare i32 @FmoMB2SliceGroup(i32) #1

; Function Attrs: nounwind uwtable
define void @free_slice_list(%struct.Picture* %currPic) #0 {
entry:
  %currPic.addr = alloca %struct.Picture*, align 8
  %i = alloca i32, align 4
  store %struct.Picture* %currPic, %struct.Picture** %currPic.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Picture*, %struct.Picture** %currPic.addr, align 8
  %no_slices = getelementptr inbounds %struct.Picture, %struct.Picture* %1, i32 0, i32 0
  %2 = load i32, i32* %no_slices, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Picture*, %struct.Picture** %currPic.addr, align 8
  %slices = getelementptr inbounds %struct.Picture, %struct.Picture* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [100 x %struct.Slice*], [100 x %struct.Slice*]* %slices, i32 0, i64 %idxprom
  %5 = load %struct.Slice*, %struct.Slice** %arrayidx, align 8
  call void @free_slice(%struct.Slice* %5)
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.Picture*, %struct.Picture** %currPic.addr, align 8
  %slices2 = getelementptr inbounds %struct.Picture, %struct.Picture* %7, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [100 x %struct.Slice*], [100 x %struct.Slice*]* %slices2, i32 0, i64 %idxprom1
  store %struct.Slice* null, %struct.Slice** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_slice(%struct.Slice* %slice) #0 {
entry:
  %slice.addr = alloca %struct.Slice*, align 8
  %i = alloca i32, align 4
  %dataPart = alloca %struct.datapartition*, align 8
  store %struct.Slice* %slice, %struct.Slice** %slice.addr, align 8
  %0 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %cmp = icmp ne %struct.Slice* %0, null
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 4
  %3 = load i32, i32* %max_part_nr, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %5, i32 0, i32 6
  %6 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %6, i64 %idxprom
  store %struct.datapartition* %arrayidx, %struct.datapartition** %dataPart, align 8
  %7 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %cmp2 = icmp ne %struct.datapartition* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %for.body
  %8 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 0
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %9, i32 0, i32 9
  %10 = load i8*, i8** %streamBuffer, align 8
  %cmp4 = icmp ne i8* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %11 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream6 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %11, i32 0, i32 0
  %12 = load %struct.Bitstream*, %struct.Bitstream** %bitstream6, align 8
  %streamBuffer7 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %12, i32 0, i32 9
  %13 = load i8*, i8** %streamBuffer7, align 8
  call void @free(i8* %13) #4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  %14 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream8 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %14, i32 0, i32 0
  %15 = load %struct.Bitstream*, %struct.Bitstream** %bitstream8, align 8
  %cmp9 = icmp ne %struct.Bitstream* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %16 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream11 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %16, i32 0, i32 0
  %17 = load %struct.Bitstream*, %struct.Bitstream** %bitstream11, align 8
  %18 = bitcast %struct.Bitstream* %17 to i8*
  call void @free(i8* %18) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %partArr14 = getelementptr inbounds %struct.Slice, %struct.Slice* %20, i32 0, i32 6
  %21 = load %struct.datapartition*, %struct.datapartition** %partArr14, align 8
  %cmp15 = icmp ne %struct.datapartition* %21, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end
  %22 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %partArr17 = getelementptr inbounds %struct.Slice, %struct.Slice* %22, i32 0, i32 6
  %23 = load %struct.datapartition*, %struct.datapartition** %partArr17, align 8
  %24 = bitcast %struct.datapartition* %23 to i8*
  call void @free(i8* %24) #4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.end
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 74
  %26 = load i32, i32* %symbol_mode, align 4
  %cmp19 = icmp eq i32 %26, 1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %27 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %27, i32 0, i32 7
  %28 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %28)
  %29 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %29, i32 0, i32 8
  %30 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %30)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %31 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %32 = bitcast %struct.Slice* %31 to i8*
  call void @free(i8* %32) #4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @poc_ref_pic_reorder(%struct.storable_picture** %list, i32 %num_ref_idx_lX_active, i32* %reordering_of_pic_nums_idc, i32* %abs_diff_pic_num_minus1, i32* %long_term_pic_idx, i32 %list_no) #0 {
entry:
  %list.addr = alloca %struct.storable_picture**, align 8
  %num_ref_idx_lX_active.addr = alloca i32, align 4
  %reordering_of_pic_nums_idc.addr = alloca i32*, align 8
  %abs_diff_pic_num_minus1.addr = alloca i32*, align 8
  %long_term_pic_idx.addr = alloca i32*, align 8
  %list_no.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %currPicNum = alloca i32, align 4
  %picNumLXPred = alloca i32, align 4
  %default_order = alloca [32 x i32], align 16
  %re_order = alloca [32 x i32], align 16
  %tmp_reorder = alloca [32 x i32], align 16
  %list_sign = alloca [32 x i32], align 16
  %reorder_stop = alloca i32, align 4
  %no_reorder = alloca i32, align 4
  %poc_diff = alloca [32 x i32], align 16
  %tmp_value = alloca i32, align 4
  %diff = alloca i32, align 4
  %abs_poc_dist = alloca i32, align 4
  %maxPicNum = alloca i32, align 4
  %MaxFrameNum = alloca i32, align 4
  store %struct.storable_picture** %list, %struct.storable_picture*** %list.addr, align 8
  store i32 %num_ref_idx_lX_active, i32* %num_ref_idx_lX_active.addr, align 4
  store i32* %reordering_of_pic_nums_idc, i32** %reordering_of_pic_nums_idc.addr, align 8
  store i32* %abs_diff_pic_num_minus1, i32** %abs_diff_pic_num_minus1.addr, align 8
  store i32* %long_term_pic_idx, i32** %long_term_pic_idx.addr, align 8
  store i32 %list_no, i32* %list_no.addr, align 4
  %0 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add = add i32 %0, 4
  %shl = shl i32 1, %add
  store i32 %shl, i32* %MaxFrameNum, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 6
  %2 = load i32, i32* %structure, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %MaxFrameNum, align 4
  store i32 %3, i32* %maxPicNum, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 115
  %5 = load i32, i32* %frame_num, align 4
  store i32 %5, i32* %currPicNum, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %MaxFrameNum, align 4
  %mul = mul nsw i32 2, %6
  store i32 %mul, i32* %maxPicNum, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 115
  %8 = load i32, i32* %frame_num1, align 4
  %mul2 = mul i32 2, %8
  %add3 = add i32 %mul2, 1
  store i32 %add3, i32* %currPicNum, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %currPicNum, align 4
  store i32 %9, i32* %picNumLXPred, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp4 = icmp ult i32 %10, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.storable_picture**, %struct.storable_picture*** %list.addr, align 8
  %arrayidx = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %13, i64 %idxprom
  %14 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 11
  %15 = load i32, i32* %pic_num, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom5
  store i32 %15, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.55, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  %cmp8 = icmp ult i32 %18, %19
  br i1 %cmp8, label %for.body.9, label %for.end.57

for.body.9:                                       ; preds = %for.cond.7
  %20 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %20 to i64
  %21 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx11 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %21, i64 %idxprom10
  %22 = load %struct.frame_store*, %struct.frame_store** %arrayidx11, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %22, i32 0, i32 10
  %23 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %pic_num12 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 11
  %24 = load i32, i32* %pic_num12, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom13
  store i32 %24, i32* %arrayidx14, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %26 to i64
  %27 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx16 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %27, i64 %idxprom15
  %28 = load %struct.frame_store*, %struct.frame_store** %arrayidx16, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %28, i32 0, i32 0
  %29 = load i32, i32* %is_used, align 4
  %cmp17 = icmp eq i32 %29, 3
  br i1 %cmp17, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %for.body.9
  %30 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %30 to i64
  %31 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx19 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %31, i64 %idxprom18
  %32 = load %struct.frame_store*, %struct.frame_store** %arrayidx19, align 8
  %frame20 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %32, i32 0, i32 10
  %33 = load %struct.storable_picture*, %struct.storable_picture** %frame20, align 8
  %used_for_reference = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 15
  %34 = load i32, i32* %used_for_reference, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %land.lhs.true.21, label %if.end.54

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %35 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %35 to i64
  %36 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx23 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %36, i64 %idxprom22
  %37 = load %struct.frame_store*, %struct.frame_store** %arrayidx23, align 8
  %frame24 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %37, i32 0, i32 10
  %38 = load %struct.storable_picture*, %struct.storable_picture** %frame24, align 8
  %is_long_term = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 14
  %39 = load i32, i32* %is_long_term, align 4
  %tobool25 = icmp ne i32 %39, 0
  br i1 %tobool25, label %if.end.54, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.21
  %40 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %40 to i64
  %41 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx28 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %41, i64 %idxprom27
  %42 = load %struct.frame_store*, %struct.frame_store** %arrayidx28, align 8
  %frame29 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %42, i32 0, i32 10
  %43 = load %struct.storable_picture*, %struct.storable_picture** %frame29, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 1
  %44 = load i32, i32* %poc, align 4
  %45 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 1
  %46 = load i32, i32* %poc30, align 4
  %sub = sub nsw i32 %44, %46
  %call = call i32 @iabs(i32 %sub)
  store i32 %call, i32* %abs_poc_dist, align 4
  %47 = load i32, i32* %abs_poc_dist, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom31 = zext i32 %48 to i64
  %arrayidx32 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom31
  store i32 %47, i32* %arrayidx32, align 4
  %49 = load i32, i32* %list_no.addr, align 4
  %cmp33 = icmp eq i32 %49, 0
  br i1 %cmp33, label %if.then.34, label %if.else.43

if.then.34:                                       ; preds = %if.then.26
  %50 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 1
  %51 = load i32, i32* %poc35, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom36 = zext i32 %52 to i64
  %53 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx37 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %53, i64 %idxprom36
  %54 = load %struct.frame_store*, %struct.frame_store** %arrayidx37, align 8
  %frame38 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %54, i32 0, i32 10
  %55 = load %struct.storable_picture*, %struct.storable_picture** %frame38, align 8
  %poc39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %55, i32 0, i32 1
  %56 = load i32, i32* %poc39, align 4
  %cmp40 = icmp slt i32 %51, %56
  %cond = select i1 %cmp40, i32 1, i32 -1
  %57 = load i32, i32* %i, align 4
  %idxprom41 = zext i32 %57 to i64
  %arrayidx42 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom41
  store i32 %cond, i32* %arrayidx42, align 4
  br label %if.end.53

if.else.43:                                       ; preds = %if.then.26
  %58 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc44 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 1
  %59 = load i32, i32* %poc44, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom45 = zext i32 %60 to i64
  %61 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx46 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %61, i64 %idxprom45
  %62 = load %struct.frame_store*, %struct.frame_store** %arrayidx46, align 8
  %frame47 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %62, i32 0, i32 10
  %63 = load %struct.storable_picture*, %struct.storable_picture** %frame47, align 8
  %poc48 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 1
  %64 = load i32, i32* %poc48, align 4
  %cmp49 = icmp sgt i32 %59, %64
  %cond50 = select i1 %cmp49, i32 1, i32 -1
  %65 = load i32, i32* %i, align 4
  %idxprom51 = zext i32 %65 to i64
  %arrayidx52 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom51
  store i32 %cond50, i32* %arrayidx52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.43, %if.then.34
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true.21, %land.lhs.true, %for.body.9
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %66 = load i32, i32* %i, align 4
  %inc56 = add i32 %66, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.7

for.end.57:                                       ; preds = %for.cond.7
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.111, %for.end.57
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  %sub59 = sub i32 %68, 1
  %cmp60 = icmp ult i32 %67, %sub59
  br i1 %cmp60, label %for.body.61, label %for.end.113

for.body.61:                                      ; preds = %for.cond.58
  %69 = load i32, i32* %i, align 4
  %add62 = add i32 %69, 1
  store i32 %add62, i32* %j, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.108, %for.body.61
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  %cmp64 = icmp ult i32 %70, %71
  br i1 %cmp64, label %for.body.65, label %for.end.110

for.body.65:                                      ; preds = %for.cond.63
  %72 = load i32, i32* %i, align 4
  %idxprom66 = zext i32 %72 to i64
  %arrayidx67 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom66
  %73 = load i32, i32* %arrayidx67, align 4
  %74 = load i32, i32* %j, align 4
  %idxprom68 = zext i32 %74 to i64
  %arrayidx69 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom68
  %75 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp sgt i32 %73, %75
  br i1 %cmp70, label %if.then.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.65
  %76 = load i32, i32* %i, align 4
  %idxprom71 = zext i32 %76 to i64
  %arrayidx72 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom71
  %77 = load i32, i32* %arrayidx72, align 4
  %78 = load i32, i32* %j, align 4
  %idxprom73 = zext i32 %78 to i64
  %arrayidx74 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom73
  %79 = load i32, i32* %arrayidx74, align 4
  %cmp75 = icmp eq i32 %77, %79
  br i1 %cmp75, label %land.lhs.true.76, label %if.end.107

land.lhs.true.76:                                 ; preds = %lor.lhs.false
  %80 = load i32, i32* %j, align 4
  %idxprom77 = zext i32 %80 to i64
  %arrayidx78 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom77
  %81 = load i32, i32* %arrayidx78, align 4
  %82 = load i32, i32* %i, align 4
  %idxprom79 = zext i32 %82 to i64
  %arrayidx80 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom79
  %83 = load i32, i32* %arrayidx80, align 4
  %cmp81 = icmp sgt i32 %81, %83
  br i1 %cmp81, label %if.then.82, label %if.end.107

if.then.82:                                       ; preds = %land.lhs.true.76, %for.body.65
  %84 = load i32, i32* %i, align 4
  %idxprom83 = zext i32 %84 to i64
  %arrayidx84 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom83
  %85 = load i32, i32* %arrayidx84, align 4
  store i32 %85, i32* %tmp_value, align 4
  %86 = load i32, i32* %j, align 4
  %idxprom85 = zext i32 %86 to i64
  %arrayidx86 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom85
  %87 = load i32, i32* %arrayidx86, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom87 = zext i32 %88 to i64
  %arrayidx88 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom87
  store i32 %87, i32* %arrayidx88, align 4
  %89 = load i32, i32* %tmp_value, align 4
  %90 = load i32, i32* %j, align 4
  %idxprom89 = zext i32 %90 to i64
  %arrayidx90 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom89
  store i32 %89, i32* %arrayidx90, align 4
  %91 = load i32, i32* %i, align 4
  %idxprom91 = zext i32 %91 to i64
  %arrayidx92 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom91
  %92 = load i32, i32* %arrayidx92, align 4
  store i32 %92, i32* %tmp_value, align 4
  %93 = load i32, i32* %j, align 4
  %idxprom93 = zext i32 %93 to i64
  %arrayidx94 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom93
  %94 = load i32, i32* %arrayidx94, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom95 = zext i32 %95 to i64
  %arrayidx96 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom95
  store i32 %94, i32* %arrayidx96, align 4
  %96 = load i32, i32* %tmp_value, align 4
  %97 = load i32, i32* %j, align 4
  %idxprom97 = zext i32 %97 to i64
  %arrayidx98 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom97
  store i32 %96, i32* %arrayidx98, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom99 = zext i32 %98 to i64
  %arrayidx100 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom99
  %99 = load i32, i32* %arrayidx100, align 4
  store i32 %99, i32* %tmp_value, align 4
  %100 = load i32, i32* %j, align 4
  %idxprom101 = zext i32 %100 to i64
  %arrayidx102 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom101
  %101 = load i32, i32* %arrayidx102, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom103 = zext i32 %102 to i64
  %arrayidx104 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom103
  store i32 %101, i32* %arrayidx104, align 4
  %103 = load i32, i32* %tmp_value, align 4
  %104 = load i32, i32* %j, align 4
  %idxprom105 = zext i32 %104 to i64
  %arrayidx106 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom105
  store i32 %103, i32* %arrayidx106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.82, %land.lhs.true.76, %lor.lhs.false
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %105 = load i32, i32* %j, align 4
  %inc109 = add i32 %105, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.63

for.end.110:                                      ; preds = %for.cond.63
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.end.110
  %106 = load i32, i32* %i, align 4
  %inc112 = add i32 %106, 1
  store i32 %inc112, i32* %i, align 4
  br label %for.cond.58

for.end.113:                                      ; preds = %for.cond.58
  store i32 1, i32* %no_reorder, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.124, %for.end.113
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp115 = icmp ult i32 %107, %108
  br i1 %cmp115, label %for.body.116, label %for.end.126

for.body.116:                                     ; preds = %for.cond.114
  %109 = load i32, i32* %i, align 4
  %idxprom117 = zext i32 %109 to i64
  %arrayidx118 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom117
  %110 = load i32, i32* %arrayidx118, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom119 = zext i32 %111 to i64
  %arrayidx120 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom119
  %112 = load i32, i32* %arrayidx120, align 4
  %cmp121 = icmp ne i32 %110, %112
  br i1 %cmp121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.body.116
  store i32 0, i32* %no_reorder, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %for.body.116
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %113 = load i32, i32* %i, align 4
  %inc125 = add i32 %113, 1
  store i32 %inc125, i32* %i, align 4
  br label %for.cond.114

for.end.126:                                      ; preds = %for.cond.114
  %114 = load i32, i32* %no_reorder, align 4
  %cmp127 = icmp eq i32 %114, 0
  br i1 %cmp127, label %if.then.128, label %if.end.231

if.then.128:                                      ; preds = %for.end.126
  store i32 0, i32* %i, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.211, %if.then.128
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp130 = icmp ult i32 %115, %116
  br i1 %cmp130, label %for.body.131, label %for.end.213

for.body.131:                                     ; preds = %for.cond.129
  %117 = load i32, i32* %i, align 4
  %idxprom132 = zext i32 %117 to i64
  %arrayidx133 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom132
  %118 = load i32, i32* %arrayidx133, align 4
  %119 = load i32, i32* %picNumLXPred, align 4
  %sub134 = sub nsw i32 %118, %119
  store i32 %sub134, i32* %diff, align 4
  %120 = load i32, i32* %diff, align 4
  %cmp135 = icmp sle i32 %120, 0
  br i1 %cmp135, label %if.then.136, label %if.else.151

if.then.136:                                      ; preds = %for.body.131
  %121 = load i32, i32* %i, align 4
  %idxprom137 = zext i32 %121 to i64
  %122 = load i32*, i32** %reordering_of_pic_nums_idc.addr, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %122, i64 %idxprom137
  store i32 0, i32* %arrayidx138, align 4
  %123 = load i32, i32* %diff, align 4
  %call139 = call i32 @iabs(i32 %123)
  %sub140 = sub nsw i32 %call139, 1
  %124 = load i32, i32* %i, align 4
  %idxprom141 = zext i32 %124 to i64
  %125 = load i32*, i32** %abs_diff_pic_num_minus1.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %125, i64 %idxprom141
  store i32 %sub140, i32* %arrayidx142, align 4
  %126 = load i32, i32* %i, align 4
  %idxprom143 = zext i32 %126 to i64
  %127 = load i32*, i32** %abs_diff_pic_num_minus1.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %127, i64 %idxprom143
  %128 = load i32, i32* %arrayidx144, align 4
  %cmp145 = icmp slt i32 %128, 0
  br i1 %cmp145, label %if.then.146, label %if.end.150

if.then.146:                                      ; preds = %if.then.136
  %129 = load i32, i32* %maxPicNum, align 4
  %sub147 = sub nsw i32 %129, 1
  %130 = load i32, i32* %i, align 4
  %idxprom148 = zext i32 %130 to i64
  %131 = load i32*, i32** %abs_diff_pic_num_minus1.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %131, i64 %idxprom148
  store i32 %sub147, i32* %arrayidx149, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.146, %if.then.136
  br label %if.end.158

if.else.151:                                      ; preds = %for.body.131
  %132 = load i32, i32* %i, align 4
  %idxprom152 = zext i32 %132 to i64
  %133 = load i32*, i32** %reordering_of_pic_nums_idc.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %133, i64 %idxprom152
  store i32 1, i32* %arrayidx153, align 4
  %134 = load i32, i32* %diff, align 4
  %call154 = call i32 @iabs(i32 %134)
  %sub155 = sub nsw i32 %call154, 1
  %135 = load i32, i32* %i, align 4
  %idxprom156 = zext i32 %135 to i64
  %136 = load i32*, i32** %abs_diff_pic_num_minus1.addr, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %136, i64 %idxprom156
  store i32 %sub155, i32* %arrayidx157, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.151, %if.end.150
  %137 = load i32, i32* %i, align 4
  %idxprom159 = zext i32 %137 to i64
  %arrayidx160 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom159
  %138 = load i32, i32* %arrayidx160, align 4
  store i32 %138, i32* %picNumLXPred, align 4
  %139 = load i32, i32* %i, align 4
  %idxprom161 = zext i32 %139 to i64
  %arrayidx162 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom161
  %140 = load i32, i32* %arrayidx162, align 4
  %141 = load i32, i32* %i, align 4
  %idxprom163 = zext i32 %141 to i64
  %arrayidx164 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_reorder, i32 0, i64 %idxprom163
  store i32 %140, i32* %arrayidx164, align 4
  %142 = load i32, i32* %i, align 4
  store i32 %142, i32* %k, align 4
  %143 = load i32, i32* %i, align 4
  store i32 %143, i32* %j, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.180, %if.end.158
  %144 = load i32, i32* %j, align 4
  %145 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp166 = icmp ult i32 %144, %145
  br i1 %cmp166, label %for.body.167, label %for.end.182

for.body.167:                                     ; preds = %for.cond.165
  %146 = load i32, i32* %j, align 4
  %idxprom168 = zext i32 %146 to i64
  %arrayidx169 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom168
  %147 = load i32, i32* %arrayidx169, align 4
  %148 = load i32, i32* %i, align 4
  %idxprom170 = zext i32 %148 to i64
  %arrayidx171 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom170
  %149 = load i32, i32* %arrayidx171, align 4
  %cmp172 = icmp ne i32 %147, %149
  br i1 %cmp172, label %if.then.173, label %if.end.179

if.then.173:                                      ; preds = %for.body.167
  %150 = load i32, i32* %k, align 4
  %inc174 = add i32 %150, 1
  store i32 %inc174, i32* %k, align 4
  %151 = load i32, i32* %j, align 4
  %idxprom175 = zext i32 %151 to i64
  %arrayidx176 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom175
  %152 = load i32, i32* %arrayidx176, align 4
  %153 = load i32, i32* %k, align 4
  %idxprom177 = zext i32 %153 to i64
  %arrayidx178 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_reorder, i32 0, i64 %idxprom177
  store i32 %152, i32* %arrayidx178, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.173, %for.body.167
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %154 = load i32, i32* %j, align 4
  %inc181 = add i32 %154, 1
  store i32 %inc181, i32* %j, align 4
  br label %for.cond.165

for.end.182:                                      ; preds = %for.cond.165
  store i32 1, i32* %reorder_stop, align 4
  %155 = load i32, i32* %i, align 4
  %add183 = add i32 %155, 1
  store i32 %add183, i32* %j, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.194, %for.end.182
  %156 = load i32, i32* %j, align 4
  %157 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp185 = icmp ult i32 %156, %157
  br i1 %cmp185, label %for.body.186, label %for.end.196

for.body.186:                                     ; preds = %for.cond.184
  %158 = load i32, i32* %j, align 4
  %idxprom187 = zext i32 %158 to i64
  %arrayidx188 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_reorder, i32 0, i64 %idxprom187
  %159 = load i32, i32* %arrayidx188, align 4
  %160 = load i32, i32* %j, align 4
  %idxprom189 = zext i32 %160 to i64
  %arrayidx190 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom189
  %161 = load i32, i32* %arrayidx190, align 4
  %cmp191 = icmp ne i32 %159, %161
  br i1 %cmp191, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %for.body.186
  store i32 0, i32* %reorder_stop, align 4
  br label %for.end.196

if.end.193:                                       ; preds = %for.body.186
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193
  %162 = load i32, i32* %j, align 4
  %inc195 = add i32 %162, 1
  store i32 %inc195, i32* %j, align 4
  br label %for.cond.184

for.end.196:                                      ; preds = %if.then.192, %for.cond.184
  %163 = load i32, i32* %reorder_stop, align 4
  %cmp197 = icmp eq i32 %163, 1
  br i1 %cmp197, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %for.end.196
  %164 = load i32, i32* %i, align 4
  %inc199 = add i32 %164, 1
  store i32 %inc199, i32* %i, align 4
  br label %for.end.213

if.end.200:                                       ; preds = %for.end.196
  store i32 0, i32* %j, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.208, %if.end.200
  %165 = load i32, i32* %j, align 4
  %166 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp202 = icmp ult i32 %165, %166
  br i1 %cmp202, label %for.body.203, label %for.end.210

for.body.203:                                     ; preds = %for.cond.201
  %167 = load i32, i32* %j, align 4
  %idxprom204 = zext i32 %167 to i64
  %arrayidx205 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_reorder, i32 0, i64 %idxprom204
  %168 = load i32, i32* %arrayidx205, align 4
  %169 = load i32, i32* %j, align 4
  %idxprom206 = zext i32 %169 to i64
  %arrayidx207 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom206
  store i32 %168, i32* %arrayidx207, align 4
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.body.203
  %170 = load i32, i32* %j, align 4
  %inc209 = add i32 %170, 1
  store i32 %inc209, i32* %j, align 4
  br label %for.cond.201

for.end.210:                                      ; preds = %for.cond.201
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.end.210
  %171 = load i32, i32* %i, align 4
  %inc212 = add i32 %171, 1
  store i32 %inc212, i32* %i, align 4
  br label %for.cond.129

for.end.213:                                      ; preds = %if.then.198, %for.cond.129
  %172 = load i32, i32* %i, align 4
  %idxprom214 = zext i32 %172 to i64
  %173 = load i32*, i32** %reordering_of_pic_nums_idc.addr, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %173, i64 %idxprom214
  store i32 3, i32* %arrayidx215, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.223, %for.end.213
  %174 = load i32, i32* %j, align 4
  %175 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp217 = icmp ult i32 %174, %175
  br i1 %cmp217, label %for.body.218, label %for.end.225

for.body.218:                                     ; preds = %for.cond.216
  %176 = load i32, i32* %j, align 4
  %idxprom219 = zext i32 %176 to i64
  %arrayidx220 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_reorder, i32 0, i64 %idxprom219
  %177 = load i32, i32* %arrayidx220, align 4
  %178 = load i32, i32* %j, align 4
  %idxprom221 = zext i32 %178 to i64
  %arrayidx222 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom221
  store i32 %177, i32* %arrayidx222, align 4
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.218
  %179 = load i32, i32* %j, align 4
  %inc224 = add i32 %179, 1
  store i32 %inc224, i32* %j, align 4
  br label %for.cond.216

for.end.225:                                      ; preds = %for.cond.216
  %180 = load i32, i32* %list_no.addr, align 4
  %cmp226 = icmp eq i32 %180, 0
  br i1 %cmp226, label %if.then.227, label %if.else.228

if.then.227:                                      ; preds = %for.end.225
  %181 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %181, i32 0, i32 60
  %182 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %182, i32 0, i32 9
  store i32 1, i32* %ref_pic_list_reordering_flag_l0, align 4
  br label %if.end.230

if.else.228:                                      ; preds = %for.end.225
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice229 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 60
  %184 = load %struct.Slice*, %struct.Slice** %currentSlice229, align 8
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %184, i32 0, i32 13
  store i32 1, i32* %ref_pic_list_reordering_flag_l1, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.228, %if.then.227
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %for.end.126
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iabs(i32 %x) #3 {
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
define void @SetLagrangianMultipliers() #0 {
entry:
  %qp = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %qp_temp = alloca double, align 8
  %lambda_scale = alloca double, align 8
  %lambda_qp = alloca i32, align 4
  %lambda_qp683 = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %jumpd, align 4
  %conv = sitofp i32 %1 to double
  %mul = fmul double 5.000000e-02, %conv
  %call = call double @dClip3(double 0.000000e+00, double 5.000000e-01, double %mul)
  %sub = fsub double 1.000000e+00, %call
  store double %sub, double* %lambda_scale, align 8
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 113
  %3 = load i32, i32* %rdopt, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else.598

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.595, %if.then
  %4 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %for.body, label %for.end.597

for.body:                                         ; preds = %for.cond
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 144
  %6 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %sub2 = sub nsw i32 0, %6
  store i32 %sub2, i32* %qp, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.592, %for.body
  %7 = load i32, i32* %qp, align 4
  %cmp4 = icmp slt i32 %7, 52
  br i1 %cmp4, label %for.body.6, label %for.end.594

for.body.6:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %qp, align 4
  %conv7 = sitofp i32 %8 to double
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 144
  %10 = load i32, i32* %bitdepth_luma_qp_scale8, align 4
  %conv9 = sitofp i32 %10 to double
  %add = fadd double %conv7, %conv9
  %sub10 = fsub double %add, 1.200000e+01
  store double %sub10, double* %qp_temp, align 8
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseExplicitLambdaParams = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 180
  %12 = load i32, i32* %UseExplicitLambdaParams, align 4
  %cmp11 = icmp eq i32 %12, 1
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body.6
  %13 = load i32, i32* %j, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LambdaWeight = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 181
  %arrayidx = getelementptr inbounds [6 x double], [6 x double]* %LambdaWeight, i32 0, i64 %idxprom
  %15 = load double, double* %arrayidx, align 8
  %16 = load double, double* %qp_temp, align 8
  %div = fdiv double %16, 3.000000e+00
  %call14 = call double @pow(double 2.000000e+00, double %div) #4
  %mul15 = fmul double %15, %call14
  %17 = load i32, i32* %qp, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 150
  %20 = load double**, double*** %lambda_md, align 8
  %arrayidx18 = getelementptr inbounds double*, double** %20, i64 %idxprom17
  %21 = load double*, double** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds double, double* %21, i64 %idxprom16
  store double %mul15, double* %arrayidx19, align 8
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 199
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric, i32 0, i64 1
  %23 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %23, 2
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.13
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 199
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric23, i32 0, i64 2
  %25 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %25, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.13
  %26 = phi i1 [ false, %if.then.13 ], [ %cmp25, %land.rhs ]
  %cond = select i1 %26, double 1.000000e+00, double 9.500000e-01
  %27 = load i32, i32* %qp, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %28 to i64
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 150
  %30 = load double**, double*** %lambda_md29, align 8
  %arrayidx30 = getelementptr inbounds double*, double** %30, i64 %idxprom28
  %31 = load double*, double** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds double, double* %31, i64 %idxprom27
  %32 = load double, double* %arrayidx31, align 8
  %mul32 = fmul double %cond, %32
  %33 = load i32, i32* %qp, align 4
  %idxprom33 = sext i32 %33 to i64
  %34 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %34 to i64
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 150
  %36 = load double**, double*** %lambda_md35, align 8
  %arrayidx36 = getelementptr inbounds double*, double** %36, i64 %idxprom34
  %37 = load double*, double** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds double, double* %37, i64 %idxprom33
  store double %mul32, double* %arrayidx37, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc, %land.end
  %38 = load i32, i32* %k, align 4
  %cmp39 = icmp sle i32 %38, 2
  br i1 %cmp39, label %for.body.41, label %for.end

for.body.41:                                      ; preds = %for.cond.38
  %39 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %39 to i64
  %40 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric43 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %40, i32 0, i32 199
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric43, i32 0, i64 %idxprom42
  %41 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp eq i32 %41, 1
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.41
  %42 = load i32, i32* %qp, align 4
  %idxprom47 = sext i32 %42 to i64
  %43 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %43 to i64
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 150
  %45 = load double**, double*** %lambda_md49, align 8
  %arrayidx50 = getelementptr inbounds double*, double** %45, i64 %idxprom48
  %46 = load double*, double** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds double, double* %46, i64 %idxprom47
  %47 = load double, double* %arrayidx51, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.41
  %48 = load i32, i32* %qp, align 4
  %idxprom52 = sext i32 %48 to i64
  %49 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %49 to i64
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 150
  %51 = load double**, double*** %lambda_md54, align 8
  %arrayidx55 = getelementptr inbounds double*, double** %51, i64 %idxprom53
  %52 = load double*, double** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds double, double* %52, i64 %idxprom52
  %53 = load double, double* %arrayidx56, align 8
  %call57 = call double @sqrt(double %53) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond58 = phi double [ %47, %cond.true ], [ %call57, %cond.false ]
  %54 = load i32, i32* %k, align 4
  %idxprom59 = sext i32 %54 to i64
  %55 = load i32, i32* %qp, align 4
  %idxprom60 = sext i32 %55 to i64
  %56 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %56 to i64
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 151
  %58 = load double***, double**** %lambda_me, align 8
  %arrayidx62 = getelementptr inbounds double**, double*** %58, i64 %idxprom61
  %59 = load double**, double*** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds double*, double** %59, i64 %idxprom60
  %60 = load double*, double** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds double, double* %60, i64 %idxprom59
  store double %cond58, double* %arrayidx64, align 8
  %61 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %61 to i64
  %62 = load i32, i32* %qp, align 4
  %idxprom66 = sext i32 %62 to i64
  %63 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %63 to i64
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 151
  %65 = load double***, double**** %lambda_me68, align 8
  %arrayidx69 = getelementptr inbounds double**, double*** %65, i64 %idxprom67
  %66 = load double**, double*** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds double*, double** %66, i64 %idxprom66
  %67 = load double*, double** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds double, double* %67, i64 %idxprom65
  %68 = load double, double* %arrayidx71, align 8
  %mul72 = fmul double 6.553600e+04, %68
  %add73 = fadd double %mul72, 5.000000e-01
  %conv74 = fptosi double %add73 to i32
  %69 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %69 to i64
  %70 = load i32, i32* %qp, align 4
  %idxprom76 = sext i32 %70 to i64
  %71 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %71 to i64
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 152
  %73 = load i32***, i32**** %lambda_mf, align 8
  %arrayidx78 = getelementptr inbounds i32**, i32*** %73, i64 %idxprom77
  %74 = load i32**, i32*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %74, i64 %idxprom76
  %75 = load i32*, i32** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %75, i64 %idxprom75
  store i32 %conv74, i32* %arrayidx80, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %76 = load i32, i32* %k, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.38

for.end:                                          ; preds = %for.cond.38
  %77 = load i32, i32* %j, align 4
  %cmp81 = icmp eq i32 %77, 1
  br i1 %cmp81, label %if.then.83, label %if.end

if.then.83:                                       ; preds = %for.end
  %78 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LambdaWeight84 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %78, i32 0, i32 181
  %arrayidx85 = getelementptr inbounds [6 x double], [6 x double]* %LambdaWeight84, i32 0, i64 5
  %79 = load double, double* %arrayidx85, align 8
  %80 = load double, double* %qp_temp, align 8
  %div86 = fdiv double %80, 3.000000e+00
  %call87 = call double @pow(double 2.000000e+00, double %div86) #4
  %mul88 = fmul double %79, %call87
  %81 = load i32, i32* %qp, align 4
  %idxprom89 = sext i32 %81 to i64
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md90 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 150
  %83 = load double**, double*** %lambda_md90, align 8
  %arrayidx91 = getelementptr inbounds double*, double** %83, i64 5
  %84 = load double*, double** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds double, double* %84, i64 %idxprom89
  store double %mul88, double* %arrayidx92, align 8
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric93 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 199
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric93, i32 0, i64 1
  %86 = load i32, i32* %arrayidx94, align 4
  %cmp95 = icmp eq i32 %86, 2
  br i1 %cmp95, label %land.rhs.97, label %land.end.102

land.rhs.97:                                      ; preds = %if.then.83
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric98 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 199
  %arrayidx99 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric98, i32 0, i64 2
  %88 = load i32, i32* %arrayidx99, align 4
  %cmp100 = icmp eq i32 %88, 2
  br label %land.end.102

land.end.102:                                     ; preds = %land.rhs.97, %if.then.83
  %89 = phi i1 [ false, %if.then.83 ], [ %cmp100, %land.rhs.97 ]
  %cond103 = select i1 %89, double 1.000000e+00, double 9.500000e-01
  %90 = load i32, i32* %qp, align 4
  %idxprom104 = sext i32 %90 to i64
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 150
  %92 = load double**, double*** %lambda_md105, align 8
  %arrayidx106 = getelementptr inbounds double*, double** %92, i64 5
  %93 = load double*, double** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds double, double* %93, i64 %idxprom104
  %94 = load double, double* %arrayidx107, align 8
  %mul108 = fmul double %cond103, %94
  %95 = load i32, i32* %qp, align 4
  %idxprom109 = sext i32 %95 to i64
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 150
  %97 = load double**, double*** %lambda_md110, align 8
  %arrayidx111 = getelementptr inbounds double*, double** %97, i64 5
  %98 = load double*, double** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds double, double* %98, i64 %idxprom109
  store double %mul108, double* %arrayidx112, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.156, %land.end.102
  %99 = load i32, i32* %k, align 4
  %cmp114 = icmp sle i32 %99, 2
  br i1 %cmp114, label %for.body.116, label %for.end.158

for.body.116:                                     ; preds = %for.cond.113
  %100 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %100 to i64
  %101 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric118 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %101, i32 0, i32 199
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric118, i32 0, i64 %idxprom117
  %102 = load i32, i32* %arrayidx119, align 4
  %cmp120 = icmp eq i32 %102, 1
  br i1 %cmp120, label %cond.true.122, label %cond.false.127

cond.true.122:                                    ; preds = %for.body.116
  %103 = load i32, i32* %qp, align 4
  %idxprom123 = sext i32 %103 to i64
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 150
  %105 = load double**, double*** %lambda_md124, align 8
  %arrayidx125 = getelementptr inbounds double*, double** %105, i64 5
  %106 = load double*, double** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds double, double* %106, i64 %idxprom123
  %107 = load double, double* %arrayidx126, align 8
  br label %cond.end.133

cond.false.127:                                   ; preds = %for.body.116
  %108 = load i32, i32* %qp, align 4
  %idxprom128 = sext i32 %108 to i64
  %109 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %109, i32 0, i32 150
  %110 = load double**, double*** %lambda_md129, align 8
  %arrayidx130 = getelementptr inbounds double*, double** %110, i64 5
  %111 = load double*, double** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds double, double* %111, i64 %idxprom128
  %112 = load double, double* %arrayidx131, align 8
  %call132 = call double @sqrt(double %112) #4
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.127, %cond.true.122
  %cond134 = phi double [ %107, %cond.true.122 ], [ %call132, %cond.false.127 ]
  %113 = load i32, i32* %k, align 4
  %idxprom135 = sext i32 %113 to i64
  %114 = load i32, i32* %qp, align 4
  %idxprom136 = sext i32 %114 to i64
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 151
  %116 = load double***, double**** %lambda_me137, align 8
  %arrayidx138 = getelementptr inbounds double**, double*** %116, i64 5
  %117 = load double**, double*** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds double*, double** %117, i64 %idxprom136
  %118 = load double*, double** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds double, double* %118, i64 %idxprom135
  store double %cond134, double* %arrayidx140, align 8
  %119 = load i32, i32* %k, align 4
  %idxprom141 = sext i32 %119 to i64
  %120 = load i32, i32* %qp, align 4
  %idxprom142 = sext i32 %120 to i64
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 151
  %122 = load double***, double**** %lambda_me143, align 8
  %arrayidx144 = getelementptr inbounds double**, double*** %122, i64 5
  %123 = load double**, double*** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds double*, double** %123, i64 %idxprom142
  %124 = load double*, double** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds double, double* %124, i64 %idxprom141
  %125 = load double, double* %arrayidx146, align 8
  %mul147 = fmul double 6.553600e+04, %125
  %add148 = fadd double %mul147, 5.000000e-01
  %conv149 = fptosi double %add148 to i32
  %126 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %126 to i64
  %127 = load i32, i32* %qp, align 4
  %idxprom151 = sext i32 %127 to i64
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf152 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 152
  %129 = load i32***, i32**** %lambda_mf152, align 8
  %arrayidx153 = getelementptr inbounds i32**, i32*** %129, i64 5
  %130 = load i32**, i32*** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32*, i32** %130, i64 %idxprom151
  %131 = load i32*, i32** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %131, i64 %idxprom150
  store i32 %conv149, i32* %arrayidx155, align 4
  br label %for.inc.156

for.inc.156:                                      ; preds = %cond.end.133
  %132 = load i32, i32* %k, align 4
  %inc157 = add nsw i32 %132, 1
  store i32 %inc157, i32* %k, align 4
  br label %for.cond.113

for.end.158:                                      ; preds = %for.cond.113
  br label %if.end

if.end:                                           ; preds = %for.end.158, %for.end
  br label %if.end.591

if.else:                                          ; preds = %for.body.6
  %133 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseExplicitLambdaParams159 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %133, i32 0, i32 180
  %134 = load i32, i32* %UseExplicitLambdaParams159, align 4
  %cmp160 = icmp eq i32 %134, 2
  br i1 %cmp160, label %if.then.162, label %if.else.319

if.then.162:                                      ; preds = %if.else
  %135 = load i32, i32* %j, align 4
  %idxprom163 = sext i32 %135 to i64
  %136 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FixedLambda = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %136, i32 0, i32 182
  %arrayidx164 = getelementptr inbounds [6 x double], [6 x double]* %FixedLambda, i32 0, i64 %idxprom163
  %137 = load double, double* %arrayidx164, align 8
  %138 = load i32, i32* %qp, align 4
  %idxprom165 = sext i32 %138 to i64
  %139 = load i32, i32* %j, align 4
  %idxprom166 = sext i32 %139 to i64
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md167 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 150
  %141 = load double**, double*** %lambda_md167, align 8
  %arrayidx168 = getelementptr inbounds double*, double** %141, i64 %idxprom166
  %142 = load double*, double** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds double, double* %142, i64 %idxprom165
  store double %137, double* %arrayidx169, align 8
  %143 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric170 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %143, i32 0, i32 199
  %arrayidx171 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric170, i32 0, i64 1
  %144 = load i32, i32* %arrayidx171, align 4
  %cmp172 = icmp eq i32 %144, 2
  br i1 %cmp172, label %land.rhs.174, label %land.end.179

land.rhs.174:                                     ; preds = %if.then.162
  %145 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric175 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %145, i32 0, i32 199
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric175, i32 0, i64 2
  %146 = load i32, i32* %arrayidx176, align 4
  %cmp177 = icmp eq i32 %146, 2
  br label %land.end.179

land.end.179:                                     ; preds = %land.rhs.174, %if.then.162
  %147 = phi i1 [ false, %if.then.162 ], [ %cmp177, %land.rhs.174 ]
  %cond180 = select i1 %147, double 1.000000e+00, double 9.500000e-01
  %148 = load i32, i32* %qp, align 4
  %idxprom181 = sext i32 %148 to i64
  %149 = load i32, i32* %j, align 4
  %idxprom182 = sext i32 %149 to i64
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md183 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 150
  %151 = load double**, double*** %lambda_md183, align 8
  %arrayidx184 = getelementptr inbounds double*, double** %151, i64 %idxprom182
  %152 = load double*, double** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds double, double* %152, i64 %idxprom181
  %153 = load double, double* %arrayidx185, align 8
  %mul186 = fmul double %cond180, %153
  %154 = load i32, i32* %qp, align 4
  %idxprom187 = sext i32 %154 to i64
  %155 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %155 to i64
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md189 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 150
  %157 = load double**, double*** %lambda_md189, align 8
  %arrayidx190 = getelementptr inbounds double*, double** %157, i64 %idxprom188
  %158 = load double*, double** %arrayidx190, align 8
  %arrayidx191 = getelementptr inbounds double, double* %158, i64 %idxprom187
  store double %mul186, double* %arrayidx191, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.240, %land.end.179
  %159 = load i32, i32* %k, align 4
  %cmp193 = icmp sle i32 %159, 2
  br i1 %cmp193, label %for.body.195, label %for.end.242

for.body.195:                                     ; preds = %for.cond.192
  %160 = load i32, i32* %k, align 4
  %idxprom196 = sext i32 %160 to i64
  %161 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric197 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %161, i32 0, i32 199
  %arrayidx198 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric197, i32 0, i64 %idxprom196
  %162 = load i32, i32* %arrayidx198, align 4
  %cmp199 = icmp eq i32 %162, 1
  br i1 %cmp199, label %cond.true.201, label %cond.false.207

cond.true.201:                                    ; preds = %for.body.195
  %163 = load i32, i32* %qp, align 4
  %idxprom202 = sext i32 %163 to i64
  %164 = load i32, i32* %j, align 4
  %idxprom203 = sext i32 %164 to i64
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md204 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 150
  %166 = load double**, double*** %lambda_md204, align 8
  %arrayidx205 = getelementptr inbounds double*, double** %166, i64 %idxprom203
  %167 = load double*, double** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds double, double* %167, i64 %idxprom202
  %168 = load double, double* %arrayidx206, align 8
  br label %cond.end.214

cond.false.207:                                   ; preds = %for.body.195
  %169 = load i32, i32* %qp, align 4
  %idxprom208 = sext i32 %169 to i64
  %170 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %170 to i64
  %171 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md210 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %171, i32 0, i32 150
  %172 = load double**, double*** %lambda_md210, align 8
  %arrayidx211 = getelementptr inbounds double*, double** %172, i64 %idxprom209
  %173 = load double*, double** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds double, double* %173, i64 %idxprom208
  %174 = load double, double* %arrayidx212, align 8
  %call213 = call double @sqrt(double %174) #4
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.207, %cond.true.201
  %cond215 = phi double [ %168, %cond.true.201 ], [ %call213, %cond.false.207 ]
  %175 = load i32, i32* %k, align 4
  %idxprom216 = sext i32 %175 to i64
  %176 = load i32, i32* %qp, align 4
  %idxprom217 = sext i32 %176 to i64
  %177 = load i32, i32* %j, align 4
  %idxprom218 = sext i32 %177 to i64
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me219 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 151
  %179 = load double***, double**** %lambda_me219, align 8
  %arrayidx220 = getelementptr inbounds double**, double*** %179, i64 %idxprom218
  %180 = load double**, double*** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds double*, double** %180, i64 %idxprom217
  %181 = load double*, double** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds double, double* %181, i64 %idxprom216
  store double %cond215, double* %arrayidx222, align 8
  %182 = load i32, i32* %k, align 4
  %idxprom223 = sext i32 %182 to i64
  %183 = load i32, i32* %qp, align 4
  %idxprom224 = sext i32 %183 to i64
  %184 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %184 to i64
  %185 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me226 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %185, i32 0, i32 151
  %186 = load double***, double**** %lambda_me226, align 8
  %arrayidx227 = getelementptr inbounds double**, double*** %186, i64 %idxprom225
  %187 = load double**, double*** %arrayidx227, align 8
  %arrayidx228 = getelementptr inbounds double*, double** %187, i64 %idxprom224
  %188 = load double*, double** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds double, double* %188, i64 %idxprom223
  %189 = load double, double* %arrayidx229, align 8
  %mul230 = fmul double 6.553600e+04, %189
  %add231 = fadd double %mul230, 5.000000e-01
  %conv232 = fptosi double %add231 to i32
  %190 = load i32, i32* %k, align 4
  %idxprom233 = sext i32 %190 to i64
  %191 = load i32, i32* %qp, align 4
  %idxprom234 = sext i32 %191 to i64
  %192 = load i32, i32* %j, align 4
  %idxprom235 = sext i32 %192 to i64
  %193 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf236 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %193, i32 0, i32 152
  %194 = load i32***, i32**** %lambda_mf236, align 8
  %arrayidx237 = getelementptr inbounds i32**, i32*** %194, i64 %idxprom235
  %195 = load i32**, i32*** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i32*, i32** %195, i64 %idxprom234
  %196 = load i32*, i32** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %196, i64 %idxprom233
  store i32 %conv232, i32* %arrayidx239, align 4
  br label %for.inc.240

for.inc.240:                                      ; preds = %cond.end.214
  %197 = load i32, i32* %k, align 4
  %inc241 = add nsw i32 %197, 1
  store i32 %inc241, i32* %k, align 4
  br label %for.cond.192

for.end.242:                                      ; preds = %for.cond.192
  %198 = load i32, i32* %j, align 4
  %cmp243 = icmp eq i32 %198, 1
  br i1 %cmp243, label %if.then.245, label %if.end.318

if.then.245:                                      ; preds = %for.end.242
  %199 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FixedLambda246 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %199, i32 0, i32 182
  %arrayidx247 = getelementptr inbounds [6 x double], [6 x double]* %FixedLambda246, i32 0, i64 5
  %200 = load double, double* %arrayidx247, align 8
  %201 = load i32, i32* %qp, align 4
  %idxprom248 = sext i32 %201 to i64
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md249 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 150
  %203 = load double**, double*** %lambda_md249, align 8
  %arrayidx250 = getelementptr inbounds double*, double** %203, i64 5
  %204 = load double*, double** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds double, double* %204, i64 %idxprom248
  store double %200, double* %arrayidx251, align 8
  %205 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric252 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %205, i32 0, i32 199
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric252, i32 0, i64 1
  %206 = load i32, i32* %arrayidx253, align 4
  %cmp254 = icmp eq i32 %206, 2
  br i1 %cmp254, label %land.rhs.256, label %land.end.261

land.rhs.256:                                     ; preds = %if.then.245
  %207 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric257 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %207, i32 0, i32 199
  %arrayidx258 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric257, i32 0, i64 2
  %208 = load i32, i32* %arrayidx258, align 4
  %cmp259 = icmp eq i32 %208, 2
  br label %land.end.261

land.end.261:                                     ; preds = %land.rhs.256, %if.then.245
  %209 = phi i1 [ false, %if.then.245 ], [ %cmp259, %land.rhs.256 ]
  %cond262 = select i1 %209, double 1.000000e+00, double 9.500000e-01
  %210 = load i32, i32* %qp, align 4
  %idxprom263 = sext i32 %210 to i64
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md264 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 150
  %212 = load double**, double*** %lambda_md264, align 8
  %arrayidx265 = getelementptr inbounds double*, double** %212, i64 5
  %213 = load double*, double** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds double, double* %213, i64 %idxprom263
  %214 = load double, double* %arrayidx266, align 8
  %mul267 = fmul double %cond262, %214
  %215 = load i32, i32* %qp, align 4
  %idxprom268 = sext i32 %215 to i64
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md269 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 150
  %217 = load double**, double*** %lambda_md269, align 8
  %arrayidx270 = getelementptr inbounds double*, double** %217, i64 5
  %218 = load double*, double** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds double, double* %218, i64 %idxprom268
  store double %mul267, double* %arrayidx271, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.272

for.cond.272:                                     ; preds = %for.inc.315, %land.end.261
  %219 = load i32, i32* %k, align 4
  %cmp273 = icmp sle i32 %219, 2
  br i1 %cmp273, label %for.body.275, label %for.end.317

for.body.275:                                     ; preds = %for.cond.272
  %220 = load i32, i32* %k, align 4
  %idxprom276 = sext i32 %220 to i64
  %221 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric277 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %221, i32 0, i32 199
  %arrayidx278 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric277, i32 0, i64 %idxprom276
  %222 = load i32, i32* %arrayidx278, align 4
  %cmp279 = icmp eq i32 %222, 1
  br i1 %cmp279, label %cond.true.281, label %cond.false.286

cond.true.281:                                    ; preds = %for.body.275
  %223 = load i32, i32* %qp, align 4
  %idxprom282 = sext i32 %223 to i64
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md283 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 150
  %225 = load double**, double*** %lambda_md283, align 8
  %arrayidx284 = getelementptr inbounds double*, double** %225, i64 5
  %226 = load double*, double** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds double, double* %226, i64 %idxprom282
  %227 = load double, double* %arrayidx285, align 8
  br label %cond.end.292

cond.false.286:                                   ; preds = %for.body.275
  %228 = load i32, i32* %qp, align 4
  %idxprom287 = sext i32 %228 to i64
  %229 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md288 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %229, i32 0, i32 150
  %230 = load double**, double*** %lambda_md288, align 8
  %arrayidx289 = getelementptr inbounds double*, double** %230, i64 5
  %231 = load double*, double** %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds double, double* %231, i64 %idxprom287
  %232 = load double, double* %arrayidx290, align 8
  %call291 = call double @sqrt(double %232) #4
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.false.286, %cond.true.281
  %cond293 = phi double [ %227, %cond.true.281 ], [ %call291, %cond.false.286 ]
  %233 = load i32, i32* %k, align 4
  %idxprom294 = sext i32 %233 to i64
  %234 = load i32, i32* %qp, align 4
  %idxprom295 = sext i32 %234 to i64
  %235 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me296 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %235, i32 0, i32 151
  %236 = load double***, double**** %lambda_me296, align 8
  %arrayidx297 = getelementptr inbounds double**, double*** %236, i64 5
  %237 = load double**, double*** %arrayidx297, align 8
  %arrayidx298 = getelementptr inbounds double*, double** %237, i64 %idxprom295
  %238 = load double*, double** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds double, double* %238, i64 %idxprom294
  store double %cond293, double* %arrayidx299, align 8
  %239 = load i32, i32* %k, align 4
  %idxprom300 = sext i32 %239 to i64
  %240 = load i32, i32* %qp, align 4
  %idxprom301 = sext i32 %240 to i64
  %241 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me302 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %241, i32 0, i32 151
  %242 = load double***, double**** %lambda_me302, align 8
  %arrayidx303 = getelementptr inbounds double**, double*** %242, i64 5
  %243 = load double**, double*** %arrayidx303, align 8
  %arrayidx304 = getelementptr inbounds double*, double** %243, i64 %idxprom301
  %244 = load double*, double** %arrayidx304, align 8
  %arrayidx305 = getelementptr inbounds double, double* %244, i64 %idxprom300
  %245 = load double, double* %arrayidx305, align 8
  %mul306 = fmul double 6.553600e+04, %245
  %add307 = fadd double %mul306, 5.000000e-01
  %conv308 = fptosi double %add307 to i32
  %246 = load i32, i32* %k, align 4
  %idxprom309 = sext i32 %246 to i64
  %247 = load i32, i32* %qp, align 4
  %idxprom310 = sext i32 %247 to i64
  %248 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf311 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %248, i32 0, i32 152
  %249 = load i32***, i32**** %lambda_mf311, align 8
  %arrayidx312 = getelementptr inbounds i32**, i32*** %249, i64 5
  %250 = load i32**, i32*** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i32*, i32** %250, i64 %idxprom310
  %251 = load i32*, i32** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i32, i32* %251, i64 %idxprom309
  store i32 %conv308, i32* %arrayidx314, align 4
  br label %for.inc.315

for.inc.315:                                      ; preds = %cond.end.292
  %252 = load i32, i32* %k, align 4
  %inc316 = add nsw i32 %252, 1
  store i32 %inc316, i32* %k, align 4
  br label %for.cond.272

for.end.317:                                      ; preds = %for.cond.272
  br label %if.end.318

if.end.318:                                       ; preds = %for.end.317, %for.end.242
  br label %if.end.590

if.else.319:                                      ; preds = %if.else
  %253 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %253, i32 0, i32 40
  %254 = load i32, i32* %successive_Bframe, align 4
  %cmp320 = icmp sgt i32 %254, 0
  br i1 %cmp320, label %if.then.322, label %if.else.348

if.then.322:                                      ; preds = %if.else.319
  %255 = load double, double* %qp_temp, align 8
  %div323 = fdiv double %255, 3.000000e+00
  %call324 = call double @pow(double 2.000000e+00, double %div323) #4
  %mul325 = fmul double 6.800000e-01, %call324
  %256 = load i32, i32* %j, align 4
  %cmp326 = icmp eq i32 %256, 1
  br i1 %cmp326, label %cond.true.328, label %cond.false.331

cond.true.328:                                    ; preds = %if.then.322
  %257 = load double, double* %qp_temp, align 8
  %div329 = fdiv double %257, 6.000000e+00
  %call330 = call double @dClip3(double 2.000000e+00, double 4.000000e+00, double %div329)
  br label %cond.end.340

cond.false.331:                                   ; preds = %if.then.322
  %258 = load i32, i32* %j, align 4
  %cmp332 = icmp eq i32 %258, 3
  br i1 %cmp332, label %cond.true.334, label %cond.false.337

cond.true.334:                                    ; preds = %cond.false.331
  %259 = load double, double* %qp_temp, align 8
  %div335 = fdiv double %259, 1.200000e+01
  %call336 = call double @dClip3(double 1.400000e+00, double 3.000000e+00, double %div335)
  br label %cond.end.338

cond.false.337:                                   ; preds = %cond.false.331
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.337, %cond.true.334
  %cond339 = phi double [ %call336, %cond.true.334 ], [ 1.000000e+00, %cond.false.337 ]
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.end.338, %cond.true.328
  %cond341 = phi double [ %call330, %cond.true.328 ], [ %cond339, %cond.end.338 ]
  %mul342 = fmul double %mul325, %cond341
  %260 = load i32, i32* %qp, align 4
  %idxprom343 = sext i32 %260 to i64
  %261 = load i32, i32* %j, align 4
  %idxprom344 = sext i32 %261 to i64
  %262 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md345 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %262, i32 0, i32 150
  %263 = load double**, double*** %lambda_md345, align 8
  %arrayidx346 = getelementptr inbounds double*, double** %263, i64 %idxprom344
  %264 = load double*, double** %arrayidx346, align 8
  %arrayidx347 = getelementptr inbounds double, double* %264, i64 %idxprom343
  store double %mul342, double* %arrayidx347, align 8
  br label %if.end.372

if.else.348:                                      ; preds = %if.else.319
  %265 = load double, double* %qp_temp, align 8
  %div349 = fdiv double %265, 3.000000e+00
  %call350 = call double @pow(double 2.000000e+00, double %div349) #4
  %mul351 = fmul double 8.500000e-01, %call350
  %266 = load i32, i32* %j, align 4
  %cmp352 = icmp eq i32 %266, 1
  br i1 %cmp352, label %cond.true.354, label %cond.false.355

cond.true.354:                                    ; preds = %if.else.348
  br label %cond.end.364

cond.false.355:                                   ; preds = %if.else.348
  %267 = load i32, i32* %j, align 4
  %cmp356 = icmp eq i32 %267, 3
  br i1 %cmp356, label %cond.true.358, label %cond.false.361

cond.true.358:                                    ; preds = %cond.false.355
  %268 = load double, double* %qp_temp, align 8
  %div359 = fdiv double %268, 1.200000e+01
  %call360 = call double @dClip3(double 1.400000e+00, double 3.000000e+00, double %div359)
  br label %cond.end.362

cond.false.361:                                   ; preds = %cond.false.355
  br label %cond.end.362

cond.end.362:                                     ; preds = %cond.false.361, %cond.true.358
  %cond363 = phi double [ %call360, %cond.true.358 ], [ 1.000000e+00, %cond.false.361 ]
  br label %cond.end.364

cond.end.364:                                     ; preds = %cond.end.362, %cond.true.354
  %cond365 = phi double [ 4.000000e+00, %cond.true.354 ], [ %cond363, %cond.end.362 ]
  %mul366 = fmul double %mul351, %cond365
  %269 = load i32, i32* %qp, align 4
  %idxprom367 = sext i32 %269 to i64
  %270 = load i32, i32* %j, align 4
  %idxprom368 = sext i32 %270 to i64
  %271 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md369 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %271, i32 0, i32 150
  %272 = load double**, double*** %lambda_md369, align 8
  %arrayidx370 = getelementptr inbounds double*, double** %272, i64 %idxprom368
  %273 = load double*, double** %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds double, double* %273, i64 %idxprom367
  store double %mul366, double* %arrayidx371, align 8
  br label %if.end.372

if.end.372:                                       ; preds = %cond.end.364, %cond.end.340
  %274 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric373 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %274, i32 0, i32 199
  %arrayidx374 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric373, i32 0, i64 1
  %275 = load i32, i32* %arrayidx374, align 4
  %cmp375 = icmp eq i32 %275, 2
  br i1 %cmp375, label %land.rhs.377, label %land.end.382

land.rhs.377:                                     ; preds = %if.end.372
  %276 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric378 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %276, i32 0, i32 199
  %arrayidx379 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric378, i32 0, i64 2
  %277 = load i32, i32* %arrayidx379, align 4
  %cmp380 = icmp eq i32 %277, 2
  br label %land.end.382

land.end.382:                                     ; preds = %land.rhs.377, %if.end.372
  %278 = phi i1 [ false, %if.end.372 ], [ %cmp380, %land.rhs.377 ]
  %cond383 = select i1 %278, double 1.000000e+00, double 9.500000e-01
  %279 = load i32, i32* %qp, align 4
  %idxprom384 = sext i32 %279 to i64
  %280 = load i32, i32* %j, align 4
  %idxprom385 = sext i32 %280 to i64
  %281 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md386 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %281, i32 0, i32 150
  %282 = load double**, double*** %lambda_md386, align 8
  %arrayidx387 = getelementptr inbounds double*, double** %282, i64 %idxprom385
  %283 = load double*, double** %arrayidx387, align 8
  %arrayidx388 = getelementptr inbounds double, double* %283, i64 %idxprom384
  %284 = load double, double* %arrayidx388, align 8
  %mul389 = fmul double %cond383, %284
  %285 = load i32, i32* %qp, align 4
  %idxprom390 = sext i32 %285 to i64
  %286 = load i32, i32* %j, align 4
  %idxprom391 = sext i32 %286 to i64
  %287 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md392 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %287, i32 0, i32 150
  %288 = load double**, double*** %lambda_md392, align 8
  %arrayidx393 = getelementptr inbounds double*, double** %288, i64 %idxprom391
  %289 = load double*, double** %arrayidx393, align 8
  %arrayidx394 = getelementptr inbounds double, double* %289, i64 %idxprom390
  store double %mul389, double* %arrayidx394, align 8
  %290 = load i32, i32* %j, align 4
  %cmp395 = icmp eq i32 %290, 1
  br i1 %cmp395, label %land.lhs.true, label %land.end.402

land.lhs.true:                                    ; preds = %land.end.382
  %291 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %291, i32 0, i32 68
  %292 = load i32, i32* %BRefPictures, align 4
  %cmp397 = icmp eq i32 %292, 2
  br i1 %cmp397, label %land.rhs.399, label %land.end.402

land.rhs.399:                                     ; preds = %land.lhs.true
  %293 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %293, i32 0, i32 76
  %294 = load i32, i32* %b_frame_to_code, align 4
  %cmp400 = icmp eq i32 %294, 0
  br label %land.end.402

land.end.402:                                     ; preds = %land.rhs.399, %land.lhs.true, %land.end.382
  %295 = phi i1 [ false, %land.lhs.true ], [ false, %land.end.382 ], [ %cmp400, %land.rhs.399 ]
  %cond403 = select i1 %295, double 5.000000e-01, double 1.000000e+00
  %296 = load i32, i32* %qp, align 4
  %idxprom404 = sext i32 %296 to i64
  %297 = load i32, i32* %j, align 4
  %idxprom405 = sext i32 %297 to i64
  %298 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md406 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %298, i32 0, i32 150
  %299 = load double**, double*** %lambda_md406, align 8
  %arrayidx407 = getelementptr inbounds double*, double** %299, i64 %idxprom405
  %300 = load double*, double** %arrayidx407, align 8
  %arrayidx408 = getelementptr inbounds double, double* %300, i64 %idxprom404
  %301 = load double, double* %arrayidx408, align 8
  %mul409 = fmul double %cond403, %301
  %302 = load i32, i32* %qp, align 4
  %idxprom410 = sext i32 %302 to i64
  %303 = load i32, i32* %j, align 4
  %idxprom411 = sext i32 %303 to i64
  %304 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md412 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %304, i32 0, i32 150
  %305 = load double**, double*** %lambda_md412, align 8
  %arrayidx413 = getelementptr inbounds double*, double** %305, i64 %idxprom411
  %306 = load double*, double** %arrayidx413, align 8
  %arrayidx414 = getelementptr inbounds double, double* %306, i64 %idxprom410
  store double %mul409, double* %arrayidx414, align 8
  %307 = load i32, i32* %j, align 4
  %cmp415 = icmp eq i32 %307, 1
  br i1 %cmp415, label %if.then.417, label %if.else.501

if.then.417:                                      ; preds = %land.end.402
  %308 = load i32, i32* %qp, align 4
  %idxprom418 = sext i32 %308 to i64
  %309 = load i32, i32* %j, align 4
  %idxprom419 = sext i32 %309 to i64
  %310 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md420 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %310, i32 0, i32 150
  %311 = load double**, double*** %lambda_md420, align 8
  %arrayidx421 = getelementptr inbounds double*, double** %311, i64 %idxprom419
  %312 = load double*, double** %arrayidx421, align 8
  %arrayidx422 = getelementptr inbounds double, double* %312, i64 %idxprom418
  %313 = load double, double* %arrayidx422, align 8
  %314 = load i32, i32* %qp, align 4
  %idxprom423 = sext i32 %314 to i64
  %315 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md424 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %315, i32 0, i32 150
  %316 = load double**, double*** %lambda_md424, align 8
  %arrayidx425 = getelementptr inbounds double*, double** %316, i64 5
  %317 = load double*, double** %arrayidx425, align 8
  %arrayidx426 = getelementptr inbounds double, double* %317, i64 %idxprom423
  store double %313, double* %arrayidx426, align 8
  %318 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %318, i32 0, i32 69
  %319 = load i32, i32* %HierarchicalCoding, align 4
  %cmp427 = icmp eq i32 %319, 2
  br i1 %cmp427, label %if.then.429, label %if.else.443

if.then.429:                                      ; preds = %if.then.417
  %320 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code430 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %320, i32 0, i32 76
  %321 = load i32, i32* %b_frame_to_code430, align 4
  %sub431 = sub nsw i32 %321, 1
  %idxprom432 = sext i32 %sub431 to i64
  %322 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx433 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %322, i64 %idxprom432
  %hierarchy_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx433, i32 0, i32 4
  %323 = load i32, i32* %hierarchy_layer, align 4
  %conv434 = sitofp i32 %323 to double
  %mul435 = fmul double 2.000000e-01, %conv434
  %call436 = call double @dmin(double 4.000000e-01, double %mul435)
  %sub437 = fsub double 1.000000e+00, %call436
  %324 = load i32, i32* %qp, align 4
  %idxprom438 = sext i32 %324 to i64
  %325 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md439 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %325, i32 0, i32 150
  %326 = load double**, double*** %lambda_md439, align 8
  %arrayidx440 = getelementptr inbounds double*, double** %326, i64 5
  %327 = load double*, double** %arrayidx440, align 8
  %arrayidx441 = getelementptr inbounds double, double* %327, i64 %idxprom438
  %328 = load double, double* %arrayidx441, align 8
  %mul442 = fmul double %328, %sub437
  store double %mul442, double* %arrayidx441, align 8
  br label %if.end.449

if.else.443:                                      ; preds = %if.then.417
  %329 = load i32, i32* %qp, align 4
  %idxprom444 = sext i32 %329 to i64
  %330 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md445 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %330, i32 0, i32 150
  %331 = load double**, double*** %lambda_md445, align 8
  %arrayidx446 = getelementptr inbounds double*, double** %331, i64 5
  %332 = load double*, double** %arrayidx446, align 8
  %arrayidx447 = getelementptr inbounds double, double* %332, i64 %idxprom444
  %333 = load double, double* %arrayidx447, align 8
  %mul448 = fmul double %333, 8.000000e-01
  store double %mul448, double* %arrayidx447, align 8
  br label %if.end.449

if.end.449:                                       ; preds = %if.else.443, %if.then.429
  %334 = load double, double* %lambda_scale, align 8
  %335 = load i32, i32* %qp, align 4
  %idxprom450 = sext i32 %335 to i64
  %336 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md451 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %336, i32 0, i32 150
  %337 = load double**, double*** %lambda_md451, align 8
  %arrayidx452 = getelementptr inbounds double*, double** %337, i64 5
  %338 = load double*, double** %arrayidx452, align 8
  %arrayidx453 = getelementptr inbounds double, double* %338, i64 %idxprom450
  %339 = load double, double* %arrayidx453, align 8
  %mul454 = fmul double %339, %334
  store double %mul454, double* %arrayidx453, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.455

for.cond.455:                                     ; preds = %for.inc.498, %if.end.449
  %340 = load i32, i32* %k, align 4
  %cmp456 = icmp sle i32 %340, 2
  br i1 %cmp456, label %for.body.458, label %for.end.500

for.body.458:                                     ; preds = %for.cond.455
  %341 = load i32, i32* %k, align 4
  %idxprom459 = sext i32 %341 to i64
  %342 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric460 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %342, i32 0, i32 199
  %arrayidx461 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric460, i32 0, i64 %idxprom459
  %343 = load i32, i32* %arrayidx461, align 4
  %cmp462 = icmp eq i32 %343, 1
  br i1 %cmp462, label %cond.true.464, label %cond.false.469

cond.true.464:                                    ; preds = %for.body.458
  %344 = load i32, i32* %qp, align 4
  %idxprom465 = sext i32 %344 to i64
  %345 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md466 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %345, i32 0, i32 150
  %346 = load double**, double*** %lambda_md466, align 8
  %arrayidx467 = getelementptr inbounds double*, double** %346, i64 5
  %347 = load double*, double** %arrayidx467, align 8
  %arrayidx468 = getelementptr inbounds double, double* %347, i64 %idxprom465
  %348 = load double, double* %arrayidx468, align 8
  br label %cond.end.475

cond.false.469:                                   ; preds = %for.body.458
  %349 = load i32, i32* %qp, align 4
  %idxprom470 = sext i32 %349 to i64
  %350 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md471 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %350, i32 0, i32 150
  %351 = load double**, double*** %lambda_md471, align 8
  %arrayidx472 = getelementptr inbounds double*, double** %351, i64 5
  %352 = load double*, double** %arrayidx472, align 8
  %arrayidx473 = getelementptr inbounds double, double* %352, i64 %idxprom470
  %353 = load double, double* %arrayidx473, align 8
  %call474 = call double @sqrt(double %353) #4
  br label %cond.end.475

cond.end.475:                                     ; preds = %cond.false.469, %cond.true.464
  %cond476 = phi double [ %348, %cond.true.464 ], [ %call474, %cond.false.469 ]
  %354 = load i32, i32* %k, align 4
  %idxprom477 = sext i32 %354 to i64
  %355 = load i32, i32* %qp, align 4
  %idxprom478 = sext i32 %355 to i64
  %356 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me479 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %356, i32 0, i32 151
  %357 = load double***, double**** %lambda_me479, align 8
  %arrayidx480 = getelementptr inbounds double**, double*** %357, i64 5
  %358 = load double**, double*** %arrayidx480, align 8
  %arrayidx481 = getelementptr inbounds double*, double** %358, i64 %idxprom478
  %359 = load double*, double** %arrayidx481, align 8
  %arrayidx482 = getelementptr inbounds double, double* %359, i64 %idxprom477
  store double %cond476, double* %arrayidx482, align 8
  %360 = load i32, i32* %k, align 4
  %idxprom483 = sext i32 %360 to i64
  %361 = load i32, i32* %qp, align 4
  %idxprom484 = sext i32 %361 to i64
  %362 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me485 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %362, i32 0, i32 151
  %363 = load double***, double**** %lambda_me485, align 8
  %arrayidx486 = getelementptr inbounds double**, double*** %363, i64 5
  %364 = load double**, double*** %arrayidx486, align 8
  %arrayidx487 = getelementptr inbounds double*, double** %364, i64 %idxprom484
  %365 = load double*, double** %arrayidx487, align 8
  %arrayidx488 = getelementptr inbounds double, double* %365, i64 %idxprom483
  %366 = load double, double* %arrayidx488, align 8
  %mul489 = fmul double 6.553600e+04, %366
  %add490 = fadd double %mul489, 5.000000e-01
  %conv491 = fptosi double %add490 to i32
  %367 = load i32, i32* %k, align 4
  %idxprom492 = sext i32 %367 to i64
  %368 = load i32, i32* %qp, align 4
  %idxprom493 = sext i32 %368 to i64
  %369 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf494 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %369, i32 0, i32 152
  %370 = load i32***, i32**** %lambda_mf494, align 8
  %arrayidx495 = getelementptr inbounds i32**, i32*** %370, i64 5
  %371 = load i32**, i32*** %arrayidx495, align 8
  %arrayidx496 = getelementptr inbounds i32*, i32** %371, i64 %idxprom493
  %372 = load i32*, i32** %arrayidx496, align 8
  %arrayidx497 = getelementptr inbounds i32, i32* %372, i64 %idxprom492
  store i32 %conv491, i32* %arrayidx497, align 4
  br label %for.inc.498

for.inc.498:                                      ; preds = %cond.end.475
  %373 = load i32, i32* %k, align 4
  %inc499 = add nsw i32 %373, 1
  store i32 %inc499, i32* %k, align 4
  br label %for.cond.455

for.end.500:                                      ; preds = %for.cond.455
  br label %if.end.508

if.else.501:                                      ; preds = %land.end.402
  %374 = load double, double* %lambda_scale, align 8
  %375 = load i32, i32* %qp, align 4
  %idxprom502 = sext i32 %375 to i64
  %376 = load i32, i32* %j, align 4
  %idxprom503 = sext i32 %376 to i64
  %377 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md504 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %377, i32 0, i32 150
  %378 = load double**, double*** %lambda_md504, align 8
  %arrayidx505 = getelementptr inbounds double*, double** %378, i64 %idxprom503
  %379 = load double*, double** %arrayidx505, align 8
  %arrayidx506 = getelementptr inbounds double, double* %379, i64 %idxprom502
  %380 = load double, double* %arrayidx506, align 8
  %mul507 = fmul double %380, %374
  store double %mul507, double* %arrayidx506, align 8
  br label %if.end.508

if.end.508:                                       ; preds = %if.else.501, %for.end.500
  store i32 0, i32* %k, align 4
  br label %for.cond.509

for.cond.509:                                     ; preds = %for.inc.557, %if.end.508
  %381 = load i32, i32* %k, align 4
  %cmp510 = icmp sle i32 %381, 2
  br i1 %cmp510, label %for.body.512, label %for.end.559

for.body.512:                                     ; preds = %for.cond.509
  %382 = load i32, i32* %k, align 4
  %idxprom513 = sext i32 %382 to i64
  %383 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric514 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %383, i32 0, i32 199
  %arrayidx515 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric514, i32 0, i64 %idxprom513
  %384 = load i32, i32* %arrayidx515, align 4
  %cmp516 = icmp eq i32 %384, 1
  br i1 %cmp516, label %cond.true.518, label %cond.false.524

cond.true.518:                                    ; preds = %for.body.512
  %385 = load i32, i32* %qp, align 4
  %idxprom519 = sext i32 %385 to i64
  %386 = load i32, i32* %j, align 4
  %idxprom520 = sext i32 %386 to i64
  %387 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md521 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %387, i32 0, i32 150
  %388 = load double**, double*** %lambda_md521, align 8
  %arrayidx522 = getelementptr inbounds double*, double** %388, i64 %idxprom520
  %389 = load double*, double** %arrayidx522, align 8
  %arrayidx523 = getelementptr inbounds double, double* %389, i64 %idxprom519
  %390 = load double, double* %arrayidx523, align 8
  br label %cond.end.531

cond.false.524:                                   ; preds = %for.body.512
  %391 = load i32, i32* %qp, align 4
  %idxprom525 = sext i32 %391 to i64
  %392 = load i32, i32* %j, align 4
  %idxprom526 = sext i32 %392 to i64
  %393 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md527 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %393, i32 0, i32 150
  %394 = load double**, double*** %lambda_md527, align 8
  %arrayidx528 = getelementptr inbounds double*, double** %394, i64 %idxprom526
  %395 = load double*, double** %arrayidx528, align 8
  %arrayidx529 = getelementptr inbounds double, double* %395, i64 %idxprom525
  %396 = load double, double* %arrayidx529, align 8
  %call530 = call double @sqrt(double %396) #4
  br label %cond.end.531

cond.end.531:                                     ; preds = %cond.false.524, %cond.true.518
  %cond532 = phi double [ %390, %cond.true.518 ], [ %call530, %cond.false.524 ]
  %397 = load i32, i32* %k, align 4
  %idxprom533 = sext i32 %397 to i64
  %398 = load i32, i32* %qp, align 4
  %idxprom534 = sext i32 %398 to i64
  %399 = load i32, i32* %j, align 4
  %idxprom535 = sext i32 %399 to i64
  %400 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me536 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %400, i32 0, i32 151
  %401 = load double***, double**** %lambda_me536, align 8
  %arrayidx537 = getelementptr inbounds double**, double*** %401, i64 %idxprom535
  %402 = load double**, double*** %arrayidx537, align 8
  %arrayidx538 = getelementptr inbounds double*, double** %402, i64 %idxprom534
  %403 = load double*, double** %arrayidx538, align 8
  %arrayidx539 = getelementptr inbounds double, double* %403, i64 %idxprom533
  store double %cond532, double* %arrayidx539, align 8
  %404 = load i32, i32* %k, align 4
  %idxprom540 = sext i32 %404 to i64
  %405 = load i32, i32* %qp, align 4
  %idxprom541 = sext i32 %405 to i64
  %406 = load i32, i32* %j, align 4
  %idxprom542 = sext i32 %406 to i64
  %407 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me543 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %407, i32 0, i32 151
  %408 = load double***, double**** %lambda_me543, align 8
  %arrayidx544 = getelementptr inbounds double**, double*** %408, i64 %idxprom542
  %409 = load double**, double*** %arrayidx544, align 8
  %arrayidx545 = getelementptr inbounds double*, double** %409, i64 %idxprom541
  %410 = load double*, double** %arrayidx545, align 8
  %arrayidx546 = getelementptr inbounds double, double* %410, i64 %idxprom540
  %411 = load double, double* %arrayidx546, align 8
  %mul547 = fmul double 6.553600e+04, %411
  %add548 = fadd double %mul547, 5.000000e-01
  %conv549 = fptosi double %add548 to i32
  %412 = load i32, i32* %k, align 4
  %idxprom550 = sext i32 %412 to i64
  %413 = load i32, i32* %qp, align 4
  %idxprom551 = sext i32 %413 to i64
  %414 = load i32, i32* %j, align 4
  %idxprom552 = sext i32 %414 to i64
  %415 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf553 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %415, i32 0, i32 152
  %416 = load i32***, i32**** %lambda_mf553, align 8
  %arrayidx554 = getelementptr inbounds i32**, i32*** %416, i64 %idxprom552
  %417 = load i32**, i32*** %arrayidx554, align 8
  %arrayidx555 = getelementptr inbounds i32*, i32** %417, i64 %idxprom551
  %418 = load i32*, i32** %arrayidx555, align 8
  %arrayidx556 = getelementptr inbounds i32, i32* %418, i64 %idxprom550
  store i32 %conv549, i32* %arrayidx556, align 4
  br label %for.inc.557

for.inc.557:                                      ; preds = %cond.end.531
  %419 = load i32, i32* %k, align 4
  %inc558 = add nsw i32 %419, 1
  store i32 %inc558, i32* %k, align 4
  br label %for.cond.509

for.end.559:                                      ; preds = %for.cond.509
  %420 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %420, i32 0, i32 114
  %421 = load i32, i32* %CtxAdptLagrangeMult, align 4
  %cmp560 = icmp eq i32 %421, 1
  br i1 %cmp560, label %if.then.562, label %if.end.589

if.then.562:                                      ; preds = %for.end.559
  %422 = load i32, i32* %qp, align 4
  %cmp563 = icmp sge i32 %422, 32
  br i1 %cmp563, label %land.lhs.true.565, label %cond.false.570

land.lhs.true.565:                                ; preds = %if.then.562
  %423 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %423, i32 0, i32 157
  %424 = load i32, i32* %RCEnable, align 4
  %tobool566 = icmp ne i32 %424, 0
  br i1 %tobool566, label %cond.false.570, label %cond.true.567

cond.true.567:                                    ; preds = %land.lhs.true.565
  %425 = load i32, i32* %qp, align 4
  %sub568 = sub nsw i32 %425, 4
  %call569 = call i32 @imax(i32 0, i32 %sub568)
  br label %cond.end.573

cond.false.570:                                   ; preds = %land.lhs.true.565, %if.then.562
  %426 = load i32, i32* %qp, align 4
  %sub571 = sub nsw i32 %426, 6
  %call572 = call i32 @imax(i32 0, i32 %sub571)
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.false.570, %cond.true.567
  %cond574 = phi i32 [ %call569, %cond.true.567 ], [ %call572, %cond.false.570 ]
  store i32 %cond574, i32* %lambda_qp, align 4
  %427 = load i32, i32* %lambda_qp, align 4
  %idxprom575 = sext i32 %427 to i64
  %428 = load i32, i32* %j, align 4
  %idxprom576 = sext i32 %428 to i64
  %429 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me577 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %429, i32 0, i32 151
  %430 = load double***, double**** %lambda_me577, align 8
  %arrayidx578 = getelementptr inbounds double**, double*** %430, i64 %idxprom576
  %431 = load double**, double*** %arrayidx578, align 8
  %arrayidx579 = getelementptr inbounds double*, double** %431, i64 %idxprom575
  %432 = load double*, double** %arrayidx579, align 8
  %arrayidx580 = getelementptr inbounds double, double* %432, i64 2
  %433 = load double, double* %arrayidx580, align 8
  %add581 = fadd double %433, 1.000000e+00
  %call582 = call double @log(double %add581) #4
  %call583 = call double @log(double 2.000000e+00) #4
  %div584 = fdiv double %call582, %call583
  %434 = load i32, i32* %qp, align 4
  %idxprom585 = sext i32 %434 to i64
  %435 = load i32, i32* %j, align 4
  %idxprom586 = sext i32 %435 to i64
  %436 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf_factor = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %436, i32 0, i32 153
  %437 = load double**, double*** %lambda_mf_factor, align 8
  %arrayidx587 = getelementptr inbounds double*, double** %437, i64 %idxprom586
  %438 = load double*, double** %arrayidx587, align 8
  %arrayidx588 = getelementptr inbounds double, double* %438, i64 %idxprom585
  store double %div584, double* %arrayidx588, align 8
  br label %if.end.589

if.end.589:                                       ; preds = %cond.end.573, %for.end.559
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.589, %if.end.318
  br label %if.end.591

if.end.591:                                       ; preds = %if.end.590, %if.end
  br label %for.inc.592

for.inc.592:                                      ; preds = %if.end.591
  %439 = load i32, i32* %qp, align 4
  %inc593 = add nsw i32 %439, 1
  store i32 %inc593, i32* %qp, align 4
  br label %for.cond.3

for.end.594:                                      ; preds = %for.cond.3
  br label %for.inc.595

for.inc.595:                                      ; preds = %for.end.594
  %440 = load i32, i32* %j, align 4
  %inc596 = add nsw i32 %440, 1
  store i32 %inc596, i32* %j, align 4
  br label %for.cond

for.end.597:                                      ; preds = %for.cond
  br label %if.end.719

if.else.598:                                      ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond.599

for.cond.599:                                     ; preds = %for.inc.716, %if.else.598
  %441 = load i32, i32* %j, align 4
  %cmp600 = icmp slt i32 %441, 6
  br i1 %cmp600, label %for.body.602, label %for.end.718

for.body.602:                                     ; preds = %for.cond.599
  %442 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale603 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %442, i32 0, i32 144
  %443 = load i32, i32* %bitdepth_luma_qp_scale603, align 4
  %sub604 = sub nsw i32 0, %443
  store i32 %sub604, i32* %qp, align 4
  br label %for.cond.605

for.cond.605:                                     ; preds = %for.inc.713, %for.body.602
  %444 = load i32, i32* %qp, align 4
  %cmp606 = icmp slt i32 %444, 52
  br i1 %cmp606, label %for.body.608, label %for.end.715

for.body.608:                                     ; preds = %for.cond.605
  %445 = load i32, i32* %qp, align 4
  %sub609 = sub nsw i32 %445, 12
  %call610 = call i32 @imax(i32 0, i32 %sub609)
  %idxprom611 = sext i32 %call610 to i64
  %arrayidx612 = getelementptr inbounds [40 x i32], [40 x i32]* @QP2QUANT, i32 0, i64 %idxprom611
  %446 = load i32, i32* %arrayidx612, align 4
  %conv613 = sitofp i32 %446 to double
  %447 = load i32, i32* %qp, align 4
  %idxprom614 = sext i32 %447 to i64
  %448 = load i32, i32* %j, align 4
  %idxprom615 = sext i32 %448 to i64
  %449 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md616 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %449, i32 0, i32 150
  %450 = load double**, double*** %lambda_md616, align 8
  %arrayidx617 = getelementptr inbounds double*, double** %450, i64 %idxprom615
  %451 = load double*, double** %arrayidx617, align 8
  %arrayidx618 = getelementptr inbounds double, double* %451, i64 %idxprom614
  store double %conv613, double* %arrayidx618, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.619

for.cond.619:                                     ; preds = %for.inc.676, %for.body.608
  %452 = load i32, i32* %k, align 4
  %cmp620 = icmp sle i32 %452, 2
  br i1 %cmp620, label %for.body.622, label %for.end.678

for.body.622:                                     ; preds = %for.cond.619
  %453 = load i32, i32* %qp, align 4
  %idxprom623 = sext i32 %453 to i64
  %454 = load i32, i32* %j, align 4
  %idxprom624 = sext i32 %454 to i64
  %455 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md625 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %455, i32 0, i32 150
  %456 = load double**, double*** %lambda_md625, align 8
  %arrayidx626 = getelementptr inbounds double*, double** %456, i64 %idxprom624
  %457 = load double*, double** %arrayidx626, align 8
  %arrayidx627 = getelementptr inbounds double, double* %457, i64 %idxprom623
  %458 = load double, double* %arrayidx627, align 8
  %459 = load i32, i32* %k, align 4
  %idxprom628 = sext i32 %459 to i64
  %460 = load i32, i32* %qp, align 4
  %idxprom629 = sext i32 %460 to i64
  %461 = load i32, i32* %j, align 4
  %idxprom630 = sext i32 %461 to i64
  %462 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me631 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %462, i32 0, i32 151
  %463 = load double***, double**** %lambda_me631, align 8
  %arrayidx632 = getelementptr inbounds double**, double*** %463, i64 %idxprom630
  %464 = load double**, double*** %arrayidx632, align 8
  %arrayidx633 = getelementptr inbounds double*, double** %464, i64 %idxprom629
  %465 = load double*, double** %arrayidx633, align 8
  %arrayidx634 = getelementptr inbounds double, double* %465, i64 %idxprom628
  store double %458, double* %arrayidx634, align 8
  %466 = load i32, i32* %k, align 4
  %idxprom635 = sext i32 %466 to i64
  %467 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric636 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %467, i32 0, i32 199
  %arrayidx637 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric636, i32 0, i64 %idxprom635
  %468 = load i32, i32* %arrayidx637, align 4
  %cmp638 = icmp eq i32 %468, 1
  br i1 %cmp638, label %cond.true.640, label %cond.false.648

cond.true.640:                                    ; preds = %for.body.622
  %469 = load i32, i32* %k, align 4
  %idxprom641 = sext i32 %469 to i64
  %470 = load i32, i32* %qp, align 4
  %idxprom642 = sext i32 %470 to i64
  %471 = load i32, i32* %j, align 4
  %idxprom643 = sext i32 %471 to i64
  %472 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me644 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %472, i32 0, i32 151
  %473 = load double***, double**** %lambda_me644, align 8
  %arrayidx645 = getelementptr inbounds double**, double*** %473, i64 %idxprom643
  %474 = load double**, double*** %arrayidx645, align 8
  %arrayidx646 = getelementptr inbounds double*, double** %474, i64 %idxprom642
  %475 = load double*, double** %arrayidx646, align 8
  %arrayidx647 = getelementptr inbounds double, double* %475, i64 %idxprom641
  %476 = load double, double* %arrayidx647, align 8
  br label %cond.end.649

cond.false.648:                                   ; preds = %for.body.622
  br label %cond.end.649

cond.end.649:                                     ; preds = %cond.false.648, %cond.true.640
  %cond650 = phi double [ %476, %cond.true.640 ], [ 1.000000e+00, %cond.false.648 ]
  %477 = load i32, i32* %k, align 4
  %idxprom651 = sext i32 %477 to i64
  %478 = load i32, i32* %qp, align 4
  %idxprom652 = sext i32 %478 to i64
  %479 = load i32, i32* %j, align 4
  %idxprom653 = sext i32 %479 to i64
  %480 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me654 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %480, i32 0, i32 151
  %481 = load double***, double**** %lambda_me654, align 8
  %arrayidx655 = getelementptr inbounds double**, double*** %481, i64 %idxprom653
  %482 = load double**, double*** %arrayidx655, align 8
  %arrayidx656 = getelementptr inbounds double*, double** %482, i64 %idxprom652
  %483 = load double*, double** %arrayidx656, align 8
  %arrayidx657 = getelementptr inbounds double, double* %483, i64 %idxprom651
  %484 = load double, double* %arrayidx657, align 8
  %mul658 = fmul double %484, %cond650
  store double %mul658, double* %arrayidx657, align 8
  %485 = load i32, i32* %k, align 4
  %idxprom659 = sext i32 %485 to i64
  %486 = load i32, i32* %qp, align 4
  %idxprom660 = sext i32 %486 to i64
  %487 = load i32, i32* %j, align 4
  %idxprom661 = sext i32 %487 to i64
  %488 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me662 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %488, i32 0, i32 151
  %489 = load double***, double**** %lambda_me662, align 8
  %arrayidx663 = getelementptr inbounds double**, double*** %489, i64 %idxprom661
  %490 = load double**, double*** %arrayidx663, align 8
  %arrayidx664 = getelementptr inbounds double*, double** %490, i64 %idxprom660
  %491 = load double*, double** %arrayidx664, align 8
  %arrayidx665 = getelementptr inbounds double, double* %491, i64 %idxprom659
  %492 = load double, double* %arrayidx665, align 8
  %mul666 = fmul double 6.553600e+04, %492
  %add667 = fadd double %mul666, 5.000000e-01
  %conv668 = fptosi double %add667 to i32
  %493 = load i32, i32* %k, align 4
  %idxprom669 = sext i32 %493 to i64
  %494 = load i32, i32* %qp, align 4
  %idxprom670 = sext i32 %494 to i64
  %495 = load i32, i32* %j, align 4
  %idxprom671 = sext i32 %495 to i64
  %496 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf672 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %496, i32 0, i32 152
  %497 = load i32***, i32**** %lambda_mf672, align 8
  %arrayidx673 = getelementptr inbounds i32**, i32*** %497, i64 %idxprom671
  %498 = load i32**, i32*** %arrayidx673, align 8
  %arrayidx674 = getelementptr inbounds i32*, i32** %498, i64 %idxprom670
  %499 = load i32*, i32** %arrayidx674, align 8
  %arrayidx675 = getelementptr inbounds i32, i32* %499, i64 %idxprom669
  store i32 %conv668, i32* %arrayidx675, align 4
  br label %for.inc.676

for.inc.676:                                      ; preds = %cond.end.649
  %500 = load i32, i32* %k, align 4
  %inc677 = add nsw i32 %500, 1
  store i32 %inc677, i32* %k, align 4
  br label %for.cond.619

for.end.678:                                      ; preds = %for.cond.619
  %501 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult679 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %501, i32 0, i32 114
  %502 = load i32, i32* %CtxAdptLagrangeMult679, align 4
  %cmp680 = icmp eq i32 %502, 1
  br i1 %cmp680, label %if.then.682, label %if.end.712

if.then.682:                                      ; preds = %for.end.678
  %503 = load i32, i32* %qp, align 4
  %cmp684 = icmp sge i32 %503, 32
  br i1 %cmp684, label %land.lhs.true.686, label %cond.false.692

land.lhs.true.686:                                ; preds = %if.then.682
  %504 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable687 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %504, i32 0, i32 157
  %505 = load i32, i32* %RCEnable687, align 4
  %tobool688 = icmp ne i32 %505, 0
  br i1 %tobool688, label %cond.false.692, label %cond.true.689

cond.true.689:                                    ; preds = %land.lhs.true.686
  %506 = load i32, i32* %qp, align 4
  %sub690 = sub nsw i32 %506, 4
  %call691 = call i32 @imax(i32 0, i32 %sub690)
  br label %cond.end.695

cond.false.692:                                   ; preds = %land.lhs.true.686, %if.then.682
  %507 = load i32, i32* %qp, align 4
  %sub693 = sub nsw i32 %507, 6
  %call694 = call i32 @imax(i32 0, i32 %sub693)
  br label %cond.end.695

cond.end.695:                                     ; preds = %cond.false.692, %cond.true.689
  %cond696 = phi i32 [ %call691, %cond.true.689 ], [ %call694, %cond.false.692 ]
  store i32 %cond696, i32* %lambda_qp683, align 4
  %508 = load i32, i32* %lambda_qp683, align 4
  %idxprom697 = sext i32 %508 to i64
  %509 = load i32, i32* %j, align 4
  %idxprom698 = sext i32 %509 to i64
  %510 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me699 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %510, i32 0, i32 151
  %511 = load double***, double**** %lambda_me699, align 8
  %arrayidx700 = getelementptr inbounds double**, double*** %511, i64 %idxprom698
  %512 = load double**, double*** %arrayidx700, align 8
  %arrayidx701 = getelementptr inbounds double*, double** %512, i64 %idxprom697
  %513 = load double*, double** %arrayidx701, align 8
  %arrayidx702 = getelementptr inbounds double, double* %513, i64 2
  %514 = load double, double* %arrayidx702, align 8
  %add703 = fadd double %514, 1.000000e+00
  %call704 = call double @log(double %add703) #4
  %call705 = call double @log(double 2.000000e+00) #4
  %div706 = fdiv double %call704, %call705
  %515 = load i32, i32* %qp, align 4
  %idxprom707 = sext i32 %515 to i64
  %516 = load i32, i32* %j, align 4
  %idxprom708 = sext i32 %516 to i64
  %517 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf_factor709 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %517, i32 0, i32 153
  %518 = load double**, double*** %lambda_mf_factor709, align 8
  %arrayidx710 = getelementptr inbounds double*, double** %518, i64 %idxprom708
  %519 = load double*, double** %arrayidx710, align 8
  %arrayidx711 = getelementptr inbounds double, double* %519, i64 %idxprom707
  store double %div706, double* %arrayidx711, align 8
  br label %if.end.712

if.end.712:                                       ; preds = %cond.end.695, %for.end.678
  br label %for.inc.713

for.inc.713:                                      ; preds = %if.end.712
  %520 = load i32, i32* %qp, align 4
  %inc714 = add nsw i32 %520, 1
  store i32 %inc714, i32* %qp, align 4
  br label %for.cond.605

for.end.715:                                      ; preds = %for.cond.605
  br label %for.inc.716

for.inc.716:                                      ; preds = %for.end.715
  %521 = load i32, i32* %j, align 4
  %inc717 = add nsw i32 %521, 1
  store i32 %inc717, i32* %j, align 4
  br label %for.cond.599

for.end.718:                                      ; preds = %for.cond.599
  br label %if.end.719

if.end.719:                                       ; preds = %for.end.718, %for.end.597
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @dClip3(double %low, double %high, double %x) #3 {
entry:
  %low.addr = alloca double, align 8
  %high.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %low, double* %low.addr, align 8
  store double %high, double* %high.addr, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %low.addr, align 8
  %call = call double @dmax(double %0, double %1)
  store double %call, double* %x.addr, align 8
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %high.addr, align 8
  %call1 = call double @dmin(double %2, double %3)
  store double %call1, double* %x.addr, align 8
  %4 = load double, double* %x.addr, align 8
  ret double %4
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal double @dmin(double %a, double %b) #3 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load double, double* %b.addr, align 8
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, double* %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load double, double* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %2, %cond.true ], [ %3, %cond.false ]
  ret double %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #3 {
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
declare double @log(double) #2

declare i32 @dummy_slice_too_big(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #3 {
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

declare void @init_lists(i32, i32) #1

declare void @poc_based_ref_management(i32) #1

declare void @alloc_ref_pic_list_reordering_buffer(%struct.Slice*) #1

declare void @reorder_ref_pic_list(%struct.storable_picture**, i32*, i32, i32*, i32*, i32*) #1

declare void @init_mbaff_lists() #1

declare void @estimate_weighting_factor_P_slice(i32) #1

declare void @estimate_weighting_factor_B_slice() #1

declare void @compute_colocated(%struct.colocated_params*, %struct.storable_picture***) #1

declare void @EPZSSliceInit(%struct.EPZSColocParams*, %struct.storable_picture***) #1

declare void @writeSE_UVLC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeIntraPredMode_CAVLC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeSE_Dummy(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeSE_invFlag(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeSE_SVLC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeCBP_VLC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeSE_Flag(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeMB_typeInfo_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeIntraPredMode_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeB8_typeInfo_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeRefFrame_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeMVD_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeCBP_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeDquant_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeCIPredMode_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeFieldModeInfo_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeMB_transform_size_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: nounwind uwtable
define internal %struct.Slice* @malloc_slice() #0 {
entry:
  %i = alloca i32, align 4
  %dataPart = alloca %struct.datapartition*, align 8
  %slice = alloca %struct.Slice*, align 8
  %buffer_size = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 21
  %1 = load i32, i32* %slice_mode, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_argument = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 22
  %3 = load i32, i32* %slice_argument, align 4
  %mul = mul nsw i32 2, %3
  store i32 %mul, i32* %buffer_size, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_argument2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 22
  %5 = load i32, i32* %slice_argument2, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 142
  %7 = load i32, i32* %bitdepth_luma, align 4
  %mul3 = mul nsw i32 256, %7
  %add = add nsw i32 128, %mul3
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 143
  %9 = load i32, i32* %bitdepth_chroma, align 4
  %mul4 = mul nsw i32 512, %9
  %add5 = add nsw i32 %add, %mul4
  %mul6 = mul nsw i32 %5, %add5
  %add7 = add nsw i32 500, %mul6
  store i32 %add7, i32* %buffer_size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 120
  %11 = load i32, i32* %FrameSizeInMbs, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 142
  %13 = load i32, i32* %bitdepth_luma8, align 4
  %mul9 = mul nsw i32 256, %13
  %add10 = add nsw i32 128, %mul9
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 143
  %15 = load i32, i32* %bitdepth_chroma11, align 4
  %mul12 = mul nsw i32 512, %15
  %add13 = add nsw i32 %add10, %mul12
  %mul14 = mul i32 %11, %add13
  %add15 = add i32 500, %mul14
  store i32 %add15, i32* %buffer_size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  %call = call noalias i8* @calloc(i64 1, i64 144) #4
  %16 = bitcast i8* %call to %struct.Slice*
  store %struct.Slice* %16, %struct.Slice** %slice, align 8
  %cmp = icmp eq %struct.Slice* %16, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 74
  %18 = load i32, i32* %symbol_mode, align 4
  %cmp16 = icmp eq i32 %18, 1
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end
  %call18 = call %struct.MotionInfoContexts* @create_contexts_MotionInfo()
  %19 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %19, i32 0, i32 7
  store %struct.MotionInfoContexts* %call18, %struct.MotionInfoContexts** %mot_ctx, align 8
  %call19 = call %struct.TextureInfoContexts* @create_contexts_TextureInfo()
  %20 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %20, i32 0, i32 8
  store %struct.TextureInfoContexts* %call19, %struct.TextureInfoContexts** %tex_ctx, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 76
  %22 = load i32, i32* %partition_mode, align 4
  %cmp21 = icmp eq i32 %22, 0
  %cond = select i1 %cmp21, i32 1, i32 3
  %23 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %23, i32 0, i32 4
  store i32 %cond, i32* %max_part_nr, align 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 59
  %25 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %25, i32 0, i32 1
  %26 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %27 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %max_part_nr23 = getelementptr inbounds %struct.Slice, %struct.Slice* %27, i32 0, i32 4
  store i32 1, i32* %max_part_nr23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  store i32* getelementptr inbounds ([18 x i32], [18 x i32]* @assignSE2partition_NoDP, i32 0, i32 0), i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 0), align 8
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 59
  %29 = load %struct.Picture*, %struct.Picture** %currentPicture25, align 8
  %idr_flag26 = getelementptr inbounds %struct.Picture, %struct.Picture* %29, i32 0, i32 1
  %30 = load i32, i32* %idr_flag26, align 4
  %tobool27 = icmp ne i32 %30, 0
  br i1 %tobool27, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.24
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 76
  %32 = load i32, i32* %partition_mode28, align 4
  %cmp29 = icmp eq i32 %32, 1
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true
  store i32* getelementptr inbounds ([18 x i32], [18 x i32]* @assignSE2partition_DP, i32 0, i32 0), i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 1), align 8
  br label %if.end.31

if.else:                                          ; preds = %land.lhs.true, %if.end.24
  store i32* getelementptr inbounds ([18 x i32], [18 x i32]* @assignSE2partition_NoDP, i32 0, i32 0), i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 1), align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.30
  %33 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %num_mb = getelementptr inbounds %struct.Slice, %struct.Slice* %33, i32 0, i32 5
  store i32 0, i32* %num_mb, align 4
  %34 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %max_part_nr32 = getelementptr inbounds %struct.Slice, %struct.Slice* %34, i32 0, i32 4
  %35 = load i32, i32* %max_part_nr32, align 4
  %conv = sext i32 %35 to i64
  %call33 = call noalias i8* @calloc(i64 %conv, i64 104) #4
  %36 = bitcast i8* %call33 to %struct.datapartition*
  %37 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %37, i32 0, i32 6
  store %struct.datapartition* %36, %struct.datapartition** %partArr, align 8
  %cmp34 = icmp eq %struct.datapartition* %36, null
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.31
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %38 = load i32, i32* %i, align 4
  %39 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %max_part_nr38 = getelementptr inbounds %struct.Slice, %struct.Slice* %39, i32 0, i32 4
  %40 = load i32, i32* %max_part_nr38, align 4
  %cmp39 = icmp slt i32 %38, %40
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %i, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %partArr41 = getelementptr inbounds %struct.Slice, %struct.Slice* %42, i32 0, i32 6
  %43 = load %struct.datapartition*, %struct.datapartition** %partArr41, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %43, i64 %idxprom
  store %struct.datapartition* %arrayidx, %struct.datapartition** %dataPart, align 8
  %call42 = call noalias i8* @calloc(i64 1, i64 48) #4
  %44 = bitcast i8* %call42 to %struct.Bitstream*
  %45 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %45, i32 0, i32 0
  store %struct.Bitstream* %44, %struct.Bitstream** %bitstream, align 8
  %cmp43 = icmp eq %struct.Bitstream* %44, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.body
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %for.body
  %46 = load i32, i32* %buffer_size, align 4
  %conv47 = sext i32 %46 to i64
  %call48 = call noalias i8* @calloc(i64 %conv47, i64 1) #4
  %47 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream49 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %47, i32 0, i32 0
  %48 = load %struct.Bitstream*, %struct.Bitstream** %bitstream49, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %48, i32 0, i32 9
  store i8* %call48, i8** %streamBuffer, align 8
  %cmp50 = icmp eq i8* %call48, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.46
  call void @no_mem_exit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.46
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct.Slice*, %struct.Slice** %slice, align 8
  ret %struct.Slice* %50
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare void @no_mem_exit(i8*) #1

declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #1

declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #1

; Function Attrs: nounwind uwtable
define internal void @set_ref_pic_num() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %this_ref = alloca %struct.storable_picture*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %3, i64 %idxprom
  %4 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx, align 8
  store %struct.storable_picture* %4, %struct.storable_picture** %this_ref, align 8
  %5 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %5, i32 0, i32 1
  %6 = load i32, i32* %poc, align 4
  %mul = mul nsw i32 %6, 2
  %7 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %structure = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %7, i32 0, i32 0
  %8 = load i32, i32* %structure, align 4
  %cmp1 = icmp eq i32 %8, 2
  %cond = select i1 %cmp1, i32 1, i32 0
  %add = add nsw i32 %mul, %cond
  %conv = sext i32 %add to i64
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx3, i32 0, i64 %idxprom2
  store i64 %conv, i64* %arrayidx4, align 8
  %11 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %11, i32 0, i32 4
  %12 = load i32, i32* %frame_poc, align 4
  %mul5 = mul nsw i32 %12, 2
  %conv6 = sext i32 %mul5 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frm_ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 7
  %arrayidx8 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %frm_ref_pic_num, i32 0, i64 0
  %arrayidx9 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx8, i32 0, i64 %idxprom7
  store i64 %conv6, i64* %arrayidx9, align 8
  %15 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %top_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 2
  %16 = load i32, i32* %top_poc, align 4
  %mul10 = mul nsw i32 %16, 2
  %conv11 = sext i32 %mul10 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %top_ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %18, i32 0, i32 8
  %arrayidx13 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %top_ref_pic_num, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx13, i32 0, i64 %idxprom12
  store i64 %conv11, i64* %arrayidx14, align 8
  %19 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %bottom_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 3
  %20 = load i32, i32* %bottom_poc, align 4
  %mul15 = mul nsw i32 %20, 2
  %add16 = add nsw i32 %mul15, 1
  %conv17 = sext i32 %add16 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %bottom_ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 9
  %arrayidx19 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %bottom_ref_pic_num, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx19, i32 0, i64 %idxprom18
  store i64 %conv17, i64* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.61, %for.end
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp22 = icmp slt i32 %24, %25
  br i1 %cmp22, label %for.body.24, label %for.end.63

for.body.24:                                      ; preds = %for.cond.21
  %26 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %26 to i64
  %27 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx26 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %27, i64 %idxprom25
  %28 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx26, align 8
  store %struct.storable_picture* %28, %struct.storable_picture** %this_ref, align 8
  %29 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %poc27 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 1
  %30 = load i32, i32* %poc27, align 4
  %mul28 = mul nsw i32 %30, 2
  %31 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %structure29 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %31, i32 0, i32 0
  %32 = load i32, i32* %structure29, align 4
  %cmp30 = icmp eq i32 %32, 2
  %cond32 = select i1 %cmp30, i32 1, i32 0
  %add33 = add nsw i32 %mul28, %cond32
  %conv34 = sext i32 %add33 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %33 to i64
  %34 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num36 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %34, i32 0, i32 6
  %arrayidx37 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num36, i32 0, i64 1
  %arrayidx38 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx37, i32 0, i64 %idxprom35
  store i64 %conv34, i64* %arrayidx38, align 8
  %35 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %frame_poc39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 4
  %36 = load i32, i32* %frame_poc39, align 4
  %mul40 = mul nsw i32 %36, 2
  %conv41 = sext i32 %mul40 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %37 to i64
  %38 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frm_ref_pic_num43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 7
  %arrayidx44 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %frm_ref_pic_num43, i32 0, i64 1
  %arrayidx45 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx44, i32 0, i64 %idxprom42
  store i64 %conv41, i64* %arrayidx45, align 8
  %39 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %top_poc46 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %39, i32 0, i32 2
  %40 = load i32, i32* %top_poc46, align 4
  %mul47 = mul nsw i32 %40, 2
  %conv48 = sext i32 %mul47 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %41 to i64
  %42 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %top_ref_pic_num50 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %42, i32 0, i32 8
  %arrayidx51 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %top_ref_pic_num50, i32 0, i64 1
  %arrayidx52 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx51, i32 0, i64 %idxprom49
  store i64 %conv48, i64* %arrayidx52, align 8
  %43 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %bottom_poc53 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 3
  %44 = load i32, i32* %bottom_poc53, align 4
  %mul54 = mul nsw i32 %44, 2
  %add55 = add nsw i32 %mul54, 1
  %conv56 = sext i32 %add55 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %45 to i64
  %46 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %bottom_ref_pic_num58 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %46, i32 0, i32 9
  %arrayidx59 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %bottom_ref_pic_num58, i32 0, i64 1
  %arrayidx60 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx59, i32 0, i64 %idxprom57
  store i64 %conv56, i64* %arrayidx60, align 8
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.24
  %47 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %47, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.21

for.end.63:                                       ; preds = %for.cond.21
  %48 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %48, i32 0, i32 25
  %49 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.63
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 6
  %51 = load i32, i32* %structure64, align 4
  %cmp65 = icmp eq i32 %51, 0
  br i1 %cmp65, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 2, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.122, %if.then
  %52 = load i32, i32* %j, align 4
  %cmp68 = icmp slt i32 %52, 6
  br i1 %cmp68, label %for.body.70, label %for.end.124

for.body.70:                                      ; preds = %for.cond.67
  store i32 0, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.119, %for.body.70
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %54 to i64
  %arrayidx73 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom72
  %55 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp slt i32 %53, %55
  br i1 %cmp74, label %for.body.76, label %for.end.121

for.body.76:                                      ; preds = %for.cond.71
  %56 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %56 to i64
  %57 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %57 to i64
  %arrayidx79 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom78
  %58 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %58, i64 %idxprom77
  %59 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx80, align 8
  store %struct.storable_picture* %59, %struct.storable_picture** %this_ref, align 8
  %60 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %poc81 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %60, i32 0, i32 1
  %61 = load i32, i32* %poc81, align 4
  %mul82 = mul nsw i32 %61, 2
  %62 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %structure83 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %62, i32 0, i32 0
  %63 = load i32, i32* %structure83, align 4
  %cmp84 = icmp eq i32 %63, 2
  %cond86 = select i1 %cmp84, i32 1, i32 0
  %add87 = add nsw i32 %mul82, %cond86
  %conv88 = sext i32 %add87 to i64
  %64 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %64 to i64
  %65 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %65 to i64
  %66 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num91 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %66, i32 0, i32 6
  %arrayidx92 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num91, i32 0, i64 %idxprom90
  %arrayidx93 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx92, i32 0, i64 %idxprom89
  store i64 %conv88, i64* %arrayidx93, align 8
  %67 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %frame_poc94 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 4
  %68 = load i32, i32* %frame_poc94, align 4
  %mul95 = mul nsw i32 %68, 2
  %conv96 = sext i32 %mul95 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %69 to i64
  %70 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %70 to i64
  %71 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frm_ref_pic_num99 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 7
  %arrayidx100 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %frm_ref_pic_num99, i32 0, i64 %idxprom98
  %arrayidx101 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx100, i32 0, i64 %idxprom97
  store i64 %conv96, i64* %arrayidx101, align 8
  %72 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %top_poc102 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 2
  %73 = load i32, i32* %top_poc102, align 4
  %mul103 = mul nsw i32 %73, 2
  %conv104 = sext i32 %mul103 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %74 to i64
  %75 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %75 to i64
  %76 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %top_ref_pic_num107 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %76, i32 0, i32 8
  %arrayidx108 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %top_ref_pic_num107, i32 0, i64 %idxprom106
  %arrayidx109 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx108, i32 0, i64 %idxprom105
  store i64 %conv104, i64* %arrayidx109, align 8
  %77 = load %struct.storable_picture*, %struct.storable_picture** %this_ref, align 8
  %bottom_poc110 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 3
  %78 = load i32, i32* %bottom_poc110, align 4
  %mul111 = mul nsw i32 %78, 2
  %add112 = add nsw i32 %mul111, 1
  %conv113 = sext i32 %add112 to i64
  %79 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %79 to i64
  %80 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %80 to i64
  %81 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %bottom_ref_pic_num116 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %81, i32 0, i32 9
  %arrayidx117 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %bottom_ref_pic_num116, i32 0, i64 %idxprom115
  %arrayidx118 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx117, i32 0, i64 %idxprom114
  store i64 %conv113, i64* %arrayidx118, align 8
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.76
  %82 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %82, 1
  store i32 %inc120, i32* %i, align 4
  br label %for.cond.71

for.end.121:                                      ; preds = %for.cond.71
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.end.121
  %83 = load i32, i32* %j, align 4
  %inc123 = add nsw i32 %83, 1
  store i32 %inc123, i32* %j, align 4
  br label %for.cond.67

for.end.124:                                      ; preds = %for.cond.67
  br label %if.end

if.end:                                           ; preds = %for.end.124, %land.lhs.true, %for.end.63
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #1

declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal double @dmax(double %a, double %b) #3 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load double, double* %b.addr, align 8
  %cmp = fcmp ogt double %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, double* %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load double, double* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %2, %cond.true ], [ %3, %cond.false ]
  ret double %cond
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
