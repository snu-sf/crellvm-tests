; ModuleID = './MultiSource.Applications.JM/36.lencod.macroblock.bc'
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
%struct.StatParameters = type { i32, i32, float, float, i64, i64, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, i32*, i32*, i64, i64, i64, float, float, float, [5 x [15 x i64]], [5 x [15 x i64]], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], i32, i32, i32*, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.rc_quadratic = type { float, float, float, double, double, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, double*, double*, double*, double*, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)* }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.RD_PARAMS = type { double, [3 x double], [3 x i32], [15 x i16], [2 x i16], i16, [2 x i16], [2 x i32] }

@img = external global %struct.ImageParameters*, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgY_org_top = common global i16** null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org_bot = common global i16*** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@imgUV_org = common global i16*** null, align 8
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@.str = private unnamed_addr constant [95 x i8] c"Warning!!! Number of bits (%d) of macroblock_layer() data seems to exceed defined limit (%d).\0A\00", align 1
@stats = external global %struct.StatParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@QP_SCALE_CR = external constant [52 x i8], align 16
@enc_picture = external global %struct.storable_picture*, align 8
@start_frame_no_in_this_IGOP = external global i32, align 4
@delta_qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@quadratic_RC = common global %struct.rc_quadratic* null, align 8
@updateQP = common global i32 (%struct.rc_quadratic*, i32)* null, align 8
@generic_RC = common global %struct.rc_generic* null, align 8
@dq = common global i32 0, align 4
@predict_error = common global i32 0, align 4
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@assignSE2partition = external global [2 x i32*], align 16
@terminate_macroblock.skip = internal global i32 0, align 4
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [28 x i8] c"Slice Mode %d not supported\00", align 1
@width_pad = common global i32 0, align 4
@height_pad = common global i32 0, align 4
@img_padded_size_x = common global i32 0, align 4
@LumaPrediction4x4.l0_pred = internal global [16 x i16] zeroinitializer, align 16
@LumaPrediction4x4.l1_pred = internal global [16 x i16] zeroinitializer, align 16
@listX = external global [6 x %struct.storable_picture**], align 16
@wbp_weight = common global i32**** null, align 8
@wp_offset = common global i32*** null, align 8
@wp_luma_round = common global i32 0, align 4
@luma_log_weight_denom = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@LumaPrediction4x4Bi.l0_pred = internal global [16 x i16] zeroinitializer, align 16
@LumaPrediction4x4Bi.l1_pred = internal global [16 x i16] zeroinitializer, align 16
@OneComponentChromaPrediction4x4 = internal global void (i16*, i32, i32, i16******, i32, i16, i32, i32)* null, align 8
@si_frame_indicator = common global i32 0, align 4
@sp2_frame_indicator = common global i32 0, align 4
@diff64 = internal global [64 x i32] zeroinitializer, align 16
@ChromaPrediction4x4.l0_pred = internal global [16 x i16] zeroinitializer, align 16
@ChromaPrediction4x4.l1_pred = internal global [16 x i16] zeroinitializer, align 16
@wp_chroma_round = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@ChromaResidualCoding.block8x8_idx = internal constant [3 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 0, i32 0]], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 2, i32 2, i32 3, i32 3], [4 x i32] [i32 2, i32 2, i32 3, i32 3]]], align 16
@IntraChromaPrediction.block_pos = internal constant [3 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 1, i32 1, i32 3, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] [i32 3, i32 3, i32 3, i32 3]]], align 16
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@subblk_offset_y = internal constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@subblk_offset_x = internal constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@diff = internal global [16 x i32] zeroinitializer, align 16
@mvbits = external global i32*, align 8
@MBType2Value.dir1offset = internal constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@MBType2Value.dir2offset = internal constant [3 x [3 x i32]] [[3 x i32] [i32 0, i32 4, i32 8], [3 x i32] [i32 6, i32 2, i32 10], [3 x i32] [i32 12, i32 14, i32 16]], align 16
@writeIntraPredMode = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@B8Mode2Value.b8start = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 4, i32 5, i32 10], align 16
@B8Mode2Value.b8inc = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 1], align 16
@writeFieldModeInfo = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeMB_typeInfo = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeB8_typeInfo = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeMB_transform_size = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@last_dquant = external global i32, align 4
@intras = common global i32 0, align 4
@cabac_encoding = external global i32, align 4
@writeRefFrame = external global [6 x void (%struct.syntaxelement*, %struct.datapartition*)*], align 16
@writeMVD = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@predict_nnz_chroma.j_off_tab = internal constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8], align 16
@writeCoeff4x4_CAVLC.incVlc = internal constant [7 x i32] [i32 0, i32 3, i32 6, i32 12, i32 24, i32 48, i32 32768], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Luma\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Lum16DC\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Lum16AC\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ChrDC\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ChrAC\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"writeCoeff4x4_CAVLC: Invalid block type\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"ERROR: level > 1\0A\00", align 1
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
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@direct_ref_idx = common global i8*** null, align 8
@direct_pdir = common global i8** null, align 8
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
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
@img_cr_padded_size_x = common global i32 0, align 4
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4
@height_pad_cr = common global i32 0, align 4
@width_pad_cr = common global i32 0, align 4
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@generic_RC_init = common global %struct.rc_generic* null, align 8
@generic_RC_best = common global %struct.rc_generic* null, align 8
@quadratic_RC_init = common global %struct.rc_quadratic* null, align 8
@quadratic_RC_best = common global %struct.rc_quadratic* null, align 8
@writeCIPredMode = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeChromaCoeff.chroma_dc_context = internal constant [3 x i32] [i32 6, i32 8, i32 9], align 4
@writeChromaCoeff.chroma_ac_param = internal constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\04\14\05\15", [4 x i8] c"$4%5", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\04\14\05\15", [4 x i8] c"\06\16\07\17", [4 x i8] c"$4%5", [4 x i8] c"&6'7", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\04\14\05\15", [4 x i8] c"$4%5", [4 x i8] c"\06\16\07\17", [4 x i8] c"&6'7", [4 x i8] c"\08\18\09\19", [4 x i8] c"(8)9", [4 x i8] c"\0A\1A\0B\1B", [4 x i8] c"*:+;"]], align 16
@writeCBP = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@writeDquant = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8

; Function Attrs: nounwind uwtable
define void @set_MB_parameters(i32 %mb_addr) #0 {
entry:
  %mb_addr.addr = alloca i32, align 4
  store i32 %mb_addr, i32* %mb_addr.addr, align 4
  %0 = load i32, i32* %mb_addr.addr, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 3
  store i32 %0, i32* %current_mb_nr, align 4
  %2 = load void (i32, i32*, i32*)*, void (i32, i32*, i32*)** @get_mb_block_pos, align 8
  %3 = load i32, i32* %mb_addr.addr, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 35
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 36
  call void %2(i32 %3, i32* %mb_x, i32* %mb_y)
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_x1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 35
  %7 = load i32, i32* %mb_x1, align 4
  %shl = shl i32 %7, 2
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 37
  store i32 %shl, i32* %block_x, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 36
  %10 = load i32, i32* %mb_y2, align 4
  %shl3 = shl i32 %10, 2
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 38
  store i32 %shl3, i32* %block_y, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 37
  %13 = load i32, i32* %block_x4, align 4
  %shl5 = shl i32 %13, 2
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 39
  store i32 %shl5, i32* %pix_x, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 38
  %16 = load i32, i32* %block_y6, align 4
  %shl7 = shl i32 %16, 2
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 40
  store i32 %shl7, i32* %pix_y, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 39
  %19 = load i32, i32* %pix_x8, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 43
  store i32 %19, i32* %opix_x, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 100
  %22 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.else.33

if.then:                                          ; preds = %entry
  %23 = load i32, i32* %mb_addr.addr, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 61
  %25 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i64 %idxprom
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 19
  %26 = load i32, i32* %mb_field, align 4
  %tobool9 = icmp ne i32 %26, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %27 = load i32, i32* %mb_addr.addr, align 4
  %rem = srem i32 %27, 2
  %tobool11 = icmp ne i32 %rem, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %28 = load i16**, i16*** @imgY_org_bot, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %29 = load i16**, i16*** @imgY_org_top, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16** [ %28, %cond.true ], [ %29, %cond.false ]
  store i16** %cond, i16*** @imgY_org, align 8
  %30 = load i32, i32* %mb_addr.addr, align 4
  %rem12 = srem i32 %30, 2
  %tobool13 = icmp ne i32 %rem12, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  %31 = load i16***, i16**** @imgUV_org_bot, align 8
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  %32 = load i16***, i16**** @imgUV_org_top, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i16*** [ %31, %cond.true.14 ], [ %32, %cond.false.15 ]
  store i16*** %cond17, i16**** @imgUV_org, align 8
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 36
  %34 = load i32, i32* %mb_y18, align 4
  %shr = ashr i32 %34, 1
  %shl19 = shl i32 %shr, 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 44
  store i32 %shl19, i32* %opix_y, align 4
  %36 = load i32, i32* %mb_addr.addr, align 4
  %rem20 = srem i32 %36, 2
  %tobool21 = icmp ne i32 %rem20, 0
  %cond22 = select i1 %tobool21, i32 4, i32 2
  %37 = load i32, i32* %mb_addr.addr, align 4
  %idxprom23 = sext i32 %37 to i64
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 61
  %39 = load %struct.macroblock*, %struct.macroblock** %mb_data24, align 8
  %arrayidx25 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i64 %idxprom23
  %list_offset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx25, i32 0, i32 21
  store i32 %cond22, i32* %list_offset, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %40 = load i16**, i16*** @imgY_org_frm, align 8
  store i16** %40, i16*** @imgY_org, align 8
  %41 = load i16***, i16**** @imgUV_org_frm, align 8
  store i16*** %41, i16**** @imgUV_org, align 8
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 38
  %43 = load i32, i32* %block_y26, align 4
  %shl27 = shl i32 %43, 2
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 44
  store i32 %shl27, i32* %opix_y28, align 4
  %45 = load i32, i32* %mb_addr.addr, align 4
  %idxprom29 = sext i32 %45 to i64
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 61
  %47 = load %struct.macroblock*, %struct.macroblock** %mb_data30, align 8
  %arrayidx31 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i64 %idxprom29
  %list_offset32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx31, i32 0, i32 21
  store i32 0, i32* %list_offset32, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.16
  br label %if.end.41

if.else.33:                                       ; preds = %entry
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 38
  %49 = load i32, i32* %block_y34, align 4
  %shl35 = shl i32 %49, 2
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 44
  store i32 %shl35, i32* %opix_y36, align 4
  %51 = load i32, i32* %mb_addr.addr, align 4
  %idxprom37 = sext i32 %51 to i64
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 61
  %53 = load %struct.macroblock*, %struct.macroblock** %mb_data38, align 8
  %arrayidx39 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %53, i64 %idxprom37
  %list_offset40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx39, i32 0, i32 21
  store i32 0, i32* %list_offset40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.33, %if.end
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 160
  %55 = load i32, i32* %yuv_format, align 4
  %cmp = icmp ne i32 %55, 0
  br i1 %cmp, label %if.then.42, label %if.end.56

if.then.42:                                       ; preds = %if.end.41
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 162
  %57 = load i32, i32* %mb_cr_size_x, align 4
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 39
  %59 = load i32, i32* %pix_x43, align 4
  %mul = mul nsw i32 %57, %59
  %shr44 = ashr i32 %mul, 4
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 41
  store i32 %shr44, i32* %pix_c_x, align 4
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 163
  %62 = load i32, i32* %mb_cr_size_y, align 4
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 40
  %64 = load i32, i32* %pix_y45, align 4
  %mul46 = mul nsw i32 %62, %64
  %shr47 = ashr i32 %mul46, 4
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 42
  store i32 %shr47, i32* %pix_c_y, align 4
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 162
  %67 = load i32, i32* %mb_cr_size_x48, align 4
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 43
  %69 = load i32, i32* %opix_x49, align 4
  %mul50 = mul nsw i32 %67, %69
  %shr51 = ashr i32 %mul50, 4
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 45
  store i32 %shr51, i32* %opix_c_x, align 4
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 163
  %72 = load i32, i32* %mb_cr_size_y52, align 4
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 44
  %74 = load i32, i32* %opix_y53, align 4
  %mul54 = mul nsw i32 %72, %74
  %shr55 = ashr i32 %mul54, 4
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 46
  store i32 %shr55, i32* %opix_c_y, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.42, %if.end.41
  ret void
}

; Function Attrs: nounwind uwtable
define void @proceed2nextMacroblock() #0 {
entry:
  %currMB = alloca %struct.macroblock*, align 8
  %bitCount = alloca i32*, align 8
  %i = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %5 = load i32*, i32** %bitCount, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 1
  %6 = load i32, i32* %arrayidx1, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_bitCount = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 147
  %8 = load i32, i32* %max_bitCount, align 4
  %cmp = icmp sgt i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32*, i32** %bitCount, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = load i32, i32* %arrayidx2, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_bitCount3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 147
  %12 = load i32, i32* %max_bitCount3, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i32 0, i32 0), i32 %10, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32*, i32** %bitCount, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 2
  %14 = load i32, i32* %arrayidx4, align 4
  %conv = sext i32 %14 to i64
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 5
  %16 = load i32, i32* %type, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mb_type = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %17, i32 0, i32 25
  %arrayidx6 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_mb_type, i32 0, i64 %idxprom5
  %18 = load i64, i64* %arrayidx6, align 8
  %add = add nsw i64 %18, %conv
  store i64 %add, i64* %arrayidx6, align 8
  %19 = load i32*, i32** %bitCount, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %19, i64 5
  %20 = load i32, i32* %arrayidx7, align 4
  %conv8 = sext i32 %20 to i64
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 5
  %22 = load i32, i32* %type9, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffY = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %23, i32 0, i32 28
  %arrayidx11 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffY, i32 0, i64 %idxprom10
  %24 = load i64, i64* %arrayidx11, align 8
  %add12 = add nsw i64 %24, %conv8
  store i64 %add12, i64* %arrayidx11, align 8
  %25 = load i32*, i32** %bitCount, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %25, i64 4
  %26 = load i32, i32* %arrayidx13, align 4
  %conv14 = sext i32 %26 to i64
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 5
  %28 = load i32, i32* %type15, align 4
  %idxprom16 = sext i32 %28 to i64
  %29 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %tmp_bit_use_cbp = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %29, i32 0, i32 27
  %arrayidx17 = getelementptr inbounds [5 x i64], [5 x i64]* %tmp_bit_use_cbp, i32 0, i64 %idxprom16
  %30 = load i64, i64* %arrayidx17, align 8
  %add18 = add nsw i64 %30, %conv14
  store i64 %add18, i64* %arrayidx17, align 8
  %31 = load i32*, i32** %bitCount, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %31, i64 6
  %32 = load i32, i32* %arrayidx19, align 4
  %conv20 = sext i32 %32 to i64
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 5
  %34 = load i32, i32* %type21, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffC = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %35, i32 0, i32 29
  %arrayidx23 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffC, i32 0, i64 %idxprom22
  %36 = load i64, i64* %arrayidx23, align 8
  %add24 = add nsw i64 %36, %conv20
  store i64 %add24, i64* %arrayidx23, align 8
  %37 = load i32*, i32** %bitCount, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %37, i64 7
  %38 = load i32, i32* %arrayidx25, align 4
  %conv26 = sext i32 %38 to i64
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 5
  %40 = load i32, i32* %type27, align 4
  %idxprom28 = sext i32 %40 to i64
  %41 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_delta_quant = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %41, i32 0, i32 30
  %arrayidx29 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_delta_quant, i32 0, i64 %idxprom28
  %42 = load i64, i64* %arrayidx29, align 8
  %add30 = add nsw i64 %42, %conv26
  store i64 %add30, i64* %arrayidx29, align 8
  %43 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 8
  %44 = load i32, i32* %mb_type, align 4
  %cmp31 = icmp eq i32 %44, 9
  br i1 %cmp31, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %45 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type33 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %45, i32 0, i32 8
  %46 = load i32, i32* %mb_type33, align 4
  %cmp34 = icmp eq i32 %46, 10
  br i1 %cmp34, label %if.then.44, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false
  %47 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type37 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 8
  %48 = load i32, i32* %mb_type37, align 4
  %cmp38 = icmp eq i32 %48, 13
  br i1 %cmp38, label %if.then.44, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.36
  %49 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type41 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i32 0, i32 8
  %50 = load i32, i32* %mb_type41, align 4
  %cmp42 = icmp eq i32 %50, 14
  br i1 %cmp42, label %if.then.44, label %if.end.67

if.then.44:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.36, %lor.lhs.false, %if.end
  %51 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 17
  %52 = load i32, i32* %c_ipred_mode, align 4
  %idxprom45 = sext i32 %52 to i64
  %53 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %53, i32 0, i32 12
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %intra_chroma_mode, i32 0, i64 %idxprom45
  %54 = load i32, i32* %arrayidx46, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %arrayidx46, align 4
  %55 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %55, i32 0, i32 12
  %56 = load i32, i32* %cbp, align 4
  %and = and i32 %56, 15
  %cmp47 = icmp ne i32 %and, 0
  br i1 %cmp47, label %if.then.49, label %if.end.66

if.then.49:                                       ; preds = %if.then.44
  %57 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %57, i32 0, i32 31
  %58 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.then.49
  %59 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type51 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %59, i32 0, i32 8
  %60 = load i32, i32* %mb_type51, align 4
  %idxprom52 = sext i32 %60 to i64
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 5
  %62 = load i32, i32* %type53, align 4
  %idxprom54 = sext i32 %62 to i64
  %63 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %63, i32 0, i32 10
  %arrayidx55 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx55, i32 0, i64 %idxprom52
  %64 = load i32, i32* %arrayidx56, align 4
  %inc57 = add nsw i32 %64, 1
  store i32 %inc57, i32* %arrayidx56, align 4
  br label %if.end.65

if.else:                                          ; preds = %if.then.49
  %65 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type58 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i32 0, i32 8
  %66 = load i32, i32* %mb_type58, align 4
  %idxprom59 = sext i32 %66 to i64
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 5
  %68 = load i32, i32* %type60, align 4
  %idxprom61 = sext i32 %68 to i64
  %69 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %69, i32 0, i32 11
  %arrayidx62 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx62, i32 0, i64 %idxprom59
  %70 = load i32, i32* %arrayidx63, align 4
  %inc64 = add nsw i32 %70, 1
  store i32 %inc64, i32* %arrayidx63, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else, %if.then.50
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.44
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %lor.lhs.false.40
  %71 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type68 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %71, i32 0, i32 8
  %72 = load i32, i32* %mb_type68, align 4
  %idxprom69 = sext i32 %72 to i64
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 5
  %74 = load i32, i32* %type70, align 4
  %idxprom71 = sext i32 %74 to i64
  %75 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %75, i32 0, i32 22
  %arrayidx72 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use, i32 0, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx72, i32 0, i64 %idxprom69
  %76 = load i64, i64* %arrayidx73, align 8
  %inc74 = add nsw i64 %76, 1
  store i64 %inc74, i64* %arrayidx73, align 8
  %77 = load i32*, i32** %bitCount, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %77, i64 3
  %78 = load i32, i32* %arrayidx75, align 4
  %conv76 = sext i32 %78 to i64
  %79 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %79, i32 0, i32 8
  %80 = load i32, i32* %mb_type77, align 4
  %idxprom78 = sext i32 %80 to i64
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type79 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 5
  %82 = load i32, i32* %type79, align 4
  %idxprom80 = sext i32 %82 to i64
  %83 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %83, i32 0, i32 23
  %arrayidx81 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode, i32 0, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx81, i32 0, i64 %idxprom78
  %84 = load i64, i64* %arrayidx82, align 8
  %add83 = add nsw i64 %84, %conv76
  store i64 %add83, i64* %arrayidx82, align 8
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type84 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 5
  %86 = load i32, i32* %type84, align 4
  %cmp85 = icmp ne i32 %86, 2
  br i1 %cmp85, label %if.then.87, label %if.end.187

if.then.87:                                       ; preds = %if.end.67
  %87 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type88 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %87, i32 0, i32 8
  %88 = load i32, i32* %mb_type88, align 4
  %cmp89 = icmp eq i32 %88, 8
  br i1 %cmp89, label %if.then.91, label %if.else.150

if.then.91:                                       ; preds = %if.then.87
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.91
  %89 = load i32, i32* %i, align 4
  %cmp92 = icmp slt i32 %89, 4
  br i1 %cmp92, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %90 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %90 to i64
  %91 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %91, i32 0, i32 14
  %arrayidx95 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 %idxprom94
  %92 = load i32, i32* %arrayidx95, align 4
  %cmp96 = icmp sgt i32 %92, 0
  br i1 %cmp96, label %if.then.98, label %if.else.109

if.then.98:                                       ; preds = %for.body
  %93 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %93 to i64
  %94 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode100 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %94, i32 0, i32 14
  %arrayidx101 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode100, i32 0, i64 %idxprom99
  %95 = load i32, i32* %arrayidx101, align 4
  %idxprom102 = sext i32 %95 to i64
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 5
  %97 = load i32, i32* %type103, align 4
  %idxprom104 = sext i32 %97 to i64
  %98 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use105 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %98, i32 0, i32 22
  %arrayidx106 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use105, i32 0, i64 %idxprom104
  %arrayidx107 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx106, i32 0, i64 %idxprom102
  %99 = load i64, i64* %arrayidx107, align 8
  %inc108 = add nsw i64 %99, 1
  store i64 %inc108, i64* %arrayidx107, align 8
  br label %if.end.117

if.else.109:                                      ; preds = %for.body
  %100 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag110 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %100, i32 0, i32 31
  %101 = load i32, i32* %luma_transform_size_8x8_flag110, align 4
  %idxprom111 = sext i32 %101 to i64
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 5
  %103 = load i32, i32* %type112, align 4
  %idxprom113 = sext i32 %103 to i64
  %104 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %104, i32 0, i32 9
  %arrayidx114 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use, i32 0, i64 %idxprom113
  %arrayidx115 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx114, i32 0, i64 %idxprom111
  %105 = load i32, i32* %arrayidx115, align 4
  %inc116 = add nsw i32 %105, 1
  store i32 %inc116, i32* %arrayidx115, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.109, %if.then.98
  %106 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %106 to i64
  %107 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode119 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %107, i32 0, i32 14
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode119, i32 0, i64 %idxprom118
  %108 = load i32, i32* %arrayidx120, align 4
  %cmp121 = icmp eq i32 %108, 4
  br i1 %cmp121, label %if.then.123, label %if.end.148

if.then.123:                                      ; preds = %if.end.117
  %109 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag124 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %109, i32 0, i32 31
  %110 = load i32, i32* %luma_transform_size_8x8_flag124, align 4
  %tobool125 = icmp ne i32 %110, 0
  br i1 %tobool125, label %land.lhs.true, label %lor.lhs.false.130

land.lhs.true:                                    ; preds = %if.then.123
  %111 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp126 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %111, i32 0, i32 12
  %112 = load i32, i32* %cbp126, align 4
  %and127 = and i32 %112, 15
  %cmp128 = icmp ne i32 %and127, 0
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %land.lhs.true, %if.then.123
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 153
  %114 = load i32, i32* %Transform8x8Mode, align 4
  %cmp131 = icmp eq i32 %114, 2
  br i1 %cmp131, label %if.then.133, label %if.else.140

if.then.133:                                      ; preds = %lor.lhs.false.130, %land.lhs.true
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type134 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 5
  %116 = load i32, i32* %type134, align 4
  %idxprom135 = sext i32 %116 to i64
  %117 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8136 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %117, i32 0, i32 10
  %arrayidx137 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8136, i32 0, i64 %idxprom135
  %arrayidx138 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx137, i32 0, i64 4
  %118 = load i32, i32* %arrayidx138, align 4
  %inc139 = add nsw i32 %118, 1
  store i32 %inc139, i32* %arrayidx138, align 4
  br label %if.end.147

if.else.140:                                      ; preds = %lor.lhs.false.130
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type141 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 5
  %120 = load i32, i32* %type141, align 4
  %idxprom142 = sext i32 %120 to i64
  %121 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4143 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %121, i32 0, i32 11
  %arrayidx144 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4143, i32 0, i64 %idxprom142
  %arrayidx145 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx144, i32 0, i64 4
  %122 = load i32, i32* %arrayidx145, align 4
  %inc146 = add nsw i32 %122, 1
  store i32 %inc146, i32* %arrayidx145, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.140, %if.then.133
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.117
  br label %for.inc

for.inc:                                          ; preds = %if.end.148
  %123 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %123, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.186

if.else.150:                                      ; preds = %if.then.87
  %124 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type151 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %124, i32 0, i32 8
  %125 = load i32, i32* %mb_type151, align 4
  %cmp152 = icmp sge i32 %125, 0
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.185

land.lhs.true.154:                                ; preds = %if.else.150
  %126 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type155 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %126, i32 0, i32 8
  %127 = load i32, i32* %mb_type155, align 4
  %cmp156 = icmp sle i32 %127, 3
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.185

land.lhs.true.158:                                ; preds = %land.lhs.true.154
  %128 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp159 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %128, i32 0, i32 12
  %129 = load i32, i32* %cbp159, align 4
  %and160 = and i32 %129, 15
  %cmp161 = icmp ne i32 %and160, 0
  br i1 %cmp161, label %if.then.163, label %if.end.185

if.then.163:                                      ; preds = %land.lhs.true.158
  %130 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag164 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %130, i32 0, i32 31
  %131 = load i32, i32* %luma_transform_size_8x8_flag164, align 4
  %tobool165 = icmp ne i32 %131, 0
  br i1 %tobool165, label %if.then.166, label %if.else.175

if.then.166:                                      ; preds = %if.then.163
  %132 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type167 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %132, i32 0, i32 8
  %133 = load i32, i32* %mb_type167, align 4
  %idxprom168 = sext i32 %133 to i64
  %134 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type169 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %134, i32 0, i32 5
  %135 = load i32, i32* %type169, align 4
  %idxprom170 = sext i32 %135 to i64
  %136 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8171 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %136, i32 0, i32 10
  %arrayidx172 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8171, i32 0, i64 %idxprom170
  %arrayidx173 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx172, i32 0, i64 %idxprom168
  %137 = load i32, i32* %arrayidx173, align 4
  %inc174 = add nsw i32 %137, 1
  store i32 %inc174, i32* %arrayidx173, align 4
  br label %if.end.184

if.else.175:                                      ; preds = %if.then.163
  %138 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type176 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %138, i32 0, i32 8
  %139 = load i32, i32* %mb_type176, align 4
  %idxprom177 = sext i32 %139 to i64
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 5
  %141 = load i32, i32* %type178, align 4
  %idxprom179 = sext i32 %141 to i64
  %142 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4180 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %142, i32 0, i32 11
  %arrayidx181 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4180, i32 0, i64 %idxprom179
  %arrayidx182 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx181, i32 0, i64 %idxprom177
  %143 = load i32, i32* %arrayidx182, align 4
  %inc183 = add nsw i32 %143, 1
  store i32 %inc183, i32* %arrayidx182, align 4
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.175, %if.then.166
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %land.lhs.true.158, %land.lhs.true.154, %if.else.150
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %for.end
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.end.67
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type188 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 5
  %145 = load i32, i32* %type188, align 4
  %cmp189 = icmp eq i32 %145, 0
  br i1 %cmp189, label %if.then.195, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %if.end.187
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type192 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 5
  %147 = load i32, i32* %type192, align 4
  %cmp193 = icmp eq i32 %147, 3
  br i1 %cmp193, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %lor.lhs.false.191, %if.end.187
  %148 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %quant0 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %148, i32 0, i32 0
  %149 = load i32, i32* %quant0, align 4
  %inc196 = add nsw i32 %149, 1
  store i32 %inc196, i32* %quant0, align 4
  %150 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %150, i32 0, i32 2
  %151 = load i32, i32* %qp, align 4
  %152 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %quant1 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %152, i32 0, i32 1
  %153 = load i32, i32* %quant1, align 4
  %add197 = add nsw i32 %153, %151
  store i32 %add197, i32* %quant1, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.195, %lor.lhs.false.191
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @set_chroma_qp(%struct.macroblock* %currMB) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %i = alloca i32, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 145
  %2 = load i32, i32* %bitdepth_chroma_qp_scale, align 4
  %sub = sub nsw i32 0, %2
  %3 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i32 0, i32 2
  %4 = load i32, i32* %qp, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %chroma_qp_offset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 165
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %4, %7
  %call = call i32 @iClip3(i32 %sub, i32 51, i32 %add)
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %qpc = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %qpc, i32 0, i64 %idxprom1
  store i32 %call, i32* %arrayidx2, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %qpc4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %qpc4, i32 0, i64 %idxprom3
  %12 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %qpc8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %qpc8, i32 0, i64 %idxprom7
  %15 = load i32, i32* %arrayidx9, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %qpc11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %qpc11, i32 0, i64 %idxprom10
  %18 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [52 x i8], [52 x i8]* @QP_SCALE_CR, i32 0, i64 %idxprom13
  %19 = load i8, i8* %arrayidx14, align 1
  %conv = zext i8 %19 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %conv, %cond.false ]
  %20 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %qpc16 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %qpc16, i32 0, i64 %idxprom15
  store i32 %cond, i32* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #2 {
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
define void @start_macroblock(i32 %mb_addr, i32 %mb_field) #0 {
entry:
  %mb_addr.addr = alloca i32, align 4
  %mb_field.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %use_bitstream_backing = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %curr_slice = alloca %struct.Slice*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %prev_mb = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  store i32 %mb_addr, i32* %mb_addr.addr, align 4
  store i32 %mb_field, i32* %mb_field.addr, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 21
  %1 = load i32, i32* %slice_mode, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_mode1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 21
  %3 = load i32, i32* %slice_mode1, align 4
  %cmp2 = icmp eq i32 %3, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  store i32 %lor.ext, i32* %use_bitstream_backing, align 4
  %5 = load i32, i32* %mb_addr.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 61
  %7 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %7, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 60
  %9 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %9, %struct.Slice** %curr_slice, align 8
  %10 = load i32, i32* %mb_field.addr, align 4
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 19
  store i32 %10, i32* %mb_field3, align 4
  %12 = load i32, i32* %mb_field.addr, align 4
  %conv = trunc i32 %12 to i8
  %13 = load i32, i32* %mb_addr.addr, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mb_field5 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 34
  %15 = load i8*, i8** %mb_field5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %15, i64 %idxprom4
  store i8 %conv, i8* %arrayidx6, align 1
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 110
  %17 = load i32, i32* %field_picture, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %lor.end.11, label %lor.rhs.7

lor.rhs.7:                                        ; preds = %lor.end
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 100
  %19 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs.7
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 19
  %21 = load i32, i32* %mb_field9, align 4
  %tobool10 = icmp ne i32 %21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs.7
  %22 = phi i1 [ false, %lor.rhs.7 ], [ %tobool10, %land.rhs ]
  br label %lor.end.11

lor.end.11:                                       ; preds = %land.end, %lor.end
  %23 = phi i1 [ true, %lor.end ], [ %22, %land.end ]
  %lor.ext12 = zext i1 %23 to i32
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %is_field_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 20
  store i32 %lor.ext12, i32* %is_field_mode, align 4
  %25 = load i32, i32* %mb_addr.addr, align 4
  call void @set_MB_parameters(i32 %25)
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 3
  %27 = load i32, i32* %current_mb_nr, align 4
  %call = call i32 @FmoGetPreviousMBNr(i32 %27)
  store i32 %call, i32* %prev_mb, align 4
  %28 = load i32, i32* %use_bitstream_backing, align 4
  %tobool13 = icmp ne i32 %28, 0
  br i1 %tobool13, label %if.then, label %if.end.29

if.then:                                          ; preds = %lor.end.11
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 122
  %30 = load i32, i32* %MbInterlace, align 4
  %tobool14 = icmp ne i32 %30, 0
  br i1 %tobool14, label %lor.lhs.false, label %if.then.17

lor.lhs.false:                                    ; preds = %if.then
  %31 = load i32, i32* %mb_addr.addr, align 4
  %and = and i32 %31, 1
  %cmp15 = icmp eq i32 %and, 0
  br i1 %cmp15, label %if.then.17, label %if.end.28

if.then.17:                                       ; preds = %lor.lhs.false, %if.then
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 33
  %33 = load i32, i32* %cod_counter, align 4
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %if.end.27, label %if.then.19

if.then.19:                                       ; preds = %if.then.17
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %34 = load i32, i32* %i, align 4
  %35 = load %struct.Slice*, %struct.Slice** %curr_slice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %35, i32 0, i32 4
  %36 = load i32, i32* %max_part_nr, align 4
  %cmp20 = icmp slt i32 %34, %36
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %37 to i64
  %38 = load %struct.Slice*, %struct.Slice** %curr_slice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %38, i32 0, i32 6
  %39 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx23 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %39, i64 %idxprom22
  store %struct.datapartition* %arrayidx23, %struct.datapartition** %dataPart, align 8
  %40 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %40, i32 0, i32 0
  %41 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %41, %struct.Bitstream** %currStream, align 8
  %42 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %42, i32 0, i32 1
  %43 = load i32, i32* %bits_to_go, align 4
  %44 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %stored_bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %44, i32 0, i32 4
  store i32 %43, i32* %stored_bits_to_go, align 4
  %45 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %45, i32 0, i32 0
  %46 = load i32, i32* %byte_pos, align 4
  %47 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %stored_byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %47, i32 0, i32 3
  store i32 %46, i32* %stored_byte_pos, align 4
  %48 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %48, i32 0, i32 2
  %49 = load i8, i8* %byte_buf, align 1
  %50 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %stored_byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %50, i32 0, i32 5
  store i8 %49, i8* %stored_byte_buf, align 1
  %51 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %51, i32 0, i32 6
  %52 = load i32, i32* %bit_slice, align 4
  %53 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %stored_bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %53, i32 0, i32 7
  store i32 %52, i32* %stored_bit_slice, align 4
  %54 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %54, i32 0, i32 74
  %55 = load i32, i32* %symbol_mode, align 4
  %cmp24 = icmp eq i32 %55, 1
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %for.body
  %56 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %ee_recode = getelementptr inbounds %struct.datapartition, %struct.datapartition* %56, i32 0, i32 2
  %57 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %57, i32 0, i32 1
  %58 = bitcast %struct.EncodingEnvironment* %ee_recode to i8*
  %59 = bitcast %struct.EncodingEnvironment* %ee_cabac to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 48, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.26, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %60 = load i32, i32* %i, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.then.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %lor.lhs.false
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %lor.end.11
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 4
  %62 = load i32, i32* %current_slice_nr, align 4
  %63 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %63, i32 0, i32 0
  store i32 %62, i32* %slice_nr, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qpsp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 10
  %65 = load i32, i32* %qpsp, align 4
  %66 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qpsp30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %66, i32 0, i32 4
  store i32 %65, i32* %qpsp30, align 4
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 157
  %68 = load i32, i32* %RCEnable, align 4
  %tobool31 = icmp ne i32 %68, 0
  br i1 %tobool31, label %if.then.32, label %if.else.356

if.then.32:                                       ; preds = %if.end.29
  %69 = load i32, i32* %prev_mb, align 4
  %cmp33 = icmp sgt i32 %69, -1
  br i1 %cmp33, label %if.then.35, label %if.else.67

if.then.35:                                       ; preds = %if.then.32
  %70 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace36 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %70, i32 0, i32 122
  %71 = load i32, i32* %MbInterlace36, align 4
  %cmp37 = icmp eq i32 %71, 2
  br i1 %cmp37, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.then.35
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 134
  %73 = load i32, i32* %bot_MB, align 4
  %tobool39 = icmp ne i32 %73, 0
  br i1 %tobool39, label %if.end.49, label %land.lhs.true.40

land.lhs.true.40:                                 ; preds = %land.lhs.true
  %74 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field41 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %74, i32 0, i32 19
  %75 = load i32, i32* %mb_field41, align 4
  %tobool42 = icmp ne i32 %75, 0
  br i1 %tobool42, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %land.lhs.true.40
  %76 = load i32, i32* %prev_mb, align 4
  %idxprom44 = sext i32 %76 to i64
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 61
  %78 = load %struct.macroblock*, %struct.macroblock** %mb_data45, align 8
  %arrayidx46 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %78, i64 %idxprom44
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx46, i32 0, i32 2
  %79 = load i32, i32* %qp, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 9
  store i32 %79, i32* %qp47, align 4
  %81 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp48 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i32 0, i32 2
  store i32 %79, i32* %qp48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.43, %land.lhs.true.40, %land.lhs.true, %if.then.35
  %82 = load i32, i32* %prev_mb, align 4
  %idxprom50 = sext i32 %82 to i64
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 61
  %84 = load %struct.macroblock*, %struct.macroblock** %mb_data51, align 8
  %arrayidx52 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i64 %idxprom50
  %qp53 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx52, i32 0, i32 2
  %85 = load i32, i32* %qp53, align 4
  %86 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i32 0, i32 35
  store i32 %85, i32* %prev_qp, align 4
  %87 = load i32, i32* %prev_mb, align 4
  %idxprom54 = sext i32 %87 to i64
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 61
  %89 = load %struct.macroblock*, %struct.macroblock** %mb_data55, align 8
  %arrayidx56 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %89, i64 %idxprom54
  %slice_nr57 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx56, i32 0, i32 0
  %90 = load i32, i32* %slice_nr57, align 4
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 4
  %92 = load i32, i32* %current_slice_nr58, align 4
  %cmp59 = icmp eq i32 %90, %92
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.end.49
  %93 = load i32, i32* %prev_mb, align 4
  %idxprom62 = sext i32 %93 to i64
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 61
  %95 = load %struct.macroblock*, %struct.macroblock** %mb_data63, align 8
  %arrayidx64 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %95, i64 %idxprom62
  %delta_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx64, i32 0, i32 1
  %96 = load i32, i32* %delta_qp, align 4
  %97 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_delta_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %97, i32 0, i32 36
  store i32 %96, i32* %prev_delta_qp, align 4
  br label %if.end.66

if.else:                                          ; preds = %if.end.49
  %98 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_delta_qp65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %98, i32 0, i32 36
  store i32 0, i32* %prev_delta_qp65, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.61
  br label %if.end.71

if.else.67:                                       ; preds = %if.then.32
  %99 = load %struct.Slice*, %struct.Slice** %curr_slice, align 8
  %qp68 = getelementptr inbounds %struct.Slice, %struct.Slice* %99, i32 0, i32 1
  %100 = load i32, i32* %qp68, align 4
  %101 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp69 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %101, i32 0, i32 35
  store i32 %100, i32* %prev_qp69, align 4
  %102 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_delta_qp70 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %102, i32 0, i32 36
  store i32 0, i32* %prev_delta_qp70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.67, %if.end.66
  %103 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %103, i32 0, i32 160
  %104 = load i32, i32* %basicunit, align 4
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 120
  %106 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp72 = icmp eq i32 %104, %106
  br i1 %cmp72, label %if.then.74, label %if.else.78

if.then.74:                                       ; preds = %if.end.71
  %107 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp75 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %107, i32 0, i32 1
  store i32 0, i32* %delta_qp75, align 4
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp76 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 9
  %109 = load i32, i32* %qp76, align 4
  %110 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %110, i32 0, i32 2
  store i32 %109, i32* %qp77, align 4
  br label %if.end.355

if.else.78:                                       ; preds = %if.end.71
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 5
  %112 = load i32, i32* %type, align 4
  %cmp79 = icmp eq i32 %112, 2
  br i1 %cmp79, label %land.lhs.true.85, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.else.78
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 5
  %114 = load i32, i32* %type82, align 4
  %cmp83 = icmp eq i32 %114, 1
  br i1 %cmp83, label %land.lhs.true.85, label %lor.lhs.false.88

land.lhs.true.85:                                 ; preds = %lor.lhs.false.81, %if.else.78
  %115 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %115, i32 0, i32 162
  %116 = load i32, i32* %RCUpdateMode, align 4
  %cmp86 = icmp ne i32 %116, 1
  br i1 %cmp86, label %if.then.90, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %land.lhs.true.85, %lor.lhs.false.81
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 0
  %118 = load i32, i32* %number, align 4
  %119 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %118, %119
  %tobool89 = icmp ne i32 %sub, 0
  br i1 %tobool89, label %if.else.94, label %if.then.90

if.then.90:                                       ; preds = %lor.lhs.false.88, %land.lhs.true.85
  %120 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp91 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %120, i32 0, i32 1
  store i32 0, i32* %delta_qp91, align 4
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp92 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 9
  %122 = load i32, i32* %qp92, align 4
  %123 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp93 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %123, i32 0, i32 2
  store i32 %122, i32* %qp93, align 4
  br label %if.end.354

if.else.94:                                       ; preds = %lor.lhs.false.88
  %124 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type95 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %124, i32 0, i32 5
  %125 = load i32, i32* %type95, align 4
  %cmp96 = icmp eq i32 %125, 0
  br i1 %cmp96, label %if.then.102, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.else.94
  %126 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode99 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %126, i32 0, i32 162
  %127 = load i32, i32* %RCUpdateMode99, align 4
  %cmp100 = icmp eq i32 %127, 1
  br i1 %cmp100, label %if.then.102, label %if.end.353

if.then.102:                                      ; preds = %lor.lhs.false.98, %if.else.94
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 133
  %129 = load i32, i32* %write_macroblock, align 4
  %tobool103 = icmp ne i32 %129, 0
  br i1 %tobool103, label %if.else.177, label %if.then.104

if.then.104:                                      ; preds = %if.then.102
  %130 = load i32, i32* %prev_mb, align 4
  %cmp105 = icmp slt i32 %130, 0
  br i1 %cmp105, label %if.then.107, label %if.else.125

if.then.107:                                      ; preds = %if.then.104
  %131 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp108 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %131, i32 0, i32 1
  store i32 0, i32* %delta_qp108, align 4
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 9
  %133 = load i32, i32* %qp109, align 4
  %134 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp110 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %134, i32 0, i32 2
  store i32 %133, i32* %qp110, align 4
  %135 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp111 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %135, i32 0, i32 1
  %136 = load i32, i32* %delta_qp111, align 4
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 134
  %138 = load i32, i32* %bot_MB112, align 4
  %idxprom113 = sext i32 %138 to i64
  %139 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field114 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %139, i32 0, i32 19
  %140 = load i32, i32* %mb_field114, align 4
  %idxprom115 = sext i32 %140 to i64
  %arrayidx116 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @delta_qp_mbaff, i32 0, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx116, i32 0, i64 %idxprom113
  store i32 %136, i32* %arrayidx117, align 4
  %141 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp118 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %141, i32 0, i32 2
  %142 = load i32, i32* %qp118, align 4
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 134
  %144 = load i32, i32* %bot_MB119, align 4
  %idxprom120 = sext i32 %144 to i64
  %145 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field121 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %145, i32 0, i32 19
  %146 = load i32, i32* %mb_field121, align 4
  %idxprom122 = sext i32 %146 to i64
  %arrayidx123 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @qp_mbaff, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx123, i32 0, i64 %idxprom120
  store i32 %142, i32* %arrayidx124, align 4
  br label %if.end.176

if.else.125:                                      ; preds = %if.then.104
  %147 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace126 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %147, i32 0, i32 122
  %148 = load i32, i32* %MbInterlace126, align 4
  %tobool127 = icmp ne i32 %148, 0
  br i1 %tobool127, label %land.lhs.true.128, label %if.then.131

land.lhs.true.128:                                ; preds = %if.else.125
  %149 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %149, i32 0, i32 134
  %150 = load i32, i32* %bot_MB129, align 4
  %tobool130 = icmp ne i32 %150, 0
  br i1 %tobool130, label %if.else.171, label %if.then.131

if.then.131:                                      ; preds = %land.lhs.true.128, %if.else.125
  %151 = load i32, i32* %prev_mb, align 4
  %idxprom132 = sext i32 %151 to i64
  %152 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %152, i32 0, i32 61
  %153 = load %struct.macroblock*, %struct.macroblock** %mb_data133, align 8
  %arrayidx134 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %153, i64 %idxprom132
  %prev_cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx134, i32 0, i32 37
  %154 = load i32, i32* %prev_cbp, align 4
  %cmp135 = icmp eq i32 %154, 1
  br i1 %cmp135, label %if.then.137, label %if.else.141

if.then.137:                                      ; preds = %if.then.131
  %155 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp138 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %155, i32 0, i32 1
  store i32 0, i32* %delta_qp138, align 4
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 9
  %157 = load i32, i32* %qp139, align 4
  %158 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp140 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %158, i32 0, i32 2
  store i32 %157, i32* %qp140, align 4
  br label %if.end.156

if.else.141:                                      ; preds = %if.then.131
  %159 = load i32, i32* %prev_mb, align 4
  %idxprom142 = sext i32 %159 to i64
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 61
  %161 = load %struct.macroblock*, %struct.macroblock** %mb_data143, align 8
  %arrayidx144 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %161, i64 %idxprom142
  %prev_qp145 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx144, i32 0, i32 35
  %162 = load i32, i32* %prev_qp145, align 4
  %163 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp146 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %163, i32 0, i32 2
  store i32 %162, i32* %qp146, align 4
  %164 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp147 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %164, i32 0, i32 2
  %165 = load i32, i32* %qp147, align 4
  %166 = load i32, i32* %prev_mb, align 4
  %idxprom148 = sext i32 %166 to i64
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data149 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 61
  %168 = load %struct.macroblock*, %struct.macroblock** %mb_data149, align 8
  %arrayidx150 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %168, i64 %idxprom148
  %qp151 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx150, i32 0, i32 2
  %169 = load i32, i32* %qp151, align 4
  %sub152 = sub nsw i32 %165, %169
  %170 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp153 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %170, i32 0, i32 1
  store i32 %sub152, i32* %delta_qp153, align 4
  %171 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp154 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %171, i32 0, i32 2
  %172 = load i32, i32* %qp154, align 4
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp155 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 9
  store i32 %172, i32* %qp155, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.141, %if.then.137
  %174 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp157 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %174, i32 0, i32 1
  %175 = load i32, i32* %delta_qp157, align 4
  %176 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB158 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %176, i32 0, i32 134
  %177 = load i32, i32* %bot_MB158, align 4
  %idxprom159 = sext i32 %177 to i64
  %178 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field160 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %178, i32 0, i32 19
  %179 = load i32, i32* %mb_field160, align 4
  %idxprom161 = sext i32 %179 to i64
  %arrayidx162 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @delta_qp_mbaff, i32 0, i64 %idxprom161
  %arrayidx163 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx162, i32 0, i64 %idxprom159
  store i32 %175, i32* %arrayidx163, align 4
  %180 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp164 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %180, i32 0, i32 2
  %181 = load i32, i32* %qp164, align 4
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB165 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 134
  %183 = load i32, i32* %bot_MB165, align 4
  %idxprom166 = sext i32 %183 to i64
  %184 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field167 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %184, i32 0, i32 19
  %185 = load i32, i32* %mb_field167, align 4
  %idxprom168 = sext i32 %185 to i64
  %arrayidx169 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @qp_mbaff, i32 0, i64 %idxprom168
  %arrayidx170 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx169, i32 0, i64 %idxprom166
  store i32 %181, i32* %arrayidx170, align 4
  br label %if.end.175

if.else.171:                                      ; preds = %land.lhs.true.128
  %186 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp172 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %186, i32 0, i32 1
  store i32 0, i32* %delta_qp172, align 4
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp173 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 9
  %188 = load i32, i32* %qp173, align 4
  %189 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp174 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %189, i32 0, i32 2
  store i32 %188, i32* %qp174, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.171, %if.end.156
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.107
  br label %if.end.230

if.else.177:                                      ; preds = %if.then.102
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 134
  %191 = load i32, i32* %bot_MB178, align 4
  %tobool179 = icmp ne i32 %191, 0
  br i1 %tobool179, label %if.else.225, label %if.then.180

if.then.180:                                      ; preds = %if.else.177
  %192 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_mbaff_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %192, i32 0, i32 135
  %193 = load i32, i32* %write_mbaff_frame, align 4
  %tobool181 = icmp ne i32 %193, 0
  br i1 %tobool181, label %if.then.182, label %if.else.192

if.then.182:                                      ; preds = %if.then.180
  %194 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB183 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %194, i32 0, i32 134
  %195 = load i32, i32* %bot_MB183, align 4
  %idxprom184 = sext i32 %195 to i64
  %arrayidx185 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @delta_qp_mbaff, i32 0, i64 0), i32 0, i64 %idxprom184
  %196 = load i32, i32* %arrayidx185, align 4
  %197 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp186 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %197, i32 0, i32 1
  store i32 %196, i32* %delta_qp186, align 4
  %198 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %198, i32 0, i32 134
  %199 = load i32, i32* %bot_MB187, align 4
  %idxprom188 = sext i32 %199 to i64
  %arrayidx189 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @qp_mbaff, i32 0, i64 0), i32 0, i64 %idxprom188
  %200 = load i32, i32* %arrayidx189, align 4
  %201 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp190 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %201, i32 0, i32 2
  store i32 %200, i32* %qp190, align 4
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp191 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 9
  store i32 %200, i32* %qp191, align 4
  br label %if.end.224

if.else.192:                                      ; preds = %if.then.180
  %203 = load i32, i32* %prev_mb, align 4
  %cmp193 = icmp slt i32 %203, 0
  br i1 %cmp193, label %if.then.195, label %if.else.213

if.then.195:                                      ; preds = %if.else.192
  %204 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp196 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %204, i32 0, i32 1
  store i32 0, i32* %delta_qp196, align 4
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp197 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 9
  %206 = load i32, i32* %qp197, align 4
  %207 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp198 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %207, i32 0, i32 2
  store i32 %206, i32* %qp198, align 4
  %208 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp199 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %208, i32 0, i32 1
  %209 = load i32, i32* %delta_qp199, align 4
  %210 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB200 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %210, i32 0, i32 134
  %211 = load i32, i32* %bot_MB200, align 4
  %idxprom201 = sext i32 %211 to i64
  %212 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field202 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %212, i32 0, i32 19
  %213 = load i32, i32* %mb_field202, align 4
  %idxprom203 = sext i32 %213 to i64
  %arrayidx204 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @delta_qp_mbaff, i32 0, i64 %idxprom203
  %arrayidx205 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx204, i32 0, i64 %idxprom201
  store i32 %209, i32* %arrayidx205, align 4
  %214 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp206 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %214, i32 0, i32 2
  %215 = load i32, i32* %qp206, align 4
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB207 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 134
  %217 = load i32, i32* %bot_MB207, align 4
  %idxprom208 = sext i32 %217 to i64
  %218 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field209 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %218, i32 0, i32 19
  %219 = load i32, i32* %mb_field209, align 4
  %idxprom210 = sext i32 %219 to i64
  %arrayidx211 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @qp_mbaff, i32 0, i64 %idxprom210
  %arrayidx212 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx211, i32 0, i64 %idxprom208
  store i32 %215, i32* %arrayidx212, align 4
  br label %if.end.223

if.else.213:                                      ; preds = %if.else.192
  %220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB214 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %220, i32 0, i32 134
  %221 = load i32, i32* %bot_MB214, align 4
  %idxprom215 = sext i32 %221 to i64
  %arrayidx216 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @delta_qp_mbaff, i32 0, i64 1), i32 0, i64 %idxprom215
  %222 = load i32, i32* %arrayidx216, align 4
  %223 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp217 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %223, i32 0, i32 1
  store i32 %222, i32* %delta_qp217, align 4
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB218 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 134
  %225 = load i32, i32* %bot_MB218, align 4
  %idxprom219 = sext i32 %225 to i64
  %arrayidx220 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @qp_mbaff, i32 0, i64 1), i32 0, i64 %idxprom219
  %226 = load i32, i32* %arrayidx220, align 4
  %227 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp221 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %227, i32 0, i32 2
  store i32 %226, i32* %qp221, align 4
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp222 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 9
  store i32 %226, i32* %qp222, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.213, %if.then.195
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.then.182
  br label %if.end.229

if.else.225:                                      ; preds = %if.else.177
  %229 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp226 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %229, i32 0, i32 1
  store i32 0, i32* %delta_qp226, align 4
  %230 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp227 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %230, i32 0, i32 9
  %231 = load i32, i32* %qp227, align 4
  %232 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp228 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %232, i32 0, i32 2
  store i32 %231, i32* %qp228, align 4
  %233 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @set_chroma_qp(%struct.macroblock* %233)
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.225, %if.end.224
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.end.176
  %234 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock231 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %234, i32 0, i32 133
  %235 = load i32, i32* %write_macroblock231, align 4
  %tobool232 = icmp ne i32 %235, 0
  br i1 %tobool232, label %if.end.352, label %if.then.233

if.then.233:                                      ; preds = %if.end.230
  %236 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace234 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %236, i32 0, i32 122
  %237 = load i32, i32* %MbInterlace234, align 4
  %tobool235 = icmp ne i32 %237, 0
  br i1 %tobool235, label %land.lhs.true.236, label %if.then.239

land.lhs.true.236:                                ; preds = %if.then.233
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB237 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 134
  %239 = load i32, i32* %bot_MB237, align 4
  %tobool238 = icmp ne i32 %239, 0
  br i1 %tobool238, label %if.else.348, label %if.then.239

if.then.239:                                      ; preds = %land.lhs.true.236, %if.then.233
  %240 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %240, i32 0, i32 128
  %241 = load i32, i32* %NumberofCodedMacroBlocks, align 4
  %cmp240 = icmp sgt i32 %241, 0
  br i1 %cmp240, label %land.lhs.true.242, label %if.end.273

land.lhs.true.242:                                ; preds = %if.then.239
  %242 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks243 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %242, i32 0, i32 128
  %243 = load i32, i32* %NumberofCodedMacroBlocks243, align 4
  %244 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %244, i32 0, i32 132
  %245 = load i32, i32* %BasicUnit, align 4
  %rem = urem i32 %243, %245
  %cmp244 = icmp eq i32 %rem, 0
  br i1 %cmp244, label %if.then.246, label %if.end.273

if.then.246:                                      ; preds = %land.lhs.true.242
  %246 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %246, i32 0, i32 25
  %247 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool247 = icmp ne i32 %247, 0
  br i1 %tobool247, label %if.then.248, label %if.else.250

if.then.248:                                      ; preds = %if.then.246
  %248 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @updateRCModel(%struct.rc_quadratic* %248)
  %249 = load i32 (%struct.rc_quadratic*, i32)*, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  %250 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %251 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TopFieldFlag = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %251, i32 0, i32 0
  %252 = load i32, i32* %TopFieldFlag, align 4
  %call249 = call i32 %249(%struct.rc_quadratic* %250, i32 %252)
  %253 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnitQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %253, i32 0, i32 129
  store i32 %call249, i32* %BasicUnitQP, align 4
  br label %if.end.272

if.else.250:                                      ; preds = %if.then.246
  %254 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %254, i32 0, i32 121
  %255 = load i32, i32* %PicInterlace, align 4
  %cmp251 = icmp ne i32 %255, 0
  br i1 %cmp251, label %land.lhs.true.253, label %if.else.263

land.lhs.true.253:                                ; preds = %if.else.250
  %256 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace254 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %256, i32 0, i32 122
  %257 = load i32, i32* %MbInterlace254, align 4
  %tobool255 = icmp ne i32 %257, 0
  br i1 %tobool255, label %if.else.263, label %land.lhs.true.256

land.lhs.true.256:                                ; preds = %land.lhs.true.253
  %258 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %258, i32 0, i32 3
  %259 = load i32, i32* %NoGranularFieldRC, align 4
  %cmp257 = icmp eq i32 %259, 0
  br i1 %cmp257, label %if.then.259, label %if.else.263

if.then.259:                                      ; preds = %land.lhs.true.256
  %260 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @updateRCModel(%struct.rc_quadratic* %260)
  %261 = load i32 (%struct.rc_quadratic*, i32)*, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  %262 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %263 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TopFieldFlag260 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %263, i32 0, i32 0
  %264 = load i32, i32* %TopFieldFlag260, align 4
  %call261 = call i32 %261(%struct.rc_quadratic* %262, i32 %264)
  %265 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnitQP262 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %265, i32 0, i32 129
  store i32 %call261, i32* %BasicUnitQP262, align 4
  br label %if.end.271

if.else.263:                                      ; preds = %land.lhs.true.256, %land.lhs.true.253, %if.else.250
  %266 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace264 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %266, i32 0, i32 122
  %267 = load i32, i32* %MbInterlace264, align 4
  %tobool265 = icmp ne i32 %267, 0
  br i1 %tobool265, label %if.then.266, label %if.end.270

if.then.266:                                      ; preds = %if.else.263
  %268 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @updateRCModel(%struct.rc_quadratic* %268)
  %269 = load i32 (%struct.rc_quadratic*, i32)*, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  %270 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %271 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TopFieldFlag267 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %271, i32 0, i32 0
  %272 = load i32, i32* %TopFieldFlag267, align 4
  %call268 = call i32 %269(%struct.rc_quadratic* %270, i32 %272)
  %273 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnitQP269 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %273, i32 0, i32 129
  store i32 %call268, i32* %BasicUnitQP269, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.266, %if.else.263
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.then.259
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.then.248
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %land.lhs.true.242, %if.then.239
  %274 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr274 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %274, i32 0, i32 3
  %275 = load i32, i32* %current_mb_nr274, align 4
  %cmp275 = icmp eq i32 %275, 0
  br i1 %cmp275, label %if.then.277, label %if.end.280

if.then.277:                                      ; preds = %if.end.273
  %276 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp278 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %276, i32 0, i32 9
  %277 = load i32, i32* %qp278, align 4
  %278 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnitQP279 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %278, i32 0, i32 129
  store i32 %277, i32* %BasicUnitQP279, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.277, %if.end.273
  %279 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp281 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %279, i32 0, i32 2
  %280 = load i32, i32* %qp281, align 4
  %281 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %min_qp_delta = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %281, i32 0, i32 149
  %282 = load i32, i32* %min_qp_delta, align 4
  %sub282 = sub nsw i32 %280, %282
  %283 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp283 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %283, i32 0, i32 2
  %284 = load i32, i32* %qp283, align 4
  %285 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_qp_delta = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %285, i32 0, i32 148
  %286 = load i32, i32* %max_qp_delta, align 4
  %add = add nsw i32 %284, %286
  %287 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnitQP284 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %287, i32 0, i32 129
  %288 = load i32, i32* %BasicUnitQP284, align 4
  %call285 = call i32 @iClip3(i32 %sub282, i32 %add, i32 %288)
  %289 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %predict_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %289, i32 0, i32 38
  store i32 %call285, i32* %predict_qp, align 4
  %290 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp286 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %290, i32 0, i32 1
  %291 = load i32, i32* %delta_qp286, align 4
  %292 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %predict_qp287 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %292, i32 0, i32 38
  %293 = load i32, i32* %predict_qp287, align 4
  %add288 = add nsw i32 %291, %293
  %294 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp289 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %294, i32 0, i32 2
  %295 = load i32, i32* %qp289, align 4
  %sub290 = sub nsw i32 %add288, %295
  store i32 %sub290, i32* @dq, align 4
  %296 = load i32, i32* @dq, align 4
  %297 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %min_qp_delta291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %297, i32 0, i32 149
  %298 = load i32, i32* %min_qp_delta291, align 4
  %sub292 = sub nsw i32 0, %298
  %cmp293 = icmp slt i32 %296, %sub292
  br i1 %cmp293, label %if.then.295, label %if.else.306

if.then.295:                                      ; preds = %if.end.280
  %299 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %min_qp_delta296 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %299, i32 0, i32 149
  %300 = load i32, i32* %min_qp_delta296, align 4
  %sub297 = sub nsw i32 0, %300
  store i32 %sub297, i32* @dq, align 4
  %301 = load i32, i32* @dq, align 4
  %302 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp298 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %302, i32 0, i32 1
  %303 = load i32, i32* %delta_qp298, align 4
  %sub299 = sub nsw i32 %301, %303
  store i32 %sub299, i32* @predict_error, align 4
  %304 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp300 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %304, i32 0, i32 9
  %305 = load i32, i32* %qp300, align 4
  %306 = load i32, i32* @predict_error, align 4
  %add301 = add nsw i32 %305, %306
  %307 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp302 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %307, i32 0, i32 9
  store i32 %add301, i32* %qp302, align 4
  %308 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %min_qp_delta303 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %308, i32 0, i32 149
  %309 = load i32, i32* %min_qp_delta303, align 4
  %sub304 = sub nsw i32 0, %309
  %310 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp305 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %310, i32 0, i32 1
  store i32 %sub304, i32* %delta_qp305, align 4
  br label %if.end.327

if.else.306:                                      ; preds = %if.end.280
  %311 = load i32, i32* @dq, align 4
  %312 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_qp_delta307 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %312, i32 0, i32 148
  %313 = load i32, i32* %max_qp_delta307, align 4
  %cmp308 = icmp sgt i32 %311, %313
  br i1 %cmp308, label %if.then.310, label %if.else.319

if.then.310:                                      ; preds = %if.else.306
  %314 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_qp_delta311 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %314, i32 0, i32 148
  %315 = load i32, i32* %max_qp_delta311, align 4
  store i32 %315, i32* @dq, align 4
  %316 = load i32, i32* @dq, align 4
  %317 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp312 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %317, i32 0, i32 1
  %318 = load i32, i32* %delta_qp312, align 4
  %sub313 = sub nsw i32 %316, %318
  store i32 %sub313, i32* @predict_error, align 4
  %319 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp314 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %319, i32 0, i32 9
  %320 = load i32, i32* %qp314, align 4
  %321 = load i32, i32* @predict_error, align 4
  %add315 = add nsw i32 %320, %321
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp316 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 9
  store i32 %add315, i32* %qp316, align 4
  %323 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_qp_delta317 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %323, i32 0, i32 148
  %324 = load i32, i32* %max_qp_delta317, align 4
  %325 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp318 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %325, i32 0, i32 1
  store i32 %324, i32* %delta_qp318, align 4
  br label %if.end.326

if.else.319:                                      ; preds = %if.else.306
  %326 = load i32, i32* @dq, align 4
  %327 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp320 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %327, i32 0, i32 1
  store i32 %326, i32* %delta_qp320, align 4
  %328 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %predict_qp321 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %328, i32 0, i32 38
  %329 = load i32, i32* %predict_qp321, align 4
  %330 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp322 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %330, i32 0, i32 2
  %331 = load i32, i32* %qp322, align 4
  %sub323 = sub nsw i32 %329, %331
  store i32 %sub323, i32* @predict_error, align 4
  %332 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %predict_qp324 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %332, i32 0, i32 38
  %333 = load i32, i32* %predict_qp324, align 4
  %334 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp325 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %334, i32 0, i32 9
  store i32 %333, i32* %qp325, align 4
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.319, %if.then.310
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.295
  %335 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp328 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %335, i32 0, i32 9
  %336 = load i32, i32* %qp328, align 4
  %337 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp329 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %337, i32 0, i32 2
  store i32 %336, i32* %qp329, align 4
  %338 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace330 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %338, i32 0, i32 122
  %339 = load i32, i32* %MbInterlace330, align 4
  %tobool331 = icmp ne i32 %339, 0
  br i1 %tobool331, label %if.then.332, label %if.end.347

if.then.332:                                      ; preds = %if.end.327
  %340 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp333 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %340, i32 0, i32 1
  %341 = load i32, i32* %delta_qp333, align 4
  %342 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB334 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %342, i32 0, i32 134
  %343 = load i32, i32* %bot_MB334, align 4
  %idxprom335 = sext i32 %343 to i64
  %344 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field336 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %344, i32 0, i32 19
  %345 = load i32, i32* %mb_field336, align 4
  %idxprom337 = sext i32 %345 to i64
  %arrayidx338 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @delta_qp_mbaff, i32 0, i64 %idxprom337
  %arrayidx339 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx338, i32 0, i64 %idxprom335
  store i32 %341, i32* %arrayidx339, align 4
  %346 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp340 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %346, i32 0, i32 2
  %347 = load i32, i32* %qp340, align 4
  %348 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB341 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %348, i32 0, i32 134
  %349 = load i32, i32* %bot_MB341, align 4
  %idxprom342 = sext i32 %349 to i64
  %350 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field343 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %350, i32 0, i32 19
  %351 = load i32, i32* %mb_field343, align 4
  %idxprom344 = sext i32 %351 to i64
  %arrayidx345 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @qp_mbaff, i32 0, i64 %idxprom344
  %arrayidx346 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx345, i32 0, i64 %idxprom342
  store i32 %347, i32* %arrayidx346, align 4
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.332, %if.end.327
  %352 = load i32, i32* @predict_error, align 4
  %353 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %predict_error = getelementptr inbounds %struct.macroblock, %struct.macroblock* %353, i32 0, i32 39
  store i32 %352, i32* %predict_error, align 4
  br label %if.end.351

if.else.348:                                      ; preds = %land.lhs.true.236
  %354 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp349 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %354, i32 0, i32 9
  %355 = load i32, i32* %qp349, align 4
  %356 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp350 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %356, i32 0, i32 35
  store i32 %355, i32* %prev_qp350, align 4
  br label %if.end.351

if.end.351:                                       ; preds = %if.else.348, %if.end.347
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %if.end.230
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %lor.lhs.false.98
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %if.then.90
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %if.then.74
  br label %if.end.403

if.else.356:                                      ; preds = %if.end.29
  %357 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice357 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %357, i32 0, i32 60
  %358 = load %struct.Slice*, %struct.Slice** %currentSlice357, align 8
  store %struct.Slice* %358, %struct.Slice** %currSlice, align 8
  %359 = load i32, i32* %prev_mb, align 4
  %cmp358 = icmp sgt i32 %359, -1
  br i1 %cmp358, label %if.then.360, label %if.else.378

if.then.360:                                      ; preds = %if.else.356
  %360 = load i32, i32* %prev_mb, align 4
  %idxprom361 = sext i32 %360 to i64
  %361 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data362 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %361, i32 0, i32 61
  %362 = load %struct.macroblock*, %struct.macroblock** %mb_data362, align 8
  %arrayidx363 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %362, i64 %idxprom361
  %qp364 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx363, i32 0, i32 2
  %363 = load i32, i32* %qp364, align 4
  %364 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp365 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %364, i32 0, i32 35
  store i32 %363, i32* %prev_qp365, align 4
  %365 = load i32, i32* %prev_mb, align 4
  %idxprom366 = sext i32 %365 to i64
  %366 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data367 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %366, i32 0, i32 61
  %367 = load %struct.macroblock*, %struct.macroblock** %mb_data367, align 8
  %arrayidx368 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %367, i64 %idxprom366
  %slice_nr369 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx368, i32 0, i32 0
  %368 = load i32, i32* %slice_nr369, align 4
  %369 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr370 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %369, i32 0, i32 4
  %370 = load i32, i32* %current_slice_nr370, align 4
  %cmp371 = icmp eq i32 %368, %370
  br i1 %cmp371, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.360
  %371 = load i32, i32* %prev_mb, align 4
  %idxprom373 = sext i32 %371 to i64
  %372 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data374 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %372, i32 0, i32 61
  %373 = load %struct.macroblock*, %struct.macroblock** %mb_data374, align 8
  %arrayidx375 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %373, i64 %idxprom373
  %delta_qp376 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx375, i32 0, i32 1
  %374 = load i32, i32* %delta_qp376, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.360
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %374, %cond.true ], [ 0, %cond.false ]
  %375 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_delta_qp377 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %375, i32 0, i32 36
  store i32 %cond, i32* %prev_delta_qp377, align 4
  br label %if.end.382

if.else.378:                                      ; preds = %if.else.356
  %376 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %qp379 = getelementptr inbounds %struct.Slice, %struct.Slice* %376, i32 0, i32 1
  %377 = load i32, i32* %qp379, align 4
  %378 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp380 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %378, i32 0, i32 35
  store i32 %377, i32* %prev_qp380, align 4
  %379 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_delta_qp381 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %379, i32 0, i32 36
  store i32 0, i32* %prev_delta_qp381, align 4
  br label %if.end.382

if.end.382:                                       ; preds = %if.else.378, %cond.end
  %380 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %qp383 = getelementptr inbounds %struct.Slice, %struct.Slice* %380, i32 0, i32 1
  %381 = load i32, i32* %qp383, align 4
  %382 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp384 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %382, i32 0, i32 2
  store i32 %381, i32* %qp384, align 4
  %383 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp385 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %383, i32 0, i32 2
  %384 = load i32, i32* %qp385, align 4
  %385 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp386 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %385, i32 0, i32 35
  %386 = load i32, i32* %prev_qp386, align 4
  %sub387 = sub nsw i32 %384, %386
  %387 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp388 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %387, i32 0, i32 1
  store i32 %sub387, i32* %delta_qp388, align 4
  %388 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp389 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %388, i32 0, i32 1
  %389 = load i32, i32* %delta_qp389, align 4
  %390 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB390 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %390, i32 0, i32 134
  %391 = load i32, i32* %bot_MB390, align 4
  %idxprom391 = sext i32 %391 to i64
  %392 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field392 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %392, i32 0, i32 19
  %393 = load i32, i32* %mb_field392, align 4
  %idxprom393 = sext i32 %393 to i64
  %arrayidx394 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @delta_qp_mbaff, i32 0, i64 %idxprom393
  %arrayidx395 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx394, i32 0, i64 %idxprom391
  store i32 %389, i32* %arrayidx395, align 4
  %394 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp396 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %394, i32 0, i32 2
  %395 = load i32, i32* %qp396, align 4
  %396 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB397 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %396, i32 0, i32 134
  %397 = load i32, i32* %bot_MB397, align 4
  %idxprom398 = sext i32 %397 to i64
  %398 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field399 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %398, i32 0, i32 19
  %399 = load i32, i32* %mb_field399, align 4
  %idxprom400 = sext i32 %399 to i64
  %arrayidx401 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @qp_mbaff, i32 0, i64 %idxprom400
  %arrayidx402 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx401, i32 0, i64 %idxprom398
  store i32 %395, i32* %arrayidx402, align 4
  br label %if.end.403

if.end.403:                                       ; preds = %if.end.382, %if.end.355
  %400 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp404 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %400, i32 0, i32 9
  %401 = load i32, i32* %qp404, align 4
  %402 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %402, i32 0, i32 144
  %403 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %add405 = add nsw i32 %401, %403
  %404 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp_scaled = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %404, i32 0, i32 11
  store i32 %add405, i32* %qp_scaled, align 4
  %405 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @set_chroma_qp(%struct.macroblock* %405)
  %406 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %406, i32 0, i32 26
  %407 = load i32, i32* %deblocking_filter_control_present_flag, align 4
  %tobool406 = icmp ne i32 %407, 0
  br i1 %tobool406, label %if.then.407, label %if.else.411

if.then.407:                                      ; preds = %if.end.403
  %408 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFDisableIdc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %408, i32 0, i32 84
  %409 = load i32, i32* %LFDisableIdc, align 4
  %410 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %LFDisableIdc408 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %410, i32 0, i32 40
  store i32 %409, i32* %LFDisableIdc408, align 4
  %411 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %411, i32 0, i32 85
  %412 = load i32, i32* %LFAlphaC0Offset, align 4
  %413 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %LFAlphaC0Offset409 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %413, i32 0, i32 41
  store i32 %412, i32* %LFAlphaC0Offset409, align 4
  %414 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFBetaOffset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %414, i32 0, i32 86
  %415 = load i32, i32* %LFBetaOffset, align 4
  %416 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %LFBetaOffset410 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %416, i32 0, i32 42
  store i32 %415, i32* %LFBetaOffset410, align 4
  br label %if.end.415

if.else.411:                                      ; preds = %if.end.403
  %417 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %LFDisableIdc412 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %417, i32 0, i32 40
  store i32 0, i32* %LFDisableIdc412, align 4
  %418 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %LFAlphaC0Offset413 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %418, i32 0, i32 41
  store i32 0, i32* %LFAlphaC0Offset413, align 4
  %419 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %LFBetaOffset414 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %419, i32 0, i32 42
  store i32 0, i32* %LFBetaOffset414, align 4
  br label %if.end.415

if.end.415:                                       ; preds = %if.else.411, %if.then.407
  call void @CheckAvailabilityOfNeighbors()
  %420 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode416 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %420, i32 0, i32 74
  %421 = load i32, i32* %symbol_mode416, align 4
  %cmp417 = icmp eq i32 %421, 1
  br i1 %cmp417, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %if.end.415
  call void @CheckAvailabilityOfNeighborsCABAC()
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.419, %if.end.415
  store i32 0, i32* %l, align 4
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.463, %if.end.420
  %422 = load i32, i32* %l, align 4
  %cmp422 = icmp slt i32 %422, 2
  br i1 %cmp422, label %for.body.424, label %for.end.465

for.body.424:                                     ; preds = %for.cond.421
  %423 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %423, i32 0, i32 38
  %424 = load i32, i32* %block_y, align 4
  store i32 %424, i32* %j, align 4
  br label %for.cond.425

for.cond.425:                                     ; preds = %for.inc.460, %for.body.424
  %425 = load i32, i32* %j, align 4
  %426 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y426 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %426, i32 0, i32 38
  %427 = load i32, i32* %block_y426, align 4
  %add427 = add nsw i32 %427, 4
  %cmp428 = icmp slt i32 %425, %add427
  br i1 %cmp428, label %for.body.430, label %for.end.462

for.body.430:                                     ; preds = %for.cond.425
  %428 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %428, i32 0, i32 37
  %429 = load i32, i32* %block_x, align 4
  %idxprom431 = sext i32 %429 to i64
  %430 = load i32, i32* %j, align 4
  %idxprom432 = sext i32 %430 to i64
  %431 = load i32, i32* %l, align 4
  %idxprom433 = sext i32 %431 to i64
  %432 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %432, i32 0, i32 35
  %433 = load i8***, i8**** %ref_idx, align 8
  %arrayidx434 = getelementptr inbounds i8**, i8*** %433, i64 %idxprom433
  %434 = load i8**, i8*** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds i8*, i8** %434, i64 %idxprom432
  %435 = load i8*, i8** %arrayidx435, align 8
  %arrayidx436 = getelementptr inbounds i8, i8* %435, i64 %idxprom431
  call void @llvm.memset.p0i8.i64(i8* %arrayidx436, i8 -1, i64 4, i32 1, i1 false)
  %436 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x437 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %436, i32 0, i32 37
  %437 = load i32, i32* %block_x437, align 4
  %idxprom438 = sext i32 %437 to i64
  %438 = load i32, i32* %j, align 4
  %idxprom439 = sext i32 %438 to i64
  %439 = load i32, i32* %l, align 4
  %idxprom440 = sext i32 %439 to i64
  %440 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %440, i32 0, i32 38
  %441 = load i16****, i16***** %mv, align 8
  %arrayidx441 = getelementptr inbounds i16***, i16**** %441, i64 %idxprom440
  %442 = load i16***, i16**** %arrayidx441, align 8
  %arrayidx442 = getelementptr inbounds i16**, i16*** %442, i64 %idxprom439
  %443 = load i16**, i16*** %arrayidx442, align 8
  %arrayidx443 = getelementptr inbounds i16*, i16** %443, i64 %idxprom438
  %444 = load i16*, i16** %arrayidx443, align 8
  %445 = bitcast i16* %444 to i8*
  call void @llvm.memset.p0i8.i64(i8* %445, i8 0, i64 16, i32 2, i1 false)
  %446 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x444 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %446, i32 0, i32 37
  %447 = load i32, i32* %block_x444, align 4
  store i32 %447, i32* %i, align 4
  br label %for.cond.445

for.cond.445:                                     ; preds = %for.inc.457, %for.body.430
  %448 = load i32, i32* %i, align 4
  %449 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x446 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %449, i32 0, i32 37
  %450 = load i32, i32* %block_x446, align 4
  %add447 = add nsw i32 %450, 4
  %cmp448 = icmp slt i32 %448, %add447
  br i1 %cmp448, label %for.body.450, label %for.end.459

for.body.450:                                     ; preds = %for.cond.445
  %451 = load i32, i32* %i, align 4
  %idxprom451 = sext i32 %451 to i64
  %452 = load i32, i32* %j, align 4
  %idxprom452 = sext i32 %452 to i64
  %453 = load i32, i32* %l, align 4
  %idxprom453 = sext i32 %453 to i64
  %454 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_id = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %454, i32 0, i32 36
  %455 = load i64***, i64**** %ref_pic_id, align 8
  %arrayidx454 = getelementptr inbounds i64**, i64*** %455, i64 %idxprom453
  %456 = load i64**, i64*** %arrayidx454, align 8
  %arrayidx455 = getelementptr inbounds i64*, i64** %456, i64 %idxprom452
  %457 = load i64*, i64** %arrayidx455, align 8
  %arrayidx456 = getelementptr inbounds i64, i64* %457, i64 %idxprom451
  store i64 -1, i64* %arrayidx456, align 8
  br label %for.inc.457

for.inc.457:                                      ; preds = %for.body.450
  %458 = load i32, i32* %i, align 4
  %inc458 = add nsw i32 %458, 1
  store i32 %inc458, i32* %i, align 4
  br label %for.cond.445

for.end.459:                                      ; preds = %for.cond.445
  br label %for.inc.460

for.inc.460:                                      ; preds = %for.end.459
  %459 = load i32, i32* %j, align 4
  %inc461 = add nsw i32 %459, 1
  store i32 %inc461, i32* %j, align 4
  br label %for.cond.425

for.end.462:                                      ; preds = %for.cond.425
  br label %for.inc.463

for.inc.463:                                      ; preds = %for.end.462
  %460 = load i32, i32* %l, align 4
  %inc464 = add nsw i32 %460, 1
  store i32 %inc464, i32* %l, align 4
  br label %for.cond.421

for.end.465:                                      ; preds = %for.cond.421
  %461 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %461, i32 0, i32 8
  store i32 0, i32* %mb_type, align 4
  %462 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_blk = getelementptr inbounds %struct.macroblock, %struct.macroblock* %462, i32 0, i32 13
  store i64 0, i64* %cbp_blk, align 8
  %463 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %463, i32 0, i32 12
  store i32 0, i32* %cbp, align 4
  %464 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_bits = getelementptr inbounds %struct.macroblock, %struct.macroblock* %464, i32 0, i32 16
  store i64 0, i64* %cbp_bits, align 8
  %465 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %465, i32 0, i32 17
  store i32 0, i32* %c_ipred_mode, align 4
  %466 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mvd = getelementptr inbounds %struct.macroblock, %struct.macroblock* %466, i32 0, i32 9
  %467 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd to i8*
  call void @llvm.memset.p0i8.i64(i8* %467, i8 0, i64 256, i32 4, i1 false)
  %468 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes = getelementptr inbounds %struct.macroblock, %struct.macroblock* %468, i32 0, i32 10
  %469 = bitcast [16 x i8]* %intra_pred_modes to i8*
  call void @llvm.memset.p0i8.i64(i8* %469, i8 2, i64 16, i32 4, i1 false)
  %470 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes8x8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %470, i32 0, i32 11
  %471 = bitcast [16 x i8]* %intra_pred_modes8x8 to i8*
  call void @llvm.memset.p0i8.i64(i8* %471, i8 2, i64 16, i32 4, i1 false)
  %472 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %472, i32 0, i32 23
  %473 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool466 = icmp ne i32 %473, 0
  br i1 %tobool466, label %if.then.467, label %if.end.471

if.then.467:                                      ; preds = %for.end.465
  %474 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr468 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %474, i32 0, i32 3
  %475 = load i32, i32* %current_mb_nr468, align 4
  %idxprom469 = sext i32 %475 to i64
  %476 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %476, i32 0, i32 63
  %477 = load i32*, i32** %intra_block, align 8
  %arrayidx470 = getelementptr inbounds i32, i32* %477, i64 %idxprom469
  store i32 1, i32* %arrayidx470, align 4
  br label %if.end.471

if.end.471:                                       ; preds = %if.then.467, %for.end.465
  %478 = load i32, i32* %prev_mb, align 4
  %cmp472 = icmp slt i32 %478, 0
  br i1 %cmp472, label %if.then.474, label %if.else.476

if.then.474:                                      ; preds = %if.end.471
  %479 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %479, i32 0, i32 5
  %arrayidx475 = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i64 0
  store i32 0, i32* %arrayidx475, align 4
  br label %if.end.488

if.else.476:                                      ; preds = %if.end.471
  %480 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %slice_nr477 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %480, i32 0, i32 0
  %481 = load i32, i32* %slice_nr477, align 4
  %482 = load i32, i32* %prev_mb, align 4
  %idxprom478 = sext i32 %482 to i64
  %483 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data479 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %483, i32 0, i32 61
  %484 = load %struct.macroblock*, %struct.macroblock** %mb_data479, align 8
  %arrayidx480 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %484, i64 %idxprom478
  %slice_nr481 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx480, i32 0, i32 0
  %485 = load i32, i32* %slice_nr481, align 4
  %cmp482 = icmp eq i32 %481, %485
  br i1 %cmp482, label %if.then.484, label %if.end.487

if.then.484:                                      ; preds = %if.else.476
  %486 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter485 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %486, i32 0, i32 5
  %arrayidx486 = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter485, i32 0, i64 0
  store i32 0, i32* %arrayidx486, align 4
  br label %if.end.487

if.end.487:                                       ; preds = %if.then.484, %if.else.476
  br label %if.end.488

if.end.488:                                       ; preds = %if.end.487, %if.then.474
  %487 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter489 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %487, i32 0, i32 5
  %arrayidx490 = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter489, i32 0, i64 2
  store i32 0, i32* %arrayidx490, align 4
  %488 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter491 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %488, i32 0, i32 5
  %arrayidx492 = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter491, i32 0, i64 5
  store i32 0, i32* %arrayidx492, align 4
  %489 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter493 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %489, i32 0, i32 5
  %arrayidx494 = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter493, i32 0, i64 3
  store i32 0, i32* %arrayidx494, align 4
  %490 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter495 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %490, i32 0, i32 5
  %arrayidx496 = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter495, i32 0, i64 4
  store i32 0, i32* %arrayidx496, align 4
  %491 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter497 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %491, i32 0, i32 5
  %arrayidx498 = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter497, i32 0, i64 7
  store i32 0, i32* %arrayidx498, align 4
  %492 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter499 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %492, i32 0, i32 5
  %arrayidx500 = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter499, i32 0, i64 6
  store i32 0, i32* %arrayidx500, align 4
  %493 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %493, i32 0, i32 169
  %494 = load i32, i32* %SearchMode, align 4
  %cmp501 = icmp eq i32 %494, 0
  br i1 %cmp501, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %if.end.488
  call void @ResetFastFullIntegerSearch()
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.503, %if.end.488
  ret void
}

declare i32 @FmoGetPreviousMBNr(i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @updateRCModel(%struct.rc_quadratic*) #1

declare void @CheckAvailabilityOfNeighbors() #1

declare void @CheckAvailabilityOfNeighborsCABAC() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @ResetFastFullIntegerSearch() #1

; Function Attrs: nounwind uwtable
define void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock) #0 {
entry:
  %end_of_slice.addr = alloca i32*, align 8
  %recode_macroblock.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %partMap = alloca i32*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %rlc_bits = alloca i32, align 4
  %use_bitstream_backing = alloca i32, align 4
  %new_slice = alloca i32, align 4
  store i32* %end_of_slice, i32** %end_of_slice.addr, align 8
  store i32* %recode_macroblock, i32** %recode_macroblock.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 60
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 61
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 76
  %7 = load i32, i32* %partition_mode, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom1
  %8 = load i32*, i32** %arrayidx2, align 8
  store i32* %8, i32** %partMap, align 8
  store i32 0, i32* %rlc_bits, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 21
  %10 = load i32, i32* %slice_mode, align 4
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_mode3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 21
  %12 = load i32, i32* %slice_mode3, align 4
  %cmp4 = icmp eq i32 %12, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %13 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %13 to i32
  store i32 %lor.ext, i32* %use_bitstream_backing, align 4
  store i32 0, i32* %new_slice, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 3
  %15 = load i32, i32* %current_mb_nr5, align 4
  %cmp6 = icmp eq i32 %15, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 3
  %17 = load i32, i32* %current_mb_nr7, align 4
  %call = call i32 @FmoGetPreviousMBNr(i32 %17)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %lor.end
  store i32 1, i32* %new_slice, align 4
  br label %if.end.16

if.else:                                          ; preds = %lor.lhs.false
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 3
  %19 = load i32, i32* %current_mb_nr9, align 4
  %call10 = call i32 @FmoGetPreviousMBNr(i32 %19)
  %idxprom11 = sext i32 %call10 to i64
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 61
  %21 = load %struct.macroblock*, %struct.macroblock** %mb_data12, align 8
  %arrayidx13 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i64 %idxprom11
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx13, i32 0, i32 0
  %22 = load i32, i32* %slice_nr, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 4
  %24 = load i32, i32* %current_slice_nr, align 4
  %cmp14 = icmp ne i32 %22, %24
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  store i32 1, i32* %new_slice, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  %25 = load i32*, i32** %recode_macroblock.addr, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_mode17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %26, i32 0, i32 21
  %27 = load i32, i32* %slice_mode17, align 4
  switch i32 %27, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.27
    i32 2, label %sw.bb.40
    i32 3, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %if.end.16
  %28 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %num_mb = getelementptr inbounds %struct.Slice, %struct.Slice* %28, i32 0, i32 5
  %29 = load i32, i32* %num_mb, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %num_mb, align 4
  %30 = load i32*, i32** %recode_macroblock.addr, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %num_mb18 = getelementptr inbounds %struct.Slice, %struct.Slice* %31, i32 0, i32 5
  %32 = load i32, i32* %num_mb18, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 119
  %34 = load i32, i32* %PicSizeInMbs, align 4
  %cmp19 = icmp eq i32 %32, %34
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.bb
  %35 = load i32*, i32** %end_of_slice.addr, align 8
  store i32 1, i32* %35, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %sw.bb
  %36 = load i32*, i32** %end_of_slice.addr, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 3
  %39 = load i32, i32* %current_mb_nr22, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 3
  %41 = load i32, i32* %current_mb_nr23, align 4
  %call24 = call i32 @FmoMB2SliceGroup(i32 %41)
  %call25 = call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call24)
  %cmp26 = icmp eq i32 %39, %call25
  %conv = zext i1 %cmp26 to i32
  %or = or i32 %37, %conv
  %42 = load i32*, i32** %end_of_slice.addr, align 8
  store i32 %or, i32* %42, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.16
  %43 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %num_mb28 = getelementptr inbounds %struct.Slice, %struct.Slice* %43, i32 0, i32 5
  %44 = load i32, i32* %num_mb28, align 4
  %inc29 = add nsw i32 %44, 1
  store i32 %inc29, i32* %num_mb28, align 4
  %45 = load i32*, i32** %recode_macroblock.addr, align 8
  store i32 0, i32* %45, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 3
  %47 = load i32, i32* %current_mb_nr30, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 3
  %49 = load i32, i32* %current_mb_nr31, align 4
  %call32 = call i32 @FmoMB2SliceGroup(i32 %49)
  %call33 = call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call32)
  %cmp34 = icmp eq i32 %47, %call33
  %conv35 = zext i1 %cmp34 to i32
  %50 = load i32*, i32** %end_of_slice.addr, align 8
  store i32 %conv35, i32* %50, align 4
  %51 = load i32*, i32** %end_of_slice.addr, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %num_mb36 = getelementptr inbounds %struct.Slice, %struct.Slice* %53, i32 0, i32 5
  %54 = load i32, i32* %num_mb36, align 4
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_argument = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 22
  %56 = load i32, i32* %slice_argument, align 4
  %cmp37 = icmp sge i32 %54, %56
  %conv38 = zext i1 %cmp37 to i32
  %or39 = or i32 %52, %conv38
  %57 = load i32*, i32** %end_of_slice.addr, align 8
  store i32 %or39, i32* %57, align 4
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.16
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 33
  %59 = load i32, i32* %cod_counter, align 4
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %sw.bb.40
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 33
  %61 = load i32, i32* %cod_counter42, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %61, i32* %value1, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type, align 4
  %type43 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  %62 = load i32, i32* %type43, align 4
  %idxprom44 = sext i32 %62 to i64
  %63 = load i32*, i32** %partMap, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %63, i64 %idxprom44
  %64 = load i32, i32* %arrayidx45, align 4
  %idxprom46 = sext i32 %64 to i64
  %65 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %65, i32 0, i32 6
  %66 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx47 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %66, i64 %idxprom46
  store %struct.datapartition* %arrayidx47, %struct.datapartition** %dataPart, align 8
  %67 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeSE_UVLC(%struct.syntaxelement* %se, %struct.datapartition* %67)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %68 = load i32, i32* %len, align 4
  store i32 %68, i32* %rlc_bits, align 4
  %69 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %69, i32 0, i32 0
  %70 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %70, %struct.Bitstream** %currStream, align 8
  %71 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %71, i32 0, i32 1
  %72 = load i32, i32* %bits_to_go, align 4
  %73 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go_skip = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %73, i32 0, i32 8
  store i32 %72, i32* %bits_to_go_skip, align 4
  %74 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %74, i32 0, i32 0
  %75 = load i32, i32* %byte_pos, align 4
  %76 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos_skip = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %76, i32 0, i32 7
  store i32 %75, i32* %byte_pos_skip, align 4
  %77 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %77, i32 0, i32 2
  %78 = load i8, i8* %byte_buf, align 1
  %79 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf_skip = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %79, i32 0, i32 6
  store i8 %78, i8* %byte_buf_skip, align 1
  %80 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %stored_bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %80, i32 0, i32 4
  %81 = load i32, i32* %stored_bits_to_go, align 4
  %82 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go48 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %82, i32 0, i32 1
  store i32 %81, i32* %bits_to_go48, align 4
  %83 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %stored_byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %83, i32 0, i32 3
  %84 = load i32, i32* %stored_byte_pos, align 4
  %85 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos49 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %85, i32 0, i32 0
  store i32 %84, i32* %byte_pos49, align 4
  %86 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %stored_byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %86, i32 0, i32 5
  %87 = load i8, i8* %stored_byte_buf, align 1
  %88 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf50 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %88, i32 0, i32 2
  store i8 %87, i8* %byte_buf50, align 1
  store i32 1, i32* @terminate_macroblock.skip, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.41, %sw.bb.40
  %89 = load i32, i32* %new_slice, align 4
  %tobool52 = icmp ne i32 %89, 0
  br i1 %tobool52, label %if.end.63, label %if.then.53

if.then.53:                                       ; preds = %if.end.51
  %90 = load i32, i32* %rlc_bits, align 4
  %call54 = call i32 @slice_too_big(i32 %90)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.then.53
  %91 = load i32*, i32** %recode_macroblock.addr, align 8
  store i32 1, i32* %91, align 4
  %92 = load i32*, i32** %end_of_slice.addr, align 8
  store i32 1, i32* %92, align 4
  br label %if.end.62

if.else.57:                                       ; preds = %if.then.53
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 33
  %94 = load i32, i32* %cod_counter58, align 4
  %tobool59 = icmp ne i32 %94, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.else.57
  store i32 0, i32* @terminate_macroblock.skip, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.else.57
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.56
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.51
  %95 = load i32*, i32** %recode_macroblock.addr, align 8
  %96 = load i32, i32* %95, align 4
  %cmp64 = icmp eq i32 %96, 0
  br i1 %cmp64, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %if.end.63
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 3
  %98 = load i32, i32* %current_mb_nr66, align 4
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr67 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 3
  %100 = load i32, i32* %current_mb_nr67, align 4
  %call68 = call i32 @FmoMB2SliceGroup(i32 %100)
  %call69 = call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call68)
  %cmp70 = icmp eq i32 %98, %call69
  br i1 %cmp70, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %land.lhs.true
  %101 = load i32*, i32** %end_of_slice.addr, align 8
  store i32 1, i32* %101, align 4
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 33
  %103 = load i32, i32* %cod_counter73, align 4
  %tobool74 = icmp ne i32 %103, 0
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %if.then.72
  store i32 0, i32* @terminate_macroblock.skip, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.then.72
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.lhs.true, %if.end.63
  %104 = load i32, i32* %new_slice, align 4
  %tobool78 = icmp ne i32 %104, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.87

land.lhs.true.79:                                 ; preds = %if.end.77
  %105 = load i32, i32* %rlc_bits, align 4
  %call80 = call i32 @slice_too_big(i32 %105)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %land.lhs.true.79
  %106 = load i32*, i32** %end_of_slice.addr, align 8
  store i32 1, i32* %106, align 4
  %107 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter83 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %107, i32 0, i32 33
  %108 = load i32, i32* %cod_counter83, align 4
  %tobool84 = icmp ne i32 %108, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.then.82
  store i32 0, i32* @terminate_macroblock.skip, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.then.82
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %land.lhs.true.79, %if.end.77
  %109 = load i32*, i32** %recode_macroblock.addr, align 8
  %110 = load i32, i32* %109, align 4
  %tobool88 = icmp ne i32 %110, 0
  br i1 %tobool88, label %if.end.92, label %if.then.89

if.then.89:                                       ; preds = %if.end.87
  %111 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %num_mb90 = getelementptr inbounds %struct.Slice, %struct.Slice* %111, i32 0, i32 5
  %112 = load i32, i32* %num_mb90, align 4
  %inc91 = add nsw i32 %112, 1
  store i32 %inc91, i32* %num_mb90, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %if.end.87
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.16
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr94 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 3
  %114 = load i32, i32* %current_mb_nr94, align 4
  %cmp95 = icmp sgt i32 %114, 0
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.104

land.lhs.true.97:                                 ; preds = %sw.bb.93
  %115 = load i32, i32* %new_slice, align 4
  %tobool98 = icmp ne i32 %115, 0
  br i1 %tobool98, label %if.end.104, label %if.then.99

if.then.99:                                       ; preds = %land.lhs.true.97
  %116 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %slice_too_big = getelementptr inbounds %struct.Slice, %struct.Slice* %116, i32 0, i32 17
  %117 = load i32 (i32)*, i32 (i32)** %slice_too_big, align 8
  %118 = load i32, i32* %rlc_bits, align 4
  %call100 = call i32 %117(i32 %118)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.99
  %119 = load i32*, i32** %recode_macroblock.addr, align 8
  store i32 1, i32* %119, align 4
  %120 = load i32*, i32** %end_of_slice.addr, align 8
  store i32 1, i32* %120, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.then.99
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %land.lhs.true.97, %sw.bb.93
  %121 = load i32*, i32** %recode_macroblock.addr, align 8
  %122 = load i32, i32* %121, align 4
  %cmp105 = icmp eq i32 %122, 0
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.115

land.lhs.true.107:                                ; preds = %if.end.104
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr108 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 3
  %124 = load i32, i32* %current_mb_nr108, align 4
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 3
  %126 = load i32, i32* %current_mb_nr109, align 4
  %call110 = call i32 @FmoMB2SliceGroup(i32 %126)
  %call111 = call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call110)
  %cmp112 = icmp eq i32 %124, %call111
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %land.lhs.true.107
  %127 = load i32*, i32** %end_of_slice.addr, align 8
  store i32 1, i32* %127, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %land.lhs.true.107, %if.end.104
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.16
  %128 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_mode116 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %128, i32 0, i32 21
  %129 = load i32, i32* %slice_mode116, align 4
  %call117 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 %129) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 600)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.115, %if.end.92, %sw.bb.27, %if.end.21
  %130 = load i32*, i32** %recode_macroblock.addr, align 8
  %131 = load i32, i32* %130, align 4
  %cmp118 = icmp eq i32 %131, 1
  br i1 %cmp118, label %if.then.120, label %if.end.138

if.then.120:                                      ; preds = %sw.epilog
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.120
  %132 = load i32, i32* %i, align 4
  %133 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %133, i32 0, i32 4
  %134 = load i32, i32* %max_part_nr, align 4
  %cmp121 = icmp slt i32 %132, %134
  br i1 %cmp121, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %135 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %135 to i64
  %136 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr124 = getelementptr inbounds %struct.Slice, %struct.Slice* %136, i32 0, i32 6
  %137 = load %struct.datapartition*, %struct.datapartition** %partArr124, align 8
  %arrayidx125 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %137, i64 %idxprom123
  store %struct.datapartition* %arrayidx125, %struct.datapartition** %dataPart, align 8
  %138 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream126 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %138, i32 0, i32 0
  %139 = load %struct.Bitstream*, %struct.Bitstream** %bitstream126, align 8
  store %struct.Bitstream* %139, %struct.Bitstream** %currStream, align 8
  %140 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %stored_bits_to_go127 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %140, i32 0, i32 4
  %141 = load i32, i32* %stored_bits_to_go127, align 4
  %142 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go128 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %142, i32 0, i32 1
  store i32 %141, i32* %bits_to_go128, align 4
  %143 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %stored_byte_pos129 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %143, i32 0, i32 3
  %144 = load i32, i32* %stored_byte_pos129, align 4
  %145 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos130 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %145, i32 0, i32 0
  store i32 %144, i32* %byte_pos130, align 4
  %146 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %stored_byte_buf131 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %146, i32 0, i32 5
  %147 = load i8, i8* %stored_byte_buf131, align 1
  %148 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf132 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %148, i32 0, i32 2
  store i8 %147, i8* %byte_buf132, align 1
  %149 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %stored_bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %149, i32 0, i32 7
  %150 = load i32, i32* %stored_bit_slice, align 4
  %151 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %151, i32 0, i32 6
  store i32 %150, i32* %bit_slice, align 4
  %152 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %152, i32 0, i32 74
  %153 = load i32, i32* %symbol_mode, align 4
  %cmp133 = icmp eq i32 %153, 1
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %for.body
  %154 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %154, i32 0, i32 1
  %155 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %ee_recode = getelementptr inbounds %struct.datapartition, %struct.datapartition* %155, i32 0, i32 2
  %156 = bitcast %struct.EncodingEnvironment* %ee_cabac to i8*
  %157 = bitcast %struct.EncodingEnvironment* %ee_recode to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %157, i64 48, i32 8, i1 false)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.136
  %158 = load i32, i32* %i, align 4
  %inc137 = add nsw i32 %158, 1
  store i32 %inc137, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.138

if.end.138:                                       ; preds = %for.end, %sw.epilog
  %159 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode139 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %159, i32 0, i32 74
  %160 = load i32, i32* %symbol_mode139, align 4
  %cmp140 = icmp eq i32 %160, 0
  br i1 %cmp140, label %if.then.142, label %if.end.200

if.then.142:                                      ; preds = %if.end.138
  %161 = load i32*, i32** %partMap, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %161, i64 2
  %162 = load i32, i32* %arrayidx143, align 4
  %idxprom144 = sext i32 %162 to i64
  %163 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr145 = getelementptr inbounds %struct.Slice, %struct.Slice* %163, i32 0, i32 6
  %164 = load %struct.datapartition*, %struct.datapartition** %partArr145, align 8
  %arrayidx146 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %164, i64 %idxprom144
  store %struct.datapartition* %arrayidx146, %struct.datapartition** %dataPart, align 8
  %165 = load i32*, i32** %end_of_slice.addr, align 8
  %166 = load i32, i32* %165, align 4
  %cmp147 = icmp eq i32 %166, 1
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.181

land.lhs.true.149:                                ; preds = %if.then.142
  %167 = load i32, i32* @terminate_macroblock.skip, align 4
  %cmp150 = icmp eq i32 %167, 1
  br i1 %cmp150, label %if.then.152, label %if.end.181

if.then.152:                                      ; preds = %land.lhs.true.149
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 33
  %169 = load i32, i32* %cod_counter153, align 4
  %tobool154 = icmp ne i32 %169, 0
  br i1 %tobool154, label %land.lhs.true.155, label %if.else.171

land.lhs.true.155:                                ; preds = %if.then.152
  %170 = load i32*, i32** %recode_macroblock.addr, align 8
  %171 = load i32, i32* %170, align 4
  %cmp156 = icmp eq i32 %171, 1
  br i1 %cmp156, label %if.then.158, label %if.else.171

if.then.158:                                      ; preds = %land.lhs.true.155
  %172 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter159 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %172, i32 0, i32 33
  %173 = load i32, i32* %cod_counter159, align 4
  %dec = add nsw i32 %173, -1
  store i32 %dec, i32* %cod_counter159, align 4
  %174 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter160 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %174, i32 0, i32 33
  %175 = load i32, i32* %cod_counter160, align 4
  %tobool161 = icmp ne i32 %175, 0
  br i1 %tobool161, label %if.then.162, label %if.end.170

if.then.162:                                      ; preds = %if.then.158
  %176 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter163 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %176, i32 0, i32 33
  %177 = load i32, i32* %cod_counter163, align 4
  %value1164 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %177, i32* %value1164, align 4
  %value2165 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2165, align 4
  %type166 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type166, align 4
  %178 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeSE_UVLC(%struct.syntaxelement* %se, %struct.datapartition* %178)
  %len167 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %179 = load i32, i32* %len167, align 4
  store i32 %179, i32* %rlc_bits, align 4
  %180 = load i32, i32* %rlc_bits, align 4
  %181 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %181, i32 0, i32 5
  %arrayidx168 = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i64 2
  %182 = load i32, i32* %arrayidx168, align 4
  %add = add nsw i32 %182, %180
  store i32 %add, i32* %arrayidx168, align 4
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter169 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 33
  store i32 0, i32* %cod_counter169, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.162, %if.then.158
  br label %if.end.180

if.else.171:                                      ; preds = %land.lhs.true.155, %if.then.152
  %184 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream172 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %184, i32 0, i32 0
  %185 = load %struct.Bitstream*, %struct.Bitstream** %bitstream172, align 8
  store %struct.Bitstream* %185, %struct.Bitstream** %currStream, align 8
  %186 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go_skip173 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %186, i32 0, i32 8
  %187 = load i32, i32* %bits_to_go_skip173, align 4
  %188 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go174 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %188, i32 0, i32 1
  store i32 %187, i32* %bits_to_go174, align 4
  %189 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos_skip175 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %189, i32 0, i32 7
  %190 = load i32, i32* %byte_pos_skip175, align 4
  %191 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos176 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %191, i32 0, i32 0
  store i32 %190, i32* %byte_pos176, align 4
  %192 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf_skip177 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %192, i32 0, i32 6
  %193 = load i8, i8* %byte_buf_skip177, align 1
  %194 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf178 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %194, i32 0, i32 2
  store i8 %193, i8* %byte_buf178, align 1
  %195 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter179 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %195, i32 0, i32 33
  store i32 0, i32* %cod_counter179, align 4
  store i32 0, i32* @terminate_macroblock.skip, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.171, %if.end.170
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %land.lhs.true.149, %if.then.142
  %196 = load i32*, i32** %end_of_slice.addr, align 8
  %197 = load i32, i32* %196, align 4
  %cmp182 = icmp eq i32 %197, 1
  br i1 %cmp182, label %land.lhs.true.184, label %if.end.199

land.lhs.true.184:                                ; preds = %if.end.181
  %198 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter185 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %198, i32 0, i32 33
  %199 = load i32, i32* %cod_counter185, align 4
  %tobool186 = icmp ne i32 %199, 0
  br i1 %tobool186, label %land.lhs.true.187, label %if.end.199

land.lhs.true.187:                                ; preds = %land.lhs.true.184
  %200 = load i32, i32* %use_bitstream_backing, align 4
  %tobool188 = icmp ne i32 %200, 0
  br i1 %tobool188, label %if.end.199, label %if.then.189

if.then.189:                                      ; preds = %land.lhs.true.187
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter190 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 33
  %202 = load i32, i32* %cod_counter190, align 4
  %value1191 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %202, i32* %value1191, align 4
  %value2192 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2192, align 4
  %type193 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type193, align 4
  %203 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeSE_UVLC(%struct.syntaxelement* %se, %struct.datapartition* %203)
  %len194 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %204 = load i32, i32* %len194, align 4
  store i32 %204, i32* %rlc_bits, align 4
  %205 = load i32, i32* %rlc_bits, align 4
  %206 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter195 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %206, i32 0, i32 5
  %arrayidx196 = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter195, i32 0, i64 2
  %207 = load i32, i32* %arrayidx196, align 4
  %add197 = add nsw i32 %207, %205
  store i32 %add197, i32* %arrayidx196, align 4
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter198 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 33
  store i32 0, i32* %cod_counter198, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.189, %land.lhs.true.187, %land.lhs.true.184, %if.end.181
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.138
  ret void
}

declare i32 @FmoGetLastCodedMBOfSliceGroup(i32) #1

declare i32 @FmoMB2SliceGroup(i32) #1

declare void @writeSE_UVLC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: nounwind uwtable
define internal i32 @slice_too_big(i32 %rlc_bits) #0 {
entry:
  %retval = alloca i32, align 4
  %rlc_bits.addr = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %eep = alloca %struct.EncodingEnvironment*, align 8
  %i = alloca i32, align 4
  %size_in_bytes = alloca i32, align 4
  store i32 %rlc_bits, i32* %rlc_bits.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 60
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 74
  %3 = load i32, i32* %symbol_mode, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
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
  store %struct.datapartition* %arrayidx, %struct.datapartition** %dataPart, align 8
  %10 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %10, i32 0, i32 0
  %11 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %11, %struct.Bitstream** %currStream, align 8
  %12 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %12, i32 0, i32 0
  %13 = load i32, i32* %byte_pos, align 4
  store i32 %13, i32* %size_in_bytes, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 1
  %15 = load i32, i32* %bits_to_go, align 4
  %cmp2 = icmp slt i32 %15, 8
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %16 = load i32, i32* %size_in_bytes, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %size_in_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  %17 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go4 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 1
  %18 = load i32, i32* %bits_to_go4, align 4
  %19 = load i32, i32* %rlc_bits.addr, align 4
  %cmp5 = icmp slt i32 %18, %19
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %20 = load i32, i32* %size_in_bytes, align 4
  %inc7 = add nsw i32 %20, 1
  store i32 %inc7, i32* %size_in_bytes, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %21 = load i32, i32* %size_in_bytes, align 4
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_argument = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 22
  %23 = load i32, i32* %slice_argument, align 4
  %cmp9 = icmp sgt i32 %21, %23
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %24 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %24, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %entry
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 74
  %26 = load i32, i32* %symbol_mode14, align 4
  %cmp15 = icmp eq i32 %26, 1
  br i1 %cmp15, label %if.then.16, label %if.end.31

if.then.16:                                       ; preds = %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.28, %if.then.16
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr18 = getelementptr inbounds %struct.Slice, %struct.Slice* %28, i32 0, i32 4
  %29 = load i32, i32* %max_part_nr18, align 4
  %cmp19 = icmp slt i32 %27, %29
  br i1 %cmp19, label %for.body.20, label %for.end.30

for.body.20:                                      ; preds = %for.cond.17
  %30 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr22 = getelementptr inbounds %struct.Slice, %struct.Slice* %31, i32 0, i32 6
  %32 = load %struct.datapartition*, %struct.datapartition** %partArr22, align 8
  %arrayidx23 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %32, i64 %idxprom21
  store %struct.datapartition* %arrayidx23, %struct.datapartition** %dataPart, align 8
  %33 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %33, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep, align 8
  %34 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %34)
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_argument24 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 22
  %36 = load i32, i32* %slice_argument24, align 4
  %mul = mul nsw i32 %36, 8
  %cmp25 = icmp sgt i32 %call, %mul
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body.20
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %for.body.20
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %37 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %37, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.17

for.end.30:                                       ; preds = %for.cond.17
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %if.end.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.26, %if.then.10
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @OneComponentLumaPrediction4x4(i16* %mpred, i32 %pic_pix_x, i32 %pic_pix_y, i16* %mv, i16 signext %ref, %struct.storable_picture** %list) #0 {
entry:
  %mpred.addr = alloca i16*, align 8
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %mv.addr = alloca i16*, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca %struct.storable_picture**, align 8
  %j = alloca i32, align 4
  %ref_line = alloca i16*, align 8
  store i16* %mpred, i16** %mpred.addr, align 8
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i16* %mv, i16** %mv.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store %struct.storable_picture** %list, %struct.storable_picture*** %list.addr, align 8
  %0 = load i16, i16* %ref.addr, align 2
  %idxprom = sext i16 %0 to i64
  %1 = load %struct.storable_picture**, %struct.storable_picture*** %list.addr, align 8
  %arrayidx = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %1, i64 %idxprom
  %2 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 22
  %3 = load i32, i32* %size_x_pad, align 4
  store i32 %3, i32* @width_pad, align 4
  %4 = load i16, i16* %ref.addr, align 2
  %idxprom1 = sext i16 %4 to i64
  %5 = load %struct.storable_picture**, %struct.storable_picture*** %list.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %5, i64 %idxprom1
  %6 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx2, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 23
  %7 = load i32, i32* %size_y_pad, align 4
  store i32 %7, i32* @height_pad, align 4
  %8 = load i16, i16* %ref.addr, align 2
  %idxprom3 = sext i16 %8 to i64
  %9 = load %struct.storable_picture**, %struct.storable_picture*** %list.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %9, i64 %idxprom3
  %10 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx4, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 30
  %11 = load i16****, i16***** %imgY_sub, align 8
  %12 = load i32, i32* %pic_pix_y.addr, align 4
  %13 = load i16*, i16** %mv.addr, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %13, i64 1
  %14 = load i16, i16* %arrayidx5, align 2
  %conv = sext i16 %14 to i32
  %add = add nsw i32 %12, %conv
  %15 = load i32, i32* %pic_pix_x.addr, align 4
  %16 = load i16*, i16** %mv.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %16, i64 0
  %17 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %17 to i32
  %add8 = add nsw i32 %15, %conv7
  %call = call i16* @UMVLine4X(i16**** %11, i32 %add, i32 %add8)
  store i16* %call, i16** %ref_line, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %18, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i16*, i16** %mpred.addr, align 8
  %20 = bitcast i16* %19 to i8*
  %21 = load i16*, i16** %ref_line, align 8
  %22 = bitcast i16* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %22, i64 8, i32 2, i1 false)
  %23 = load i32, i32* @img_padded_size_x, align 4
  %24 = load i16*, i16** %ref_line, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i16, i16* %24, i64 %idx.ext
  store i16* %add.ptr, i16** %ref_line, align 8
  %25 = load i16*, i16** %mpred.addr, align 8
  %add.ptr10 = getelementptr inbounds i16, i16* %25, i64 4
  store i16* %add.ptr10, i16** %mpred.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i16* @UMVLine4X(i16****, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LumaPrediction4x4(i32 %block_x, i32 %block_y, i32 %p_dir, i32 %l0_mode, i32 %l1_mode, i16 signext %l0_ref_idx, i16 signext %l1_ref_idx) #0 {
entry:
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %p_dir.addr = alloca i32, align 4
  %l0_mode.addr = alloca i32, align 4
  %l1_mode.addr = alloca i32, align 4
  %l0_ref_idx.addr = alloca i16, align 2
  %l1_ref_idx.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %block_x4 = alloca i32, align 4
  %block_y4 = alloca i32, align 4
  %pic_opix_x = alloca i32, align 4
  %pic_opix_y = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %l0pred = alloca i16*, align 8
  %l1pred = alloca i16*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %apply_weights = alloca i32, align 4
  %mv_array = alloca i16****, align 8
  %wbp0 = alloca i32, align 4
  %wbp1 = alloca i32, align 4
  %offset = alloca i32, align 4
  %wp_round = alloca i32, align 4
  %weight_denom = alloca i32, align 4
  %wp = alloca i32, align 4
  %offset143 = alloca i32, align 4
  %wp177 = alloca i32, align 4
  %offset182 = alloca i32, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %p_dir, i32* %p_dir.addr, align 4
  store i32 %l0_mode, i32* %l0_mode.addr, align 4
  store i32 %l1_mode, i32* %l1_mode.addr, align 4
  store i16 %l0_ref_idx, i16* %l0_ref_idx.addr, align 2
  store i16 %l1_ref_idx, i16* %l1_ref_idx.addr, align 2
  %0 = load i32, i32* %block_x.addr, align 4
  %add = add nsw i32 %0, 4
  store i32 %add, i32* %block_x4, align 4
  %1 = load i32, i32* %block_y.addr, align 4
  %add1 = add nsw i32 %1, 4
  store i32 %add1, i32* %block_y4, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 43
  %3 = load i32, i32* %opix_x, align 4
  %4 = load i32, i32* %block_x.addr, align 4
  %add2 = add nsw i32 %3, %4
  %shl = shl i32 %add2, 2
  %add3 = add nsw i32 %shl, 80
  store i32 %add3, i32* %pic_opix_x, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 44
  %6 = load i32, i32* %opix_y, align 4
  %7 = load i32, i32* %block_y.addr, align 4
  %add4 = add nsw i32 %6, %7
  %shl5 = shl i32 %add4, 2
  %add6 = add nsw i32 %shl5, 80
  store i32 %add6, i32* %pic_opix_y, align 4
  %8 = load i32, i32* %block_x.addr, align 4
  %shr = ashr i32 %8, 2
  store i32 %shr, i32* %bx, align 4
  %9 = load i32, i32* %block_y.addr, align 4
  %shr7 = ashr i32 %9, 2
  store i32 %shr7, i32* %by, align 4
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @LumaPrediction4x4.l0_pred, i32 0, i32 0), i16** %l0pred, align 8
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @LumaPrediction4x4.l1_pred, i32 0, i32 0), i16** %l1pred, align 8
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 3
  %11 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 61
  %13 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %14 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %14, i32 0, i32 19
  %15 = load i32, i32* %weighted_pred_flag, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 5
  %17 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 5
  %19 = load i32, i32* %type8, align 4
  %cmp9 = icmp eq i32 %19, 3
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %entry
  %20 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %20, i32 0, i32 20
  %21 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool10 = icmp ne i32 %21, 0
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 5
  %23 = load i32, i32* %type11, align 4
  %cmp12 = icmp eq i32 %23, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %24 = phi i1 [ false, %lor.rhs ], [ %cmp12, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %land.lhs.true
  %25 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ %24, %land.end ]
  %lor.ext = zext i1 %25 to i32
  store i32 %lor.ext, i32* %apply_weights, align 4
  %26 = load i32, i32* %bx, align 4
  %idxprom13 = sext i32 %26 to i64
  %27 = load i32, i32* %by, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 80
  %29 = load i16******, i16******* %all_mv, align 8
  %arrayidx15 = getelementptr inbounds i16*****, i16****** %29, i64 %idxprom14
  %30 = load i16*****, i16****** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i16****, i16***** %30, i64 %idxprom13
  %31 = load i16****, i16***** %arrayidx16, align 8
  store i16**** %31, i16***** %mv_array, align 8
  %32 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bi_pred_me = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i32 0, i32 33
  %33 = load i16, i16* %bi_pred_me, align 2
  %conv = sext i16 %33 to i32
  %tobool17 = icmp ne i32 %conv, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %lor.end
  %34 = load i16, i16* %l0_ref_idx.addr, align 2
  %conv19 = sext i16 %34 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true.18
  %35 = load i16, i16* %l1_ref_idx.addr, align 2
  %conv23 = sext i16 %35 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %land.lhs.true.26, label %if.end

land.lhs.true.26:                                 ; preds = %land.lhs.true.22
  %36 = load i32, i32* %p_dir.addr, align 4
  %cmp27 = icmp eq i32 %36, 2
  br i1 %cmp27, label %land.lhs.true.29, label %if.end

land.lhs.true.29:                                 ; preds = %land.lhs.true.26
  %37 = load i32, i32* %l0_mode.addr, align 4
  %cmp30 = icmp eq i32 %37, 1
  br i1 %cmp30, label %land.lhs.true.32, label %if.end

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %38 = load i32, i32* %l1_mode.addr, align 4
  %cmp33 = icmp eq i32 %38, 1
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.32
  %39 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bi_pred_me35 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 33
  %40 = load i16, i16* %bi_pred_me35, align 2
  %conv36 = sext i16 %40 to i32
  %cmp37 = icmp eq i32 %conv36, 1
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %41 = load i32, i32* %bx, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load i32, i32* %by, align 4
  %idxprom40 = sext i32 %42 to i64
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 81
  %44 = load i16******, i16******* %bipred_mv1, align 8
  %arrayidx41 = getelementptr inbounds i16*****, i16****** %44, i64 %idxprom40
  %45 = load i16*****, i16****** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i16****, i16***** %45, i64 %idxprom39
  %46 = load i16****, i16***** %arrayidx42, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %47 = load i32, i32* %bx, align 4
  %idxprom43 = sext i32 %47 to i64
  %48 = load i32, i32* %by, align 4
  %idxprom44 = sext i32 %48 to i64
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 82
  %50 = load i16******, i16******* %bipred_mv2, align 8
  %arrayidx45 = getelementptr inbounds i16*****, i16****** %50, i64 %idxprom44
  %51 = load i16*****, i16****** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16****, i16***** %51, i64 %idxprom43
  %52 = load i16****, i16***** %arrayidx46, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16**** [ %46, %cond.true ], [ %52, %cond.false ]
  store i16**** %cond, i16***** %mv_array, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true.32, %land.lhs.true.29, %land.lhs.true.26, %land.lhs.true.22, %land.lhs.true.18, %lor.end
  %53 = load i32, i32* %p_dir.addr, align 4
  switch i32 %53, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.55
    i32 2, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %if.end
  %54 = load i32, i32* %pic_opix_x, align 4
  %55 = load i32, i32* %pic_opix_y, align 4
  %56 = load i32, i32* %l0_mode.addr, align 4
  %idxprom47 = sext i32 %56 to i64
  %57 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom48 = sext i16 %57 to i64
  %58 = load i16****, i16***** %mv_array, align 8
  %arrayidx49 = getelementptr inbounds i16***, i16**** %58, i64 0
  %59 = load i16***, i16**** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i16**, i16*** %59, i64 %idxprom48
  %60 = load i16**, i16*** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i16*, i16** %60, i64 %idxprom47
  %61 = load i16*, i16** %arrayidx51, align 8
  %62 = load i16, i16* %l0_ref_idx.addr, align 2
  %63 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %63, i32 0, i32 21
  %64 = load i32, i32* %list_offset, align 4
  %add52 = add nsw i32 0, %64
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom53
  %65 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx54, align 8
  call void @OneComponentLumaPrediction4x4(i16* getelementptr inbounds ([16 x i16], [16 x i16]* @LumaPrediction4x4.l0_pred, i32 0, i32 0), i32 %54, i32 %55, i16* %61, i16 signext %62, %struct.storable_picture** %65)
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end
  %66 = load i32, i32* %pic_opix_x, align 4
  %67 = load i32, i32* %pic_opix_y, align 4
  %68 = load i32, i32* %l1_mode.addr, align 4
  %idxprom56 = sext i32 %68 to i64
  %69 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom57 = sext i16 %69 to i64
  %70 = load i16****, i16***** %mv_array, align 8
  %arrayidx58 = getelementptr inbounds i16***, i16**** %70, i64 1
  %71 = load i16***, i16**** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i16**, i16*** %71, i64 %idxprom57
  %72 = load i16**, i16*** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %72, i64 %idxprom56
  %73 = load i16*, i16** %arrayidx60, align 8
  %74 = load i16, i16* %l1_ref_idx.addr, align 2
  %75 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset61 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %75, i32 0, i32 21
  %76 = load i32, i32* %list_offset61, align 4
  %add62 = add nsw i32 1, %76
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom63
  %77 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx64, align 8
  call void @OneComponentLumaPrediction4x4(i16* getelementptr inbounds ([16 x i16], [16 x i16]* @LumaPrediction4x4.l1_pred, i32 0, i32 0), i32 %66, i32 %67, i16* %73, i16 signext %74, %struct.storable_picture** %77)
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end
  %78 = load i32, i32* %pic_opix_x, align 4
  %79 = load i32, i32* %pic_opix_y, align 4
  %80 = load i32, i32* %l0_mode.addr, align 4
  %idxprom66 = sext i32 %80 to i64
  %81 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom67 = sext i16 %81 to i64
  %82 = load i16****, i16***** %mv_array, align 8
  %arrayidx68 = getelementptr inbounds i16***, i16**** %82, i64 0
  %83 = load i16***, i16**** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i16**, i16*** %83, i64 %idxprom67
  %84 = load i16**, i16*** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i16*, i16** %84, i64 %idxprom66
  %85 = load i16*, i16** %arrayidx70, align 8
  %86 = load i16, i16* %l0_ref_idx.addr, align 2
  %87 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset71 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %87, i32 0, i32 21
  %88 = load i32, i32* %list_offset71, align 4
  %add72 = add nsw i32 0, %88
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom73
  %89 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx74, align 8
  call void @OneComponentLumaPrediction4x4(i16* getelementptr inbounds ([16 x i16], [16 x i16]* @LumaPrediction4x4.l0_pred, i32 0, i32 0), i32 %78, i32 %79, i16* %85, i16 signext %86, %struct.storable_picture** %89)
  %90 = load i32, i32* %pic_opix_x, align 4
  %91 = load i32, i32* %pic_opix_y, align 4
  %92 = load i32, i32* %l1_mode.addr, align 4
  %idxprom75 = sext i32 %92 to i64
  %93 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom76 = sext i16 %93 to i64
  %94 = load i16****, i16***** %mv_array, align 8
  %arrayidx77 = getelementptr inbounds i16***, i16**** %94, i64 1
  %95 = load i16***, i16**** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i16**, i16*** %95, i64 %idxprom76
  %96 = load i16**, i16*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i16*, i16** %96, i64 %idxprom75
  %97 = load i16*, i16** %arrayidx79, align 8
  %98 = load i16, i16* %l1_ref_idx.addr, align 2
  %99 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset80 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 21
  %100 = load i32, i32* %list_offset80, align 4
  %add81 = add nsw i32 1, %100
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom82
  %101 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx83, align 8
  call void @OneComponentLumaPrediction4x4(i16* getelementptr inbounds ([16 x i16], [16 x i16]* @LumaPrediction4x4.l1_pred, i32 0, i32 0), i32 %90, i32 %91, i16* %97, i16 signext %98, %struct.storable_picture** %101)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.65, %sw.bb.55, %sw.bb
  %102 = load i32, i32* %apply_weights, align 4
  %tobool84 = icmp ne i32 %102, 0
  br i1 %tobool84, label %if.then.85, label %if.else.217

if.then.85:                                       ; preds = %sw.epilog
  %103 = load i32, i32* %p_dir.addr, align 4
  %cmp86 = icmp eq i32 %103, 2
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %if.then.85
  %104 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom89 = sext i16 %104 to i64
  %105 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom90 = sext i16 %105 to i64
  %106 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx91 = getelementptr inbounds i32***, i32**** %106, i64 0
  %107 = load i32***, i32**** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32**, i32*** %107, i64 %idxprom90
  %108 = load i32**, i32*** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %108, i64 %idxprom89
  %109 = load i32*, i32** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %109, i64 0
  %110 = load i32, i32* %arrayidx94, align 4
  store i32 %110, i32* %wbp0, align 4
  %111 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom95 = sext i16 %111 to i64
  %112 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom96 = sext i16 %112 to i64
  %113 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx97 = getelementptr inbounds i32***, i32**** %113, i64 1
  %114 = load i32***, i32**** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32**, i32*** %114, i64 %idxprom96
  %115 = load i32**, i32*** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %115, i64 %idxprom95
  %116 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %116, i64 0
  %117 = load i32, i32* %arrayidx100, align 4
  store i32 %117, i32* %wbp1, align 4
  %118 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom101 = sext i16 %118 to i64
  %119 = load i32***, i32**** @wp_offset, align 8
  %arrayidx102 = getelementptr inbounds i32**, i32*** %119, i64 0
  %120 = load i32**, i32*** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i32*, i32** %120, i64 %idxprom101
  %121 = load i32*, i32** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %121, i64 0
  %122 = load i32, i32* %arrayidx104, align 4
  %123 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom105 = sext i16 %123 to i64
  %124 = load i32***, i32**** @wp_offset, align 8
  %arrayidx106 = getelementptr inbounds i32**, i32*** %124, i64 1
  %125 = load i32**, i32*** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32*, i32** %125, i64 %idxprom105
  %126 = load i32*, i32** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %126, i64 0
  %127 = load i32, i32* %arrayidx108, align 4
  %add109 = add nsw i32 %122, %127
  %add110 = add nsw i32 %add109, 1
  %shr111 = ashr i32 %add110, 1
  store i32 %shr111, i32* %offset, align 4
  %128 = load i32, i32* @wp_luma_round, align 4
  %mul = mul nsw i32 2, %128
  store i32 %mul, i32* %wp_round, align 4
  %129 = load i32, i32* @luma_log_weight_denom, align 4
  %add112 = add nsw i32 %129, 1
  store i32 %add112, i32* %weight_denom, align 4
  %130 = load i32, i32* %block_y.addr, align 4
  store i32 %130, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.133, %if.then.88
  %131 = load i32, i32* %j, align 4
  %132 = load i32, i32* %block_y4, align 4
  %cmp113 = icmp slt i32 %131, %132
  br i1 %cmp113, label %for.body, label %for.end.135

for.body:                                         ; preds = %for.cond
  %133 = load i32, i32* %block_x.addr, align 4
  store i32 %133, i32* %i, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc, %for.body
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %block_x4, align 4
  %cmp116 = icmp slt i32 %134, %135
  br i1 %cmp116, label %for.body.118, label %for.end

for.body.118:                                     ; preds = %for.cond.115
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 156
  %137 = load i32, i32* %max_imgpel_value, align 4
  %138 = load i32, i32* %wbp0, align 4
  %139 = load i16*, i16** %l0pred, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %139, i32 1
  store i16* %incdec.ptr, i16** %l0pred, align 8
  %140 = load i16, i16* %139, align 2
  %conv119 = zext i16 %140 to i32
  %mul120 = mul nsw i32 %138, %conv119
  %141 = load i32, i32* %wbp1, align 4
  %142 = load i16*, i16** %l1pred, align 8
  %incdec.ptr121 = getelementptr inbounds i16, i16* %142, i32 1
  store i16* %incdec.ptr121, i16** %l1pred, align 8
  %143 = load i16, i16* %142, align 2
  %conv122 = zext i16 %143 to i32
  %mul123 = mul nsw i32 %141, %conv122
  %add124 = add nsw i32 %mul120, %mul123
  %144 = load i32, i32* %wp_round, align 4
  %add125 = add nsw i32 %add124, %144
  %145 = load i32, i32* %weight_denom, align 4
  %shr126 = ashr i32 %add125, %145
  %146 = load i32, i32* %offset, align 4
  %add127 = add nsw i32 %shr126, %146
  %call = call i32 @iClip1(i32 %137, i32 %add127)
  %conv128 = trunc i32 %call to i16
  %147 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %147 to i64
  %148 = load i32, i32* %j, align 4
  %idxprom130 = sext i32 %148 to i64
  %149 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %149, i32 0, i32 51
  %arrayidx131 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx131, i32 0, i64 %idxprom129
  store i16 %conv128, i16* %arrayidx132, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.118
  %150 = load i32, i32* %i, align 4
  %inc = add nsw i32 %150, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.115

for.end:                                          ; preds = %for.cond.115
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.end
  %151 = load i32, i32* %j, align 4
  %inc134 = add nsw i32 %151, 1
  store i32 %inc134, i32* %j, align 4
  br label %for.cond

for.end.135:                                      ; preds = %for.cond
  br label %if.end.216

if.else:                                          ; preds = %if.then.85
  %152 = load i32, i32* %p_dir.addr, align 4
  %cmp136 = icmp eq i32 %152, 0
  br i1 %cmp136, label %if.then.138, label %if.else.176

if.then.138:                                      ; preds = %if.else
  %153 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom139 = sext i16 %153 to i64
  %154 = load i32***, i32**** @wp_weight, align 8
  %arrayidx140 = getelementptr inbounds i32**, i32*** %154, i64 0
  %155 = load i32**, i32*** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i32*, i32** %155, i64 %idxprom139
  %156 = load i32*, i32** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %156, i64 0
  %157 = load i32, i32* %arrayidx142, align 4
  store i32 %157, i32* %wp, align 4
  %158 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom144 = sext i16 %158 to i64
  %159 = load i32***, i32**** @wp_offset, align 8
  %arrayidx145 = getelementptr inbounds i32**, i32*** %159, i64 0
  %160 = load i32**, i32*** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds i32*, i32** %160, i64 %idxprom144
  %161 = load i32*, i32** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %161, i64 0
  %162 = load i32, i32* %arrayidx147, align 4
  store i32 %162, i32* %offset143, align 4
  %163 = load i32, i32* %block_y.addr, align 4
  store i32 %163, i32* %j, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.173, %if.then.138
  %164 = load i32, i32* %j, align 4
  %165 = load i32, i32* %block_y4, align 4
  %cmp149 = icmp slt i32 %164, %165
  br i1 %cmp149, label %for.body.151, label %for.end.175

for.body.151:                                     ; preds = %for.cond.148
  %166 = load i32, i32* %block_x.addr, align 4
  store i32 %166, i32* %i, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.170, %for.body.151
  %167 = load i32, i32* %i, align 4
  %168 = load i32, i32* %block_x4, align 4
  %cmp153 = icmp slt i32 %167, %168
  br i1 %cmp153, label %for.body.155, label %for.end.172

for.body.155:                                     ; preds = %for.cond.152
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value156 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 156
  %170 = load i32, i32* %max_imgpel_value156, align 4
  %171 = load i32, i32* %wp, align 4
  %172 = load i16*, i16** %l0pred, align 8
  %incdec.ptr157 = getelementptr inbounds i16, i16* %172, i32 1
  store i16* %incdec.ptr157, i16** %l0pred, align 8
  %173 = load i16, i16* %172, align 2
  %conv158 = zext i16 %173 to i32
  %mul159 = mul nsw i32 %171, %conv158
  %174 = load i32, i32* @wp_luma_round, align 4
  %add160 = add nsw i32 %mul159, %174
  %175 = load i32, i32* @luma_log_weight_denom, align 4
  %shr161 = ashr i32 %add160, %175
  %176 = load i32, i32* %offset143, align 4
  %add162 = add nsw i32 %shr161, %176
  %call163 = call i32 @iClip1(i32 %170, i32 %add162)
  %conv164 = trunc i32 %call163 to i16
  %177 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %177 to i64
  %178 = load i32, i32* %j, align 4
  %idxprom166 = sext i32 %178 to i64
  %179 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr167 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %179, i32 0, i32 51
  %arrayidx168 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr167, i32 0, i64 %idxprom166
  %arrayidx169 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx168, i32 0, i64 %idxprom165
  store i16 %conv164, i16* %arrayidx169, align 2
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.155
  %180 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %180, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond.152

for.end.172:                                      ; preds = %for.cond.152
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.end.172
  %181 = load i32, i32* %j, align 4
  %inc174 = add nsw i32 %181, 1
  store i32 %inc174, i32* %j, align 4
  br label %for.cond.148

for.end.175:                                      ; preds = %for.cond.148
  br label %if.end.215

if.else.176:                                      ; preds = %if.else
  %182 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom178 = sext i16 %182 to i64
  %183 = load i32***, i32**** @wp_weight, align 8
  %arrayidx179 = getelementptr inbounds i32**, i32*** %183, i64 1
  %184 = load i32**, i32*** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32*, i32** %184, i64 %idxprom178
  %185 = load i32*, i32** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %185, i64 0
  %186 = load i32, i32* %arrayidx181, align 4
  store i32 %186, i32* %wp177, align 4
  %187 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom183 = sext i16 %187 to i64
  %188 = load i32***, i32**** @wp_offset, align 8
  %arrayidx184 = getelementptr inbounds i32**, i32*** %188, i64 1
  %189 = load i32**, i32*** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32*, i32** %189, i64 %idxprom183
  %190 = load i32*, i32** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %190, i64 0
  %191 = load i32, i32* %arrayidx186, align 4
  store i32 %191, i32* %offset182, align 4
  %192 = load i32, i32* %block_y.addr, align 4
  store i32 %192, i32* %j, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.212, %if.else.176
  %193 = load i32, i32* %j, align 4
  %194 = load i32, i32* %block_y4, align 4
  %cmp188 = icmp slt i32 %193, %194
  br i1 %cmp188, label %for.body.190, label %for.end.214

for.body.190:                                     ; preds = %for.cond.187
  %195 = load i32, i32* %block_x.addr, align 4
  store i32 %195, i32* %i, align 4
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.209, %for.body.190
  %196 = load i32, i32* %i, align 4
  %197 = load i32, i32* %block_x4, align 4
  %cmp192 = icmp slt i32 %196, %197
  br i1 %cmp192, label %for.body.194, label %for.end.211

for.body.194:                                     ; preds = %for.cond.191
  %198 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value195 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %198, i32 0, i32 156
  %199 = load i32, i32* %max_imgpel_value195, align 4
  %200 = load i32, i32* %wp177, align 4
  %201 = load i16*, i16** %l1pred, align 8
  %incdec.ptr196 = getelementptr inbounds i16, i16* %201, i32 1
  store i16* %incdec.ptr196, i16** %l1pred, align 8
  %202 = load i16, i16* %201, align 2
  %conv197 = zext i16 %202 to i32
  %mul198 = mul nsw i32 %200, %conv197
  %203 = load i32, i32* @wp_luma_round, align 4
  %add199 = add nsw i32 %mul198, %203
  %204 = load i32, i32* @luma_log_weight_denom, align 4
  %shr200 = ashr i32 %add199, %204
  %205 = load i32, i32* %offset182, align 4
  %add201 = add nsw i32 %shr200, %205
  %call202 = call i32 @iClip1(i32 %199, i32 %add201)
  %conv203 = trunc i32 %call202 to i16
  %206 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %206 to i64
  %207 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %207 to i64
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr206 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 51
  %arrayidx207 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr206, i32 0, i64 %idxprom205
  %arrayidx208 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx207, i32 0, i64 %idxprom204
  store i16 %conv203, i16* %arrayidx208, align 2
  br label %for.inc.209

for.inc.209:                                      ; preds = %for.body.194
  %209 = load i32, i32* %i, align 4
  %inc210 = add nsw i32 %209, 1
  store i32 %inc210, i32* %i, align 4
  br label %for.cond.191

for.end.211:                                      ; preds = %for.cond.191
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.end.211
  %210 = load i32, i32* %j, align 4
  %inc213 = add nsw i32 %210, 1
  store i32 %inc213, i32* %j, align 4
  br label %for.cond.187

for.end.214:                                      ; preds = %for.cond.187
  br label %if.end.215

if.end.215:                                       ; preds = %for.end.214, %for.end.175
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %for.end.135
  br label %if.end.280

if.else.217:                                      ; preds = %sw.epilog
  %211 = load i32, i32* %p_dir.addr, align 4
  %cmp218 = icmp eq i32 %211, 2
  br i1 %cmp218, label %if.then.220, label %if.else.248

if.then.220:                                      ; preds = %if.else.217
  %212 = load i32, i32* %block_y.addr, align 4
  store i32 %212, i32* %j, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.245, %if.then.220
  %213 = load i32, i32* %j, align 4
  %214 = load i32, i32* %block_y4, align 4
  %cmp222 = icmp slt i32 %213, %214
  br i1 %cmp222, label %for.body.224, label %for.end.247

for.body.224:                                     ; preds = %for.cond.221
  %215 = load i32, i32* %block_x.addr, align 4
  store i32 %215, i32* %i, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.242, %for.body.224
  %216 = load i32, i32* %i, align 4
  %217 = load i32, i32* %block_x4, align 4
  %cmp226 = icmp slt i32 %216, %217
  br i1 %cmp226, label %for.body.228, label %for.end.244

for.body.228:                                     ; preds = %for.cond.225
  %218 = load i16*, i16** %l0pred, align 8
  %incdec.ptr229 = getelementptr inbounds i16, i16* %218, i32 1
  store i16* %incdec.ptr229, i16** %l0pred, align 8
  %219 = load i16, i16* %218, align 2
  %conv230 = zext i16 %219 to i32
  %220 = load i16*, i16** %l1pred, align 8
  %incdec.ptr231 = getelementptr inbounds i16, i16* %220, i32 1
  store i16* %incdec.ptr231, i16** %l1pred, align 8
  %221 = load i16, i16* %220, align 2
  %conv232 = zext i16 %221 to i32
  %add233 = add nsw i32 %conv230, %conv232
  %add234 = add nsw i32 %add233, 1
  %shr235 = ashr i32 %add234, 1
  %conv236 = trunc i32 %shr235 to i16
  %222 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %222 to i64
  %223 = load i32, i32* %j, align 4
  %idxprom238 = sext i32 %223 to i64
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr239 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 51
  %arrayidx240 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr239, i32 0, i64 %idxprom238
  %arrayidx241 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx240, i32 0, i64 %idxprom237
  store i16 %conv236, i16* %arrayidx241, align 2
  br label %for.inc.242

for.inc.242:                                      ; preds = %for.body.228
  %225 = load i32, i32* %i, align 4
  %inc243 = add nsw i32 %225, 1
  store i32 %inc243, i32* %i, align 4
  br label %for.cond.225

for.end.244:                                      ; preds = %for.cond.225
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.end.244
  %226 = load i32, i32* %j, align 4
  %inc246 = add nsw i32 %226, 1
  store i32 %inc246, i32* %j, align 4
  br label %for.cond.221

for.end.247:                                      ; preds = %for.cond.221
  br label %if.end.279

if.else.248:                                      ; preds = %if.else.217
  %227 = load i32, i32* %p_dir.addr, align 4
  %cmp249 = icmp eq i32 %227, 0
  br i1 %cmp249, label %if.then.251, label %if.else.264

if.then.251:                                      ; preds = %if.else.248
  %228 = load i32, i32* %block_y.addr, align 4
  store i32 %228, i32* %j, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.261, %if.then.251
  %229 = load i32, i32* %j, align 4
  %230 = load i32, i32* %block_y4, align 4
  %cmp253 = icmp slt i32 %229, %230
  br i1 %cmp253, label %for.body.255, label %for.end.263

for.body.255:                                     ; preds = %for.cond.252
  %231 = load i32, i32* %block_x.addr, align 4
  %idxprom256 = sext i32 %231 to i64
  %232 = load i32, i32* %j, align 4
  %idxprom257 = sext i32 %232 to i64
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr258 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 51
  %arrayidx259 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr258, i32 0, i64 %idxprom257
  %arrayidx260 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx259, i32 0, i64 %idxprom256
  %234 = bitcast i16* %arrayidx260 to i8*
  %235 = load i16*, i16** %l0pred, align 8
  %236 = bitcast i16* %235 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %234, i8* %236, i64 8, i32 2, i1 false)
  %237 = load i16*, i16** %l0pred, align 8
  %add.ptr = getelementptr inbounds i16, i16* %237, i64 4
  store i16* %add.ptr, i16** %l0pred, align 8
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.body.255
  %238 = load i32, i32* %j, align 4
  %inc262 = add nsw i32 %238, 1
  store i32 %inc262, i32* %j, align 4
  br label %for.cond.252

for.end.263:                                      ; preds = %for.cond.252
  br label %if.end.278

if.else.264:                                      ; preds = %if.else.248
  %239 = load i32, i32* %block_y.addr, align 4
  store i32 %239, i32* %j, align 4
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.275, %if.else.264
  %240 = load i32, i32* %j, align 4
  %241 = load i32, i32* %block_y4, align 4
  %cmp266 = icmp slt i32 %240, %241
  br i1 %cmp266, label %for.body.268, label %for.end.277

for.body.268:                                     ; preds = %for.cond.265
  %242 = load i32, i32* %block_x.addr, align 4
  %idxprom269 = sext i32 %242 to i64
  %243 = load i32, i32* %j, align 4
  %idxprom270 = sext i32 %243 to i64
  %244 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr271 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %244, i32 0, i32 51
  %arrayidx272 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr271, i32 0, i64 %idxprom270
  %arrayidx273 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx272, i32 0, i64 %idxprom269
  %245 = bitcast i16* %arrayidx273 to i8*
  %246 = load i16*, i16** %l1pred, align 8
  %247 = bitcast i16* %246 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %245, i8* %247, i64 8, i32 2, i1 false)
  %248 = load i16*, i16** %l1pred, align 8
  %add.ptr274 = getelementptr inbounds i16, i16* %248, i64 4
  store i16* %add.ptr274, i16** %l1pred, align 8
  br label %for.inc.275

for.inc.275:                                      ; preds = %for.body.268
  %249 = load i32, i32* %j, align 4
  %inc276 = add nsw i32 %249, 1
  store i32 %inc276, i32* %j, align 4
  br label %for.cond.265

for.end.277:                                      ; preds = %for.cond.265
  br label %if.end.278

if.end.278:                                       ; preds = %for.end.277, %for.end.263
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %for.end.247
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.end.216
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip1(i32 %high, i32 %x) #2 {
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
define void @LumaPrediction4x4Bi(i32 %block_x, i32 %block_y, i32 %l0_mode, i32 %l1_mode, i16 signext %l0_ref_idx, i16 signext %l1_ref_idx, i32 %list) #0 {
entry:
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %l0_mode.addr = alloca i32, align 4
  %l1_mode.addr = alloca i32, align 4
  %l0_ref_idx.addr = alloca i16, align 2
  %l1_ref_idx.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %block_x4 = alloca i32, align 4
  %block_y4 = alloca i32, align 4
  %pic_opix_x = alloca i32, align 4
  %pic_opix_y = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %l0pred = alloca i16*, align 8
  %l1pred = alloca i16*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %apply_weights = alloca i32, align 4
  %mv_array = alloca i16****, align 8
  %wbp0 = alloca i32, align 4
  %wbp1 = alloca i32, align 4
  %offset = alloca i32, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %l0_mode, i32* %l0_mode.addr, align 4
  store i32 %l1_mode, i32* %l1_mode.addr, align 4
  store i16 %l0_ref_idx, i16* %l0_ref_idx.addr, align 2
  store i16 %l1_ref_idx, i16* %l1_ref_idx.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  %0 = load i32, i32* %block_x.addr, align 4
  %add = add nsw i32 %0, 4
  store i32 %add, i32* %block_x4, align 4
  %1 = load i32, i32* %block_y.addr, align 4
  %add1 = add nsw i32 %1, 4
  store i32 %add1, i32* %block_y4, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 43
  %3 = load i32, i32* %opix_x, align 4
  %4 = load i32, i32* %block_x.addr, align 4
  %add2 = add nsw i32 %3, %4
  %shl = shl i32 %add2, 2
  %add3 = add nsw i32 %shl, 80
  store i32 %add3, i32* %pic_opix_x, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 44
  %6 = load i32, i32* %opix_y, align 4
  %7 = load i32, i32* %block_y.addr, align 4
  %add4 = add nsw i32 %6, %7
  %shl5 = shl i32 %add4, 2
  %add6 = add nsw i32 %shl5, 80
  store i32 %add6, i32* %pic_opix_y, align 4
  %8 = load i32, i32* %block_x.addr, align 4
  %shr = ashr i32 %8, 2
  store i32 %shr, i32* %bx, align 4
  %9 = load i32, i32* %block_y.addr, align 4
  %shr7 = ashr i32 %9, 2
  store i32 %shr7, i32* %by, align 4
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @LumaPrediction4x4Bi.l0_pred, i32 0, i32 0), i16** %l0pred, align 8
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @LumaPrediction4x4Bi.l1_pred, i32 0, i32 0), i16** %l1pred, align 8
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 3
  %11 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 61
  %13 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %14 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %14, i32 0, i32 19
  %15 = load i32, i32* %weighted_pred_flag, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 5
  %17 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 5
  %19 = load i32, i32* %type8, align 4
  %cmp9 = icmp eq i32 %19, 3
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %entry
  %20 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %20, i32 0, i32 20
  %21 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool10 = icmp ne i32 %21, 0
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 5
  %23 = load i32, i32* %type11, align 4
  %cmp12 = icmp eq i32 %23, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %24 = phi i1 [ false, %lor.rhs ], [ %cmp12, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %land.lhs.true
  %25 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ %24, %land.end ]
  %lor.ext = zext i1 %25 to i32
  store i32 %lor.ext, i32* %apply_weights, align 4
  %26 = load i32, i32* %list.addr, align 4
  %tobool13 = icmp ne i32 %26, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  %27 = load i32, i32* %bx, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load i32, i32* %by, align 4
  %idxprom15 = sext i32 %28 to i64
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 81
  %30 = load i16******, i16******* %bipred_mv1, align 8
  %arrayidx16 = getelementptr inbounds i16*****, i16****** %30, i64 %idxprom15
  %31 = load i16*****, i16****** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16****, i16***** %31, i64 %idxprom14
  %32 = load i16****, i16***** %arrayidx17, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %33 = load i32, i32* %bx, align 4
  %idxprom18 = sext i32 %33 to i64
  %34 = load i32, i32* %by, align 4
  %idxprom19 = sext i32 %34 to i64
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 82
  %36 = load i16******, i16******* %bipred_mv2, align 8
  %arrayidx20 = getelementptr inbounds i16*****, i16****** %36, i64 %idxprom19
  %37 = load i16*****, i16****** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16****, i16***** %37, i64 %idxprom18
  %38 = load i16****, i16***** %arrayidx21, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16**** [ %32, %cond.true ], [ %38, %cond.false ]
  store i16**** %cond, i16***** %mv_array, align 8
  %39 = load i32, i32* %pic_opix_x, align 4
  %40 = load i32, i32* %pic_opix_y, align 4
  %41 = load i32, i32* %l0_mode.addr, align 4
  %idxprom22 = sext i32 %41 to i64
  %42 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom23 = sext i16 %42 to i64
  %43 = load i16****, i16***** %mv_array, align 8
  %arrayidx24 = getelementptr inbounds i16***, i16**** %43, i64 0
  %44 = load i16***, i16**** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i16**, i16*** %44, i64 %idxprom23
  %45 = load i16**, i16*** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i16*, i16** %45, i64 %idxprom22
  %46 = load i16*, i16** %arrayidx26, align 8
  %47 = load i16, i16* %l0_ref_idx.addr, align 2
  %48 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %48, i32 0, i32 21
  %49 = load i32, i32* %list_offset, align 4
  %add27 = add nsw i32 0, %49
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom28
  %50 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx29, align 8
  call void @OneComponentLumaPrediction4x4(i16* getelementptr inbounds ([16 x i16], [16 x i16]* @LumaPrediction4x4Bi.l0_pred, i32 0, i32 0), i32 %39, i32 %40, i16* %46, i16 signext %47, %struct.storable_picture** %50)
  %51 = load i32, i32* %pic_opix_x, align 4
  %52 = load i32, i32* %pic_opix_y, align 4
  %53 = load i32, i32* %l1_mode.addr, align 4
  %idxprom30 = sext i32 %53 to i64
  %54 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom31 = sext i16 %54 to i64
  %55 = load i16****, i16***** %mv_array, align 8
  %arrayidx32 = getelementptr inbounds i16***, i16**** %55, i64 1
  %56 = load i16***, i16**** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i16**, i16*** %56, i64 %idxprom31
  %57 = load i16**, i16*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16*, i16** %57, i64 %idxprom30
  %58 = load i16*, i16** %arrayidx34, align 8
  %59 = load i16, i16* %l1_ref_idx.addr, align 2
  %60 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset35 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 21
  %61 = load i32, i32* %list_offset35, align 4
  %add36 = add nsw i32 1, %61
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom37
  %62 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx38, align 8
  call void @OneComponentLumaPrediction4x4(i16* getelementptr inbounds ([16 x i16], [16 x i16]* @LumaPrediction4x4Bi.l1_pred, i32 0, i32 0), i32 %51, i32 %52, i16* %58, i16 signext %59, %struct.storable_picture** %62)
  %63 = load i32, i32* %apply_weights, align 4
  %tobool39 = icmp ne i32 %63, 0
  br i1 %tobool39, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %64 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom40 = sext i16 %64 to i64
  %65 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom41 = sext i16 %65 to i64
  %66 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx42 = getelementptr inbounds i32***, i32**** %66, i64 0
  %67 = load i32***, i32**** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32**, i32*** %67, i64 %idxprom41
  %68 = load i32**, i32*** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i32*, i32** %68, i64 %idxprom40
  %69 = load i32*, i32** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx45, align 4
  store i32 %70, i32* %wbp0, align 4
  %71 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom46 = sext i16 %71 to i64
  %72 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom47 = sext i16 %72 to i64
  %73 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx48 = getelementptr inbounds i32***, i32**** %73, i64 1
  %74 = load i32***, i32**** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32**, i32*** %74, i64 %idxprom47
  %75 = load i32**, i32*** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i32*, i32** %75, i64 %idxprom46
  %76 = load i32*, i32** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx51, align 4
  store i32 %77, i32* %wbp1, align 4
  %78 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom52 = sext i16 %78 to i64
  %79 = load i32***, i32**** @wp_offset, align 8
  %arrayidx53 = getelementptr inbounds i32**, i32*** %79, i64 0
  %80 = load i32**, i32*** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32*, i32** %80, i64 %idxprom52
  %81 = load i32*, i32** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %81, i64 0
  %82 = load i32, i32* %arrayidx55, align 4
  %83 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom56 = sext i16 %83 to i64
  %84 = load i32***, i32**** @wp_offset, align 8
  %arrayidx57 = getelementptr inbounds i32**, i32*** %84, i64 1
  %85 = load i32**, i32*** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32*, i32** %85, i64 %idxprom56
  %86 = load i32*, i32** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %86, i64 0
  %87 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %82, %87
  %add61 = add nsw i32 %add60, 1
  %shr62 = ashr i32 %add61, 1
  store i32 %shr62, i32* %offset, align 4
  %88 = load i32, i32* %block_y.addr, align 4
  store i32 %88, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.81, %if.then
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %block_y4, align 4
  %cmp63 = icmp slt i32 %89, %90
  br i1 %cmp63, label %for.body, label %for.end.83

for.body:                                         ; preds = %for.cond
  %91 = load i32, i32* %block_x.addr, align 4
  store i32 %91, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc, %for.body
  %92 = load i32, i32* %i, align 4
  %93 = load i32, i32* %block_x4, align 4
  %cmp65 = icmp slt i32 %92, %93
  br i1 %cmp65, label %for.body.66, label %for.end

for.body.66:                                      ; preds = %for.cond.64
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 156
  %95 = load i32, i32* %max_imgpel_value, align 4
  %96 = load i32, i32* %wbp0, align 4
  %97 = load i16*, i16** %l0pred, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %97, i32 1
  store i16* %incdec.ptr, i16** %l0pred, align 8
  %98 = load i16, i16* %97, align 2
  %conv = zext i16 %98 to i32
  %mul = mul nsw i32 %96, %conv
  %99 = load i32, i32* %wbp1, align 4
  %100 = load i16*, i16** %l1pred, align 8
  %incdec.ptr67 = getelementptr inbounds i16, i16* %100, i32 1
  store i16* %incdec.ptr67, i16** %l1pred, align 8
  %101 = load i16, i16* %100, align 2
  %conv68 = zext i16 %101 to i32
  %mul69 = mul nsw i32 %99, %conv68
  %add70 = add nsw i32 %mul, %mul69
  %102 = load i32, i32* @wp_luma_round, align 4
  %mul71 = mul nsw i32 2, %102
  %add72 = add nsw i32 %add70, %mul71
  %103 = load i32, i32* @luma_log_weight_denom, align 4
  %add73 = add nsw i32 %103, 1
  %shr74 = ashr i32 %add72, %add73
  %104 = load i32, i32* %offset, align 4
  %add75 = add nsw i32 %shr74, %104
  %call = call i32 @iClip1(i32 %95, i32 %add75)
  %conv76 = trunc i32 %call to i16
  %105 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %105 to i64
  %106 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %106 to i64
  %107 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %107, i32 0, i32 51
  %arrayidx79 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx79, i32 0, i64 %idxprom77
  store i16 %conv76, i16* %arrayidx80, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.66
  %108 = load i32, i32* %i, align 4
  %inc = add nsw i32 %108, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.64

for.end:                                          ; preds = %for.cond.64
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end
  %109 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %109, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond

for.end.83:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %cond.end
  %110 = load i32, i32* %block_y.addr, align 4
  store i32 %110, i32* %j, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.108, %if.else
  %111 = load i32, i32* %j, align 4
  %112 = load i32, i32* %block_y4, align 4
  %cmp85 = icmp slt i32 %111, %112
  br i1 %cmp85, label %for.body.87, label %for.end.110

for.body.87:                                      ; preds = %for.cond.84
  %113 = load i32, i32* %block_x.addr, align 4
  store i32 %113, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.105, %for.body.87
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %block_x4, align 4
  %cmp89 = icmp slt i32 %114, %115
  br i1 %cmp89, label %for.body.91, label %for.end.107

for.body.91:                                      ; preds = %for.cond.88
  %116 = load i16*, i16** %l0pred, align 8
  %incdec.ptr92 = getelementptr inbounds i16, i16* %116, i32 1
  store i16* %incdec.ptr92, i16** %l0pred, align 8
  %117 = load i16, i16* %116, align 2
  %conv93 = zext i16 %117 to i32
  %118 = load i16*, i16** %l1pred, align 8
  %incdec.ptr94 = getelementptr inbounds i16, i16* %118, i32 1
  store i16* %incdec.ptr94, i16** %l1pred, align 8
  %119 = load i16, i16* %118, align 2
  %conv95 = zext i16 %119 to i32
  %add96 = add nsw i32 %conv93, %conv95
  %add97 = add nsw i32 %add96, 1
  %shr98 = ashr i32 %add97, 1
  %conv99 = trunc i32 %shr98 to i16
  %120 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %121 to i64
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 51
  %arrayidx103 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr102, i32 0, i64 %idxprom101
  %arrayidx104 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx103, i32 0, i64 %idxprom100
  store i16 %conv99, i16* %arrayidx104, align 2
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.91
  %123 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %123, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.88

for.end.107:                                      ; preds = %for.cond.88
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.107
  %124 = load i32, i32* %j, align 4
  %inc109 = add nsw i32 %124, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.84

for.end.110:                                      ; preds = %for.cond.84
  br label %if.end

if.end:                                           ; preds = %for.end.110, %for.end.83
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LumaResidualCoding8x8(i32* %cbp, i64* %cbp_blk, i32 %block8x8, i16 signext %p_dir, i32 %l0_mode, i32 %l1_mode, i16 signext %l0_ref_idx, i16 signext %l1_ref_idx) #0 {
entry:
  %cbp.addr = alloca i32*, align 8
  %cbp_blk.addr = alloca i64*, align 8
  %block8x8.addr = alloca i32, align 4
  %p_dir.addr = alloca i16, align 2
  %l0_mode.addr = alloca i32, align 4
  %l1_mode.addr = alloca i32, align 4
  %l0_ref_idx.addr = alloca i16, align 2
  %l1_ref_idx.addr = alloca i16, align 2
  %block_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %pic_pix_y = alloca i32, align 4
  %pic_pix_x = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nonzero = alloca i32, align 4
  %cbp_blk_mask = alloca i32, align 4
  %coeff_cost = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %mb_x = alloca i32, align 4
  %pix_y = alloca i32, align 4
  %cbp_mask = alloca i32, align 4
  %bxx = alloca i32, align 4
  %byy = alloca i32, align 4
  %skipped = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %need_8x8_transform = alloca i32, align 4
  store i32* %cbp, i32** %cbp.addr, align 8
  store i64* %cbp_blk, i64** %cbp_blk.addr, align 8
  store i32 %block8x8, i32* %block8x8.addr, align 4
  store i16 %p_dir, i16* %p_dir.addr, align 2
  store i32 %l0_mode, i32* %l0_mode.addr, align 4
  store i32 %l1_mode, i32* %l1_mode.addr, align 4
  store i16 %l0_ref_idx, i16* %l0_ref_idx.addr, align 2
  store i16 %l1_ref_idx, i16* %l1_ref_idx.addr, align 2
  store i32 0, i32* %nonzero, align 4
  store i32 0, i32* %coeff_cost, align 4
  %0 = load i32, i32* %block8x8.addr, align 4
  %shr = ashr i32 %0, 1
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %mb_y, align 4
  %1 = load i32, i32* %block8x8.addr, align 4
  %and = and i32 %1, 1
  %shl1 = shl i32 %and, 3
  store i32 %shl1, i32* %mb_x, align 4
  %2 = load i32, i32* %block8x8.addr, align 4
  %shl2 = shl i32 1, %2
  store i32 %shl2, i32* %cbp_mask, align 4
  %3 = load i32, i32* %l0_mode.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %l1_mode.addr, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 5
  %6 = load i32, i32* %type, align 4
  %cmp4 = icmp ne i32 %6, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %skipped, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 3
  %9 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 61
  %11 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 31
  %13 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  store i32 %13, i32* %need_8x8_transform, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMCBuffer = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 197
  %15 = load i32, i32* %ChromaMCBuffer, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  store void (i16*, i32, i32, i16******, i32, i16, i32, i32)* @OneComponentChromaPrediction4x4_retrieve, void (i16*, i32, i32, i16******, i32, i16, i32, i32)** @OneComponentChromaPrediction4x4, align 8
  br label %if.end

if.else:                                          ; preds = %land.end
  store void (i16*, i32, i32, i16******, i32, i16, i32, i32)* @OneComponentChromaPrediction4x4_regenerate, void (i16*, i32, i32, i16******, i32, i16, i32, i32)** @OneComponentChromaPrediction4x4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %need_8x8_transform, align 4
  %tobool5 = icmp ne i32 %16, 0
  br i1 %tobool5, label %if.else.83, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %byy, align 4
  %17 = load i32, i32* %mb_y, align 4
  store i32 %17, i32* %block_y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.79, %if.then.6
  %18 = load i32, i32* %block_y, align 4
  %19 = load i32, i32* %mb_y, align 4
  %add = add nsw i32 %19, 8
  %cmp7 = icmp slt i32 %18, %add
  br i1 %cmp7, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 44
  %21 = load i32, i32* %opix_y, align 4
  %22 = load i32, i32* %block_y, align 4
  %add8 = add nsw i32 %21, %22
  store i32 %add8, i32* %pic_pix_y, align 4
  store i32 0, i32* %bxx, align 4
  %23 = load i32, i32* %mb_x, align 4
  store i32 %23, i32* %block_x, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.75, %for.body
  %24 = load i32, i32* %block_x, align 4
  %25 = load i32, i32* %mb_x, align 4
  %add10 = add nsw i32 %25, 8
  %cmp11 = icmp slt i32 %24, %add10
  br i1 %cmp11, label %for.body.12, label %for.end.78

for.body.12:                                      ; preds = %for.cond.9
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 43
  %27 = load i32, i32* %opix_x, align 4
  %28 = load i32, i32* %block_x, align 4
  %add13 = add nsw i32 %27, %28
  store i32 %add13, i32* %pic_pix_x, align 4
  %29 = load i32, i32* %block_x, align 4
  %shr14 = ashr i32 %29, 2
  %30 = load i32, i32* %block_y, align 4
  %add15 = add nsw i32 %shr14, %30
  store i32 %add15, i32* %cbp_blk_mask, align 4
  %31 = load i32, i32* %block_x, align 4
  %32 = load i32, i32* %block_y, align 4
  %33 = load i16, i16* %p_dir.addr, align 2
  %conv = sext i16 %33 to i32
  %34 = load i32, i32* %l0_mode.addr, align 4
  %35 = load i32, i32* %l1_mode.addr, align 4
  %36 = load i16, i16* %l0_ref_idx.addr, align 2
  %37 = load i16, i16* %l1_ref_idx.addr, align 2
  call void @LumaPrediction4x4(i32 %31, i32 %32, i32 %conv, i32 %34, i32 %35, i16 signext %36, i16 signext %37)
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.42, %for.body.12
  %38 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %38, 4
  br i1 %cmp17, label %for.body.19, label %for.end.44

for.body.19:                                      ; preds = %for.cond.16
  %39 = load i32, i32* %pic_pix_y, align 4
  %40 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %39, %40
  store i32 %add20, i32* %pix_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body.19
  %41 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %41, 4
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %42 = load i32, i32* %pic_pix_x, align 4
  %43 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %42, %43
  %idxprom26 = sext i32 %add25 to i64
  %44 = load i32, i32* %pix_y, align 4
  %idxprom27 = sext i32 %44 to i64
  %45 = load i16**, i16*** @imgY_org, align 8
  %arrayidx28 = getelementptr inbounds i16*, i16** %45, i64 %idxprom27
  %46 = load i16*, i16** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %46, i64 %idxprom26
  %47 = load i16, i16* %arrayidx29, align 2
  %conv30 = zext i16 %47 to i32
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %block_x, align 4
  %add31 = add nsw i32 %48, %49
  %idxprom32 = sext i32 %add31 to i64
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %block_y, align 4
  %add33 = add nsw i32 %50, %51
  %idxprom34 = sext i32 %add33 to i64
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 51
  %arrayidx35 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx35, i32 0, i64 %idxprom32
  %53 = load i16, i16* %arrayidx36, align 2
  %conv37 = zext i16 %53 to i32
  %sub = sub nsw i32 %conv30, %conv37
  %54 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %55 to i64
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 52
  %arrayidx40 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx40, i32 0, i64 %idxprom38
  store i32 %sub, i32* %arrayidx41, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.24
  %57 = load i32, i32* %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end
  %58 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %58, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond.16

for.end.44:                                       ; preds = %for.cond.16
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NoResidueDirect = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 97
  %60 = load i32, i32* %NoResidueDirect, align 4
  %cmp45 = icmp ne i32 %60, 1
  br i1 %cmp45, label %land.lhs.true.47, label %lor.lhs.false

land.lhs.true.47:                                 ; preds = %for.end.44
  %61 = load i32, i32* %skipped, align 4
  %tobool48 = icmp ne i32 %61, 0
  br i1 %tobool48, label %lor.lhs.false, label %if.then.54

lor.lhs.false:                                    ; preds = %land.lhs.true.47, %for.end.44
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp_scaled = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 11
  %63 = load i32, i32* %qp_scaled, align 4
  %cmp49 = icmp eq i32 %63, 0
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.74

land.lhs.true.51:                                 ; preds = %lor.lhs.false
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 161
  %65 = load i32, i32* %lossless_qpprime_flag, align 4
  %cmp52 = icmp eq i32 %65, 1
  br i1 %cmp52, label %if.then.54, label %if.end.74

if.then.54:                                       ; preds = %land.lhs.true.51, %land.lhs.true.47
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 5
  %67 = load i32, i32* %type55, align 4
  %cmp56 = icmp ne i32 %67, 3
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.then.54
  %68 = load i32, i32* %block_x, align 4
  %69 = load i32, i32* %block_y, align 4
  %call = call i32 @dct_luma(i32 %68, i32 %69, i32* %coeff_cost, i32 0)
  store i32 %call, i32* %nonzero, align 4
  br label %if.end.68

if.else.59:                                       ; preds = %if.then.54
  %70 = load i32, i32* @si_frame_indicator, align 4
  %tobool60 = icmp ne i32 %70, 0
  br i1 %tobool60, label %if.else.65, label %land.lhs.true.61

land.lhs.true.61:                                 ; preds = %if.else.59
  %71 = load i32, i32* @sp2_frame_indicator, align 4
  %tobool62 = icmp ne i32 %71, 0
  br i1 %tobool62, label %if.else.65, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.61
  %72 = load i32, i32* %block_x, align 4
  %73 = load i32, i32* %block_y, align 4
  %call64 = call i32 @dct_luma_sp(i32 %72, i32 %73, i32* %coeff_cost)
  store i32 %call64, i32* %nonzero, align 4
  br label %if.end.67

if.else.65:                                       ; preds = %land.lhs.true.61, %if.else.59
  %74 = load i32, i32* %block_x, align 4
  %75 = load i32, i32* %block_y, align 4
  %call66 = call i32 @dct_luma_sp2(i32 %74, i32 %75, i32* %coeff_cost)
  store i32 %call66, i32* %nonzero, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.58
  %76 = load i32, i32* %nonzero, align 4
  %tobool69 = icmp ne i32 %76, 0
  br i1 %tobool69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.end.68
  %77 = load i32, i32* %cbp_blk_mask, align 4
  %sh_prom = zext i32 %77 to i64
  %shl71 = shl i64 1, %sh_prom
  %78 = load i64*, i64** %cbp_blk.addr, align 8
  %79 = load i64, i64* %78, align 8
  %or = or i64 %79, %shl71
  store i64 %or, i64* %78, align 8
  %80 = load i32, i32* %cbp_mask, align 4
  %81 = load i32*, i32** %cbp.addr, align 8
  %82 = load i32, i32* %81, align 4
  %or72 = or i32 %82, %80
  store i32 %or72, i32* %81, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.end.68
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true.51, %lor.lhs.false
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %83 = load i32, i32* %bxx, align 4
  %add76 = add nsw i32 %83, 4
  store i32 %add76, i32* %bxx, align 4
  %84 = load i32, i32* %block_x, align 4
  %add77 = add nsw i32 %84, 4
  store i32 %add77, i32* %block_x, align 4
  br label %for.cond.9

for.end.78:                                       ; preds = %for.cond.9
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.78
  %85 = load i32, i32* %byy, align 4
  %add80 = add nsw i32 %85, 4
  store i32 %add80, i32* %byy, align 4
  %86 = load i32, i32* %block_y, align 4
  %add81 = add nsw i32 %86, 4
  store i32 %add81, i32* %block_y, align 4
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  br label %if.end.169

if.else.83:                                       ; preds = %if.end
  store i32 0, i32* %byy, align 4
  %87 = load i32, i32* %mb_y, align 4
  store i32 %87, i32* %block_y, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.142, %if.else.83
  %88 = load i32, i32* %block_y, align 4
  %89 = load i32, i32* %mb_y, align 4
  %add85 = add nsw i32 %89, 8
  %cmp86 = icmp slt i32 %88, %add85
  br i1 %cmp86, label %for.body.88, label %for.end.145

for.body.88:                                      ; preds = %for.cond.84
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y89 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 44
  %91 = load i32, i32* %opix_y89, align 4
  %92 = load i32, i32* %block_y, align 4
  %add90 = add nsw i32 %91, %92
  store i32 %add90, i32* %pic_pix_y, align 4
  store i32 0, i32* %bxx, align 4
  %93 = load i32, i32* %mb_x, align 4
  store i32 %93, i32* %block_x, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.138, %for.body.88
  %94 = load i32, i32* %block_x, align 4
  %95 = load i32, i32* %mb_x, align 4
  %add92 = add nsw i32 %95, 8
  %cmp93 = icmp slt i32 %94, %add92
  br i1 %cmp93, label %for.body.95, label %for.end.141

for.body.95:                                      ; preds = %for.cond.91
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 43
  %97 = load i32, i32* %opix_x96, align 4
  %98 = load i32, i32* %block_x, align 4
  %add97 = add nsw i32 %97, %98
  store i32 %add97, i32* %pic_pix_x, align 4
  %99 = load i32, i32* %block_x, align 4
  %shr98 = ashr i32 %99, 2
  %100 = load i32, i32* %block_y, align 4
  %add99 = add nsw i32 %shr98, %100
  store i32 %add99, i32* %cbp_blk_mask, align 4
  %101 = load i32, i32* %block_x, align 4
  %102 = load i32, i32* %block_y, align 4
  %103 = load i16, i16* %p_dir.addr, align 2
  %conv100 = sext i16 %103 to i32
  %104 = load i32, i32* %l0_mode.addr, align 4
  %105 = load i32, i32* %l1_mode.addr, align 4
  %106 = load i16, i16* %l0_ref_idx.addr, align 2
  %107 = load i16, i16* %l1_ref_idx.addr, align 2
  call void @LumaPrediction4x4(i32 %101, i32 %102, i32 %conv100, i32 %104, i32 %105, i16 signext %106, i16 signext %107)
  store i32 0, i32* %j, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.135, %for.body.95
  %108 = load i32, i32* %j, align 4
  %cmp102 = icmp slt i32 %108, 4
  br i1 %cmp102, label %for.body.104, label %for.end.137

for.body.104:                                     ; preds = %for.cond.101
  %109 = load i32, i32* %pic_pix_y, align 4
  %110 = load i32, i32* %j, align 4
  %add105 = add nsw i32 %109, %110
  store i32 %add105, i32* %pix_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.132, %for.body.104
  %111 = load i32, i32* %i, align 4
  %cmp107 = icmp slt i32 %111, 4
  br i1 %cmp107, label %for.body.109, label %for.end.134

for.body.109:                                     ; preds = %for.cond.106
  %112 = load i32, i32* %pic_pix_x, align 4
  %113 = load i32, i32* %i, align 4
  %add110 = add nsw i32 %112, %113
  %idxprom111 = sext i32 %add110 to i64
  %114 = load i32, i32* %pix_y, align 4
  %idxprom112 = sext i32 %114 to i64
  %115 = load i16**, i16*** @imgY_org, align 8
  %arrayidx113 = getelementptr inbounds i16*, i16** %115, i64 %idxprom112
  %116 = load i16*, i16** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i16, i16* %116, i64 %idxprom111
  %117 = load i16, i16* %arrayidx114, align 2
  %conv115 = zext i16 %117 to i32
  %118 = load i32, i32* %i, align 4
  %119 = load i32, i32* %block_x, align 4
  %add116 = add nsw i32 %118, %119
  %idxprom117 = sext i32 %add116 to i64
  %120 = load i32, i32* %j, align 4
  %121 = load i32, i32* %block_y, align 4
  %add118 = add nsw i32 %120, %121
  %idxprom119 = sext i32 %add118 to i64
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr120 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 51
  %arrayidx121 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr120, i32 0, i64 %idxprom119
  %arrayidx122 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx121, i32 0, i64 %idxprom117
  %123 = load i16, i16* %arrayidx122, align 2
  %conv123 = zext i16 %123 to i32
  %sub124 = sub nsw i32 %conv115, %conv123
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %bxx, align 4
  %add125 = add nsw i32 %124, %125
  %idxprom126 = sext i32 %add125 to i64
  %126 = load i32, i32* %j, align 4
  %127 = load i32, i32* %byy, align 4
  %add127 = add nsw i32 %126, %127
  %idxprom128 = sext i32 %add127 to i64
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 52
  %arrayidx130 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7129, i32 0, i64 %idxprom128
  %arrayidx131 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx130, i32 0, i64 %idxprom126
  store i32 %sub124, i32* %arrayidx131, align 4
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.109
  %129 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %129, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.106

for.end.134:                                      ; preds = %for.cond.106
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.end.134
  %130 = load i32, i32* %j, align 4
  %inc136 = add nsw i32 %130, 1
  store i32 %inc136, i32* %j, align 4
  br label %for.cond.101

for.end.137:                                      ; preds = %for.cond.101
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.end.137
  %131 = load i32, i32* %bxx, align 4
  %add139 = add nsw i32 %131, 4
  store i32 %add139, i32* %bxx, align 4
  %132 = load i32, i32* %block_x, align 4
  %add140 = add nsw i32 %132, 4
  store i32 %add140, i32* %block_x, align 4
  br label %for.cond.91

for.end.141:                                      ; preds = %for.cond.91
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141
  %133 = load i32, i32* %byy, align 4
  %add143 = add nsw i32 %133, 4
  store i32 %add143, i32* %byy, align 4
  %134 = load i32, i32* %block_y, align 4
  %add144 = add nsw i32 %134, 4
  store i32 %add144, i32* %block_y, align 4
  br label %for.cond.84

for.end.145:                                      ; preds = %for.cond.84
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NoResidueDirect146 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 97
  %136 = load i32, i32* %NoResidueDirect146, align 4
  %cmp147 = icmp ne i32 %136, 1
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.168

land.lhs.true.149:                                ; preds = %for.end.145
  %137 = load i32, i32* %skipped, align 4
  %tobool150 = icmp ne i32 %137, 0
  br i1 %tobool150, label %if.end.168, label %if.then.151

if.then.151:                                      ; preds = %land.lhs.true.149
  %138 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type152 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %138, i32 0, i32 5
  %139 = load i32, i32* %type152, align 4
  %cmp153 = icmp ne i32 %139, 3
  br i1 %cmp153, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %if.then.151
  %140 = load i32, i32* %block8x8.addr, align 4
  %call156 = call i32 @dct_luma8x8(i32 %140, i32* %coeff_cost, i32 0)
  store i32 %call156, i32* %nonzero, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %if.then.151
  %141 = load i32, i32* %nonzero, align 4
  %tobool158 = icmp ne i32 %141, 0
  br i1 %tobool158, label %if.then.159, label %if.end.167

if.then.159:                                      ; preds = %if.end.157
  %142 = load i32, i32* %block8x8.addr, align 4
  %mul = mul nsw i32 4, %142
  %143 = load i32, i32* %block8x8.addr, align 4
  %and160 = and i32 %143, 1
  %mul161 = mul nsw i32 2, %and160
  %sub162 = sub nsw i32 %mul, %mul161
  %shl163 = shl i32 51, %sub162
  %conv164 = sext i32 %shl163 to i64
  %144 = load i64*, i64** %cbp_blk.addr, align 8
  %145 = load i64, i64* %144, align 8
  %or165 = or i64 %145, %conv164
  store i64 %or165, i64* %144, align 8
  %146 = load i32, i32* %cbp_mask, align 4
  %147 = load i32*, i32** %cbp.addr, align 8
  %148 = load i32, i32* %147, align 4
  %or166 = or i32 %148, %146
  store i32 %or166, i32* %147, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.159, %if.end.157
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %land.lhs.true.149, %for.end.145
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %for.end.82
  %149 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NoResidueDirect170 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %149, i32 0, i32 97
  %150 = load i32, i32* %NoResidueDirect170, align 4
  %cmp171 = icmp ne i32 %150, 1
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.247

land.lhs.true.173:                                ; preds = %if.end.169
  %151 = load i32, i32* %skipped, align 4
  %tobool174 = icmp ne i32 %151, 0
  br i1 %tobool174, label %if.end.247, label %land.lhs.true.175

land.lhs.true.175:                                ; preds = %land.lhs.true.173
  %152 = load i32, i32* %coeff_cost, align 4
  %cmp176 = icmp sle i32 %152, 4
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.247

land.lhs.true.178:                                ; preds = %land.lhs.true.175
  %153 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp_scaled179 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %153, i32 0, i32 11
  %154 = load i32, i32* %qp_scaled179, align 4
  %cmp180 = icmp ne i32 %154, 0
  br i1 %cmp180, label %land.lhs.true.186, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %land.lhs.true.178
  %155 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lossless_qpprime_flag183 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %155, i32 0, i32 161
  %156 = load i32, i32* %lossless_qpprime_flag183, align 4
  %cmp184 = icmp eq i32 %156, 0
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.247

land.lhs.true.186:                                ; preds = %lor.lhs.false.182, %land.lhs.true.178
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 5
  %158 = load i32, i32* %type187, align 4
  %cmp188 = icmp eq i32 %158, 3
  br i1 %cmp188, label %land.lhs.true.190, label %if.then.196

land.lhs.true.190:                                ; preds = %land.lhs.true.186
  %159 = load i32, i32* @si_frame_indicator, align 4
  %cmp191 = icmp eq i32 %159, 1
  br i1 %cmp191, label %if.end.247, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %land.lhs.true.190
  %160 = load i32, i32* @sp2_frame_indicator, align 4
  %cmp194 = icmp eq i32 %160, 1
  br i1 %cmp194, label %if.end.247, label %if.then.196

if.then.196:                                      ; preds = %lor.lhs.false.193, %land.lhs.true.186
  store i32 0, i32* %coeff_cost, align 4
  %161 = load i32, i32* %cbp_mask, align 4
  %sub197 = sub nsw i32 63, %161
  %162 = load i32*, i32** %cbp.addr, align 8
  %163 = load i32, i32* %162, align 4
  %and198 = and i32 %163, %sub197
  store i32 %and198, i32* %162, align 4
  %164 = load i32, i32* %block8x8.addr, align 4
  %mul199 = mul nsw i32 4, %164
  %165 = load i32, i32* %block8x8.addr, align 4
  %and200 = and i32 %165, 1
  %mul201 = mul nsw i32 2, %and200
  %sub202 = sub nsw i32 %mul199, %mul201
  %shl203 = shl i32 51, %sub202
  %neg = xor i32 %shl203, -1
  %conv204 = sext i32 %neg to i64
  %166 = load i64*, i64** %cbp_blk.addr, align 8
  %167 = load i64, i64* %166, align 8
  %and205 = and i64 %167, %conv204
  store i64 %and205, i64* %166, align 8
  %168 = load i32, i32* %mb_y, align 4
  store i32 %168, i32* %j, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.223, %if.then.196
  %169 = load i32, i32* %j, align 4
  %170 = load i32, i32* %mb_y, align 4
  %add207 = add nsw i32 %170, 8
  %cmp208 = icmp slt i32 %169, %add207
  br i1 %cmp208, label %for.body.210, label %for.end.225

for.body.210:                                     ; preds = %for.cond.206
  %171 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %171, i32 0, i32 39
  %172 = load i32, i32* %pix_x, align 4
  %173 = load i32, i32* %mb_x, align 4
  %add211 = add nsw i32 %172, %173
  %idxprom212 = sext i32 %add211 to i64
  %174 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y213 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %174, i32 0, i32 40
  %175 = load i32, i32* %pix_y213, align 4
  %176 = load i32, i32* %j, align 4
  %add214 = add nsw i32 %175, %176
  %idxprom215 = sext i32 %add214 to i64
  %177 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %177, i32 0, i32 29
  %178 = load i16**, i16*** %imgY, align 8
  %arrayidx216 = getelementptr inbounds i16*, i16** %178, i64 %idxprom215
  %179 = load i16*, i16** %arrayidx216, align 8
  %arrayidx217 = getelementptr inbounds i16, i16* %179, i64 %idxprom212
  %180 = bitcast i16* %arrayidx217 to i8*
  %181 = load i32, i32* %mb_x, align 4
  %idxprom218 = sext i32 %181 to i64
  %182 = load i32, i32* %j, align 4
  %idxprom219 = sext i32 %182 to i64
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr220 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 51
  %arrayidx221 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr220, i32 0, i64 %idxprom219
  %arrayidx222 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx221, i32 0, i64 %idxprom218
  %184 = bitcast i16* %arrayidx222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %184, i64 16, i32 2, i1 false)
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.210
  %185 = load i32, i32* %j, align 4
  %inc224 = add nsw i32 %185, 1
  store i32 %inc224, i32* %j, align 4
  br label %for.cond.206

for.end.225:                                      ; preds = %for.cond.206
  %186 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type226 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %186, i32 0, i32 5
  %187 = load i32, i32* %type226, align 4
  %cmp227 = icmp eq i32 %187, 3
  br i1 %cmp227, label %if.then.229, label %if.end.246

if.then.229:                                      ; preds = %for.end.225
  %188 = load i32, i32* %mb_x, align 4
  store i32 %188, i32* %i, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.243, %if.then.229
  %189 = load i32, i32* %i, align 4
  %190 = load i32, i32* %mb_x, align 4
  %add231 = add nsw i32 %190, 8
  %cmp232 = icmp slt i32 %189, %add231
  br i1 %cmp232, label %for.body.234, label %for.end.245

for.body.234:                                     ; preds = %for.cond.230
  %191 = load i32, i32* %mb_y, align 4
  store i32 %191, i32* %j, align 4
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.240, %for.body.234
  %192 = load i32, i32* %j, align 4
  %193 = load i32, i32* %mb_y, align 4
  %add236 = add nsw i32 %193, 8
  %cmp237 = icmp slt i32 %192, %add236
  br i1 %cmp237, label %for.body.239, label %for.end.242

for.body.239:                                     ; preds = %for.cond.235
  %194 = load i32, i32* %i, align 4
  %195 = load i32, i32* %j, align 4
  call void @copyblock_sp(i32 %194, i32 %195)
  br label %for.inc.240

for.inc.240:                                      ; preds = %for.body.239
  %196 = load i32, i32* %j, align 4
  %add241 = add nsw i32 %196, 4
  store i32 %add241, i32* %j, align 4
  br label %for.cond.235

for.end.242:                                      ; preds = %for.cond.235
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end.242
  %197 = load i32, i32* %i, align 4
  %add244 = add nsw i32 %197, 4
  store i32 %add244, i32* %i, align 4
  br label %for.cond.230

for.end.245:                                      ; preds = %for.cond.230
  br label %if.end.246

if.end.246:                                       ; preds = %for.end.245, %for.end.225
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %lor.lhs.false.193, %land.lhs.true.190, %lor.lhs.false.182, %land.lhs.true.175, %land.lhs.true.173, %if.end.169
  %198 = load i32, i32* %coeff_cost, align 4
  ret i32 %198
}

; Function Attrs: nounwind uwtable
define internal void @OneComponentChromaPrediction4x4_retrieve(i16* %mpred, i32 %block_c_x, i32 %block_c_y, i16****** %mv, i32 %list_idx, i16 signext %ref, i32 %blocktype, i32 %uv) #0 {
entry:
  %mpred.addr = alloca i16*, align 8
  %block_c_x.addr = alloca i32, align 4
  %block_c_y.addr = alloca i32, align 4
  %mv.addr = alloca i16******, align 8
  %list_idx.addr = alloca i32, align 4
  %ref.addr = alloca i16, align 2
  %blocktype.addr = alloca i32, align 4
  %uv.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %mvb = alloca i16*, align 8
  %list_offset = alloca i32, align 4
  %jjx = alloca i32, align 4
  %right_shift_x = alloca i32, align 4
  %right_shift_y = alloca i32, align 4
  %jpos = alloca i32, align 4
  %pos_x1 = alloca i32, align 4
  %pos_x2 = alloca i32, align 4
  %ipos1 = alloca i32, align 4
  %ipos2 = alloca i32, align 4
  %list = alloca %struct.storable_picture**, align 8
  %refsubimage = alloca i16****, align 8
  %line_ptr = alloca i16*, align 8
  %jj_chroma = alloca i32, align 4
  store i16* %mpred, i16** %mpred.addr, align 8
  store i32 %block_c_x, i32* %block_c_x.addr, align 4
  store i32 %block_c_y, i32* %block_c_y.addr, align 4
  store i16****** %mv, i16******* %mv.addr, align 8
  store i32 %list_idx, i32* %list_idx.addr, align 4
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %uv, i32* %uv.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  %list_offset1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 21
  %4 = load i32, i32* %list_offset1, align 4
  store i32 %4, i32* %list_offset, align 4
  %5 = load i32, i32* @chroma_shift_x, align 4
  %sub = sub nsw i32 4, %5
  store i32 %sub, i32* %right_shift_x, align 4
  %6 = load i32, i32* @chroma_shift_y, align 4
  %sub2 = sub nsw i32 4, %6
  store i32 %sub2, i32* %right_shift_y, align 4
  %7 = load i32, i32* %block_c_x.addr, align 4
  %8 = load i32, i32* %right_shift_x, align 4
  %shr = ashr i32 %7, %8
  store i32 %shr, i32* %pos_x1, align 4
  %9 = load i32, i32* %block_c_x.addr, align 4
  %add = add nsw i32 %9, 2
  %10 = load i32, i32* %right_shift_x, align 4
  %shr3 = ashr i32 %add, %10
  store i32 %shr3, i32* %pos_x2, align 4
  %11 = load i32, i32* %block_c_x.addr, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 45
  %13 = load i32, i32* %opix_c_x, align 4
  %add4 = add nsw i32 %11, %13
  %14 = load i32, i32* @chroma_shift_x, align 4
  %shl = shl i32 %add4, %14
  %add5 = add nsw i32 %shl, 80
  store i32 %add5, i32* %ipos1, align 4
  %15 = load i32, i32* %block_c_x.addr, align 4
  %add6 = add nsw i32 %15, 2
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_x7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 45
  %17 = load i32, i32* %opix_c_x7, align 4
  %add8 = add nsw i32 %add6, %17
  %18 = load i32, i32* @chroma_shift_x, align 4
  %shl9 = shl i32 %add8, %18
  %add10 = add nsw i32 %shl9, 80
  store i32 %add10, i32* %ipos2, align 4
  %19 = load i32, i32* %list_idx.addr, align 4
  %20 = load i32, i32* %list_offset, align 4
  %add11 = add nsw i32 %19, %20
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom12
  %21 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx13, align 8
  store %struct.storable_picture** %21, %struct.storable_picture*** %list, align 8
  %22 = load i32, i32* %uv.addr, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load i16, i16* %ref.addr, align 2
  %idxprom15 = sext i16 %23 to i64
  %24 = load %struct.storable_picture**, %struct.storable_picture*** %list, align 8
  %arrayidx16 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %24, i64 %idxprom15
  %25 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx16, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 32
  %26 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx17 = getelementptr inbounds i16****, i16***** %26, i64 %idxprom14
  %27 = load i16****, i16***** %arrayidx17, align 8
  store i16**** %27, i16***** %refsubimage, align 8
  %28 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %28, i32 0, i32 8
  %29 = load i32, i32* %chroma_format_idc, align 4
  %cmp = icmp eq i32 %29, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %30 = load i16, i16* %ref.addr, align 2
  %idxprom18 = sext i16 %30 to i64
  %31 = load %struct.storable_picture**, %struct.storable_picture*** %list, align 8
  %arrayidx19 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %31, i64 %idxprom18
  %32 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx19, align 8
  %chroma_vector_adjustment = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %32, i32 0, i32 26
  %33 = load i32, i32* %chroma_vector_adjustment, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ 0, %cond.false ]
  %add20 = add nsw i32 %cond, 80
  store i32 %add20, i32* %jj_chroma, align 4
  %34 = load i16, i16* %ref.addr, align 2
  %idxprom21 = sext i16 %34 to i64
  %35 = load %struct.storable_picture**, %struct.storable_picture*** %list, align 8
  %arrayidx22 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %35, i64 %idxprom21
  %36 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx22, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %36, i32 0, i32 24
  %37 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %37, i32* @width_pad_cr, align 4
  %38 = load i16, i16* %ref.addr, align 2
  %idxprom23 = sext i16 %38 to i64
  %39 = load %struct.storable_picture**, %struct.storable_picture*** %list, align 8
  %arrayidx24 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %39, i64 %idxprom23
  %40 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx24, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %40, i32 0, i32 25
  %41 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %41, i32* @height_pad_cr, align 4
  %42 = load i32, i32* %block_c_y.addr, align 4
  store i32 %42, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %block_c_y.addr, align 4
  %add25 = add nsw i32 %44, 4
  %cmp26 = icmp slt i32 %43, %add25
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %right_shift_y, align 4
  %shr27 = ashr i32 %45, %46
  store i32 %shr27, i32* %jjx, align 4
  %47 = load i32, i32* %j, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 46
  %49 = load i32, i32* %opix_c_y, align 4
  %add28 = add nsw i32 %47, %49
  %50 = load i32, i32* @chroma_shift_y, align 4
  %shl29 = shl i32 %add28, %50
  %51 = load i32, i32* %jj_chroma, align 4
  %add30 = add nsw i32 %shl29, %51
  store i32 %add30, i32* %jpos, align 4
  %52 = load i32, i32* %blocktype.addr, align 4
  %idxprom31 = sext i32 %52 to i64
  %53 = load i16, i16* %ref.addr, align 2
  %idxprom32 = sext i16 %53 to i64
  %54 = load i32, i32* %list_idx.addr, align 4
  %idxprom33 = sext i32 %54 to i64
  %55 = load i32, i32* %pos_x1, align 4
  %idxprom34 = sext i32 %55 to i64
  %56 = load i32, i32* %jjx, align 4
  %idxprom35 = sext i32 %56 to i64
  %57 = load i16******, i16******* %mv.addr, align 8
  %arrayidx36 = getelementptr inbounds i16*****, i16****** %57, i64 %idxprom35
  %58 = load i16*****, i16****** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16****, i16***** %58, i64 %idxprom34
  %59 = load i16****, i16***** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i16***, i16**** %59, i64 %idxprom33
  %60 = load i16***, i16**** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i16**, i16*** %60, i64 %idxprom32
  %61 = load i16**, i16*** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i16*, i16** %61, i64 %idxprom31
  %62 = load i16*, i16** %arrayidx40, align 8
  store i16* %62, i16** %mvb, align 8
  %63 = load i32, i32* %ipos1, align 4
  %64 = load i16*, i16** %mvb, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %64, i64 0
  %65 = load i16, i16* %arrayidx41, align 2
  %conv = sext i16 %65 to i32
  %add42 = add nsw i32 %63, %conv
  store i32 %add42, i32* %ii, align 4
  %66 = load i32, i32* %jpos, align 4
  %67 = load i16*, i16** %mvb, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %67, i64 1
  %68 = load i16, i16* %arrayidx43, align 2
  %conv44 = sext i16 %68 to i32
  %add45 = add nsw i32 %66, %conv44
  store i32 %add45, i32* %jj, align 4
  %69 = load i16****, i16***** %refsubimage, align 8
  %70 = load i32, i32* %jj, align 4
  %71 = load i32, i32* %ii, align 4
  %call = call i16* @UMVLine8X_chroma(i16**** %69, i32 %70, i32 %71)
  store i16* %call, i16** %line_ptr, align 8
  %72 = load i16*, i16** %line_ptr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %72, i32 1
  store i16* %incdec.ptr, i16** %line_ptr, align 8
  %73 = load i16, i16* %72, align 2
  %74 = load i16*, i16** %mpred.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i16, i16* %74, i32 1
  store i16* %incdec.ptr46, i16** %mpred.addr, align 8
  store i16 %73, i16* %74, align 2
  %75 = load i16*, i16** %line_ptr, align 8
  %76 = load i16, i16* %75, align 2
  %77 = load i16*, i16** %mpred.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i16, i16* %77, i32 1
  store i16* %incdec.ptr47, i16** %mpred.addr, align 8
  store i16 %76, i16* %77, align 2
  %78 = load i32, i32* %blocktype.addr, align 4
  %idxprom48 = sext i32 %78 to i64
  %79 = load i16, i16* %ref.addr, align 2
  %idxprom49 = sext i16 %79 to i64
  %80 = load i32, i32* %list_idx.addr, align 4
  %idxprom50 = sext i32 %80 to i64
  %81 = load i32, i32* %pos_x2, align 4
  %idxprom51 = sext i32 %81 to i64
  %82 = load i32, i32* %jjx, align 4
  %idxprom52 = sext i32 %82 to i64
  %83 = load i16******, i16******* %mv.addr, align 8
  %arrayidx53 = getelementptr inbounds i16*****, i16****** %83, i64 %idxprom52
  %84 = load i16*****, i16****** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i16****, i16***** %84, i64 %idxprom51
  %85 = load i16****, i16***** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i16***, i16**** %85, i64 %idxprom50
  %86 = load i16***, i16**** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16**, i16*** %86, i64 %idxprom49
  %87 = load i16**, i16*** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i16*, i16** %87, i64 %idxprom48
  %88 = load i16*, i16** %arrayidx57, align 8
  store i16* %88, i16** %mvb, align 8
  %89 = load i32, i32* %ipos2, align 4
  %90 = load i16*, i16** %mvb, align 8
  %arrayidx58 = getelementptr inbounds i16, i16* %90, i64 0
  %91 = load i16, i16* %arrayidx58, align 2
  %conv59 = sext i16 %91 to i32
  %add60 = add nsw i32 %89, %conv59
  store i32 %add60, i32* %ii, align 4
  %92 = load i32, i32* %jpos, align 4
  %93 = load i16*, i16** %mvb, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %93, i64 1
  %94 = load i16, i16* %arrayidx61, align 2
  %conv62 = sext i16 %94 to i32
  %add63 = add nsw i32 %92, %conv62
  store i32 %add63, i32* %jj, align 4
  %95 = load i16****, i16***** %refsubimage, align 8
  %96 = load i32, i32* %jj, align 4
  %97 = load i32, i32* %ii, align 4
  %call64 = call i16* @UMVLine8X_chroma(i16**** %95, i32 %96, i32 %97)
  store i16* %call64, i16** %line_ptr, align 8
  %98 = load i16*, i16** %line_ptr, align 8
  %incdec.ptr65 = getelementptr inbounds i16, i16* %98, i32 1
  store i16* %incdec.ptr65, i16** %line_ptr, align 8
  %99 = load i16, i16* %98, align 2
  %100 = load i16*, i16** %mpred.addr, align 8
  %incdec.ptr66 = getelementptr inbounds i16, i16* %100, i32 1
  store i16* %incdec.ptr66, i16** %mpred.addr, align 8
  store i16 %99, i16* %100, align 2
  %101 = load i16*, i16** %line_ptr, align 8
  %102 = load i16, i16* %101, align 2
  %103 = load i16*, i16** %mpred.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i16, i16* %103, i32 1
  store i16* %incdec.ptr67, i16** %mpred.addr, align 8
  store i16 %102, i16* %103, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %104 = load i32, i32* %j, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @OneComponentChromaPrediction4x4_regenerate(i16* %mpred, i32 %block_c_x, i32 %block_c_y, i16****** %mv, i32 %list_idx, i16 signext %ref, i32 %blocktype, i32 %uv) #0 {
entry:
  %mpred.addr = alloca i16*, align 8
  %block_c_x.addr = alloca i32, align 4
  %block_c_y.addr = alloca i32, align 4
  %mv.addr = alloca i16******, align 8
  %list_idx.addr = alloca i32, align 4
  %ref.addr = alloca i16, align 2
  %blocktype.addr = alloca i32, align 4
  %uv.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %ii0 = alloca i32, align 4
  %jj0 = alloca i32, align 4
  %ii1 = alloca i32, align 4
  %jj1 = alloca i32, align 4
  %if0 = alloca i32, align 4
  %if1 = alloca i32, align 4
  %jf0 = alloca i32, align 4
  %jf1 = alloca i32, align 4
  %mvb = alloca i16*, align 8
  %f1_x = alloca i32, align 4
  %f2_x = alloca i32, align 4
  %f1_y = alloca i32, align 4
  %f2_y = alloca i32, align 4
  %f3 = alloca i32, align 4
  %f4 = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %max_y_cr = alloca i32, align 4
  %max_x_cr = alloca i32, align 4
  %jjx = alloca i32, align 4
  %iix = alloca i32, align 4
  %mb_cr_y_div4 = alloca i32, align 4
  %mb_cr_x_div4 = alloca i32, align 4
  %jpos = alloca i32, align 4
  %list = alloca %struct.storable_picture**, align 8
  %refimage = alloca i16**, align 8
  store i16* %mpred, i16** %mpred.addr, align 8
  store i32 %block_c_x, i32* %block_c_x.addr, align 4
  store i32 %block_c_y, i32* %block_c_y.addr, align 4
  store i16****** %mv, i16******* %mv.addr, align 8
  store i32 %list_idx, i32* %list_idx.addr, align 4
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %uv, i32* %uv.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 162
  %1 = load i32, i32* %mb_cr_size_x, align 4
  %div = sdiv i32 64, %1
  store i32 %div, i32* %f1_x, align 4
  %2 = load i32, i32* %f1_x, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %f2_x, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 163
  %4 = load i32, i32* %mb_cr_size_y, align 4
  %div1 = sdiv i32 64, %4
  store i32 %div1, i32* %f1_y, align 4
  %5 = load i32, i32* %f1_y, align 4
  %sub2 = sub nsw i32 %5, 1
  store i32 %sub2, i32* %f2_y, align 4
  %6 = load i32, i32* %f1_x, align 4
  %7 = load i32, i32* %f1_y, align 4
  %mul = mul nsw i32 %6, %7
  store i32 %mul, i32* %f3, align 4
  %8 = load i32, i32* %f3, align 4
  %shr = ashr i32 %8, 1
  store i32 %shr, i32* %f4, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 3
  %10 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 61
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i64 %idxprom
  %list_offset3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 21
  %13 = load i32, i32* %list_offset3, align 4
  store i32 %13, i32* %list_offset, align 4
  %14 = load i32, i32* %list_offset, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 20
  %16 = load i32, i32* %height_cr, align 4
  %shr4 = ashr i32 %16, 1
  %sub5 = sub nsw i32 %shr4, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 20
  %18 = load i32, i32* %height_cr6, align 4
  %sub7 = sub nsw i32 %18, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub5, %cond.true ], [ %sub7, %cond.false ]
  store i32 %cond, i32* %max_y_cr, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 16
  %20 = load i32, i32* %width_cr, align 4
  %sub8 = sub nsw i32 %20, 1
  store i32 %sub8, i32* %max_x_cr, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 163
  %22 = load i32, i32* %mb_cr_size_y9, align 4
  %shr10 = ashr i32 %22, 2
  store i32 %shr10, i32* %mb_cr_y_div4, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 162
  %24 = load i32, i32* %mb_cr_size_x11, align 4
  %shr12 = ashr i32 %24, 2
  store i32 %shr12, i32* %mb_cr_x_div4, align 4
  %25 = load i32, i32* %list_idx.addr, align 4
  %26 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 %25, %26
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom13
  %27 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx14, align 8
  store %struct.storable_picture** %27, %struct.storable_picture*** %list, align 8
  %28 = load i32, i32* %uv.addr, align 4
  %idxprom15 = sext i32 %28 to i64
  %29 = load i16, i16* %ref.addr, align 2
  %idxprom16 = sext i16 %29 to i64
  %30 = load %struct.storable_picture**, %struct.storable_picture*** %list, align 8
  %arrayidx17 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %30, i64 %idxprom16
  %31 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx17, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %31, i32 0, i32 33
  %32 = load i16***, i16**** %imgUV, align 8
  %arrayidx18 = getelementptr inbounds i16**, i16*** %32, i64 %idxprom15
  %33 = load i16**, i16*** %arrayidx18, align 8
  store i16** %33, i16*** %refimage, align 8
  %34 = load i32, i32* %block_c_y.addr, align 4
  store i32 %34, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %cond.end
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %block_c_y.addr, align 4
  %add19 = add nsw i32 %36, 4
  %cmp = icmp slt i32 %35, %add19
  br i1 %cmp, label %for.body, label %for.end.98

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %mb_cr_y_div4, align 4
  %div20 = sdiv i32 %37, %38
  store i32 %div20, i32* %jjx, align 4
  %39 = load i32, i32* %j, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 46
  %41 = load i32, i32* %opix_c_y, align 4
  %add21 = add nsw i32 %39, %41
  %42 = load i32, i32* %f1_y, align 4
  %mul22 = mul nsw i32 %add21, %42
  store i32 %mul22, i32* %jpos, align 4
  %43 = load i32, i32* %block_c_x.addr, align 4
  store i32 %43, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %block_c_x.addr, align 4
  %add24 = add nsw i32 %45, 4
  %cmp25 = icmp slt i32 %44, %add24
  br i1 %cmp25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %mb_cr_x_div4, align 4
  %div27 = sdiv i32 %46, %47
  store i32 %div27, i32* %iix, align 4
  %48 = load i32, i32* %blocktype.addr, align 4
  %idxprom28 = sext i32 %48 to i64
  %49 = load i16, i16* %ref.addr, align 2
  %idxprom29 = sext i16 %49 to i64
  %50 = load i32, i32* %list_idx.addr, align 4
  %idxprom30 = sext i32 %50 to i64
  %51 = load i32, i32* %iix, align 4
  %idxprom31 = sext i32 %51 to i64
  %52 = load i32, i32* %jjx, align 4
  %idxprom32 = sext i32 %52 to i64
  %53 = load i16******, i16******* %mv.addr, align 8
  %arrayidx33 = getelementptr inbounds i16*****, i16****** %53, i64 %idxprom32
  %54 = load i16*****, i16****** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16****, i16***** %54, i64 %idxprom31
  %55 = load i16****, i16***** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16***, i16**** %55, i64 %idxprom30
  %56 = load i16***, i16**** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16**, i16*** %56, i64 %idxprom29
  %57 = load i16**, i16*** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16*, i16** %57, i64 %idxprom28
  %58 = load i16*, i16** %arrayidx37, align 8
  store i16* %58, i16** %mvb, align 8
  %59 = load i32, i32* %i, align 4
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 45
  %61 = load i32, i32* %opix_c_x, align 4
  %add38 = add nsw i32 %59, %61
  %62 = load i32, i32* %f1_x, align 4
  %mul39 = mul nsw i32 %add38, %62
  %63 = load i16*, i16** %mvb, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %63, i64 0
  %64 = load i16, i16* %arrayidx40, align 2
  %conv = sext i16 %64 to i32
  %add41 = add nsw i32 %mul39, %conv
  store i32 %add41, i32* %ii, align 4
  %65 = load i32, i32* %jpos, align 4
  %66 = load i16*, i16** %mvb, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %66, i64 1
  %67 = load i16, i16* %arrayidx42, align 2
  %conv43 = sext i16 %67 to i32
  %add44 = add nsw i32 %65, %conv43
  store i32 %add44, i32* %jj, align 4
  %68 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %68, i32 0, i32 8
  %69 = load i32, i32* %chroma_format_idc, align 4
  %cmp45 = icmp eq i32 %69, 1
  br i1 %cmp45, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.26
  %70 = load i16, i16* %ref.addr, align 2
  %idxprom47 = sext i16 %70 to i64
  %71 = load %struct.storable_picture**, %struct.storable_picture*** %list, align 8
  %arrayidx48 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %71, i64 %idxprom47
  %72 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx48, align 8
  %chroma_vector_adjustment = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 26
  %73 = load i32, i32* %chroma_vector_adjustment, align 4
  %74 = load i32, i32* %jj, align 4
  %add49 = add nsw i32 %74, %73
  store i32 %add49, i32* %jj, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.26
  %75 = load i32, i32* %max_x_cr, align 4
  %76 = load i32, i32* %ii, align 4
  %77 = load i32, i32* %f1_x, align 4
  %div50 = sdiv i32 %76, %77
  %call = call i32 @iClip3(i32 0, i32 %75, i32 %div50)
  store i32 %call, i32* %ii0, align 4
  %78 = load i32, i32* %max_y_cr, align 4
  %79 = load i32, i32* %jj, align 4
  %80 = load i32, i32* %f1_y, align 4
  %div51 = sdiv i32 %79, %80
  %call52 = call i32 @iClip3(i32 0, i32 %78, i32 %div51)
  store i32 %call52, i32* %jj0, align 4
  %81 = load i32, i32* %max_x_cr, align 4
  %82 = load i32, i32* %ii, align 4
  %83 = load i32, i32* %f2_x, align 4
  %add53 = add nsw i32 %82, %83
  %84 = load i32, i32* %f1_x, align 4
  %div54 = sdiv i32 %add53, %84
  %call55 = call i32 @iClip3(i32 0, i32 %81, i32 %div54)
  store i32 %call55, i32* %ii1, align 4
  %85 = load i32, i32* %max_y_cr, align 4
  %86 = load i32, i32* %jj, align 4
  %87 = load i32, i32* %f2_y, align 4
  %add56 = add nsw i32 %86, %87
  %88 = load i32, i32* %f1_y, align 4
  %div57 = sdiv i32 %add56, %88
  %call58 = call i32 @iClip3(i32 0, i32 %85, i32 %div57)
  store i32 %call58, i32* %jj1, align 4
  %89 = load i32, i32* %ii, align 4
  %90 = load i32, i32* %f2_x, align 4
  %and = and i32 %89, %90
  store i32 %and, i32* %if1, align 4
  %91 = load i32, i32* %f1_x, align 4
  %92 = load i32, i32* %if1, align 4
  %sub59 = sub nsw i32 %91, %92
  store i32 %sub59, i32* %if0, align 4
  %93 = load i32, i32* %jj, align 4
  %94 = load i32, i32* %f2_y, align 4
  %and60 = and i32 %93, %94
  store i32 %and60, i32* %jf1, align 4
  %95 = load i32, i32* %f1_y, align 4
  %96 = load i32, i32* %jf1, align 4
  %sub61 = sub nsw i32 %95, %96
  store i32 %sub61, i32* %jf0, align 4
  %97 = load i32, i32* %if0, align 4
  %98 = load i32, i32* %jf0, align 4
  %mul62 = mul nsw i32 %97, %98
  %99 = load i32, i32* %ii0, align 4
  %idxprom63 = sext i32 %99 to i64
  %100 = load i32, i32* %jj0, align 4
  %idxprom64 = sext i32 %100 to i64
  %101 = load i16**, i16*** %refimage, align 8
  %arrayidx65 = getelementptr inbounds i16*, i16** %101, i64 %idxprom64
  %102 = load i16*, i16** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i16, i16* %102, i64 %idxprom63
  %103 = load i16, i16* %arrayidx66, align 2
  %conv67 = zext i16 %103 to i32
  %mul68 = mul nsw i32 %mul62, %conv67
  %104 = load i32, i32* %if1, align 4
  %105 = load i32, i32* %jf0, align 4
  %mul69 = mul nsw i32 %104, %105
  %106 = load i32, i32* %ii1, align 4
  %idxprom70 = sext i32 %106 to i64
  %107 = load i32, i32* %jj0, align 4
  %idxprom71 = sext i32 %107 to i64
  %108 = load i16**, i16*** %refimage, align 8
  %arrayidx72 = getelementptr inbounds i16*, i16** %108, i64 %idxprom71
  %109 = load i16*, i16** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i16, i16* %109, i64 %idxprom70
  %110 = load i16, i16* %arrayidx73, align 2
  %conv74 = zext i16 %110 to i32
  %mul75 = mul nsw i32 %mul69, %conv74
  %add76 = add nsw i32 %mul68, %mul75
  %111 = load i32, i32* %if0, align 4
  %112 = load i32, i32* %jf1, align 4
  %mul77 = mul nsw i32 %111, %112
  %113 = load i32, i32* %ii0, align 4
  %idxprom78 = sext i32 %113 to i64
  %114 = load i32, i32* %jj1, align 4
  %idxprom79 = sext i32 %114 to i64
  %115 = load i16**, i16*** %refimage, align 8
  %arrayidx80 = getelementptr inbounds i16*, i16** %115, i64 %idxprom79
  %116 = load i16*, i16** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i16, i16* %116, i64 %idxprom78
  %117 = load i16, i16* %arrayidx81, align 2
  %conv82 = zext i16 %117 to i32
  %mul83 = mul nsw i32 %mul77, %conv82
  %add84 = add nsw i32 %add76, %mul83
  %118 = load i32, i32* %if1, align 4
  %119 = load i32, i32* %jf1, align 4
  %mul85 = mul nsw i32 %118, %119
  %120 = load i32, i32* %ii1, align 4
  %idxprom86 = sext i32 %120 to i64
  %121 = load i32, i32* %jj1, align 4
  %idxprom87 = sext i32 %121 to i64
  %122 = load i16**, i16*** %refimage, align 8
  %arrayidx88 = getelementptr inbounds i16*, i16** %122, i64 %idxprom87
  %123 = load i16*, i16** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %123, i64 %idxprom86
  %124 = load i16, i16* %arrayidx89, align 2
  %conv90 = zext i16 %124 to i32
  %mul91 = mul nsw i32 %mul85, %conv90
  %add92 = add nsw i32 %add84, %mul91
  %125 = load i32, i32* %f4, align 4
  %add93 = add nsw i32 %add92, %125
  %126 = load i32, i32* %f3, align 4
  %div94 = sdiv i32 %add93, %126
  %conv95 = trunc i32 %div94 to i16
  %127 = load i16*, i16** %mpred.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %127, i32 1
  store i16* %incdec.ptr, i16** %mpred.addr, align 8
  store i16 %conv95, i16* %127, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %128 = load i32, i32* %i, align 4
  %inc = add nsw i32 %128, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end
  %129 = load i32, i32* %j, align 4
  %inc97 = add nsw i32 %129, 1
  store i32 %inc97, i32* %j, align 4
  br label %for.cond

for.end.98:                                       ; preds = %for.cond
  ret void
}

declare i32 @dct_luma(i32, i32, i32*, i32) #1

declare i32 @dct_luma_sp(i32, i32, i32*) #1

declare i32 @dct_luma_sp2(i32, i32, i32*) #1

declare i32 @dct_luma8x8(i32, i32*, i32) #1

declare void @copyblock_sp(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @SetModesAndRefframe(i32 %b8, i16* %p_dir, i32* %l0_mode, i32* %l1_mode, i16* %fw_ref, i16* %bw_ref) #0 {
entry:
  %b8.addr = alloca i32, align 4
  %p_dir.addr = alloca i16*, align 8
  %l0_mode.addr = alloca i32*, align 8
  %l1_mode.addr = alloca i32*, align 8
  %fw_ref.addr = alloca i16*, align 8
  %bw_ref.addr = alloca i16*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %b8, i32* %b8.addr, align 4
  store i16* %p_dir, i16** %p_dir.addr, align 8
  store i32* %l0_mode, i32** %l0_mode.addr, align 8
  store i32* %l1_mode, i32** %l1_mode.addr, align 8
  store i16* %fw_ref, i16** %fw_ref.addr, align 8
  store i16* %bw_ref, i16** %bw_ref.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load i32, i32* %b8.addr, align 4
  %shr = ashr i32 %4, 1
  %mul = mul nsw i32 2, %shr
  store i32 %mul, i32* %j, align 4
  %5 = load i32, i32* %b8.addr, align 4
  %and = and i32 %5, 1
  %mul1 = mul nsw i32 2, %and
  store i32 %mul1, i32* %i, align 4
  %6 = load i16*, i16** %bw_ref.addr, align 8
  store i16 -1, i16* %6, align 2
  %7 = load i16*, i16** %fw_ref.addr, align 8
  store i16 -1, i16* %7, align 2
  %8 = load i32*, i32** %l1_mode.addr, align 8
  store i32 -1, i32* %8, align 4
  %9 = load i32*, i32** %l0_mode.addr, align 8
  store i32 -1, i32* %9, align 4
  %10 = load i32, i32* %b8.addr, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 15
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir, i32 0, i64 %idxprom2
  %12 = load i32, i32* %arrayidx3, align 4
  %conv = trunc i32 %12 to i16
  %13 = load i16*, i16** %p_dir.addr, align 8
  store i16 %conv, i16* %13, align 2
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 5
  %15 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %15, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 37
  %17 = load i32, i32* %block_x, align 4
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 %17, %18
  %idxprom5 = sext i32 %add to i64
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 38
  %20 = load i32, i32* %block_y, align 4
  %21 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %20, %21
  %idxprom7 = sext i32 %add6 to i64
  %22 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 35
  %23 = load i8***, i8**** %ref_idx, align 8
  %arrayidx8 = getelementptr inbounds i8**, i8*** %23, i64 0
  %24 = load i8**, i8*** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %24, i64 %idxprom7
  %25 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %25, i64 %idxprom5
  %26 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %26 to i16
  %27 = load i16*, i16** %fw_ref.addr, align 8
  store i16 %conv11, i16* %27, align 2
  %28 = load i16*, i16** %bw_ref.addr, align 8
  store i16 0, i16* %28, align 2
  %29 = load i32, i32* %b8.addr, align 4
  %idxprom12 = sext i32 %29 to i64
  %30 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i32 0, i32 14
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 %idxprom12
  %31 = load i32, i32* %arrayidx13, align 4
  %32 = load i32*, i32** %l0_mode.addr, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %l1_mode.addr, align 8
  store i32 0, i32* %33, align 4
  br label %if.end.93

if.else:                                          ; preds = %entry
  %34 = load i32, i32* %b8.addr, align 4
  %idxprom14 = sext i32 %34 to i64
  %35 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir15 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 15
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir15, i32 0, i64 %idxprom14
  %36 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %36, -1
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else
  %37 = load i16*, i16** %fw_ref.addr, align 8
  store i16 -1, i16* %37, align 2
  %38 = load i16*, i16** %bw_ref.addr, align 8
  store i16 -1, i16* %38, align 2
  %39 = load i32*, i32** %l0_mode.addr, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32*, i32** %l1_mode.addr, align 8
  store i32 0, i32* %40, align 4
  br label %if.end.92

if.else.20:                                       ; preds = %if.else
  %41 = load i32, i32* %b8.addr, align 4
  %idxprom21 = sext i32 %41 to i64
  %42 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir22 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i32 0, i32 15
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir22, i32 0, i64 %idxprom21
  %43 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp eq i32 %43, 0
  br i1 %cmp24, label %if.then.26, label %if.else.41

if.then.26:                                       ; preds = %if.else.20
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 37
  %45 = load i32, i32* %block_x27, align 4
  %46 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %45, %46
  %idxprom29 = sext i32 %add28 to i64
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 38
  %48 = load i32, i32* %block_y30, align 4
  %49 = load i32, i32* %j, align 4
  %add31 = add nsw i32 %48, %49
  %idxprom32 = sext i32 %add31 to i64
  %50 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx33 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 35
  %51 = load i8***, i8**** %ref_idx33, align 8
  %arrayidx34 = getelementptr inbounds i8**, i8*** %51, i64 0
  %52 = load i8**, i8*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %52, i64 %idxprom32
  %53 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %53, i64 %idxprom29
  %54 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %54 to i16
  %55 = load i16*, i16** %fw_ref.addr, align 8
  store i16 %conv37, i16* %55, align 2
  %56 = load i16*, i16** %bw_ref.addr, align 8
  store i16 0, i16* %56, align 2
  %57 = load i32, i32* %b8.addr, align 4
  %idxprom38 = sext i32 %57 to i64
  %58 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode39 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %58, i32 0, i32 14
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode39, i32 0, i64 %idxprom38
  %59 = load i32, i32* %arrayidx40, align 4
  %60 = load i32*, i32** %l0_mode.addr, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %l1_mode.addr, align 8
  store i32 0, i32* %61, align 4
  br label %if.end.91

if.else.41:                                       ; preds = %if.else.20
  %62 = load i32, i32* %b8.addr, align 4
  %idxprom42 = sext i32 %62 to i64
  %63 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir43 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %63, i32 0, i32 15
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir43, i32 0, i64 %idxprom42
  %64 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp eq i32 %64, 1
  br i1 %cmp45, label %if.then.47, label %if.else.62

if.then.47:                                       ; preds = %if.else.41
  %65 = load i16*, i16** %fw_ref.addr, align 8
  store i16 0, i16* %65, align 2
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 37
  %67 = load i32, i32* %block_x48, align 4
  %68 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %67, %68
  %idxprom50 = sext i32 %add49 to i64
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 38
  %70 = load i32, i32* %block_y51, align 4
  %71 = load i32, i32* %j, align 4
  %add52 = add nsw i32 %70, %71
  %idxprom53 = sext i32 %add52 to i64
  %72 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx54 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 35
  %73 = load i8***, i8**** %ref_idx54, align 8
  %arrayidx55 = getelementptr inbounds i8**, i8*** %73, i64 1
  %74 = load i8**, i8*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %74, i64 %idxprom53
  %75 = load i8*, i8** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %75, i64 %idxprom50
  %76 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %76 to i16
  %77 = load i16*, i16** %bw_ref.addr, align 8
  store i16 %conv58, i16* %77, align 2
  %78 = load i32*, i32** %l0_mode.addr, align 8
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* %b8.addr, align 4
  %idxprom59 = sext i32 %79 to i64
  %80 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode60 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %80, i32 0, i32 14
  %arrayidx61 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode60, i32 0, i64 %idxprom59
  %81 = load i32, i32* %arrayidx61, align 4
  %82 = load i32*, i32** %l1_mode.addr, align 8
  store i32 %81, i32* %82, align 4
  br label %if.end

if.else.62:                                       ; preds = %if.else.41
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 37
  %84 = load i32, i32* %block_x63, align 4
  %85 = load i32, i32* %i, align 4
  %add64 = add nsw i32 %84, %85
  %idxprom65 = sext i32 %add64 to i64
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 38
  %87 = load i32, i32* %block_y66, align 4
  %88 = load i32, i32* %j, align 4
  %add67 = add nsw i32 %87, %88
  %idxprom68 = sext i32 %add67 to i64
  %89 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx69 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %89, i32 0, i32 35
  %90 = load i8***, i8**** %ref_idx69, align 8
  %arrayidx70 = getelementptr inbounds i8**, i8*** %90, i64 0
  %91 = load i8**, i8*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %91, i64 %idxprom68
  %92 = load i8*, i8** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %92, i64 %idxprom65
  %93 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %93 to i16
  %94 = load i16*, i16** %fw_ref.addr, align 8
  store i16 %conv73, i16* %94, align 2
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 37
  %96 = load i32, i32* %block_x74, align 4
  %97 = load i32, i32* %i, align 4
  %add75 = add nsw i32 %96, %97
  %idxprom76 = sext i32 %add75 to i64
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y77 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 38
  %99 = load i32, i32* %block_y77, align 4
  %100 = load i32, i32* %j, align 4
  %add78 = add nsw i32 %99, %100
  %idxprom79 = sext i32 %add78 to i64
  %101 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx80 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 35
  %102 = load i8***, i8**** %ref_idx80, align 8
  %arrayidx81 = getelementptr inbounds i8**, i8*** %102, i64 1
  %103 = load i8**, i8*** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %103, i64 %idxprom79
  %104 = load i8*, i8** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %104, i64 %idxprom76
  %105 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %105 to i16
  %106 = load i16*, i16** %bw_ref.addr, align 8
  store i16 %conv84, i16* %106, align 2
  %107 = load i32, i32* %b8.addr, align 4
  %idxprom85 = sext i32 %107 to i64
  %108 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode86 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %108, i32 0, i32 14
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode86, i32 0, i64 %idxprom85
  %109 = load i32, i32* %arrayidx87, align 4
  %110 = load i32*, i32** %l0_mode.addr, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %b8.addr, align 4
  %idxprom88 = sext i32 %111 to i64
  %112 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode89 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %112, i32 0, i32 14
  %arrayidx90 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode89, i32 0, i64 %idxprom88
  %113 = load i32, i32* %arrayidx90, align 4
  %114 = load i32*, i32** %l1_mode.addr, align 8
  store i32 %113, i32* %114, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.62, %if.then.47
  br label %if.end.91

if.end.91:                                        ; preds = %if.end, %if.then.26
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.19
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @LumaResidualCoding() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %block8x8 = alloca i32, align 4
  %b8_x = alloca i32, align 4
  %b8_y = alloca i32, align 4
  %l0_mode = alloca i32, align 4
  %l1_mode = alloca i32, align 4
  %p_dir = alloca i16, align 2
  %refframe = alloca i16, align 2
  %sum_cnt_nonz = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %bw_ref = alloca i16, align 2
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 12
  store i32 0, i32* %cbp, align 4
  %5 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_blk = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i32 0, i32 13
  store i64 0, i64* %cbp_blk, align 8
  store i32 0, i32* %sum_cnt_nonz, align 4
  store i32 0, i32* %block8x8, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %block8x8, align 4
  %cmp = icmp slt i32 %6, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %block8x8, align 4
  call void @SetModesAndRefframe(i32 %7, i16* %p_dir, i32* %l0_mode, i32* %l1_mode, i16* %refframe, i16* %bw_ref)
  %8 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i32 0, i32 12
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_blk2 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 13
  %10 = load i32, i32* %block8x8, align 4
  %11 = load i16, i16* %p_dir, align 2
  %12 = load i32, i32* %l0_mode, align 4
  %13 = load i32, i32* %l1_mode, align 4
  %14 = load i16, i16* %refframe, align 2
  %15 = load i16, i16* %bw_ref, align 2
  %call = call i32 @LumaResidualCoding8x8(i32* %cbp1, i64* %cbp_blk2, i32 %10, i16 signext %11, i32 %12, i32 %13, i16 signext %14, i16 signext %15)
  %16 = load i32, i32* %sum_cnt_nonz, align 4
  %add = add nsw i32 %16, %call
  store i32 %add, i32* %sum_cnt_nonz, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %block8x8, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %block8x8, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %sum_cnt_nonz, align 4
  %cmp3 = icmp sle i32 %18, 5
  br i1 %cmp3, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %for.end
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp_scaled = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 11
  %20 = load i32, i32* %qp_scaled, align 4
  %cmp4 = icmp ne i32 %20, 0
  br i1 %cmp4, label %land.lhs.true.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 161
  %22 = load i32, i32* %lossless_qpprime_flag, align 4
  %cmp5 = icmp eq i32 %22, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.54

land.lhs.true.6:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 5
  %24 = load i32, i32* %type, align 4
  %cmp7 = icmp eq i32 %24, 3
  br i1 %cmp7, label %land.lhs.true.8, label %if.then

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %25 = load i32, i32* @si_frame_indicator, align 4
  %cmp9 = icmp eq i32 %25, 1
  br i1 %cmp9, label %if.end.54, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true.8
  %26 = load i32, i32* @sp2_frame_indicator, align 4
  %cmp11 = icmp eq i32 %26, 1
  br i1 %cmp11, label %if.end.54, label %if.then

if.then:                                          ; preds = %lor.lhs.false.10, %land.lhs.true.6
  %27 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 12
  %28 = load i32, i32* %cbp12, align 4
  %and = and i32 %28, 16777200
  store i32 %and, i32* %cbp12, align 4
  %29 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_blk13 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 13
  %30 = load i64, i64* %cbp_blk13, align 8
  %and14 = and i64 %30, 16711680
  store i64 %and14, i64* %cbp_blk13, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.25, %if.then
  %31 = load i32, i32* %j, align 4
  %cmp16 = icmp slt i32 %31, 16
  br i1 %cmp16, label %for.body.17, label %for.end.27

for.body.17:                                      ; preds = %for.cond.15
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 39
  %33 = load i32, i32* %pix_x, align 4
  %idxprom18 = sext i32 %33 to i64
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 40
  %35 = load i32, i32* %pix_y, align 4
  %36 = load i32, i32* %j, align 4
  %add19 = add nsw i32 %35, %36
  %idxprom20 = sext i32 %add19 to i64
  %37 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 29
  %38 = load i16**, i16*** %imgY, align 8
  %arrayidx21 = getelementptr inbounds i16*, i16** %38, i64 %idxprom20
  %39 = load i16*, i16** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %39, i64 %idxprom18
  %40 = bitcast i16* %arrayidx22 to i8*
  %41 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %41 to i64
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 51
  %arrayidx24 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom23
  %43 = bitcast [16 x i16]* %arrayidx24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %43, i64 32, i32 2, i1 false)
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.17
  %44 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %44, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond.15

for.end.27:                                       ; preds = %for.cond.15
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 5
  %46 = load i32, i32* %type28, align 4
  %cmp29 = icmp eq i32 %46, 3
  br i1 %cmp29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %for.end.27
  store i32 0, i32* %block8x8, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.51, %if.then.30
  %47 = load i32, i32* %block8x8, align 4
  %cmp32 = icmp slt i32 %47, 4
  br i1 %cmp32, label %for.body.33, label %for.end.53

for.body.33:                                      ; preds = %for.cond.31
  %48 = load i32, i32* %block8x8, align 4
  %and34 = and i32 %48, 1
  %shl = shl i32 %and34, 3
  store i32 %shl, i32* %b8_x, align 4
  %49 = load i32, i32* %block8x8, align 4
  %and35 = and i32 %49, 2
  %shl36 = shl i32 %and35, 2
  store i32 %shl36, i32* %b8_y, align 4
  %50 = load i32, i32* %b8_x, align 4
  store i32 %50, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.48, %for.body.33
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %b8_x, align 4
  %add38 = add nsw i32 %52, 8
  %cmp39 = icmp slt i32 %51, %add38
  br i1 %cmp39, label %for.body.40, label %for.end.50

for.body.40:                                      ; preds = %for.cond.37
  %53 = load i32, i32* %b8_y, align 4
  store i32 %53, i32* %j, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.45, %for.body.40
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %b8_y, align 4
  %add42 = add nsw i32 %55, 8
  %cmp43 = icmp slt i32 %54, %add42
  br i1 %cmp43, label %for.body.44, label %for.end.47

for.body.44:                                      ; preds = %for.cond.41
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %j, align 4
  call void @copyblock_sp(i32 %56, i32 %57)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.44
  %58 = load i32, i32* %j, align 4
  %add46 = add nsw i32 %58, 4
  store i32 %add46, i32* %j, align 4
  br label %for.cond.41

for.end.47:                                       ; preds = %for.cond.41
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end.47
  %59 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %59, 4
  store i32 %add49, i32* %i, align 4
  br label %for.cond.37

for.end.50:                                       ; preds = %for.cond.37
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %60 = load i32, i32* %block8x8, align 4
  %inc52 = add nsw i32 %60, 1
  store i32 %inc52, i32* %block8x8, align 4
  br label %for.cond.31

for.end.53:                                       ; preds = %for.cond.31
  br label %if.end

if.end:                                           ; preds = %for.end.53, %for.end.27
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %lor.lhs.false.10, %land.lhs.true.8, %lor.lhs.false, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @TransformDecision(i32 %block_check, i32* %cost) #0 {
entry:
  %retval = alloca i32, align 4
  %block_check.addr = alloca i32, align 4
  %cost.addr = alloca i32*, align 8
  %block_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %pic_pix_y = alloca i32, align 4
  %pic_pix_x = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %mb_x = alloca i32, align 4
  %block8x8 = alloca i32, align 4
  %l0_mode = alloca i32, align 4
  %l1_mode = alloca i32, align 4
  %p_dir = alloca i16, align 2
  %fw_ref = alloca i16, align 2
  %bw_ref = alloca i16, align 2
  %num_blks = alloca i32, align 4
  %cost8x8 = alloca i32, align 4
  %cost4x4 = alloca i32, align 4
  %diff_ptr = alloca i32*, align 8
  store i32 %block_check, i32* %block_check.addr, align 4
  store i32* %cost, i32** %cost.addr, align 8
  store i32 0, i32* %cost8x8, align 4
  store i32 0, i32* %cost4x4, align 4
  %0 = load i32, i32* %block_check.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %block8x8, align 4
  store i32 4, i32* %num_blks, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %block_check.addr, align 4
  store i32 %1, i32* %block8x8, align 4
  %2 = load i32, i32* %block_check.addr, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %num_blks, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.end
  %3 = load i32, i32* %block8x8, align 4
  %4 = load i32, i32* %num_blks, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %block8x8, align 4
  call void @SetModesAndRefframe(i32 %5, i16* %p_dir, i32* %l0_mode, i32* %l1_mode, i16* %fw_ref, i16* %bw_ref)
  %6 = load i32, i32* %block8x8, align 4
  %shr = ashr i32 %6, 1
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %mb_y, align 4
  %7 = load i32, i32* %block8x8, align 4
  %and = and i32 %7, 1
  %shl2 = shl i32 %and, 3
  store i32 %shl2, i32* %mb_x, align 4
  store i32 0, i32* %k, align 4
  %8 = load i32, i32* %mb_y, align 4
  store i32 %8, i32* %block_y, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.45, %for.body
  %9 = load i32, i32* %block_y, align 4
  %10 = load i32, i32* %mb_y, align 4
  %add4 = add nsw i32 %10, 8
  %cmp5 = icmp slt i32 %9, %add4
  br i1 %cmp5, label %for.body.6, label %for.end.47

for.body.6:                                       ; preds = %for.cond.3
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 44
  %12 = load i32, i32* %opix_y, align 4
  %13 = load i32, i32* %block_y, align 4
  %add7 = add nsw i32 %12, %13
  store i32 %add7, i32* %pic_pix_y, align 4
  %14 = load i32, i32* %mb_x, align 4
  store i32 %14, i32* %block_x, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.42, %for.body.6
  %15 = load i32, i32* %block_x, align 4
  %16 = load i32, i32* %mb_x, align 4
  %add9 = add nsw i32 %16, 8
  %cmp10 = icmp slt i32 %15, %add9
  br i1 %cmp10, label %for.body.11, label %for.end.44

for.body.11:                                      ; preds = %for.cond.8
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 43
  %18 = load i32, i32* %opix_x, align 4
  %19 = load i32, i32* %block_x, align 4
  %add12 = add nsw i32 %18, %19
  store i32 %add12, i32* %pic_pix_x, align 4
  %20 = load i32, i32* %block_x, align 4
  %21 = load i32, i32* %block_y, align 4
  %22 = load i16, i16* %p_dir, align 2
  %conv = sext i16 %22 to i32
  %23 = load i32, i32* %l0_mode, align 4
  %24 = load i32, i32* %l1_mode, align 4
  %25 = load i16, i16* %fw_ref, align 2
  %26 = load i16, i16* %bw_ref, align 2
  call void @LumaPrediction4x4(i32 %20, i32 %21, i32 %conv, i32 %23, i32 %24, i16 signext %25, i16 signext %26)
  %27 = load i32, i32* %k, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* @diff64, i32 0, i64 %idxprom
  store i32* %arrayidx, i32** %diff_ptr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.38, %for.body.11
  %28 = load i32, i32* %j, align 4
  %cmp14 = icmp slt i32 %28, 4
  br i1 %cmp14, label %for.body.16, label %for.end.40

for.body.16:                                      ; preds = %for.cond.13
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body.16
  %29 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %29, 4
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %30 = load i32, i32* %pic_pix_x, align 4
  %31 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %30, %31
  %idxprom22 = sext i32 %add21 to i64
  %32 = load i32, i32* %pic_pix_y, align 4
  %33 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %32, %33
  %idxprom24 = sext i32 %add23 to i64
  %34 = load i16**, i16*** @imgY_org, align 8
  %arrayidx25 = getelementptr inbounds i16*, i16** %34, i64 %idxprom24
  %35 = load i16*, i16** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %35, i64 %idxprom22
  %36 = load i16, i16* %arrayidx26, align 2
  %conv27 = zext i16 %36 to i32
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %block_x, align 4
  %add28 = add nsw i32 %37, %38
  %idxprom29 = sext i32 %add28 to i64
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %block_y, align 4
  %add30 = add nsw i32 %39, %40
  %idxprom31 = sext i32 %add30 to i64
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 51
  %arrayidx32 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx32, i32 0, i64 %idxprom29
  %42 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %42 to i32
  %sub = sub nsw i32 %conv27, %conv34
  %43 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %43 to i64
  %arrayidx36 = getelementptr inbounds [64 x i32], [64 x i32]* @diff64, i32 0, i64 %idxprom35
  store i32 %sub, i32* %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  %45 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %45, 1
  store i32 %inc37, i32* %k, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %46 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %46, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond.13

for.end.40:                                       ; preds = %for.cond.13
  %47 = load i32*, i32** %diff_ptr, align 8
  %call = call i32 @distortion4x4(i32* %47)
  %48 = load i32, i32* %cost4x4, align 4
  %add41 = add nsw i32 %48, %call
  store i32 %add41, i32* %cost4x4, align 4
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.40
  %49 = load i32, i32* %block_x, align 4
  %add43 = add nsw i32 %49, 4
  store i32 %add43, i32* %block_x, align 4
  br label %for.cond.8

for.end.44:                                       ; preds = %for.cond.8
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end.44
  %50 = load i32, i32* %block_y, align 4
  %add46 = add nsw i32 %50, 4
  store i32 %add46, i32* %block_y, align 4
  br label %for.cond.3

for.end.47:                                       ; preds = %for.cond.3
  %call48 = call i32 @distortion8x8(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @diff64, i32 0, i32 0))
  %51 = load i32, i32* %cost8x8, align 4
  %add49 = add nsw i32 %51, %call48
  store i32 %add49, i32* %cost8x8, align 4
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.47
  %52 = load i32, i32* %block8x8, align 4
  %inc51 = add nsw i32 %52, 1
  store i32 %inc51, i32* %block8x8, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 153
  %54 = load i32, i32* %Transform8x8Mode, align 4
  %cmp53 = icmp eq i32 %54, 2
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %for.end.52
  store i32 1, i32* %retval
  br label %return

if.else.56:                                       ; preds = %for.end.52
  %55 = load i32, i32* %cost8x8, align 4
  %56 = load i32, i32* %cost4x4, align 4
  %cmp57 = icmp slt i32 %55, %56
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.56
  store i32 1, i32* %retval
  br label %return

if.else.60:                                       ; preds = %if.else.56
  %57 = load i32*, i32** %cost.addr, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %cost8x8, align 4
  %sub61 = sub nsw i32 %58, %59
  %60 = load i32, i32* %cost4x4, align 4
  %add62 = add nsw i32 %sub61, %60
  %61 = load i32*, i32** %cost.addr, align 8
  store i32 %add62, i32* %61, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.60, %if.then.59, %if.then.55
  %62 = load i32, i32* %retval
  ret i32 %62
}

declare i32 @distortion4x4(i32*) #1

declare i32 @distortion8x8(i32*) #1

; Function Attrs: nounwind uwtable
define void @IntraChromaPrediction4x4(i32 %uv, i32 %block_x, i32 %block_y) #0 {
entry:
  %uv.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %uv, i32* %uv.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 17
  %4 = load i32, i32* %c_ipred_mode, align 4
  store i32 %4, i32* %mode, align 4
  %5 = load i32, i32* %block_y.addr, align 4
  store i32 %5, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %block_y.addr, align 4
  %add = add nsw i32 %7, 4
  %cmp = icmp slt i32 %6, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %block_x.addr, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 51
  %arrayidx3 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx3, i32 0, i64 %idxprom1
  %11 = bitcast i16* %arrayidx4 to i8*
  %12 = load i32, i32* %block_x.addr, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i32, i32* %mode, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i32, i32* %uv.addr, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 50
  %arrayidx9 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx9, i32 0, i64 %idxprom7
  %arrayidx11 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx10, i32 0, i64 %idxprom6
  %arrayidx12 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx11, i32 0, i64 %idxprom5
  %17 = bitcast i16* %arrayidx12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %17, i64 8, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ChromaPrediction4x4(i32 %uv, i32 %block_x, i32 %block_y, i32 %p_dir, i32 %l0_mode, i32 %l1_mode, i16 signext %l0_ref_idx, i16 signext %l1_ref_idx) #0 {
entry:
  %uv.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %p_dir.addr = alloca i32, align 4
  %l0_mode.addr = alloca i32, align 4
  %l1_mode.addr = alloca i32, align 4
  %l0_ref_idx.addr = alloca i16, align 2
  %l1_ref_idx.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %block_x4 = alloca i32, align 4
  %block_y4 = alloca i32, align 4
  %l0pred = alloca i16*, align 8
  %l1pred = alloca i16*, align 8
  %mv_array = alloca i16******, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %apply_weights = alloca i32, align 4
  %wbp0 = alloca i32, align 4
  %wbp1 = alloca i32, align 4
  %offset = alloca i32, align 4
  %wp_round = alloca i32, align 4
  %weight_denom = alloca i32, align 4
  %wp = alloca i32, align 4
  %offset115 = alloca i32, align 4
  %wp151 = alloca i32, align 4
  %offset158 = alloca i32, align 4
  store i32 %uv, i32* %uv.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %p_dir, i32* %p_dir.addr, align 4
  store i32 %l0_mode, i32* %l0_mode.addr, align 4
  store i32 %l1_mode, i32* %l1_mode.addr, align 4
  store i16 %l0_ref_idx, i16* %l0_ref_idx.addr, align 2
  store i16 %l1_ref_idx, i16* %l1_ref_idx.addr, align 2
  %0 = load i32, i32* %block_x.addr, align 4
  %add = add nsw i32 %0, 4
  store i32 %add, i32* %block_x4, align 4
  %1 = load i32, i32* %block_y.addr, align 4
  %add1 = add nsw i32 %1, 4
  store i32 %add1, i32* %block_y4, align 4
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @ChromaPrediction4x4.l0_pred, i32 0, i32 0), i16** %l0pred, align 8
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @ChromaPrediction4x4.l1_pred, i32 0, i32 0), i16** %l1pred, align 8
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 80
  %3 = load i16******, i16******* %all_mv, align 8
  store i16****** %3, i16******* %mv_array, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 3
  %5 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 61
  %7 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %7, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %8 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %8, i32 0, i32 19
  %9 = load i32, i32* %weighted_pred_flag, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 5
  %11 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 5
  %13 = load i32, i32* %type2, align 4
  %cmp3 = icmp eq i32 %13, 3
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %entry
  %14 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %14, i32 0, i32 20
  %15 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool4 = icmp ne i32 %15, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 5
  %17 = load i32, i32* %type5, align 4
  %cmp6 = icmp eq i32 %17, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %18 = phi i1 [ false, %lor.rhs ], [ %cmp6, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %land.lhs.true
  %19 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ %18, %land.end ]
  %lor.ext = zext i1 %19 to i32
  store i32 %lor.ext, i32* %apply_weights, align 4
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bi_pred_me = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 33
  %21 = load i16, i16* %bi_pred_me, align 2
  %conv = sext i16 %21 to i32
  %tobool7 = icmp ne i32 %conv, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %lor.end
  %22 = load i16, i16* %l0_ref_idx.addr, align 2
  %conv9 = sext i16 %22 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.8
  %23 = load i16, i16* %l1_ref_idx.addr, align 2
  %conv13 = sext i16 %23 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.12
  %24 = load i32, i32* %p_dir.addr, align 4
  %cmp17 = icmp eq i32 %24, 2
  br i1 %cmp17, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %25 = load i32, i32* %l0_mode.addr, align 4
  %cmp20 = icmp eq i32 %25, 1
  br i1 %cmp20, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true.19
  %26 = load i32, i32* %l1_mode.addr, align 4
  %cmp23 = icmp eq i32 %26, 1
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.22
  %27 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bi_pred_me25 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 33
  %28 = load i16, i16* %bi_pred_me25, align 2
  %conv26 = sext i16 %28 to i32
  %cmp27 = icmp eq i32 %conv26, 1
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 81
  %30 = load i16******, i16******* %bipred_mv1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 82
  %32 = load i16******, i16******* %bipred_mv2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16****** [ %30, %cond.true ], [ %32, %cond.false ]
  store i16****** %cond, i16******* %mv_array, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true.22, %land.lhs.true.19, %land.lhs.true.16, %land.lhs.true.12, %land.lhs.true.8, %lor.end
  %33 = load i32, i32* %p_dir.addr, align 4
  %cmp29 = icmp eq i32 %33, -1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  %34 = load i32, i32* %uv.addr, align 4
  %35 = load i32, i32* %block_x.addr, align 4
  %36 = load i32, i32* %block_y.addr, align 4
  call void @IntraChromaPrediction4x4(i32 %34, i32 %35, i32 %36)
  br label %if.end.258

if.end.32:                                        ; preds = %if.end
  %37 = load i32, i32* %p_dir.addr, align 4
  %cmp33 = icmp eq i32 %37, 0
  br i1 %cmp33, label %if.then.38, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.32
  %38 = load i32, i32* %p_dir.addr, align 4
  %cmp36 = icmp eq i32 %38, 2
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false.35, %if.end.32
  %39 = load void (i16*, i32, i32, i16******, i32, i16, i32, i32)*, void (i16*, i32, i32, i16******, i32, i16, i32, i32)** @OneComponentChromaPrediction4x4, align 8
  %40 = load i32, i32* %block_x.addr, align 4
  %41 = load i32, i32* %block_y.addr, align 4
  %42 = load i16******, i16******* %mv_array, align 8
  %43 = load i16, i16* %l0_ref_idx.addr, align 2
  %44 = load i32, i32* %l0_mode.addr, align 4
  %45 = load i32, i32* %uv.addr, align 4
  call void %39(i16* getelementptr inbounds ([16 x i16], [16 x i16]* @ChromaPrediction4x4.l0_pred, i32 0, i32 0), i32 %40, i32 %41, i16****** %42, i32 0, i16 signext %43, i32 %44, i32 %45)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %lor.lhs.false.35
  %46 = load i32, i32* %p_dir.addr, align 4
  %cmp40 = icmp eq i32 %46, 1
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.end.39
  %47 = load i32, i32* %p_dir.addr, align 4
  %cmp43 = icmp eq i32 %47, 2
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.42, %if.end.39
  %48 = load void (i16*, i32, i32, i16******, i32, i16, i32, i32)*, void (i16*, i32, i32, i16******, i32, i16, i32, i32)** @OneComponentChromaPrediction4x4, align 8
  %49 = load i32, i32* %block_x.addr, align 4
  %50 = load i32, i32* %block_y.addr, align 4
  %51 = load i16******, i16******* %mv_array, align 8
  %52 = load i16, i16* %l1_ref_idx.addr, align 2
  %53 = load i32, i32* %l1_mode.addr, align 4
  %54 = load i32, i32* %uv.addr, align 4
  call void %48(i16* getelementptr inbounds ([16 x i16], [16 x i16]* @ChromaPrediction4x4.l1_pred, i32 0, i32 0), i32 %49, i32 %50, i16****** %51, i32 1, i16 signext %52, i32 %53, i32 %54)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %lor.lhs.false.42
  %55 = load i32, i32* %apply_weights, align 4
  %tobool47 = icmp ne i32 %55, 0
  br i1 %tobool47, label %if.then.48, label %if.else.195

if.then.48:                                       ; preds = %if.end.46
  %56 = load i32, i32* %p_dir.addr, align 4
  %cmp49 = icmp eq i32 %56, 2
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.then.48
  %57 = load i32, i32* %uv.addr, align 4
  %add52 = add nsw i32 %57, 1
  %idxprom53 = sext i32 %add52 to i64
  %58 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom54 = sext i16 %58 to i64
  %59 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom55 = sext i16 %59 to i64
  %60 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx56 = getelementptr inbounds i32***, i32**** %60, i64 0
  %61 = load i32***, i32**** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32**, i32*** %61, i64 %idxprom55
  %62 = load i32**, i32*** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32*, i32** %62, i64 %idxprom54
  %63 = load i32*, i32** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %63, i64 %idxprom53
  %64 = load i32, i32* %arrayidx59, align 4
  store i32 %64, i32* %wbp0, align 4
  %65 = load i32, i32* %uv.addr, align 4
  %add60 = add nsw i32 %65, 1
  %idxprom61 = sext i32 %add60 to i64
  %66 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom62 = sext i16 %66 to i64
  %67 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom63 = sext i16 %67 to i64
  %68 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx64 = getelementptr inbounds i32***, i32**** %68, i64 1
  %69 = load i32***, i32**** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i32**, i32*** %69, i64 %idxprom63
  %70 = load i32**, i32*** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %70, i64 %idxprom62
  %71 = load i32*, i32** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %71, i64 %idxprom61
  %72 = load i32, i32* %arrayidx67, align 4
  store i32 %72, i32* %wbp1, align 4
  %73 = load i32, i32* %uv.addr, align 4
  %add68 = add nsw i32 %73, 1
  %idxprom69 = sext i32 %add68 to i64
  %74 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom70 = sext i16 %74 to i64
  %75 = load i32***, i32**** @wp_offset, align 8
  %arrayidx71 = getelementptr inbounds i32**, i32*** %75, i64 0
  %76 = load i32**, i32*** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32*, i32** %76, i64 %idxprom70
  %77 = load i32*, i32** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %77, i64 %idxprom69
  %78 = load i32, i32* %arrayidx73, align 4
  %79 = load i32, i32* %uv.addr, align 4
  %add74 = add nsw i32 %79, 1
  %idxprom75 = sext i32 %add74 to i64
  %80 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom76 = sext i16 %80 to i64
  %81 = load i32***, i32**** @wp_offset, align 8
  %arrayidx77 = getelementptr inbounds i32**, i32*** %81, i64 1
  %82 = load i32**, i32*** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i32*, i32** %82, i64 %idxprom76
  %83 = load i32*, i32** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %83, i64 %idxprom75
  %84 = load i32, i32* %arrayidx79, align 4
  %add80 = add nsw i32 %78, %84
  %add81 = add nsw i32 %add80, 1
  %shr = ashr i32 %add81, 1
  store i32 %shr, i32* %offset, align 4
  %85 = load i32, i32* @wp_chroma_round, align 4
  %mul = mul nsw i32 2, %85
  store i32 %mul, i32* %wp_round, align 4
  %86 = load i32, i32* @luma_log_weight_denom, align 4
  %add82 = add nsw i32 %86, 1
  store i32 %add82, i32* %weight_denom, align 4
  %87 = load i32, i32* %block_y.addr, align 4
  store i32 %87, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.103, %if.then.51
  %88 = load i32, i32* %j, align 4
  %89 = load i32, i32* %block_y4, align 4
  %cmp83 = icmp slt i32 %88, %89
  br i1 %cmp83, label %for.body, label %for.end.105

for.body:                                         ; preds = %for.cond
  %90 = load i32, i32* %block_x.addr, align 4
  store i32 %90, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc, %for.body
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %block_x4, align 4
  %cmp86 = icmp slt i32 %91, %92
  br i1 %cmp86, label %for.body.88, label %for.end

for.body.88:                                      ; preds = %for.cond.85
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 157
  %94 = load i32, i32* %max_imgpel_value_uv, align 4
  %95 = load i32, i32* %wbp0, align 4
  %96 = load i16*, i16** %l0pred, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %96, i32 1
  store i16* %incdec.ptr, i16** %l0pred, align 8
  %97 = load i16, i16* %96, align 2
  %conv89 = zext i16 %97 to i32
  %mul90 = mul nsw i32 %95, %conv89
  %98 = load i32, i32* %wbp1, align 4
  %99 = load i16*, i16** %l1pred, align 8
  %incdec.ptr91 = getelementptr inbounds i16, i16* %99, i32 1
  store i16* %incdec.ptr91, i16** %l1pred, align 8
  %100 = load i16, i16* %99, align 2
  %conv92 = zext i16 %100 to i32
  %mul93 = mul nsw i32 %98, %conv92
  %add94 = add nsw i32 %mul90, %mul93
  %101 = load i32, i32* %wp_round, align 4
  %add95 = add nsw i32 %add94, %101
  %102 = load i32, i32* %weight_denom, align 4
  %shr96 = ashr i32 %add95, %102
  %103 = load i32, i32* %offset, align 4
  %add97 = add nsw i32 %shr96, %103
  %call = call i32 @iClip1(i32 %94, i32 %add97)
  %conv98 = trunc i32 %call to i16
  %104 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %104 to i64
  %105 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %105 to i64
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 51
  %arrayidx101 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx101, i32 0, i64 %idxprom99
  store i16 %conv98, i16* %arrayidx102, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.88
  %107 = load i32, i32* %i, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.85

for.end:                                          ; preds = %for.cond.85
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end
  %108 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %108, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond

for.end.105:                                      ; preds = %for.cond
  br label %if.end.194

if.else:                                          ; preds = %if.then.48
  %109 = load i32, i32* %p_dir.addr, align 4
  %cmp106 = icmp eq i32 %109, 0
  br i1 %cmp106, label %if.then.108, label %if.else.150

if.then.108:                                      ; preds = %if.else
  %110 = load i32, i32* %uv.addr, align 4
  %add109 = add nsw i32 %110, 1
  %idxprom110 = sext i32 %add109 to i64
  %111 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom111 = sext i16 %111 to i64
  %112 = load i32***, i32**** @wp_weight, align 8
  %arrayidx112 = getelementptr inbounds i32**, i32*** %112, i64 0
  %113 = load i32**, i32*** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i32*, i32** %113, i64 %idxprom111
  %114 = load i32*, i32** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %114, i64 %idxprom110
  %115 = load i32, i32* %arrayidx114, align 4
  store i32 %115, i32* %wp, align 4
  %116 = load i32, i32* %uv.addr, align 4
  %add116 = add nsw i32 %116, 1
  %idxprom117 = sext i32 %add116 to i64
  %117 = load i16, i16* %l0_ref_idx.addr, align 2
  %idxprom118 = sext i16 %117 to i64
  %118 = load i32***, i32**** @wp_offset, align 8
  %arrayidx119 = getelementptr inbounds i32**, i32*** %118, i64 0
  %119 = load i32**, i32*** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %119, i64 %idxprom118
  %120 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %120, i64 %idxprom117
  %121 = load i32, i32* %arrayidx121, align 4
  store i32 %121, i32* %offset115, align 4
  %122 = load i32, i32* %block_y.addr, align 4
  store i32 %122, i32* %j, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.147, %if.then.108
  %123 = load i32, i32* %j, align 4
  %124 = load i32, i32* %block_y4, align 4
  %cmp123 = icmp slt i32 %123, %124
  br i1 %cmp123, label %for.body.125, label %for.end.149

for.body.125:                                     ; preds = %for.cond.122
  %125 = load i32, i32* %block_x.addr, align 4
  store i32 %125, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.144, %for.body.125
  %126 = load i32, i32* %i, align 4
  %127 = load i32, i32* %block_x4, align 4
  %cmp127 = icmp slt i32 %126, %127
  br i1 %cmp127, label %for.body.129, label %for.end.146

for.body.129:                                     ; preds = %for.cond.126
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv130 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 157
  %129 = load i32, i32* %max_imgpel_value_uv130, align 4
  %130 = load i32, i32* %wp, align 4
  %131 = load i16*, i16** %l0pred, align 8
  %incdec.ptr131 = getelementptr inbounds i16, i16* %131, i32 1
  store i16* %incdec.ptr131, i16** %l0pred, align 8
  %132 = load i16, i16* %131, align 2
  %conv132 = zext i16 %132 to i32
  %mul133 = mul nsw i32 %130, %conv132
  %133 = load i32, i32* @wp_chroma_round, align 4
  %add134 = add nsw i32 %mul133, %133
  %134 = load i32, i32* @chroma_log_weight_denom, align 4
  %shr135 = ashr i32 %add134, %134
  %135 = load i32, i32* %offset115, align 4
  %add136 = add nsw i32 %shr135, %135
  %call137 = call i32 @iClip1(i32 %129, i32 %add136)
  %conv138 = trunc i32 %call137 to i16
  %136 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %136 to i64
  %137 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %137 to i64
  %138 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr141 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %138, i32 0, i32 51
  %arrayidx142 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr141, i32 0, i64 %idxprom140
  %arrayidx143 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx142, i32 0, i64 %idxprom139
  store i16 %conv138, i16* %arrayidx143, align 2
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.129
  %139 = load i32, i32* %i, align 4
  %inc145 = add nsw i32 %139, 1
  store i32 %inc145, i32* %i, align 4
  br label %for.cond.126

for.end.146:                                      ; preds = %for.cond.126
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.end.146
  %140 = load i32, i32* %j, align 4
  %inc148 = add nsw i32 %140, 1
  store i32 %inc148, i32* %j, align 4
  br label %for.cond.122

for.end.149:                                      ; preds = %for.cond.122
  br label %if.end.193

if.else.150:                                      ; preds = %if.else
  %141 = load i32, i32* %uv.addr, align 4
  %add152 = add nsw i32 %141, 1
  %idxprom153 = sext i32 %add152 to i64
  %142 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom154 = sext i16 %142 to i64
  %143 = load i32***, i32**** @wp_weight, align 8
  %arrayidx155 = getelementptr inbounds i32**, i32*** %143, i64 1
  %144 = load i32**, i32*** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds i32*, i32** %144, i64 %idxprom154
  %145 = load i32*, i32** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %145, i64 %idxprom153
  %146 = load i32, i32* %arrayidx157, align 4
  store i32 %146, i32* %wp151, align 4
  %147 = load i32, i32* %uv.addr, align 4
  %add159 = add nsw i32 %147, 1
  %idxprom160 = sext i32 %add159 to i64
  %148 = load i16, i16* %l1_ref_idx.addr, align 2
  %idxprom161 = sext i16 %148 to i64
  %149 = load i32***, i32**** @wp_offset, align 8
  %arrayidx162 = getelementptr inbounds i32**, i32*** %149, i64 1
  %150 = load i32**, i32*** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i32*, i32** %150, i64 %idxprom161
  %151 = load i32*, i32** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %151, i64 %idxprom160
  %152 = load i32, i32* %arrayidx164, align 4
  store i32 %152, i32* %offset158, align 4
  %153 = load i32, i32* %block_y.addr, align 4
  store i32 %153, i32* %j, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.190, %if.else.150
  %154 = load i32, i32* %j, align 4
  %155 = load i32, i32* %block_y4, align 4
  %cmp166 = icmp slt i32 %154, %155
  br i1 %cmp166, label %for.body.168, label %for.end.192

for.body.168:                                     ; preds = %for.cond.165
  %156 = load i32, i32* %block_x.addr, align 4
  store i32 %156, i32* %i, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.187, %for.body.168
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %block_x4, align 4
  %cmp170 = icmp slt i32 %157, %158
  br i1 %cmp170, label %for.body.172, label %for.end.189

for.body.172:                                     ; preds = %for.cond.169
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv173 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 157
  %160 = load i32, i32* %max_imgpel_value_uv173, align 4
  %161 = load i32, i32* %wp151, align 4
  %162 = load i16*, i16** %l1pred, align 8
  %incdec.ptr174 = getelementptr inbounds i16, i16* %162, i32 1
  store i16* %incdec.ptr174, i16** %l1pred, align 8
  %163 = load i16, i16* %162, align 2
  %conv175 = zext i16 %163 to i32
  %mul176 = mul nsw i32 %161, %conv175
  %164 = load i32, i32* @wp_chroma_round, align 4
  %add177 = add nsw i32 %mul176, %164
  %165 = load i32, i32* @chroma_log_weight_denom, align 4
  %shr178 = ashr i32 %add177, %165
  %166 = load i32, i32* %offset158, align 4
  %add179 = add nsw i32 %shr178, %166
  %call180 = call i32 @iClip1(i32 %160, i32 %add179)
  %conv181 = trunc i32 %call180 to i16
  %167 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %167 to i64
  %168 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %168 to i64
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr184 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 51
  %arrayidx185 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr184, i32 0, i64 %idxprom183
  %arrayidx186 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx185, i32 0, i64 %idxprom182
  store i16 %conv181, i16* %arrayidx186, align 2
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.172
  %170 = load i32, i32* %i, align 4
  %inc188 = add nsw i32 %170, 1
  store i32 %inc188, i32* %i, align 4
  br label %for.cond.169

for.end.189:                                      ; preds = %for.cond.169
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.end.189
  %171 = load i32, i32* %j, align 4
  %inc191 = add nsw i32 %171, 1
  store i32 %inc191, i32* %j, align 4
  br label %for.cond.165

for.end.192:                                      ; preds = %for.cond.165
  br label %if.end.193

if.end.193:                                       ; preds = %for.end.192, %for.end.149
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %for.end.105
  br label %if.end.258

if.else.195:                                      ; preds = %if.end.46
  %172 = load i32, i32* %p_dir.addr, align 4
  %cmp196 = icmp eq i32 %172, 2
  br i1 %cmp196, label %if.then.198, label %if.else.226

if.then.198:                                      ; preds = %if.else.195
  %173 = load i32, i32* %block_y.addr, align 4
  store i32 %173, i32* %j, align 4
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.223, %if.then.198
  %174 = load i32, i32* %j, align 4
  %175 = load i32, i32* %block_y4, align 4
  %cmp200 = icmp slt i32 %174, %175
  br i1 %cmp200, label %for.body.202, label %for.end.225

for.body.202:                                     ; preds = %for.cond.199
  %176 = load i32, i32* %block_x.addr, align 4
  store i32 %176, i32* %i, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.220, %for.body.202
  %177 = load i32, i32* %i, align 4
  %178 = load i32, i32* %block_x4, align 4
  %cmp204 = icmp slt i32 %177, %178
  br i1 %cmp204, label %for.body.206, label %for.end.222

for.body.206:                                     ; preds = %for.cond.203
  %179 = load i16*, i16** %l0pred, align 8
  %incdec.ptr207 = getelementptr inbounds i16, i16* %179, i32 1
  store i16* %incdec.ptr207, i16** %l0pred, align 8
  %180 = load i16, i16* %179, align 2
  %conv208 = zext i16 %180 to i32
  %181 = load i16*, i16** %l1pred, align 8
  %incdec.ptr209 = getelementptr inbounds i16, i16* %181, i32 1
  store i16* %incdec.ptr209, i16** %l1pred, align 8
  %182 = load i16, i16* %181, align 2
  %conv210 = zext i16 %182 to i32
  %add211 = add nsw i32 %conv208, %conv210
  %add212 = add nsw i32 %add211, 1
  %shr213 = ashr i32 %add212, 1
  %conv214 = trunc i32 %shr213 to i16
  %183 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %183 to i64
  %184 = load i32, i32* %j, align 4
  %idxprom216 = sext i32 %184 to i64
  %185 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr217 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %185, i32 0, i32 51
  %arrayidx218 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr217, i32 0, i64 %idxprom216
  %arrayidx219 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx218, i32 0, i64 %idxprom215
  store i16 %conv214, i16* %arrayidx219, align 2
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.body.206
  %186 = load i32, i32* %i, align 4
  %inc221 = add nsw i32 %186, 1
  store i32 %inc221, i32* %i, align 4
  br label %for.cond.203

for.end.222:                                      ; preds = %for.cond.203
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.end.222
  %187 = load i32, i32* %j, align 4
  %inc224 = add nsw i32 %187, 1
  store i32 %inc224, i32* %j, align 4
  br label %for.cond.199

for.end.225:                                      ; preds = %for.cond.199
  br label %if.end.257

if.else.226:                                      ; preds = %if.else.195
  %188 = load i32, i32* %p_dir.addr, align 4
  %cmp227 = icmp eq i32 %188, 0
  br i1 %cmp227, label %if.then.229, label %if.else.242

if.then.229:                                      ; preds = %if.else.226
  %189 = load i32, i32* %block_y.addr, align 4
  store i32 %189, i32* %j, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.239, %if.then.229
  %190 = load i32, i32* %j, align 4
  %191 = load i32, i32* %block_y4, align 4
  %cmp231 = icmp slt i32 %190, %191
  br i1 %cmp231, label %for.body.233, label %for.end.241

for.body.233:                                     ; preds = %for.cond.230
  %192 = load i32, i32* %block_x.addr, align 4
  %idxprom234 = sext i32 %192 to i64
  %193 = load i32, i32* %j, align 4
  %idxprom235 = sext i32 %193 to i64
  %194 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr236 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %194, i32 0, i32 51
  %arrayidx237 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr236, i32 0, i64 %idxprom235
  %arrayidx238 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx237, i32 0, i64 %idxprom234
  %195 = bitcast i16* %arrayidx238 to i8*
  %196 = load i16*, i16** %l0pred, align 8
  %197 = bitcast i16* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %195, i8* %197, i64 8, i32 2, i1 false)
  %198 = load i16*, i16** %l0pred, align 8
  %add.ptr = getelementptr inbounds i16, i16* %198, i64 4
  store i16* %add.ptr, i16** %l0pred, align 8
  br label %for.inc.239

for.inc.239:                                      ; preds = %for.body.233
  %199 = load i32, i32* %j, align 4
  %inc240 = add nsw i32 %199, 1
  store i32 %inc240, i32* %j, align 4
  br label %for.cond.230

for.end.241:                                      ; preds = %for.cond.230
  br label %if.end.256

if.else.242:                                      ; preds = %if.else.226
  %200 = load i32, i32* %block_y.addr, align 4
  store i32 %200, i32* %j, align 4
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.253, %if.else.242
  %201 = load i32, i32* %j, align 4
  %202 = load i32, i32* %block_y4, align 4
  %cmp244 = icmp slt i32 %201, %202
  br i1 %cmp244, label %for.body.246, label %for.end.255

for.body.246:                                     ; preds = %for.cond.243
  %203 = load i32, i32* %block_x.addr, align 4
  %idxprom247 = sext i32 %203 to i64
  %204 = load i32, i32* %j, align 4
  %idxprom248 = sext i32 %204 to i64
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr249 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 51
  %arrayidx250 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr249, i32 0, i64 %idxprom248
  %arrayidx251 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx250, i32 0, i64 %idxprom247
  %206 = bitcast i16* %arrayidx251 to i8*
  %207 = load i16*, i16** %l1pred, align 8
  %208 = bitcast i16* %207 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* %208, i64 8, i32 2, i1 false)
  %209 = load i16*, i16** %l1pred, align 8
  %add.ptr252 = getelementptr inbounds i16, i16* %209, i64 4
  store i16* %add.ptr252, i16** %l1pred, align 8
  br label %for.inc.253

for.inc.253:                                      ; preds = %for.body.246
  %210 = load i32, i32* %j, align 4
  %inc254 = add nsw i32 %210, 1
  store i32 %inc254, i32* %j, align 4
  br label %for.cond.243

for.end.255:                                      ; preds = %for.cond.243
  br label %if.end.256

if.end.256:                                       ; preds = %for.end.255, %for.end.241
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %for.end.225
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.31, %if.end.257, %if.end.194
  ret void
}

; Function Attrs: nounwind uwtable
define void @ChromaResidualCoding(i32* %cr_cbp) #0 {
entry:
  %cr_cbp.addr = alloca i32*, align 8
  %uv = alloca i32, align 4
  %block8 = alloca i32, align 4
  %block_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %l0_mode = alloca i32, align 4
  %l1_mode = alloca i32, align 4
  %p_dir = alloca i16, align 2
  %refframe = alloca i16, align 2
  %bw_ref = alloca i16, align 2
  %skipped = alloca i32, align 4
  %yuv = alloca i32, align 4
  store i32* %cr_cbp, i32** %cr_cbp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 8
  %4 = load i32, i32* %mb_type, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 5
  %6 = load i32, i32* %type, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 5
  %8 = load i32, i32* %type2, align 4
  %cmp3 = icmp eq i32 %8, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %10 = phi i1 [ false, %entry ], [ %9, %lor.end ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %skipped, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 160
  %12 = load i32, i32* %yuv_format, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %yuv, align 4
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMCBuffer = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 197
  %14 = load i32, i32* %ChromaMCBuffer, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  store void (i16*, i32, i32, i16******, i32, i16, i32, i32)* @OneComponentChromaPrediction4x4_retrieve, void (i16*, i32, i32, i16******, i32, i16, i32, i32)** @OneComponentChromaPrediction4x4, align 8
  br label %if.end

if.else:                                          ; preds = %land.end
  store void (i16*, i32, i32, i16******, i32, i16, i32, i32)* @OneComponentChromaPrediction4x4_regenerate, void (i16*, i32, i32, i16******, i32, i16, i32, i32)** @OneComponentChromaPrediction4x4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32*, i32** %cr_cbp.addr, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %uv, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.167, %if.end
  %16 = load i32, i32* %uv, align 4
  %cmp4 = icmp slt i32 %16, 2
  br i1 %cmp4, label %for.body, label %for.end.169

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %block8, align 4
  store i32 0, i32* %block_y, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.18, %for.body
  %17 = load i32, i32* %block_y, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 163
  %19 = load i32, i32* %mb_cr_size_y, align 4
  %cmp6 = icmp slt i32 %17, %19
  br i1 %cmp6, label %for.body.7, label %for.end.20

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %block_x, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %20 = load i32, i32* %block_x, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 162
  %22 = load i32, i32* %mb_cr_size_x, align 4
  %cmp9 = icmp slt i32 %20, %22
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %23 = load i32, i32* %block_x, align 4
  %shr = ashr i32 %23, 2
  %idxprom11 = sext i32 %shr to i64
  %24 = load i32, i32* %block_y, align 4
  %shr12 = ashr i32 %24, 2
  %idxprom13 = sext i32 %shr12 to i64
  %25 = load i32, i32* %yuv, align 4
  %idxprom14 = sext i32 %25 to i64
  %arrayidx15 = getelementptr inbounds [3 x [4 x [4 x i32]]], [3 x [4 x [4 x i32]]]* @ChromaResidualCoding.block8x8_idx, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx15, i32 0, i64 %idxprom13
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx16, i32 0, i64 %idxprom11
  %26 = load i32, i32* %arrayidx17, align 4
  store i32 %26, i32* %block8, align 4
  %27 = load i32, i32* %block8, align 4
  call void @SetModesAndRefframe(i32 %27, i16* %p_dir, i32* %l0_mode, i32* %l1_mode, i16* %refframe, i16* %bw_ref)
  %28 = load i32, i32* %uv, align 4
  %29 = load i32, i32* %block_x, align 4
  %30 = load i32, i32* %block_y, align 4
  %31 = load i16, i16* %p_dir, align 2
  %conv = sext i16 %31 to i32
  %32 = load i32, i32* %l0_mode, align 4
  %33 = load i32, i32* %l1_mode, align 4
  %34 = load i16, i16* %refframe, align 2
  %35 = load i16, i16* %bw_ref, align 2
  call void @ChromaPrediction4x4(i32 %28, i32 %29, i32 %30, i32 %conv, i32 %32, i32 %33, i16 signext %34, i16 signext %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %36 = load i32, i32* %block_x, align 4
  %add = add nsw i32 %36, 4
  store i32 %add, i32* %block_x, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %37 = load i32, i32* %block_y, align 4
  %add19 = add nsw i32 %37, 4
  store i32 %add19, i32* %block_y, align 4
  br label %for.cond.5

for.end.20:                                       ; preds = %for.cond.5
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NoResidueDirect = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 97
  %39 = load i32, i32* %NoResidueDirect, align 4
  %tobool21 = icmp ne i32 %39, 0
  br i1 %tobool21, label %if.then.22, label %if.else.41

if.then.22:                                       ; preds = %for.end.20
  store i32 0, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.39, %if.then.22
  %40 = load i32, i32* %j, align 4
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 163
  %42 = load i32, i32* %mb_cr_size_y24, align 4
  %cmp25 = icmp slt i32 %40, %42
  br i1 %cmp25, label %for.body.27, label %for.end.40

for.body.27:                                      ; preds = %for.cond.23
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 41
  %44 = load i32, i32* %pix_c_x, align 4
  %idxprom28 = sext i32 %44 to i64
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 42
  %46 = load i32, i32* %pix_c_y, align 4
  %47 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %46, %47
  %idxprom30 = sext i32 %add29 to i64
  %48 = load i32, i32* %uv, align 4
  %idxprom31 = sext i32 %48 to i64
  %49 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 33
  %50 = load i16***, i16**** %imgUV, align 8
  %arrayidx32 = getelementptr inbounds i16**, i16*** %50, i64 %idxprom31
  %51 = load i16**, i16*** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i16*, i16** %51, i64 %idxprom30
  %52 = load i16*, i16** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %52, i64 %idxprom28
  %53 = bitcast i16* %arrayidx34 to i8*
  %54 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %54 to i64
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 51
  %arrayidx36 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom35
  %56 = bitcast [16 x i16]* %arrayidx36 to i8*
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 162
  %58 = load i32, i32* %mb_cr_size_x37, align 4
  %conv38 = sext i32 %58 to i64
  %mul = mul i64 %conv38, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %56, i64 %mul, i32 2, i1 false)
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.27
  %59 = load i32, i32* %j, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.23

for.end.40:                                       ; preds = %for.cond.23
  br label %if.end.123

if.else.41:                                       ; preds = %for.end.20
  %60 = load i32, i32* %skipped, align 4
  %tobool42 = icmp ne i32 %60, 0
  br i1 %tobool42, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %if.else.41
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 5
  %62 = load i32, i32* %type43, align 4
  %cmp44 = icmp eq i32 %62, 3
  br i1 %cmp44, label %if.then.46, label %if.else.56

if.then.46:                                       ; preds = %land.lhs.true
  store i32 0, i32* %j, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.53, %if.then.46
  %63 = load i32, i32* %j, align 4
  %cmp48 = icmp slt i32 %63, 8
  br i1 %cmp48, label %for.body.50, label %for.end.55

for.body.50:                                      ; preds = %for.cond.47
  %64 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %64 to i64
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 52
  %arrayidx52 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7, i32 0, i64 %idxprom51
  %66 = bitcast [16 x i32]* %arrayidx52 to i8*
  call void @llvm.memset.p0i8.i64(i8* %66, i8 0, i64 32, i32 4, i1 false)
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.50
  %67 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %67, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond.47

for.end.55:                                       ; preds = %for.cond.47
  br label %if.end.122

if.else.56:                                       ; preds = %land.lhs.true, %if.else.41
  %68 = load i32, i32* %skipped, align 4
  %tobool57 = icmp ne i32 %68, 0
  br i1 %tobool57, label %if.then.58, label %if.else.83

if.then.58:                                       ; preds = %if.else.56
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.80, %if.then.58
  %69 = load i32, i32* %j, align 4
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 163
  %71 = load i32, i32* %mb_cr_size_y60, align 4
  %cmp61 = icmp slt i32 %69, %71
  br i1 %cmp61, label %for.body.63, label %for.end.82

for.body.63:                                      ; preds = %for.cond.59
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 41
  %73 = load i32, i32* %pix_c_x64, align 4
  %idxprom65 = sext i32 %73 to i64
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 42
  %75 = load i32, i32* %pix_c_y66, align 4
  %76 = load i32, i32* %j, align 4
  %add67 = add nsw i32 %75, %76
  %idxprom68 = sext i32 %add67 to i64
  %77 = load i32, i32* %uv, align 4
  %idxprom69 = sext i32 %77 to i64
  %78 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV70 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %78, i32 0, i32 33
  %79 = load i16***, i16**** %imgUV70, align 8
  %arrayidx71 = getelementptr inbounds i16**, i16*** %79, i64 %idxprom69
  %80 = load i16**, i16*** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i16*, i16** %80, i64 %idxprom68
  %81 = load i16*, i16** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i16, i16* %81, i64 %idxprom65
  %82 = bitcast i16* %arrayidx73 to i8*
  %83 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %83 to i64
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 51
  %arrayidx76 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr75, i32 0, i64 %idxprom74
  %85 = bitcast [16 x i16]* %arrayidx76 to i8*
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x77 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 162
  %87 = load i32, i32* %mb_cr_size_x77, align 4
  %conv78 = sext i32 %87 to i64
  %mul79 = mul i64 %conv78, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %85, i64 %mul79, i32 2, i1 false)
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.63
  %88 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %88, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond.59

for.end.82:                                       ; preds = %for.cond.59
  br label %if.end.121

if.else.83:                                       ; preds = %if.else.56
  store i32 0, i32* %j, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.118, %if.else.83
  %89 = load i32, i32* %j, align 4
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y85 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 163
  %91 = load i32, i32* %mb_cr_size_y85, align 4
  %cmp86 = icmp slt i32 %89, %91
  br i1 %cmp86, label %for.body.88, label %for.end.120

for.body.88:                                      ; preds = %for.cond.84
  store i32 0, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.115, %for.body.88
  %92 = load i32, i32* %i, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x90 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 162
  %94 = load i32, i32* %mb_cr_size_x90, align 4
  %cmp91 = icmp slt i32 %92, %94
  br i1 %cmp91, label %for.body.93, label %for.end.117

for.body.93:                                      ; preds = %for.cond.89
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 45
  %96 = load i32, i32* %opix_c_x, align 4
  %97 = load i32, i32* %i, align 4
  %add94 = add nsw i32 %96, %97
  %idxprom95 = sext i32 %add94 to i64
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 46
  %99 = load i32, i32* %opix_c_y, align 4
  %100 = load i32, i32* %j, align 4
  %add96 = add nsw i32 %99, %100
  %idxprom97 = sext i32 %add96 to i64
  %101 = load i32, i32* %uv, align 4
  %idxprom98 = sext i32 %101 to i64
  %102 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx99 = getelementptr inbounds i16**, i16*** %102, i64 %idxprom98
  %103 = load i16**, i16*** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i16*, i16** %103, i64 %idxprom97
  %104 = load i16*, i16** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %104, i64 %idxprom95
  %105 = load i16, i16* %arrayidx101, align 2
  %conv102 = zext i16 %105 to i32
  %106 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %106 to i64
  %107 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %107 to i64
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 51
  %arrayidx106 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr105, i32 0, i64 %idxprom104
  %arrayidx107 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx106, i32 0, i64 %idxprom103
  %109 = load i16, i16* %arrayidx107, align 2
  %conv108 = zext i16 %109 to i32
  %sub109 = sub nsw i32 %conv102, %conv108
  %110 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %110 to i64
  %111 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %111 to i64
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 52
  %arrayidx113 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7112, i32 0, i64 %idxprom111
  %arrayidx114 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx113, i32 0, i64 %idxprom110
  store i32 %sub109, i32* %arrayidx114, align 4
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.93
  %113 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %113, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.89

for.end.117:                                      ; preds = %for.cond.89
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.end.117
  %114 = load i32, i32* %j, align 4
  %inc119 = add nsw i32 %114, 1
  store i32 %inc119, i32* %j, align 4
  br label %for.cond.84

for.end.120:                                      ; preds = %for.cond.84
  br label %if.end.121

if.end.121:                                       ; preds = %for.end.120, %for.end.82
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %for.end.55
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %for.end.40
  %115 = load i32, i32* %skipped, align 4
  %tobool124 = icmp ne i32 %115, 0
  br i1 %tobool124, label %land.lhs.true.125, label %if.else.136

land.lhs.true.125:                                ; preds = %if.end.123
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 5
  %117 = load i32, i32* %type126, align 4
  %cmp127 = icmp eq i32 %117, 3
  br i1 %cmp127, label %if.then.129, label %if.else.136

if.then.129:                                      ; preds = %land.lhs.true.125
  %118 = load i32, i32* @si_frame_indicator, align 4
  %tobool130 = icmp ne i32 %118, 0
  br i1 %tobool130, label %if.then.132, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.129
  %119 = load i32, i32* @sp2_frame_indicator, align 4
  %tobool131 = icmp ne i32 %119, 0
  br i1 %tobool131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %lor.lhs.false, %if.then.129
  %120 = load i32, i32* %uv, align 4
  %121 = load i32*, i32** %cr_cbp.addr, align 8
  %122 = load i32, i32* %121, align 4
  %call = call i32 @dct_chroma_sp2(i32 %120, i32 %122)
  %123 = load i32*, i32** %cr_cbp.addr, align 8
  store i32 %call, i32* %123, align 4
  br label %if.end.135

if.else.133:                                      ; preds = %lor.lhs.false
  %124 = load i32, i32* %uv, align 4
  %125 = load i32*, i32** %cr_cbp.addr, align 8
  %126 = load i32, i32* %125, align 4
  %call134 = call i32 @dct_chroma_sp(i32 %124, i32 %126)
  %127 = load i32*, i32** %cr_cbp.addr, align 8
  store i32 %call134, i32* %127, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.133, %if.then.132
  br label %if.end.166

if.else.136:                                      ; preds = %land.lhs.true.125, %if.end.123
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NoResidueDirect137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 97
  %129 = load i32, i32* %NoResidueDirect137, align 4
  %tobool138 = icmp ne i32 %129, 0
  br i1 %tobool138, label %if.end.165, label %land.lhs.true.139

land.lhs.true.139:                                ; preds = %if.else.136
  %130 = load i32, i32* %skipped, align 4
  %tobool140 = icmp ne i32 %130, 0
  br i1 %tobool140, label %if.end.165, label %if.then.141

if.then.141:                                      ; preds = %land.lhs.true.139
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type142 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 5
  %132 = load i32, i32* %type142, align 4
  %cmp143 = icmp ne i32 %132, 3
  br i1 %cmp143, label %if.then.153, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %if.then.141
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr146 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 3
  %134 = load i32, i32* %current_mb_nr146, align 4
  %idxprom147 = sext i32 %134 to i64
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data148 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 61
  %136 = load %struct.macroblock*, %struct.macroblock** %mb_data148, align 8
  %arrayidx149 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %136, i64 %idxprom147
  %mb_type150 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx149, i32 0, i32 8
  %137 = load i32, i32* %mb_type150, align 4
  %cmp151 = icmp eq i32 %137, 10
  br i1 %cmp151, label %if.then.153, label %if.else.155

if.then.153:                                      ; preds = %lor.lhs.false.145, %if.then.141
  %138 = load i32, i32* %uv, align 4
  %139 = load i32*, i32** %cr_cbp.addr, align 8
  %140 = load i32, i32* %139, align 4
  %call154 = call i32 @dct_chroma(i32 %138, i32 %140)
  %141 = load i32*, i32** %cr_cbp.addr, align 8
  store i32 %call154, i32* %141, align 4
  br label %if.end.164

if.else.155:                                      ; preds = %lor.lhs.false.145
  %142 = load i32, i32* @si_frame_indicator, align 4
  %tobool156 = icmp ne i32 %142, 0
  br i1 %tobool156, label %if.then.159, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %if.else.155
  %143 = load i32, i32* @sp2_frame_indicator, align 4
  %tobool158 = icmp ne i32 %143, 0
  br i1 %tobool158, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %lor.lhs.false.157, %if.else.155
  %144 = load i32, i32* %uv, align 4
  %145 = load i32*, i32** %cr_cbp.addr, align 8
  %146 = load i32, i32* %145, align 4
  %call160 = call i32 @dct_chroma_sp2(i32 %144, i32 %146)
  %147 = load i32*, i32** %cr_cbp.addr, align 8
  store i32 %call160, i32* %147, align 4
  br label %if.end.163

if.else.161:                                      ; preds = %lor.lhs.false.157
  %148 = load i32, i32* %uv, align 4
  %149 = load i32*, i32** %cr_cbp.addr, align 8
  %150 = load i32, i32* %149, align 4
  %call162 = call i32 @dct_chroma_sp(i32 %148, i32 %150)
  %151 = load i32*, i32** %cr_cbp.addr, align 8
  store i32 %call162, i32* %151, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.161, %if.then.159
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.153
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %land.lhs.true.139, %if.else.136
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.135
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166
  %152 = load i32, i32* %uv, align 4
  %inc168 = add nsw i32 %152, 1
  store i32 %inc168, i32* %uv, align 4
  br label %for.cond

for.end.169:                                      ; preds = %for.cond
  %153 = load i32*, i32** %cr_cbp.addr, align 8
  %154 = load i32, i32* %153, align 4
  %shl = shl i32 %154, 4
  %155 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr170 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %155, i32 0, i32 3
  %156 = load i32, i32* %current_mb_nr170, align 4
  %idxprom171 = sext i32 %156 to i64
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data172 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 61
  %158 = load %struct.macroblock*, %struct.macroblock** %mb_data172, align 8
  %arrayidx173 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %158, i64 %idxprom171
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx173, i32 0, i32 12
  %159 = load i32, i32* %cbp, align 4
  %add174 = add nsw i32 %159, %shl
  store i32 %add174, i32* %cbp, align 4
  ret void
}

declare i32 @dct_chroma_sp2(i32, i32) #1

declare i32 @dct_chroma_sp(i32, i32) #1

declare i32 @dct_chroma(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @IntraChromaPrediction(i32* %mb_up, i32* %mb_left, i32* %mb_up_left) #0 {
entry:
  %mb_up.addr = alloca i32*, align 8
  %mb_left.addr = alloca i32*, align 8
  %mb_up_left.addr = alloca i32*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %s = alloca i32, align 4
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s3 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %image = alloca i16**, align 8
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %mb_available_up = alloca i32, align 4
  %mb_available_left = alloca [2 x i32], align 4
  %mb_available_up_left = alloca i32, align 4
  %ih = alloca i32, align 4
  %iv = alloca i32, align 4
  %ib = alloca i32, align 4
  %ic = alloca i32, align 4
  %iaa = alloca i32, align 4
  %uv = alloca i32, align 4
  %hline = alloca [16 x i16], align 16
  %vline = alloca [16 x i16], align 16
  %mode = alloca i32, align 4
  %best_mode = alloca i32, align 4
  %cost = alloca i32, align 4
  %min_cost = alloca i32, align 4
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [17 x %struct.pix_pos], align 16
  %cr_MB_x = alloca i32, align 4
  %cr_MB_y = alloca i32, align 4
  %blk_x = alloca i32, align 4
  %blk_y = alloca i32, align 4
  %b8 = alloca i32, align 4
  %b4 = alloca i32, align 4
  %yuv = alloca i32, align 4
  store i32* %mb_up, i32** %mb_up.addr, align 8
  store i32* %mb_left, i32** %mb_left.addr, align 8
  store i32* %mb_up_left, i32** %mb_up_left.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 3
  %5 = load i32, i32* %current_mb_nr1, align 4
  store i32 %5, i32* %mb_nr, align 4
  store i32 0, i32* %best_mode, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 162
  %7 = load i32, i32* %mb_cr_size_x, align 4
  store i32 %7, i32* %cr_MB_x, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 163
  %9 = load i32, i32* %mb_cr_size_y, align 4
  store i32 %9, i32* %cr_MB_y, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 160
  %11 = load i32, i32* %yuv_format, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* %yuv, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %cr_MB_y, align 4
  %add = add nsw i32 %13, 1
  %cmp = icmp slt i32 %12, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %15 = load i32, i32* %mb_nr, align 4
  %16 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %16, 1
  %17 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %17 to i64
  %arrayidx4 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom3
  call void %14(i32 %15, i32 -1, i32 %sub2, i32 1, %struct.pix_pos* %arrayidx4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %20 = load i32, i32* %mb_nr, align 4
  call void %19(i32 %20, i32 0, i32 -1, i32 1, %struct.pix_pos* %up)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %21 = load i32, i32* %available, align 4
  store i32 %21, i32* %mb_available_up, align 4
  %arrayidx5 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %available6 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx5, i32 0, i32 0
  %22 = load i32, i32* %available6, align 4
  store i32 %22, i32* %mb_available_up_left, align 4
  %arrayidx7 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 1
  %available8 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx7, i32 0, i32 0
  %23 = load i32, i32* %available8, align 4
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  store i32 %23, i32* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  store i32 %23, i32* %arrayidx10, align 4
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 23
  %25 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %available11 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %26 = load i32, i32* %available11, align 4
  %tobool12 = icmp ne i32 %26, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 1
  %27 = load i32, i32* %mb_addr, align 4
  %idxprom13 = sext i32 %27 to i64
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 63
  %29 = load i32*, i32** %intra_block, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %29, i64 %idxprom13
  %30 = load i32, i32* %arrayidx14, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %mb_available_up, align 4
  store i32 0, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  store i32 1, i32* %arrayidx15, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.36, %cond.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %cr_MB_y, align 4
  %shr = ashr i32 %32, 1
  %cmp17 = icmp slt i32 %31, %shr
  br i1 %cmp17, label %for.body.18, label %for.end.38

for.body.18:                                      ; preds = %for.cond.16
  %33 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %33, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom20
  %available22 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx21, i32 0, i32 0
  %34 = load i32, i32* %available22, align 4
  %tobool23 = icmp ne i32 %34, 0
  br i1 %tobool23, label %cond.true.24, label %cond.false.32

cond.true.24:                                     ; preds = %for.body.18
  %35 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %35, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom26
  %mb_addr28 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx27, i32 0, i32 1
  %36 = load i32, i32* %mb_addr28, align 4
  %idxprom29 = sext i32 %36 to i64
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 63
  %38 = load i32*, i32** %intra_block30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %38, i64 %idxprom29
  %39 = load i32, i32* %arrayidx31, align 4
  br label %cond.end.33

cond.false.32:                                    ; preds = %for.body.18
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.24
  %cond34 = phi i32 [ %39, %cond.true.24 ], [ 0, %cond.false.32 ]
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %40 = load i32, i32* %arrayidx35, align 4
  %and = and i32 %40, %cond34
  store i32 %and, i32* %arrayidx35, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %cond.end.33
  %41 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %41, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.16

for.end.38:                                       ; preds = %for.cond.16
  %42 = load i32, i32* %cr_MB_y, align 4
  %shr39 = ashr i32 %42, 1
  store i32 %shr39, i32* %i, align 4
  %arrayidx40 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  store i32 1, i32* %arrayidx40, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.62, %for.end.38
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %cr_MB_y, align 4
  %cmp42 = icmp slt i32 %43, %44
  br i1 %cmp42, label %for.body.43, label %for.end.64

for.body.43:                                      ; preds = %for.cond.41
  %45 = load i32, i32* %i, align 4
  %add44 = add nsw i32 %45, 1
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom45
  %available47 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx46, i32 0, i32 0
  %46 = load i32, i32* %available47, align 4
  %tobool48 = icmp ne i32 %46, 0
  br i1 %tobool48, label %cond.true.49, label %cond.false.57

cond.true.49:                                     ; preds = %for.body.43
  %47 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %47, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom51
  %mb_addr53 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx52, i32 0, i32 1
  %48 = load i32, i32* %mb_addr53, align 4
  %idxprom54 = sext i32 %48 to i64
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 63
  %50 = load i32*, i32** %intra_block55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %50, i64 %idxprom54
  %51 = load i32, i32* %arrayidx56, align 4
  br label %cond.end.58

cond.false.57:                                    ; preds = %for.body.43
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.49
  %cond59 = phi i32 [ %51, %cond.true.49 ], [ 0, %cond.false.57 ]
  %arrayidx60 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %52 = load i32, i32* %arrayidx60, align 4
  %and61 = and i32 %52, %cond59
  store i32 %and61, i32* %arrayidx60, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %cond.end.58
  %53 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %53, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.41

for.end.64:                                       ; preds = %for.cond.41
  %arrayidx65 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %available66 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx65, i32 0, i32 0
  %54 = load i32, i32* %available66, align 4
  %tobool67 = icmp ne i32 %54, 0
  br i1 %tobool67, label %cond.true.68, label %cond.false.74

cond.true.68:                                     ; preds = %for.end.64
  %arrayidx69 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %mb_addr70 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx69, i32 0, i32 1
  %55 = load i32, i32* %mb_addr70, align 4
  %idxprom71 = sext i32 %55 to i64
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block72 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 63
  %57 = load i32*, i32** %intra_block72, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %57, i64 %idxprom71
  %58 = load i32, i32* %arrayidx73, align 4
  br label %cond.end.75

cond.false.74:                                    ; preds = %for.end.64
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.68
  %cond76 = phi i32 [ %58, %cond.true.68 ], [ 0, %cond.false.74 ]
  store i32 %cond76, i32* %mb_available_up_left, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.75, %for.end
  %59 = load i32*, i32** %mb_up.addr, align 8
  %tobool77 = icmp ne i32* %59, null
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end
  %60 = load i32, i32* %mb_available_up, align 4
  %61 = load i32*, i32** %mb_up.addr, align 8
  store i32 %60, i32* %61, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end
  %62 = load i32*, i32** %mb_left.addr, align 8
  %tobool80 = icmp ne i32* %62, null
  br i1 %tobool80, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %if.end.79
  %arrayidx82 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %63 = load i32, i32* %arrayidx82, align 4
  %tobool83 = icmp ne i32 %63, 0
  br i1 %tobool83, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.81
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %64 = load i32, i32* %arrayidx84, align 4
  %tobool85 = icmp ne i32 %64, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.81
  %65 = phi i1 [ false, %if.then.81 ], [ %tobool85, %land.rhs ]
  %land.ext = zext i1 %65 to i32
  %66 = load i32*, i32** %mb_left.addr, align 8
  store i32 %land.ext, i32* %66, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %land.end, %if.end.79
  %67 = load i32*, i32** %mb_up_left.addr, align 8
  %tobool87 = icmp ne i32* %67, null
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.86
  %68 = load i32, i32* %mb_available_up_left, align 4
  %69 = load i32*, i32** %mb_up_left.addr, align 8
  store i32 %68, i32* %69, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.86
  store i32 0, i32* %uv, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.630, %if.end.89
  %70 = load i32, i32* %uv, align 4
  %cmp91 = icmp slt i32 %70, 2
  br i1 %cmp91, label %for.body.92, label %for.end.632

for.body.92:                                      ; preds = %for.cond.90
  %71 = load i32, i32* %uv, align 4
  %idxprom93 = sext i32 %71 to i64
  %72 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 33
  %73 = load i16***, i16**** %imgUV, align 8
  %arrayidx94 = getelementptr inbounds i16**, i16*** %73, i64 %idxprom93
  %74 = load i16**, i16*** %arrayidx94, align 8
  store i16** %74, i16*** %image, align 8
  store i32 0, i32* %b8, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.394, %for.body.92
  %75 = load i32, i32* %b8, align 4
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 158
  %77 = load i32, i32* %num_blk8x8_uv, align 4
  %shr96 = ashr i32 %77, 1
  %cmp97 = icmp slt i32 %75, %shr96
  br i1 %cmp97, label %for.body.98, label %for.end.396

for.body.98:                                      ; preds = %for.cond.95
  store i32 0, i32* %b4, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.391, %for.body.98
  %78 = load i32, i32* %b4, align 4
  %cmp100 = icmp slt i32 %78, 4
  br i1 %cmp100, label %for.body.101, label %for.end.393

for.body.101:                                     ; preds = %for.cond.99
  %79 = load i32, i32* %b4, align 4
  %idxprom102 = sext i32 %79 to i64
  %80 = load i32, i32* %b8, align 4
  %idxprom103 = sext i32 %80 to i64
  %81 = load i32, i32* %yuv, align 4
  %idxprom104 = sext i32 %81 to i64
  %arrayidx105 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_y, i32 0, i64 %idxprom104
  %arrayidx106 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx105, i32 0, i64 %idxprom103
  %arrayidx107 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx106, i32 0, i64 %idxprom102
  %82 = load i8, i8* %arrayidx107, align 1
  %conv = zext i8 %82 to i32
  store i32 %conv, i32* %block_y, align 4
  %83 = load i32, i32* %b4, align 4
  %idxprom108 = sext i32 %83 to i64
  %84 = load i32, i32* %b8, align 4
  %idxprom109 = sext i32 %84 to i64
  %85 = load i32, i32* %yuv, align 4
  %idxprom110 = sext i32 %85 to i64
  %arrayidx111 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_x, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx111, i32 0, i64 %idxprom109
  %arrayidx113 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx112, i32 0, i64 %idxprom108
  %86 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %86 to i32
  store i32 %conv114, i32* %block_x, align 4
  %87 = load i32, i32* %block_x, align 4
  store i32 %87, i32* %blk_x, align 4
  %88 = load i32, i32* %block_y, align 4
  %add115 = add nsw i32 %88, 1
  store i32 %add115, i32* %blk_y, align 4
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 155
  %90 = load i32, i32* %dc_pred_value_chroma, align 4
  store i32 %90, i32* %s, align 4
  store i32 0, i32* %s3, align 4
  store i32 0, i32* %s2, align 4
  store i32 0, i32* %s1, align 4
  store i32 0, i32* %s0, align 4
  %91 = load i32, i32* %b4, align 4
  %idxprom116 = sext i32 %91 to i64
  %92 = load i32, i32* %b8, align 4
  %idxprom117 = sext i32 %92 to i64
  %93 = load i32, i32* %yuv, align 4
  %idxprom118 = sext i32 %93 to i64
  %arrayidx119 = getelementptr inbounds [3 x [4 x [4 x i32]]], [3 x [4 x [4 x i32]]]* @IntraChromaPrediction.block_pos, i32 0, i64 %idxprom118
  %arrayidx120 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx119, i32 0, i64 %idxprom117
  %arrayidx121 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx120, i32 0, i64 %idxprom116
  %94 = load i32, i32* %arrayidx121, align 4
  switch i32 %94, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.184
    i32 2, label %sw.bb.242
    i32 3, label %sw.bb.300
  ]

sw.bb:                                            ; preds = %for.body.101
  %95 = load i32, i32* %mb_available_up, align 4
  %tobool122 = icmp ne i32 %95, 0
  br i1 %tobool122, label %if.then.123, label %if.end.139

if.then.123:                                      ; preds = %sw.bb
  %96 = load i32, i32* %blk_x, align 4
  store i32 %96, i32* %i, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.136, %if.then.123
  %97 = load i32, i32* %i, align 4
  %98 = load i32, i32* %blk_x, align 4
  %add125 = add nsw i32 %98, 4
  %cmp126 = icmp slt i32 %97, %add125
  br i1 %cmp126, label %for.body.128, label %for.end.138

for.body.128:                                     ; preds = %for.cond.124
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %99 = load i32, i32* %pos_x, align 4
  %100 = load i32, i32* %i, align 4
  %add129 = add nsw i32 %99, %100
  %idxprom130 = sext i32 %add129 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %101 = load i32, i32* %pos_y, align 4
  %idxprom131 = sext i32 %101 to i64
  %102 = load i16**, i16*** %image, align 8
  %arrayidx132 = getelementptr inbounds i16*, i16** %102, i64 %idxprom131
  %103 = load i16*, i16** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i16, i16* %103, i64 %idxprom130
  %104 = load i16, i16* %arrayidx133, align 2
  %conv134 = zext i16 %104 to i32
  %105 = load i32, i32* %s0, align 4
  %add135 = add nsw i32 %105, %conv134
  store i32 %add135, i32* %s0, align 4
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.128
  %106 = load i32, i32* %i, align 4
  %inc137 = add nsw i32 %106, 1
  store i32 %inc137, i32* %i, align 4
  br label %for.cond.124

for.end.138:                                      ; preds = %for.cond.124
  br label %if.end.139

if.end.139:                                       ; preds = %for.end.138, %sw.bb
  %arrayidx140 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %107 = load i32, i32* %arrayidx140, align 4
  %tobool141 = icmp ne i32 %107, 0
  br i1 %tobool141, label %if.then.142, label %if.end.163

if.then.142:                                      ; preds = %if.end.139
  %108 = load i32, i32* %blk_y, align 4
  store i32 %108, i32* %i, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.160, %if.then.142
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* %blk_y, align 4
  %add144 = add nsw i32 %110, 4
  %cmp145 = icmp slt i32 %109, %add144
  br i1 %cmp145, label %for.body.147, label %for.end.162

for.body.147:                                     ; preds = %for.cond.143
  %111 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %111 to i64
  %arrayidx149 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom148
  %pos_x150 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx149, i32 0, i32 4
  %112 = load i32, i32* %pos_x150, align 4
  %idxprom151 = sext i32 %112 to i64
  %113 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %113 to i64
  %arrayidx153 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom152
  %pos_y154 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx153, i32 0, i32 5
  %114 = load i32, i32* %pos_y154, align 4
  %idxprom155 = sext i32 %114 to i64
  %115 = load i16**, i16*** %image, align 8
  %arrayidx156 = getelementptr inbounds i16*, i16** %115, i64 %idxprom155
  %116 = load i16*, i16** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds i16, i16* %116, i64 %idxprom151
  %117 = load i16, i16* %arrayidx157, align 2
  %conv158 = zext i16 %117 to i32
  %118 = load i32, i32* %s2, align 4
  %add159 = add nsw i32 %118, %conv158
  store i32 %add159, i32* %s2, align 4
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.147
  %119 = load i32, i32* %i, align 4
  %inc161 = add nsw i32 %119, 1
  store i32 %inc161, i32* %i, align 4
  br label %for.cond.143

for.end.162:                                      ; preds = %for.cond.143
  br label %if.end.163

if.end.163:                                       ; preds = %for.end.162, %if.end.139
  %120 = load i32, i32* %mb_available_up, align 4
  %tobool164 = icmp ne i32 %120, 0
  br i1 %tobool164, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.163
  %arrayidx165 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %121 = load i32, i32* %arrayidx165, align 4
  %tobool166 = icmp ne i32 %121, 0
  br i1 %tobool166, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %land.lhs.true
  %122 = load i32, i32* %s0, align 4
  %123 = load i32, i32* %s2, align 4
  %add168 = add nsw i32 %122, %123
  %add169 = add nsw i32 %add168, 4
  %shr170 = ashr i32 %add169, 3
  store i32 %shr170, i32* %s, align 4
  br label %if.end.183

if.else:                                          ; preds = %land.lhs.true, %if.end.163
  %124 = load i32, i32* %mb_available_up, align 4
  %tobool171 = icmp ne i32 %124, 0
  br i1 %tobool171, label %if.then.172, label %if.else.175

if.then.172:                                      ; preds = %if.else
  %125 = load i32, i32* %s0, align 4
  %add173 = add nsw i32 %125, 2
  %shr174 = ashr i32 %add173, 2
  store i32 %shr174, i32* %s, align 4
  br label %if.end.182

if.else.175:                                      ; preds = %if.else
  %arrayidx176 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %126 = load i32, i32* %arrayidx176, align 4
  %tobool177 = icmp ne i32 %126, 0
  br i1 %tobool177, label %if.then.178, label %if.end.181

if.then.178:                                      ; preds = %if.else.175
  %127 = load i32, i32* %s2, align 4
  %add179 = add nsw i32 %127, 2
  %shr180 = ashr i32 %add179, 2
  store i32 %shr180, i32* %s, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.178, %if.else.175
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.172
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.167
  br label %sw.epilog

sw.bb.184:                                        ; preds = %for.body.101
  %128 = load i32, i32* %mb_available_up, align 4
  %tobool185 = icmp ne i32 %128, 0
  br i1 %tobool185, label %if.then.186, label %if.else.204

if.then.186:                                      ; preds = %sw.bb.184
  %129 = load i32, i32* %blk_x, align 4
  store i32 %129, i32* %i, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.201, %if.then.186
  %130 = load i32, i32* %i, align 4
  %131 = load i32, i32* %blk_x, align 4
  %add188 = add nsw i32 %131, 4
  %cmp189 = icmp slt i32 %130, %add188
  br i1 %cmp189, label %for.body.191, label %for.end.203

for.body.191:                                     ; preds = %for.cond.187
  %pos_x192 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %132 = load i32, i32* %pos_x192, align 4
  %133 = load i32, i32* %i, align 4
  %add193 = add nsw i32 %132, %133
  %idxprom194 = sext i32 %add193 to i64
  %pos_y195 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %134 = load i32, i32* %pos_y195, align 4
  %idxprom196 = sext i32 %134 to i64
  %135 = load i16**, i16*** %image, align 8
  %arrayidx197 = getelementptr inbounds i16*, i16** %135, i64 %idxprom196
  %136 = load i16*, i16** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds i16, i16* %136, i64 %idxprom194
  %137 = load i16, i16* %arrayidx198, align 2
  %conv199 = zext i16 %137 to i32
  %138 = load i32, i32* %s1, align 4
  %add200 = add nsw i32 %138, %conv199
  store i32 %add200, i32* %s1, align 4
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.191
  %139 = load i32, i32* %i, align 4
  %inc202 = add nsw i32 %139, 1
  store i32 %inc202, i32* %i, align 4
  br label %for.cond.187

for.end.203:                                      ; preds = %for.cond.187
  br label %if.end.229

if.else.204:                                      ; preds = %sw.bb.184
  %arrayidx205 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %140 = load i32, i32* %arrayidx205, align 4
  %tobool206 = icmp ne i32 %140, 0
  br i1 %tobool206, label %if.then.207, label %if.end.228

if.then.207:                                      ; preds = %if.else.204
  %141 = load i32, i32* %blk_y, align 4
  store i32 %141, i32* %i, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.225, %if.then.207
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* %blk_y, align 4
  %add209 = add nsw i32 %143, 4
  %cmp210 = icmp slt i32 %142, %add209
  br i1 %cmp210, label %for.body.212, label %for.end.227

for.body.212:                                     ; preds = %for.cond.208
  %144 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %144 to i64
  %arrayidx214 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom213
  %pos_x215 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx214, i32 0, i32 4
  %145 = load i32, i32* %pos_x215, align 4
  %idxprom216 = sext i32 %145 to i64
  %146 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %146 to i64
  %arrayidx218 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom217
  %pos_y219 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx218, i32 0, i32 5
  %147 = load i32, i32* %pos_y219, align 4
  %idxprom220 = sext i32 %147 to i64
  %148 = load i16**, i16*** %image, align 8
  %arrayidx221 = getelementptr inbounds i16*, i16** %148, i64 %idxprom220
  %149 = load i16*, i16** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i16, i16* %149, i64 %idxprom216
  %150 = load i16, i16* %arrayidx222, align 2
  %conv223 = zext i16 %150 to i32
  %151 = load i32, i32* %s2, align 4
  %add224 = add nsw i32 %151, %conv223
  store i32 %add224, i32* %s2, align 4
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.body.212
  %152 = load i32, i32* %i, align 4
  %inc226 = add nsw i32 %152, 1
  store i32 %inc226, i32* %i, align 4
  br label %for.cond.208

for.end.227:                                      ; preds = %for.cond.208
  br label %if.end.228

if.end.228:                                       ; preds = %for.end.227, %if.else.204
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %for.end.203
  %153 = load i32, i32* %mb_available_up, align 4
  %tobool230 = icmp ne i32 %153, 0
  br i1 %tobool230, label %if.then.231, label %if.else.234

if.then.231:                                      ; preds = %if.end.229
  %154 = load i32, i32* %s1, align 4
  %add232 = add nsw i32 %154, 2
  %shr233 = ashr i32 %add232, 2
  store i32 %shr233, i32* %s, align 4
  br label %if.end.241

if.else.234:                                      ; preds = %if.end.229
  %arrayidx235 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %155 = load i32, i32* %arrayidx235, align 4
  %tobool236 = icmp ne i32 %155, 0
  br i1 %tobool236, label %if.then.237, label %if.end.240

if.then.237:                                      ; preds = %if.else.234
  %156 = load i32, i32* %s2, align 4
  %add238 = add nsw i32 %156, 2
  %shr239 = ashr i32 %add238, 2
  store i32 %shr239, i32* %s, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.237, %if.else.234
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.231
  br label %sw.epilog

sw.bb.242:                                        ; preds = %for.body.101
  %arrayidx243 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %157 = load i32, i32* %arrayidx243, align 4
  %tobool244 = icmp ne i32 %157, 0
  br i1 %tobool244, label %if.then.245, label %if.else.266

if.then.245:                                      ; preds = %sw.bb.242
  %158 = load i32, i32* %blk_y, align 4
  store i32 %158, i32* %i, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.263, %if.then.245
  %159 = load i32, i32* %i, align 4
  %160 = load i32, i32* %blk_y, align 4
  %add247 = add nsw i32 %160, 4
  %cmp248 = icmp slt i32 %159, %add247
  br i1 %cmp248, label %for.body.250, label %for.end.265

for.body.250:                                     ; preds = %for.cond.246
  %161 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %161 to i64
  %arrayidx252 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom251
  %pos_x253 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx252, i32 0, i32 4
  %162 = load i32, i32* %pos_x253, align 4
  %idxprom254 = sext i32 %162 to i64
  %163 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %163 to i64
  %arrayidx256 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom255
  %pos_y257 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx256, i32 0, i32 5
  %164 = load i32, i32* %pos_y257, align 4
  %idxprom258 = sext i32 %164 to i64
  %165 = load i16**, i16*** %image, align 8
  %arrayidx259 = getelementptr inbounds i16*, i16** %165, i64 %idxprom258
  %166 = load i16*, i16** %arrayidx259, align 8
  %arrayidx260 = getelementptr inbounds i16, i16* %166, i64 %idxprom254
  %167 = load i16, i16* %arrayidx260, align 2
  %conv261 = zext i16 %167 to i32
  %168 = load i32, i32* %s3, align 4
  %add262 = add nsw i32 %168, %conv261
  store i32 %add262, i32* %s3, align 4
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.body.250
  %169 = load i32, i32* %i, align 4
  %inc264 = add nsw i32 %169, 1
  store i32 %inc264, i32* %i, align 4
  br label %for.cond.246

for.end.265:                                      ; preds = %for.cond.246
  br label %if.end.287

if.else.266:                                      ; preds = %sw.bb.242
  %170 = load i32, i32* %mb_available_up, align 4
  %tobool267 = icmp ne i32 %170, 0
  br i1 %tobool267, label %if.then.268, label %if.end.286

if.then.268:                                      ; preds = %if.else.266
  %171 = load i32, i32* %blk_x, align 4
  store i32 %171, i32* %i, align 4
  br label %for.cond.269

for.cond.269:                                     ; preds = %for.inc.283, %if.then.268
  %172 = load i32, i32* %i, align 4
  %173 = load i32, i32* %blk_x, align 4
  %add270 = add nsw i32 %173, 4
  %cmp271 = icmp slt i32 %172, %add270
  br i1 %cmp271, label %for.body.273, label %for.end.285

for.body.273:                                     ; preds = %for.cond.269
  %pos_x274 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %174 = load i32, i32* %pos_x274, align 4
  %175 = load i32, i32* %i, align 4
  %add275 = add nsw i32 %174, %175
  %idxprom276 = sext i32 %add275 to i64
  %pos_y277 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %176 = load i32, i32* %pos_y277, align 4
  %idxprom278 = sext i32 %176 to i64
  %177 = load i16**, i16*** %image, align 8
  %arrayidx279 = getelementptr inbounds i16*, i16** %177, i64 %idxprom278
  %178 = load i16*, i16** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i16, i16* %178, i64 %idxprom276
  %179 = load i16, i16* %arrayidx280, align 2
  %conv281 = zext i16 %179 to i32
  %180 = load i32, i32* %s0, align 4
  %add282 = add nsw i32 %180, %conv281
  store i32 %add282, i32* %s0, align 4
  br label %for.inc.283

for.inc.283:                                      ; preds = %for.body.273
  %181 = load i32, i32* %i, align 4
  %inc284 = add nsw i32 %181, 1
  store i32 %inc284, i32* %i, align 4
  br label %for.cond.269

for.end.285:                                      ; preds = %for.cond.269
  br label %if.end.286

if.end.286:                                       ; preds = %for.end.285, %if.else.266
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %for.end.265
  %arrayidx288 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %182 = load i32, i32* %arrayidx288, align 4
  %tobool289 = icmp ne i32 %182, 0
  br i1 %tobool289, label %if.then.290, label %if.else.293

if.then.290:                                      ; preds = %if.end.287
  %183 = load i32, i32* %s3, align 4
  %add291 = add nsw i32 %183, 2
  %shr292 = ashr i32 %add291, 2
  store i32 %shr292, i32* %s, align 4
  br label %if.end.299

if.else.293:                                      ; preds = %if.end.287
  %184 = load i32, i32* %mb_available_up, align 4
  %tobool294 = icmp ne i32 %184, 0
  br i1 %tobool294, label %if.then.295, label %if.end.298

if.then.295:                                      ; preds = %if.else.293
  %185 = load i32, i32* %s0, align 4
  %add296 = add nsw i32 %185, 2
  %shr297 = ashr i32 %add296, 2
  store i32 %shr297, i32* %s, align 4
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.295, %if.else.293
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.then.290
  br label %sw.epilog

sw.bb.300:                                        ; preds = %for.body.101
  %186 = load i32, i32* %mb_available_up, align 4
  %tobool301 = icmp ne i32 %186, 0
  br i1 %tobool301, label %if.then.302, label %if.end.320

if.then.302:                                      ; preds = %sw.bb.300
  %187 = load i32, i32* %blk_x, align 4
  store i32 %187, i32* %i, align 4
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.317, %if.then.302
  %188 = load i32, i32* %i, align 4
  %189 = load i32, i32* %blk_x, align 4
  %add304 = add nsw i32 %189, 4
  %cmp305 = icmp slt i32 %188, %add304
  br i1 %cmp305, label %for.body.307, label %for.end.319

for.body.307:                                     ; preds = %for.cond.303
  %pos_x308 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %190 = load i32, i32* %pos_x308, align 4
  %191 = load i32, i32* %i, align 4
  %add309 = add nsw i32 %190, %191
  %idxprom310 = sext i32 %add309 to i64
  %pos_y311 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %192 = load i32, i32* %pos_y311, align 4
  %idxprom312 = sext i32 %192 to i64
  %193 = load i16**, i16*** %image, align 8
  %arrayidx313 = getelementptr inbounds i16*, i16** %193, i64 %idxprom312
  %194 = load i16*, i16** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i16, i16* %194, i64 %idxprom310
  %195 = load i16, i16* %arrayidx314, align 2
  %conv315 = zext i16 %195 to i32
  %196 = load i32, i32* %s1, align 4
  %add316 = add nsw i32 %196, %conv315
  store i32 %add316, i32* %s1, align 4
  br label %for.inc.317

for.inc.317:                                      ; preds = %for.body.307
  %197 = load i32, i32* %i, align 4
  %inc318 = add nsw i32 %197, 1
  store i32 %inc318, i32* %i, align 4
  br label %for.cond.303

for.end.319:                                      ; preds = %for.cond.303
  br label %if.end.320

if.end.320:                                       ; preds = %for.end.319, %sw.bb.300
  %arrayidx321 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %198 = load i32, i32* %arrayidx321, align 4
  %tobool322 = icmp ne i32 %198, 0
  br i1 %tobool322, label %if.then.323, label %if.end.344

if.then.323:                                      ; preds = %if.end.320
  %199 = load i32, i32* %blk_y, align 4
  store i32 %199, i32* %i, align 4
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.341, %if.then.323
  %200 = load i32, i32* %i, align 4
  %201 = load i32, i32* %blk_y, align 4
  %add325 = add nsw i32 %201, 4
  %cmp326 = icmp slt i32 %200, %add325
  br i1 %cmp326, label %for.body.328, label %for.end.343

for.body.328:                                     ; preds = %for.cond.324
  %202 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %202 to i64
  %arrayidx330 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom329
  %pos_x331 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx330, i32 0, i32 4
  %203 = load i32, i32* %pos_x331, align 4
  %idxprom332 = sext i32 %203 to i64
  %204 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %204 to i64
  %arrayidx334 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom333
  %pos_y335 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx334, i32 0, i32 5
  %205 = load i32, i32* %pos_y335, align 4
  %idxprom336 = sext i32 %205 to i64
  %206 = load i16**, i16*** %image, align 8
  %arrayidx337 = getelementptr inbounds i16*, i16** %206, i64 %idxprom336
  %207 = load i16*, i16** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i16, i16* %207, i64 %idxprom332
  %208 = load i16, i16* %arrayidx338, align 2
  %conv339 = zext i16 %208 to i32
  %209 = load i32, i32* %s3, align 4
  %add340 = add nsw i32 %209, %conv339
  store i32 %add340, i32* %s3, align 4
  br label %for.inc.341

for.inc.341:                                      ; preds = %for.body.328
  %210 = load i32, i32* %i, align 4
  %inc342 = add nsw i32 %210, 1
  store i32 %inc342, i32* %i, align 4
  br label %for.cond.324

for.end.343:                                      ; preds = %for.cond.324
  br label %if.end.344

if.end.344:                                       ; preds = %for.end.343, %if.end.320
  %211 = load i32, i32* %mb_available_up, align 4
  %tobool345 = icmp ne i32 %211, 0
  br i1 %tobool345, label %land.lhs.true.346, label %if.else.353

land.lhs.true.346:                                ; preds = %if.end.344
  %arrayidx347 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %212 = load i32, i32* %arrayidx347, align 4
  %tobool348 = icmp ne i32 %212, 0
  br i1 %tobool348, label %if.then.349, label %if.else.353

if.then.349:                                      ; preds = %land.lhs.true.346
  %213 = load i32, i32* %s1, align 4
  %214 = load i32, i32* %s3, align 4
  %add350 = add nsw i32 %213, %214
  %add351 = add nsw i32 %add350, 4
  %shr352 = ashr i32 %add351, 3
  store i32 %shr352, i32* %s, align 4
  br label %if.end.366

if.else.353:                                      ; preds = %land.lhs.true.346, %if.end.344
  %215 = load i32, i32* %mb_available_up, align 4
  %tobool354 = icmp ne i32 %215, 0
  br i1 %tobool354, label %if.then.355, label %if.else.358

if.then.355:                                      ; preds = %if.else.353
  %216 = load i32, i32* %s1, align 4
  %add356 = add nsw i32 %216, 2
  %shr357 = ashr i32 %add356, 2
  store i32 %shr357, i32* %s, align 4
  br label %if.end.365

if.else.358:                                      ; preds = %if.else.353
  %arrayidx359 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %217 = load i32, i32* %arrayidx359, align 4
  %tobool360 = icmp ne i32 %217, 0
  br i1 %tobool360, label %if.then.361, label %if.end.364

if.then.361:                                      ; preds = %if.else.358
  %218 = load i32, i32* %s3, align 4
  %add362 = add nsw i32 %218, 2
  %shr363 = ashr i32 %add362, 2
  store i32 %shr363, i32* %s, align 4
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.361, %if.else.358
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %if.then.355
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %if.then.349
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.101, %if.end.366, %if.end.299, %if.end.241, %if.end.183
  %219 = load i32, i32* %block_y, align 4
  store i32 %219, i32* %j, align 4
  br label %for.cond.367

for.cond.367:                                     ; preds = %for.inc.388, %sw.epilog
  %220 = load i32, i32* %j, align 4
  %221 = load i32, i32* %block_y, align 4
  %add368 = add nsw i32 %221, 4
  %cmp369 = icmp slt i32 %220, %add368
  br i1 %cmp369, label %for.body.371, label %for.end.390

for.body.371:                                     ; preds = %for.cond.367
  %222 = load i32, i32* %block_x, align 4
  store i32 %222, i32* %i, align 4
  br label %for.cond.372

for.cond.372:                                     ; preds = %for.inc.385, %for.body.371
  %223 = load i32, i32* %i, align 4
  %224 = load i32, i32* %block_x, align 4
  %add373 = add nsw i32 %224, 4
  %cmp374 = icmp slt i32 %223, %add373
  br i1 %cmp374, label %for.body.376, label %for.end.387

for.body.376:                                     ; preds = %for.cond.372
  %225 = load i32, i32* %s, align 4
  %conv377 = trunc i32 %225 to i16
  %226 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %226 to i64
  %227 = load i32, i32* %j, align 4
  %idxprom379 = sext i32 %227 to i64
  %228 = load i32, i32* %uv, align 4
  %idxprom380 = sext i32 %228 to i64
  %229 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %229, i32 0, i32 50
  %arrayidx381 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c, i32 0, i64 %idxprom380
  %arrayidx382 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx381, i32 0, i64 0
  %arrayidx383 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx382, i32 0, i64 %idxprom379
  %arrayidx384 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx383, i32 0, i64 %idxprom378
  store i16 %conv377, i16* %arrayidx384, align 2
  br label %for.inc.385

for.inc.385:                                      ; preds = %for.body.376
  %230 = load i32, i32* %i, align 4
  %inc386 = add nsw i32 %230, 1
  store i32 %inc386, i32* %i, align 4
  br label %for.cond.372

for.end.387:                                      ; preds = %for.cond.372
  br label %for.inc.388

for.inc.388:                                      ; preds = %for.end.387
  %231 = load i32, i32* %j, align 4
  %inc389 = add nsw i32 %231, 1
  store i32 %inc389, i32* %j, align 4
  br label %for.cond.367

for.end.390:                                      ; preds = %for.cond.367
  br label %for.inc.391

for.inc.391:                                      ; preds = %for.end.390
  %232 = load i32, i32* %b4, align 4
  %inc392 = add nsw i32 %232, 1
  store i32 %inc392, i32* %b4, align 4
  br label %for.cond.99

for.end.393:                                      ; preds = %for.cond.99
  br label %for.inc.394

for.inc.394:                                      ; preds = %for.end.393
  %233 = load i32, i32* %b8, align 4
  %inc395 = add nsw i32 %233, 1
  store i32 %inc395, i32* %b8, align 4
  br label %for.cond.95

for.end.396:                                      ; preds = %for.cond.95
  %234 = load i32, i32* %mb_available_up, align 4
  %tobool397 = icmp ne i32 %234, 0
  br i1 %tobool397, label %if.then.398, label %if.end.421

if.then.398:                                      ; preds = %for.end.396
  %235 = bitcast [16 x i16]* %hline to i8*
  %pos_x399 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %236 = load i32, i32* %pos_x399, align 4
  %idxprom400 = sext i32 %236 to i64
  %pos_y401 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %237 = load i32, i32* %pos_y401, align 4
  %idxprom402 = sext i32 %237 to i64
  %238 = load i16**, i16*** %image, align 8
  %arrayidx403 = getelementptr inbounds i16*, i16** %238, i64 %idxprom402
  %239 = load i16*, i16** %arrayidx403, align 8
  %arrayidx404 = getelementptr inbounds i16, i16* %239, i64 %idxprom400
  %240 = bitcast i16* %arrayidx404 to i8*
  %241 = load i32, i32* %cr_MB_x, align 4
  %conv405 = sext i32 %241 to i64
  %mul = mul i64 %conv405, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %235, i8* %240, i64 %mul, i32 2, i1 false)
  store i32 0, i32* %j, align 4
  br label %for.cond.406

for.cond.406:                                     ; preds = %for.inc.418, %if.then.398
  %242 = load i32, i32* %j, align 4
  %243 = load i32, i32* %cr_MB_y, align 4
  %cmp407 = icmp slt i32 %242, %243
  br i1 %cmp407, label %for.body.409, label %for.end.420

for.body.409:                                     ; preds = %for.cond.406
  %244 = load i32, i32* %j, align 4
  %idxprom410 = sext i32 %244 to i64
  %245 = load i32, i32* %uv, align 4
  %idxprom411 = sext i32 %245 to i64
  %246 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c412 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %246, i32 0, i32 50
  %arrayidx413 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c412, i32 0, i64 %idxprom411
  %arrayidx414 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx413, i32 0, i64 2
  %arrayidx415 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx414, i32 0, i64 %idxprom410
  %247 = bitcast [16 x i16]* %arrayidx415 to i8*
  %248 = bitcast [16 x i16]* %hline to i8*
  %249 = load i32, i32* %cr_MB_x, align 4
  %conv416 = sext i32 %249 to i64
  %mul417 = mul i64 %conv416, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %247, i8* %248, i64 %mul417, i32 2, i1 false)
  br label %for.inc.418

for.inc.418:                                      ; preds = %for.body.409
  %250 = load i32, i32* %j, align 4
  %inc419 = add nsw i32 %250, 1
  store i32 %inc419, i32* %j, align 4
  br label %for.cond.406

for.end.420:                                      ; preds = %for.cond.406
  br label %if.end.421

if.end.421:                                       ; preds = %for.end.420, %for.end.396
  %arrayidx422 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %251 = load i32, i32* %arrayidx422, align 4
  %tobool423 = icmp ne i32 %251, 0
  br i1 %tobool423, label %land.lhs.true.424, label %if.end.473

land.lhs.true.424:                                ; preds = %if.end.421
  %arrayidx425 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %252 = load i32, i32* %arrayidx425, align 4
  %tobool426 = icmp ne i32 %252, 0
  br i1 %tobool426, label %if.then.427, label %if.end.473

if.then.427:                                      ; preds = %land.lhs.true.424
  store i32 0, i32* %i, align 4
  br label %for.cond.428

for.cond.428:                                     ; preds = %for.inc.446, %if.then.427
  %253 = load i32, i32* %i, align 4
  %254 = load i32, i32* %cr_MB_y, align 4
  %cmp429 = icmp slt i32 %253, %254
  br i1 %cmp429, label %for.body.431, label %for.end.448

for.body.431:                                     ; preds = %for.cond.428
  %255 = load i32, i32* %i, align 4
  %add432 = add nsw i32 %255, 1
  %idxprom433 = sext i32 %add432 to i64
  %arrayidx434 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom433
  %pos_x435 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx434, i32 0, i32 4
  %256 = load i32, i32* %pos_x435, align 4
  %idxprom436 = sext i32 %256 to i64
  %257 = load i32, i32* %i, align 4
  %add437 = add nsw i32 %257, 1
  %idxprom438 = sext i32 %add437 to i64
  %arrayidx439 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom438
  %pos_y440 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx439, i32 0, i32 5
  %258 = load i32, i32* %pos_y440, align 4
  %idxprom441 = sext i32 %258 to i64
  %259 = load i16**, i16*** %image, align 8
  %arrayidx442 = getelementptr inbounds i16*, i16** %259, i64 %idxprom441
  %260 = load i16*, i16** %arrayidx442, align 8
  %arrayidx443 = getelementptr inbounds i16, i16* %260, i64 %idxprom436
  %261 = load i16, i16* %arrayidx443, align 2
  %262 = load i32, i32* %i, align 4
  %idxprom444 = sext i32 %262 to i64
  %arrayidx445 = getelementptr inbounds [16 x i16], [16 x i16]* %vline, i32 0, i64 %idxprom444
  store i16 %261, i16* %arrayidx445, align 2
  br label %for.inc.446

for.inc.446:                                      ; preds = %for.body.431
  %263 = load i32, i32* %i, align 4
  %inc447 = add nsw i32 %263, 1
  store i32 %inc447, i32* %i, align 4
  br label %for.cond.428

for.end.448:                                      ; preds = %for.cond.428
  store i32 0, i32* %i, align 4
  br label %for.cond.449

for.cond.449:                                     ; preds = %for.inc.470, %for.end.448
  %264 = load i32, i32* %i, align 4
  %265 = load i32, i32* %cr_MB_x, align 4
  %cmp450 = icmp slt i32 %264, %265
  br i1 %cmp450, label %for.body.452, label %for.end.472

for.body.452:                                     ; preds = %for.cond.449
  store i32 0, i32* %j, align 4
  br label %for.cond.453

for.cond.453:                                     ; preds = %for.inc.467, %for.body.452
  %266 = load i32, i32* %j, align 4
  %267 = load i32, i32* %cr_MB_y, align 4
  %cmp454 = icmp slt i32 %266, %267
  br i1 %cmp454, label %for.body.456, label %for.end.469

for.body.456:                                     ; preds = %for.cond.453
  %268 = load i32, i32* %j, align 4
  %idxprom457 = sext i32 %268 to i64
  %arrayidx458 = getelementptr inbounds [16 x i16], [16 x i16]* %vline, i32 0, i64 %idxprom457
  %269 = load i16, i16* %arrayidx458, align 2
  %270 = load i32, i32* %i, align 4
  %idxprom459 = sext i32 %270 to i64
  %271 = load i32, i32* %j, align 4
  %idxprom460 = sext i32 %271 to i64
  %272 = load i32, i32* %uv, align 4
  %idxprom461 = sext i32 %272 to i64
  %273 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c462 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %273, i32 0, i32 50
  %arrayidx463 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c462, i32 0, i64 %idxprom461
  %arrayidx464 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx463, i32 0, i64 1
  %arrayidx465 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx464, i32 0, i64 %idxprom460
  %arrayidx466 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx465, i32 0, i64 %idxprom459
  store i16 %269, i16* %arrayidx466, align 2
  br label %for.inc.467

for.inc.467:                                      ; preds = %for.body.456
  %274 = load i32, i32* %j, align 4
  %inc468 = add nsw i32 %274, 1
  store i32 %inc468, i32* %j, align 4
  br label %for.cond.453

for.end.469:                                      ; preds = %for.cond.453
  br label %for.inc.470

for.inc.470:                                      ; preds = %for.end.469
  %275 = load i32, i32* %i, align 4
  %inc471 = add nsw i32 %275, 1
  store i32 %inc471, i32* %i, align 4
  br label %for.cond.449

for.end.472:                                      ; preds = %for.cond.449
  br label %if.end.473

if.end.473:                                       ; preds = %for.end.472, %land.lhs.true.424, %if.end.421
  %arrayidx474 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %276 = load i32, i32* %arrayidx474, align 4
  %tobool475 = icmp ne i32 %276, 0
  br i1 %tobool475, label %land.lhs.true.476, label %if.end.629

land.lhs.true.476:                                ; preds = %if.end.473
  %arrayidx477 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %277 = load i32, i32* %arrayidx477, align 4
  %tobool478 = icmp ne i32 %277, 0
  br i1 %tobool478, label %land.lhs.true.479, label %if.end.629

land.lhs.true.479:                                ; preds = %land.lhs.true.476
  %278 = load i32, i32* %mb_available_up, align 4
  %tobool480 = icmp ne i32 %278, 0
  br i1 %tobool480, label %land.lhs.true.481, label %if.end.629

land.lhs.true.481:                                ; preds = %land.lhs.true.479
  %279 = load i32, i32* %mb_available_up_left, align 4
  %tobool482 = icmp ne i32 %279, 0
  br i1 %tobool482, label %if.then.483, label %if.end.629

if.then.483:                                      ; preds = %land.lhs.true.481
  %280 = load i32, i32* %cr_MB_x, align 4
  %shr484 = ashr i32 %280, 1
  %281 = load i32, i32* %cr_MB_x, align 4
  %sub485 = sub nsw i32 %281, 1
  %idxprom486 = sext i32 %sub485 to i64
  %arrayidx487 = getelementptr inbounds [16 x i16], [16 x i16]* %hline, i32 0, i64 %idxprom486
  %282 = load i16, i16* %arrayidx487, align 2
  %conv488 = zext i16 %282 to i32
  %arrayidx489 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %pos_x490 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx489, i32 0, i32 4
  %283 = load i32, i32* %pos_x490, align 4
  %idxprom491 = sext i32 %283 to i64
  %arrayidx492 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %pos_y493 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx492, i32 0, i32 5
  %284 = load i32, i32* %pos_y493, align 4
  %idxprom494 = sext i32 %284 to i64
  %285 = load i16**, i16*** %image, align 8
  %arrayidx495 = getelementptr inbounds i16*, i16** %285, i64 %idxprom494
  %286 = load i16*, i16** %arrayidx495, align 8
  %arrayidx496 = getelementptr inbounds i16, i16* %286, i64 %idxprom491
  %287 = load i16, i16* %arrayidx496, align 2
  %conv497 = zext i16 %287 to i32
  %sub498 = sub nsw i32 %conv488, %conv497
  %mul499 = mul nsw i32 %shr484, %sub498
  store i32 %mul499, i32* %ih, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.500

for.cond.500:                                     ; preds = %for.inc.521, %if.then.483
  %288 = load i32, i32* %i, align 4
  %289 = load i32, i32* %cr_MB_x, align 4
  %shr501 = ashr i32 %289, 1
  %sub502 = sub nsw i32 %shr501, 1
  %cmp503 = icmp slt i32 %288, %sub502
  br i1 %cmp503, label %for.body.505, label %for.end.523

for.body.505:                                     ; preds = %for.cond.500
  %290 = load i32, i32* %i, align 4
  %add506 = add nsw i32 %290, 1
  %291 = load i32, i32* %cr_MB_x, align 4
  %shr507 = ashr i32 %291, 1
  %292 = load i32, i32* %i, align 4
  %add508 = add nsw i32 %shr507, %292
  %idxprom509 = sext i32 %add508 to i64
  %arrayidx510 = getelementptr inbounds [16 x i16], [16 x i16]* %hline, i32 0, i64 %idxprom509
  %293 = load i16, i16* %arrayidx510, align 2
  %conv511 = zext i16 %293 to i32
  %294 = load i32, i32* %cr_MB_x, align 4
  %shr512 = ashr i32 %294, 1
  %sub513 = sub nsw i32 %shr512, 2
  %295 = load i32, i32* %i, align 4
  %sub514 = sub nsw i32 %sub513, %295
  %idxprom515 = sext i32 %sub514 to i64
  %arrayidx516 = getelementptr inbounds [16 x i16], [16 x i16]* %hline, i32 0, i64 %idxprom515
  %296 = load i16, i16* %arrayidx516, align 2
  %conv517 = zext i16 %296 to i32
  %sub518 = sub nsw i32 %conv511, %conv517
  %mul519 = mul nsw i32 %add506, %sub518
  %297 = load i32, i32* %ih, align 4
  %add520 = add nsw i32 %297, %mul519
  store i32 %add520, i32* %ih, align 4
  br label %for.inc.521

for.inc.521:                                      ; preds = %for.body.505
  %298 = load i32, i32* %i, align 4
  %inc522 = add nsw i32 %298, 1
  store i32 %inc522, i32* %i, align 4
  br label %for.cond.500

for.end.523:                                      ; preds = %for.cond.500
  %299 = load i32, i32* %cr_MB_y, align 4
  %shr524 = ashr i32 %299, 1
  %300 = load i32, i32* %cr_MB_y, align 4
  %sub525 = sub nsw i32 %300, 1
  %idxprom526 = sext i32 %sub525 to i64
  %arrayidx527 = getelementptr inbounds [16 x i16], [16 x i16]* %vline, i32 0, i64 %idxprom526
  %301 = load i16, i16* %arrayidx527, align 2
  %conv528 = zext i16 %301 to i32
  %arrayidx529 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %pos_x530 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx529, i32 0, i32 4
  %302 = load i32, i32* %pos_x530, align 4
  %idxprom531 = sext i32 %302 to i64
  %arrayidx532 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %pos_y533 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx532, i32 0, i32 5
  %303 = load i32, i32* %pos_y533, align 4
  %idxprom534 = sext i32 %303 to i64
  %304 = load i16**, i16*** %image, align 8
  %arrayidx535 = getelementptr inbounds i16*, i16** %304, i64 %idxprom534
  %305 = load i16*, i16** %arrayidx535, align 8
  %arrayidx536 = getelementptr inbounds i16, i16* %305, i64 %idxprom531
  %306 = load i16, i16* %arrayidx536, align 2
  %conv537 = zext i16 %306 to i32
  %sub538 = sub nsw i32 %conv528, %conv537
  %mul539 = mul nsw i32 %shr524, %sub538
  store i32 %mul539, i32* %iv, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.540

for.cond.540:                                     ; preds = %for.inc.561, %for.end.523
  %307 = load i32, i32* %i, align 4
  %308 = load i32, i32* %cr_MB_y, align 4
  %shr541 = ashr i32 %308, 1
  %sub542 = sub nsw i32 %shr541, 1
  %cmp543 = icmp slt i32 %307, %sub542
  br i1 %cmp543, label %for.body.545, label %for.end.563

for.body.545:                                     ; preds = %for.cond.540
  %309 = load i32, i32* %i, align 4
  %add546 = add nsw i32 %309, 1
  %310 = load i32, i32* %cr_MB_y, align 4
  %shr547 = ashr i32 %310, 1
  %311 = load i32, i32* %i, align 4
  %add548 = add nsw i32 %shr547, %311
  %idxprom549 = sext i32 %add548 to i64
  %arrayidx550 = getelementptr inbounds [16 x i16], [16 x i16]* %vline, i32 0, i64 %idxprom549
  %312 = load i16, i16* %arrayidx550, align 2
  %conv551 = zext i16 %312 to i32
  %313 = load i32, i32* %cr_MB_y, align 4
  %shr552 = ashr i32 %313, 1
  %sub553 = sub nsw i32 %shr552, 2
  %314 = load i32, i32* %i, align 4
  %sub554 = sub nsw i32 %sub553, %314
  %idxprom555 = sext i32 %sub554 to i64
  %arrayidx556 = getelementptr inbounds [16 x i16], [16 x i16]* %vline, i32 0, i64 %idxprom555
  %315 = load i16, i16* %arrayidx556, align 2
  %conv557 = zext i16 %315 to i32
  %sub558 = sub nsw i32 %conv551, %conv557
  %mul559 = mul nsw i32 %add546, %sub558
  %316 = load i32, i32* %iv, align 4
  %add560 = add nsw i32 %316, %mul559
  store i32 %add560, i32* %iv, align 4
  br label %for.inc.561

for.inc.561:                                      ; preds = %for.body.545
  %317 = load i32, i32* %i, align 4
  %inc562 = add nsw i32 %317, 1
  store i32 %inc562, i32* %i, align 4
  br label %for.cond.540

for.end.563:                                      ; preds = %for.cond.540
  %318 = load i32, i32* %cr_MB_x, align 4
  %cmp564 = icmp eq i32 %318, 8
  %cond566 = select i1 %cmp564, i32 17, i32 5
  %319 = load i32, i32* %ih, align 4
  %mul567 = mul nsw i32 %cond566, %319
  %320 = load i32, i32* %cr_MB_x, align 4
  %mul568 = mul nsw i32 2, %320
  %add569 = add nsw i32 %mul567, %mul568
  %321 = load i32, i32* %cr_MB_x, align 4
  %cmp570 = icmp eq i32 %321, 8
  %cond572 = select i1 %cmp570, i32 5, i32 6
  %shr573 = ashr i32 %add569, %cond572
  store i32 %shr573, i32* %ib, align 4
  %322 = load i32, i32* %cr_MB_y, align 4
  %cmp574 = icmp eq i32 %322, 8
  %cond576 = select i1 %cmp574, i32 17, i32 5
  %323 = load i32, i32* %iv, align 4
  %mul577 = mul nsw i32 %cond576, %323
  %324 = load i32, i32* %cr_MB_y, align 4
  %mul578 = mul nsw i32 2, %324
  %add579 = add nsw i32 %mul577, %mul578
  %325 = load i32, i32* %cr_MB_y, align 4
  %cmp580 = icmp eq i32 %325, 8
  %cond582 = select i1 %cmp580, i32 5, i32 6
  %shr583 = ashr i32 %add579, %cond582
  store i32 %shr583, i32* %ic, align 4
  %326 = load i32, i32* %cr_MB_x, align 4
  %sub584 = sub nsw i32 %326, 1
  %idxprom585 = sext i32 %sub584 to i64
  %arrayidx586 = getelementptr inbounds [16 x i16], [16 x i16]* %hline, i32 0, i64 %idxprom585
  %327 = load i16, i16* %arrayidx586, align 2
  %conv587 = zext i16 %327 to i32
  %328 = load i32, i32* %cr_MB_y, align 4
  %sub588 = sub nsw i32 %328, 1
  %idxprom589 = sext i32 %sub588 to i64
  %arrayidx590 = getelementptr inbounds [16 x i16], [16 x i16]* %vline, i32 0, i64 %idxprom589
  %329 = load i16, i16* %arrayidx590, align 2
  %conv591 = zext i16 %329 to i32
  %add592 = add nsw i32 %conv587, %conv591
  %mul593 = mul nsw i32 16, %add592
  store i32 %mul593, i32* %iaa, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.594

for.cond.594:                                     ; preds = %for.inc.626, %for.end.563
  %330 = load i32, i32* %j, align 4
  %331 = load i32, i32* %cr_MB_y, align 4
  %cmp595 = icmp slt i32 %330, %331
  br i1 %cmp595, label %for.body.597, label %for.end.628

for.body.597:                                     ; preds = %for.cond.594
  store i32 0, i32* %i, align 4
  br label %for.cond.598

for.cond.598:                                     ; preds = %for.inc.623, %for.body.597
  %332 = load i32, i32* %i, align 4
  %333 = load i32, i32* %cr_MB_x, align 4
  %cmp599 = icmp slt i32 %332, %333
  br i1 %cmp599, label %for.body.601, label %for.end.625

for.body.601:                                     ; preds = %for.cond.598
  %334 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %334, i32 0, i32 157
  %335 = load i32, i32* %max_imgpel_value_uv, align 4
  %336 = load i32, i32* %iaa, align 4
  %337 = load i32, i32* %i, align 4
  %338 = load i32, i32* %cr_MB_x, align 4
  %shr602 = ashr i32 %338, 1
  %sub603 = sub nsw i32 %337, %shr602
  %add604 = add nsw i32 %sub603, 1
  %339 = load i32, i32* %ib, align 4
  %mul605 = mul nsw i32 %add604, %339
  %add606 = add nsw i32 %336, %mul605
  %340 = load i32, i32* %j, align 4
  %341 = load i32, i32* %cr_MB_y, align 4
  %shr607 = ashr i32 %341, 1
  %sub608 = sub nsw i32 %340, %shr607
  %add609 = add nsw i32 %sub608, 1
  %342 = load i32, i32* %ic, align 4
  %mul610 = mul nsw i32 %add609, %342
  %add611 = add nsw i32 %add606, %mul610
  %add612 = add nsw i32 %add611, 16
  %shr613 = ashr i32 %add612, 5
  %call = call i32 @iClip3(i32 0, i32 %335, i32 %shr613)
  %conv614 = trunc i32 %call to i16
  %343 = load i32, i32* %i, align 4
  %idxprom615 = sext i32 %343 to i64
  %344 = load i32, i32* %j, align 4
  %idxprom616 = sext i32 %344 to i64
  %345 = load i32, i32* %uv, align 4
  %idxprom617 = sext i32 %345 to i64
  %346 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c618 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %346, i32 0, i32 50
  %arrayidx619 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c618, i32 0, i64 %idxprom617
  %arrayidx620 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx619, i32 0, i64 3
  %arrayidx621 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx620, i32 0, i64 %idxprom616
  %arrayidx622 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx621, i32 0, i64 %idxprom615
  store i16 %conv614, i16* %arrayidx622, align 2
  br label %for.inc.623

for.inc.623:                                      ; preds = %for.body.601
  %347 = load i32, i32* %i, align 4
  %inc624 = add nsw i32 %347, 1
  store i32 %inc624, i32* %i, align 4
  br label %for.cond.598

for.end.625:                                      ; preds = %for.cond.598
  br label %for.inc.626

for.inc.626:                                      ; preds = %for.end.625
  %348 = load i32, i32* %j, align 4
  %inc627 = add nsw i32 %348, 1
  store i32 %inc627, i32* %j, align 4
  br label %for.cond.594

for.end.628:                                      ; preds = %for.cond.594
  br label %if.end.629

if.end.629:                                       ; preds = %for.end.628, %land.lhs.true.481, %land.lhs.true.479, %land.lhs.true.476, %if.end.473
  br label %for.inc.630

for.inc.630:                                      ; preds = %if.end.629
  %349 = load i32, i32* %uv, align 4
  %inc631 = add nsw i32 %349, 1
  store i32 %inc631, i32* %uv, align 4
  br label %for.cond.90

for.end.632:                                      ; preds = %for.cond.90
  %350 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %350, i32 0, i32 113
  %351 = load i32, i32* %rdopt, align 4
  %tobool633 = icmp ne i32 %351, 0
  br i1 %tobool633, label %if.end.761, label %if.then.634

if.then.634:                                      ; preds = %for.end.632
  store i32 2147483647, i32* %min_cost, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.635

for.cond.635:                                     ; preds = %for.inc.641, %if.then.634
  %352 = load i32, i32* %i, align 4
  %353 = load i32, i32* %cr_MB_y, align 4
  %cmp636 = icmp slt i32 %352, %353
  br i1 %cmp636, label %for.body.638, label %for.end.643

for.body.638:                                     ; preds = %for.cond.635
  %354 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %355 = load i32, i32* %mb_nr, align 4
  %356 = load i32, i32* %i, align 4
  %357 = load i32, i32* %i, align 4
  %idxprom639 = sext i32 %357 to i64
  %arrayidx640 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom639
  call void %354(i32 %355, i32 0, i32 %356, i32 1, %struct.pix_pos* %arrayidx640)
  br label %for.inc.641

for.inc.641:                                      ; preds = %for.body.638
  %358 = load i32, i32* %i, align 4
  %inc642 = add nsw i32 %358, 1
  store i32 %inc642, i32* %i, align 4
  br label %for.cond.635

for.end.643:                                      ; preds = %for.cond.635
  store i32 0, i32* %mode, align 4
  br label %for.cond.644

for.cond.644:                                     ; preds = %for.inc.758, %for.end.643
  %359 = load i32, i32* %mode, align 4
  %cmp645 = icmp sle i32 %359, 3
  br i1 %cmp645, label %for.body.647, label %for.end.760

for.body.647:                                     ; preds = %for.cond.644
  %360 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %360, i32 0, i32 5
  %361 = load i32, i32* %type, align 4
  %cmp648 = icmp ne i32 %361, 2
  br i1 %cmp648, label %land.lhs.true.651, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.647
  %362 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraDisableInterOnly = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %362, i32 0, i32 84
  %363 = load i32, i32* %IntraDisableInterOnly, align 4
  %tobool650 = icmp ne i32 %363, 0
  br i1 %tobool650, label %if.end.658, label %land.lhs.true.651

land.lhs.true.651:                                ; preds = %lor.lhs.false, %for.body.647
  %364 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaIntraDisable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %364, i32 0, i32 90
  %365 = load i32, i32* %ChromaIntraDisable, align 4
  %cmp652 = icmp eq i32 %365, 1
  br i1 %cmp652, label %land.lhs.true.654, label %if.end.658

land.lhs.true.654:                                ; preds = %land.lhs.true.651
  %366 = load i32, i32* %mode, align 4
  %cmp655 = icmp ne i32 %366, 0
  br i1 %cmp655, label %if.then.657, label %if.end.658

if.then.657:                                      ; preds = %land.lhs.true.654
  br label %for.inc.758

if.end.658:                                       ; preds = %land.lhs.true.654, %land.lhs.true.651, %lor.lhs.false
  %367 = load i32, i32* %mode, align 4
  %cmp659 = icmp eq i32 %367, 2
  br i1 %cmp659, label %land.lhs.true.661, label %lor.lhs.false.663

land.lhs.true.661:                                ; preds = %if.end.658
  %368 = load i32, i32* %mb_available_up, align 4
  %tobool662 = icmp ne i32 %368, 0
  br i1 %tobool662, label %lor.lhs.false.663, label %if.then.685

lor.lhs.false.663:                                ; preds = %land.lhs.true.661, %if.end.658
  %369 = load i32, i32* %mode, align 4
  %cmp664 = icmp eq i32 %369, 1
  br i1 %cmp664, label %land.lhs.true.666, label %lor.lhs.false.672

land.lhs.true.666:                                ; preds = %lor.lhs.false.663
  %arrayidx667 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %370 = load i32, i32* %arrayidx667, align 4
  %tobool668 = icmp ne i32 %370, 0
  br i1 %tobool668, label %lor.lhs.false.669, label %if.then.685

lor.lhs.false.669:                                ; preds = %land.lhs.true.666
  %arrayidx670 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %371 = load i32, i32* %arrayidx670, align 4
  %tobool671 = icmp ne i32 %371, 0
  br i1 %tobool671, label %lor.lhs.false.672, label %if.then.685

lor.lhs.false.672:                                ; preds = %lor.lhs.false.669, %lor.lhs.false.663
  %372 = load i32, i32* %mode, align 4
  %cmp673 = icmp eq i32 %372, 3
  br i1 %cmp673, label %land.lhs.true.675, label %if.end.686

land.lhs.true.675:                                ; preds = %lor.lhs.false.672
  %arrayidx676 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %373 = load i32, i32* %arrayidx676, align 4
  %tobool677 = icmp ne i32 %373, 0
  br i1 %tobool677, label %lor.lhs.false.678, label %if.then.685

lor.lhs.false.678:                                ; preds = %land.lhs.true.675
  %arrayidx679 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %374 = load i32, i32* %arrayidx679, align 4
  %tobool680 = icmp ne i32 %374, 0
  br i1 %tobool680, label %lor.lhs.false.681, label %if.then.685

lor.lhs.false.681:                                ; preds = %lor.lhs.false.678
  %375 = load i32, i32* %mb_available_up, align 4
  %tobool682 = icmp ne i32 %375, 0
  br i1 %tobool682, label %lor.lhs.false.683, label %if.then.685

lor.lhs.false.683:                                ; preds = %lor.lhs.false.681
  %376 = load i32, i32* %mb_available_up_left, align 4
  %tobool684 = icmp ne i32 %376, 0
  br i1 %tobool684, label %if.end.686, label %if.then.685

if.then.685:                                      ; preds = %lor.lhs.false.683, %lor.lhs.false.681, %lor.lhs.false.678, %land.lhs.true.675, %lor.lhs.false.669, %land.lhs.true.666, %land.lhs.true.661
  br label %for.inc.758

if.end.686:                                       ; preds = %lor.lhs.false.683, %lor.lhs.false.672
  store i32 0, i32* %cost, align 4
  store i32 0, i32* %uv, align 4
  br label %for.cond.687

for.cond.687:                                     ; preds = %for.inc.751, %if.end.686
  %377 = load i32, i32* %uv, align 4
  %cmp688 = icmp slt i32 %377, 2
  br i1 %cmp688, label %for.body.690, label %for.end.753

for.body.690:                                     ; preds = %for.cond.687
  %378 = load i32, i32* %uv, align 4
  %idxprom691 = sext i32 %378 to i64
  %379 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx692 = getelementptr inbounds i16**, i16*** %379, i64 %idxprom691
  %380 = load i16**, i16*** %arrayidx692, align 8
  store i16** %380, i16*** %image, align 8
  store i32 0, i32* %block_y, align 4
  br label %for.cond.693

for.cond.693:                                     ; preds = %for.inc.748, %for.body.690
  %381 = load i32, i32* %block_y, align 4
  %382 = load i32, i32* %cr_MB_y, align 4
  %cmp694 = icmp slt i32 %381, %382
  br i1 %cmp694, label %for.body.696, label %for.end.750

for.body.696:                                     ; preds = %for.cond.693
  store i32 0, i32* %block_x, align 4
  br label %for.cond.697

for.cond.697:                                     ; preds = %for.inc.745, %for.body.696
  %383 = load i32, i32* %block_x, align 4
  %384 = load i32, i32* %cr_MB_x, align 4
  %cmp698 = icmp slt i32 %383, %384
  br i1 %cmp698, label %for.body.700, label %for.end.747

for.body.700:                                     ; preds = %for.cond.697
  store i32 0, i32* %k, align 4
  %385 = load i32, i32* %block_y, align 4
  store i32 %385, i32* %j, align 4
  br label %for.cond.701

for.cond.701:                                     ; preds = %for.inc.740, %for.body.700
  %386 = load i32, i32* %j, align 4
  %387 = load i32, i32* %block_y, align 4
  %add702 = add nsw i32 %387, 4
  %cmp703 = icmp slt i32 %386, %add702
  br i1 %cmp703, label %for.body.705, label %for.end.742

for.body.705:                                     ; preds = %for.cond.701
  %388 = load i32, i32* %block_x, align 4
  store i32 %388, i32* %i, align 4
  br label %for.cond.706

for.cond.706:                                     ; preds = %for.inc.736, %for.body.705
  %389 = load i32, i32* %i, align 4
  %390 = load i32, i32* %block_x, align 4
  %add707 = add nsw i32 %390, 4
  %cmp708 = icmp slt i32 %389, %add707
  br i1 %cmp708, label %for.body.710, label %for.end.739

for.body.710:                                     ; preds = %for.cond.706
  %391 = load i32, i32* %j, align 4
  %idxprom711 = sext i32 %391 to i64
  %arrayidx712 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom711
  %pos_x713 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx712, i32 0, i32 4
  %392 = load i32, i32* %pos_x713, align 4
  %393 = load i32, i32* %i, align 4
  %add714 = add nsw i32 %392, %393
  %idxprom715 = sext i32 %add714 to i64
  %394 = load i32, i32* %j, align 4
  %idxprom716 = sext i32 %394 to i64
  %arrayidx717 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom716
  %pos_y718 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx717, i32 0, i32 5
  %395 = load i32, i32* %pos_y718, align 4
  %idxprom719 = sext i32 %395 to i64
  %396 = load i16**, i16*** %image, align 8
  %arrayidx720 = getelementptr inbounds i16*, i16** %396, i64 %idxprom719
  %397 = load i16*, i16** %arrayidx720, align 8
  %arrayidx721 = getelementptr inbounds i16, i16* %397, i64 %idxprom715
  %398 = load i16, i16* %arrayidx721, align 2
  %conv722 = zext i16 %398 to i32
  %399 = load i32, i32* %i, align 4
  %idxprom723 = sext i32 %399 to i64
  %400 = load i32, i32* %j, align 4
  %idxprom724 = sext i32 %400 to i64
  %401 = load i32, i32* %mode, align 4
  %idxprom725 = sext i32 %401 to i64
  %402 = load i32, i32* %uv, align 4
  %idxprom726 = sext i32 %402 to i64
  %403 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c727 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %403, i32 0, i32 50
  %arrayidx728 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c727, i32 0, i64 %idxprom726
  %arrayidx729 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx728, i32 0, i64 %idxprom725
  %arrayidx730 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx729, i32 0, i64 %idxprom724
  %arrayidx731 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx730, i32 0, i64 %idxprom723
  %404 = load i16, i16* %arrayidx731, align 2
  %conv732 = zext i16 %404 to i32
  %sub733 = sub nsw i32 %conv722, %conv732
  %405 = load i32, i32* %k, align 4
  %idxprom734 = sext i32 %405 to i64
  %arrayidx735 = getelementptr inbounds [16 x i32], [16 x i32]* @diff, i32 0, i64 %idxprom734
  store i32 %sub733, i32* %arrayidx735, align 4
  br label %for.inc.736

for.inc.736:                                      ; preds = %for.body.710
  %406 = load i32, i32* %i, align 4
  %inc737 = add nsw i32 %406, 1
  store i32 %inc737, i32* %i, align 4
  %407 = load i32, i32* %k, align 4
  %inc738 = add nsw i32 %407, 1
  store i32 %inc738, i32* %k, align 4
  br label %for.cond.706

for.end.739:                                      ; preds = %for.cond.706
  br label %for.inc.740

for.inc.740:                                      ; preds = %for.end.739
  %408 = load i32, i32* %j, align 4
  %inc741 = add nsw i32 %408, 1
  store i32 %inc741, i32* %j, align 4
  br label %for.cond.701

for.end.742:                                      ; preds = %for.cond.701
  %call743 = call i32 @distortion4x4(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @diff, i32 0, i32 0))
  %409 = load i32, i32* %cost, align 4
  %add744 = add nsw i32 %409, %call743
  store i32 %add744, i32* %cost, align 4
  br label %for.inc.745

for.inc.745:                                      ; preds = %for.end.742
  %410 = load i32, i32* %block_x, align 4
  %add746 = add nsw i32 %410, 4
  store i32 %add746, i32* %block_x, align 4
  br label %for.cond.697

for.end.747:                                      ; preds = %for.cond.697
  br label %for.inc.748

for.inc.748:                                      ; preds = %for.end.747
  %411 = load i32, i32* %block_y, align 4
  %add749 = add nsw i32 %411, 4
  store i32 %add749, i32* %block_y, align 4
  br label %for.cond.693

for.end.750:                                      ; preds = %for.cond.693
  br label %for.inc.751

for.inc.751:                                      ; preds = %for.end.750
  %412 = load i32, i32* %uv, align 4
  %inc752 = add nsw i32 %412, 1
  store i32 %inc752, i32* %uv, align 4
  br label %for.cond.687

for.end.753:                                      ; preds = %for.cond.687
  %413 = load i32, i32* %cost, align 4
  %414 = load i32, i32* %min_cost, align 4
  %cmp754 = icmp slt i32 %413, %414
  br i1 %cmp754, label %if.then.756, label %if.end.757

if.then.756:                                      ; preds = %for.end.753
  %415 = load i32, i32* %mode, align 4
  store i32 %415, i32* %best_mode, align 4
  %416 = load i32, i32* %cost, align 4
  store i32 %416, i32* %min_cost, align 4
  br label %if.end.757

if.end.757:                                       ; preds = %if.then.756, %for.end.753
  br label %for.inc.758

for.inc.758:                                      ; preds = %if.end.757, %if.then.685, %if.then.657
  %417 = load i32, i32* %mode, align 4
  %inc759 = add nsw i32 %417, 1
  store i32 %inc759, i32* %mode, align 4
  br label %for.cond.644

for.end.760:                                      ; preds = %for.cond.644
  %418 = load i32, i32* %best_mode, align 4
  %419 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %419, i32 0, i32 17
  store i32 %418, i32* %c_ipred_mode, align 4
  br label %if.end.761

if.end.761:                                       ; preds = %for.end.760, %for.end.632
  ret void
}

; Function Attrs: nounwind uwtable
define void @IntraChromaRDDecision(%struct.RD_PARAMS* byval align 8 %enc_mb) #0 {
entry:
  %currMB = alloca %struct.macroblock*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %image = alloca i16**, align 8
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %mb_available_up = alloca i32, align 4
  %mb_available_left = alloca [2 x i32], align 4
  %mb_available_up_left = alloca i32, align 4
  %uv = alloca i32, align 4
  %mode = alloca i32, align 4
  %best_mode = alloca i32, align 4
  %cost = alloca i32, align 4
  %min_cost = alloca i32, align 4
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [17 x %struct.pix_pos], align 16
  %cr_MB_x = alloca i32, align 4
  %cr_MB_y = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 3
  %5 = load i32, i32* %current_mb_nr1, align 4
  store i32 %5, i32* %mb_nr, align 4
  store i32 0, i32* %best_mode, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 162
  %7 = load i32, i32* %mb_cr_size_x, align 4
  store i32 %7, i32* %cr_MB_x, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 163
  %9 = load i32, i32* %mb_cr_size_y, align 4
  store i32 %9, i32* %cr_MB_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %cr_MB_y, align 4
  %add = add nsw i32 %11, 1
  %cmp = icmp slt i32 %10, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %13 = load i32, i32* %mb_nr, align 4
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %14, 1
  %15 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %15 to i64
  %arrayidx3 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom2
  call void %12(i32 %13, i32 -1, i32 %sub, i32 1, %struct.pix_pos* %arrayidx3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %18 = load i32, i32* %mb_nr, align 4
  call void %17(i32 %18, i32 0, i32 -1, i32 1, %struct.pix_pos* %up)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %19 = load i32, i32* %available, align 4
  store i32 %19, i32* %mb_available_up, align 4
  %arrayidx4 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %available5 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx4, i32 0, i32 0
  %20 = load i32, i32* %available5, align 4
  store i32 %20, i32* %mb_available_up_left, align 4
  %arrayidx6 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 1
  %available7 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx6, i32 0, i32 0
  %21 = load i32, i32* %available7, align 4
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  store i32 %21, i32* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  store i32 %21, i32* %arrayidx9, align 4
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 23
  %23 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %available10 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %24 = load i32, i32* %available10, align 4
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 1
  %25 = load i32, i32* %mb_addr, align 4
  %idxprom12 = sext i32 %25 to i64
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 63
  %27 = load i32*, i32** %intra_block, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %27, i64 %idxprom12
  %28 = load i32, i32* %arrayidx13, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %mb_available_up, align 4
  store i32 0, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  store i32 1, i32* %arrayidx14, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.35, %cond.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %cr_MB_y, align 4
  %shr = ashr i32 %30, 1
  %cmp16 = icmp slt i32 %29, %shr
  br i1 %cmp16, label %for.body.17, label %for.end.37

for.body.17:                                      ; preds = %for.cond.15
  %31 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %31, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom19
  %available21 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx20, i32 0, i32 0
  %32 = load i32, i32* %available21, align 4
  %tobool22 = icmp ne i32 %32, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.31

cond.true.23:                                     ; preds = %for.body.17
  %33 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %33, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom25
  %mb_addr27 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx26, i32 0, i32 1
  %34 = load i32, i32* %mb_addr27, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 63
  %36 = load i32*, i32** %intra_block29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %36, i64 %idxprom28
  %37 = load i32, i32* %arrayidx30, align 4
  br label %cond.end.32

cond.false.31:                                    ; preds = %for.body.17
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.23
  %cond33 = phi i32 [ %37, %cond.true.23 ], [ 0, %cond.false.31 ]
  %arrayidx34 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %38 = load i32, i32* %arrayidx34, align 4
  %and = and i32 %38, %cond33
  store i32 %and, i32* %arrayidx34, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %cond.end.32
  %39 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %39, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.15

for.end.37:                                       ; preds = %for.cond.15
  %40 = load i32, i32* %cr_MB_y, align 4
  %shr38 = ashr i32 %40, 1
  store i32 %shr38, i32* %i, align 4
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  store i32 1, i32* %arrayidx39, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.61, %for.end.37
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %cr_MB_y, align 4
  %cmp41 = icmp slt i32 %41, %42
  br i1 %cmp41, label %for.body.42, label %for.end.63

for.body.42:                                      ; preds = %for.cond.40
  %43 = load i32, i32* %i, align 4
  %add43 = add nsw i32 %43, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom44
  %available46 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx45, i32 0, i32 0
  %44 = load i32, i32* %available46, align 4
  %tobool47 = icmp ne i32 %44, 0
  br i1 %tobool47, label %cond.true.48, label %cond.false.56

cond.true.48:                                     ; preds = %for.body.42
  %45 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %45, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom50
  %mb_addr52 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx51, i32 0, i32 1
  %46 = load i32, i32* %mb_addr52, align 4
  %idxprom53 = sext i32 %46 to i64
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 63
  %48 = load i32*, i32** %intra_block54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %48, i64 %idxprom53
  %49 = load i32, i32* %arrayidx55, align 4
  br label %cond.end.57

cond.false.56:                                    ; preds = %for.body.42
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.48
  %cond58 = phi i32 [ %49, %cond.true.48 ], [ 0, %cond.false.56 ]
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %50 = load i32, i32* %arrayidx59, align 4
  %and60 = and i32 %50, %cond58
  store i32 %and60, i32* %arrayidx59, align 4
  br label %for.inc.61

for.inc.61:                                       ; preds = %cond.end.57
  %51 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %51, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.40

for.end.63:                                       ; preds = %for.cond.40
  %arrayidx64 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %available65 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx64, i32 0, i32 0
  %52 = load i32, i32* %available65, align 4
  %tobool66 = icmp ne i32 %52, 0
  br i1 %tobool66, label %cond.true.67, label %cond.false.73

cond.true.67:                                     ; preds = %for.end.63
  %arrayidx68 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %mb_addr69 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx68, i32 0, i32 1
  %53 = load i32, i32* %mb_addr69, align 4
  %idxprom70 = sext i32 %53 to i64
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 63
  %55 = load i32*, i32** %intra_block71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %55, i64 %idxprom70
  %56 = load i32, i32* %arrayidx72, align 4
  br label %cond.end.74

cond.false.73:                                    ; preds = %for.end.63
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.67
  %cond75 = phi i32 [ %56, %cond.true.67 ], [ 0, %cond.false.73 ]
  store i32 %cond75, i32* %mb_available_up_left, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.74, %for.end
  store i32 2147483647, i32* %min_cost, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.81, %if.end
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %cr_MB_y, align 4
  %cmp77 = icmp slt i32 %57, %58
  br i1 %cmp77, label %for.body.78, label %for.end.83

for.body.78:                                      ; preds = %for.cond.76
  %59 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %60 = load i32, i32* %mb_nr, align 4
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %62 to i64
  %arrayidx80 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom79
  call void %59(i32 %60, i32 0, i32 %61, i32 1, %struct.pix_pos* %arrayidx80)
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.78
  %63 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %63, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.76

for.end.83:                                       ; preds = %for.cond.76
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 100
  %65 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool84 = icmp ne i32 %65, 0
  br i1 %tobool84, label %land.lhs.true, label %if.end.99

land.lhs.true:                                    ; preds = %for.end.83
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 90
  %67 = load i32, i32* %field_mode, align 4
  %tobool85 = icmp ne i32 %67, 0
  br i1 %tobool85, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.96, %if.then.86
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %cr_MB_y, align 4
  %cmp88 = icmp slt i32 %68, %69
  br i1 %cmp88, label %for.body.89, label %for.end.98

for.body.89:                                      ; preds = %for.cond.87
  %70 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %70 to i64
  %arrayidx91 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom90
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx91, i32 0, i32 5
  %71 = load i32, i32* %pos_y, align 4
  %shr92 = ashr i32 %71, 1
  %72 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %72 to i64
  %arrayidx94 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom93
  %pos_y95 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx94, i32 0, i32 5
  store i32 %shr92, i32* %pos_y95, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.89
  %73 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %73, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.87

for.end.98:                                       ; preds = %for.cond.87
  br label %if.end.99

if.end.99:                                        ; preds = %for.end.98, %land.lhs.true, %for.end.83
  store i32 0, i32* %mode, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.203, %if.end.99
  %74 = load i32, i32* %mode, align 4
  %cmp101 = icmp sle i32 %74, 3
  br i1 %cmp101, label %for.body.102, label %for.end.205

for.body.102:                                     ; preds = %for.cond.100
  %75 = load i32, i32* %mode, align 4
  %cmp103 = icmp eq i32 %75, 2
  br i1 %cmp103, label %land.lhs.true.104, label %lor.lhs.false

land.lhs.true.104:                                ; preds = %for.body.102
  %76 = load i32, i32* %mb_available_up, align 4
  %tobool105 = icmp ne i32 %76, 0
  br i1 %tobool105, label %lor.lhs.false, label %if.then.125

lor.lhs.false:                                    ; preds = %land.lhs.true.104, %for.body.102
  %77 = load i32, i32* %mode, align 4
  %cmp106 = icmp eq i32 %77, 1
  br i1 %cmp106, label %land.lhs.true.107, label %lor.lhs.false.113

land.lhs.true.107:                                ; preds = %lor.lhs.false
  %arrayidx108 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %78 = load i32, i32* %arrayidx108, align 4
  %tobool109 = icmp ne i32 %78, 0
  br i1 %tobool109, label %lor.lhs.false.110, label %if.then.125

lor.lhs.false.110:                                ; preds = %land.lhs.true.107
  %arrayidx111 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %79 = load i32, i32* %arrayidx111, align 4
  %tobool112 = icmp ne i32 %79, 0
  br i1 %tobool112, label %lor.lhs.false.113, label %if.then.125

lor.lhs.false.113:                                ; preds = %lor.lhs.false.110, %lor.lhs.false
  %80 = load i32, i32* %mode, align 4
  %cmp114 = icmp eq i32 %80, 3
  br i1 %cmp114, label %land.lhs.true.115, label %if.end.126

land.lhs.true.115:                                ; preds = %lor.lhs.false.113
  %arrayidx116 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 0
  %81 = load i32, i32* %arrayidx116, align 4
  %tobool117 = icmp ne i32 %81, 0
  br i1 %tobool117, label %lor.lhs.false.118, label %if.then.125

lor.lhs.false.118:                                ; preds = %land.lhs.true.115
  %arrayidx119 = getelementptr inbounds [2 x i32], [2 x i32]* %mb_available_left, i32 0, i64 1
  %82 = load i32, i32* %arrayidx119, align 4
  %tobool120 = icmp ne i32 %82, 0
  br i1 %tobool120, label %lor.lhs.false.121, label %if.then.125

lor.lhs.false.121:                                ; preds = %lor.lhs.false.118
  %83 = load i32, i32* %mb_available_up, align 4
  %tobool122 = icmp ne i32 %83, 0
  br i1 %tobool122, label %lor.lhs.false.123, label %if.then.125

lor.lhs.false.123:                                ; preds = %lor.lhs.false.121
  %84 = load i32, i32* %mb_available_up_left, align 4
  %tobool124 = icmp ne i32 %84, 0
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %lor.lhs.false.123, %lor.lhs.false.121, %lor.lhs.false.118, %land.lhs.true.115, %lor.lhs.false.110, %land.lhs.true.107, %land.lhs.true.104
  br label %for.inc.203

if.end.126:                                       ; preds = %lor.lhs.false.123, %lor.lhs.false.113
  store i32 0, i32* %cost, align 4
  store i32 0, i32* %uv, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.190, %if.end.126
  %85 = load i32, i32* %uv, align 4
  %cmp128 = icmp slt i32 %85, 2
  br i1 %cmp128, label %for.body.129, label %for.end.192

for.body.129:                                     ; preds = %for.cond.127
  %86 = load i32, i32* %uv, align 4
  %idxprom130 = sext i32 %86 to i64
  %87 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx131 = getelementptr inbounds i16**, i16*** %87, i64 %idxprom130
  %88 = load i16**, i16*** %arrayidx131, align 8
  store i16** %88, i16*** %image, align 8
  store i32 0, i32* %block_y, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.183, %for.body.129
  %89 = load i32, i32* %block_y, align 4
  %90 = load i32, i32* %cr_MB_y, align 4
  %cmp133 = icmp slt i32 %89, %90
  br i1 %cmp133, label %for.body.134, label %for.end.185

for.body.134:                                     ; preds = %for.cond.132
  store i32 0, i32* %block_x, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.176, %for.body.134
  %91 = load i32, i32* %block_x, align 4
  %92 = load i32, i32* %cr_MB_x, align 4
  %cmp136 = icmp slt i32 %91, %92
  br i1 %cmp136, label %for.body.137, label %for.end.178

for.body.137:                                     ; preds = %for.cond.135
  store i32 0, i32* %k, align 4
  %93 = load i32, i32* %block_y, align 4
  store i32 %93, i32* %j, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.172, %for.body.137
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %block_y, align 4
  %add139 = add nsw i32 %95, 4
  %cmp140 = icmp slt i32 %94, %add139
  br i1 %cmp140, label %for.body.141, label %for.end.174

for.body.141:                                     ; preds = %for.cond.138
  %96 = load i32, i32* %block_x, align 4
  store i32 %96, i32* %i, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.168, %for.body.141
  %97 = load i32, i32* %i, align 4
  %98 = load i32, i32* %block_x, align 4
  %add143 = add nsw i32 %98, 4
  %cmp144 = icmp slt i32 %97, %add143
  br i1 %cmp144, label %for.body.145, label %for.end.171

for.body.145:                                     ; preds = %for.cond.142
  %99 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %99 to i64
  %arrayidx147 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom146
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx147, i32 0, i32 4
  %100 = load i32, i32* %pos_x, align 4
  %101 = load i32, i32* %i, align 4
  %add148 = add nsw i32 %100, %101
  %idxprom149 = sext i32 %add148 to i64
  %102 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %102 to i64
  %arrayidx151 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom150
  %pos_y152 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx151, i32 0, i32 5
  %103 = load i32, i32* %pos_y152, align 4
  %idxprom153 = sext i32 %103 to i64
  %104 = load i16**, i16*** %image, align 8
  %arrayidx154 = getelementptr inbounds i16*, i16** %104, i64 %idxprom153
  %105 = load i16*, i16** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i16, i16* %105, i64 %idxprom149
  %106 = load i16, i16* %arrayidx155, align 2
  %conv = zext i16 %106 to i32
  %107 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %107 to i64
  %108 = load i32, i32* %j, align 4
  %idxprom157 = sext i32 %108 to i64
  %109 = load i32, i32* %mode, align 4
  %idxprom158 = sext i32 %109 to i64
  %110 = load i32, i32* %uv, align 4
  %idxprom159 = sext i32 %110 to i64
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 50
  %arrayidx160 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c, i32 0, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx160, i32 0, i64 %idxprom158
  %arrayidx162 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx161, i32 0, i64 %idxprom157
  %arrayidx163 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx162, i32 0, i64 %idxprom156
  %112 = load i16, i16* %arrayidx163, align 2
  %conv164 = zext i16 %112 to i32
  %sub165 = sub nsw i32 %conv, %conv164
  %113 = load i32, i32* %k, align 4
  %idxprom166 = sext i32 %113 to i64
  %arrayidx167 = getelementptr inbounds [16 x i32], [16 x i32]* @diff, i32 0, i64 %idxprom166
  store i32 %sub165, i32* %arrayidx167, align 4
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.145
  %114 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %114, 1
  store i32 %inc169, i32* %i, align 4
  %115 = load i32, i32* %k, align 4
  %inc170 = add nsw i32 %115, 1
  store i32 %inc170, i32* %k, align 4
  br label %for.cond.142

for.end.171:                                      ; preds = %for.cond.142
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.end.171
  %116 = load i32, i32* %j, align 4
  %inc173 = add nsw i32 %116, 1
  store i32 %inc173, i32* %j, align 4
  br label %for.cond.138

for.end.174:                                      ; preds = %for.cond.138
  %call = call i32 @distortion4x4(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @diff, i32 0, i32 0))
  %117 = load i32, i32* %cost, align 4
  %add175 = add nsw i32 %117, %call
  store i32 %add175, i32* %cost, align 4
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.end.174
  %118 = load i32, i32* %block_x, align 4
  %add177 = add nsw i32 %118, 4
  store i32 %add177, i32* %block_x, align 4
  br label %for.cond.135

for.end.178:                                      ; preds = %for.cond.135
  %119 = load i32, i32* %cost, align 4
  %120 = load i32, i32* %min_cost, align 4
  %cmp179 = icmp sgt i32 %119, %120
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %for.end.178
  br label %for.end.185

if.end.182:                                       ; preds = %for.end.178
  br label %for.inc.183

for.inc.183:                                      ; preds = %if.end.182
  %121 = load i32, i32* %block_y, align 4
  %add184 = add nsw i32 %121, 4
  store i32 %add184, i32* %block_y, align 4
  br label %for.cond.132

for.end.185:                                      ; preds = %if.then.181, %for.cond.132
  %122 = load i32, i32* %cost, align 4
  %123 = load i32, i32* %min_cost, align 4
  %cmp186 = icmp sgt i32 %122, %123
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %for.end.185
  br label %for.end.192

if.end.189:                                       ; preds = %for.end.185
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %124 = load i32, i32* %uv, align 4
  %inc191 = add nsw i32 %124, 1
  store i32 %inc191, i32* %uv, align 4
  br label %for.cond.127

for.end.192:                                      ; preds = %if.then.188, %for.cond.127
  %lambda_me = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me, i32 0, i64 2
  %125 = load double, double* %arrayidx193, align 8
  %126 = load i32, i32* %mode, align 4
  %idxprom194 = sext i32 %126 to i64
  %127 = load i32*, i32** @mvbits, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %127, i64 %idxprom194
  %128 = load i32, i32* %arrayidx195, align 4
  %conv196 = sitofp i32 %128 to double
  %mul = fmul double %125, %conv196
  %conv197 = fptosi double %mul to i32
  %129 = load i32, i32* %cost, align 4
  %add198 = add nsw i32 %129, %conv197
  store i32 %add198, i32* %cost, align 4
  %130 = load i32, i32* %cost, align 4
  %131 = load i32, i32* %min_cost, align 4
  %cmp199 = icmp slt i32 %130, %131
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %for.end.192
  %132 = load i32, i32* %mode, align 4
  store i32 %132, i32* %best_mode, align 4
  %133 = load i32, i32* %cost, align 4
  store i32 %133, i32* %min_cost, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %for.end.192
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202, %if.then.125
  %134 = load i32, i32* %mode, align 4
  %inc204 = add nsw i32 %134, 1
  store i32 %inc204, i32* %mode, align 4
  br label %for.cond.100

for.end.205:                                      ; preds = %for.cond.100
  %135 = load i32, i32* %best_mode, align 4
  %136 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %136, i32 0, i32 17
  store i32 %135, i32* %c_ipred_mode, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ZeroRef(%struct.macroblock* %currMB) #0 {
entry:
  %retval = alloca i32, align 4
  %currMB.addr = alloca %struct.macroblock*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 38
  %1 = load i32, i32* %block_y, align 4
  store i32 %1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 38
  %4 = load i32, i32* %block_y1, align 4
  %add = add nsw i32 %4, 4
  %cmp = icmp slt i32 %2, %add
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 37
  %6 = load i32, i32* %block_x, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 37
  %9 = load i32, i32* %block_x3, align 4
  %add4 = add nsw i32 %9, 4
  %cmp5 = icmp slt i32 %7, %add4
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 35
  %13 = load i8***, i8**** %ref_idx, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %13, i64 0
  %14 = load i8**, i8*** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %14, i64 %idxprom7
  %15 = load i8*, i8** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx9, align 1
  %conv = sext i8 %16 to i32
  %cmp10 = icmp ne i32 %conv, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %18 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.14, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @MBType2Value(%struct.macroblock* %currMB) #0 {
entry:
  %retval = alloca i32, align 4
  %currMB.addr = alloca %struct.macroblock*, align 8
  %mbtype = alloca i32, align 4
  %pdir0 = alloca i32, align 4
  %pdir1 = alloca i32, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else.29

if.then:                                          ; preds = %entry
  %2 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %2, i32 0, i32 8
  %3 = load i32, i32* %mb_type, align 4
  %cmp1 = icmp eq i32 %3, 13
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type2 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 8
  %5 = load i32, i32* %mb_type2, align 4
  %cmp3 = icmp eq i32 %5, 9
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 5
  %7 = load i32, i32* %type5, align 4
  %cmp6 = icmp eq i32 %7, 2
  %cond = select i1 %cmp6, i32 0, i32 6
  store i32 %cond, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %8 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i32 0, i32 8
  %9 = load i32, i32* %mb_type7, align 4
  %cmp8 = icmp eq i32 %9, 10
  br i1 %cmp8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 5
  %11 = load i32, i32* %type10, align 4
  %cmp11 = icmp eq i32 %11, 2
  %cond12 = select i1 %cmp11, i32 0, i32 6
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %i16offset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 94
  %13 = load i32, i32* %i16offset, align 4
  %add = add nsw i32 %cond12, %13
  store i32 %add, i32* %retval
  br label %return

if.else.13:                                       ; preds = %if.else
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type14 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 8
  %15 = load i32, i32* %mb_type14, align 4
  %cmp15 = icmp eq i32 %15, 14
  br i1 %cmp15, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %if.else.13
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 5
  %17 = load i32, i32* %type17, align 4
  %cmp18 = icmp eq i32 %17, 2
  %cond19 = select i1 %cmp18, i32 25, i32 31
  store i32 %cond19, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.else.13
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type21 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 8
  %19 = load i32, i32* %mb_type21, align 4
  %cmp22 = icmp eq i32 %19, 8
  br i1 %cmp22, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %if.else.20
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 74
  %21 = load i32, i32* %symbol_mode, align 4
  %cmp24 = icmp eq i32 %21, 0
  br i1 %cmp24, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %if.then.23
  %22 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %call = call i32 @ZeroRef(%struct.macroblock* %22)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true
  store i32 5, i32* %retval
  br label %return

if.else.26:                                       ; preds = %land.lhs.true, %if.then.23
  store i32 4, i32* %retval
  br label %return

if.else.27:                                       ; preds = %if.else.20
  %23 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 8
  %24 = load i32, i32* %mb_type28, align 4
  store i32 %24, i32* %retval
  br label %return

if.else.29:                                       ; preds = %entry
  %25 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i32 0, i32 8
  %26 = load i32, i32* %mb_type30, align 4
  store i32 %26, i32* %mbtype, align 4
  %27 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %b8pdir = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir, i32 0, i64 0
  %28 = load i32, i32* %arrayidx, align 4
  store i32 %28, i32* %pdir0, align 4
  %29 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %b8pdir31 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 15
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir31, i32 0, i64 3
  %30 = load i32, i32* %arrayidx32, align 4
  store i32 %30, i32* %pdir1, align 4
  %31 = load i32, i32* %mbtype, align 4
  %cmp33 = icmp eq i32 %31, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.29
  store i32 0, i32* %retval
  br label %return

if.else.35:                                       ; preds = %if.else.29
  %32 = load i32, i32* %mbtype, align 4
  %cmp36 = icmp eq i32 %32, 9
  br i1 %cmp36, label %if.then.39, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.else.35
  %33 = load i32, i32* %mbtype, align 4
  %cmp38 = icmp eq i32 %33, 13
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %lor.lhs.false.37, %if.else.35
  store i32 23, i32* %retval
  br label %return

if.else.40:                                       ; preds = %lor.lhs.false.37
  %34 = load i32, i32* %mbtype, align 4
  %cmp41 = icmp eq i32 %34, 10
  br i1 %cmp41, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.else.40
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %i16offset43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 94
  %36 = load i32, i32* %i16offset43, align 4
  %add44 = add nsw i32 23, %36
  store i32 %add44, i32* %retval
  br label %return

if.else.45:                                       ; preds = %if.else.40
  %37 = load i32, i32* %mbtype, align 4
  %cmp46 = icmp eq i32 %37, 14
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.45
  store i32 48, i32* %retval
  br label %return

if.else.48:                                       ; preds = %if.else.45
  %38 = load i32, i32* %mbtype, align 4
  %cmp49 = icmp eq i32 %38, 8
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.48
  store i32 22, i32* %retval
  br label %return

if.else.51:                                       ; preds = %if.else.48
  %39 = load i32, i32* %mbtype, align 4
  %cmp52 = icmp eq i32 %39, 1
  br i1 %cmp52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.else.51
  %40 = load i32, i32* %pdir0, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* @MBType2Value.dir1offset, i32 0, i64 %idxprom
  %41 = load i32, i32* %arrayidx54, align 4
  store i32 %41, i32* %retval
  br label %return

if.else.55:                                       ; preds = %if.else.51
  %42 = load i32, i32* %mbtype, align 4
  %cmp56 = icmp eq i32 %42, 2
  br i1 %cmp56, label %if.then.57, label %if.else.63

if.then.57:                                       ; preds = %if.else.55
  %43 = load i32, i32* %pdir1, align 4
  %idxprom58 = sext i32 %43 to i64
  %44 = load i32, i32* %pdir0, align 4
  %idxprom59 = sext i32 %44 to i64
  %arrayidx60 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @MBType2Value.dir2offset, i32 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx60, i32 0, i64 %idxprom58
  %45 = load i32, i32* %arrayidx61, align 4
  %add62 = add nsw i32 4, %45
  store i32 %add62, i32* %retval
  br label %return

if.else.63:                                       ; preds = %if.else.55
  %46 = load i32, i32* %pdir1, align 4
  %idxprom64 = sext i32 %46 to i64
  %47 = load i32, i32* %pdir0, align 4
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @MBType2Value.dir2offset, i32 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx66, i32 0, i64 %idxprom64
  %48 = load i32, i32* %arrayidx67, align 4
  %add68 = add nsw i32 5, %48
  store i32 %add68, i32* %retval
  br label %return

return:                                           ; preds = %if.else.63, %if.then.57, %if.then.53, %if.then.50, %if.then.47, %if.then.42, %if.then.39, %if.then.34, %if.else.27, %if.else.26, %if.then.25, %if.then.16, %if.then.9, %if.then.4
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @writeIntra4x4Modes() #0 {
entry:
  %i = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %bitCount = alloca i32*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %partMap = alloca i32*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %rate = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 60
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %6, %struct.Slice** %currSlice, align 8
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 76
  %8 = load i32, i32* %partition_mode, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx2, align 8
  store i32* %9, i32** %partMap, align 8
  %10 = load i32*, i32** %partMap, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 4
  %11 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %12, i32 0, i32 6
  %13 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx5 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %13, i64 %idxprom4
  store %struct.datapartition* %arrayidx5, %struct.datapartition** %dataPart, align 8
  store i32 0, i32* %rate, align 4
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %IntraChromaPredModeFlag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 18
  store i32 1, i32* %IntraChromaPredModeFlag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %15, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 6
  store i32 %16, i32* %context, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 10
  %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* %intra_pred_modes, i32 0, i64 %idxprom6
  %19 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %19 to i32
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %conv, i32* %value1, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 4, i32* %type, align 4
  %20 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeIntraPredMode, align 8
  %21 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %20(%struct.syntaxelement* %se, %struct.datapartition* %21)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %22 = load i32, i32* %len, align 4
  %23 = load i32*, i32** %bitCount, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %23, i64 5
  %24 = load i32, i32* %arrayidx8, align 4
  %add = add nsw i32 %24, %22
  store i32 %add, i32* %arrayidx8, align 4
  %len9 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %25 = load i32, i32* %len9, align 4
  %26 = load i32, i32* %rate, align 4
  %add10 = add nsw i32 %26, %25
  store i32 %add10, i32* %rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %rate, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @writeIntra8x8Modes() #0 {
entry:
  %block8x8 = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %bitCount = alloca i32*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %partMap = alloca i32*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %rate = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 60
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %6, %struct.Slice** %currSlice, align 8
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 76
  %8 = load i32, i32* %partition_mode, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx2, align 8
  store i32* %9, i32** %partMap, align 8
  %10 = load i32*, i32** %partMap, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 4
  %11 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %12, i32 0, i32 6
  %13 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx5 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %13, i64 %idxprom4
  store %struct.datapartition* %arrayidx5, %struct.datapartition** %dataPart, align 8
  store i32 0, i32* %rate, align 4
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %IntraChromaPredModeFlag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 18
  store i32 1, i32* %IntraChromaPredModeFlag, align 4
  store i32 0, i32* %block8x8, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %block8x8, align 4
  %cmp = icmp slt i32 %15, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %block8x8, align 4
  %shl = shl i32 %16, 2
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 6
  store i32 %shl, i32* %context, align 4
  %17 = load i32, i32* %block8x8, align 4
  %shl6 = shl i32 %17, 2
  %idxprom7 = sext i32 %shl6 to i64
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes8x8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 11
  %arrayidx8 = getelementptr inbounds [16 x i8], [16 x i8]* %intra_pred_modes8x8, i32 0, i64 %idxprom7
  %19 = load i8, i8* %arrayidx8, align 1
  %conv = sext i8 %19 to i32
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %conv, i32* %value1, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 4, i32* %type, align 4
  %20 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeIntraPredMode, align 8
  %21 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %20(%struct.syntaxelement* %se, %struct.datapartition* %21)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %22 = load i32, i32* %len, align 4
  %23 = load i32*, i32** %bitCount, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 5
  %24 = load i32, i32* %arrayidx9, align 4
  %add = add nsw i32 %24, %22
  store i32 %add, i32* %arrayidx9, align 4
  %len10 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %25 = load i32, i32* %len10, align 4
  %26 = load i32, i32* %rate, align 4
  %add11 = add nsw i32 %26, %25
  store i32 %add11, i32* %rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %block8x8, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %block8x8, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %rate, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @writeIntraModes() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 8
  %4 = load i32, i32* %mb_type, align 4
  switch i32 %4, label %sw.default [
    i32 9, label %sw.bb
    i32 13, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 @writeIntra4x4Modes()
  store i32 %call, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call i32 @writeIntra8x8Modes()
  store i32 %call2, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @B8Mode2Value(i32 %b8mode, i32 %b8pdir) #0 {
entry:
  %retval = alloca i32, align 4
  %b8mode.addr = alloca i32, align 4
  %b8pdir.addr = alloca i32, align 4
  store i32 %b8mode, i32* %b8mode.addr, align 4
  store i32 %b8pdir, i32* %b8pdir.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %b8mode.addr, align 4
  %sub = sub nsw i32 %2, 4
  store i32 %sub, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %b8mode.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @B8Mode2Value.b8start, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %b8mode.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* @B8Mode2Value.b8inc, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %b8pdir.addr, align 4
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %4, %mul
  store i32 %add, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @writeMBLayer(i32 %rdopt, i32* %coeff_rate) #0 {
entry:
  %retval = alloca i32, align 4
  %rdopt.addr = alloca i32, align 4
  %coeff_rate.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %prev_mb_nr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %prevMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %bitCount = alloca i32*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %partMap = alloca i32*, align 8
  %no_bits = alloca i32, align 4
  %skip = alloca i32, align 4
  %mb_type17 = alloca i32, align 4
  %prevMbSkipped = alloca i32, align 4
  %mb_field_tmp = alloca i32, align 4
  %topMB = alloca %struct.macroblock*, align 8
  %WriteFrameFieldMBInHeader = alloca i32, align 4
  %jj = alloca i32, align 4
  %uv = alloca i32, align 4
  %len235 = alloca i32, align 4
  %eep = alloca %struct.EncodingEnvironment*, align 8
  store i32 %rdopt, i32* %rdopt.addr, align 4
  store i32* %coeff_rate, i32** %coeff_rate.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  store i32 %1, i32* %mb_nr, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr1, align 4
  %call = call i32 @FmoGetPreviousMBNr(i32 %3)
  store i32 %call, i32* %prev_mb_nr, align 4
  %4 = load i32, i32* %mb_nr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 61
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %7 = load i32, i32* %mb_nr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %prev_mb_nr, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 61
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_data3, align 8
  %arrayidx4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i64 %idxprom2
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.macroblock* [ %arrayidx4, %cond.true ], [ null, %cond.false ]
  store %struct.macroblock* %cond, %struct.macroblock** %prevMB, align 8
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 60
  %13 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %13, %struct.Slice** %currSlice, align 8
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 76
  %15 = load i32, i32* %partition_mode, align 4
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom5
  %16 = load i32*, i32** %arrayidx6, align 8
  store i32* %16, i32** %partMap, align 8
  store i32 0, i32* %no_bits, align 4
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 8
  %18 = load i32, i32* %mb_type, align 4
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.15

cond.false.9:                                     ; preds = %cond.end
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 5
  %20 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.false.9
  %21 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 12
  %22 = load i32, i32* %cbp, align 4
  %tobool11 = icmp ne i32 %22, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.false.9
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.10
  %cond14 = phi i32 [ %lnot.ext, %cond.true.10 ], [ 1, %cond.false.12 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end.13, %cond.true.8
  %cond16 = phi i32 [ 0, %cond.true.8 ], [ %cond14, %cond.end.13 ]
  store i32 %cond16, i32* %skip, align 4
  store i32 0, i32* %prevMbSkipped, align 4
  store %struct.macroblock* null, %struct.macroblock** %topMB, align 8
  store i32 0, i32* %WriteFrameFieldMBInHeader, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 100
  %24 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool18 = icmp ne i32 %24, 0
  br i1 %tobool18, label %if.then, label %if.end.36

if.then:                                          ; preds = %cond.end.15
  %25 = load i32, i32* %mb_nr, align 4
  %and = and i32 %25, 1
  %cmp19 = icmp eq i32 0, %and
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then
  store i32 1, i32* %WriteFrameFieldMBInHeader, align 4
  store i32 0, i32* %prevMbSkipped, align 4
  br label %if.end.35

if.else:                                          ; preds = %if.then
  %26 = load %struct.macroblock*, %struct.macroblock** %prevMB, align 8
  %mb_type21 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i32 0, i32 8
  %27 = load i32, i32* %mb_type21, align 4
  %tobool22 = icmp ne i32 %27, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %if.else
  br i1 false, label %if.then.31, label %if.end

cond.false.24:                                    ; preds = %if.else
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 5
  %29 = load i32, i32* %type25, align 4
  %cmp26 = icmp eq i32 %29, 1
  br i1 %cmp26, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.false.24
  %30 = load %struct.macroblock*, %struct.macroblock** %prevMB, align 8
  %cbp28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i32 0, i32 12
  %31 = load i32, i32* %cbp28, align 4
  %tobool29 = icmp ne i32 %31, 0
  br i1 %tobool29, label %if.end, label %if.then.31

cond.false.30:                                    ; preds = %cond.false.24
  br i1 true, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %cond.false.30, %cond.true.27, %cond.true.23
  store i32 1, i32* %WriteFrameFieldMBInHeader, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.31, %cond.false.30, %cond.true.27, %cond.true.23
  %32 = load i32, i32* %prev_mb_nr, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 61
  %34 = load %struct.macroblock*, %struct.macroblock** %mb_data33, align 8
  %arrayidx34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i64 %idxprom32
  store %struct.macroblock* %arrayidx34, %struct.macroblock** %topMB, align 8
  %35 = load %struct.macroblock*, %struct.macroblock** %topMB, align 8
  %skip_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 43
  %36 = load i32, i32* %skip_flag, align 4
  store i32 %36, i32* %prevMbSkipped, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %if.then.20
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %cond.end.15
  %37 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type37 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i32 0, i32 8
  %38 = load i32, i32* %mb_type37, align 4
  %cmp38 = icmp eq i32 %38, 9
  br i1 %cmp38, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.36
  %39 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type39 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 8
  %40 = load i32, i32* %mb_type39, align 4
  %cmp40 = icmp eq i32 %40, 10
  br i1 %cmp40, label %lor.end, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %41 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type42 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %41, i32 0, i32 8
  %42 = load i32, i32* %mb_type42, align 4
  %cmp43 = icmp eq i32 %42, 13
  br i1 %cmp43, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.41
  %43 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type44 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 8
  %44 = load i32, i32* %mb_type44, align 4
  %cmp45 = icmp eq i32 %44, 14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.41, %lor.lhs.false, %if.end.36
  %45 = phi i1 [ true, %lor.lhs.false.41 ], [ true, %lor.lhs.false ], [ true, %if.end.36 ], [ %cmp45, %lor.rhs ]
  %lor.ext = zext i1 %45 to i32
  %46 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %IntraChromaPredModeFlag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %46, i32 0, i32 18
  store i32 %lor.ext, i32* %IntraChromaPredModeFlag, align 4
  %47 = load i32*, i32** %partMap, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %47, i64 2
  %48 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %48 to i64
  %49 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %49, i32 0, i32 6
  %50 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx48 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %50, i64 %idxprom47
  store %struct.datapartition* %arrayidx48, %struct.datapartition** %dataPart, align 8
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 5
  %52 = load i32, i32* %type49, align 4
  %cmp50 = icmp eq i32 %52, 2
  br i1 %cmp50, label %if.then.51, label %if.else.68

if.then.51:                                       ; preds = %lor.end
  %53 = load i32, i32* %WriteFrameFieldMBInHeader, align 4
  %tobool52 = icmp ne i32 %53, 0
  br i1 %tobool52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.then.51
  %54 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %54, i32 0, i32 19
  %55 = load i32, i32* %mb_field, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %55, i32* %value1, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2, align 4
  %type54 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type54, align 4
  %56 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeFieldModeInfo, align 8
  %57 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %56(%struct.syntaxelement* %se, %struct.datapartition* %57)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %58 = load i32, i32* %len, align 4
  %59 = load i32*, i32** %bitCount, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %59, i64 2
  %60 = load i32, i32* %arrayidx55, align 4
  %add = add nsw i32 %60, %58
  store i32 %add, i32* %arrayidx55, align 4
  %len56 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %61 = load i32, i32* %len56, align 4
  %62 = load i32, i32* %no_bits, align 4
  %add57 = add nsw i32 %62, %61
  store i32 %add57, i32* %no_bits, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %if.then.51
  %63 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %call59 = call i32 @MBType2Value(%struct.macroblock* %63)
  %value160 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %call59, i32* %value160, align 4
  %value261 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value261, align 4
  %type62 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type62, align 4
  %64 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMB_typeInfo, align 8
  %65 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %64(%struct.syntaxelement* %se, %struct.datapartition* %65)
  %len63 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %66 = load i32, i32* %len63, align 4
  %67 = load i32*, i32** %bitCount, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %67, i64 2
  %68 = load i32, i32* %arrayidx64, align 4
  %add65 = add nsw i32 %68, %66
  store i32 %add65, i32* %arrayidx64, align 4
  %len66 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %69 = load i32, i32* %len66, align 4
  %70 = load i32, i32* %no_bits, align 4
  %add67 = add nsw i32 %70, %69
  store i32 %add67, i32* %no_bits, align 4
  br label %if.end.219

if.else.68:                                       ; preds = %lor.end
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 74
  %72 = load i32, i32* %symbol_mode, align 4
  %cmp69 = icmp eq i32 %72, 1
  br i1 %cmp69, label %if.then.70, label %if.else.130

if.then.70:                                       ; preds = %if.else.68
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 100
  %74 = load i32, i32* %MbaffFrameFlag71, align 4
  %tobool72 = icmp ne i32 %74, 0
  br i1 %tobool72, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %if.then.70
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 3
  %76 = load i32, i32* %current_mb_nr73, align 4
  %and74 = and i32 %76, 1
  %cmp75 = icmp eq i32 %and74, 0
  br i1 %cmp75, label %if.then.78, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true
  %77 = load i32, i32* %prevMbSkipped, align 4
  %tobool77 = icmp ne i32 %77, 0
  br i1 %tobool77, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %lor.lhs.false.76, %land.lhs.true
  %78 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field79 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %78, i32 0, i32 19
  %79 = load i32, i32* %mb_field79, align 4
  store i32 %79, i32* %mb_field_tmp, align 4
  %call80 = call i32 @field_flag_inference()
  %80 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field81 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %80, i32 0, i32 19
  store i32 %call80, i32* %mb_field81, align 4
  call void @CheckAvailabilityOfNeighborsCABAC()
  %81 = load i32, i32* %mb_field_tmp, align 4
  %82 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field82 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 19
  store i32 %81, i32* %mb_field82, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %lor.lhs.false.76, %if.then.70
  %83 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %call84 = call i32 @MBType2Value(%struct.macroblock* %83)
  store i32 %call84, i32* %mb_type17, align 4
  %84 = load i32, i32* %mb_type17, align 4
  %value185 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %84, i32* %value185, align 4
  %85 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp86 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %85, i32 0, i32 12
  %86 = load i32, i32* %cbp86, align 4
  %value287 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %86, i32* %value287, align 4
  %type88 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type88, align 4
  %87 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeMB_skip_flagInfo_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %87)
  %len89 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %88 = load i32, i32* %len89, align 4
  %89 = load i32*, i32** %bitCount, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %89, i64 2
  %90 = load i32, i32* %arrayidx90, align 4
  %add91 = add nsw i32 %90, %88
  store i32 %add91, i32* %arrayidx90, align 4
  %len92 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %91 = load i32, i32* %len92, align 4
  %92 = load i32, i32* %no_bits, align 4
  %add93 = add nsw i32 %92, %91
  store i32 %add93, i32* %no_bits, align 4
  call void @CheckAvailabilityOfNeighborsCABAC()
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag94 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 100
  %94 = load i32, i32* %MbaffFrameFlag94, align 4
  %tobool95 = icmp ne i32 %94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.111

land.lhs.true.96:                                 ; preds = %if.end.83
  %95 = load i32, i32* %skip, align 4
  %tobool97 = icmp ne i32 %95, 0
  br i1 %tobool97, label %if.end.111, label %if.then.98

if.then.98:                                       ; preds = %land.lhs.true.96
  %96 = load i32, i32* %WriteFrameFieldMBInHeader, align 4
  %tobool99 = icmp ne i32 %96, 0
  br i1 %tobool99, label %if.then.100, label %if.end.110

if.then.100:                                      ; preds = %if.then.98
  %97 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field101 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %97, i32 0, i32 19
  %98 = load i32, i32* %mb_field101, align 4
  %value1102 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %98, i32* %value1102, align 4
  %value2103 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2103, align 4
  %type104 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type104, align 4
  %99 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeFieldModeInfo, align 8
  %100 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %99(%struct.syntaxelement* %se, %struct.datapartition* %100)
  %len105 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %101 = load i32, i32* %len105, align 4
  %102 = load i32*, i32** %bitCount, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %102, i64 2
  %103 = load i32, i32* %arrayidx106, align 4
  %add107 = add nsw i32 %103, %101
  store i32 %add107, i32* %arrayidx106, align 4
  %len108 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %104 = load i32, i32* %len108, align 4
  %105 = load i32, i32* %no_bits, align 4
  %add109 = add nsw i32 %105, %104
  store i32 %add109, i32* %no_bits, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.100, %if.then.98
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %land.lhs.true.96, %if.end.83
  %106 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type112 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %106, i32 0, i32 8
  %107 = load i32, i32* %mb_type112, align 4
  %cmp113 = icmp ne i32 %107, 0
  br i1 %cmp113, label %if.then.120, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %if.end.111
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type115 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 5
  %109 = load i32, i32* %type115, align 4
  %cmp116 = icmp eq i32 %109, 1
  br i1 %cmp116, label %land.lhs.true.117, label %if.end.129

land.lhs.true.117:                                ; preds = %lor.lhs.false.114
  %110 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp118 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %110, i32 0, i32 12
  %111 = load i32, i32* %cbp118, align 4
  %cmp119 = icmp ne i32 %111, 0
  br i1 %cmp119, label %if.then.120, label %if.end.129

if.then.120:                                      ; preds = %land.lhs.true.117, %if.end.111
  %112 = load i32, i32* %mb_type17, align 4
  %value1121 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %112, i32* %value1121, align 4
  %value2122 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2122, align 4
  %type123 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type123, align 4
  %113 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMB_typeInfo, align 8
  %114 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %113(%struct.syntaxelement* %se, %struct.datapartition* %114)
  %len124 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %115 = load i32, i32* %len124, align 4
  %116 = load i32*, i32** %bitCount, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %116, i64 2
  %117 = load i32, i32* %arrayidx125, align 4
  %add126 = add nsw i32 %117, %115
  store i32 %add126, i32* %arrayidx125, align 4
  %len127 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %118 = load i32, i32* %len127, align 4
  %119 = load i32, i32* %no_bits, align 4
  %add128 = add nsw i32 %119, %118
  store i32 %add128, i32* %no_bits, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.120, %land.lhs.true.117, %lor.lhs.false.114
  br label %if.end.218

if.else.130:                                      ; preds = %if.else.68
  %120 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type131 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %120, i32 0, i32 8
  %121 = load i32, i32* %mb_type131, align 4
  %cmp132 = icmp ne i32 %121, 0
  br i1 %cmp132, label %if.then.139, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %if.else.130
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type134 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 5
  %123 = load i32, i32* %type134, align 4
  %cmp135 = icmp eq i32 %123, 1
  br i1 %cmp135, label %land.lhs.true.136, label %if.else.180

land.lhs.true.136:                                ; preds = %lor.lhs.false.133
  %124 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp137 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %124, i32 0, i32 12
  %125 = load i32, i32* %cbp137, align 4
  %cmp138 = icmp ne i32 %125, 0
  br i1 %cmp138, label %if.then.139, label %if.else.180

if.then.139:                                      ; preds = %land.lhs.true.136, %if.else.130
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 33
  %127 = load i32, i32* %cod_counter, align 4
  %value1140 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %127, i32* %value1140, align 4
  %value2141 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2141, align 4
  %type142 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type142, align 4
  %128 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeSE_UVLC(%struct.syntaxelement* %se, %struct.datapartition* %128)
  %len143 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %129 = load i32, i32* %len143, align 4
  %130 = load i32*, i32** %bitCount, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %130, i64 2
  %131 = load i32, i32* %arrayidx144, align 4
  %add145 = add nsw i32 %131, %129
  store i32 %add145, i32* %arrayidx144, align 4
  %len146 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %132 = load i32, i32* %len146, align 4
  %133 = load i32, i32* %no_bits, align 4
  %add147 = add nsw i32 %133, %132
  store i32 %add147, i32* %no_bits, align 4
  %134 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter148 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %134, i32 0, i32 33
  store i32 0, i32* %cod_counter148, align 4
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag149 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 100
  %136 = load i32, i32* %MbaffFrameFlag149, align 4
  %tobool150 = icmp ne i32 %136, 0
  br i1 %tobool150, label %land.lhs.true.151, label %if.end.165

land.lhs.true.151:                                ; preds = %if.then.139
  %137 = load i32, i32* %skip, align 4
  %tobool152 = icmp ne i32 %137, 0
  br i1 %tobool152, label %if.end.165, label %if.then.153

if.then.153:                                      ; preds = %land.lhs.true.151
  %138 = load i32, i32* %WriteFrameFieldMBInHeader, align 4
  %tobool154 = icmp ne i32 %138, 0
  br i1 %tobool154, label %if.then.155, label %if.end.164

if.then.155:                                      ; preds = %if.then.153
  %139 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field156 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %139, i32 0, i32 19
  %140 = load i32, i32* %mb_field156, align 4
  %value1157 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %140, i32* %value1157, align 4
  %type158 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type158, align 4
  %141 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeSE_Flag(%struct.syntaxelement* %se, %struct.datapartition* %141)
  %len159 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %142 = load i32, i32* %len159, align 4
  %143 = load i32*, i32** %bitCount, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %143, i64 2
  %144 = load i32, i32* %arrayidx160, align 4
  %add161 = add nsw i32 %144, %142
  store i32 %add161, i32* %arrayidx160, align 4
  %len162 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %145 = load i32, i32* %len162, align 4
  %146 = load i32, i32* %no_bits, align 4
  %add163 = add nsw i32 %146, %145
  store i32 %add163, i32* %no_bits, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.155, %if.then.153
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %land.lhs.true.151, %if.then.139
  %147 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %call166 = call i32 @MBType2Value(%struct.macroblock* %147)
  %value1167 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %call166, i32* %value1167, align 4
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type168 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 5
  %149 = load i32, i32* %type168, align 4
  %cmp169 = icmp ne i32 %149, 1
  br i1 %cmp169, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %if.end.165
  %value1171 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  %150 = load i32, i32* %value1171, align 4
  %dec = add nsw i32 %150, -1
  store i32 %dec, i32* %value1171, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %if.end.165
  %type173 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type173, align 4
  %value2174 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2174, align 4
  %151 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMB_typeInfo, align 8
  %152 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %151(%struct.syntaxelement* %se, %struct.datapartition* %152)
  %len175 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %153 = load i32, i32* %len175, align 4
  %154 = load i32*, i32** %bitCount, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %154, i64 2
  %155 = load i32, i32* %arrayidx176, align 4
  %add177 = add nsw i32 %155, %153
  store i32 %add177, i32* %arrayidx176, align 4
  %len178 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %156 = load i32, i32* %len178, align 4
  %157 = load i32, i32* %no_bits, align 4
  %add179 = add nsw i32 %157, %156
  store i32 %add179, i32* %no_bits, align 4
  br label %if.end.217

if.else.180:                                      ; preds = %land.lhs.true.136, %lor.lhs.false.133
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 33
  %159 = load i32, i32* %cod_counter181, align 4
  %inc = add nsw i32 %159, 1
  store i32 %inc, i32* %cod_counter181, align 4
  %160 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %skip_flag182 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %160, i32 0, i32 43
  store i32 1, i32* %skip_flag182, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.196, %if.else.180
  %161 = load i32, i32* %j, align 4
  %162 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %162, i32 0, i32 158
  %163 = load i32, i32* %num_blk8x8_uv, align 4
  %add183 = add nsw i32 4, %163
  %cmp184 = icmp slt i32 %161, %add183
  br i1 %cmp184, label %for.body, label %for.end.198

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc, %for.body
  %164 = load i32, i32* %i, align 4
  %cmp186 = icmp slt i32 %164, 4
  br i1 %cmp186, label %for.body.187, label %for.end

for.body.187:                                     ; preds = %for.cond.185
  %165 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %165 to i64
  %166 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %166 to i64
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr190 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 3
  %168 = load i32, i32* %current_mb_nr190, align 4
  %idxprom191 = sext i32 %168 to i64
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 34
  %170 = load i32***, i32**** %nz_coeff, align 8
  %arrayidx192 = getelementptr inbounds i32**, i32*** %170, i64 %idxprom191
  %171 = load i32**, i32*** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i32*, i32** %171, i64 %idxprom189
  %172 = load i32*, i32** %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %172, i64 %idxprom188
  store i32 0, i32* %arrayidx194, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.187
  %173 = load i32, i32* %i, align 4
  %inc195 = add nsw i32 %173, 1
  store i32 %inc195, i32* %i, align 4
  br label %for.cond.185

for.end:                                          ; preds = %for.cond.185
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.end
  %174 = load i32, i32* %j, align 4
  %inc197 = add nsw i32 %174, 1
  store i32 %inc197, i32* %j, align 4
  br label %for.cond

for.end.198:                                      ; preds = %for.cond
  %175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr199 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %175, i32 0, i32 3
  %176 = load i32, i32* %current_mb_nr199, align 4
  %call200 = call i32 @FmoGetNextMBNr(i32 %176)
  %cmp201 = icmp eq i32 %call200, -1
  br i1 %cmp201, label %land.lhs.true.202, label %if.end.216

land.lhs.true.202:                                ; preds = %for.end.198
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 33
  %178 = load i32, i32* %cod_counter203, align 4
  %cmp204 = icmp sgt i32 %178, 0
  br i1 %cmp204, label %if.then.205, label %if.end.216

if.then.205:                                      ; preds = %land.lhs.true.202
  %179 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter206 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %179, i32 0, i32 33
  %180 = load i32, i32* %cod_counter206, align 4
  %value1207 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %180, i32* %value1207, align 4
  %value2208 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2208, align 4
  %type209 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type209, align 4
  %181 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeSE_UVLC(%struct.syntaxelement* %se, %struct.datapartition* %181)
  %len210 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %182 = load i32, i32* %len210, align 4
  %183 = load i32*, i32** %bitCount, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %183, i64 2
  %184 = load i32, i32* %arrayidx211, align 4
  %add212 = add nsw i32 %184, %182
  store i32 %add212, i32* %arrayidx211, align 4
  %len213 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %185 = load i32, i32* %len213, align 4
  %186 = load i32, i32* %no_bits, align 4
  %add214 = add nsw i32 %186, %185
  store i32 %add214, i32* %no_bits, align 4
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter215 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 33
  store i32 0, i32* %cod_counter215, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.205, %land.lhs.true.202, %for.end.198
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.end.172
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.129
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.end.58
  %188 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type220 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %188, i32 0, i32 8
  %189 = load i32, i32* %mb_type220, align 4
  %cmp221 = icmp eq i32 %189, 0
  br i1 %cmp221, label %land.lhs.true.222, label %land.end

land.lhs.true.222:                                ; preds = %if.end.219
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type223 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 5
  %191 = load i32, i32* %type223, align 4
  %cmp224 = icmp eq i32 %191, 1
  br i1 %cmp224, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.222
  %192 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %192, i32 0, i32 27
  %193 = load i32, i32* %direct_8x8_inference_flag, align 4
  %tobool225 = icmp ne i32 %193, 0
  %lnot226 = xor i1 %tobool225, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.222, %if.end.219
  %194 = phi i1 [ false, %land.lhs.true.222 ], [ false, %if.end.219 ], [ %lnot226, %land.rhs ]
  %cond228 = select i1 %194, i32 0, i32 1
  %195 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %NoMbPartLessThan8x8Flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %195, i32 0, i32 32
  store i32 %cond228, i32* %NoMbPartLessThan8x8Flag, align 4
  %196 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type229 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %196, i32 0, i32 8
  %197 = load i32, i32* %mb_type229, align 4
  %cmp230 = icmp eq i32 %197, 14
  br i1 %cmp230, label %if.then.231, label %if.end.326

if.then.231:                                      ; preds = %land.end
  %198 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode232 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %198, i32 0, i32 74
  %199 = load i32, i32* %symbol_mode232, align 4
  %cmp233 = icmp eq i32 %199, 1
  br i1 %cmp233, label %if.then.234, label %if.end.240

if.then.234:                                      ; preds = %if.then.231
  %200 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %200, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep, align 8
  %201 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  %call236 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %201)
  store i32 %call236, i32* %len235, align 4
  %202 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  call void @arienco_done_encoding(%struct.EncodingEnvironment* %202)
  %203 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  %call237 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %203)
  %204 = load i32, i32* %len235, align 4
  %sub = sub nsw i32 %call237, %204
  store i32 %sub, i32* %len235, align 4
  %205 = load i32, i32* %len235, align 4
  %206 = load i32, i32* %no_bits, align 4
  %add238 = add nsw i32 %206, %205
  store i32 %add238, i32* %no_bits, align 4
  %207 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  %208 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %208, i32 0, i32 0
  %209 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %209, i32 0, i32 9
  %210 = load i8*, i8** %streamBuffer, align 8
  %211 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream239 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %211, i32 0, i32 0
  %212 = load %struct.Bitstream*, %struct.Bitstream** %bitstream239, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %212, i32 0, i32 0
  call void @arienco_start_encoding(%struct.EncodingEnvironment* %207, i8* %210, i32* %byte_pos)
  call void @reset_pic_bin_count()
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.234, %if.then.231
  %213 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream241 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %213, i32 0, i32 0
  %214 = load %struct.Bitstream*, %struct.Bitstream** %bitstream241, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %214, i32 0, i32 1
  %215 = load i32, i32* %bits_to_go, align 4
  %cmp242 = icmp slt i32 %215, 8
  br i1 %cmp242, label %if.then.243, label %if.end.253

if.then.243:                                      ; preds = %if.end.240
  %type244 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type244, align 4
  %216 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream245 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %216, i32 0, i32 0
  %217 = load %struct.Bitstream*, %struct.Bitstream** %bitstream245, align 8
  %bits_to_go246 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %217, i32 0, i32 1
  %218 = load i32, i32* %bits_to_go246, align 4
  %len247 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  store i32 %218, i32* %len247, align 4
  %len248 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %219 = load i32, i32* %len248, align 4
  %220 = load i32, i32* %no_bits, align 4
  %add249 = add nsw i32 %220, %219
  store i32 %add249, i32* %no_bits, align 4
  %len250 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %221 = load i32, i32* %len250, align 4
  %222 = load i32*, i32** %bitCount, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %222, i64 5
  %223 = load i32, i32* %arrayidx251, align 4
  %add252 = add nsw i32 %223, %221
  store i32 %add252, i32* %arrayidx251, align 4
  %bitpattern = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 5
  store i32 0, i32* %bitpattern, align 4
  %224 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeSE_Fix(%struct.syntaxelement* %se, %struct.datapartition* %224)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.243, %if.end.240
  store i32 0, i32* %j, align 4
  br label %for.cond.254

for.cond.254:                                     ; preds = %for.inc.279, %if.end.253
  %225 = load i32, i32* %j, align 4
  %cmp255 = icmp slt i32 %225, 16
  br i1 %cmp255, label %for.body.256, label %for.end.281

for.body.256:                                     ; preds = %for.cond.254
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 40
  %227 = load i32, i32* %pix_y, align 4
  %228 = load i32, i32* %j, align 4
  %add257 = add nsw i32 %227, %228
  store i32 %add257, i32* %jj, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.258

for.cond.258:                                     ; preds = %for.inc.276, %for.body.256
  %229 = load i32, i32* %i, align 4
  %cmp259 = icmp slt i32 %229, 16
  br i1 %cmp259, label %for.body.260, label %for.end.278

for.body.260:                                     ; preds = %for.cond.258
  %230 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %230, i32 0, i32 142
  %231 = load i32, i32* %bitdepth_luma, align 4
  %len261 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  store i32 %231, i32* %len261, align 4
  %type262 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type262, align 4
  %len263 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %232 = load i32, i32* %len263, align 4
  %233 = load i32, i32* %no_bits, align 4
  %add264 = add nsw i32 %233, %232
  store i32 %add264, i32* %no_bits, align 4
  %234 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %234, i32 0, i32 39
  %235 = load i32, i32* %pix_x, align 4
  %236 = load i32, i32* %i, align 4
  %add265 = add nsw i32 %235, %236
  %idxprom266 = sext i32 %add265 to i64
  %237 = load i32, i32* %jj, align 4
  %idxprom267 = sext i32 %237 to i64
  %238 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %238, i32 0, i32 29
  %239 = load i16**, i16*** %imgY, align 8
  %arrayidx268 = getelementptr inbounds i16*, i16** %239, i64 %idxprom267
  %240 = load i16*, i16** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i16, i16* %240, i64 %idxprom266
  %241 = load i16, i16* %arrayidx269, align 2
  %conv = zext i16 %241 to i32
  %bitpattern270 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 5
  store i32 %conv, i32* %bitpattern270, align 4
  %bitpattern271 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 5
  %242 = load i32, i32* %bitpattern271, align 4
  %value1272 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %242, i32* %value1272, align 4
  %len273 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %243 = load i32, i32* %len273, align 4
  %244 = load i32*, i32** %bitCount, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %244, i64 5
  %245 = load i32, i32* %arrayidx274, align 4
  %add275 = add nsw i32 %245, %243
  store i32 %add275, i32* %arrayidx274, align 4
  %246 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeSE_Fix(%struct.syntaxelement* %se, %struct.datapartition* %246)
  br label %for.inc.276

for.inc.276:                                      ; preds = %for.body.260
  %247 = load i32, i32* %i, align 4
  %inc277 = add nsw i32 %247, 1
  store i32 %inc277, i32* %i, align 4
  br label %for.cond.258

for.end.278:                                      ; preds = %for.cond.258
  br label %for.inc.279

for.inc.279:                                      ; preds = %for.end.278
  %248 = load i32, i32* %j, align 4
  %inc280 = add nsw i32 %248, 1
  store i32 %inc280, i32* %j, align 4
  br label %for.cond.254

for.end.281:                                      ; preds = %for.cond.254
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 160
  %250 = load i32, i32* %yuv_format, align 4
  %cmp282 = icmp ne i32 %250, 0
  br i1 %cmp282, label %if.then.284, label %if.end.325

if.then.284:                                      ; preds = %for.end.281
  store i32 0, i32* %uv, align 4
  br label %for.cond.285

for.cond.285:                                     ; preds = %for.inc.322, %if.then.284
  %251 = load i32, i32* %uv, align 4
  %cmp286 = icmp slt i32 %251, 2
  br i1 %cmp286, label %for.body.288, label %for.end.324

for.body.288:                                     ; preds = %for.cond.285
  store i32 0, i32* %j, align 4
  br label %for.cond.289

for.cond.289:                                     ; preds = %for.inc.319, %for.body.288
  %252 = load i32, i32* %j, align 4
  %253 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %253, i32 0, i32 163
  %254 = load i32, i32* %mb_cr_size_y, align 4
  %cmp290 = icmp slt i32 %252, %254
  br i1 %cmp290, label %for.body.292, label %for.end.321

for.body.292:                                     ; preds = %for.cond.289
  %255 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %255, i32 0, i32 42
  %256 = load i32, i32* %pix_c_y, align 4
  %257 = load i32, i32* %j, align 4
  %add293 = add nsw i32 %256, %257
  store i32 %add293, i32* %jj, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.316, %for.body.292
  %258 = load i32, i32* %i, align 4
  %259 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %259, i32 0, i32 162
  %260 = load i32, i32* %mb_cr_size_x, align 4
  %cmp295 = icmp slt i32 %258, %260
  br i1 %cmp295, label %for.body.297, label %for.end.318

for.body.297:                                     ; preds = %for.cond.294
  %261 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %261, i32 0, i32 143
  %262 = load i32, i32* %bitdepth_chroma, align 4
  %len298 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  store i32 %262, i32* %len298, align 4
  %type299 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type299, align 4
  %len300 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %263 = load i32, i32* %len300, align 4
  %264 = load i32, i32* %no_bits, align 4
  %add301 = add nsw i32 %264, %263
  store i32 %add301, i32* %no_bits, align 4
  %265 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %265, i32 0, i32 41
  %266 = load i32, i32* %pix_c_x, align 4
  %267 = load i32, i32* %i, align 4
  %add302 = add nsw i32 %266, %267
  %idxprom303 = sext i32 %add302 to i64
  %268 = load i32, i32* %jj, align 4
  %idxprom304 = sext i32 %268 to i64
  %269 = load i32, i32* %uv, align 4
  %idxprom305 = sext i32 %269 to i64
  %270 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %270, i32 0, i32 33
  %271 = load i16***, i16**** %imgUV, align 8
  %arrayidx306 = getelementptr inbounds i16**, i16*** %271, i64 %idxprom305
  %272 = load i16**, i16*** %arrayidx306, align 8
  %arrayidx307 = getelementptr inbounds i16*, i16** %272, i64 %idxprom304
  %273 = load i16*, i16** %arrayidx307, align 8
  %arrayidx308 = getelementptr inbounds i16, i16* %273, i64 %idxprom303
  %274 = load i16, i16* %arrayidx308, align 2
  %conv309 = zext i16 %274 to i32
  %bitpattern310 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 5
  store i32 %conv309, i32* %bitpattern310, align 4
  %bitpattern311 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 5
  %275 = load i32, i32* %bitpattern311, align 4
  %value1312 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %275, i32* %value1312, align 4
  %len313 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %276 = load i32, i32* %len313, align 4
  %277 = load i32*, i32** %bitCount, align 8
  %arrayidx314 = getelementptr inbounds i32, i32* %277, i64 6
  %278 = load i32, i32* %arrayidx314, align 4
  %add315 = add nsw i32 %278, %276
  store i32 %add315, i32* %arrayidx314, align 4
  %279 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeSE_Fix(%struct.syntaxelement* %se, %struct.datapartition* %279)
  br label %for.inc.316

for.inc.316:                                      ; preds = %for.body.297
  %280 = load i32, i32* %i, align 4
  %inc317 = add nsw i32 %280, 1
  store i32 %inc317, i32* %i, align 4
  br label %for.cond.294

for.end.318:                                      ; preds = %for.cond.294
  br label %for.inc.319

for.inc.319:                                      ; preds = %for.end.318
  %281 = load i32, i32* %j, align 4
  %inc320 = add nsw i32 %281, 1
  store i32 %inc320, i32* %j, align 4
  br label %for.cond.289

for.end.321:                                      ; preds = %for.cond.289
  br label %for.inc.322

for.inc.322:                                      ; preds = %for.end.321
  %282 = load i32, i32* %uv, align 4
  %inc323 = add nsw i32 %282, 1
  store i32 %inc323, i32* %uv, align 4
  br label %for.cond.285

for.end.324:                                      ; preds = %for.cond.285
  br label %if.end.325

if.end.325:                                       ; preds = %for.end.324, %for.end.281
  %283 = load i32, i32* %no_bits, align 4
  store i32 %283, i32* %retval
  br label %return

if.end.326:                                       ; preds = %land.end
  %284 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type327 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %284, i32 0, i32 8
  %285 = load i32, i32* %mb_type327, align 4
  %cmp328 = icmp eq i32 %285, 8
  br i1 %cmp328, label %if.then.330, label %if.end.375

if.then.330:                                      ; preds = %if.end.326
  %286 = load i32*, i32** %partMap, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %286, i64 2
  %287 = load i32, i32* %arrayidx331, align 4
  %idxprom332 = sext i32 %287 to i64
  %288 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr333 = getelementptr inbounds %struct.Slice, %struct.Slice* %288, i32 0, i32 6
  %289 = load %struct.datapartition*, %struct.datapartition** %partArr333, align 8
  %arrayidx334 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %289, i64 %idxprom332
  store %struct.datapartition* %arrayidx334, %struct.datapartition** %dataPart, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.370, %if.then.330
  %290 = load i32, i32* %i, align 4
  %cmp336 = icmp slt i32 %290, 4
  br i1 %cmp336, label %for.body.338, label %for.end.372

for.body.338:                                     ; preds = %for.cond.335
  %291 = load i32, i32* %i, align 4
  %idxprom339 = sext i32 %291 to i64
  %292 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %292, i32 0, i32 14
  %arrayidx340 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 %idxprom339
  %293 = load i32, i32* %arrayidx340, align 4
  %294 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %294 to i64
  %295 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir = getelementptr inbounds %struct.macroblock, %struct.macroblock* %295, i32 0, i32 15
  %arrayidx342 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir, i32 0, i64 %idxprom341
  %296 = load i32, i32* %arrayidx342, align 4
  %call343 = call i32 @B8Mode2Value(i32 %293, i32 %296)
  %value1344 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %call343, i32* %value1344, align 4
  %value2345 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2345, align 4
  %type346 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type346, align 4
  %297 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeB8_typeInfo, align 8
  %298 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %297(%struct.syntaxelement* %se, %struct.datapartition* %298)
  %len347 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %299 = load i32, i32* %len347, align 4
  %300 = load i32*, i32** %bitCount, align 8
  %arrayidx348 = getelementptr inbounds i32, i32* %300, i64 2
  %301 = load i32, i32* %arrayidx348, align 4
  %add349 = add nsw i32 %301, %299
  store i32 %add349, i32* %arrayidx348, align 4
  %len350 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %302 = load i32, i32* %len350, align 4
  %303 = load i32, i32* %no_bits, align 4
  %add351 = add nsw i32 %303, %302
  store i32 %add351, i32* %no_bits, align 4
  %304 = load i32, i32* %i, align 4
  %idxprom352 = sext i32 %304 to i64
  %305 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode353 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %305, i32 0, i32 14
  %arrayidx354 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode353, i32 0, i64 %idxprom352
  %306 = load i32, i32* %arrayidx354, align 4
  %cmp355 = icmp eq i32 %306, 0
  br i1 %cmp355, label %land.lhs.true.357, label %lor.rhs.360

land.lhs.true.357:                                ; preds = %for.body.338
  %307 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %direct_8x8_inference_flag358 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %307, i32 0, i32 27
  %308 = load i32, i32* %direct_8x8_inference_flag358, align 4
  %tobool359 = icmp ne i32 %308, 0
  br i1 %tobool359, label %lor.end.366, label %lor.rhs.360

lor.rhs.360:                                      ; preds = %land.lhs.true.357, %for.body.338
  %309 = load i32, i32* %i, align 4
  %idxprom361 = sext i32 %309 to i64
  %310 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode362 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %310, i32 0, i32 14
  %arrayidx363 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode362, i32 0, i64 %idxprom361
  %311 = load i32, i32* %arrayidx363, align 4
  %cmp364 = icmp eq i32 %311, 4
  br label %lor.end.366

lor.end.366:                                      ; preds = %lor.rhs.360, %land.lhs.true.357
  %312 = phi i1 [ true, %land.lhs.true.357 ], [ %cmp364, %lor.rhs.360 ]
  %lor.ext367 = zext i1 %312 to i32
  %313 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %NoMbPartLessThan8x8Flag368 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %313, i32 0, i32 32
  %314 = load i32, i32* %NoMbPartLessThan8x8Flag368, align 4
  %and369 = and i32 %314, %lor.ext367
  store i32 %and369, i32* %NoMbPartLessThan8x8Flag368, align 4
  br label %for.inc.370

for.inc.370:                                      ; preds = %lor.end.366
  %315 = load i32, i32* %i, align 4
  %inc371 = add nsw i32 %315, 1
  store i32 %inc371, i32* %i, align 4
  br label %for.cond.335

for.end.372:                                      ; preds = %for.cond.335
  %call373 = call i32 @writeMotionInfo2NAL()
  %316 = load i32, i32* %no_bits, align 4
  %add374 = add nsw i32 %316, %call373
  store i32 %add374, i32* %no_bits, align 4
  br label %if.end.375

if.end.375:                                       ; preds = %for.end.372, %if.end.326
  %317 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type376 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %317, i32 0, i32 8
  %318 = load i32, i32* %mb_type376, align 4
  %cmp377 = icmp eq i32 %318, 13
  br i1 %cmp377, label %land.lhs.true.383, label %lor.lhs.false.379

lor.lhs.false.379:                                ; preds = %if.end.375
  %319 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type380 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %319, i32 0, i32 8
  %320 = load i32, i32* %mb_type380, align 4
  %cmp381 = icmp eq i32 %320, 9
  br i1 %cmp381, label %land.lhs.true.383, label %if.end.393

land.lhs.true.383:                                ; preds = %lor.lhs.false.379, %if.end.375
  %321 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %321, i32 0, i32 153
  %322 = load i32, i32* %Transform8x8Mode, align 4
  %tobool384 = icmp ne i32 %322, 0
  br i1 %tobool384, label %if.then.385, label %if.end.393

if.then.385:                                      ; preds = %land.lhs.true.383
  %323 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %323, i32 0, i32 31
  %324 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  %value1386 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %324, i32* %value1386, align 4
  %type387 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type387, align 4
  %325 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMB_transform_size, align 8
  %326 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %325(%struct.syntaxelement* %se, %struct.datapartition* %326)
  %len388 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %327 = load i32, i32* %len388, align 4
  %328 = load i32*, i32** %bitCount, align 8
  %arrayidx389 = getelementptr inbounds i32, i32* %328, i64 2
  %329 = load i32, i32* %arrayidx389, align 4
  %add390 = add nsw i32 %329, %327
  store i32 %add390, i32* %arrayidx389, align 4
  %len391 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %330 = load i32, i32* %len391, align 4
  %331 = load i32, i32* %no_bits, align 4
  %add392 = add nsw i32 %331, %330
  store i32 %add392, i32* %no_bits, align 4
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.385, %land.lhs.true.383, %lor.lhs.false.379
  %call394 = call i32 @writeIntraModes()
  %332 = load i32, i32* %no_bits, align 4
  %add395 = add nsw i32 %332, %call394
  store i32 %add395, i32* %no_bits, align 4
  %333 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %IntraChromaPredModeFlag396 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %333, i32 0, i32 18
  %334 = load i32, i32* %IntraChromaPredModeFlag396, align 4
  %tobool397 = icmp ne i32 %334, 0
  br i1 %tobool397, label %land.lhs.true.398, label %if.else.405

land.lhs.true.398:                                ; preds = %if.end.393
  %335 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format399 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %335, i32 0, i32 160
  %336 = load i32, i32* %yuv_format399, align 4
  %cmp400 = icmp ne i32 %336, 0
  br i1 %cmp400, label %if.then.402, label %if.else.405

if.then.402:                                      ; preds = %land.lhs.true.398
  %call403 = call i32 @writeChromaIntraPredMode()
  %337 = load i32, i32* %no_bits, align 4
  %add404 = add nsw i32 %337, %call403
  store i32 %add404, i32* %no_bits, align 4
  br label %if.end.409

if.else.405:                                      ; preds = %land.lhs.true.398, %if.end.393
  %338 = load i32, i32* %rdopt.addr, align 4
  %tobool406 = icmp ne i32 %338, 0
  br i1 %tobool406, label %if.end.408, label %if.then.407

if.then.407:                                      ; preds = %if.else.405
  %339 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %339, i32 0, i32 17
  store i32 0, i32* %c_ipred_mode, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.407, %if.else.405
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.then.402
  %340 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type410 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %340, i32 0, i32 8
  %341 = load i32, i32* %mb_type410, align 4
  %cmp411 = icmp ne i32 %341, 0
  br i1 %cmp411, label %land.lhs.true.413, label %if.end.420

land.lhs.true.413:                                ; preds = %if.end.409
  %342 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type414 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %342, i32 0, i32 8
  %343 = load i32, i32* %mb_type414, align 4
  %cmp415 = icmp ne i32 %343, 8
  br i1 %cmp415, label %if.then.417, label %if.end.420

if.then.417:                                      ; preds = %land.lhs.true.413
  %call418 = call i32 @writeMotionInfo2NAL()
  %344 = load i32, i32* %no_bits, align 4
  %add419 = add nsw i32 %344, %call418
  store i32 %add419, i32* %no_bits, align 4
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.417, %land.lhs.true.413, %if.end.409
  %345 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type421 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %345, i32 0, i32 8
  %346 = load i32, i32* %mb_type421, align 4
  %cmp422 = icmp ne i32 %346, 0
  br i1 %cmp422, label %if.then.432, label %lor.lhs.false.424

lor.lhs.false.424:                                ; preds = %if.end.420
  %347 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type425 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %347, i32 0, i32 5
  %348 = load i32, i32* %type425, align 4
  %cmp426 = icmp eq i32 %348, 1
  br i1 %cmp426, label %land.lhs.true.428, label %if.end.442

land.lhs.true.428:                                ; preds = %lor.lhs.false.424
  %349 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp429 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %349, i32 0, i32 12
  %350 = load i32, i32* %cbp429, align 4
  %cmp430 = icmp ne i32 %350, 0
  br i1 %cmp430, label %if.then.432, label %if.end.442

if.then.432:                                      ; preds = %land.lhs.true.428, %if.end.420
  %call433 = call i32 @writeCBPandLumaCoeff()
  %351 = load i32*, i32** %coeff_rate.addr, align 8
  store i32 %call433, i32* %351, align 4
  %352 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format434 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %352, i32 0, i32 160
  %353 = load i32, i32* %yuv_format434, align 4
  %cmp435 = icmp ne i32 %353, 0
  br i1 %cmp435, label %if.then.437, label %if.end.440

if.then.437:                                      ; preds = %if.then.432
  %call438 = call i32 @writeChromaCoeff()
  %354 = load i32*, i32** %coeff_rate.addr, align 8
  %355 = load i32, i32* %354, align 4
  %add439 = add nsw i32 %355, %call438
  store i32 %add439, i32* %354, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.437, %if.then.432
  %356 = load i32*, i32** %coeff_rate.addr, align 8
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %no_bits, align 4
  %add441 = add nsw i32 %358, %357
  store i32 %add441, i32* %no_bits, align 4
  br label %if.end.442

if.end.442:                                       ; preds = %if.end.440, %land.lhs.true.428, %lor.lhs.false.424
  %359 = load i32, i32* %no_bits, align 4
  store i32 %359, i32* %retval
  br label %return

return:                                           ; preds = %if.end.442, %if.end.325
  %360 = load i32, i32* %retval
  ret i32 %360
}

declare i32 @field_flag_inference() #1

declare void @writeMB_skip_flagInfo_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @writeSE_Flag(%struct.syntaxelement*, %struct.datapartition*) #1

declare i32 @FmoGetNextMBNr(i32) #1

declare i32 @arienco_bits_written(%struct.EncodingEnvironment*) #1

declare void @arienco_done_encoding(%struct.EncodingEnvironment*) #1

declare void @arienco_start_encoding(%struct.EncodingEnvironment*, i8*, i32*) #1

declare void @reset_pic_bin_count() #1

declare void @writeSE_Fix(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: nounwind uwtable
define internal i32 @writeMotionInfo2NAL() #0 {
entry:
  %k = alloca i32, align 4
  %j0 = alloca i32, align 4
  %i0 = alloca i32, align 4
  %refframe = alloca i32, align 4
  %jj = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %no_bits = alloca i32, align 4
  %bframe = alloca i32, align 4
  %step_h0 = alloca i32, align 4
  %step_v0 = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  store i32 0, i32* %no_bits, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 5
  %5 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %5, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %6 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i32 0, i32 8
  %7 = load i32, i32* %mb_type, align 4
  %cmp1 = icmp eq i32 %7, 8
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i32 0, i32 8
  %9 = load i32, i32* %mb_type3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %9, %cond.false ]
  %idxprom4 = sext i32 %cond to i64
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 18
  %arrayidx5 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx5, i32 0, i64 0
  %11 = load i32, i32* %arrayidx6, align 4
  %shr = ashr i32 %11, 2
  store i32 %shr, i32* %step_h0, align 4
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 8
  %13 = load i32, i32* %mb_type7, align 4
  %cmp8 = icmp eq i32 %13, 8
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end
  br label %cond.end.13

cond.false.11:                                    ; preds = %cond.end
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 8
  %15 = load i32, i32* %mb_type12, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.10
  %cond14 = phi i32 [ 4, %cond.true.10 ], [ %15, %cond.false.11 ]
  %idxprom15 = sext i32 %cond14 to i64
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 18
  %arrayidx17 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size16, i32 0, i64 %idxprom15
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx17, i32 0, i64 1
  %17 = load i32, i32* %arrayidx18, align 4
  %shr19 = ashr i32 %17, 2
  store i32 %shr19, i32* %step_v0, align 4
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type20 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 8
  %19 = load i32, i32* %mb_type20, align 4
  %cmp21 = icmp ne i32 %19, 9
  br i1 %cmp21, label %land.lhs.true, label %if.end.135

land.lhs.true:                                    ; preds = %cond.end.13
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 8
  %21 = load i32, i32* %mb_type23, align 4
  %cmp24 = icmp ne i32 %21, 10
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.135

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %22 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type27 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 8
  %23 = load i32, i32* %mb_type27, align 4
  %cmp28 = icmp ne i32 %23, 13
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.135

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type31 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 8
  %25 = load i32, i32* %mb_type31, align 4
  %cmp32 = icmp ne i32 %25, 0
  br i1 %cmp32, label %if.then, label %if.end.135

if.then:                                          ; preds = %land.lhs.true.30
  %26 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i32 0, i32 8
  %27 = load i32, i32* %mb_type34, align 4
  %cmp35 = icmp eq i32 %27, 8
  br i1 %cmp35, label %lor.lhs.false, label %if.then.42

lor.lhs.false:                                    ; preds = %if.then
  %28 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %call = call i32 @ZeroRef(%struct.macroblock* %28)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.37, label %if.then.42

lor.lhs.false.37:                                 ; preds = %lor.lhs.false
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 74
  %30 = load i32, i32* %symbol_mode, align 4
  %cmp38 = icmp eq i32 %30, 1
  br i1 %cmp38, label %if.then.42, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.37
  %31 = load i32, i32* %bframe, align 4
  %tobool41 = icmp ne i32 %31, 0
  br i1 %tobool41, label %if.then.42, label %if.end.134

if.then.42:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.37, %lor.lhs.false, %if.then
  store i32 0, i32* %j0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %if.then.42
  %32 = load i32, i32* %j0, align 4
  %cmp43 = icmp slt i32 %32, 4
  br i1 %cmp43, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 38
  %34 = load i32, i32* %block_y, align 4
  %35 = load i32, i32* %j0, align 4
  %add = add nsw i32 %34, %35
  store i32 %add, i32* %jj, align 4
  store i32 0, i32* %i0, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %for.body
  %36 = load i32, i32* %i0, align 4
  %cmp46 = icmp slt i32 %36, 4
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.45
  %37 = load i32, i32* %j0, align 4
  %38 = load i32, i32* %i0, align 4
  %shr49 = ashr i32 %38, 1
  %add50 = add nsw i32 %37, %shr49
  store i32 %add50, i32* %k, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %39 to i64
  %40 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir = getelementptr inbounds %struct.macroblock, %struct.macroblock* %40, i32 0, i32 15
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir, i32 0, i64 %idxprom51
  %41 = load i32, i32* %arrayidx52, align 4
  %cmp53 = icmp eq i32 %41, 0
  br i1 %cmp53, label %land.lhs.true.61, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %for.body.48
  %42 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %42 to i64
  %43 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir57 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 15
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir57, i32 0, i64 %idxprom56
  %44 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp eq i32 %44, 2
  br i1 %cmp59, label %land.lhs.true.61, label %if.end

land.lhs.true.61:                                 ; preds = %lor.lhs.false.55, %for.body.48
  %45 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %45 to i64
  %46 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %46, i32 0, i32 14
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 %idxprom62
  %47 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp ne i32 %47, 0
  br i1 %cmp64, label %if.then.66, label %if.end

if.then.66:                                       ; preds = %land.lhs.true.61
  %48 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %48 to i64
  %49 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode68 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i32 0, i32 14
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode68, i32 0, i64 %idxprom67
  %50 = load i32, i32* %arrayidx69, align 4
  %51 = load i32, i32* %i0, align 4
  %52 = load i32, i32* %j0, align 4
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 37
  %54 = load i32, i32* %block_x, align 4
  %55 = load i32, i32* %i0, align 4
  %add70 = add nsw i32 %54, %55
  %idxprom71 = sext i32 %add70 to i64
  %56 = load i32, i32* %jj, align 4
  %idxprom72 = sext i32 %56 to i64
  %57 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 35
  %58 = load i8***, i8**** %ref_idx, align 8
  %arrayidx73 = getelementptr inbounds i8**, i8*** %58, i64 0
  %59 = load i8**, i8*** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %59, i64 %idxprom72
  %60 = load i8*, i8** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %60, i64 %idxprom71
  %61 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %61 to i32
  %call77 = call i32 @writeReferenceFrame(i32 %50, i32 %51, i32 %52, i32 1, i32 %conv76)
  %62 = load i32, i32* %no_bits, align 4
  %add78 = add nsw i32 %62, %call77
  store i32 %add78, i32* %no_bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.66, %land.lhs.true.61, %lor.lhs.false.55
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %63 = load i32, i32* %step_h0, align 4
  %64 = load i32, i32* %i0, align 4
  %add79 = add nsw i32 %64, %63
  store i32 %add79, i32* %i0, align 4
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end
  %65 = load i32, i32* %step_v0, align 4
  %66 = load i32, i32* %j0, align 4
  %add81 = add nsw i32 %66, %65
  store i32 %add81, i32* %j0, align 4
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  store i32 0, i32* %j0, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.131, %for.end.82
  %67 = load i32, i32* %j0, align 4
  %cmp84 = icmp slt i32 %67, 4
  br i1 %cmp84, label %for.body.86, label %for.end.133

for.body.86:                                      ; preds = %for.cond.83
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 38
  %69 = load i32, i32* %block_y87, align 4
  %70 = load i32, i32* %j0, align 4
  %add88 = add nsw i32 %69, %70
  store i32 %add88, i32* %jj, align 4
  store i32 0, i32* %i0, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.128, %for.body.86
  %71 = load i32, i32* %i0, align 4
  %cmp90 = icmp slt i32 %71, 4
  br i1 %cmp90, label %for.body.92, label %for.end.130

for.body.92:                                      ; preds = %for.cond.89
  %72 = load i32, i32* %j0, align 4
  %73 = load i32, i32* %i0, align 4
  %shr93 = ashr i32 %73, 1
  %add94 = add nsw i32 %72, %shr93
  store i32 %add94, i32* %k, align 4
  %74 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %74 to i64
  %75 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir96 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %75, i32 0, i32 15
  %arrayidx97 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir96, i32 0, i64 %idxprom95
  %76 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp eq i32 %76, 1
  br i1 %cmp98, label %land.lhs.true.106, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %for.body.92
  %77 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %77 to i64
  %78 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir102 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %78, i32 0, i32 15
  %arrayidx103 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir102, i32 0, i64 %idxprom101
  %79 = load i32, i32* %arrayidx103, align 4
  %cmp104 = icmp eq i32 %79, 2
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.127

land.lhs.true.106:                                ; preds = %lor.lhs.false.100, %for.body.92
  %80 = load i32, i32* %k, align 4
  %idxprom107 = sext i32 %80 to i64
  %81 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode108 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i32 0, i32 14
  %arrayidx109 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode108, i32 0, i64 %idxprom107
  %82 = load i32, i32* %arrayidx109, align 4
  %cmp110 = icmp ne i32 %82, 0
  br i1 %cmp110, label %if.then.112, label %if.end.127

if.then.112:                                      ; preds = %land.lhs.true.106
  %83 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %83 to i64
  %84 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode114 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i32 0, i32 14
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode114, i32 0, i64 %idxprom113
  %85 = load i32, i32* %arrayidx115, align 4
  %86 = load i32, i32* %i0, align 4
  %87 = load i32, i32* %j0, align 4
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 37
  %89 = load i32, i32* %block_x116, align 4
  %90 = load i32, i32* %i0, align 4
  %add117 = add nsw i32 %89, %90
  %idxprom118 = sext i32 %add117 to i64
  %91 = load i32, i32* %jj, align 4
  %idxprom119 = sext i32 %91 to i64
  %92 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx120 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %92, i32 0, i32 35
  %93 = load i8***, i8**** %ref_idx120, align 8
  %arrayidx121 = getelementptr inbounds i8**, i8*** %93, i64 1
  %94 = load i8**, i8*** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %94, i64 %idxprom119
  %95 = load i8*, i8** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %95, i64 %idxprom118
  %96 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %96 to i32
  %call125 = call i32 @writeReferenceFrame(i32 %85, i32 %86, i32 %87, i32 0, i32 %conv124)
  %97 = load i32, i32* %no_bits, align 4
  %add126 = add nsw i32 %97, %call125
  store i32 %add126, i32* %no_bits, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.112, %land.lhs.true.106, %lor.lhs.false.100
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %98 = load i32, i32* %step_h0, align 4
  %99 = load i32, i32* %i0, align 4
  %add129 = add nsw i32 %99, %98
  store i32 %add129, i32* %i0, align 4
  br label %for.cond.89

for.end.130:                                      ; preds = %for.cond.89
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %100 = load i32, i32* %step_v0, align 4
  %101 = load i32, i32* %j0, align 4
  %add132 = add nsw i32 %101, %100
  store i32 %add132, i32* %j0, align 4
  br label %for.cond.83

for.end.133:                                      ; preds = %for.cond.83
  br label %if.end.134

if.end.134:                                       ; preds = %for.end.133, %lor.lhs.false.40
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %land.lhs.true.30, %land.lhs.true.26, %land.lhs.true, %cond.end.13
  %102 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type136 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %102, i32 0, i32 8
  %103 = load i32, i32* %mb_type136, align 4
  %cmp137 = icmp ne i32 %103, 9
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.205

land.lhs.true.139:                                ; preds = %if.end.135
  %104 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type140 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %104, i32 0, i32 8
  %105 = load i32, i32* %mb_type140, align 4
  %cmp141 = icmp ne i32 %105, 10
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.205

land.lhs.true.143:                                ; preds = %land.lhs.true.139
  %106 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type144 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %106, i32 0, i32 8
  %107 = load i32, i32* %mb_type144, align 4
  %cmp145 = icmp ne i32 %107, 13
  br i1 %cmp145, label %land.lhs.true.147, label %if.end.205

land.lhs.true.147:                                ; preds = %land.lhs.true.143
  %108 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type148 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %108, i32 0, i32 8
  %109 = load i32, i32* %mb_type148, align 4
  %cmp149 = icmp ne i32 %109, 0
  br i1 %cmp149, label %if.then.151, label %if.end.205

if.then.151:                                      ; preds = %land.lhs.true.147
  store i32 0, i32* %j0, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.202, %if.then.151
  %110 = load i32, i32* %j0, align 4
  %cmp153 = icmp slt i32 %110, 4
  br i1 %cmp153, label %for.body.155, label %for.end.204

for.body.155:                                     ; preds = %for.cond.152
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y156 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 38
  %112 = load i32, i32* %block_y156, align 4
  %113 = load i32, i32* %j0, align 4
  %add157 = add nsw i32 %112, %113
  store i32 %add157, i32* %jj, align 4
  store i32 0, i32* %i0, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.199, %for.body.155
  %114 = load i32, i32* %i0, align 4
  %cmp159 = icmp slt i32 %114, 4
  br i1 %cmp159, label %for.body.161, label %for.end.201

for.body.161:                                     ; preds = %for.cond.158
  %115 = load i32, i32* %j0, align 4
  %116 = load i32, i32* %i0, align 4
  %shr162 = ashr i32 %116, 1
  %add163 = add nsw i32 %115, %shr162
  store i32 %add163, i32* %k, align 4
  %117 = load i32, i32* %k, align 4
  %idxprom164 = sext i32 %117 to i64
  %118 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir165 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %118, i32 0, i32 15
  %arrayidx166 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir165, i32 0, i64 %idxprom164
  %119 = load i32, i32* %arrayidx166, align 4
  %cmp167 = icmp eq i32 %119, 0
  br i1 %cmp167, label %land.lhs.true.175, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %for.body.161
  %120 = load i32, i32* %k, align 4
  %idxprom170 = sext i32 %120 to i64
  %121 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir171 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %121, i32 0, i32 15
  %arrayidx172 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir171, i32 0, i64 %idxprom170
  %122 = load i32, i32* %arrayidx172, align 4
  %cmp173 = icmp eq i32 %122, 2
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.198

land.lhs.true.175:                                ; preds = %lor.lhs.false.169, %for.body.161
  %123 = load i32, i32* %k, align 4
  %idxprom176 = sext i32 %123 to i64
  %124 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode177 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %124, i32 0, i32 14
  %arrayidx178 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode177, i32 0, i64 %idxprom176
  %125 = load i32, i32* %arrayidx178, align 4
  %cmp179 = icmp ne i32 %125, 0
  br i1 %cmp179, label %if.then.181, label %if.end.198

if.then.181:                                      ; preds = %land.lhs.true.175
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x182 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 37
  %127 = load i32, i32* %block_x182, align 4
  %128 = load i32, i32* %i0, align 4
  %add183 = add nsw i32 %127, %128
  %idxprom184 = sext i32 %add183 to i64
  %129 = load i32, i32* %jj, align 4
  %idxprom185 = sext i32 %129 to i64
  %130 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx186 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %130, i32 0, i32 35
  %131 = load i8***, i8**** %ref_idx186, align 8
  %arrayidx187 = getelementptr inbounds i8**, i8*** %131, i64 0
  %132 = load i8**, i8*** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i8*, i8** %132, i64 %idxprom185
  %133 = load i8*, i8** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %133, i64 %idxprom184
  %134 = load i8, i8* %arrayidx189, align 1
  %conv190 = sext i8 %134 to i32
  store i32 %conv190, i32* %refframe, align 4
  %135 = load i32, i32* %i0, align 4
  %136 = load i32, i32* %j0, align 4
  %137 = load i32, i32* %i0, align 4
  %138 = load i32, i32* %step_h0, align 4
  %add191 = add nsw i32 %137, %138
  %139 = load i32, i32* %j0, align 4
  %140 = load i32, i32* %step_v0, align 4
  %add192 = add nsw i32 %139, %140
  %141 = load i32, i32* %refframe, align 4
  %142 = load i32, i32* %k, align 4
  %idxprom193 = sext i32 %142 to i64
  %143 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode194 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %143, i32 0, i32 14
  %arrayidx195 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode194, i32 0, i64 %idxprom193
  %144 = load i32, i32* %arrayidx195, align 4
  %call196 = call i32 @writeMotionVector8x8(i32 %135, i32 %136, i32 %add191, i32 %add192, i32 %141, i32 0, i32 %144)
  %145 = load i32, i32* %no_bits, align 4
  %add197 = add nsw i32 %145, %call196
  store i32 %add197, i32* %no_bits, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.181, %land.lhs.true.175, %lor.lhs.false.169
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %146 = load i32, i32* %step_h0, align 4
  %147 = load i32, i32* %i0, align 4
  %add200 = add nsw i32 %147, %146
  store i32 %add200, i32* %i0, align 4
  br label %for.cond.158

for.end.201:                                      ; preds = %for.cond.158
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.end.201
  %148 = load i32, i32* %step_v0, align 4
  %149 = load i32, i32* %j0, align 4
  %add203 = add nsw i32 %149, %148
  store i32 %add203, i32* %j0, align 4
  br label %for.cond.152

for.end.204:                                      ; preds = %for.cond.152
  br label %if.end.205

if.end.205:                                       ; preds = %for.end.204, %land.lhs.true.147, %land.lhs.true.143, %land.lhs.true.139, %if.end.135
  %150 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type206 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %150, i32 0, i32 8
  %151 = load i32, i32* %mb_type206, align 4
  %cmp207 = icmp ne i32 %151, 9
  br i1 %cmp207, label %land.lhs.true.209, label %if.end.277

land.lhs.true.209:                                ; preds = %if.end.205
  %152 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type210 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %152, i32 0, i32 8
  %153 = load i32, i32* %mb_type210, align 4
  %cmp211 = icmp ne i32 %153, 10
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.277

land.lhs.true.213:                                ; preds = %land.lhs.true.209
  %154 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type214 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %154, i32 0, i32 8
  %155 = load i32, i32* %mb_type214, align 4
  %cmp215 = icmp ne i32 %155, 13
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.277

land.lhs.true.217:                                ; preds = %land.lhs.true.213
  %156 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type218 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %156, i32 0, i32 8
  %157 = load i32, i32* %mb_type218, align 4
  %cmp219 = icmp ne i32 %157, 0
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.277

land.lhs.true.221:                                ; preds = %land.lhs.true.217
  %158 = load i32, i32* %bframe, align 4
  %tobool222 = icmp ne i32 %158, 0
  br i1 %tobool222, label %if.then.223, label %if.end.277

if.then.223:                                      ; preds = %land.lhs.true.221
  store i32 0, i32* %j0, align 4
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.274, %if.then.223
  %159 = load i32, i32* %j0, align 4
  %cmp225 = icmp slt i32 %159, 4
  br i1 %cmp225, label %for.body.227, label %for.end.276

for.body.227:                                     ; preds = %for.cond.224
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y228 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 38
  %161 = load i32, i32* %block_y228, align 4
  %162 = load i32, i32* %j0, align 4
  %add229 = add nsw i32 %161, %162
  store i32 %add229, i32* %jj, align 4
  store i32 0, i32* %i0, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.271, %for.body.227
  %163 = load i32, i32* %i0, align 4
  %cmp231 = icmp slt i32 %163, 4
  br i1 %cmp231, label %for.body.233, label %for.end.273

for.body.233:                                     ; preds = %for.cond.230
  %164 = load i32, i32* %j0, align 4
  %165 = load i32, i32* %i0, align 4
  %shr234 = ashr i32 %165, 1
  %add235 = add nsw i32 %164, %shr234
  store i32 %add235, i32* %k, align 4
  %166 = load i32, i32* %k, align 4
  %idxprom236 = sext i32 %166 to i64
  %167 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir237 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %167, i32 0, i32 15
  %arrayidx238 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir237, i32 0, i64 %idxprom236
  %168 = load i32, i32* %arrayidx238, align 4
  %cmp239 = icmp eq i32 %168, 1
  br i1 %cmp239, label %land.lhs.true.247, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %for.body.233
  %169 = load i32, i32* %k, align 4
  %idxprom242 = sext i32 %169 to i64
  %170 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir243 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %170, i32 0, i32 15
  %arrayidx244 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir243, i32 0, i64 %idxprom242
  %171 = load i32, i32* %arrayidx244, align 4
  %cmp245 = icmp eq i32 %171, 2
  br i1 %cmp245, label %land.lhs.true.247, label %if.end.270

land.lhs.true.247:                                ; preds = %lor.lhs.false.241, %for.body.233
  %172 = load i32, i32* %k, align 4
  %idxprom248 = sext i32 %172 to i64
  %173 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode249 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %173, i32 0, i32 14
  %arrayidx250 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode249, i32 0, i64 %idxprom248
  %174 = load i32, i32* %arrayidx250, align 4
  %cmp251 = icmp ne i32 %174, 0
  br i1 %cmp251, label %if.then.253, label %if.end.270

if.then.253:                                      ; preds = %land.lhs.true.247
  %175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x254 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %175, i32 0, i32 37
  %176 = load i32, i32* %block_x254, align 4
  %177 = load i32, i32* %i0, align 4
  %add255 = add nsw i32 %176, %177
  %idxprom256 = sext i32 %add255 to i64
  %178 = load i32, i32* %jj, align 4
  %idxprom257 = sext i32 %178 to i64
  %179 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx258 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %179, i32 0, i32 35
  %180 = load i8***, i8**** %ref_idx258, align 8
  %arrayidx259 = getelementptr inbounds i8**, i8*** %180, i64 1
  %181 = load i8**, i8*** %arrayidx259, align 8
  %arrayidx260 = getelementptr inbounds i8*, i8** %181, i64 %idxprom257
  %182 = load i8*, i8** %arrayidx260, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %182, i64 %idxprom256
  %183 = load i8, i8* %arrayidx261, align 1
  %conv262 = sext i8 %183 to i32
  store i32 %conv262, i32* %refframe, align 4
  %184 = load i32, i32* %i0, align 4
  %185 = load i32, i32* %j0, align 4
  %186 = load i32, i32* %i0, align 4
  %187 = load i32, i32* %step_h0, align 4
  %add263 = add nsw i32 %186, %187
  %188 = load i32, i32* %j0, align 4
  %189 = load i32, i32* %step_v0, align 4
  %add264 = add nsw i32 %188, %189
  %190 = load i32, i32* %refframe, align 4
  %191 = load i32, i32* %k, align 4
  %idxprom265 = sext i32 %191 to i64
  %192 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode266 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %192, i32 0, i32 14
  %arrayidx267 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode266, i32 0, i64 %idxprom265
  %193 = load i32, i32* %arrayidx267, align 4
  %call268 = call i32 @writeMotionVector8x8(i32 %184, i32 %185, i32 %add263, i32 %add264, i32 %190, i32 1, i32 %193)
  %194 = load i32, i32* %no_bits, align 4
  %add269 = add nsw i32 %194, %call268
  store i32 %add269, i32* %no_bits, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.253, %land.lhs.true.247, %lor.lhs.false.241
  br label %for.inc.271

for.inc.271:                                      ; preds = %if.end.270
  %195 = load i32, i32* %step_h0, align 4
  %196 = load i32, i32* %i0, align 4
  %add272 = add nsw i32 %196, %195
  store i32 %add272, i32* %i0, align 4
  br label %for.cond.230

for.end.273:                                      ; preds = %for.cond.230
  br label %for.inc.274

for.inc.274:                                      ; preds = %for.end.273
  %197 = load i32, i32* %step_v0, align 4
  %198 = load i32, i32* %j0, align 4
  %add275 = add nsw i32 %198, %197
  store i32 %add275, i32* %j0, align 4
  br label %for.cond.224

for.end.276:                                      ; preds = %for.cond.224
  br label %if.end.277

if.end.277:                                       ; preds = %for.end.276, %land.lhs.true.221, %land.lhs.true.217, %land.lhs.true.213, %land.lhs.true.209, %if.end.205
  %199 = load i32, i32* %no_bits, align 4
  ret i32 %199
}

; Function Attrs: nounwind uwtable
define internal i32 @writeChromaIntraPredMode() #0 {
entry:
  %currMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %bitCount = alloca i32*, align 8
  %partMap = alloca i32*, align 8
  %rate = alloca i32, align 4
  %dataPart = alloca %struct.datapartition*, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 60
  %5 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %5, %struct.Slice** %currSlice, align 8
  %6 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 76
  %8 = load i32, i32* %partition_mode, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx2, align 8
  store i32* %9, i32** %partMap, align 8
  store i32 0, i32* %rate, align 4
  %10 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 17
  %11 = load i32, i32* %c_ipred_mode, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %11, i32* %value1, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 0, i32* %value2, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 4, i32* %type, align 4
  %12 = load i32*, i32** %partMap, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %12, i64 4
  %13 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %14, i32 0, i32 6
  %15 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx5 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %15, i64 %idxprom4
  store %struct.datapartition* %arrayidx5, %struct.datapartition** %dataPart, align 8
  %16 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeCIPredMode, align 8
  %17 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %16(%struct.syntaxelement* %se, %struct.datapartition* %17)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %18 = load i32, i32* %len, align 4
  %19 = load i32*, i32** %bitCount, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %19, i64 6
  %20 = load i32, i32* %arrayidx6, align 4
  %add = add nsw i32 %20, %18
  store i32 %add, i32* %arrayidx6, align 4
  %len7 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %21 = load i32, i32* %len7, align 4
  %22 = load i32, i32* %rate, align 4
  %add8 = add nsw i32 %22, %21
  store i32 %add8, i32* %rate, align 4
  %23 = load i32, i32* %rate, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @writeCBPandLumaCoeff() #0 {
entry:
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %level = alloca i32, align 4
  %run = alloca i32, align 4
  %rate = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %bitCount = alloca i32*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %partMap = alloca i32*, align 8
  %cbp = alloca i32, align 4
  %dataPart = alloca %struct.datapartition*, align 8
  %need_transform_size_flag = alloca i32, align 4
  %b8 = alloca i32, align 4
  %b4 = alloca i32, align 4
  %DCLevel = alloca i32*, align 8
  %DCRun = alloca i32*, align 8
  %ACLevel = alloca i32*, align 8
  %ACRun = alloca i32*, align 8
  store i32 0, i32* %rate, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 60
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %6, %struct.Slice** %currSlice, align 8
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 76
  %8 = load i32, i32* %partition_mode, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx2, align 8
  store i32* %9, i32** %partMap, align 8
  %10 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 12
  %11 = load i32, i32* %cbp3, align 4
  store i32 %11, i32* %cbp, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 54
  %13 = load i32***, i32**** %cofDC, align 8
  %arrayidx4 = getelementptr inbounds i32**, i32*** %13, i64 0
  %14 = load i32**, i32*** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 0
  %15 = load i32*, i32** %arrayidx5, align 8
  store i32* %15, i32** %DCLevel, align 8
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 54
  %17 = load i32***, i32**** %cofDC6, align 8
  %arrayidx7 = getelementptr inbounds i32**, i32*** %17, i64 0
  %18 = load i32**, i32*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %18, i64 1
  %19 = load i32*, i32** %arrayidx8, align 8
  store i32* %19, i32** %DCRun, align 8
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 8
  %21 = load i32, i32* %mb_type, align 4
  %cmp = icmp eq i32 %21, 10
  br i1 %cmp, label %if.end.48, label %if.then

if.then:                                          ; preds = %entry
  %22 = load i32, i32* %cbp, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %22, i32* %value1, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 6, i32* %type, align 4
  %type9 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  %23 = load i32, i32* %type9, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load i32*, i32** %partMap, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %24, i64 %idxprom10
  %25 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = sext i32 %25 to i64
  %26 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %26, i32 0, i32 6
  %27 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx13 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %27, i64 %idxprom12
  store %struct.datapartition* %arrayidx13, %struct.datapartition** %dataPart, align 8
  %28 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeCBP, align 8
  %29 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %28(%struct.syntaxelement* %se, %struct.datapartition* %29)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %30 = load i32, i32* %len, align 4
  %31 = load i32*, i32** %bitCount, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %31, i64 4
  %32 = load i32, i32* %arrayidx14, align 4
  %add = add nsw i32 %32, %30
  store i32 %add, i32* %arrayidx14, align 4
  %len15 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %33 = load i32, i32* %len15, align 4
  %34 = load i32, i32* %rate, align 4
  %add16 = add nsw i32 %34, %33
  store i32 %add16, i32* %rate, align 4
  %35 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type17 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 8
  %36 = load i32, i32* %mb_type17, align 4
  %cmp18 = icmp sge i32 %36, 1
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %37 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type19 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i32 0, i32 8
  %38 = load i32, i32* %mb_type19, align 4
  %cmp20 = icmp sle i32 %38, 3
  br i1 %cmp20, label %land.lhs.true.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %39 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type21 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 8
  %40 = load i32, i32* %mb_type21, align 4
  %cmp22 = icmp eq i32 %40, 0
  br i1 %cmp22, label %land.lhs.true.23, label %lor.lhs.false.27

land.lhs.true.23:                                 ; preds = %lor.lhs.false
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 5
  %42 = load i32, i32* %type24, align 4
  %cmp25 = icmp eq i32 %42, 1
  br i1 %cmp25, label %land.lhs.true.26, label %lor.lhs.false.27

land.lhs.true.26:                                 ; preds = %land.lhs.true.23
  %43 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %43, i32 0, i32 27
  %44 = load i32, i32* %direct_8x8_inference_flag, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %land.lhs.true.29, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.26, %land.lhs.true.23, %lor.lhs.false
  %45 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %NoMbPartLessThan8x8Flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %45, i32 0, i32 32
  %46 = load i32, i32* %NoMbPartLessThan8x8Flag, align 4
  %tobool28 = icmp ne i32 %46, 0
  br i1 %tobool28, label %land.lhs.true.29, label %land.end

land.lhs.true.29:                                 ; preds = %lor.lhs.false.27, %land.lhs.true.26, %land.lhs.true
  %47 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 8
  %48 = load i32, i32* %mb_type30, align 4
  %cmp31 = icmp ne i32 %48, 13
  br i1 %cmp31, label %land.lhs.true.32, label %land.end

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %49 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type33 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i32 0, i32 8
  %50 = load i32, i32* %mb_type33, align 4
  %cmp34 = icmp ne i32 %50, 9
  br i1 %cmp34, label %land.lhs.true.35, label %land.end

land.lhs.true.35:                                 ; preds = %land.lhs.true.32
  %51 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp36 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 12
  %52 = load i32, i32* %cbp36, align 4
  %and = and i32 %52, 15
  %tobool37 = icmp ne i32 %and, 0
  br i1 %tobool37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.35
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 153
  %54 = load i32, i32* %Transform8x8Mode, align 4
  %tobool38 = icmp ne i32 %54, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.35, %land.lhs.true.32, %land.lhs.true.29, %lor.lhs.false.27
  %55 = phi i1 [ false, %land.lhs.true.35 ], [ false, %land.lhs.true.32 ], [ false, %land.lhs.true.29 ], [ false, %lor.lhs.false.27 ], [ %tobool38, %land.rhs ]
  %land.ext = zext i1 %55 to i32
  store i32 %land.ext, i32* %need_transform_size_flag, align 4
  %56 = load i32, i32* %need_transform_size_flag, align 4
  %tobool39 = icmp ne i32 %56, 0
  br i1 %tobool39, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %land.end
  %57 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %57, i32 0, i32 31
  %58 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  %value141 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %58, i32* %value141, align 4
  %type42 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 2, i32* %type42, align 4
  %59 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMB_transform_size, align 8
  %60 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %59(%struct.syntaxelement* %se, %struct.datapartition* %60)
  %len43 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %61 = load i32, i32* %len43, align 4
  %62 = load i32*, i32** %bitCount, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %62, i64 2
  %63 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %63, %61
  store i32 %add45, i32* %arrayidx44, align 4
  %len46 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %64 = load i32, i32* %len46, align 4
  %65 = load i32, i32* %rate, align 4
  %add47 = add nsw i32 %65, %64
  store i32 %add47, i32* %rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.40, %land.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %entry
  %66 = load i32, i32* %cbp, align 4
  %cmp49 = icmp ne i32 %66, 0
  br i1 %cmp49, label %if.then.53, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.end.48
  %67 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type51 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %67, i32 0, i32 8
  %68 = load i32, i32* %mb_type51, align 4
  %cmp52 = icmp eq i32 %68, 10
  br i1 %cmp52, label %if.then.53, label %if.end.68

if.then.53:                                       ; preds = %lor.lhs.false.50, %if.end.48
  %69 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %69, i32 0, i32 1
  %70 = load i32, i32* %delta_qp, align 4
  %value154 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %70, i32* %value154, align 4
  %type55 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 15, i32* %type55, align 4
  %type56 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  %71 = load i32, i32* %type56, align 4
  %idxprom57 = sext i32 %71 to i64
  %72 = load i32*, i32** %partMap, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %72, i64 %idxprom57
  %73 = load i32, i32* %arrayidx58, align 4
  %idxprom59 = sext i32 %73 to i64
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 60
  %75 = load %struct.Slice*, %struct.Slice** %currentSlice60, align 8
  %partArr61 = getelementptr inbounds %struct.Slice, %struct.Slice* %75, i32 0, i32 6
  %76 = load %struct.datapartition*, %struct.datapartition** %partArr61, align 8
  %arrayidx62 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %76, i64 %idxprom59
  store %struct.datapartition* %arrayidx62, %struct.datapartition** %dataPart, align 8
  %77 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeDquant, align 8
  %78 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %77(%struct.syntaxelement* %se, %struct.datapartition* %78)
  %len63 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %79 = load i32, i32* %len63, align 4
  %80 = load i32*, i32** %bitCount, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %80, i64 7
  %81 = load i32, i32* %arrayidx64, align 4
  %add65 = add nsw i32 %81, %79
  store i32 %add65, i32* %arrayidx64, align 4
  %len66 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %82 = load i32, i32* %len66, align 4
  %83 = load i32, i32* %rate, align 4
  %add67 = add nsw i32 %83, %82
  store i32 %add67, i32* %rate, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.53, %lor.lhs.false.50
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.68
  %84 = load i32, i32* %i, align 4
  %cmp69 = icmp slt i32 %84, 4
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %85 to i64
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 3
  %87 = load i32, i32* %current_mb_nr71, align 4
  %idxprom72 = sext i32 %87 to i64
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 34
  %89 = load i32***, i32**** %nz_coeff, align 8
  %arrayidx73 = getelementptr inbounds i32**, i32*** %89, i64 %idxprom72
  %90 = load i32**, i32*** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i32*, i32** %90, i64 %idxprom70
  %91 = load i32*, i32** %arrayidx74, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 158
  %94 = load i32, i32* %num_blk8x8_uv, align 4
  %add75 = add nsw i32 4, %94
  %conv = sext i32 %add75 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memset.p0i8.i64(i8* %92, i8 0, i64 %mul, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %95 = load i32, i32* %i, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %96 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type76 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %96, i32 0, i32 8
  %97 = load i32, i32* %mb_type76, align 4
  %cmp77 = icmp eq i32 %97, 10
  br i1 %cmp77, label %if.else, label %if.then.79

if.then.79:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.92, %if.then.79
  %98 = load i32, i32* %i, align 4
  %cmp81 = icmp slt i32 %98, 4
  br i1 %cmp81, label %for.body.83, label %for.end.94

for.body.83:                                      ; preds = %for.cond.80
  %99 = load i32, i32* %cbp, align 4
  %100 = load i32, i32* %i, align 4
  %shl = shl i32 1, %100
  %and84 = and i32 %99, %shl
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %for.body.83
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %102 to i64
  %103 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %103, i32 0, i32 14
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 %idxprom87
  %104 = load i32, i32* %arrayidx88, align 4
  %105 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag89 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %105, i32 0, i32 31
  %106 = load i32, i32* %luma_transform_size_8x8_flag89, align 4
  %call = call i32 @writeLumaCoeff8x8(i32 %101, i32 %104, i32 %106)
  %107 = load i32, i32* %rate, align 4
  %add90 = add nsw i32 %107, %call
  store i32 %add90, i32* %rate, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %for.body.83
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %108 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %108, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond.80

for.end.94:                                       ; preds = %for.cond.80
  br label %if.end.223

if.else:                                          ; preds = %for.end
  %109 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %109, i32 0, i32 74
  %110 = load i32, i32* %symbol_mode, align 4
  %cmp95 = icmp eq i32 %110, 0
  br i1 %cmp95, label %if.then.97, label %if.else.100

if.then.97:                                       ; preds = %if.else
  %call98 = call i32 @writeCoeff4x4_CAVLC(i32 1, i32 0, i32 0, i32 0)
  %111 = load i32, i32* %rate, align 4
  %add99 = add nsw i32 %111, %call98
  store i32 %add99, i32* %rate, align 4
  br label %if.end.130

if.else.100:                                      ; preds = %if.else
  store i32 1, i32* %level, align 4
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 26
  store i32 1, i32* %is_intra_block, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.127, %if.else.100
  %113 = load i32, i32* %k, align 4
  %cmp102 = icmp sle i32 %113, 16
  br i1 %cmp102, label %land.rhs.104, label %land.end.107

land.rhs.104:                                     ; preds = %for.cond.101
  %114 = load i32, i32* %level, align 4
  %cmp105 = icmp ne i32 %114, 0
  br label %land.end.107

land.end.107:                                     ; preds = %land.rhs.104, %for.cond.101
  %115 = phi i1 [ false, %for.cond.101 ], [ %cmp105, %land.rhs.104 ]
  br i1 %115, label %for.body.109, label %for.end.129

for.body.109:                                     ; preds = %land.end.107
  %116 = load i32, i32* %k, align 4
  %idxprom110 = sext i32 %116 to i64
  %117 = load i32*, i32** %DCLevel, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %117, i64 %idxprom110
  %118 = load i32, i32* %arrayidx111, align 4
  %value1112 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %118, i32* %value1112, align 4
  store i32 %118, i32* %level, align 4
  %119 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %119 to i64
  %120 = load i32*, i32** %DCRun, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %120, i64 %idxprom113
  %121 = load i32, i32* %arrayidx114, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %121, i32* %value2, align 4
  store i32 %121, i32* %run, align 4
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 6
  store i32 0, i32* %context, align 4
  %type115 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 7, i32* %type115, align 4
  %type116 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  %122 = load i32, i32* %type116, align 4
  %idxprom117 = sext i32 %122 to i64
  %123 = load i32*, i32** %partMap, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %123, i64 %idxprom117
  %124 = load i32, i32* %arrayidx118, align 4
  %idxprom119 = sext i32 %124 to i64
  %125 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr120 = getelementptr inbounds %struct.Slice, %struct.Slice* %125, i32 0, i32 6
  %126 = load %struct.datapartition*, %struct.datapartition** %partArr120, align 8
  %arrayidx121 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %126, i64 %idxprom119
  store %struct.datapartition* %arrayidx121, %struct.datapartition** %dataPart, align 8
  %127 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeRunLevel_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %127)
  %len122 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %128 = load i32, i32* %len122, align 4
  %129 = load i32*, i32** %bitCount, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %129, i64 5
  %130 = load i32, i32* %arrayidx123, align 4
  %add124 = add nsw i32 %130, %128
  store i32 %add124, i32* %arrayidx123, align 4
  %len125 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %131 = load i32, i32* %len125, align 4
  %132 = load i32, i32* %rate, align 4
  %add126 = add nsw i32 %132, %131
  store i32 %add126, i32* %rate, align 4
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.109
  %133 = load i32, i32* %k, align 4
  %inc128 = add nsw i32 %133, 1
  store i32 %inc128, i32* %k, align 4
  br label %for.cond.101

for.end.129:                                      ; preds = %land.end.107
  br label %if.end.130

if.end.130:                                       ; preds = %for.end.129, %if.then.97
  %134 = load i32, i32* %cbp, align 4
  %and131 = and i32 %134, 15
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.222

if.then.133:                                      ; preds = %if.end.130
  store i32 0, i32* %mb_y, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.219, %if.then.133
  %135 = load i32, i32* %mb_y, align 4
  %cmp135 = icmp slt i32 %135, 4
  br i1 %cmp135, label %for.body.137, label %for.end.221

for.body.137:                                     ; preds = %for.cond.134
  store i32 0, i32* %mb_x, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.216, %for.body.137
  %136 = load i32, i32* %mb_x, align 4
  %cmp139 = icmp slt i32 %136, 4
  br i1 %cmp139, label %for.body.141, label %for.end.218

for.body.141:                                     ; preds = %for.cond.138
  %137 = load i32, i32* %mb_y, align 4
  store i32 %137, i32* %j, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.213, %for.body.141
  %138 = load i32, i32* %j, align 4
  %139 = load i32, i32* %mb_y, align 4
  %add143 = add nsw i32 %139, 2
  %cmp144 = icmp slt i32 %138, %add143
  br i1 %cmp144, label %for.body.146, label %for.end.215

for.body.146:                                     ; preds = %for.cond.142
  %140 = load i32, i32* %mb_x, align 4
  store i32 %140, i32* %i, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.210, %for.body.146
  %141 = load i32, i32* %i, align 4
  %142 = load i32, i32* %mb_x, align 4
  %add148 = add nsw i32 %142, 2
  %cmp149 = icmp slt i32 %141, %add148
  br i1 %cmp149, label %for.body.151, label %for.end.212

for.body.151:                                     ; preds = %for.cond.147
  %143 = load i32, i32* %j, align 4
  %shr = ashr i32 %143, 1
  %mul152 = mul nsw i32 2, %shr
  %144 = load i32, i32* %i, align 4
  %shr153 = ashr i32 %144, 1
  %add154 = add nsw i32 %mul152, %shr153
  store i32 %add154, i32* %b8, align 4
  %145 = load i32, i32* %j, align 4
  %and155 = and i32 %145, 1
  %mul156 = mul nsw i32 2, %and155
  %146 = load i32, i32* %i, align 4
  %and157 = and i32 %146, 1
  %add158 = add nsw i32 %mul156, %and157
  store i32 %add158, i32* %b4, align 4
  %147 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode159 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %147, i32 0, i32 74
  %148 = load i32, i32* %symbol_mode159, align 4
  %cmp160 = icmp eq i32 %148, 0
  br i1 %cmp160, label %if.then.162, label %if.else.165

if.then.162:                                      ; preds = %for.body.151
  %149 = load i32, i32* %b8, align 4
  %150 = load i32, i32* %b4, align 4
  %call163 = call i32 @writeCoeff4x4_CAVLC(i32 2, i32 %149, i32 %150, i32 0)
  %151 = load i32, i32* %rate, align 4
  %add164 = add nsw i32 %151, %call163
  store i32 %add164, i32* %rate, align 4
  br label %if.end.209

if.else.165:                                      ; preds = %for.body.151
  %152 = load i32, i32* %b4, align 4
  %idxprom166 = sext i32 %152 to i64
  %153 = load i32, i32* %b8, align 4
  %idxprom167 = sext i32 %153 to i64
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 53
  %155 = load i32****, i32***** %cofAC, align 8
  %arrayidx168 = getelementptr inbounds i32***, i32**** %155, i64 %idxprom167
  %156 = load i32***, i32**** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i32**, i32*** %156, i64 %idxprom166
  %157 = load i32**, i32*** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds i32*, i32** %157, i64 0
  %158 = load i32*, i32** %arrayidx170, align 8
  store i32* %158, i32** %ACLevel, align 8
  %159 = load i32, i32* %b4, align 4
  %idxprom171 = sext i32 %159 to i64
  %160 = load i32, i32* %b8, align 4
  %idxprom172 = sext i32 %160 to i64
  %161 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC173 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %161, i32 0, i32 53
  %162 = load i32****, i32***** %cofAC173, align 8
  %arrayidx174 = getelementptr inbounds i32***, i32**** %162, i64 %idxprom172
  %163 = load i32***, i32**** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i32**, i32*** %163, i64 %idxprom171
  %164 = load i32**, i32*** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds i32*, i32** %164, i64 1
  %165 = load i32*, i32** %arrayidx176, align 8
  store i32* %165, i32** %ACRun, align 8
  %166 = load i32, i32* %j, align 4
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 25
  store i32 %166, i32* %subblock_y, align 4
  %168 = load i32, i32* %i, align 4
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 24
  store i32 %168, i32* %subblock_x, align 4
  store i32 1, i32* %level, align 4
  %170 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_intra_block177 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %170, i32 0, i32 26
  store i32 1, i32* %is_intra_block177, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.206, %if.else.165
  %171 = load i32, i32* %k, align 4
  %cmp179 = icmp slt i32 %171, 16
  br i1 %cmp179, label %land.rhs.181, label %land.end.184

land.rhs.181:                                     ; preds = %for.cond.178
  %172 = load i32, i32* %level, align 4
  %cmp182 = icmp ne i32 %172, 0
  br label %land.end.184

land.end.184:                                     ; preds = %land.rhs.181, %for.cond.178
  %173 = phi i1 [ false, %for.cond.178 ], [ %cmp182, %land.rhs.181 ]
  br i1 %173, label %for.body.186, label %for.end.208

for.body.186:                                     ; preds = %land.end.184
  %174 = load i32, i32* %k, align 4
  %idxprom187 = sext i32 %174 to i64
  %175 = load i32*, i32** %ACLevel, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %175, i64 %idxprom187
  %176 = load i32, i32* %arrayidx188, align 4
  %value1189 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %176, i32* %value1189, align 4
  store i32 %176, i32* %level, align 4
  %177 = load i32, i32* %k, align 4
  %idxprom190 = sext i32 %177 to i64
  %178 = load i32*, i32** %ACRun, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %178, i64 %idxprom190
  %179 = load i32, i32* %arrayidx191, align 4
  %value2192 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %179, i32* %value2192, align 4
  store i32 %179, i32* %run, align 4
  %context193 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 6
  store i32 1, i32* %context193, align 4
  %type194 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 9, i32* %type194, align 4
  %type195 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  %180 = load i32, i32* %type195, align 4
  %idxprom196 = sext i32 %180 to i64
  %181 = load i32*, i32** %partMap, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %181, i64 %idxprom196
  %182 = load i32, i32* %arrayidx197, align 4
  %idxprom198 = sext i32 %182 to i64
  %183 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr199 = getelementptr inbounds %struct.Slice, %struct.Slice* %183, i32 0, i32 6
  %184 = load %struct.datapartition*, %struct.datapartition** %partArr199, align 8
  %arrayidx200 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %184, i64 %idxprom198
  store %struct.datapartition* %arrayidx200, %struct.datapartition** %dataPart, align 8
  %185 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeRunLevel_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %185)
  %len201 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %186 = load i32, i32* %len201, align 4
  %187 = load i32*, i32** %bitCount, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %187, i64 5
  %188 = load i32, i32* %arrayidx202, align 4
  %add203 = add nsw i32 %188, %186
  store i32 %add203, i32* %arrayidx202, align 4
  %len204 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %189 = load i32, i32* %len204, align 4
  %190 = load i32, i32* %rate, align 4
  %add205 = add nsw i32 %190, %189
  store i32 %add205, i32* %rate, align 4
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.body.186
  %191 = load i32, i32* %k, align 4
  %inc207 = add nsw i32 %191, 1
  store i32 %inc207, i32* %k, align 4
  br label %for.cond.178

for.end.208:                                      ; preds = %land.end.184
  br label %if.end.209

if.end.209:                                       ; preds = %for.end.208, %if.then.162
  br label %for.inc.210

for.inc.210:                                      ; preds = %if.end.209
  %192 = load i32, i32* %i, align 4
  %inc211 = add nsw i32 %192, 1
  store i32 %inc211, i32* %i, align 4
  br label %for.cond.147

for.end.212:                                      ; preds = %for.cond.147
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.end.212
  %193 = load i32, i32* %j, align 4
  %inc214 = add nsw i32 %193, 1
  store i32 %inc214, i32* %j, align 4
  br label %for.cond.142

for.end.215:                                      ; preds = %for.cond.142
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.end.215
  %194 = load i32, i32* %mb_x, align 4
  %add217 = add nsw i32 %194, 2
  store i32 %add217, i32* %mb_x, align 4
  br label %for.cond.138

for.end.218:                                      ; preds = %for.cond.138
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.end.218
  %195 = load i32, i32* %mb_y, align 4
  %add220 = add nsw i32 %195, 2
  store i32 %add220, i32* %mb_y, align 4
  br label %for.cond.134

for.end.221:                                      ; preds = %for.cond.134
  br label %if.end.222

if.end.222:                                       ; preds = %for.end.221, %if.end.130
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %for.end.94
  %196 = load i32, i32* %rate, align 4
  ret i32 %196
}

; Function Attrs: nounwind uwtable
define internal i32 @writeChromaCoeff() #0 {
entry:
  %rate = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %bitCount = alloca i32*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %partMap = alloca i32*, align 8
  %cbp = alloca i32, align 4
  %dataPart = alloca %struct.datapartition*, align 8
  %level = alloca i32, align 4
  %run = alloca i32, align 4
  %k = alloca i32, align 4
  %uv = alloca i32, align 4
  %b8 = alloca i32, align 4
  %b4 = alloca i32, align 4
  %param = alloca i32, align 4
  %ACLevel = alloca i32*, align 8
  %ACRun = alloca i32*, align 8
  %DCLevel = alloca i32*, align 8
  %DCRun = alloca i32*, align 8
  %yuv = alloca i32, align 4
  store i32 0, i32* %rate, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 60
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %6, %struct.Slice** %currSlice, align 8
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 76
  %8 = load i32, i32* %partition_mode, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx2, align 8
  store i32* %9, i32** %partMap, align 8
  %10 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 12
  %11 = load i32, i32* %cbp3, align 4
  store i32 %11, i32* %cbp, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 160
  %13 = load i32, i32* %yuv_format, align 4
  %sub = sub nsw i32 %13, 1
  store i32 %sub, i32* %yuv, align 4
  %14 = load i32, i32* %cbp, align 4
  %cmp = icmp sgt i32 %14, 15
  br i1 %cmp, label %if.then, label %if.end.58

if.then:                                          ; preds = %entry
  store i32 0, i32* %uv, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %if.then
  %15 = load i32, i32* %uv, align 4
  %cmp4 = icmp slt i32 %15, 2
  br i1 %cmp4, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 74
  %17 = load i32, i32* %symbol_mode, align 4
  %cmp5 = icmp eq i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  %18 = load i32, i32* %uv, align 4
  store i32 %18, i32* %param, align 4
  %19 = load i32, i32* %param, align 4
  %call = call i32 @writeCoeff4x4_CAVLC(i32 6, i32 0, i32 0, i32 %19)
  %20 = load i32, i32* %rate, align 4
  %add = add nsw i32 %20, %call
  store i32 %add, i32* %rate, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %21 = load i32, i32* %uv, align 4
  %add7 = add nsw i32 %21, 1
  %idxprom8 = sext i32 %add7 to i64
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 54
  %23 = load i32***, i32**** %cofDC, align 8
  %arrayidx9 = getelementptr inbounds i32**, i32*** %23, i64 %idxprom8
  %24 = load i32**, i32*** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %24, i64 0
  %25 = load i32*, i32** %arrayidx10, align 8
  store i32* %25, i32** %DCLevel, align 8
  %26 = load i32, i32* %uv, align 4
  %add11 = add nsw i32 %26, 1
  %idxprom12 = sext i32 %add11 to i64
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 54
  %28 = load i32***, i32**** %cofDC13, align 8
  %arrayidx14 = getelementptr inbounds i32**, i32*** %28, i64 %idxprom12
  %29 = load i32**, i32*** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %29, i64 1
  %30 = load i32*, i32** %arrayidx15, align 8
  store i32* %30, i32** %DCRun, align 8
  store i32 1, i32* %level, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.else
  %31 = load i32, i32* %k, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_cdc_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 159
  %33 = load i32, i32* %num_cdc_coeff, align 4
  %cmp17 = icmp sle i32 %31, %33
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.16
  %34 = load i32, i32* %level, align 4
  %cmp18 = icmp ne i32 %34, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.16
  %35 = phi i1 [ false, %for.cond.16 ], [ %cmp18, %land.rhs ]
  br i1 %35, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %land.end
  %36 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %36 to i64
  %37 = load i32*, i32** %DCLevel, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %37, i64 %idxprom20
  %38 = load i32, i32* %arrayidx21, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %38, i32* %value1, align 4
  store i32 %38, i32* %level, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %39 to i64
  %40 = load i32*, i32** %DCRun, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %40, i64 %idxprom22
  %41 = load i32, i32* %arrayidx23, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %41, i32* %value2, align 4
  store i32 %41, i32* %run, align 4
  %42 = load i32, i32* %yuv, align 4
  %idxprom24 = sext i32 %42 to i64
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* @writeChromaCoeff.chroma_dc_context, i32 0, i64 %idxprom24
  %43 = load i32, i32* %arrayidx25, align 4
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 6
  store i32 %43, i32* %context, align 4
  %44 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %44, i32 0, i32 8
  %45 = load i32, i32* %mb_type, align 4
  %cmp26 = icmp eq i32 %45, 9
  br i1 %cmp26, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.19
  %46 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type27 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %46, i32 0, i32 8
  %47 = load i32, i32* %mb_type27, align 4
  %cmp28 = icmp eq i32 %47, 10
  br i1 %cmp28, label %lor.end, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %48 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %48, i32 0, i32 8
  %49 = load i32, i32* %mb_type30, align 4
  %cmp31 = icmp eq i32 %49, 13
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.29
  %50 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %50, i32 0, i32 8
  %51 = load i32, i32* %mb_type32, align 4
  %cmp33 = icmp eq i32 %51, 14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.29, %lor.lhs.false, %for.body.19
  %52 = phi i1 [ true, %lor.lhs.false.29 ], [ true, %lor.lhs.false ], [ true, %for.body.19 ], [ %cmp33, %lor.rhs ]
  %cond = select i1 %52, i32 8, i32 12
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 %cond, i32* %type, align 4
  %53 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %53, i32 0, i32 8
  %54 = load i32, i32* %mb_type34, align 4
  %cmp35 = icmp eq i32 %54, 9
  br i1 %cmp35, label %lor.end.45, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.end
  %55 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type37 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %55, i32 0, i32 8
  %56 = load i32, i32* %mb_type37, align 4
  %cmp38 = icmp eq i32 %56, 10
  br i1 %cmp38, label %lor.end.45, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36
  %57 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %57, i32 0, i32 8
  %58 = load i32, i32* %mb_type40, align 4
  %cmp41 = icmp eq i32 %58, 13
  br i1 %cmp41, label %lor.end.45, label %lor.rhs.42

lor.rhs.42:                                       ; preds = %lor.lhs.false.39
  %59 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type43 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %59, i32 0, i32 8
  %60 = load i32, i32* %mb_type43, align 4
  %cmp44 = icmp eq i32 %60, 14
  br label %lor.end.45

lor.end.45:                                       ; preds = %lor.rhs.42, %lor.lhs.false.39, %lor.lhs.false.36, %lor.end
  %61 = phi i1 [ true, %lor.lhs.false.39 ], [ true, %lor.lhs.false.36 ], [ true, %lor.end ], [ %cmp44, %lor.rhs.42 ]
  %lor.ext = zext i1 %61 to i32
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 26
  store i32 %lor.ext, i32* %is_intra_block, align 4
  %63 = load i32, i32* %uv, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_v_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 27
  store i32 %63, i32* %is_v_block, align 4
  %type46 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  %65 = load i32, i32* %type46, align 4
  %idxprom47 = sext i32 %65 to i64
  %66 = load i32*, i32** %partMap, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %66, i64 %idxprom47
  %67 = load i32, i32* %arrayidx48, align 4
  %idxprom49 = sext i32 %67 to i64
  %68 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %68, i32 0, i32 6
  %69 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx50 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %69, i64 %idxprom49
  store %struct.datapartition* %arrayidx50, %struct.datapartition** %dataPart, align 8
  %70 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeRunLevel_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %70)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %71 = load i32, i32* %len, align 4
  %72 = load i32*, i32** %bitCount, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %72, i64 6
  %73 = load i32, i32* %arrayidx51, align 4
  %add52 = add nsw i32 %73, %71
  store i32 %add52, i32* %arrayidx51, align 4
  %len53 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %74 = load i32, i32* %len53, align 4
  %75 = load i32, i32* %rate, align 4
  %add54 = add nsw i32 %75, %74
  store i32 %add54, i32* %rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %lor.end.45
  %76 = load i32, i32* %k, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.16

for.end:                                          ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.6
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end
  %77 = load i32, i32* %uv, align 4
  %inc56 = add nsw i32 %77, 1
  store i32 %inc56, i32* %uv, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %entry
  store i32 -1, i32* %uv, align 4
  %78 = load i32, i32* %cbp, align 4
  %shr = ashr i32 %78, 4
  %cmp59 = icmp eq i32 %shr, 2
  br i1 %cmp59, label %if.then.60, label %if.end.188

if.then.60:                                       ; preds = %if.end.58
  store i32 4, i32* %b8, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.185, %if.then.60
  %79 = load i32, i32* %b8, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 158
  %81 = load i32, i32* %num_blk8x8_uv, align 4
  %add62 = add nsw i32 4, %81
  %cmp63 = icmp slt i32 %79, %add62
  br i1 %cmp63, label %for.body.64, label %for.end.187

for.body.64:                                      ; preds = %for.cond.61
  store i32 0, i32* %b4, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.182, %for.body.64
  %82 = load i32, i32* %b4, align 4
  %cmp66 = icmp slt i32 %82, 4
  br i1 %cmp66, label %for.body.67, label %for.end.184

for.body.67:                                      ; preds = %for.cond.65
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode68 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 74
  %84 = load i32, i32* %symbol_mode68, align 4
  %cmp69 = icmp eq i32 %84, 0
  br i1 %cmp69, label %if.then.70, label %if.else.80

if.then.70:                                       ; preds = %for.body.67
  %85 = load i32, i32* %b4, align 4
  %idxprom71 = sext i32 %85 to i64
  %86 = load i32, i32* %b8, align 4
  %sub72 = sub nsw i32 %86, 4
  %idxprom73 = sext i32 %sub72 to i64
  %87 = load i32, i32* %yuv, align 4
  %idxprom74 = sext i32 %87 to i64
  %arrayidx75 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @writeChromaCoeff.chroma_ac_param, i32 0, i64 %idxprom74
  %arrayidx76 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx75, i32 0, i64 %idxprom73
  %arrayidx77 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx76, i32 0, i64 %idxprom71
  %88 = load i8, i8* %arrayidx77, align 1
  %conv = zext i8 %88 to i32
  store i32 %conv, i32* %param, align 4
  %89 = load i32, i32* %b8, align 4
  %90 = load i32, i32* %b4, align 4
  %91 = load i32, i32* %param, align 4
  %call78 = call i32 @writeCoeff4x4_CAVLC(i32 7, i32 %89, i32 %90, i32 %91)
  %92 = load i32, i32* %rate, align 4
  %add79 = add nsw i32 %92, %call78
  store i32 %add79, i32* %rate, align 4
  br label %if.end.181

if.else.80:                                       ; preds = %for.body.67
  %93 = load i32, i32* %b4, align 4
  %idxprom81 = sext i32 %93 to i64
  %94 = load i32, i32* %b8, align 4
  %idxprom82 = sext i32 %94 to i64
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 53
  %96 = load i32****, i32***** %cofAC, align 8
  %arrayidx83 = getelementptr inbounds i32***, i32**** %96, i64 %idxprom82
  %97 = load i32***, i32**** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32**, i32*** %97, i64 %idxprom81
  %98 = load i32**, i32*** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %98, i64 0
  %99 = load i32*, i32** %arrayidx85, align 8
  store i32* %99, i32** %ACLevel, align 8
  %100 = load i32, i32* %b4, align 4
  %idxprom86 = sext i32 %100 to i64
  %101 = load i32, i32* %b8, align 4
  %idxprom87 = sext i32 %101 to i64
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 53
  %103 = load i32****, i32***** %cofAC88, align 8
  %arrayidx89 = getelementptr inbounds i32***, i32**** %103, i64 %idxprom87
  %104 = load i32***, i32**** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32**, i32*** %104, i64 %idxprom86
  %105 = load i32**, i32*** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i32*, i32** %105, i64 1
  %106 = load i32*, i32** %arrayidx91, align 8
  store i32* %106, i32** %ACRun, align 8
  store i32 1, i32* %level, align 4
  %107 = load i32, i32* %uv, align 4
  %inc92 = add nsw i32 %107, 1
  store i32 %inc92, i32* %uv, align 4
  %108 = load i32, i32* %b4, align 4
  %idxprom93 = sext i32 %108 to i64
  %109 = load i32, i32* %b8, align 4
  %sub94 = sub nsw i32 %109, 4
  %idxprom95 = sext i32 %sub94 to i64
  %110 = load i32, i32* %yuv, align 4
  %idxprom96 = sext i32 %110 to i64
  %arrayidx97 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_y, i32 0, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx97, i32 0, i64 %idxprom95
  %arrayidx99 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx98, i32 0, i64 %idxprom93
  %111 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %111 to i32
  %shr101 = ashr i32 %conv100, 2
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 25
  store i32 %shr101, i32* %subblock_y, align 4
  %113 = load i32, i32* %b4, align 4
  %idxprom102 = sext i32 %113 to i64
  %114 = load i32, i32* %b8, align 4
  %sub103 = sub nsw i32 %114, 4
  %idxprom104 = sext i32 %sub103 to i64
  %115 = load i32, i32* %yuv, align 4
  %idxprom105 = sext i32 %115 to i64
  %arrayidx106 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_x, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx106, i32 0, i64 %idxprom104
  %arrayidx108 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx107, i32 0, i64 %idxprom102
  %116 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %116 to i32
  %shr110 = ashr i32 %conv109, 2
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 24
  store i32 %shr110, i32* %subblock_x, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.178, %if.else.80
  %118 = load i32, i32* %k, align 4
  %cmp112 = icmp slt i32 %118, 16
  br i1 %cmp112, label %land.rhs.114, label %land.end.117

land.rhs.114:                                     ; preds = %for.cond.111
  %119 = load i32, i32* %level, align 4
  %cmp115 = icmp ne i32 %119, 0
  br label %land.end.117

land.end.117:                                     ; preds = %land.rhs.114, %for.cond.111
  %120 = phi i1 [ false, %for.cond.111 ], [ %cmp115, %land.rhs.114 ]
  br i1 %120, label %for.body.118, label %for.end.180

for.body.118:                                     ; preds = %land.end.117
  %121 = load i32, i32* %k, align 4
  %idxprom119 = sext i32 %121 to i64
  %122 = load i32*, i32** %ACLevel, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %122, i64 %idxprom119
  %123 = load i32, i32* %arrayidx120, align 4
  %value1121 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %123, i32* %value1121, align 4
  store i32 %123, i32* %level, align 4
  %124 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %124 to i64
  %125 = load i32*, i32** %ACRun, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %125, i64 %idxprom122
  %126 = load i32, i32* %arrayidx123, align 4
  %value2124 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %126, i32* %value2124, align 4
  store i32 %126, i32* %run, align 4
  %context125 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 6
  store i32 7, i32* %context125, align 4
  %127 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type126 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %127, i32 0, i32 8
  %128 = load i32, i32* %mb_type126, align 4
  %cmp127 = icmp eq i32 %128, 9
  br i1 %cmp127, label %lor.end.141, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %for.body.118
  %129 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type130 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %129, i32 0, i32 8
  %130 = load i32, i32* %mb_type130, align 4
  %cmp131 = icmp eq i32 %130, 10
  br i1 %cmp131, label %lor.end.141, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %lor.lhs.false.129
  %131 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type134 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %131, i32 0, i32 8
  %132 = load i32, i32* %mb_type134, align 4
  %cmp135 = icmp eq i32 %132, 13
  br i1 %cmp135, label %lor.end.141, label %lor.rhs.137

lor.rhs.137:                                      ; preds = %lor.lhs.false.133
  %133 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type138 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %133, i32 0, i32 8
  %134 = load i32, i32* %mb_type138, align 4
  %cmp139 = icmp eq i32 %134, 14
  br label %lor.end.141

lor.end.141:                                      ; preds = %lor.rhs.137, %lor.lhs.false.133, %lor.lhs.false.129, %for.body.118
  %135 = phi i1 [ true, %lor.lhs.false.133 ], [ true, %lor.lhs.false.129 ], [ true, %for.body.118 ], [ %cmp139, %lor.rhs.137 ]
  %cond143 = select i1 %135, i32 10, i32 14
  %type144 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 %cond143, i32* %type144, align 4
  %136 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type145 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %136, i32 0, i32 8
  %137 = load i32, i32* %mb_type145, align 4
  %cmp146 = icmp eq i32 %137, 9
  br i1 %cmp146, label %lor.end.160, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %lor.end.141
  %138 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type149 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %138, i32 0, i32 8
  %139 = load i32, i32* %mb_type149, align 4
  %cmp150 = icmp eq i32 %139, 10
  br i1 %cmp150, label %lor.end.160, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false.148
  %140 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type153 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %140, i32 0, i32 8
  %141 = load i32, i32* %mb_type153, align 4
  %cmp154 = icmp eq i32 %141, 13
  br i1 %cmp154, label %lor.end.160, label %lor.rhs.156

lor.rhs.156:                                      ; preds = %lor.lhs.false.152
  %142 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type157 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %142, i32 0, i32 8
  %143 = load i32, i32* %mb_type157, align 4
  %cmp158 = icmp eq i32 %143, 14
  br label %lor.end.160

lor.end.160:                                      ; preds = %lor.rhs.156, %lor.lhs.false.152, %lor.lhs.false.148, %lor.end.141
  %144 = phi i1 [ true, %lor.lhs.false.152 ], [ true, %lor.lhs.false.148 ], [ true, %lor.end.141 ], [ %cmp158, %lor.rhs.156 ]
  %lor.ext161 = zext i1 %144 to i32
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_intra_block162 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 26
  store i32 %lor.ext161, i32* %is_intra_block162, align 4
  %146 = load i32, i32* %uv, align 4
  %147 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv163 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %147, i32 0, i32 158
  %148 = load i32, i32* %num_blk8x8_uv163, align 4
  %shl = shl i32 %148, 1
  %cmp164 = icmp sge i32 %146, %shl
  %conv165 = zext i1 %cmp164 to i32
  %149 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_v_block166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %149, i32 0, i32 27
  store i32 %conv165, i32* %is_v_block166, align 4
  %type167 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  %150 = load i32, i32* %type167, align 4
  %idxprom168 = sext i32 %150 to i64
  %151 = load i32*, i32** %partMap, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %151, i64 %idxprom168
  %152 = load i32, i32* %arrayidx169, align 4
  %idxprom170 = sext i32 %152 to i64
  %153 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr171 = getelementptr inbounds %struct.Slice, %struct.Slice* %153, i32 0, i32 6
  %154 = load %struct.datapartition*, %struct.datapartition** %partArr171, align 8
  %arrayidx172 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %154, i64 %idxprom170
  store %struct.datapartition* %arrayidx172, %struct.datapartition** %dataPart, align 8
  %155 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeRunLevel_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %155)
  %len173 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %156 = load i32, i32* %len173, align 4
  %157 = load i32*, i32** %bitCount, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %157, i64 6
  %158 = load i32, i32* %arrayidx174, align 4
  %add175 = add nsw i32 %158, %156
  store i32 %add175, i32* %arrayidx174, align 4
  %len176 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %159 = load i32, i32* %len176, align 4
  %160 = load i32, i32* %rate, align 4
  %add177 = add nsw i32 %160, %159
  store i32 %add177, i32* %rate, align 4
  br label %for.inc.178

for.inc.178:                                      ; preds = %lor.end.160
  %161 = load i32, i32* %k, align 4
  %inc179 = add nsw i32 %161, 1
  store i32 %inc179, i32* %k, align 4
  br label %for.cond.111

for.end.180:                                      ; preds = %land.end.117
  br label %if.end.181

if.end.181:                                       ; preds = %for.end.180, %if.then.70
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %162 = load i32, i32* %b4, align 4
  %inc183 = add nsw i32 %162, 1
  store i32 %inc183, i32* %b4, align 4
  br label %for.cond.65

for.end.184:                                      ; preds = %for.cond.65
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end.184
  %163 = load i32, i32* %b8, align 4
  %inc186 = add nsw i32 %163, 1
  store i32 %inc186, i32* %b8, align 4
  br label %for.cond.61

for.end.187:                                      ; preds = %for.cond.61
  br label %if.end.188

if.end.188:                                       ; preds = %for.end.187, %if.end.58
  %164 = load i32, i32* %rate, align 4
  ret i32 %164
}

; Function Attrs: nounwind uwtable
define void @write_terminating_bit(i16 signext %bit) #0 {
entry:
  %bit.addr = alloca i16, align 2
  %dataPart = alloca %struct.datapartition*, align 8
  %partMap = alloca i32*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  store i16 %bit, i16* %bit.addr, align 2
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 76
  %1 = load i32, i32* %partition_mode, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  store i32* %2, i32** %partMap, align 8
  %3 = load i32*, i32** %partMap, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 2
  %4 = load i32, i32* %arrayidx1, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 60
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 6
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx3, %struct.datapartition** %dataPart, align 8
  %8 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 0
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %9, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %10 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %10, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %11 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %12 = load i16, i16* %bit.addr, align 2
  call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %11, i16 signext %12)
  ret void
}

declare void @biari_encode_symbol_final(%struct.EncodingEnvironment*, i16 signext) #1

; Function Attrs: nounwind uwtable
define void @set_last_dquant() #0 {
entry:
  %currMB = alloca %struct.macroblock*, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 8
  %5 = load i32, i32* %mb_type, align 4
  %cmp = icmp ne i32 %5, 9
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i32 0, i32 8
  %7 = load i32, i32* %mb_type1, align 4
  %cmp2 = icmp ne i32 %7, 10
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %8 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i32 0, i32 8
  %9 = load i32, i32* %mb_type4, align 4
  %cmp5 = icmp ne i32 %9, 13
  br i1 %cmp5, label %land.lhs.true.6, label %lor.lhs.false

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %10 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 8
  %11 = load i32, i32* %mb_type7, align 4
  %cmp8 = icmp ne i32 %11, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.6, %land.lhs.true.3, %land.lhs.true, %entry
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 8
  %13 = load i32, i32* %mb_type9, align 4
  %cmp10 = icmp eq i32 %13, 9
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 8
  %15 = load i32, i32* %mb_type12, align 4
  %cmp13 = icmp eq i32 %15, 10
  br i1 %cmp13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type15 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 8
  %17 = load i32, i32* %mb_type15, align 4
  %cmp16 = icmp eq i32 %17, 13
  br i1 %cmp16, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 8
  %19 = load i32, i32* %mb_type18, align 4
  %cmp19 = icmp eq i32 %19, 14
  br i1 %cmp19, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 5
  %21 = load i32, i32* %type, align 4
  %cmp21 = icmp eq i32 %21, 1
  br i1 %cmp21, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %lor.lhs.false.20
  %22 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 12
  %23 = load i32, i32* %cbp, align 4
  %cmp23 = icmp ne i32 %23, 0
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.22, %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false, %land.lhs.true.6
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 1
  %25 = load i32, i32* %delta_qp, align 4
  store i32 %25, i32* @last_dquant, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.22, %lor.lhs.false.20
  store i32 0, i32* @last_dquant, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_one_macroblock(i32 %eos_bit) #0 {
entry:
  %eos_bit.addr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %bitCount = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %eos_bit, i32* %eos_bit.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %5 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i32 0, i32 2
  %6 = load i32, i32* %qp, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 172
  %8 = load i32, i32* %SumFrameQP, align 4
  %add = add nsw i32 %8, %6
  store i32 %add, i32* %SumFrameQP, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 23
  %10 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 5
  %12 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 5
  %14 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %14, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %15 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 8
  %16 = load i32, i32* %mb_type, align 4
  %cmp3 = icmp eq i32 %16, 9
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.then
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 8
  %18 = load i32, i32* %mb_type5, align 4
  %cmp6 = icmp eq i32 %18, 10
  br i1 %cmp6, label %lor.end, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 8
  %20 = load i32, i32* %mb_type8, align 4
  %cmp9 = icmp eq i32 %20, 13
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.7
  %21 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 8
  %22 = load i32, i32* %mb_type10, align 4
  %cmp11 = icmp eq i32 %22, 14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.7, %lor.lhs.false.4, %if.then
  %23 = phi i1 [ true, %lor.lhs.false.7 ], [ true, %lor.lhs.false.4 ], [ true, %if.then ], [ %cmp11, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 3
  %25 = load i32, i32* %current_mb_nr12, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 63
  %27 = load i32*, i32** %intra_block, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %27, i64 %idxprom13
  store i32 %lor.ext, i32* %arrayidx14, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %lor.lhs.false, %entry
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 3
  %29 = load i32, i32* %current_mb_nr15, align 4
  %cmp16 = icmp eq i32 %29, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store i32 0, i32* @intras, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  %30 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type19 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i32 0, i32 8
  %31 = load i32, i32* %mb_type19, align 4
  %cmp20 = icmp eq i32 %31, 9
  br i1 %cmp20, label %if.then.30, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end.18
  %32 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type22 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i32 0, i32 8
  %33 = load i32, i32* %mb_type22, align 4
  %cmp23 = icmp eq i32 %33, 10
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %34 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type25 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i32 0, i32 8
  %35 = load i32, i32* %mb_type25, align 4
  %cmp26 = icmp eq i32 %35, 13
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %36 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %36, i32 0, i32 8
  %37 = load i32, i32* %mb_type28, align 4
  %cmp29 = icmp eq i32 %37, 14
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false.24, %lor.lhs.false.21, %if.end.18
  %38 = load i32, i32* @intras, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* @intras, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %lor.lhs.false.27
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 74
  %40 = load i32, i32* %symbol_mode, align 4
  %cmp32 = icmp eq i32 %40, 1
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.39

land.lhs.true.33:                                 ; preds = %if.end.31
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 3
  %42 = load i32, i32* %current_mb_nr34, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 60
  %44 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %start_mb_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %44, i32 0, i32 3
  %45 = load i32, i32* %start_mb_nr, align 4
  %cmp35 = icmp ne i32 %42, %45
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.39

land.lhs.true.36:                                 ; preds = %land.lhs.true.33
  %46 = load i32, i32* %eos_bit.addr, align 4
  %tobool37 = icmp ne i32 %46, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.36
  call void @write_terminating_bit(i16 signext 0)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true.36, %land.lhs.true.33, %if.end.31
  store i32 1, i32* @cabac_encoding, align 4
  %call = call i32 @writeMBLayer(i32 0, i32* %i)
  %47 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 8
  %48 = load i32, i32* %mb_type40, align 4
  %cmp41 = icmp ne i32 %48, 0
  br i1 %cmp41, label %if.end.56, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.end.39
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 5
  %50 = load i32, i32* %type43, align 4
  %cmp44 = icmp eq i32 %50, 1
  br i1 %cmp44, label %land.lhs.true.45, label %if.then.47

land.lhs.true.45:                                 ; preds = %lor.lhs.false.42
  %51 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 12
  %52 = load i32, i32* %cbp, align 4
  %cmp46 = icmp ne i32 %52, 0
  br i1 %cmp46, label %if.end.56, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.45, %lor.lhs.false.42
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.47
  %53 = load i32, i32* %i, align 4
  %cmp48 = icmp slt i32 %53, 4
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %54 to i64
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr50 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 3
  %56 = load i32, i32* %current_mb_nr50, align 4
  %idxprom51 = sext i32 %56 to i64
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 34
  %58 = load i32***, i32**** %nz_coeff, align 8
  %arrayidx52 = getelementptr inbounds i32**, i32*** %58, i64 %idxprom51
  %59 = load i32**, i32*** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i32*, i32** %59, i64 %idxprom49
  %60 = load i32*, i32** %arrayidx53, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 158
  %63 = load i32, i32* %num_blk8x8_uv, align 4
  %add54 = add nsw i32 4, %63
  %conv = sext i32 %add54 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 %mul, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %64, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.56

if.end.56:                                        ; preds = %for.end, %land.lhs.true.45, %if.end.39
  call void @set_last_dquant()
  %65 = load i32*, i32** %bitCount, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %65, i64 2
  %66 = load i32, i32* %arrayidx57, align 4
  %67 = load i32*, i32** %bitCount, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %67, i64 5
  %68 = load i32, i32* %arrayidx58, align 4
  %add59 = add nsw i32 %66, %68
  %69 = load i32*, i32** %bitCount, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %69, i64 3
  %70 = load i32, i32* %arrayidx60, align 4
  %add61 = add nsw i32 %add59, %70
  %71 = load i32*, i32** %bitCount, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %71, i64 4
  %72 = load i32, i32* %arrayidx62, align 4
  %add63 = add nsw i32 %add61, %72
  %73 = load i32*, i32** %bitCount, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %73, i64 7
  %74 = load i32, i32* %arrayidx64, align 4
  %add65 = add nsw i32 %add63, %74
  %75 = load i32*, i32** %bitCount, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %75, i64 6
  %76 = load i32, i32* %arrayidx66, align 4
  %add67 = add nsw i32 %add65, %76
  %77 = load i32*, i32** %bitCount, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %add67, i32* %arrayidx68, align 4
  %78 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %78, i32 0, i32 157
  %79 = load i32, i32* %RCEnable, align 4
  %tobool69 = icmp ne i32 %79, 0
  br i1 %tobool69, label %if.then.70, label %if.end.93

if.then.70:                                       ; preds = %if.end.56
  %80 = load i32*, i32** %bitCount, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %80, i64 2
  %81 = load i32, i32* %arrayidx71, align 4
  %82 = load i32*, i32** %bitCount, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %82, i64 3
  %83 = load i32, i32* %arrayidx72, align 4
  %add73 = add nsw i32 %81, %83
  %84 = load i32*, i32** %bitCount, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %84, i64 4
  %85 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %add73, %85
  %86 = load i32*, i32** %bitCount, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %86, i64 7
  %87 = load i32, i32* %arrayidx76, align 4
  %add77 = add nsw i32 %add75, %87
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofMBHeaderBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 131
  store i32 %add77, i32* %NumberofMBHeaderBits, align 4
  %89 = load i32*, i32** %bitCount, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %89, i64 5
  %90 = load i32, i32* %arrayidx78, align 4
  %91 = load i32*, i32** %bitCount, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %91, i64 6
  %92 = load i32, i32* %arrayidx79, align 4
  %add80 = add nsw i32 %90, %92
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofMBTextureBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 130
  store i32 %add80, i32* %NumberofMBTextureBits, align 4
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofMBTextureBits81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 130
  %95 = load i32, i32* %NumberofMBTextureBits81, align 4
  %96 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %96, i32 0, i32 5
  %97 = load i32, i32* %NumberofTextureBits, align 4
  %add82 = add nsw i32 %97, %95
  store i32 %add82, i32* %NumberofTextureBits, align 4
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofMBHeaderBits83 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 131
  %99 = load i32, i32* %NumberofMBHeaderBits83, align 4
  %100 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %100, i32 0, i32 4
  %101 = load i32, i32* %NumberofHeaderBits, align 4
  %add84 = add nsw i32 %101, %99
  store i32 %add84, i32* %NumberofHeaderBits, align 4
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 132
  %103 = load i32, i32* %BasicUnit, align 4
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 120
  %105 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp85 = icmp ult i32 %103, %105
  br i1 %cmp85, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %if.then.70
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofMBHeaderBits88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 131
  %107 = load i32, i32* %NumberofMBHeaderBits88, align 4
  %108 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %108, i32 0, i32 6
  %109 = load i32, i32* %NumberofBasicUnitHeaderBits, align 4
  %add89 = add nsw i32 %109, %107
  store i32 %add89, i32* %NumberofBasicUnitHeaderBits, align 4
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofMBTextureBits90 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 130
  %111 = load i32, i32* %NumberofMBTextureBits90, align 4
  %112 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %112, i32 0, i32 7
  %113 = load i32, i32* %NumberofBasicUnitTextureBits, align 4
  %add91 = add nsw i32 %113, %111
  store i32 %add91, i32* %NumberofBasicUnitTextureBits, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %if.then.70
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.56
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 128
  %115 = load i32, i32* %NumberofCodedMacroBlocks, align 4
  %inc94 = add nsw i32 %115, 1
  store i32 %inc94, i32* %NumberofCodedMacroBlocks, align 4
  %116 = load i32*, i32** %bitCount, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %116, i64 1
  %117 = load i32, i32* %arrayidx95, align 4
  %118 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %118, i32 0, i32 6
  %119 = load i32, i32* %bit_slice, align 4
  %add96 = add nsw i32 %119, %117
  store i32 %add96, i32* %bit_slice, align 4
  store i32 0, i32* @cabac_encoding, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @writeReferenceFrame(i32 %mode, i32 %i, i32 %j, i32 %fwd_flag, i32 %ref) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %fwd_flag.addr = alloca i32, align 4
  %ref.addr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %bitCount = alloca i32*, align 8
  %partMap = alloca i32*, align 8
  %rate = alloca i32, align 4
  %dataPart = alloca %struct.datapartition*, align 8
  %list = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %fwd_flag, i32* %fwd_flag.addr, align 4
  store i32 %ref, i32* %ref.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 60
  %5 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %5, %struct.Slice** %currSlice, align 8
  %6 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 76
  %8 = load i32, i32* %partition_mode, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx2, align 8
  store i32* %9, i32** %partMap, align 8
  store i32 0, i32* %rate, align 4
  %10 = load i32*, i32** %partMap, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 3
  %11 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %12, i32 0, i32 6
  %13 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx5 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %13, i64 %idxprom4
  store %struct.datapartition* %arrayidx5, %struct.datapartition** %dataPart, align 8
  %14 = load i32, i32* %fwd_flag.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 21
  %16 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 0, %16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 21
  %18 = load i32, i32* %list_offset6, align 4
  %add7 = add nsw i32 1, %18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %add7, %cond.false ]
  store i32 %cond, i32* %list, align 4
  %19 = load i32, i32* %ref.addr, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %19, i32* %value1, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 3, i32* %type, align 4
  %20 = load i32, i32* %fwd_flag.addr, align 4
  %tobool8 = icmp ne i32 %20, 0
  %cond9 = select i1 %tobool8, i32 0, i32 1
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %cond9, i32* %value2, align 4
  %21 = load i32, i32* %i.addr, align 4
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 24
  store i32 %21, i32* %subblock_x, align 4
  %23 = load i32, i32* %j.addr, align 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 25
  store i32 %23, i32* %subblock_y, align 4
  %25 = load i32, i32* %list, align 4
  %idxprom10 = sext i32 %25 to i64
  %arrayidx11 = getelementptr inbounds [6 x void (%struct.syntaxelement*, %struct.datapartition*)*], [6 x void (%struct.syntaxelement*, %struct.datapartition*)*]* @writeRefFrame, i32 0, i64 %idxprom10
  %26 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** %arrayidx11, align 8
  %27 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %26(%struct.syntaxelement* %se, %struct.datapartition* %27)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %28 = load i32, i32* %len, align 4
  %29 = load i32*, i32** %bitCount, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %29, i64 3
  %30 = load i32, i32* %arrayidx12, align 4
  %add13 = add nsw i32 %30, %28
  store i32 %add13, i32* %arrayidx12, align 4
  %len14 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %31 = load i32, i32* %len14, align 4
  %32 = load i32, i32* %rate, align 4
  %add15 = add nsw i32 %32, %31
  store i32 %add15, i32* %rate, align 4
  %33 = load i32, i32* %rate, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @writeMotionVector8x8(i32 %i0, i32 %j0, i32 %i1, i32 %j1, i32 %refframe, i32 %list_idx, i32 %mv_mode) #0 {
entry:
  %i0.addr = alloca i32, align 4
  %j0.addr = alloca i32, align 4
  %i1.addr = alloca i32, align 4
  %j1.addr = alloca i32, align 4
  %refframe.addr = alloca i32, align 4
  %list_idx.addr = alloca i32, align 4
  %mv_mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %curr_mvd = alloca i32, align 4
  %dataPart = alloca %struct.datapartition*, align 8
  %rate = alloca i32, align 4
  %step_h = alloca i32, align 4
  %step_v = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %bitCount = alloca i32*, align 8
  %partMap = alloca i32*, align 8
  %refindex = alloca i32, align 4
  %all_mv = alloca i16******, align 8
  %pred_mv = alloca i16******, align 8
  store i32 %i0, i32* %i0.addr, align 4
  store i32 %j0, i32* %j0.addr, align 4
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %j1, i32* %j1.addr, align 4
  store i32 %refframe, i32* %refframe.addr, align 4
  store i32 %list_idx, i32* %list_idx.addr, align 4
  store i32 %mv_mode, i32* %mv_mode.addr, align 4
  store i32 0, i32* %rate, align 4
  %0 = load i32, i32* %mv_mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 19
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %2 = load i32, i32* %arrayidx1, align 4
  store i32 %2, i32* %step_h, align 4
  %3 = load i32, i32* %mv_mode.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 19
  %arrayidx4 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size3, i32 0, i64 %idxprom2
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 1
  %5 = load i32, i32* %arrayidx5, align 4
  store i32 %5, i32* %step_v, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 3
  %7 = load i32, i32* %current_mb_nr, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 61
  %9 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i64 %idxprom6
  store %struct.macroblock* %arrayidx7, %struct.macroblock** %currMB, align 8
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 60
  %11 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %11, %struct.Slice** %currSlice, align 8
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 76
  %14 = load i32, i32* %partition_mode, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom8
  %15 = load i32*, i32** %arrayidx9, align 8
  store i32* %15, i32** %partMap, align 8
  %16 = load i32, i32* %refframe.addr, align 4
  store i32 %16, i32* %refindex, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 80
  %18 = load i16******, i16******* %all_mv10, align 8
  store i16****** %18, i16******* %all_mv, align 8
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 79
  %20 = load i16******, i16******* %pred_mv11, align 8
  store i16****** %20, i16******* %pred_mv, align 8
  %21 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bi_pred_me = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 33
  %22 = load i16, i16* %bi_pred_me, align 2
  %conv = sext i16 %22 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %23 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 15
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir, i32 0, i64 0
  %24 = load i32, i32* %arrayidx12, align 4
  %cmp = icmp eq i32 %24, 2
  br i1 %cmp, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %25 = load i32, i32* %mv_mode.addr, align 4
  %cmp15 = icmp eq i32 %25, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %26 = load i32, i32* %refindex, align 4
  %cmp18 = icmp eq i32 %26, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.17
  %27 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bi_pred_me20 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 33
  %28 = load i16, i16* %bi_pred_me20, align 2
  %conv21 = sext i16 %28 to i32
  %cmp22 = icmp eq i32 %conv21, 1
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 81
  %30 = load i16******, i16******* %bipred_mv1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 82
  %32 = load i16******, i16******* %bipred_mv2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16****** [ %30, %cond.true ], [ %32, %cond.false ]
  store i16****** %cond, i16******* %all_mv, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true.17, %land.lhs.true.14, %land.lhs.true, %entry
  %33 = load i32, i32* %j0.addr, align 4
  store i32 %33, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.94, %if.end
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %j1.addr, align 4
  %cmp24 = icmp slt i32 %34, %35
  br i1 %cmp24, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i0.addr, align 4
  store i32 %36, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.91, %for.body
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %i1.addr, align 4
  %cmp27 = icmp slt i32 %37, %38
  br i1 %cmp27, label %for.body.29, label %for.end.93

for.body.29:                                      ; preds = %for.cond.26
  store i32 0, i32* %k, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.88, %for.body.29
  %39 = load i32, i32* %k, align 4
  %cmp31 = icmp slt i32 %39, 2
  br i1 %cmp31, label %for.body.33, label %for.end.90

for.body.33:                                      ; preds = %for.cond.30
  %40 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %40 to i64
  %41 = load i32, i32* %mv_mode.addr, align 4
  %idxprom35 = sext i32 %41 to i64
  %42 = load i32, i32* %refindex, align 4
  %idxprom36 = sext i32 %42 to i64
  %43 = load i32, i32* %list_idx.addr, align 4
  %idxprom37 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %44 to i64
  %45 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %45 to i64
  %46 = load i16******, i16******* %all_mv, align 8
  %arrayidx40 = getelementptr inbounds i16*****, i16****** %46, i64 %idxprom39
  %47 = load i16*****, i16****** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16****, i16***** %47, i64 %idxprom38
  %48 = load i16****, i16***** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i16***, i16**** %48, i64 %idxprom37
  %49 = load i16***, i16**** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i16**, i16*** %49, i64 %idxprom36
  %50 = load i16**, i16*** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i16*, i16** %50, i64 %idxprom35
  %51 = load i16*, i16** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %51, i64 %idxprom34
  %52 = load i16, i16* %arrayidx45, align 2
  %conv46 = sext i16 %52 to i32
  %53 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %53 to i64
  %54 = load i32, i32* %mv_mode.addr, align 4
  %idxprom48 = sext i32 %54 to i64
  %55 = load i32, i32* %refindex, align 4
  %idxprom49 = sext i32 %55 to i64
  %56 = load i32, i32* %list_idx.addr, align 4
  %idxprom50 = sext i32 %56 to i64
  %57 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %57 to i64
  %58 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %58 to i64
  %59 = load i16******, i16******* %pred_mv, align 8
  %arrayidx53 = getelementptr inbounds i16*****, i16****** %59, i64 %idxprom52
  %60 = load i16*****, i16****** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i16****, i16***** %60, i64 %idxprom51
  %61 = load i16****, i16***** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i16***, i16**** %61, i64 %idxprom50
  %62 = load i16***, i16**** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16**, i16*** %62, i64 %idxprom49
  %63 = load i16**, i16*** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i16*, i16** %63, i64 %idxprom48
  %64 = load i16*, i16** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i16, i16* %64, i64 %idxprom47
  %65 = load i16, i16* %arrayidx58, align 2
  %conv59 = sext i16 %65 to i32
  %sub = sub nsw i32 %conv46, %conv59
  store i32 %sub, i32* %curr_mvd, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.77, %for.body.33
  %66 = load i32, i32* %l, align 4
  %67 = load i32, i32* %step_v, align 4
  %cmp61 = icmp slt i32 %66, %67
  br i1 %cmp61, label %for.body.63, label %for.end.79

for.body.63:                                      ; preds = %for.cond.60
  store i32 0, i32* %m, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc, %for.body.63
  %68 = load i32, i32* %m, align 4
  %69 = load i32, i32* %step_h, align 4
  %cmp65 = icmp slt i32 %68, %69
  br i1 %cmp65, label %for.body.67, label %for.end

for.body.67:                                      ; preds = %for.cond.64
  %70 = load i32, i32* %curr_mvd, align 4
  %71 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %71 to i64
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %m, align 4
  %add = add nsw i32 %72, %73
  %idxprom69 = sext i32 %add to i64
  %74 = load i32, i32* %j, align 4
  %75 = load i32, i32* %l, align 4
  %add70 = add nsw i32 %74, %75
  %idxprom71 = sext i32 %add70 to i64
  %76 = load i32, i32* %list_idx.addr, align 4
  %idxprom72 = sext i32 %76 to i64
  %77 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mvd = getelementptr inbounds %struct.macroblock, %struct.macroblock* %77, i32 0, i32 9
  %arrayidx73 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx73, i32 0, i64 %idxprom71
  %arrayidx75 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx74, i32 0, i64 %idxprom69
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx75, i32 0, i64 %idxprom68
  store i32 %70, i32* %arrayidx76, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.67
  %78 = load i32, i32* %m, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond.64

for.end:                                          ; preds = %for.cond.64
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end
  %79 = load i32, i32* %l, align 4
  %inc78 = add nsw i32 %79, 1
  store i32 %inc78, i32* %l, align 4
  br label %for.cond.60

for.end.79:                                       ; preds = %for.cond.60
  %80 = load i32*, i32** %partMap, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %80, i64 5
  %81 = load i32, i32* %arrayidx80, align 4
  %idxprom81 = sext i32 %81 to i64
  %82 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %82, i32 0, i32 6
  %83 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx82 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %83, i64 %idxprom81
  store %struct.datapartition* %arrayidx82, %struct.datapartition** %dataPart, align 8
  %84 = load i32, i32* %i, align 4
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 24
  store i32 %84, i32* %subblock_x, align 4
  %86 = load i32, i32* %j, align 4
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 25
  store i32 %86, i32* %subblock_y, align 4
  %88 = load i32, i32* %curr_mvd, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %88, i32* %value1, align 4
  %89 = load i32, i32* %k, align 4
  %mul = mul nsw i32 2, %89
  %90 = load i32, i32* %list_idx.addr, align 4
  %add83 = add nsw i32 %mul, %90
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %add83, i32* %value2, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 5, i32* %type, align 4
  %91 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeMVD, align 8
  %92 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %91(%struct.syntaxelement* %se, %struct.datapartition* %92)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %93 = load i32, i32* %len, align 4
  %94 = load i32*, i32** %bitCount, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %94, i64 3
  %95 = load i32, i32* %arrayidx84, align 4
  %add85 = add nsw i32 %95, %93
  store i32 %add85, i32* %arrayidx84, align 4
  %len86 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %96 = load i32, i32* %len86, align 4
  %97 = load i32, i32* %rate, align 4
  %add87 = add nsw i32 %97, %96
  store i32 %add87, i32* %rate, align 4
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.79
  %98 = load i32, i32* %k, align 4
  %inc89 = add nsw i32 %98, 1
  store i32 %inc89, i32* %k, align 4
  br label %for.cond.30

for.end.90:                                       ; preds = %for.cond.30
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.90
  %99 = load i32, i32* %step_h, align 4
  %100 = load i32, i32* %i, align 4
  %add92 = add nsw i32 %100, %99
  store i32 %add92, i32* %i, align 4
  br label %for.cond.26

for.end.93:                                       ; preds = %for.cond.26
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93
  %101 = load i32, i32* %step_v, align 4
  %102 = load i32, i32* %j, align 4
  %add95 = add nsw i32 %102, %101
  store i32 %add95, i32* %j, align 4
  br label %for.cond

for.end.96:                                       ; preds = %for.cond
  %103 = load i32, i32* %rate, align 4
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define i32 @writeLumaCoeff4x4_CABAC(i32 %b8, i32 %b4, i32 %intra4x4mode) #0 {
entry:
  %b8.addr = alloca i32, align 4
  %b4.addr = alloca i32, align 4
  %intra4x4mode.addr = alloca i32, align 4
  %rate = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %partMap = alloca i32*, align 8
  %bitCount = alloca i32*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %level = alloca i32, align 4
  %run = alloca i32, align 4
  %k = alloca i32, align 4
  %ACLevel = alloca i32*, align 8
  %ACRun = alloca i32*, align 8
  store i32 %b8, i32* %b8.addr, align 4
  store i32 %b4, i32* %b4.addr, align 4
  store i32 %intra4x4mode, i32* %intra4x4mode.addr, align 4
  store i32 0, i32* %rate, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 60
  %5 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %5, %struct.Slice** %currSlice, align 8
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 76
  %7 = load i32, i32* %partition_mode, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom1
  %8 = load i32*, i32** %arrayidx2, align 8
  store i32* %8, i32** %partMap, align 8
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %10 = load i32, i32* %b4.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load i32, i32* %b8.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 53
  %13 = load i32****, i32***** %cofAC, align 8
  %arrayidx5 = getelementptr inbounds i32***, i32**** %13, i64 %idxprom4
  %14 = load i32***, i32**** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32**, i32*** %14, i64 %idxprom3
  %15 = load i32**, i32*** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %15, i64 0
  %16 = load i32*, i32** %arrayidx7, align 8
  store i32* %16, i32** %ACLevel, align 8
  %17 = load i32, i32* %b4.addr, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load i32, i32* %b8.addr, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 53
  %20 = load i32****, i32***** %cofAC10, align 8
  %arrayidx11 = getelementptr inbounds i32***, i32**** %20, i64 %idxprom9
  %21 = load i32***, i32**** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32**, i32*** %21, i64 %idxprom8
  %22 = load i32**, i32*** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %22, i64 1
  %23 = load i32*, i32** %arrayidx13, align 8
  store i32* %23, i32** %ACRun, align 8
  %24 = load i32, i32* %b8.addr, align 4
  %and = and i32 %24, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %25 = load i32, i32* %b4.addr, align 4
  %and14 = and i32 %25, 1
  %cmp15 = icmp eq i32 %and14, 0
  %cond = select i1 %cmp15, i32 0, i32 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %26 = load i32, i32* %b4.addr, align 4
  %and16 = and i32 %26, 1
  %cmp17 = icmp eq i32 %and16, 0
  %cond18 = select i1 %cmp17, i32 2, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi i32 [ %cond, %cond.true ], [ %cond18, %cond.false ]
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 24
  store i32 %cond19, i32* %subblock_x, align 4
  %28 = load i32, i32* %b8.addr, align 4
  %cmp20 = icmp slt i32 %28, 2
  br i1 %cmp20, label %cond.true.21, label %cond.false.24

cond.true.21:                                     ; preds = %cond.end
  %29 = load i32, i32* %b4.addr, align 4
  %cmp22 = icmp slt i32 %29, 2
  %cond23 = select i1 %cmp22, i32 0, i32 1
  br label %cond.end.27

cond.false.24:                                    ; preds = %cond.end
  %30 = load i32, i32* %b4.addr, align 4
  %cmp25 = icmp slt i32 %30, 2
  %cond26 = select i1 %cmp25, i32 2, i32 3
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.24, %cond.true.21
  %cond28 = phi i32 [ %cond23, %cond.true.21 ], [ %cond26, %cond.false.24 ]
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 25
  store i32 %cond28, i32* %subblock_y, align 4
  store i32 1, i32* %level, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.27
  %32 = load i32, i32* %k, align 4
  %cmp29 = icmp sle i32 %32, 16
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %33 = load i32, i32* %level, align 4
  %cmp30 = icmp ne i32 %33, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %34 = phi i1 [ false, %for.cond ], [ %cmp30, %land.rhs ]
  br i1 %34, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %35 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %35 to i64
  %36 = load i32*, i32** %ACLevel, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %36, i64 %idxprom31
  %37 = load i32, i32* %arrayidx32, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %37, i32* %value1, align 4
  store i32 %37, i32* %level, align 4
  %38 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %38 to i64
  %39 = load i32*, i32** %ACRun, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %39, i64 %idxprom33
  %40 = load i32, i32* %arrayidx34, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %40, i32* %value2, align 4
  store i32 %40, i32* %run, align 4
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 6
  store i32 5, i32* %context, align 4
  %41 = load i32, i32* %k, align 4
  %cmp35 = icmp eq i32 %41, 0
  br i1 %cmp35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %for.body
  %42 = load i32, i32* %intra4x4mode.addr, align 4
  %tobool = icmp ne i32 %42, 0
  %cond37 = select i1 %tobool, i32 7, i32 11
  br label %cond.end.41

cond.false.38:                                    ; preds = %for.body
  %43 = load i32, i32* %intra4x4mode.addr, align 4
  %tobool39 = icmp ne i32 %43, 0
  %cond40 = select i1 %tobool39, i32 9, i32 13
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.38, %cond.true.36
  %cond42 = phi i32 [ %cond37, %cond.true.36 ], [ %cond40, %cond.false.38 ]
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 %cond42, i32* %type, align 4
  %44 = load i32, i32* %intra4x4mode.addr, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 26
  store i32 %44, i32* %is_intra_block, align 4
  %type43 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  %46 = load i32, i32* %type43, align 4
  %idxprom44 = sext i32 %46 to i64
  %47 = load i32*, i32** %partMap, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %47, i64 %idxprom44
  %48 = load i32, i32* %arrayidx45, align 4
  %idxprom46 = sext i32 %48 to i64
  %49 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %49, i32 0, i32 6
  %50 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx47 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %50, i64 %idxprom46
  store %struct.datapartition* %arrayidx47, %struct.datapartition** %dataPart, align 8
  %51 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeRunLevel_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %51)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %52 = load i32, i32* %len, align 4
  %53 = load i32*, i32** %bitCount, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %53, i64 5
  %54 = load i32, i32* %arrayidx48, align 4
  %add = add nsw i32 %54, %52
  store i32 %add, i32* %arrayidx48, align 4
  %len49 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %55 = load i32, i32* %len49, align 4
  %56 = load i32, i32* %rate, align 4
  %add50 = add nsw i32 %56, %55
  store i32 %add50, i32* %rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.41
  %57 = load i32, i32* %k, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %58 = load i32, i32* %rate, align 4
  ret i32 %58
}

declare void @writeRunLevel_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: nounwind uwtable
define i32 @writeLumaCoeff8x8_CABAC(i32 %b8, i32 %intra_mode) #0 {
entry:
  %b8.addr = alloca i32, align 4
  %intra_mode.addr = alloca i32, align 4
  %rate = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %partMap = alloca i32*, align 8
  %bitCount = alloca i32*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %level = alloca i32, align 4
  %run = alloca i32, align 4
  %k = alloca i32, align 4
  %ACLevel = alloca i32*, align 8
  %ACRun = alloca i32*, align 8
  store i32 %b8, i32* %b8.addr, align 4
  store i32 %intra_mode, i32* %intra_mode.addr, align 4
  store i32 0, i32* %rate, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 60
  %5 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %5, %struct.Slice** %currSlice, align 8
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 76
  %7 = load i32, i32* %partition_mode, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom1
  %8 = load i32*, i32** %arrayidx2, align 8
  store i32* %8, i32** %partMap, align 8
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %10 = load i32, i32* %b8.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 53
  %12 = load i32****, i32***** %cofAC, align 8
  %arrayidx4 = getelementptr inbounds i32***, i32**** %12, i64 %idxprom3
  %13 = load i32***, i32**** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i32**, i32*** %13, i64 0
  %14 = load i32**, i32*** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %14, i64 0
  %15 = load i32*, i32** %arrayidx6, align 8
  store i32* %15, i32** %ACLevel, align 8
  %16 = load i32, i32* %b8.addr, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 53
  %18 = load i32****, i32***** %cofAC8, align 8
  %arrayidx9 = getelementptr inbounds i32***, i32**** %18, i64 %idxprom7
  %19 = load i32***, i32**** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32**, i32*** %19, i64 0
  %20 = load i32**, i32*** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %20, i64 1
  %21 = load i32*, i32** %arrayidx11, align 8
  store i32* %21, i32** %ACRun, align 8
  %22 = load i32, i32* %b8.addr, align 4
  %and = and i32 %22, 1
  %cmp = icmp eq i32 %and, 0
  %cond = select i1 %cmp, i32 0, i32 2
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 24
  store i32 %cond, i32* %subblock_x, align 4
  %24 = load i32, i32* %b8.addr, align 4
  %cmp12 = icmp slt i32 %24, 2
  %cond13 = select i1 %cmp12, i32 0, i32 2
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 25
  store i32 %cond13, i32* %subblock_y, align 4
  store i32 1, i32* %level, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %26 = load i32, i32* %k, align 4
  %cmp14 = icmp sle i32 %26, 64
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %27 = load i32, i32* %level, align 4
  %cmp15 = icmp ne i32 %27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %28 = phi i1 [ false, %for.cond ], [ %cmp15, %land.rhs ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %29 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %29 to i64
  %30 = load i32*, i32** %ACLevel, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %30, i64 %idxprom16
  %31 = load i32, i32* %arrayidx17, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %31, i32* %value1, align 4
  store i32 %31, i32* %level, align 4
  %32 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %32 to i64
  %33 = load i32*, i32** %ACRun, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %33, i64 %idxprom18
  %34 = load i32, i32* %arrayidx19, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %34, i32* %value2, align 4
  store i32 %34, i32* %run, align 4
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 6
  store i32 2, i32* %context, align 4
  %35 = load i32, i32* %k, align 4
  %cmp20 = icmp eq i32 %35, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %36 = load i32, i32* %intra_mode.addr, align 4
  %tobool = icmp ne i32 %36, 0
  %cond21 = select i1 %tobool, i32 7, i32 11
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %37 = load i32, i32* %intra_mode.addr, align 4
  %tobool22 = icmp ne i32 %37, 0
  %cond23 = select i1 %tobool22, i32 9, i32 13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond24 = phi i32 [ %cond21, %cond.true ], [ %cond23, %cond.false ]
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 %cond24, i32* %type, align 4
  %38 = load i32, i32* %intra_mode.addr, align 4
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 26
  store i32 %38, i32* %is_intra_block, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 5
  %41 = load i32, i32* %type25, align 4
  %cmp26 = icmp ne i32 %41, 1
  br i1 %cmp26, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %cond.end
  %type28 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  %42 = load i32, i32* %type28, align 4
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.end
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.27
  %cond31 = phi i32 [ %42, %cond.true.27 ], [ 16, %cond.false.29 ]
  %idxprom32 = sext i32 %cond31 to i64
  %43 = load i32*, i32** %partMap, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %43, i64 %idxprom32
  %44 = load i32, i32* %arrayidx33, align 4
  %idxprom34 = sext i32 %44 to i64
  %45 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %45, i32 0, i32 6
  %46 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx35 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %46, i64 %idxprom34
  store %struct.datapartition* %arrayidx35, %struct.datapartition** %dataPart, align 8
  %47 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void @writeRunLevel_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %47)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %48 = load i32, i32* %len, align 4
  %49 = load i32*, i32** %bitCount, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %49, i64 5
  %50 = load i32, i32* %arrayidx36, align 4
  %add = add nsw i32 %50, %48
  store i32 %add, i32* %arrayidx36, align 4
  %len37 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %51 = load i32, i32* %len37, align 4
  %52 = load i32, i32* %rate, align 4
  %add38 = add nsw i32 %52, %51
  store i32 %add38, i32* %rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.30
  %53 = load i32, i32* %k, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %54 = load i32, i32* %rate, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define i32 @writeLumaCoeff8x8(i32 %block8x8, i32 %block_mode, i32 %transform_size_flag) #0 {
entry:
  %block8x8.addr = alloca i32, align 4
  %block_mode.addr = alloca i32, align 4
  %transform_size_flag.addr = alloca i32, align 4
  %block4x4 = alloca i32, align 4
  %rate = alloca i32, align 4
  %intra4x4mode = alloca i32, align 4
  store i32 %block8x8, i32* %block8x8.addr, align 4
  store i32 %block_mode, i32* %block_mode.addr, align 4
  store i32 %transform_size_flag, i32* %transform_size_flag.addr, align 4
  store i32 0, i32* %rate, align 4
  %0 = load i32, i32* %block_mode.addr, align 4
  %cmp = icmp eq i32 %0, 11
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %intra4x4mode, align 4
  %1 = load i32, i32* %block_mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 13
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %transform_size_flag.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 74
  %4 = load i32, i32* %symbol_mode, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then.5, label %if.else.25

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 74
  %6 = load i32, i32* %symbol_mode6, align 4
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  store i32 0, i32* %block4x4, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %7 = load i32, i32* %block4x4, align 4
  %cmp10 = icmp slt i32 %7, 4
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %block8x8.addr, align 4
  %9 = load i32, i32* %block4x4, align 4
  %10 = load i32, i32* %transform_size_flag.addr, align 4
  %tobool12 = icmp ne i32 %10, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load i32, i32* %block_mode.addr, align 4
  %cmp13 = icmp eq i32 %11, 13
  %conv14 = zext i1 %cmp13 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load i32, i32* %intra4x4mode, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv14, %cond.true ], [ %12, %cond.false ]
  %call = call i32 @writeCoeff4x4_CAVLC(i32 0, i32 %8, i32 %9, i32 %cond)
  %13 = load i32, i32* %rate, align 4
  %add = add nsw i32 %13, %call
  store i32 %add, i32* %rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %14 = load i32, i32* %block4x4, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %block4x4, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.24

if.else:                                          ; preds = %if.then.5
  store i32 0, i32* %block4x4, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.21, %if.else
  %15 = load i32, i32* %block4x4, align 4
  %cmp16 = icmp slt i32 %15, 4
  br i1 %cmp16, label %for.body.18, label %for.end.23

for.body.18:                                      ; preds = %for.cond.15
  %16 = load i32, i32* %block8x8.addr, align 4
  %17 = load i32, i32* %block4x4, align 4
  %18 = load i32, i32* %intra4x4mode, align 4
  %call19 = call i32 @writeLumaCoeff4x4_CABAC(i32 %16, i32 %17, i32 %18)
  %19 = load i32, i32* %rate, align 4
  %add20 = add nsw i32 %19, %call19
  store i32 %add20, i32* %rate, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.18
  %20 = load i32, i32* %block4x4, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, i32* %block4x4, align 4
  br label %for.cond.15

for.end.23:                                       ; preds = %for.cond.15
  br label %if.end.24

if.end.24:                                        ; preds = %for.end.23, %for.end
  br label %if.end.30

if.else.25:                                       ; preds = %lor.lhs.false
  %21 = load i32, i32* %block8x8.addr, align 4
  %22 = load i32, i32* %block_mode.addr, align 4
  %cmp26 = icmp eq i32 %22, 13
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @writeLumaCoeff8x8_CABAC(i32 %21, i32 %conv27)
  %23 = load i32, i32* %rate, align 4
  %add29 = add nsw i32 %23, %call28
  store i32 %add29, i32* %rate, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.25, %if.end.24
  %24 = load i32, i32* %rate, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @writeCoeff4x4_CAVLC(i32 %block_type, i32 %b8, i32 %b4, i32 %param) #0 {
entry:
  %retval = alloca i32, align 4
  %block_type.addr = alloca i32, align 4
  %b8.addr = alloca i32, align 4
  %b4.addr = alloca i32, align 4
  %param.addr = alloca i32, align 4
  %no_bits = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %se = alloca %struct.syntaxelement, align 8
  %bitCount = alloca i32*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %partMap = alloca i32*, align 8
  %k = alloca i32, align 4
  %level = alloca i32, align 4
  %run = alloca i32, align 4
  %vlcnum = alloca i32, align 4
  %numcoeff = alloca i32, align 4
  %lastcoeff = alloca i32, align 4
  %numtrailingones = alloca i32, align 4
  %numones = alloca i32, align 4
  %totzeros = alloca i32, align 4
  %zerosleft = alloca i32, align 4
  %numcoef = alloca i32, align 4
  %numcoeff_vlc = alloca i32, align 4
  %code = alloca i32, align 4
  %level_two_or_higher = alloca i32, align 4
  %dptype = alloca i32, align 4
  %bitcounttype = alloca i32, align 4
  %nnz = alloca i32, align 4
  %max_coeff_num = alloca i32, align 4
  %cdc = alloca i32, align 4
  %cac = alloca i32, align 4
  %subblock_x = alloca i32, align 4
  %subblock_y = alloca i32, align 4
  %type = alloca [15 x i8], align 1
  %pLevel = alloca i32*, align 8
  %pRun = alloca i32*, align 8
  store i32 %block_type, i32* %block_type.addr, align 4
  store i32 %b8, i32* %b8.addr, align 4
  store i32 %b4, i32* %b4.addr, align 4
  store i32 %param, i32* %param.addr, align 4
  store i32 0, i32* %no_bits, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %bitcounter, i32 0, i32 0
  store i32* %arraydecay, i32** %bitCount, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 60
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %6, %struct.Slice** %currSlice, align 8
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 76
  %8 = load i32, i32* %partition_mode, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx2, align 8
  store i32* %9, i32** %partMap, align 8
  store i32 1, i32* %level, align 4
  store i32 0, i32* %numcoeff, align 4
  store i32 0, i32* %lastcoeff, align 4
  store i32 0, i32* %numtrailingones, align 4
  store i32 0, i32* %numones, align 4
  store i32 0, i32* %totzeros, align 4
  store i32 0, i32* %dptype, align 4
  store i32 0, i32* %bitcounttype, align 4
  store i32 0, i32* %max_coeff_num, align 4
  store i32 0, i32* %cdc, align 4
  store i32 0, i32* %cac, align 4
  store i32* null, i32** %pLevel, align 8
  store i32* null, i32** %pRun, align 8
  %10 = load i32, i32* %block_type.addr, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.31
    i32 6, label %sw.bb.46
    i32 7, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %entry
  store i32 16, i32* %max_coeff_num, align 4
  store i32 5, i32* %bitcounttype, align 4
  %11 = load i32, i32* %b4.addr, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i32, i32* %b8.addr, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 53
  %14 = load i32****, i32***** %cofAC, align 8
  %arrayidx5 = getelementptr inbounds i32***, i32**** %14, i64 %idxprom4
  %15 = load i32***, i32**** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32**, i32*** %15, i64 %idxprom3
  %16 = load i32**, i32*** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %16, i64 0
  %17 = load i32*, i32** %arrayidx7, align 8
  store i32* %17, i32** %pLevel, align 8
  %18 = load i32, i32* %b4.addr, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load i32, i32* %b8.addr, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 53
  %21 = load i32****, i32***** %cofAC10, align 8
  %arrayidx11 = getelementptr inbounds i32***, i32**** %21, i64 %idxprom9
  %22 = load i32***, i32**** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32**, i32*** %22, i64 %idxprom8
  %23 = load i32**, i32*** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %23, i64 1
  %24 = load i32*, i32** %arrayidx13, align 8
  store i32* %24, i32** %pRun, align 8
  %arraydecay14 = getelementptr inbounds [15 x i8], [15 x i8]* %type, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #3
  %25 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i32 0, i32 8
  %26 = load i32, i32* %mb_type, align 4
  %cmp = icmp eq i32 %26, 9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %27 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type15 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 8
  %28 = load i32, i32* %mb_type15, align 4
  %cmp16 = icmp eq i32 %28, 10
  br i1 %cmp16, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %29 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 8
  %30 = load i32, i32* %mb_type18, align 4
  %cmp19 = icmp eq i32 %30, 13
  br i1 %cmp19, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %31 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type21 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 8
  %32 = load i32, i32* %mb_type21, align 4
  %cmp22 = icmp eq i32 %32, 14
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.20, %lor.lhs.false.17, %lor.lhs.false, %sw.bb
  store i32 9, i32* %dptype, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.20
  store i32 13, i32* %dptype, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  store i32 16, i32* %max_coeff_num, align 4
  store i32 5, i32* %bitcounttype, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 54
  %34 = load i32***, i32**** %cofDC, align 8
  %arrayidx24 = getelementptr inbounds i32**, i32*** %34, i64 0
  %35 = load i32**, i32*** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %35, i64 0
  %36 = load i32*, i32** %arrayidx25, align 8
  store i32* %36, i32** %pLevel, align 8
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 54
  %38 = load i32***, i32**** %cofDC26, align 8
  %arrayidx27 = getelementptr inbounds i32**, i32*** %38, i64 0
  %39 = load i32**, i32*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %39, i64 1
  %40 = load i32*, i32** %arrayidx28, align 8
  store i32* %40, i32** %pRun, align 8
  %arraydecay29 = getelementptr inbounds [15 x i8], [15 x i8]* %type, i32 0, i32 0
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #3
  store i32 7, i32* %dptype, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  store i32 15, i32* %max_coeff_num, align 4
  store i32 5, i32* %bitcounttype, align 4
  %41 = load i32, i32* %b4.addr, align 4
  %idxprom32 = sext i32 %41 to i64
  %42 = load i32, i32* %b8.addr, align 4
  %idxprom33 = sext i32 %42 to i64
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 53
  %44 = load i32****, i32***** %cofAC34, align 8
  %arrayidx35 = getelementptr inbounds i32***, i32**** %44, i64 %idxprom33
  %45 = load i32***, i32**** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32**, i32*** %45, i64 %idxprom32
  %46 = load i32**, i32*** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32*, i32** %46, i64 0
  %47 = load i32*, i32** %arrayidx37, align 8
  store i32* %47, i32** %pLevel, align 8
  %48 = load i32, i32* %b4.addr, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load i32, i32* %b8.addr, align 4
  %idxprom39 = sext i32 %49 to i64
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 53
  %51 = load i32****, i32***** %cofAC40, align 8
  %arrayidx41 = getelementptr inbounds i32***, i32**** %51, i64 %idxprom39
  %52 = load i32***, i32**** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i32**, i32*** %52, i64 %idxprom38
  %53 = load i32**, i32*** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %53, i64 1
  %54 = load i32*, i32** %arrayidx43, align 8
  store i32* %54, i32** %pRun, align 8
  %arraydecay44 = getelementptr inbounds [15 x i8], [15 x i8]* %type, i32 0, i32 0
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #3
  store i32 9, i32* %dptype, align 4
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_cdc_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 159
  %56 = load i32, i32* %num_cdc_coeff, align 4
  store i32 %56, i32* %max_coeff_num, align 4
  store i32 6, i32* %bitcounttype, align 4
  store i32 1, i32* %cdc, align 4
  %57 = load i32, i32* %param.addr, align 4
  %add = add nsw i32 %57, 1
  %idxprom47 = sext i32 %add to i64
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 54
  %59 = load i32***, i32**** %cofDC48, align 8
  %arrayidx49 = getelementptr inbounds i32**, i32*** %59, i64 %idxprom47
  %60 = load i32**, i32*** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i32*, i32** %60, i64 0
  %61 = load i32*, i32** %arrayidx50, align 8
  store i32* %61, i32** %pLevel, align 8
  %62 = load i32, i32* %param.addr, align 4
  %add51 = add nsw i32 %62, 1
  %idxprom52 = sext i32 %add51 to i64
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 54
  %64 = load i32***, i32**** %cofDC53, align 8
  %arrayidx54 = getelementptr inbounds i32**, i32*** %64, i64 %idxprom52
  %65 = load i32**, i32*** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %65, i64 1
  %66 = load i32*, i32** %arrayidx55, align 8
  store i32* %66, i32** %pRun, align 8
  %arraydecay56 = getelementptr inbounds [15 x i8], [15 x i8]* %type, i32 0, i32 0
  %call57 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #3
  %67 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type58 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %67, i32 0, i32 8
  %68 = load i32, i32* %mb_type58, align 4
  %cmp59 = icmp eq i32 %68, 9
  br i1 %cmp59, label %if.then.69, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %sw.bb.46
  %69 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type61 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %69, i32 0, i32 8
  %70 = load i32, i32* %mb_type61, align 4
  %cmp62 = icmp eq i32 %70, 10
  br i1 %cmp62, label %if.then.69, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.60
  %71 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type64 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %71, i32 0, i32 8
  %72 = load i32, i32* %mb_type64, align 4
  %cmp65 = icmp eq i32 %72, 13
  br i1 %cmp65, label %if.then.69, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.63
  %73 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type67 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %73, i32 0, i32 8
  %74 = load i32, i32* %mb_type67, align 4
  %cmp68 = icmp eq i32 %74, 14
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %lor.lhs.false.66, %lor.lhs.false.63, %lor.lhs.false.60, %sw.bb.46
  store i32 8, i32* %dptype, align 4
  br label %if.end.71

if.else.70:                                       ; preds = %lor.lhs.false.66
  store i32 12, i32* %dptype, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.then.69
  br label %sw.epilog

sw.bb.72:                                         ; preds = %entry
  store i32 15, i32* %max_coeff_num, align 4
  store i32 6, i32* %bitcounttype, align 4
  store i32 1, i32* %cac, align 4
  %75 = load i32, i32* %b4.addr, align 4
  %idxprom73 = sext i32 %75 to i64
  %76 = load i32, i32* %b8.addr, align 4
  %idxprom74 = sext i32 %76 to i64
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 53
  %78 = load i32****, i32***** %cofAC75, align 8
  %arrayidx76 = getelementptr inbounds i32***, i32**** %78, i64 %idxprom74
  %79 = load i32***, i32**** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i32**, i32*** %79, i64 %idxprom73
  %80 = load i32**, i32*** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i32*, i32** %80, i64 0
  %81 = load i32*, i32** %arrayidx78, align 8
  store i32* %81, i32** %pLevel, align 8
  %82 = load i32, i32* %b4.addr, align 4
  %idxprom79 = sext i32 %82 to i64
  %83 = load i32, i32* %b8.addr, align 4
  %idxprom80 = sext i32 %83 to i64
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 53
  %85 = load i32****, i32***** %cofAC81, align 8
  %arrayidx82 = getelementptr inbounds i32***, i32**** %85, i64 %idxprom80
  %86 = load i32***, i32**** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i32**, i32*** %86, i64 %idxprom79
  %87 = load i32**, i32*** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32*, i32** %87, i64 1
  %88 = load i32*, i32** %arrayidx84, align 8
  store i32* %88, i32** %pRun, align 8
  %arraydecay85 = getelementptr inbounds [15 x i8], [15 x i8]* %type, i32 0, i32 0
  %call86 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #3
  %89 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type87 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %89, i32 0, i32 8
  %90 = load i32, i32* %mb_type87, align 4
  %cmp88 = icmp eq i32 %90, 9
  br i1 %cmp88, label %if.then.98, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %sw.bb.72
  %91 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type90 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %91, i32 0, i32 8
  %92 = load i32, i32* %mb_type90, align 4
  %cmp91 = icmp eq i32 %92, 10
  br i1 %cmp91, label %if.then.98, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %lor.lhs.false.89
  %93 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type93 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %93, i32 0, i32 8
  %94 = load i32, i32* %mb_type93, align 4
  %cmp94 = icmp eq i32 %94, 13
  br i1 %cmp94, label %if.then.98, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %lor.lhs.false.92
  %95 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type96 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %95, i32 0, i32 8
  %96 = load i32, i32* %mb_type96, align 4
  %cmp97 = icmp eq i32 %96, 14
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %lor.lhs.false.95, %lor.lhs.false.92, %lor.lhs.false.89, %sw.bb.72
  store i32 10, i32* %dptype, align 4
  br label %if.end.100

if.else.99:                                       ; preds = %lor.lhs.false.95
  store i32 14, i32* %dptype, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.99, %if.then.98
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i32 600)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.100, %if.end.71, %sw.bb.31, %sw.bb.23, %if.end
  %97 = load i32, i32* %dptype, align 4
  %idxprom101 = sext i32 %97 to i64
  %98 = load i32*, i32** %partMap, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %98, i64 %idxprom101
  %99 = load i32, i32* %arrayidx102, align 4
  %idxprom103 = sext i32 %99 to i64
  %100 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %100, i32 0, i32 6
  %101 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx104 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %101, i64 %idxprom103
  store %struct.datapartition* %arrayidx104, %struct.datapartition** %dataPart, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %102 = load i32, i32* %k, align 4
  %103 = load i32, i32* %cdc, align 4
  %tobool = icmp ne i32 %103, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_cdc_coeff105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 159
  %105 = load i32, i32* %num_cdc_coeff105, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %105, %cond.true ], [ 16, %cond.false ]
  %cmp106 = icmp sle i32 %102, %cond
  br i1 %cmp106, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %106 = load i32, i32* %level, align 4
  %cmp107 = icmp ne i32 %106, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %107 = phi i1 [ false, %cond.end ], [ %cmp107, %land.rhs ]
  br i1 %107, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %108 = load i32, i32* %k, align 4
  %idxprom108 = sext i32 %108 to i64
  %109 = load i32*, i32** %pLevel, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %109, i64 %idxprom108
  %110 = load i32, i32* %arrayidx109, align 4
  store i32 %110, i32* %level, align 4
  %111 = load i32, i32* %k, align 4
  %idxprom110 = sext i32 %111 to i64
  %112 = load i32*, i32** %pRun, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %112, i64 %idxprom110
  %113 = load i32, i32* %arrayidx111, align 4
  store i32 %113, i32* %run, align 4
  %114 = load i32, i32* %level, align 4
  %tobool112 = icmp ne i32 %114, 0
  br i1 %tobool112, label %if.then.113, label %if.end.128

if.then.113:                                      ; preds = %for.body
  %115 = load i32, i32* %run, align 4
  %tobool114 = icmp ne i32 %115, 0
  br i1 %tobool114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.then.113
  %116 = load i32, i32* %run, align 4
  %117 = load i32, i32* %totzeros, align 4
  %add116 = add nsw i32 %117, %116
  store i32 %add116, i32* %totzeros, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.then.113
  %118 = load i32, i32* %level, align 4
  %call118 = call i32 @iabs(i32 %118)
  %cmp119 = icmp eq i32 %call118, 1
  br i1 %cmp119, label %if.then.120, label %if.else.125

if.then.120:                                      ; preds = %if.end.117
  %119 = load i32, i32* %numtrailingones, align 4
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %numtrailingones, align 4
  %120 = load i32, i32* %numones, align 4
  %inc121 = add nsw i32 %120, 1
  store i32 %inc121, i32* %numones, align 4
  %121 = load i32, i32* %numtrailingones, align 4
  %cmp122 = icmp sgt i32 %121, 3
  br i1 %cmp122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.then.120
  store i32 3, i32* %numtrailingones, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %if.then.120
  br label %if.end.126

if.else.125:                                      ; preds = %if.end.117
  store i32 0, i32* %numtrailingones, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.125, %if.end.124
  %122 = load i32, i32* %numcoeff, align 4
  %inc127 = add nsw i32 %122, 1
  store i32 %inc127, i32* %numcoeff, align 4
  %123 = load i32, i32* %k, align 4
  store i32 %123, i32* %lastcoeff, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.126, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.128
  %124 = load i32, i32* %k, align 4
  %inc129 = add nsw i32 %124, 1
  store i32 %inc129, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %125 = load i32, i32* %cdc, align 4
  %tobool130 = icmp ne i32 %125, 0
  br i1 %tobool130, label %if.else.178, label %if.then.131

if.then.131:                                      ; preds = %for.end
  %126 = load i32, i32* %cac, align 4
  %tobool132 = icmp ne i32 %126, 0
  br i1 %tobool132, label %if.else.155, label %if.then.133

if.then.133:                                      ; preds = %if.then.131
  %127 = load i32, i32* %b8.addr, align 4
  %and = and i32 %127, 1
  %cmp134 = icmp eq i32 %and, 0
  br i1 %cmp134, label %cond.true.135, label %cond.false.139

cond.true.135:                                    ; preds = %if.then.133
  %128 = load i32, i32* %b4.addr, align 4
  %and136 = and i32 %128, 1
  %cmp137 = icmp eq i32 %and136, 0
  %cond138 = select i1 %cmp137, i32 0, i32 1
  br label %cond.end.143

cond.false.139:                                   ; preds = %if.then.133
  %129 = load i32, i32* %b4.addr, align 4
  %and140 = and i32 %129, 1
  %cmp141 = icmp eq i32 %and140, 0
  %cond142 = select i1 %cmp141, i32 2, i32 3
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.139, %cond.true.135
  %cond144 = phi i32 [ %cond138, %cond.true.135 ], [ %cond142, %cond.false.139 ]
  store i32 %cond144, i32* %subblock_x, align 4
  %130 = load i32, i32* %b8.addr, align 4
  %cmp145 = icmp slt i32 %130, 2
  br i1 %cmp145, label %cond.true.146, label %cond.false.149

cond.true.146:                                    ; preds = %cond.end.143
  %131 = load i32, i32* %b4.addr, align 4
  %cmp147 = icmp slt i32 %131, 2
  %cond148 = select i1 %cmp147, i32 0, i32 1
  br label %cond.end.152

cond.false.149:                                   ; preds = %cond.end.143
  %132 = load i32, i32* %b4.addr, align 4
  %cmp150 = icmp slt i32 %132, 2
  %cond151 = select i1 %cmp150, i32 2, i32 3
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.149, %cond.true.146
  %cond153 = phi i32 [ %cond148, %cond.true.146 ], [ %cond151, %cond.false.149 ]
  store i32 %cond153, i32* %subblock_y, align 4
  %133 = load i32, i32* %subblock_x, align 4
  %134 = load i32, i32* %subblock_y, align 4
  %call154 = call i32 @predict_nnz(i32 %133, i32 %134)
  store i32 %call154, i32* %nnz, align 4
  br label %if.end.158

if.else.155:                                      ; preds = %if.then.131
  %135 = load i32, i32* %param.addr, align 4
  %shr = ashr i32 %135, 4
  store i32 %shr, i32* %subblock_x, align 4
  %136 = load i32, i32* %param.addr, align 4
  %and156 = and i32 %136, 15
  store i32 %and156, i32* %subblock_y, align 4
  %137 = load i32, i32* %subblock_x, align 4
  %138 = load i32, i32* %subblock_y, align 4
  %call157 = call i32 @predict_nnz_chroma(i32 %137, i32 %138)
  store i32 %call157, i32* %nnz, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %cond.end.152
  %139 = load i32, i32* %numcoeff, align 4
  %140 = load i32, i32* %subblock_y, align 4
  %idxprom159 = sext i32 %140 to i64
  %141 = load i32, i32* %subblock_x, align 4
  %idxprom160 = sext i32 %141 to i64
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr161 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 3
  %143 = load i32, i32* %current_mb_nr161, align 4
  %idxprom162 = sext i32 %143 to i64
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 34
  %145 = load i32***, i32**** %nz_coeff, align 8
  %arrayidx163 = getelementptr inbounds i32**, i32*** %145, i64 %idxprom162
  %146 = load i32**, i32*** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i32*, i32** %146, i64 %idxprom160
  %147 = load i32*, i32** %arrayidx164, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %147, i64 %idxprom159
  store i32 %139, i32* %arrayidx165, align 4
  %148 = load i32, i32* %nnz, align 4
  %cmp166 = icmp slt i32 %148, 2
  br i1 %cmp166, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %if.end.158
  store i32 0, i32* %numcoeff_vlc, align 4
  br label %if.end.177

if.else.168:                                      ; preds = %if.end.158
  %149 = load i32, i32* %nnz, align 4
  %cmp169 = icmp slt i32 %149, 4
  br i1 %cmp169, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %if.else.168
  store i32 1, i32* %numcoeff_vlc, align 4
  br label %if.end.176

if.else.171:                                      ; preds = %if.else.168
  %150 = load i32, i32* %nnz, align 4
  %cmp172 = icmp slt i32 %150, 8
  br i1 %cmp172, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %if.else.171
  store i32 2, i32* %numcoeff_vlc, align 4
  br label %if.end.175

if.else.174:                                      ; preds = %if.else.171
  store i32 3, i32* %numcoeff_vlc, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.174, %if.then.173
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.170
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.167
  br label %if.end.179

if.else.178:                                      ; preds = %for.end
  store i32 0, i32* %numcoeff_vlc, align 4
  %151 = load i32, i32* %param.addr, align 4
  store i32 %151, i32* %subblock_x, align 4
  %152 = load i32, i32* %param.addr, align 4
  store i32 %152, i32* %subblock_y, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.178, %if.end.177
  %153 = load i32, i32* %dptype, align 4
  %type180 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 %153, i32* %type180, align 4
  %154 = load i32, i32* %numcoeff, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %154, i32* %value1, align 4
  %155 = load i32, i32* %numtrailingones, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %155, i32* %value2, align 4
  %156 = load i32, i32* %numcoeff_vlc, align 4
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  store i32 %156, i32* %len, align 4
  %157 = load i32, i32* %cdc, align 4
  %tobool181 = icmp ne i32 %157, 0
  br i1 %tobool181, label %if.else.184, label %if.then.182

if.then.182:                                      ; preds = %if.end.179
  %158 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %call183 = call i32 @writeSyntaxElement_NumCoeffTrailingOnes(%struct.syntaxelement* %se, %struct.datapartition* %158)
  br label %if.end.186

if.else.184:                                      ; preds = %if.end.179
  %159 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %call185 = call i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(%struct.syntaxelement* %se, %struct.datapartition* %159)
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.184, %if.then.182
  %len187 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %160 = load i32, i32* %len187, align 4
  %161 = load i32, i32* %bitcounttype, align 4
  %idxprom188 = sext i32 %161 to i64
  %162 = load i32*, i32** %bitCount, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %162, i64 %idxprom188
  %163 = load i32, i32* %arrayidx189, align 4
  %add190 = add nsw i32 %163, %160
  store i32 %add190, i32* %arrayidx189, align 4
  %len191 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %164 = load i32, i32* %len191, align 4
  %165 = load i32, i32* %no_bits, align 4
  %add192 = add nsw i32 %165, %164
  store i32 %add192, i32* %no_bits, align 4
  %166 = load i32, i32* %numcoeff, align 4
  %tobool193 = icmp ne i32 %166, 0
  br i1 %tobool193, label %if.end.195, label %if.then.194

if.then.194:                                      ; preds = %if.end.186
  %167 = load i32, i32* %no_bits, align 4
  store i32 %167, i32* %retval
  br label %return

if.end.195:                                       ; preds = %if.end.186
  %168 = load i32, i32* %numcoeff, align 4
  %tobool196 = icmp ne i32 %168, 0
  br i1 %tobool196, label %if.then.197, label %if.end.338

if.then.197:                                      ; preds = %if.end.195
  store i32 0, i32* %code, align 4
  %169 = load i32, i32* %lastcoeff, align 4
  store i32 %169, i32* %k, align 4
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.211, %if.then.197
  %170 = load i32, i32* %k, align 4
  %171 = load i32, i32* %lastcoeff, align 4
  %172 = load i32, i32* %numtrailingones, align 4
  %sub = sub nsw i32 %171, %172
  %cmp199 = icmp sgt i32 %170, %sub
  br i1 %cmp199, label %for.body.200, label %for.end.212

for.body.200:                                     ; preds = %for.cond.198
  %173 = load i32, i32* %k, align 4
  %idxprom201 = sext i32 %173 to i64
  %174 = load i32*, i32** %pLevel, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %174, i64 %idxprom201
  %175 = load i32, i32* %arrayidx202, align 4
  store i32 %175, i32* %level, align 4
  %176 = load i32, i32* %level, align 4
  %call203 = call i32 @iabs(i32 %176)
  %cmp204 = icmp sgt i32 %call203, 1
  br i1 %cmp204, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %for.body.200
  %call206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.207:                                       ; preds = %for.body.200
  %177 = load i32, i32* %code, align 4
  %shl = shl i32 %177, 1
  store i32 %shl, i32* %code, align 4
  %178 = load i32, i32* %level, align 4
  %cmp208 = icmp slt i32 %178, 0
  br i1 %cmp208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.end.207
  %179 = load i32, i32* %code, align 4
  %or = or i32 %179, 1
  store i32 %or, i32* %code, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %if.end.207
  br label %for.inc.211

for.inc.211:                                      ; preds = %if.end.210
  %180 = load i32, i32* %k, align 4
  %dec = add nsw i32 %180, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.198

for.end.212:                                      ; preds = %for.cond.198
  %181 = load i32, i32* %numtrailingones, align 4
  %tobool213 = icmp ne i32 %181, 0
  br i1 %tobool213, label %if.then.214, label %if.end.225

if.then.214:                                      ; preds = %for.end.212
  %182 = load i32, i32* %dptype, align 4
  %type215 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 %182, i32* %type215, align 4
  %183 = load i32, i32* %numtrailingones, align 4
  %value2216 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 2
  store i32 %183, i32* %value2216, align 4
  %184 = load i32, i32* %code, align 4
  %value1217 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %184, i32* %value1217, align 4
  %185 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %call218 = call i32 @writeSyntaxElement_VLC(%struct.syntaxelement* %se, %struct.datapartition* %185)
  %len219 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %186 = load i32, i32* %len219, align 4
  %187 = load i32, i32* %bitcounttype, align 4
  %idxprom220 = sext i32 %187 to i64
  %188 = load i32*, i32** %bitCount, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %188, i64 %idxprom220
  %189 = load i32, i32* %arrayidx221, align 4
  %add222 = add nsw i32 %189, %186
  store i32 %add222, i32* %arrayidx221, align 4
  %len223 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %190 = load i32, i32* %len223, align 4
  %191 = load i32, i32* %no_bits, align 4
  %add224 = add nsw i32 %191, %190
  store i32 %add224, i32* %no_bits, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.214, %for.end.212
  %192 = load i32, i32* %numcoeff, align 4
  %cmp226 = icmp sgt i32 %192, 3
  br i1 %cmp226, label %land.rhs.227, label %land.end.229

land.rhs.227:                                     ; preds = %if.end.225
  %193 = load i32, i32* %numtrailingones, align 4
  %cmp228 = icmp eq i32 %193, 3
  br label %land.end.229

land.end.229:                                     ; preds = %land.rhs.227, %if.end.225
  %194 = phi i1 [ false, %if.end.225 ], [ %cmp228, %land.rhs.227 ]
  %cond230 = select i1 %194, i32 0, i32 1
  store i32 %cond230, i32* %level_two_or_higher, align 4
  %195 = load i32, i32* %numcoeff, align 4
  %cmp231 = icmp sgt i32 %195, 10
  br i1 %cmp231, label %land.rhs.232, label %land.end.234

land.rhs.232:                                     ; preds = %land.end.229
  %196 = load i32, i32* %numtrailingones, align 4
  %cmp233 = icmp slt i32 %196, 3
  br label %land.end.234

land.end.234:                                     ; preds = %land.rhs.232, %land.end.229
  %197 = phi i1 [ false, %land.end.229 ], [ %cmp233, %land.rhs.232 ]
  %cond235 = select i1 %197, i32 1, i32 0
  store i32 %cond235, i32* %vlcnum, align 4
  %198 = load i32, i32* %lastcoeff, align 4
  %199 = load i32, i32* %numtrailingones, align 4
  %sub236 = sub nsw i32 %198, %199
  store i32 %sub236, i32* %k, align 4
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.282, %land.end.234
  %200 = load i32, i32* %k, align 4
  %cmp238 = icmp sge i32 %200, 0
  br i1 %cmp238, label %for.body.239, label %for.end.284

for.body.239:                                     ; preds = %for.cond.237
  %201 = load i32, i32* %k, align 4
  %idxprom240 = sext i32 %201 to i64
  %202 = load i32*, i32** %pLevel, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %202, i64 %idxprom240
  %203 = load i32, i32* %arrayidx241, align 4
  store i32 %203, i32* %level, align 4
  %204 = load i32, i32* %level, align 4
  %value1242 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %204, i32* %value1242, align 4
  %205 = load i32, i32* %dptype, align 4
  %type243 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 %205, i32* %type243, align 4
  %206 = load i32, i32* %level_two_or_higher, align 4
  %tobool244 = icmp ne i32 %206, 0
  br i1 %tobool244, label %if.then.245, label %if.end.255

if.then.245:                                      ; preds = %for.body.239
  %value1246 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  %207 = load i32, i32* %value1246, align 4
  %cmp247 = icmp sgt i32 %207, 0
  br i1 %cmp247, label %if.then.248, label %if.else.251

if.then.248:                                      ; preds = %if.then.245
  %value1249 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  %208 = load i32, i32* %value1249, align 4
  %dec250 = add nsw i32 %208, -1
  store i32 %dec250, i32* %value1249, align 4
  br label %if.end.254

if.else.251:                                      ; preds = %if.then.245
  %value1252 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  %209 = load i32, i32* %value1252, align 4
  %inc253 = add nsw i32 %209, 1
  store i32 %inc253, i32* %value1252, align 4
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.251, %if.then.248
  store i32 0, i32* %level_two_or_higher, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %for.body.239
  %210 = load i32, i32* %vlcnum, align 4
  %cmp256 = icmp eq i32 %210, 0
  br i1 %cmp256, label %if.then.257, label %if.else.259

if.then.257:                                      ; preds = %if.end.255
  %211 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %212 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %212, i32 0, i32 1
  %213 = load i32, i32* %profile_idc, align 4
  %call258 = call i32 @writeSyntaxElement_Level_VLC1(%struct.syntaxelement* %se, %struct.datapartition* %211, i32 %213)
  br label %if.end.262

if.else.259:                                      ; preds = %if.end.255
  %214 = load i32, i32* %vlcnum, align 4
  %215 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %216 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %profile_idc260 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %216, i32 0, i32 1
  %217 = load i32, i32* %profile_idc260, align 4
  %call261 = call i32 @writeSyntaxElement_Level_VLCN(%struct.syntaxelement* %se, i32 %214, %struct.datapartition* %215, i32 %217)
  br label %if.end.262

if.end.262:                                       ; preds = %if.else.259, %if.then.257
  %218 = load i32, i32* %level, align 4
  %call263 = call i32 @iabs(i32 %218)
  %219 = load i32, i32* %vlcnum, align 4
  %idxprom264 = sext i32 %219 to i64
  %arrayidx265 = getelementptr inbounds [7 x i32], [7 x i32]* @writeCoeff4x4_CAVLC.incVlc, i32 0, i64 %idxprom264
  %220 = load i32, i32* %arrayidx265, align 4
  %cmp266 = icmp sgt i32 %call263, %220
  br i1 %cmp266, label %if.then.267, label %if.end.269

if.then.267:                                      ; preds = %if.end.262
  %221 = load i32, i32* %vlcnum, align 4
  %inc268 = add nsw i32 %221, 1
  store i32 %inc268, i32* %vlcnum, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.267, %if.end.262
  %222 = load i32, i32* %k, align 4
  %223 = load i32, i32* %lastcoeff, align 4
  %224 = load i32, i32* %numtrailingones, align 4
  %sub270 = sub nsw i32 %223, %224
  %cmp271 = icmp eq i32 %222, %sub270
  br i1 %cmp271, label %land.lhs.true, label %if.end.275

land.lhs.true:                                    ; preds = %if.end.269
  %225 = load i32, i32* %level, align 4
  %call272 = call i32 @iabs(i32 %225)
  %cmp273 = icmp sgt i32 %call272, 3
  br i1 %cmp273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %land.lhs.true
  store i32 2, i32* %vlcnum, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %land.lhs.true, %if.end.269
  %len276 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %226 = load i32, i32* %len276, align 4
  %227 = load i32, i32* %bitcounttype, align 4
  %idxprom277 = sext i32 %227 to i64
  %228 = load i32*, i32** %bitCount, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %228, i64 %idxprom277
  %229 = load i32, i32* %arrayidx278, align 4
  %add279 = add nsw i32 %229, %226
  store i32 %add279, i32* %arrayidx278, align 4
  %len280 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %230 = load i32, i32* %len280, align 4
  %231 = load i32, i32* %no_bits, align 4
  %add281 = add nsw i32 %231, %230
  store i32 %add281, i32* %no_bits, align 4
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.275
  %232 = load i32, i32* %k, align 4
  %dec283 = add nsw i32 %232, -1
  store i32 %dec283, i32* %k, align 4
  br label %for.cond.237

for.end.284:                                      ; preds = %for.cond.237
  %233 = load i32, i32* %numcoeff, align 4
  %234 = load i32, i32* %max_coeff_num, align 4
  %cmp285 = icmp slt i32 %233, %234
  br i1 %cmp285, label %if.then.286, label %if.end.303

if.then.286:                                      ; preds = %for.end.284
  %235 = load i32, i32* %dptype, align 4
  %type287 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 %235, i32* %type287, align 4
  %236 = load i32, i32* %totzeros, align 4
  %value1288 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %236, i32* %value1288, align 4
  %237 = load i32, i32* %numcoeff, align 4
  %sub289 = sub nsw i32 %237, 1
  store i32 %sub289, i32* %vlcnum, align 4
  %238 = load i32, i32* %vlcnum, align 4
  %len290 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  store i32 %238, i32* %len290, align 4
  %239 = load i32, i32* %cdc, align 4
  %tobool291 = icmp ne i32 %239, 0
  br i1 %tobool291, label %if.else.294, label %if.then.292

if.then.292:                                      ; preds = %if.then.286
  %240 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %call293 = call i32 @writeSyntaxElement_TotalZeros(%struct.syntaxelement* %se, %struct.datapartition* %240)
  br label %if.end.296

if.else.294:                                      ; preds = %if.then.286
  %241 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %call295 = call i32 @writeSyntaxElement_TotalZerosChromaDC(%struct.syntaxelement* %se, %struct.datapartition* %241)
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.294, %if.then.292
  %len297 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %242 = load i32, i32* %len297, align 4
  %243 = load i32, i32* %bitcounttype, align 4
  %idxprom298 = sext i32 %243 to i64
  %244 = load i32*, i32** %bitCount, align 8
  %arrayidx299 = getelementptr inbounds i32, i32* %244, i64 %idxprom298
  %245 = load i32, i32* %arrayidx299, align 4
  %add300 = add nsw i32 %245, %242
  store i32 %add300, i32* %arrayidx299, align 4
  %len301 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %246 = load i32, i32* %len301, align 4
  %247 = load i32, i32* %no_bits, align 4
  %add302 = add nsw i32 %247, %246
  store i32 %add302, i32* %no_bits, align 4
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.296, %for.end.284
  %248 = load i32, i32* %totzeros, align 4
  store i32 %248, i32* %zerosleft, align 4
  %249 = load i32, i32* %numcoeff, align 4
  store i32 %249, i32* %numcoef, align 4
  %250 = load i32, i32* %lastcoeff, align 4
  store i32 %250, i32* %k, align 4
  br label %for.cond.304

for.cond.304:                                     ; preds = %for.inc.335, %if.end.303
  %251 = load i32, i32* %k, align 4
  %cmp305 = icmp sge i32 %251, 0
  br i1 %cmp305, label %for.body.306, label %for.end.337

for.body.306:                                     ; preds = %for.cond.304
  %252 = load i32, i32* %k, align 4
  %idxprom307 = sext i32 %252 to i64
  %253 = load i32*, i32** %pRun, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %253, i64 %idxprom307
  %254 = load i32, i32* %arrayidx308, align 4
  store i32 %254, i32* %run, align 4
  %255 = load i32, i32* %run, align 4
  %value1309 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %255, i32* %value1309, align 4
  %256 = load i32, i32* %dptype, align 4
  %type310 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 %256, i32* %type310, align 4
  %257 = load i32, i32* %numcoeff, align 4
  %cmp311 = icmp sle i32 %257, 1
  br i1 %cmp311, label %if.then.314, label %lor.lhs.false.312

lor.lhs.false.312:                                ; preds = %for.body.306
  %258 = load i32, i32* %zerosleft, align 4
  %tobool313 = icmp ne i32 %258, 0
  br i1 %tobool313, label %if.end.315, label %if.then.314

if.then.314:                                      ; preds = %lor.lhs.false.312, %for.body.306
  br label %for.end.337

if.end.315:                                       ; preds = %lor.lhs.false.312
  %259 = load i32, i32* %numcoef, align 4
  %cmp316 = icmp sgt i32 %259, 1
  br i1 %cmp316, label %land.lhs.true.317, label %if.end.334

land.lhs.true.317:                                ; preds = %if.end.315
  %260 = load i32, i32* %zerosleft, align 4
  %tobool318 = icmp ne i32 %260, 0
  br i1 %tobool318, label %if.then.319, label %if.end.334

if.then.319:                                      ; preds = %land.lhs.true.317
  %261 = load i32, i32* %zerosleft, align 4
  %sub320 = sub nsw i32 %261, 1
  store i32 %sub320, i32* %vlcnum, align 4
  %262 = load i32, i32* %vlcnum, align 4
  %cmp321 = icmp sgt i32 %262, 6
  br i1 %cmp321, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %if.then.319
  store i32 6, i32* %vlcnum, align 4
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %if.then.319
  %263 = load i32, i32* %vlcnum, align 4
  %len324 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  store i32 %263, i32* %len324, align 4
  %264 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %call325 = call i32 @writeSyntaxElement_Run(%struct.syntaxelement* %se, %struct.datapartition* %264)
  %len326 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %265 = load i32, i32* %len326, align 4
  %266 = load i32, i32* %bitcounttype, align 4
  %idxprom327 = sext i32 %266 to i64
  %267 = load i32*, i32** %bitCount, align 8
  %arrayidx328 = getelementptr inbounds i32, i32* %267, i64 %idxprom327
  %268 = load i32, i32* %arrayidx328, align 4
  %add329 = add nsw i32 %268, %265
  store i32 %add329, i32* %arrayidx328, align 4
  %len330 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %269 = load i32, i32* %len330, align 4
  %270 = load i32, i32* %no_bits, align 4
  %add331 = add nsw i32 %270, %269
  store i32 %add331, i32* %no_bits, align 4
  %271 = load i32, i32* %run, align 4
  %272 = load i32, i32* %zerosleft, align 4
  %sub332 = sub nsw i32 %272, %271
  store i32 %sub332, i32* %zerosleft, align 4
  %273 = load i32, i32* %numcoef, align 4
  %dec333 = add nsw i32 %273, -1
  store i32 %dec333, i32* %numcoef, align 4
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.323, %land.lhs.true.317, %if.end.315
  br label %for.inc.335

for.inc.335:                                      ; preds = %if.end.334
  %274 = load i32, i32* %k, align 4
  %dec336 = add nsw i32 %274, -1
  store i32 %dec336, i32* %k, align 4
  br label %for.cond.304

for.end.337:                                      ; preds = %if.then.314, %for.cond.304
  br label %if.end.338

if.end.338:                                       ; preds = %for.end.337, %if.end.195
  %275 = load i32, i32* %no_bits, align 4
  store i32 %275, i32* %retval
  br label %return

return:                                           ; preds = %if.end.338, %if.then.194
  %276 = load i32, i32* %retval
  ret i32 %276
}

; Function Attrs: nounwind uwtable
define i32 @predict_nnz(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %pix = alloca %struct.pix_pos, align 4
  %pred_nnz = alloca i32, align 4
  %cnt = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %pred_nnz, align 4
  store i32 0, i32* %cnt, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  store i32 %1, i32* %mb_nr, align 4
  %2 = load i32, i32* %mb_nr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 61
  %4 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %5 = load i32, i32* %mb_nr, align 4
  %6 = load i32, i32* %i.addr, align 4
  %shl = shl i32 %6, 2
  %sub = sub nsw i32 %shl, 1
  %7 = load i32, i32* %j.addr, align 4
  %shl1 = shl i32 %7, 2
  call void @getLuma4x4Neighbour(i32 %5, i32 %sub, i32 %shl1, %struct.pix_pos* %pix)
  %8 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i32 0, i32 8
  %9 = load i32, i32* %mb_type, align 4
  %cmp = icmp eq i32 %9, 9
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type2 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 8
  %11 = load i32, i32* %mb_type2, align 4
  %cmp3 = icmp eq i32 %11, 10
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 8
  %13 = load i32, i32* %mb_type5, align 4
  %cmp6 = icmp eq i32 %13, 13
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 8
  %15 = load i32, i32* %mb_type8, align 4
  %cmp9 = icmp eq i32 %15, 14
  br i1 %cmp9, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %16 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.lhs.true.10, label %if.end.22

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %17 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %17, i32 0, i32 27
  %18 = load i32, i32* %constrained_intra_pred_flag, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.22

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 76
  %20 = load i32, i32* %partition_mode, align 4
  %cmp13 = icmp ne i32 %20, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.22

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 59
  %22 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %22, i32 0, i32 1
  %23 = load i32, i32* %idr_flag, align 4
  %tobool15 = icmp ne i32 %23, 0
  br i1 %tobool15, label %if.end.22, label %if.then

if.then:                                          ; preds = %land.lhs.true.14
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %24 = load i32, i32* %mb_addr, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 63
  %26 = load i32*, i32** %intra_block, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %26, i64 %idxprom16
  %27 = load i32, i32* %arrayidx17, align 4
  %available18 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %28 = load i32, i32* %available18, align 4
  %and = and i32 %28, %27
  store i32 %and, i32* %available18, align 4
  %available19 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %29 = load i32, i32* %available19, align 4
  %tobool20 = icmp ne i32 %29, 0
  br i1 %tobool20, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %if.then
  %30 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true.14, %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true, %lor.lhs.false.7
  %available23 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %31 = load i32, i32* %available23, align 4
  %tobool24 = icmp ne i32 %31, 0
  br i1 %tobool24, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %if.end.22
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 3
  %32 = load i32, i32* %y, align 4
  %idxprom26 = sext i32 %32 to i64
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 2
  %33 = load i32, i32* %x, align 4
  %idxprom27 = sext i32 %33 to i64
  %mb_addr28 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %34 = load i32, i32* %mb_addr28, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 34
  %36 = load i32***, i32**** %nz_coeff, align 8
  %arrayidx30 = getelementptr inbounds i32**, i32*** %36, i64 %idxprom29
  %37 = load i32**, i32*** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i32*, i32** %37, i64 %idxprom27
  %38 = load i32*, i32** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %38, i64 %idxprom26
  %39 = load i32, i32* %arrayidx32, align 4
  store i32 %39, i32* %pred_nnz, align 4
  %40 = load i32, i32* %cnt, align 4
  %inc33 = add nsw i32 %40, 1
  store i32 %inc33, i32* %cnt, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.25, %if.end.22
  %41 = load i32, i32* %mb_nr, align 4
  %42 = load i32, i32* %i.addr, align 4
  %shl35 = shl i32 %42, 2
  %43 = load i32, i32* %j.addr, align 4
  %shl36 = shl i32 %43, 2
  %sub37 = sub nsw i32 %shl36, 1
  call void @getLuma4x4Neighbour(i32 %41, i32 %shl35, i32 %sub37, %struct.pix_pos* %pix)
  %44 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type38 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %44, i32 0, i32 8
  %45 = load i32, i32* %mb_type38, align 4
  %cmp39 = icmp eq i32 %45, 9
  br i1 %cmp39, label %land.lhs.true.49, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end.34
  %46 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type41 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %46, i32 0, i32 8
  %47 = load i32, i32* %mb_type41, align 4
  %cmp42 = icmp eq i32 %47, 10
  br i1 %cmp42, label %land.lhs.true.49, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.40
  %48 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type44 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %48, i32 0, i32 8
  %49 = load i32, i32* %mb_type44, align 4
  %cmp45 = icmp eq i32 %49, 13
  br i1 %cmp45, label %land.lhs.true.49, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.43
  %50 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type47 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %50, i32 0, i32 8
  %51 = load i32, i32* %mb_type47, align 4
  %cmp48 = icmp eq i32 %51, 14
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.74

land.lhs.true.49:                                 ; preds = %lor.lhs.false.46, %lor.lhs.false.43, %lor.lhs.false.40, %if.end.34
  %available50 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %52 = load i32, i32* %available50, align 4
  %tobool51 = icmp ne i32 %52, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.74

land.lhs.true.52:                                 ; preds = %land.lhs.true.49
  %53 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %constrained_intra_pred_flag53 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %53, i32 0, i32 27
  %54 = load i32, i32* %constrained_intra_pred_flag53, align 4
  %tobool54 = icmp ne i32 %54, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.74

land.lhs.true.55:                                 ; preds = %land.lhs.true.52
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode56 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 76
  %56 = load i32, i32* %partition_mode56, align 4
  %cmp57 = icmp ne i32 %56, 0
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.74

land.lhs.true.58:                                 ; preds = %land.lhs.true.55
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture59 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 59
  %58 = load %struct.Picture*, %struct.Picture** %currentPicture59, align 8
  %idr_flag60 = getelementptr inbounds %struct.Picture, %struct.Picture* %58, i32 0, i32 1
  %59 = load i32, i32* %idr_flag60, align 4
  %tobool61 = icmp ne i32 %59, 0
  br i1 %tobool61, label %if.end.74, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.58
  %mb_addr63 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %60 = load i32, i32* %mb_addr63, align 4
  %idxprom64 = sext i32 %60 to i64
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 63
  %62 = load i32*, i32** %intra_block65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %62, i64 %idxprom64
  %63 = load i32, i32* %arrayidx66, align 4
  %available67 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %64 = load i32, i32* %available67, align 4
  %and68 = and i32 %64, %63
  store i32 %and68, i32* %available67, align 4
  %available69 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %65 = load i32, i32* %available69, align 4
  %tobool70 = icmp ne i32 %65, 0
  br i1 %tobool70, label %if.end.73, label %if.then.71

if.then.71:                                       ; preds = %if.then.62
  %66 = load i32, i32* %cnt, align 4
  %inc72 = add nsw i32 %66, 1
  store i32 %inc72, i32* %cnt, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.then.62
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true.58, %land.lhs.true.55, %land.lhs.true.52, %land.lhs.true.49, %lor.lhs.false.46
  %available75 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %67 = load i32, i32* %available75, align 4
  %tobool76 = icmp ne i32 %67, 0
  br i1 %tobool76, label %if.then.77, label %if.end.89

if.then.77:                                       ; preds = %if.end.74
  %y78 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 3
  %68 = load i32, i32* %y78, align 4
  %idxprom79 = sext i32 %68 to i64
  %x80 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 2
  %69 = load i32, i32* %x80, align 4
  %idxprom81 = sext i32 %69 to i64
  %mb_addr82 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %70 = load i32, i32* %mb_addr82, align 4
  %idxprom83 = sext i32 %70 to i64
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff84 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 34
  %72 = load i32***, i32**** %nz_coeff84, align 8
  %arrayidx85 = getelementptr inbounds i32**, i32*** %72, i64 %idxprom83
  %73 = load i32**, i32*** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32*, i32** %73, i64 %idxprom81
  %74 = load i32*, i32** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %74, i64 %idxprom79
  %75 = load i32, i32* %arrayidx87, align 4
  %76 = load i32, i32* %pred_nnz, align 4
  %add = add nsw i32 %76, %75
  store i32 %add, i32* %pred_nnz, align 4
  %77 = load i32, i32* %cnt, align 4
  %inc88 = add nsw i32 %77, 1
  store i32 %inc88, i32* %cnt, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.77, %if.end.74
  %78 = load i32, i32* %cnt, align 4
  %cmp90 = icmp eq i32 %78, 2
  br i1 %cmp90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.end.89
  %79 = load i32, i32* %pred_nnz, align 4
  %inc92 = add nsw i32 %79, 1
  store i32 %inc92, i32* %pred_nnz, align 4
  %80 = load i32, i32* %pred_nnz, align 4
  %shr = ashr i32 %80, 1
  store i32 %shr, i32* %pred_nnz, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.end.89
  %81 = load i32, i32* %pred_nnz, align 4
  ret i32 %81
}

declare void @getLuma4x4Neighbour(i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind uwtable
define i32 @predict_nnz_chroma(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %pix = alloca %struct.pix_pos, align 4
  %pred_nnz = alloca i32, align 4
  %cnt = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %j_off = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %pred_nnz, align 4
  store i32 0, i32* %cnt, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  store i32 %1, i32* %mb_nr, align 4
  %2 = load i32, i32* %j.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [12 x i32], [12 x i32]* @predict_nnz_chroma.j_off_tab, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %j_off, align 4
  %4 = load i32, i32* %mb_nr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 61
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx2 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom1
  store %struct.macroblock* %arrayidx2, %struct.macroblock** %currMB, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 160
  %8 = load i32, i32* %yuv_format, align 4
  %cmp = icmp ne i32 %8, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %mb_nr, align 4
  %10 = load i32, i32* %i.addr, align 4
  %and = and i32 %10, 1
  %shl = shl i32 %and, 2
  %sub = sub nsw i32 %shl, 1
  %11 = load i32, i32* %j.addr, align 4
  %sub3 = sub nsw i32 %11, 4
  %shl4 = shl i32 %sub3, 2
  call void @getChroma4x4Neighbour(i32 %9, i32 %sub, i32 %shl4, %struct.pix_pos* %pix)
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 8
  %13 = load i32, i32* %mb_type, align 4
  %cmp5 = icmp eq i32 %13, 9
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 8
  %15 = load i32, i32* %mb_type6, align 4
  %cmp7 = icmp eq i32 %15, 10
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 8
  %17 = load i32, i32* %mb_type9, align 4
  %cmp10 = icmp eq i32 %17, 13
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 8
  %19 = load i32, i32* %mb_type12, align 4
  %cmp13 = icmp eq i32 %19, 14
  br i1 %cmp13, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false, %if.then
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %20 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %land.lhs.true.14, label %if.end.28

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %21, i32 0, i32 27
  %22 = load i32, i32* %constrained_intra_pred_flag, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.28

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 76
  %24 = load i32, i32* %partition_mode, align 4
  %cmp17 = icmp ne i32 %24, 0
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.28

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 59
  %26 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %26, i32 0, i32 1
  %27 = load i32, i32* %idr_flag, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %if.end.28, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.18
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %28 = load i32, i32* %mb_addr, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 63
  %30 = load i32*, i32** %intra_block, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %30, i64 %idxprom21
  %31 = load i32, i32* %arrayidx22, align 4
  %available23 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %32 = load i32, i32* %available23, align 4
  %and24 = and i32 %32, %31
  store i32 %and24, i32* %available23, align 4
  %available25 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %33 = load i32, i32* %available25, align 4
  %tobool26 = icmp ne i32 %33, 0
  br i1 %tobool26, label %if.end, label %if.then.27

if.then.27:                                       ; preds = %if.then.20
  %34 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.then.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %land.lhs.true.18, %land.lhs.true.16, %land.lhs.true.14, %land.lhs.true, %lor.lhs.false.11
  %available29 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %35 = load i32, i32* %available29, align 4
  %tobool30 = icmp ne i32 %35, 0
  br i1 %tobool30, label %if.then.31, label %if.end.41

if.then.31:                                       ; preds = %if.end.28
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 3
  %36 = load i32, i32* %y, align 4
  %add = add nsw i32 4, %36
  %idxprom32 = sext i32 %add to i64
  %37 = load i32, i32* %i.addr, align 4
  %shr = ashr i32 %37, 1
  %mul = mul nsw i32 2, %shr
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 2
  %38 = load i32, i32* %x, align 4
  %add33 = add nsw i32 %mul, %38
  %idxprom34 = sext i32 %add33 to i64
  %mb_addr35 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %39 = load i32, i32* %mb_addr35, align 4
  %idxprom36 = sext i32 %39 to i64
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 34
  %41 = load i32***, i32**** %nz_coeff, align 8
  %arrayidx37 = getelementptr inbounds i32**, i32*** %41, i64 %idxprom36
  %42 = load i32**, i32*** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i32*, i32** %42, i64 %idxprom34
  %43 = load i32*, i32** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %43, i64 %idxprom32
  %44 = load i32, i32* %arrayidx39, align 4
  store i32 %44, i32* %pred_nnz, align 4
  %45 = load i32, i32* %cnt, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, i32* %cnt, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.31, %if.end.28
  %46 = load i32, i32* %mb_nr, align 4
  %47 = load i32, i32* %i.addr, align 4
  %and42 = and i32 %47, 1
  %shl43 = shl i32 %and42, 2
  %48 = load i32, i32* %j.addr, align 4
  %sub44 = sub nsw i32 %48, 4
  %shl45 = shl i32 %sub44, 2
  %sub46 = sub nsw i32 %shl45, 1
  call void @getChroma4x4Neighbour(i32 %46, i32 %shl43, i32 %sub46, %struct.pix_pos* %pix)
  %49 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type47 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i32 0, i32 8
  %50 = load i32, i32* %mb_type47, align 4
  %cmp48 = icmp eq i32 %50, 9
  br i1 %cmp48, label %land.lhs.true.58, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %if.end.41
  %51 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type50 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 8
  %52 = load i32, i32* %mb_type50, align 4
  %cmp51 = icmp eq i32 %52, 10
  br i1 %cmp51, label %land.lhs.true.58, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.49
  %53 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type53 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %53, i32 0, i32 8
  %54 = load i32, i32* %mb_type53, align 4
  %cmp54 = icmp eq i32 %54, 13
  br i1 %cmp54, label %land.lhs.true.58, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.52
  %55 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type56 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %55, i32 0, i32 8
  %56 = load i32, i32* %mb_type56, align 4
  %cmp57 = icmp eq i32 %56, 14
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.83

land.lhs.true.58:                                 ; preds = %lor.lhs.false.55, %lor.lhs.false.52, %lor.lhs.false.49, %if.end.41
  %available59 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %57 = load i32, i32* %available59, align 4
  %tobool60 = icmp ne i32 %57, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.83

land.lhs.true.61:                                 ; preds = %land.lhs.true.58
  %58 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %constrained_intra_pred_flag62 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %58, i32 0, i32 27
  %59 = load i32, i32* %constrained_intra_pred_flag62, align 4
  %tobool63 = icmp ne i32 %59, 0
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.83

land.lhs.true.64:                                 ; preds = %land.lhs.true.61
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode65 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 76
  %61 = load i32, i32* %partition_mode65, align 4
  %cmp66 = icmp ne i32 %61, 0
  br i1 %cmp66, label %land.lhs.true.67, label %if.end.83

land.lhs.true.67:                                 ; preds = %land.lhs.true.64
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 59
  %63 = load %struct.Picture*, %struct.Picture** %currentPicture68, align 8
  %idr_flag69 = getelementptr inbounds %struct.Picture, %struct.Picture* %63, i32 0, i32 1
  %64 = load i32, i32* %idr_flag69, align 4
  %tobool70 = icmp ne i32 %64, 0
  br i1 %tobool70, label %if.end.83, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.67
  %mb_addr72 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %65 = load i32, i32* %mb_addr72, align 4
  %idxprom73 = sext i32 %65 to i64
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 63
  %67 = load i32*, i32** %intra_block74, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %67, i64 %idxprom73
  %68 = load i32, i32* %arrayidx75, align 4
  %available76 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %69 = load i32, i32* %available76, align 4
  %and77 = and i32 %69, %68
  store i32 %and77, i32* %available76, align 4
  %available78 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %70 = load i32, i32* %available78, align 4
  %tobool79 = icmp ne i32 %70, 0
  br i1 %tobool79, label %if.end.82, label %if.then.80

if.then.80:                                       ; preds = %if.then.71
  %71 = load i32, i32* %cnt, align 4
  %inc81 = add nsw i32 %71, 1
  store i32 %inc81, i32* %cnt, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.then.71
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %land.lhs.true.67, %land.lhs.true.64, %land.lhs.true.61, %land.lhs.true.58, %lor.lhs.false.55
  %available84 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %72 = load i32, i32* %available84, align 4
  %tobool85 = icmp ne i32 %72, 0
  br i1 %tobool85, label %if.then.86, label %if.end.103

if.then.86:                                       ; preds = %if.end.83
  %y87 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 3
  %73 = load i32, i32* %y87, align 4
  %add88 = add nsw i32 4, %73
  %idxprom89 = sext i32 %add88 to i64
  %74 = load i32, i32* %i.addr, align 4
  %shr90 = ashr i32 %74, 1
  %mul91 = mul nsw i32 2, %shr90
  %x92 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 2
  %75 = load i32, i32* %x92, align 4
  %add93 = add nsw i32 %mul91, %75
  %idxprom94 = sext i32 %add93 to i64
  %mb_addr95 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %76 = load i32, i32* %mb_addr95, align 4
  %idxprom96 = sext i32 %76 to i64
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff97 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 34
  %78 = load i32***, i32**** %nz_coeff97, align 8
  %arrayidx98 = getelementptr inbounds i32**, i32*** %78, i64 %idxprom96
  %79 = load i32**, i32*** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %79, i64 %idxprom94
  %80 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %80, i64 %idxprom89
  %81 = load i32, i32* %arrayidx100, align 4
  %82 = load i32, i32* %pred_nnz, align 4
  %add101 = add nsw i32 %82, %81
  store i32 %add101, i32* %pred_nnz, align 4
  %83 = load i32, i32* %cnt, align 4
  %inc102 = add nsw i32 %83, 1
  store i32 %inc102, i32* %cnt, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.86, %if.end.83
  br label %if.end.210

if.else:                                          ; preds = %entry
  %84 = load i32, i32* %mb_nr, align 4
  %85 = load i32, i32* %i.addr, align 4
  %shl104 = shl i32 %85, 2
  %sub105 = sub nsw i32 %shl104, 1
  %86 = load i32, i32* %j.addr, align 4
  %87 = load i32, i32* %j_off, align 4
  %sub106 = sub nsw i32 %86, %87
  %shl107 = shl i32 %sub106, 2
  call void @getChroma4x4Neighbour(i32 %84, i32 %sub105, i32 %shl107, %struct.pix_pos* %pix)
  %88 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type108 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %88, i32 0, i32 8
  %89 = load i32, i32* %mb_type108, align 4
  %cmp109 = icmp eq i32 %89, 9
  br i1 %cmp109, label %land.lhs.true.119, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.else
  %90 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type111 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %90, i32 0, i32 8
  %91 = load i32, i32* %mb_type111, align 4
  %cmp112 = icmp eq i32 %91, 10
  br i1 %cmp112, label %land.lhs.true.119, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false.110
  %92 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type114 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %92, i32 0, i32 8
  %93 = load i32, i32* %mb_type114, align 4
  %cmp115 = icmp eq i32 %93, 13
  br i1 %cmp115, label %land.lhs.true.119, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %lor.lhs.false.113
  %94 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type117 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %94, i32 0, i32 8
  %95 = load i32, i32* %mb_type117, align 4
  %cmp118 = icmp eq i32 %95, 14
  br i1 %cmp118, label %land.lhs.true.119, label %if.end.139

land.lhs.true.119:                                ; preds = %lor.lhs.false.116, %lor.lhs.false.113, %lor.lhs.false.110, %if.else
  %available120 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %96 = load i32, i32* %available120, align 4
  %tobool121 = icmp ne i32 %96, 0
  br i1 %tobool121, label %land.lhs.true.122, label %if.end.139

land.lhs.true.122:                                ; preds = %land.lhs.true.119
  %97 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %constrained_intra_pred_flag123 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %97, i32 0, i32 27
  %98 = load i32, i32* %constrained_intra_pred_flag123, align 4
  %tobool124 = icmp ne i32 %98, 0
  br i1 %tobool124, label %land.lhs.true.125, label %if.end.139

land.lhs.true.125:                                ; preds = %land.lhs.true.122
  %99 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode126 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %99, i32 0, i32 76
  %100 = load i32, i32* %partition_mode126, align 4
  %cmp127 = icmp ne i32 %100, 0
  br i1 %cmp127, label %land.lhs.true.128, label %if.end.139

land.lhs.true.128:                                ; preds = %land.lhs.true.125
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 59
  %102 = load %struct.Picture*, %struct.Picture** %currentPicture129, align 8
  %idr_flag130 = getelementptr inbounds %struct.Picture, %struct.Picture* %102, i32 0, i32 1
  %103 = load i32, i32* %idr_flag130, align 4
  %tobool131 = icmp ne i32 %103, 0
  br i1 %tobool131, label %if.end.139, label %if.then.132

if.then.132:                                      ; preds = %land.lhs.true.128
  %mb_addr133 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %104 = load i32, i32* %mb_addr133, align 4
  %idxprom134 = sext i32 %104 to i64
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block135 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 63
  %106 = load i32*, i32** %intra_block135, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %106, i64 %idxprom134
  %107 = load i32, i32* %arrayidx136, align 4
  %available137 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %108 = load i32, i32* %available137, align 4
  %and138 = and i32 %108, %107
  store i32 %and138, i32* %available137, align 4
  %109 = load i32, i32* %cnt, align 4
  %dec = add nsw i32 %109, -1
  store i32 %dec, i32* %cnt, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.132, %land.lhs.true.128, %land.lhs.true.125, %land.lhs.true.122, %land.lhs.true.119, %lor.lhs.false.116
  %available140 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %110 = load i32, i32* %available140, align 4
  %tobool141 = icmp ne i32 %110, 0
  br i1 %tobool141, label %if.then.142, label %if.end.155

if.then.142:                                      ; preds = %if.end.139
  %111 = load i32, i32* %j_off, align 4
  %y143 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 3
  %112 = load i32, i32* %y143, align 4
  %add144 = add nsw i32 %111, %112
  %idxprom145 = sext i32 %add144 to i64
  %x146 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 2
  %113 = load i32, i32* %x146, align 4
  %idxprom147 = sext i32 %113 to i64
  %mb_addr148 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %114 = load i32, i32* %mb_addr148, align 4
  %idxprom149 = sext i32 %114 to i64
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff150 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 34
  %116 = load i32***, i32**** %nz_coeff150, align 8
  %arrayidx151 = getelementptr inbounds i32**, i32*** %116, i64 %idxprom149
  %117 = load i32**, i32*** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32*, i32** %117, i64 %idxprom147
  %118 = load i32*, i32** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %118, i64 %idxprom145
  %119 = load i32, i32* %arrayidx153, align 4
  store i32 %119, i32* %pred_nnz, align 4
  %120 = load i32, i32* %cnt, align 4
  %inc154 = add nsw i32 %120, 1
  store i32 %inc154, i32* %cnt, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.142, %if.end.139
  %121 = load i32, i32* %mb_nr, align 4
  %122 = load i32, i32* %i.addr, align 4
  %shl156 = shl i32 %122, 2
  %123 = load i32, i32* %j.addr, align 4
  %124 = load i32, i32* %j_off, align 4
  %sub157 = sub nsw i32 %123, %124
  %shl158 = shl i32 %sub157, 2
  %sub159 = sub nsw i32 %shl158, 1
  call void @getChroma4x4Neighbour(i32 %121, i32 %shl156, i32 %sub159, %struct.pix_pos* %pix)
  %125 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type160 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %125, i32 0, i32 8
  %126 = load i32, i32* %mb_type160, align 4
  %cmp161 = icmp eq i32 %126, 9
  br i1 %cmp161, label %land.lhs.true.171, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %if.end.155
  %127 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type163 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %127, i32 0, i32 8
  %128 = load i32, i32* %mb_type163, align 4
  %cmp164 = icmp eq i32 %128, 10
  br i1 %cmp164, label %land.lhs.true.171, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %lor.lhs.false.162
  %129 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type166 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %129, i32 0, i32 8
  %130 = load i32, i32* %mb_type166, align 4
  %cmp167 = icmp eq i32 %130, 13
  br i1 %cmp167, label %land.lhs.true.171, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %lor.lhs.false.165
  %131 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type169 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %131, i32 0, i32 8
  %132 = load i32, i32* %mb_type169, align 4
  %cmp170 = icmp eq i32 %132, 14
  br i1 %cmp170, label %land.lhs.true.171, label %if.end.192

land.lhs.true.171:                                ; preds = %lor.lhs.false.168, %lor.lhs.false.165, %lor.lhs.false.162, %if.end.155
  %available172 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %133 = load i32, i32* %available172, align 4
  %tobool173 = icmp ne i32 %133, 0
  br i1 %tobool173, label %land.lhs.true.174, label %if.end.192

land.lhs.true.174:                                ; preds = %land.lhs.true.171
  %134 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %constrained_intra_pred_flag175 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %134, i32 0, i32 27
  %135 = load i32, i32* %constrained_intra_pred_flag175, align 4
  %tobool176 = icmp ne i32 %135, 0
  br i1 %tobool176, label %land.lhs.true.177, label %if.end.192

land.lhs.true.177:                                ; preds = %land.lhs.true.174
  %136 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode178 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %136, i32 0, i32 76
  %137 = load i32, i32* %partition_mode178, align 4
  %cmp179 = icmp ne i32 %137, 0
  br i1 %cmp179, label %land.lhs.true.180, label %if.end.192

land.lhs.true.180:                                ; preds = %land.lhs.true.177
  %138 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %138, i32 0, i32 59
  %139 = load %struct.Picture*, %struct.Picture** %currentPicture181, align 8
  %idr_flag182 = getelementptr inbounds %struct.Picture, %struct.Picture* %139, i32 0, i32 1
  %140 = load i32, i32* %idr_flag182, align 4
  %tobool183 = icmp ne i32 %140, 0
  br i1 %tobool183, label %if.end.192, label %if.then.184

if.then.184:                                      ; preds = %land.lhs.true.180
  %mb_addr185 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %141 = load i32, i32* %mb_addr185, align 4
  %idxprom186 = sext i32 %141 to i64
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 63
  %143 = load i32*, i32** %intra_block187, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %143, i64 %idxprom186
  %144 = load i32, i32* %arrayidx188, align 4
  %available189 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %145 = load i32, i32* %available189, align 4
  %and190 = and i32 %145, %144
  store i32 %and190, i32* %available189, align 4
  %146 = load i32, i32* %cnt, align 4
  %dec191 = add nsw i32 %146, -1
  store i32 %dec191, i32* %cnt, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.184, %land.lhs.true.180, %land.lhs.true.177, %land.lhs.true.174, %land.lhs.true.171, %lor.lhs.false.168
  %available193 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 0
  %147 = load i32, i32* %available193, align 4
  %tobool194 = icmp ne i32 %147, 0
  br i1 %tobool194, label %if.then.195, label %if.end.209

if.then.195:                                      ; preds = %if.end.192
  %148 = load i32, i32* %j_off, align 4
  %y196 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 3
  %149 = load i32, i32* %y196, align 4
  %add197 = add nsw i32 %148, %149
  %idxprom198 = sext i32 %add197 to i64
  %x199 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 2
  %150 = load i32, i32* %x199, align 4
  %idxprom200 = sext i32 %150 to i64
  %mb_addr201 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix, i32 0, i32 1
  %151 = load i32, i32* %mb_addr201, align 4
  %idxprom202 = sext i32 %151 to i64
  %152 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %152, i32 0, i32 34
  %153 = load i32***, i32**** %nz_coeff203, align 8
  %arrayidx204 = getelementptr inbounds i32**, i32*** %153, i64 %idxprom202
  %154 = load i32**, i32*** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i32*, i32** %154, i64 %idxprom200
  %155 = load i32*, i32** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %155, i64 %idxprom198
  %156 = load i32, i32* %arrayidx206, align 4
  %157 = load i32, i32* %pred_nnz, align 4
  %add207 = add nsw i32 %157, %156
  store i32 %add207, i32* %pred_nnz, align 4
  %158 = load i32, i32* %cnt, align 4
  %inc208 = add nsw i32 %158, 1
  store i32 %inc208, i32* %cnt, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.195, %if.end.192
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.103
  %159 = load i32, i32* %cnt, align 4
  %cmp211 = icmp eq i32 %159, 2
  br i1 %cmp211, label %if.then.212, label %if.end.215

if.then.212:                                      ; preds = %if.end.210
  %160 = load i32, i32* %pred_nnz, align 4
  %inc213 = add nsw i32 %160, 1
  store i32 %inc213, i32* %pred_nnz, align 4
  %161 = load i32, i32* %pred_nnz, align 4
  %shr214 = ashr i32 %161, 1
  store i32 %shr214, i32* %pred_nnz, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.212, %if.end.210
  %162 = load i32, i32* %pred_nnz, align 4
  ret i32 %162
}

declare void @getChroma4x4Neighbour(i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

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

declare i32 @writeSyntaxElement_NumCoeffTrailingOnes(%struct.syntaxelement*, %struct.datapartition*) #1

declare i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i32 @writeSyntaxElement_VLC(%struct.syntaxelement*, %struct.datapartition*) #1

declare i32 @writeSyntaxElement_Level_VLC1(%struct.syntaxelement*, %struct.datapartition*, i32) #1

declare i32 @writeSyntaxElement_Level_VLCN(%struct.syntaxelement*, i32, %struct.datapartition*, i32) #1

declare i32 @writeSyntaxElement_TotalZeros(%struct.syntaxelement*, %struct.datapartition*) #1

declare i32 @writeSyntaxElement_TotalZerosChromaDC(%struct.syntaxelement*, %struct.datapartition*) #1

declare i32 @writeSyntaxElement_Run(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: nounwind uwtable
define i32 @find_sad_16x16(i32* %intra_mode) #0 {
entry:
  %intra_mode.addr = alloca i32*, align 8
  %current_intra_sad_2 = alloca i32, align 4
  %best_intra_sad2 = alloca i32, align 4
  %M1 = alloca [16 x [16 x i32]], align 16
  %M0 = alloca [4 x [4 x [4 x [4 x i32]]]], align 16
  %M3 = alloca [4 x i32], align 16
  %M4 = alloca [4 x [4 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [17 x %struct.pix_pos], align 16
  %up_avail = alloca i32, align 4
  %left_avail = alloca i32, align 4
  %left_up_avail = alloca i32, align 4
  store i32* %intra_mode, i32** %intra_mode.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  store i32 %1, i32* %mb_nr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %4 = load i32, i32* %mb_nr, align 4
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom
  call void %3(i32 %4, i32 -1, i32 %sub, i32 0, %struct.pix_pos* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %9 = load i32, i32* %mb_nr, align 4
  call void %8(i32 %9, i32 0, i32 -1, i32 0, %struct.pix_pos* %up)
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 23
  %11 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %12 = load i32, i32* %available, align 4
  store i32 %12, i32* %up_avail, align 4
  %arrayidx1 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 1
  %available2 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx1, i32 0, i32 0
  %13 = load i32, i32* %available2, align 4
  store i32 %13, i32* %left_avail, align 4
  %arrayidx3 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %available4 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx3, i32 0, i32 0
  %14 = load i32, i32* %available4, align 4
  store i32 %14, i32* %left_up_avail, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %available5 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %15 = load i32, i32* %available5, align 4
  %tobool6 = icmp ne i32 %15, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 1
  %16 = load i32, i32* %mb_addr, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 63
  %18 = load i32*, i32** %intra_block, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %18, i64 %idxprom7
  %19 = load i32, i32* %arrayidx8, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %up_avail, align 4
  store i32 1, i32* %i, align 4
  store i32 1, i32* %left_avail, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.26, %cond.end
  %20 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %20, 17
  br i1 %cmp10, label %for.body.11, label %for.end.28

for.body.11:                                      ; preds = %for.cond.9
  %21 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom12
  %available14 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx13, i32 0, i32 0
  %22 = load i32, i32* %available14, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.23

cond.true.16:                                     ; preds = %for.body.11
  %23 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom17
  %mb_addr19 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx18, i32 0, i32 1
  %24 = load i32, i32* %mb_addr19, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 63
  %26 = load i32*, i32** %intra_block21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %26, i64 %idxprom20
  %27 = load i32, i32* %arrayidx22, align 4
  br label %cond.end.24

cond.false.23:                                    ; preds = %for.body.11
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.16
  %cond25 = phi i32 [ %27, %cond.true.16 ], [ 0, %cond.false.23 ]
  %28 = load i32, i32* %left_avail, align 4
  %and = and i32 %28, %cond25
  store i32 %and, i32* %left_avail, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %cond.end.24
  %29 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %29, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.9

for.end.28:                                       ; preds = %for.cond.9
  %arrayidx29 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %available30 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx29, i32 0, i32 0
  %30 = load i32, i32* %available30, align 4
  %tobool31 = icmp ne i32 %30, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false.38

cond.true.32:                                     ; preds = %for.end.28
  %arrayidx33 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %mb_addr34 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx33, i32 0, i32 1
  %31 = load i32, i32* %mb_addr34, align 4
  %idxprom35 = sext i32 %31 to i64
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 63
  %33 = load i32*, i32** %intra_block36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %33, i64 %idxprom35
  %34 = load i32, i32* %arrayidx37, align 4
  br label %cond.end.39

cond.false.38:                                    ; preds = %for.end.28
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.32
  %cond40 = phi i32 [ %34, %cond.true.32 ], [ 0, %cond.false.38 ]
  store i32 %cond40, i32* %left_up_avail, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.39, %if.then
  store i32 999999, i32* %best_intra_sad2, align 4
  %35 = load i32*, i32** %intra_mode.addr, align 8
  store i32 2, i32* %35, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.545, %if.end
  %36 = load i32, i32* %k, align 4
  %cmp42 = icmp slt i32 %36, 4
  br i1 %cmp42, label %for.body.43, label %for.end.547

for.body.43:                                      ; preds = %for.cond.41
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraDisableInterOnly = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 84
  %38 = load i32, i32* %IntraDisableInterOnly, align 4
  %cmp44 = icmp eq i32 %38, 0
  br i1 %cmp44, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.43
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 5
  %40 = load i32, i32* %type, align 4
  %cmp45 = icmp ne i32 %40, 2
  br i1 %cmp45, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %lor.lhs.false, %for.body.43
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Intra16x16ParDisable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 88
  %42 = load i32, i32* %Intra16x16ParDisable, align 4
  %tobool47 = icmp ne i32 %42, 0
  br i1 %tobool47, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.then.46
  %43 = load i32, i32* %k, align 4
  %cmp48 = icmp eq i32 %43, 0
  br i1 %cmp48, label %if.then.51, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %land.lhs.true
  %44 = load i32, i32* %k, align 4
  %cmp50 = icmp eq i32 %44, 1
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %lor.lhs.false.49, %land.lhs.true
  br label %for.inc.545

if.end.52:                                        ; preds = %lor.lhs.false.49, %if.then.46
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Intra16x16PlaneDisable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 89
  %46 = load i32, i32* %Intra16x16PlaneDisable, align 4
  %tobool53 = icmp ne i32 %46, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.57

land.lhs.true.54:                                 ; preds = %if.end.52
  %47 = load i32, i32* %k, align 4
  %cmp55 = icmp eq i32 %47, 3
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.54
  br label %for.inc.545

if.end.57:                                        ; preds = %land.lhs.true.54, %if.end.52
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %lor.lhs.false
  %48 = load i32, i32* %k, align 4
  %cmp59 = icmp eq i32 %48, 0
  br i1 %cmp59, label %land.lhs.true.60, label %lor.lhs.false.62

land.lhs.true.60:                                 ; preds = %if.end.58
  %49 = load i32, i32* %up_avail, align 4
  %tobool61 = icmp ne i32 %49, 0
  br i1 %tobool61, label %lor.lhs.false.62, label %if.then.74

lor.lhs.false.62:                                 ; preds = %land.lhs.true.60, %if.end.58
  %50 = load i32, i32* %k, align 4
  %cmp63 = icmp eq i32 %50, 1
  br i1 %cmp63, label %land.lhs.true.64, label %lor.lhs.false.66

land.lhs.true.64:                                 ; preds = %lor.lhs.false.62
  %51 = load i32, i32* %left_avail, align 4
  %tobool65 = icmp ne i32 %51, 0
  br i1 %tobool65, label %lor.lhs.false.66, label %if.then.74

lor.lhs.false.66:                                 ; preds = %land.lhs.true.64, %lor.lhs.false.62
  %52 = load i32, i32* %k, align 4
  %cmp67 = icmp eq i32 %52, 3
  br i1 %cmp67, label %land.lhs.true.68, label %if.else.75

land.lhs.true.68:                                 ; preds = %lor.lhs.false.66
  %53 = load i32, i32* %left_avail, align 4
  %tobool69 = icmp ne i32 %53, 0
  br i1 %tobool69, label %lor.lhs.false.70, label %if.then.74

lor.lhs.false.70:                                 ; preds = %land.lhs.true.68
  %54 = load i32, i32* %up_avail, align 4
  %tobool71 = icmp ne i32 %54, 0
  br i1 %tobool71, label %lor.lhs.false.72, label %if.then.74

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.70
  %55 = load i32, i32* %left_up_avail, align 4
  %tobool73 = icmp ne i32 %55, 0
  br i1 %tobool73, label %if.else.75, label %if.then.74

if.then.74:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false.70, %land.lhs.true.68, %land.lhs.true.64, %land.lhs.true.60
  br label %if.end.544

if.else.75:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false.66
  store i32 0, i32* %j, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.117, %if.else.75
  %56 = load i32, i32* %j, align 4
  %cmp77 = icmp slt i32 %56, 16
  br i1 %cmp77, label %for.body.78, label %for.end.119

for.body.78:                                      ; preds = %for.cond.76
  store i32 0, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.114, %for.body.78
  %57 = load i32, i32* %i, align 4
  %cmp80 = icmp slt i32 %57, 16
  br i1 %cmp80, label %for.body.81, label %for.end.116

for.body.81:                                      ; preds = %for.cond.79
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 43
  %59 = load i32, i32* %opix_x, align 4
  %60 = load i32, i32* %i, align 4
  %add = add nsw i32 %59, %60
  %idxprom82 = sext i32 %add to i64
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 44
  %62 = load i32, i32* %opix_y, align 4
  %63 = load i32, i32* %j, align 4
  %add83 = add nsw i32 %62, %63
  %idxprom84 = sext i32 %add83 to i64
  %64 = load i16**, i16*** @imgY_org, align 8
  %arrayidx85 = getelementptr inbounds i16*, i16** %64, i64 %idxprom84
  %65 = load i16*, i16** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %65, i64 %idxprom82
  %66 = load i16, i16* %arrayidx86, align 2
  %conv = zext i16 %66 to i32
  %67 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %67 to i64
  %68 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %68 to i64
  %69 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %69 to i64
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 48
  %arrayidx90 = getelementptr inbounds [5 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]]* %mprr_2, i32 0, i64 %idxprom89
  %arrayidx91 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx90, i32 0, i64 %idxprom88
  %arrayidx92 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx91, i32 0, i64 %idxprom87
  %71 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %71 to i32
  %sub94 = sub nsw i32 %conv, %conv93
  %72 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %72 to i64
  %73 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %73 to i64
  %arrayidx97 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %M1, i32 0, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx97, i32 0, i64 %idxprom95
  store i32 %sub94, i32* %arrayidx98, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %74 to i64
  %75 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %75 to i64
  %arrayidx101 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %M1, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx101, i32 0, i64 %idxprom99
  %76 = load i32, i32* %arrayidx102, align 4
  %77 = load i32, i32* %j, align 4
  %shr = ashr i32 %77, 2
  %idxprom103 = sext i32 %shr to i64
  %78 = load i32, i32* %j, align 4
  %and104 = and i32 %78, 3
  %idxprom105 = sext i32 %and104 to i64
  %79 = load i32, i32* %i, align 4
  %shr106 = ashr i32 %79, 2
  %idxprom107 = sext i32 %shr106 to i64
  %80 = load i32, i32* %i, align 4
  %and108 = and i32 %80, 3
  %idxprom109 = sext i32 %and108 to i64
  %arrayidx110 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom109
  %arrayidx111 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx110, i32 0, i64 %idxprom107
  %arrayidx112 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx111, i32 0, i64 %idxprom105
  %arrayidx113 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx112, i32 0, i64 %idxprom103
  store i32 %76, i32* %arrayidx113, align 4
  br label %for.inc.114

for.inc.114:                                      ; preds = %for.body.81
  %81 = load i32, i32* %i, align 4
  %inc115 = add nsw i32 %81, 1
  store i32 %inc115, i32* %i, align 4
  br label %for.cond.79

for.end.116:                                      ; preds = %for.cond.79
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.end.116
  %82 = load i32, i32* %j, align 4
  %inc118 = add nsw i32 %82, 1
  store i32 %inc118, i32* %j, align 4
  br label %for.cond.76

for.end.119:                                      ; preds = %for.cond.76
  store i32 0, i32* %current_intra_sad_2, align 4
  store i32 0, i32* %jj, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.374, %for.end.119
  %83 = load i32, i32* %jj, align 4
  %cmp121 = icmp slt i32 %83, 4
  br i1 %cmp121, label %for.body.123, label %for.end.376

for.body.123:                                     ; preds = %for.cond.120
  store i32 0, i32* %ii, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.371, %for.body.123
  %84 = load i32, i32* %ii, align 4
  %cmp125 = icmp slt i32 %84, 4
  br i1 %cmp125, label %for.body.127, label %for.end.373

for.body.127:                                     ; preds = %for.cond.124
  store i32 0, i32* %j, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.236, %for.body.127
  %85 = load i32, i32* %j, align 4
  %cmp129 = icmp slt i32 %85, 4
  br i1 %cmp129, label %for.body.131, label %for.end.238

for.body.131:                                     ; preds = %for.cond.128
  %86 = load i32, i32* %jj, align 4
  %idxprom132 = sext i32 %86 to i64
  %87 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %87 to i64
  %88 = load i32, i32* %ii, align 4
  %idxprom134 = sext i32 %88 to i64
  %arrayidx135 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 0
  %arrayidx136 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx135, i32 0, i64 %idxprom134
  %arrayidx137 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx136, i32 0, i64 %idxprom133
  %arrayidx138 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx137, i32 0, i64 %idxprom132
  %89 = load i32, i32* %arrayidx138, align 4
  %90 = load i32, i32* %jj, align 4
  %idxprom139 = sext i32 %90 to i64
  %91 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %91 to i64
  %92 = load i32, i32* %ii, align 4
  %idxprom141 = sext i32 %92 to i64
  %arrayidx142 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 3
  %arrayidx143 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx142, i32 0, i64 %idxprom141
  %arrayidx144 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx143, i32 0, i64 %idxprom140
  %arrayidx145 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx144, i32 0, i64 %idxprom139
  %93 = load i32, i32* %arrayidx145, align 4
  %add146 = add nsw i32 %89, %93
  %arrayidx147 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  store i32 %add146, i32* %arrayidx147, align 4
  %94 = load i32, i32* %jj, align 4
  %idxprom148 = sext i32 %94 to i64
  %95 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %95 to i64
  %96 = load i32, i32* %ii, align 4
  %idxprom150 = sext i32 %96 to i64
  %arrayidx151 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 1
  %arrayidx152 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx151, i32 0, i64 %idxprom150
  %arrayidx153 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx152, i32 0, i64 %idxprom149
  %arrayidx154 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx153, i32 0, i64 %idxprom148
  %97 = load i32, i32* %arrayidx154, align 4
  %98 = load i32, i32* %jj, align 4
  %idxprom155 = sext i32 %98 to i64
  %99 = load i32, i32* %j, align 4
  %idxprom156 = sext i32 %99 to i64
  %100 = load i32, i32* %ii, align 4
  %idxprom157 = sext i32 %100 to i64
  %arrayidx158 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 2
  %arrayidx159 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx158, i32 0, i64 %idxprom157
  %arrayidx160 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx159, i32 0, i64 %idxprom156
  %arrayidx161 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx160, i32 0, i64 %idxprom155
  %101 = load i32, i32* %arrayidx161, align 4
  %add162 = add nsw i32 %97, %101
  %arrayidx163 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  store i32 %add162, i32* %arrayidx163, align 4
  %102 = load i32, i32* %jj, align 4
  %idxprom164 = sext i32 %102 to i64
  %103 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %103 to i64
  %104 = load i32, i32* %ii, align 4
  %idxprom166 = sext i32 %104 to i64
  %arrayidx167 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 1
  %arrayidx168 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx167, i32 0, i64 %idxprom166
  %arrayidx169 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx168, i32 0, i64 %idxprom165
  %arrayidx170 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx169, i32 0, i64 %idxprom164
  %105 = load i32, i32* %arrayidx170, align 4
  %106 = load i32, i32* %jj, align 4
  %idxprom171 = sext i32 %106 to i64
  %107 = load i32, i32* %j, align 4
  %idxprom172 = sext i32 %107 to i64
  %108 = load i32, i32* %ii, align 4
  %idxprom173 = sext i32 %108 to i64
  %arrayidx174 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 2
  %arrayidx175 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx174, i32 0, i64 %idxprom173
  %arrayidx176 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx175, i32 0, i64 %idxprom172
  %arrayidx177 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx176, i32 0, i64 %idxprom171
  %109 = load i32, i32* %arrayidx177, align 4
  %sub178 = sub nsw i32 %105, %109
  %arrayidx179 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  store i32 %sub178, i32* %arrayidx179, align 4
  %110 = load i32, i32* %jj, align 4
  %idxprom180 = sext i32 %110 to i64
  %111 = load i32, i32* %j, align 4
  %idxprom181 = sext i32 %111 to i64
  %112 = load i32, i32* %ii, align 4
  %idxprom182 = sext i32 %112 to i64
  %arrayidx183 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 0
  %arrayidx184 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx183, i32 0, i64 %idxprom182
  %arrayidx185 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx184, i32 0, i64 %idxprom181
  %arrayidx186 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx185, i32 0, i64 %idxprom180
  %113 = load i32, i32* %arrayidx186, align 4
  %114 = load i32, i32* %jj, align 4
  %idxprom187 = sext i32 %114 to i64
  %115 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %115 to i64
  %116 = load i32, i32* %ii, align 4
  %idxprom189 = sext i32 %116 to i64
  %arrayidx190 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 3
  %arrayidx191 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx190, i32 0, i64 %idxprom189
  %arrayidx192 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx191, i32 0, i64 %idxprom188
  %arrayidx193 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx192, i32 0, i64 %idxprom187
  %117 = load i32, i32* %arrayidx193, align 4
  %sub194 = sub nsw i32 %113, %117
  %arrayidx195 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  store i32 %sub194, i32* %arrayidx195, align 4
  %arrayidx196 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  %118 = load i32, i32* %arrayidx196, align 4
  %arrayidx197 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  %119 = load i32, i32* %arrayidx197, align 4
  %add198 = add nsw i32 %118, %119
  %120 = load i32, i32* %jj, align 4
  %idxprom199 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom200 = sext i32 %121 to i64
  %122 = load i32, i32* %ii, align 4
  %idxprom201 = sext i32 %122 to i64
  %arrayidx202 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 0
  %arrayidx203 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx202, i32 0, i64 %idxprom201
  %arrayidx204 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx203, i32 0, i64 %idxprom200
  %arrayidx205 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx204, i32 0, i64 %idxprom199
  store i32 %add198, i32* %arrayidx205, align 4
  %arrayidx206 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  %123 = load i32, i32* %arrayidx206, align 4
  %arrayidx207 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  %124 = load i32, i32* %arrayidx207, align 4
  %sub208 = sub nsw i32 %123, %124
  %125 = load i32, i32* %jj, align 4
  %idxprom209 = sext i32 %125 to i64
  %126 = load i32, i32* %j, align 4
  %idxprom210 = sext i32 %126 to i64
  %127 = load i32, i32* %ii, align 4
  %idxprom211 = sext i32 %127 to i64
  %arrayidx212 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 2
  %arrayidx213 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx212, i32 0, i64 %idxprom211
  %arrayidx214 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx213, i32 0, i64 %idxprom210
  %arrayidx215 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx214, i32 0, i64 %idxprom209
  store i32 %sub208, i32* %arrayidx215, align 4
  %arrayidx216 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  %128 = load i32, i32* %arrayidx216, align 4
  %arrayidx217 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  %129 = load i32, i32* %arrayidx217, align 4
  %add218 = add nsw i32 %128, %129
  %130 = load i32, i32* %jj, align 4
  %idxprom219 = sext i32 %130 to i64
  %131 = load i32, i32* %j, align 4
  %idxprom220 = sext i32 %131 to i64
  %132 = load i32, i32* %ii, align 4
  %idxprom221 = sext i32 %132 to i64
  %arrayidx222 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 1
  %arrayidx223 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx222, i32 0, i64 %idxprom221
  %arrayidx224 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx223, i32 0, i64 %idxprom220
  %arrayidx225 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx224, i32 0, i64 %idxprom219
  store i32 %add218, i32* %arrayidx225, align 4
  %arrayidx226 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  %133 = load i32, i32* %arrayidx226, align 4
  %arrayidx227 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  %134 = load i32, i32* %arrayidx227, align 4
  %sub228 = sub nsw i32 %133, %134
  %135 = load i32, i32* %jj, align 4
  %idxprom229 = sext i32 %135 to i64
  %136 = load i32, i32* %j, align 4
  %idxprom230 = sext i32 %136 to i64
  %137 = load i32, i32* %ii, align 4
  %idxprom231 = sext i32 %137 to i64
  %arrayidx232 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 3
  %arrayidx233 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx232, i32 0, i64 %idxprom231
  %arrayidx234 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx233, i32 0, i64 %idxprom230
  %arrayidx235 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx234, i32 0, i64 %idxprom229
  store i32 %sub228, i32* %arrayidx235, align 4
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.body.131
  %138 = load i32, i32* %j, align 4
  %inc237 = add nsw i32 %138, 1
  store i32 %inc237, i32* %j, align 4
  br label %for.cond.128

for.end.238:                                      ; preds = %for.cond.128
  store i32 0, i32* %i, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.368, %for.end.238
  %139 = load i32, i32* %i, align 4
  %cmp240 = icmp slt i32 %139, 4
  br i1 %cmp240, label %for.body.242, label %for.end.370

for.body.242:                                     ; preds = %for.cond.239
  %140 = load i32, i32* %jj, align 4
  %idxprom243 = sext i32 %140 to i64
  %141 = load i32, i32* %ii, align 4
  %idxprom244 = sext i32 %141 to i64
  %142 = load i32, i32* %i, align 4
  %idxprom245 = sext i32 %142 to i64
  %arrayidx246 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom245
  %arrayidx247 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx246, i32 0, i64 %idxprom244
  %arrayidx248 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx247, i32 0, i64 0
  %arrayidx249 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx248, i32 0, i64 %idxprom243
  %143 = load i32, i32* %arrayidx249, align 4
  %144 = load i32, i32* %jj, align 4
  %idxprom250 = sext i32 %144 to i64
  %145 = load i32, i32* %ii, align 4
  %idxprom251 = sext i32 %145 to i64
  %146 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %146 to i64
  %arrayidx253 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom252
  %arrayidx254 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx253, i32 0, i64 %idxprom251
  %arrayidx255 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx254, i32 0, i64 3
  %arrayidx256 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx255, i32 0, i64 %idxprom250
  %147 = load i32, i32* %arrayidx256, align 4
  %add257 = add nsw i32 %143, %147
  %arrayidx258 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  store i32 %add257, i32* %arrayidx258, align 4
  %148 = load i32, i32* %jj, align 4
  %idxprom259 = sext i32 %148 to i64
  %149 = load i32, i32* %ii, align 4
  %idxprom260 = sext i32 %149 to i64
  %150 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %150 to i64
  %arrayidx262 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx262, i32 0, i64 %idxprom260
  %arrayidx264 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx263, i32 0, i64 1
  %arrayidx265 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx264, i32 0, i64 %idxprom259
  %151 = load i32, i32* %arrayidx265, align 4
  %152 = load i32, i32* %jj, align 4
  %idxprom266 = sext i32 %152 to i64
  %153 = load i32, i32* %ii, align 4
  %idxprom267 = sext i32 %153 to i64
  %154 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %154 to i64
  %arrayidx269 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom268
  %arrayidx270 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx269, i32 0, i64 %idxprom267
  %arrayidx271 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx270, i32 0, i64 2
  %arrayidx272 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx271, i32 0, i64 %idxprom266
  %155 = load i32, i32* %arrayidx272, align 4
  %add273 = add nsw i32 %151, %155
  %arrayidx274 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  store i32 %add273, i32* %arrayidx274, align 4
  %156 = load i32, i32* %jj, align 4
  %idxprom275 = sext i32 %156 to i64
  %157 = load i32, i32* %ii, align 4
  %idxprom276 = sext i32 %157 to i64
  %158 = load i32, i32* %i, align 4
  %idxprom277 = sext i32 %158 to i64
  %arrayidx278 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom277
  %arrayidx279 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx278, i32 0, i64 %idxprom276
  %arrayidx280 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx279, i32 0, i64 1
  %arrayidx281 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx280, i32 0, i64 %idxprom275
  %159 = load i32, i32* %arrayidx281, align 4
  %160 = load i32, i32* %jj, align 4
  %idxprom282 = sext i32 %160 to i64
  %161 = load i32, i32* %ii, align 4
  %idxprom283 = sext i32 %161 to i64
  %162 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %162 to i64
  %arrayidx285 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom284
  %arrayidx286 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx285, i32 0, i64 %idxprom283
  %arrayidx287 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx286, i32 0, i64 2
  %arrayidx288 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx287, i32 0, i64 %idxprom282
  %163 = load i32, i32* %arrayidx288, align 4
  %sub289 = sub nsw i32 %159, %163
  %arrayidx290 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  store i32 %sub289, i32* %arrayidx290, align 4
  %164 = load i32, i32* %jj, align 4
  %idxprom291 = sext i32 %164 to i64
  %165 = load i32, i32* %ii, align 4
  %idxprom292 = sext i32 %165 to i64
  %166 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %166 to i64
  %arrayidx294 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom293
  %arrayidx295 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx294, i32 0, i64 %idxprom292
  %arrayidx296 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx295, i32 0, i64 0
  %arrayidx297 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx296, i32 0, i64 %idxprom291
  %167 = load i32, i32* %arrayidx297, align 4
  %168 = load i32, i32* %jj, align 4
  %idxprom298 = sext i32 %168 to i64
  %169 = load i32, i32* %ii, align 4
  %idxprom299 = sext i32 %169 to i64
  %170 = load i32, i32* %i, align 4
  %idxprom300 = sext i32 %170 to i64
  %arrayidx301 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom300
  %arrayidx302 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx301, i32 0, i64 %idxprom299
  %arrayidx303 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx302, i32 0, i64 3
  %arrayidx304 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx303, i32 0, i64 %idxprom298
  %171 = load i32, i32* %arrayidx304, align 4
  %sub305 = sub nsw i32 %167, %171
  %arrayidx306 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  store i32 %sub305, i32* %arrayidx306, align 4
  %arrayidx307 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  %172 = load i32, i32* %arrayidx307, align 4
  %arrayidx308 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  %173 = load i32, i32* %arrayidx308, align 4
  %add309 = add nsw i32 %172, %173
  %174 = load i32, i32* %jj, align 4
  %idxprom310 = sext i32 %174 to i64
  %175 = load i32, i32* %ii, align 4
  %idxprom311 = sext i32 %175 to i64
  %176 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %176 to i64
  %arrayidx313 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom312
  %arrayidx314 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx313, i32 0, i64 %idxprom311
  %arrayidx315 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx314, i32 0, i64 0
  %arrayidx316 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx315, i32 0, i64 %idxprom310
  store i32 %add309, i32* %arrayidx316, align 4
  %arrayidx317 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  %177 = load i32, i32* %arrayidx317, align 4
  %arrayidx318 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  %178 = load i32, i32* %arrayidx318, align 4
  %sub319 = sub nsw i32 %177, %178
  %179 = load i32, i32* %jj, align 4
  %idxprom320 = sext i32 %179 to i64
  %180 = load i32, i32* %ii, align 4
  %idxprom321 = sext i32 %180 to i64
  %181 = load i32, i32* %i, align 4
  %idxprom322 = sext i32 %181 to i64
  %arrayidx323 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom322
  %arrayidx324 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx323, i32 0, i64 %idxprom321
  %arrayidx325 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx324, i32 0, i64 2
  %arrayidx326 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx325, i32 0, i64 %idxprom320
  store i32 %sub319, i32* %arrayidx326, align 4
  %arrayidx327 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  %182 = load i32, i32* %arrayidx327, align 4
  %arrayidx328 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  %183 = load i32, i32* %arrayidx328, align 4
  %add329 = add nsw i32 %182, %183
  %184 = load i32, i32* %jj, align 4
  %idxprom330 = sext i32 %184 to i64
  %185 = load i32, i32* %ii, align 4
  %idxprom331 = sext i32 %185 to i64
  %186 = load i32, i32* %i, align 4
  %idxprom332 = sext i32 %186 to i64
  %arrayidx333 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom332
  %arrayidx334 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx333, i32 0, i64 %idxprom331
  %arrayidx335 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx334, i32 0, i64 1
  %arrayidx336 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx335, i32 0, i64 %idxprom330
  store i32 %add329, i32* %arrayidx336, align 4
  %arrayidx337 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  %187 = load i32, i32* %arrayidx337, align 4
  %arrayidx338 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  %188 = load i32, i32* %arrayidx338, align 4
  %sub339 = sub nsw i32 %187, %188
  %189 = load i32, i32* %jj, align 4
  %idxprom340 = sext i32 %189 to i64
  %190 = load i32, i32* %ii, align 4
  %idxprom341 = sext i32 %190 to i64
  %191 = load i32, i32* %i, align 4
  %idxprom342 = sext i32 %191 to i64
  %arrayidx343 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom342
  %arrayidx344 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx343, i32 0, i64 %idxprom341
  %arrayidx345 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx344, i32 0, i64 3
  %arrayidx346 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx345, i32 0, i64 %idxprom340
  store i32 %sub339, i32* %arrayidx346, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.347

for.cond.347:                                     ; preds = %for.inc.365, %for.body.242
  %192 = load i32, i32* %j, align 4
  %cmp348 = icmp slt i32 %192, 4
  br i1 %cmp348, label %for.body.350, label %for.end.367

for.body.350:                                     ; preds = %for.cond.347
  %193 = load i32, i32* %i, align 4
  %194 = load i32, i32* %j, align 4
  %add351 = add nsw i32 %193, %194
  %cmp352 = icmp ne i32 %add351, 0
  br i1 %cmp352, label %if.then.354, label %if.end.364

if.then.354:                                      ; preds = %for.body.350
  %195 = load i32, i32* %jj, align 4
  %idxprom355 = sext i32 %195 to i64
  %196 = load i32, i32* %j, align 4
  %idxprom356 = sext i32 %196 to i64
  %197 = load i32, i32* %ii, align 4
  %idxprom357 = sext i32 %197 to i64
  %198 = load i32, i32* %i, align 4
  %idxprom358 = sext i32 %198 to i64
  %arrayidx359 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 %idxprom358
  %arrayidx360 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx359, i32 0, i64 %idxprom357
  %arrayidx361 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx360, i32 0, i64 %idxprom356
  %arrayidx362 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx361, i32 0, i64 %idxprom355
  %199 = load i32, i32* %arrayidx362, align 4
  %call = call i32 @iabs(i32 %199)
  %200 = load i32, i32* %current_intra_sad_2, align 4
  %add363 = add nsw i32 %200, %call
  store i32 %add363, i32* %current_intra_sad_2, align 4
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.354, %for.body.350
  br label %for.inc.365

for.inc.365:                                      ; preds = %if.end.364
  %201 = load i32, i32* %j, align 4
  %inc366 = add nsw i32 %201, 1
  store i32 %inc366, i32* %j, align 4
  br label %for.cond.347

for.end.367:                                      ; preds = %for.cond.347
  br label %for.inc.368

for.inc.368:                                      ; preds = %for.end.367
  %202 = load i32, i32* %i, align 4
  %inc369 = add nsw i32 %202, 1
  store i32 %inc369, i32* %i, align 4
  br label %for.cond.239

for.end.370:                                      ; preds = %for.cond.239
  br label %for.inc.371

for.inc.371:                                      ; preds = %for.end.370
  %203 = load i32, i32* %ii, align 4
  %inc372 = add nsw i32 %203, 1
  store i32 %inc372, i32* %ii, align 4
  br label %for.cond.124

for.end.373:                                      ; preds = %for.cond.124
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.end.373
  %204 = load i32, i32* %jj, align 4
  %inc375 = add nsw i32 %204, 1
  store i32 %inc375, i32* %jj, align 4
  br label %for.cond.120

for.end.376:                                      ; preds = %for.cond.120
  store i32 0, i32* %j, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.398, %for.end.376
  %205 = load i32, i32* %j, align 4
  %cmp378 = icmp slt i32 %205, 4
  br i1 %cmp378, label %for.body.380, label %for.end.400

for.body.380:                                     ; preds = %for.cond.377
  store i32 0, i32* %i, align 4
  br label %for.cond.381

for.cond.381:                                     ; preds = %for.inc.395, %for.body.380
  %206 = load i32, i32* %i, align 4
  %cmp382 = icmp slt i32 %206, 4
  br i1 %cmp382, label %for.body.384, label %for.end.397

for.body.384:                                     ; preds = %for.cond.381
  %207 = load i32, i32* %j, align 4
  %idxprom385 = sext i32 %207 to i64
  %208 = load i32, i32* %i, align 4
  %idxprom386 = sext i32 %208 to i64
  %arrayidx387 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]], [4 x [4 x [4 x [4 x i32]]]]* %M0, i32 0, i64 0
  %arrayidx388 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx387, i32 0, i64 %idxprom386
  %arrayidx389 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx388, i32 0, i64 0
  %arrayidx390 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx389, i32 0, i64 %idxprom385
  %209 = load i32, i32* %arrayidx390, align 4
  %div = sdiv i32 %209, 4
  %210 = load i32, i32* %i, align 4
  %idxprom391 = sext i32 %210 to i64
  %211 = load i32, i32* %j, align 4
  %idxprom392 = sext i32 %211 to i64
  %arrayidx393 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom392
  %arrayidx394 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx393, i32 0, i64 %idxprom391
  store i32 %div, i32* %arrayidx394, align 4
  br label %for.inc.395

for.inc.395:                                      ; preds = %for.body.384
  %212 = load i32, i32* %i, align 4
  %inc396 = add nsw i32 %212, 1
  store i32 %inc396, i32* %i, align 4
  br label %for.cond.381

for.end.397:                                      ; preds = %for.cond.381
  br label %for.inc.398

for.inc.398:                                      ; preds = %for.end.397
  %213 = load i32, i32* %j, align 4
  %inc399 = add nsw i32 %213, 1
  store i32 %inc399, i32* %j, align 4
  br label %for.cond.377

for.end.400:                                      ; preds = %for.cond.377
  store i32 0, i32* %j, align 4
  br label %for.cond.401

for.cond.401:                                     ; preds = %for.inc.461, %for.end.400
  %214 = load i32, i32* %j, align 4
  %cmp402 = icmp slt i32 %214, 4
  br i1 %cmp402, label %for.body.404, label %for.end.463

for.body.404:                                     ; preds = %for.cond.401
  %215 = load i32, i32* %j, align 4
  %idxprom405 = sext i32 %215 to i64
  %arrayidx406 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom405
  %arrayidx407 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx406, i32 0, i64 0
  %216 = load i32, i32* %arrayidx407, align 4
  %217 = load i32, i32* %j, align 4
  %idxprom408 = sext i32 %217 to i64
  %arrayidx409 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom408
  %arrayidx410 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx409, i32 0, i64 3
  %218 = load i32, i32* %arrayidx410, align 4
  %add411 = add nsw i32 %216, %218
  %arrayidx412 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  store i32 %add411, i32* %arrayidx412, align 4
  %219 = load i32, i32* %j, align 4
  %idxprom413 = sext i32 %219 to i64
  %arrayidx414 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom413
  %arrayidx415 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx414, i32 0, i64 1
  %220 = load i32, i32* %arrayidx415, align 4
  %221 = load i32, i32* %j, align 4
  %idxprom416 = sext i32 %221 to i64
  %arrayidx417 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom416
  %arrayidx418 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx417, i32 0, i64 2
  %222 = load i32, i32* %arrayidx418, align 4
  %add419 = add nsw i32 %220, %222
  %arrayidx420 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  store i32 %add419, i32* %arrayidx420, align 4
  %223 = load i32, i32* %j, align 4
  %idxprom421 = sext i32 %223 to i64
  %arrayidx422 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom421
  %arrayidx423 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx422, i32 0, i64 1
  %224 = load i32, i32* %arrayidx423, align 4
  %225 = load i32, i32* %j, align 4
  %idxprom424 = sext i32 %225 to i64
  %arrayidx425 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom424
  %arrayidx426 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx425, i32 0, i64 2
  %226 = load i32, i32* %arrayidx426, align 4
  %sub427 = sub nsw i32 %224, %226
  %arrayidx428 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  store i32 %sub427, i32* %arrayidx428, align 4
  %227 = load i32, i32* %j, align 4
  %idxprom429 = sext i32 %227 to i64
  %arrayidx430 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom429
  %arrayidx431 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx430, i32 0, i64 0
  %228 = load i32, i32* %arrayidx431, align 4
  %229 = load i32, i32* %j, align 4
  %idxprom432 = sext i32 %229 to i64
  %arrayidx433 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom432
  %arrayidx434 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx433, i32 0, i64 3
  %230 = load i32, i32* %arrayidx434, align 4
  %sub435 = sub nsw i32 %228, %230
  %arrayidx436 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  store i32 %sub435, i32* %arrayidx436, align 4
  %arrayidx437 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  %231 = load i32, i32* %arrayidx437, align 4
  %arrayidx438 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  %232 = load i32, i32* %arrayidx438, align 4
  %add439 = add nsw i32 %231, %232
  %233 = load i32, i32* %j, align 4
  %idxprom440 = sext i32 %233 to i64
  %arrayidx441 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom440
  %arrayidx442 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx441, i32 0, i64 0
  store i32 %add439, i32* %arrayidx442, align 4
  %arrayidx443 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  %234 = load i32, i32* %arrayidx443, align 4
  %arrayidx444 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  %235 = load i32, i32* %arrayidx444, align 4
  %sub445 = sub nsw i32 %234, %235
  %236 = load i32, i32* %j, align 4
  %idxprom446 = sext i32 %236 to i64
  %arrayidx447 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom446
  %arrayidx448 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx447, i32 0, i64 2
  store i32 %sub445, i32* %arrayidx448, align 4
  %arrayidx449 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  %237 = load i32, i32* %arrayidx449, align 4
  %arrayidx450 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  %238 = load i32, i32* %arrayidx450, align 4
  %add451 = add nsw i32 %237, %238
  %239 = load i32, i32* %j, align 4
  %idxprom452 = sext i32 %239 to i64
  %arrayidx453 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom452
  %arrayidx454 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx453, i32 0, i64 1
  store i32 %add451, i32* %arrayidx454, align 4
  %arrayidx455 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  %240 = load i32, i32* %arrayidx455, align 4
  %arrayidx456 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  %241 = load i32, i32* %arrayidx456, align 4
  %sub457 = sub nsw i32 %240, %241
  %242 = load i32, i32* %j, align 4
  %idxprom458 = sext i32 %242 to i64
  %arrayidx459 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom458
  %arrayidx460 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx459, i32 0, i64 3
  store i32 %sub457, i32* %arrayidx460, align 4
  br label %for.inc.461

for.inc.461:                                      ; preds = %for.body.404
  %243 = load i32, i32* %j, align 4
  %inc462 = add nsw i32 %243, 1
  store i32 %inc462, i32* %j, align 4
  br label %for.cond.401

for.end.463:                                      ; preds = %for.cond.401
  store i32 0, i32* %i, align 4
  br label %for.cond.464

for.cond.464:                                     ; preds = %for.inc.537, %for.end.463
  %244 = load i32, i32* %i, align 4
  %cmp465 = icmp slt i32 %244, 4
  br i1 %cmp465, label %for.body.467, label %for.end.539

for.body.467:                                     ; preds = %for.cond.464
  %245 = load i32, i32* %i, align 4
  %idxprom468 = sext i32 %245 to i64
  %arrayidx469 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 0
  %arrayidx470 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx469, i32 0, i64 %idxprom468
  %246 = load i32, i32* %arrayidx470, align 4
  %247 = load i32, i32* %i, align 4
  %idxprom471 = sext i32 %247 to i64
  %arrayidx472 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 3
  %arrayidx473 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx472, i32 0, i64 %idxprom471
  %248 = load i32, i32* %arrayidx473, align 4
  %add474 = add nsw i32 %246, %248
  %arrayidx475 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  store i32 %add474, i32* %arrayidx475, align 4
  %249 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %249 to i64
  %arrayidx477 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 1
  %arrayidx478 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx477, i32 0, i64 %idxprom476
  %250 = load i32, i32* %arrayidx478, align 4
  %251 = load i32, i32* %i, align 4
  %idxprom479 = sext i32 %251 to i64
  %arrayidx480 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 2
  %arrayidx481 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx480, i32 0, i64 %idxprom479
  %252 = load i32, i32* %arrayidx481, align 4
  %add482 = add nsw i32 %250, %252
  %arrayidx483 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  store i32 %add482, i32* %arrayidx483, align 4
  %253 = load i32, i32* %i, align 4
  %idxprom484 = sext i32 %253 to i64
  %arrayidx485 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 1
  %arrayidx486 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx485, i32 0, i64 %idxprom484
  %254 = load i32, i32* %arrayidx486, align 4
  %255 = load i32, i32* %i, align 4
  %idxprom487 = sext i32 %255 to i64
  %arrayidx488 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 2
  %arrayidx489 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx488, i32 0, i64 %idxprom487
  %256 = load i32, i32* %arrayidx489, align 4
  %sub490 = sub nsw i32 %254, %256
  %arrayidx491 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  store i32 %sub490, i32* %arrayidx491, align 4
  %257 = load i32, i32* %i, align 4
  %idxprom492 = sext i32 %257 to i64
  %arrayidx493 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 0
  %arrayidx494 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx493, i32 0, i64 %idxprom492
  %258 = load i32, i32* %arrayidx494, align 4
  %259 = load i32, i32* %i, align 4
  %idxprom495 = sext i32 %259 to i64
  %arrayidx496 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 3
  %arrayidx497 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx496, i32 0, i64 %idxprom495
  %260 = load i32, i32* %arrayidx497, align 4
  %sub498 = sub nsw i32 %258, %260
  %arrayidx499 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  store i32 %sub498, i32* %arrayidx499, align 4
  %arrayidx500 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  %261 = load i32, i32* %arrayidx500, align 4
  %arrayidx501 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  %262 = load i32, i32* %arrayidx501, align 4
  %add502 = add nsw i32 %261, %262
  %263 = load i32, i32* %i, align 4
  %idxprom503 = sext i32 %263 to i64
  %arrayidx504 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 0
  %arrayidx505 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx504, i32 0, i64 %idxprom503
  store i32 %add502, i32* %arrayidx505, align 4
  %arrayidx506 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 0
  %264 = load i32, i32* %arrayidx506, align 4
  %arrayidx507 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 1
  %265 = load i32, i32* %arrayidx507, align 4
  %sub508 = sub nsw i32 %264, %265
  %266 = load i32, i32* %i, align 4
  %idxprom509 = sext i32 %266 to i64
  %arrayidx510 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 2
  %arrayidx511 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx510, i32 0, i64 %idxprom509
  store i32 %sub508, i32* %arrayidx511, align 4
  %arrayidx512 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  %267 = load i32, i32* %arrayidx512, align 4
  %arrayidx513 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  %268 = load i32, i32* %arrayidx513, align 4
  %add514 = add nsw i32 %267, %268
  %269 = load i32, i32* %i, align 4
  %idxprom515 = sext i32 %269 to i64
  %arrayidx516 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 1
  %arrayidx517 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx516, i32 0, i64 %idxprom515
  store i32 %add514, i32* %arrayidx517, align 4
  %arrayidx518 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 3
  %270 = load i32, i32* %arrayidx518, align 4
  %arrayidx519 = getelementptr inbounds [4 x i32], [4 x i32]* %M3, i32 0, i64 2
  %271 = load i32, i32* %arrayidx519, align 4
  %sub520 = sub nsw i32 %270, %271
  %272 = load i32, i32* %i, align 4
  %idxprom521 = sext i32 %272 to i64
  %arrayidx522 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 3
  %arrayidx523 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx522, i32 0, i64 %idxprom521
  store i32 %sub520, i32* %arrayidx523, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.524

for.cond.524:                                     ; preds = %for.inc.534, %for.body.467
  %273 = load i32, i32* %j, align 4
  %cmp525 = icmp slt i32 %273, 4
  br i1 %cmp525, label %for.body.527, label %for.end.536

for.body.527:                                     ; preds = %for.cond.524
  %274 = load i32, i32* %i, align 4
  %idxprom528 = sext i32 %274 to i64
  %275 = load i32, i32* %j, align 4
  %idxprom529 = sext i32 %275 to i64
  %arrayidx530 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %M4, i32 0, i64 %idxprom529
  %arrayidx531 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx530, i32 0, i64 %idxprom528
  %276 = load i32, i32* %arrayidx531, align 4
  %call532 = call i32 @iabs(i32 %276)
  %277 = load i32, i32* %current_intra_sad_2, align 4
  %add533 = add nsw i32 %277, %call532
  store i32 %add533, i32* %current_intra_sad_2, align 4
  br label %for.inc.534

for.inc.534:                                      ; preds = %for.body.527
  %278 = load i32, i32* %j, align 4
  %inc535 = add nsw i32 %278, 1
  store i32 %inc535, i32* %j, align 4
  br label %for.cond.524

for.end.536:                                      ; preds = %for.cond.524
  br label %for.inc.537

for.inc.537:                                      ; preds = %for.end.536
  %279 = load i32, i32* %i, align 4
  %inc538 = add nsw i32 %279, 1
  store i32 %inc538, i32* %i, align 4
  br label %for.cond.464

for.end.539:                                      ; preds = %for.cond.464
  %280 = load i32, i32* %current_intra_sad_2, align 4
  %281 = load i32, i32* %best_intra_sad2, align 4
  %cmp540 = icmp slt i32 %280, %281
  br i1 %cmp540, label %if.then.542, label %if.end.543

if.then.542:                                      ; preds = %for.end.539
  %282 = load i32, i32* %current_intra_sad_2, align 4
  store i32 %282, i32* %best_intra_sad2, align 4
  %283 = load i32, i32* %k, align 4
  %284 = load i32*, i32** %intra_mode.addr, align 8
  store i32 %283, i32* %284, align 4
  br label %if.end.543

if.end.543:                                       ; preds = %if.then.542, %for.end.539
  br label %if.end.544

if.end.544:                                       ; preds = %if.end.543, %if.then.74
  br label %for.inc.545

for.inc.545:                                      ; preds = %if.end.544, %if.then.56, %if.then.51
  %285 = load i32, i32* %k, align 4
  %inc546 = add nsw i32 %285, 1
  store i32 %inc546, i32* %k, align 4
  br label %for.cond.41

for.end.547:                                      ; preds = %for.cond.41
  %286 = load i32, i32* %best_intra_sad2, align 4
  %div548 = sdiv i32 %286, 2
  store i32 %div548, i32* %best_intra_sad2, align 4
  %287 = load i32, i32* %best_intra_sad2, align 4
  ret i32 %287
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #2 {
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
define internal i32 @imin(i32 %a, i32 %b) #2 {
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

declare i16* @UMVLine8X_chroma(i16****, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
