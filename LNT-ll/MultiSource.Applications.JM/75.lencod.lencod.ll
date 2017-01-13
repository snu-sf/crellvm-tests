; ModuleID = './MultiSource.Applications.JM/75.lencod.lencod.bc'
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
%struct.StatParameters = type { i32, i32, float, float, i64, i64, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, i32*, i32*, i64, i64, i64, float, float, float, [5 x [15 x i64]], [5 x [15 x i64]], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], i32, i32, i32*, i32, i32 }
%struct.SNRParameters = type { float, float, float, float, float, float, [5 x float], [5 x float], [5 x float], float, float, float, float, float, float, float, float, float, i32 }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.rc_quadratic = type { float, float, float, double, double, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, double*, double*, double*, double*, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, i8, i8** }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.bufferingperiod_information_struct = type { i32, [32 x i32], [32 x i32], %struct.Bitstream*, i32 }
%struct.pictiming_information_struct = type { i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@inputs = common global %struct.InputParameters zeroinitializer, align 8
@input = global %struct.InputParameters* @inputs, align 8
@images = common global %struct.ImageParameters zeroinitializer, align 8
@img = global %struct.ImageParameters* @images, align 8
@statistics = common global %struct.StatParameters zeroinitializer, align 8
@stats = global %struct.StatParameters* @statistics, align 8
@snrs = common global %struct.SNRParameters zeroinitializer, align 4
@snr = global %struct.SNRParameters* @snrs, align 8
@decoders = common global %struct.Decoders zeroinitializer, align 8
@decs = global %struct.Decoders* @decoders, align 8
@initial_Bframes = global i32 0, align 4
@In2ndIGOP = global i32 0, align 4
@start_frame_no_in_this_IGOP = global i32 0, align 4
@start_tr_in_this_IGOP = global i32 0, align 4
@FirstFrameIn2ndIGOP = global i32 0, align 4
@cabac_encoding = global i32 0, align 4
@giRDOpt_B8OnlyFlag = common global i32 0, align 4
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@p_trace = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_stat = common global %struct._IO_FILE* null, align 8
@frame_statistic_start = common global i32 0, align 4
@frame_pic_1 = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@si_frame_indicator = common global i32 0, align 4
@number_sp2_frames = common global i32 0, align 4
@frame_pic_si = common global %struct.Picture* null, align 8
@lrec = common global i32** null, align 8
@lrec_uv = common global i32*** null, align 8
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@Bit_Buffer = common global i64* null, align 8
@dpb = external global %struct.decoded_picture_buffer, align 8
@enc_bottom_picture = external global %struct.storable_picture*, align 8
@enc_top_picture = external global %struct.storable_picture*, align 8
@enc_frame_picture = external global %struct.storable_picture*, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@quadratic_RC = common global %struct.rc_quadratic* null, align 8
@frame_ctr = common global [5 x i32] zeroinitializer, align 16
@tot_time = common global i64 0, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@key_frame = common global i32 0, align 4
@Co_located = external global %struct.colocated_params*, align 8
@init_img.mb_width_cr = internal global [4 x i32] [i32 0, i32 8, i32 8, i32 16], align 16
@init_img.mb_height_cr = internal global [4 x i32] [i32 0, i32 8, i32 16, i32 16], align 16
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"init_img: img->quad\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"init_img: img->mb_data\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"init_img: img->intra_block\00", align 1
@mb16x16_cost_frame = common global double* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"init mb16x16_cost_frame\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"malloc_picture: Picture structure\00", align 1
@report_frame_statistic.last_mode_use = internal global [5 x [15 x i64]] zeroinitializer, align 16
@report_frame_statistic.last_b8_mode_0 = internal global [5 x [2 x i32]] zeroinitializer, align 16
@report_frame_statistic.last_mode_chroma_use = internal global [4 x i32] zeroinitializer, align 16
@report_frame_statistic.last_bit_ctr_n = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"stat_frame.dat\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [22 x i8] c"Error open file %s  \0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"stat_frame.dat.dat\00", align 1
@.str.10 = private unnamed_addr constant [469 x i8] c" --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \0A\00", align 1
@.str.11 = private unnamed_addr constant [469 x i8] c"|            Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                                                                                                                                                                                                              |\0A\00", align 1
@.str.12 = private unnamed_addr constant [473 x i8] c"|  ver       | Date  | Time  |    Sequence        |Frm | QP |P/MbInt|   Bits   |  SNRY  |  SNRU  |  SNRV  |  I4  |  I8  | I16  | IC0  | IC1  | IC2  | IC3  | PI4  | PI8  | PI16 |  P0  |  P1  |  P2  |  P3  | P1*8*| P1*4*| P2*8*| P2*4*| P3*8*| P3*4*|  P8  | P8:4 | P4*8*| P4*4*| P8:5 | P8:6 | P8:7 | BI4  | BI8  | BI16 |  B0  |  B1  |  B2  |  B3  | B0*8*| B0*4*| B1*8*| B1*4*| B2*8*| B2*4*| B3*8*| B3*4*|  B8  | B8:0 |B80*8*|B80*4*| B8:4 | B4*8*| B4*4*| B8:5 | B8:6 | B8:7 |\0A\00", align 1
@.str.13 = private unnamed_addr constant [473 x i8] c" ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"|%4s/%s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"12.1\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%d-%b-%Y\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"| %1.5s |\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c" %1.5s |\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%20.20s|\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%3d |\00", align 1
@frame_no = common global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"  %d/%d  |\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c" %9d|\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c" %2.4f| %2.4f| %2.4f|\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c" %5lld|\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c" %5d|\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c" %d|\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c" Freq. for encoded bitstream       : %1.0f\0A\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c" ME Metric for Refinement Level %1d  : %s\0A\00", align 1
@DistortionType = internal global [3 x [20 x i8]] [[20 x i8] c"SAD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"SSE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Hadamard SAD\00\00\00\00\00\00\00\00"], align 16
@.str.33 = private unnamed_addr constant [41 x i8] c" Mode Decision Metric              : %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c" Motion Estimation for components  : YCbCr\0A\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c" Motion Estimation for components  : Y\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c" Image format                      : %dx%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c" Error robustness                  : On\0A\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c" Error robustness                  : Off\0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c" Search range                      : %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c" Total number of references        : %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c" References for P slices           : %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c" List0 references for B slices     : %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c" List1 references for B slices     : %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c" Sequence type                     :\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c" Hierarchy (QP: I %d, P %d, B %d) \0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"-RB\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c" %s (QP: I %d, P %d, RB %d) \0A\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c" %s (QP: I %d, P %d, B %d) \0A\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c" IPPP (QP: I %d, P %d) \0A\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c" I-P-P-SP-P (QP: I %d, P %d, SP (%d, %d)) \0A\00", align 1
@.str.54 = private unnamed_addr constant [44 x i8] c" Entropy coding method             : CAVLC\0A\00", align 1
@.str.55 = private unnamed_addr constant [44 x i8] c" Entropy coding method             : CABAC\0A\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c" Profile/Level IDC                 : (%d,%d)\0A\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c" Motion Estimation Scheme          : HEX\0A\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c" Motion Estimation Scheme          : SHEX\0A\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c" Motion Estimation Scheme          : EPZS\0A\00", align 1
@.str.60 = private unnamed_addr constant [55 x i8] c" Motion Estimation Scheme          : Fast Full Search\0A\00", align 1
@.str.61 = private unnamed_addr constant [50 x i8] c" Motion Estimation Scheme          : Full Search\0A\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c" Search range restrictions         : none\0A\00", align 1
@.str.63 = private unnamed_addr constant [61 x i8] c" Search range restrictions         : older reference frames\0A\00", align 1
@.str.64 = private unnamed_addr constant [80 x i8] c" Search range restrictions         : smaller blocks and older reference frames\0A\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c" RD-optimized mode decision        : used\0A\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c" RD-optimized mode decision        : not used\0A\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c" Data Partitioning Mode            : 1 partition \0A\00", align 1
@.str.68 = private unnamed_addr constant [52 x i8] c" Data Partitioning Mode            : 3 partitions \0A\00", align 1
@.str.69 = private unnamed_addr constant [52 x i8] c" Data Partitioning Mode            : not supported\0A\00", align 1
@.str.70 = private unnamed_addr constant [68 x i8] c" Output File Format                : H.264 Bit Stream File Format \0A\00", align 1
@.str.71 = private unnamed_addr constant [62 x i8] c" Output File Format                : RTP Packet File Format \0A\00", align 1
@.str.72 = private unnamed_addr constant [52 x i8] c" Output File Format                : not supported\0A\00", align 1
@.str.73 = private unnamed_addr constant [81 x i8] c"------------------ Average data all frames  -----------------------------------\0A\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c" PSNR Y(dB)                        : %5.2f\0A\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c" PSNR U(dB)                        : %5.2f\0A\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c" PSNR V(dB)                        : %5.2f\0A\00", align 1
@.str.77 = private unnamed_addr constant [52 x i8] c" cSNR Y(dB)                        : %5.2f (%5.2f)\0A\00", align 1
@.str.78 = private unnamed_addr constant [52 x i8] c" cSNR U(dB)                        : %5.2f (%5.2f)\0A\00", align 1
@.str.79 = private unnamed_addr constant [52 x i8] c" cSNR V(dB)                        : %5.2f (%5.2f)\0A\00", align 1
@.str.80 = private unnamed_addr constant [76 x i8] c" Total bits                        : %lld (I %lld, P %lld, B %lld NVB %d) \0A\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c" Bit rate (kbit/s)  @ %2.2f Hz     : %5.2f\0A\00", align 1
@.str.82 = private unnamed_addr constant [69 x i8] c" Total bits                        : %lld (I %lld, P %lld, NVB %d) \0A\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c" Bits to avoid Startcode Emulation : %d \0A\00", align 1
@.str.84 = private unnamed_addr constant [42 x i8] c" Bits for parameter sets           : %d \0A\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"Exit JM %s encoder ver %s \00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"12 (FRExt)\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"stats.dat\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"Error open file %s\00", align 1
@.str.90 = private unnamed_addr constant [66 x i8] c" -------------------------------------------------------------- \0A\00", align 1
@.str.91 = private unnamed_addr constant [66 x i8] c"  This file contains statistics for the last encoded sequence   \0A\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c" Sequence                     : %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [37 x i8] c" No.of coded pictures         : %4d\0A\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c" Freq. for encoded bitstream  : %4.0f\0A\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c" I Slice Bitrate(kb/s)        : %6.2f\0A\00", align 1
@.str.96 = private unnamed_addr constant [39 x i8] c" P Slice Bitrate(kb/s)        : %6.2f\0A\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c" B Slice Bitrate(kb/s)        : %6.2f\0A\00", align 1
@.str.98 = private unnamed_addr constant [39 x i8] c" Total Bitrate(kb/s)          : %6.2f\0A\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c" ME Metric for Refinement Level %1d : %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c" Image format                 : %dx%d\0A\00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c" Error robustness             : On\0A\00", align 1
@.str.102 = private unnamed_addr constant [37 x i8] c" Error robustness             : Off\0A\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c" Search range                 : %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c" Total number of references   : %d\0A\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c" References for P slices      : %d\0A\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c" List0 refs for B slices      : %d\0A\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c" List1 refs for B slices      : %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [39 x i8] c" Entropy coding method        : CAVLC\0A\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c" Entropy coding method        : CABAC\0A\00", align 1
@.str.110 = private unnamed_addr constant [41 x i8] c" Profile/Level IDC            : (%d,%d)\0A\00", align 1
@.str.111 = private unnamed_addr constant [24 x i8] c" MB Field Coding : On \0A\00", align 1
@.str.112 = private unnamed_addr constant [38 x i8] c" Search range restrictions    : none\0A\00", align 1
@.str.113 = private unnamed_addr constant [56 x i8] c" Search range restrictions    : older reference frames\0A\00", align 1
@.str.114 = private unnamed_addr constant [75 x i8] c" Search range restrictions    : smaller blocks and older reference frames\0A\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c" RD-optimized mode decision   : used\0A\00", align 1
@.str.116 = private unnamed_addr constant [42 x i8] c" RD-optimized mode decision   : not used\0A\00", align 1
@.str.117 = private unnamed_addr constant [58 x i8] c" ---------------------|----------------|---------------|\0A\00", align 1
@.str.118 = private unnamed_addr constant [58 x i8] c"     Item             |     Intra      |   All frames  |\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c" SNR Y(dB)            |\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c" %5.2f          |\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c" %5.2f         |\0A\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c" SNR U/V (dB)         |\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c" %5.2f/%5.2f    |\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c" %5.2f/%5.2f   |\0A\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c" Average quant        |\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c" %5d          |\00", align 1
@.str.127 = private unnamed_addr constant [75 x i8] c"\0A ---------------------|----------------|---------------|---------------|\0A\00", align 1
@.str.128 = private unnamed_addr constant [74 x i8] c"     SNR              |        I       |       P       |       B       |\0A\00", align 1
@.str.129 = private unnamed_addr constant [74 x i8] c" ---------------------|----------------|---------------|---------------|\0A\00", align 1
@.str.130 = private unnamed_addr constant [71 x i8] c" SNR Y(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\0A\00", align 1
@.str.131 = private unnamed_addr constant [71 x i8] c" SNR U(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\0A\00", align 1
@.str.132 = private unnamed_addr constant [71 x i8] c" SNR V(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\0A\00", align 1
@.str.133 = private unnamed_addr constant [43 x i8] c"\0A ---------------------|----------------|\0A\00", align 1
@.str.134 = private unnamed_addr constant [42 x i8] c"   Intra              |   Mode used    |\0A\00", align 1
@.str.135 = private unnamed_addr constant [42 x i8] c" ---------------------|----------------|\0A\00", align 1
@.str.136 = private unnamed_addr constant [42 x i8] c" Mode 0  intra 4x4    |  %5lld         |\0A\00", align 1
@.str.137 = private unnamed_addr constant [42 x i8] c" Mode 1  intra 8x8    |  %5lld         |\0A\00", align 1
@.str.138 = private unnamed_addr constant [42 x i8] c" Mode 2+ intra 16x16  |  %5lld         |\0A\00", align 1
@.str.139 = private unnamed_addr constant [42 x i8] c" Mode    intra IPCM   |  %5lld         |\0A\00", align 1
@.str.140 = private unnamed_addr constant [61 x i8] c"\0A ---------------------|----------------|-----------------|\0A\00", align 1
@.str.141 = private unnamed_addr constant [60 x i8] c"   Inter              |   Mode used    | MotionInfo bits |\0A\00", align 1
@.str.142 = private unnamed_addr constant [59 x i8] c" ---------------------|----------------|-----------------|\00", align 1
@.str.143 = private unnamed_addr constant [57 x i8] c"\0A Mode  0  (copy)      |  %5lld         |    %8.2f     |\00", align 1
@.str.144 = private unnamed_addr constant [57 x i8] c"\0A Mode  1  (16x16)     |  %5lld         |    %8.2f     |\00", align 1
@.str.145 = private unnamed_addr constant [57 x i8] c"\0A Mode  2  (16x8)      |  %5lld         |    %8.2f     |\00", align 1
@.str.146 = private unnamed_addr constant [57 x i8] c"\0A Mode  3  (8x16)      |  %5lld         |    %8.2f     |\00", align 1
@.str.147 = private unnamed_addr constant [57 x i8] c"\0A Mode  4  (8x8)       |  %5lld         |    %8.2f     |\00", align 1
@.str.148 = private unnamed_addr constant [60 x i8] c"\0A Mode  5  intra 4x4   |  %5lld         |-----------------|\00", align 1
@.str.149 = private unnamed_addr constant [42 x i8] c"\0A Mode  6  intra 8x8   |  %5lld         |\00", align 1
@.str.150 = private unnamed_addr constant [42 x i8] c"\0A Mode  7+ intra 16x16 |  %5lld         |\00", align 1
@.str.151 = private unnamed_addr constant [42 x i8] c"\0A Mode     intra IPCM  |  %5lld         |\00", align 1
@.str.152 = private unnamed_addr constant [62 x i8] c"\0A\0A ---------------------|----------------|-----------------|\0A\00", align 1
@.str.153 = private unnamed_addr constant [60 x i8] c"   B frame            |   Mode used    | MotionInfo bits |\0A\00", align 1
@.str.154 = private unnamed_addr constant [78 x i8] c"\0A\0A ---------------------|----------------|----------------|----------------|\0A\00", align 1
@.str.155 = private unnamed_addr constant [76 x i8] c"  Bit usage:          |      Intra     |      Inter     |    B frame     |\0A\00", align 1
@.str.156 = private unnamed_addr constant [76 x i8] c" ---------------------|----------------|----------------|----------------|\0A\00", align 1
@.str.157 = private unnamed_addr constant [24 x i8] c" Header               |\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c" %10.2f     |\00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c" Mode                 |\00", align 1
@.str.160 = private unnamed_addr constant [24 x i8] c" Motion Info          |\00", align 1
@.str.161 = private unnamed_addr constant [18 x i8] c"        ./.     |\00", align 1
@.str.162 = private unnamed_addr constant [24 x i8] c" CBP Y/C              |\00", align 1
@.str.163 = private unnamed_addr constant [64 x i8] c" Coeffs. Y            | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str.164 = private unnamed_addr constant [64 x i8] c" Coeffs. C            | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str.165 = private unnamed_addr constant [64 x i8] c" Delta quant          | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str.166 = private unnamed_addr constant [64 x i8] c" Stuffing Bits        | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str.167 = private unnamed_addr constant [24 x i8] c" average bits/frame   |\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"log.dat\00", align 1
@.str.169 = private unnamed_addr constant [298 x i8] c" ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ \0A\00", align 1
@.str.170 = private unnamed_addr constant [298 x i8] c"|                   Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                            |\0A\00", align 1
@.str.171 = private unnamed_addr constant [298 x i8] c"|    ver    | Date  | Time  |         Sequence             | #Img |P/MbInt| QPI| QPP| QPB| Format  |Iperiod| #B | FMES | Hdmd | S.R |#Ref | Freq |Coding|RD-opt|Intra upd|8x8Tr| SNRY 1| SNRU 1| SNRV 1| SNRY N| SNRU N| SNRV N|#Bitr I|#Bitr P|#Bitr B|#Bitr IPB|     Total Time   |      Me Time     |\0A\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"|%s/%-4s\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"%30.30s|\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"%5d |\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c" %-3d|\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"%4dx%-4d|\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"  %3d  |\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"  HEX |\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c" SHEX |\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c" EPZS |\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"  FFS |\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"  FS  |\00", align 1
@.str.183 = private unnamed_addr constant [14 x i8] c"  %1d%1d%1d |\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c" %3d |\00", align 1
@.str.185 = private unnamed_addr constant [8 x i8] c" %2d  |\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c" %5.2f|\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c" CAVLC|\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c" CABAC|\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"   %d  |\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"   ON    |\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"   OFF   |\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"  %d  |\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"%7.3f|\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"%7.0f|\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"%9.0f|\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"   %12d   |\00", align 1
@me_tot_time = common global i64 0, align 8
@.str.197 = private unnamed_addr constant [9 x i8] c"data.txt\00", align 1
@.str.198 = private unnamed_addr constant [94 x i8] c"%3d %2d %2d %2.2f %2.2f %2.2f %5lld %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5lld %5lld %.3f\0A\00", align 1
@.str.199 = private unnamed_addr constant [92 x i8] c"%3d %2d %2d %2.2f %2.2f %2.2f %5lld %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5lld %5d %.3f\0A\00", align 1
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@.str.200 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_top\00", align 1
@imgUV_org_bot = common global i16*** null, align 8
@.str.201 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_bot\00", align 1
@last_P_no_frm = external global i32*, align 8
@.str.202 = private unnamed_addr constant [31 x i8] c"init_global_buffers: last_P_no\00", align 1
@last_P_no_fld = external global i32*, align 8
@PicPos = common global i32** null, align 8
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@direct_ref_idx = common global i8*** null, align 8
@direct_pdir = common global i8** null, align 8
@.str.203 = private unnamed_addr constant [28 x i8] c"init_global_buffers: decref\00", align 1
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@generic_RC = common global %struct.rc_generic* null, align 8
@generic_RC_init = common global %struct.rc_generic* null, align 8
@quadratic_RC_init = common global %struct.rc_quadratic* null, align 8
@generic_RC_best = common global %struct.rc_generic* null, align 8
@quadratic_RC_best = common global %struct.rc_quadratic* null, align 8
@imgY_tmp = common global i16** null, align 8
@imgUV_tmp = common global [2 x i16**] zeroinitializer, align 16
@imgY_sub_tmp = common global i32** null, align 8
@img_padded_size_x = common global i32 0, align 4
@img_pad_size_uv_x = common global i32 0, align 4
@img_cr_padded_size_x = common global i32 0, align 4
@.str.204 = private unnamed_addr constant [15 x i8] c"get_mem_mv: mv\00", align 1
@.str.205 = private unnamed_addr constant [23 x i8] c"get_mem_ACcoeff: cofAC\00", align 1
@.str.206 = private unnamed_addr constant [23 x i8] c"get_mem_DCcoeff: cofDC\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.207 = private unnamed_addr constant [53 x i8] c"Warning: unknown LevelIDC, using maximum level 5.1 \0A\00", align 1
@.str.208 = private unnamed_addr constant [51 x i8] c"B frame not supported when redundant picture used!\00", align 1
@.str.209 = private unnamed_addr constant [53 x i8] c"Interlace not supported when redundant picture used!\00", align 1
@.str.210 = private unnamed_addr constant [60 x i8] c"NumberReferenceFrames must be no less than PrimaryGOPLength\00", align 1
@.str.211 = private unnamed_addr constant [62 x i8] c"PrimaryGOPLength must be greater than 2^NumRedundantHeirarchy\00", align 1
@.str.212 = private unnamed_addr constant [47 x i8] c"Redundant slices not supported when Verbose!=1\00", align 1
@redundant_coding = common global i32 0, align 4
@frameNuminGOP = common global i32 0, align 4
@redundant_ref_idx = common global i32 0, align 4
@img_pad_size_uv_y = common global i32 0, align 4
@chroma_mask_mv_y = common global i8 0, align 1
@chroma_mask_mv_x = common global i8 0, align 1
@chroma_shift_x = common global i32 0, align 4
@chroma_shift_y = common global i32 0, align 4
@shift_cr_y = common global i32 0, align 4
@shift_cr_x = common global i32 0, align 4
@color_formats = common global i32 0, align 4
@frame_pic = common global %struct.Picture* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_time = common global i64 0, align 8
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@intras = common global i32 0, align 4
@nextP_tr_fld = common global i32 0, align 4
@nextP_tr_frm = common global i32 0, align 4
@b8_ipredmode8x8 = common global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common global [16 x i8] zeroinitializer, align 16
@gop_structure = common global %struct.GOP_DATA* null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@Bytes_After_Header = common global i32 0, align 4
@encode_one_macroblock = common global void ()* null, align 8
@sp2_frame_indicator = common global i32 0, align 4
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4
@configinput = common global %struct.InputParameters zeroinitializer, align 8
@seiHasBufferingPeriod_info = common global i32 0, align 4
@seiBufferingPeriod = common global %struct.bufferingperiod_information_struct zeroinitializer, align 8
@seiHasPicTiming_info = common global i32 0, align 4
@seiPicTiming = common global %struct.pictiming_information_struct zeroinitializer, align 8
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@McostState = common global i8** null, align 8
@SearchState = common global i8** null, align 8
@fastme_ref_cost = common global i32**** null, align 8
@fastme_l0_cost = common global i32*** null, align 8
@fastme_l1_cost = common global i32*** null, align 8
@fastme_l0_cost_bipred = common global i32*** null, align 8
@fastme_l1_cost_bipred = common global i32*** null, align 8
@bipred_flag = common global i32 0, align 4
@fastme_best_cost = common global i32** null, align 8
@pred_SAD = common global i32 0, align 4
@pred_MV_ref = common global [2 x i32] zeroinitializer, align 4
@pred_MV_uplayer = common global [2 x i32] zeroinitializer, align 4
@UMHEX_blocktype = common global i32 0, align 4
@predict_point = common global [5 x [2 x i32]] zeroinitializer, align 16
@SAD_a = common global i32 0, align 4
@SAD_b = common global i32 0, align 4
@SAD_c = common global i32 0, align 4
@SAD_d = common global i32 0, align 4
@Threshold_DSR_MB = common global [8 x i32] zeroinitializer, align 16
@Bsize = common global [8 x float] zeroinitializer, align 16
@AlphaFourth_1 = common global [8 x float] zeroinitializer, align 16
@AlphaFourth_2 = common global [8 x float] zeroinitializer, align 16
@flag_intra = common global i8* null, align 8
@flag_intra_SAD = common global i32 0, align 4
@SymmetricalCrossSearchThreshold1 = common global i16 0, align 2
@SymmetricalCrossSearchThreshold2 = common global i16 0, align 2
@ConvergeThreshold = common global i16 0, align 2
@SubPelThreshold1 = common global i16 0, align 2
@SubPelThreshold3 = common global i16 0, align 2
@smpUMHEX_SearchState = common global i8** null, align 8
@smpUMHEX_l0_cost = common global i32*** null, align 8
@smpUMHEX_l1_cost = common global i32*** null, align 8
@smpUMHEX_flag_intra = common global i8* null, align 8
@smpUMHEX_flag_intra_SAD = common global i32 0, align 4
@smpUMHEX_pred_SAD_uplayer = common global i32 0, align 4
@smpUMHEX_pred_MV_uplayer_X = common global i16 0, align 2
@smpUMHEX_pred_MV_uplayer_Y = common global i16 0, align 2
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@delta_qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@updateQP = common global i32 (%struct.rc_quadratic*, i32)* null, align 8
@information_init.yuv_types = private unnamed_addr constant [4 x [10 x i8]] [[10 x i8] c"YUV 4:0:0\00", [10 x i8] c"YUV 4:2:0\00", [10 x i8] c"YUV 4:2:2\00", [10 x i8] c"YUV 4:4:4\00"], align 16
@.str.213 = private unnamed_addr constant [75 x i8] c"------------------------------- JM %s %s --------------------------------\0A\00", align 1
@.str.214 = private unnamed_addr constant [85 x i8] c"------------------------------- JM %s %s ------------------------------------------\0A\00", align 1
@.str.215 = private unnamed_addr constant [42 x i8] c" Input YUV file                    : %s \0A\00", align 1
@.str.216 = private unnamed_addr constant [42 x i8] c" Output H.264 bitstream            : %s \0A\00", align 1
@.str.217 = private unnamed_addr constant [42 x i8] c" Output YUV file                   : %s \0A\00", align 1
@.str.218 = private unnamed_addr constant [42 x i8] c" YUV Format                        : %s \0A\00", align 1
@.str.219 = private unnamed_addr constant [44 x i8] c" Frames to be encoded I-P/B        : %d/%d\0A\00", align 1
@.str.220 = private unnamed_addr constant [44 x i8] c" PicInterlace / MbInterlace        : %d/%d\0A\00", align 1
@.str.221 = private unnamed_addr constant [41 x i8] c" Transform8x8Mode                  : %d\0A\00", align 1
@.str.222 = private unnamed_addr constant [81 x i8] c"  Frame  Bit/pic    QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld Ref  \0A\00", align 1
@.str.223 = private unnamed_addr constant [95 x i8] c"---------------------------------------------------------------------------------------------\0A\00", align 1
@.str.224 = private unnamed_addr constant [95 x i8] c"  Frame  Bit/pic WP QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld   I D L0 L1 RDP Ref\0A\00", align 1
@.str.225 = private unnamed_addr constant [26 x i8] c"\0AEncoding. Please Wait.\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @init_stats() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 40
  %1 = load i32, i32* %successive_Bframe, align 4
  %2 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %2, i32 0, i32 13
  store i32 %1, i32* %successive_Bframe1, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 16
  store i64 0, i64* %bit_ctr_I, align 8
  %4 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %4, i32 0, i32 17
  store i64 0, i64* %bit_ctr_P, align 8
  %5 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_B = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %5, i32 0, i32 18
  store i64 0, i64* %bit_ctr_B, align 8
  %6 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %6, i32 0, i32 0
  store float 0.000000e+00, float* %snr_y, align 4
  %7 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %7, i32 0, i32 1
  store float 0.000000e+00, float* %snr_u, align 4
  %8 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %8, i32 0, i32 2
  store float 0.000000e+00, float* %snr_v, align 4
  %9 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %9, i32 0, i32 3
  store float 0.000000e+00, float* %snr_y1, align 4
  %10 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %10, i32 0, i32 4
  store float 0.000000e+00, float* %snr_u1, align 4
  %11 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %11, i32 0, i32 5
  store float 0.000000e+00, float* %snr_v1, align 4
  %12 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %12, i32 0, i32 9
  store float 0.000000e+00, float* %snr_ya, align 4
  %13 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %13, i32 0, i32 10
  store float 0.000000e+00, float* %snr_ua, align 4
  %14 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %14, i32 0, i32 11
  store float 0.000000e+00, float* %snr_va, align 4
  %15 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %15, i32 0, i32 12
  store float 0.000000e+00, float* %sse_y, align 4
  %16 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %16, i32 0, i32 13
  store float 0.000000e+00, float* %sse_u, align 4
  %17 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %17, i32 0, i32 14
  store float 0.000000e+00, float* %sse_v, align 4
  %18 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %18, i32 0, i32 15
  store float 0.000000e+00, float* %msse_y, align 4
  %19 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %19, i32 0, i32 16
  store float 0.000000e+00, float* %msse_u, align 4
  %20 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %20, i32 0, i32 17
  store float 0.000000e+00, float* %msse_v, align 4
  %21 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %frame_ctr = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %21, i32 0, i32 18
  store i32 0, i32* %frame_ctr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %n = alloca i32, align 4
  %np = alloca i32, align 4
  %nb = alloca i32, align 4
  %primary_disp = alloca i32, align 4
  %bi = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %primary_disp, align 4
  store i32 0, i32* @giRDOpt_B8OnlyFlag, align 4
  store i32 -1, i32* @p_in, align 4
  store i32 -1, i32* @p_dec, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_trace, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_log, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_stat, align 8
  store i32 1, i32* @frame_statistic_start, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @Configure(i32 %0, i8** %1)
  call void @Init_QMatrix()
  call void @Init_QOffsetMatrix()
  call void @AllocNalPayloadBuffer()
  call void @init_poc()
  call void @GenerateParameterSets()
  call void @SetLevelIndices()
  call void @init_img()
  %call = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call, %struct.Picture** @frame_pic_1, align 8
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 62
  %3 = load i32, i32* %RDPictureDecision, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call1, %struct.Picture** @frame_pic_2, align 8
  %call2 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call2, %struct.Picture** @frame_pic_3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %si_frame_indicator = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 53
  %5 = load i32, i32* %si_frame_indicator, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* @si_frame_indicator, align 4
  store i32 0, i32* @number_sp2_frames, align 4
  %call5 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call5, %struct.Picture** @frame_pic_si, align 8
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 17
  %7 = load i32, i32* %height, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 13
  %9 = load i32, i32* %width, align 4
  %call6 = call i32 @get_mem2Dint(i32*** @lrec, i32 %7, i32 %9)
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 17
  %11 = load i32, i32* %height7, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 13
  %13 = load i32, i32* %width8, align 4
  %call9 = call i32 @get_mem3Dint(i32**** @lrec_uv, i32 2, i32 %11, i32 %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.4, %if.end
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 121
  %15 = load i32, i32* %PicInterlace, align 4
  %cmp = icmp ne i32 %15, 0
  br i1 %cmp, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.10
  %call12 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call12, %struct.Picture** @top_pic, align 8
  %call13 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call13, %struct.Picture** @bottom_pic, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.10
  call void @init_rdopt()
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 2
  %17 = load i32, i32* %no_frames, align 4
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 40
  %19 = load i32, i32* %successive_Bframe, align 4
  %add = add nsw i32 %19, 1
  %mul = mul nsw i32 %17, %add
  %add15 = add nsw i32 %mul, 1
  %conv = sext i32 %add15 to i64
  %mul16 = mul i64 %conv, 8
  %call17 = call noalias i8* @malloc(i64 %mul16) #3
  %20 = bitcast i8* %call17 to i64*
  store i64* %20, i64** @Bit_Buffer, align 8
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 69
  %22 = load i32, i32* %HierarchicalCoding, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.end.14
  call void @init_gop_structure()
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe20 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 40
  %24 = load i32, i32* %successive_Bframe20, align 4
  %tobool21 = icmp ne i32 %24, 0
  br i1 %tobool21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.19
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding22 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 69
  %26 = load i32, i32* %HierarchicalCoding22, align 4
  %cmp23 = icmp eq i32 %26, 3
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true
  call void @interpret_gop_structure()
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true, %if.then.19
  call void @create_hierarchy()
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.14
  store i32 0, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 9), align 4
  call void @init_dpb()
  call void @init_out_buffer()
  call void @init_stats()
  store %struct.storable_picture* null, %struct.storable_picture** @enc_bottom_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_top_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_picture, align 8
  %call28 = call i32 @init_global_buffers()
  call void @create_context_memory()
  call void @Init_Motion_Search_Module()
  call void @information_init()
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 157
  %28 = load i32, i32* %RCEnable, align 4
  %tobool29 = icmp ne i32 %28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @rc_init_seq(%struct.rc_quadratic* %29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 169
  %31 = load i32, i32* %SearchMode, align 4
  %cmp32 = icmp eq i32 %31, 1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  call void @UMHEX_DefineThreshold()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.31
  call void @llvm.memset.p0i8.i64(i8* bitcast ([5 x i32]* @frame_ctr to i8*), i8 0, i64 20, i32 16, i1 false)
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %last_valid_reference = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 169
  store i32 0, i32* %last_valid_reference, align 4
  store i64 0, i64* @tot_time, align 8
  %33 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %33, i32 0, i32 107
  %34 = load i32, i32* %last_frame, align 4
  %cmp36 = icmp sgt i32 %34, 0
  br i1 %cmp36, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %if.end.35
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame39 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 107
  %36 = load i32, i32* %last_frame39, align 4
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 5
  %38 = load i32, i32* %jumpd, align 4
  %add40 = add nsw i32 %36, %38
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd41 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 5
  %40 = load i32, i32* %jumpd41, align 4
  %add42 = add nsw i32 %40, 1
  %div = sdiv i32 %add40, %add42
  %add43 = add nsw i32 1, %div
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 2
  store i32 %add43, i32* %no_frames44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.38, %if.end.35
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe46 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 40
  %43 = load i32, i32* %successive_Bframe46, align 4
  store i32 %43, i32* @initial_Bframes, align 4
  call void @PatchInputNoFrames()
  %44 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %44, i32 0, i32 34
  store i32 0, i32* %bit_ctr_parametersets, align 4
  %call47 = call i32 @start_sequence()
  %45 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %45, i32 0, i32 6
  store i32 %call47, i32* %bit_slice, align 4
  %46 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %46, i32 0, i32 35
  %47 = load i32, i32* %bit_ctr_parametersets_n, align 4
  %48 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets48 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %48, i32 0, i32 34
  %49 = load i32, i32* %bit_ctr_parametersets48, align 4
  %add49 = add nsw i32 %49, %47
  store i32 %add49, i32* %bit_ctr_parametersets48, align 4
  store i32 0, i32* @start_frame_no_in_this_IGOP, align 4
  %50 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMCBuffer = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %50, i32 0, i32 197
  %51 = load i32, i32* %ChromaMCBuffer, align 4
  %tobool50 = icmp ne i32 %51, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.45
  call void @chroma_mc_setup()
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.45
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 0
  store i32 0, i32* %number, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.52
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 0
  %54 = load i32, i32* %number53, align 4
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames54 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 2
  %56 = load i32, i32* %no_frames54, align 4
  %cmp55 = icmp slt i32 %54, %56
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 30
  %58 = load i32, i32* %intra_period, align 4
  %tobool57 = icmp ne i32 %58, 0
  br i1 %tobool57, label %if.then.58, label %if.else.67

if.then.58:                                       ; preds = %for.body
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number59 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 0
  %60 = load i32, i32* %number59, align 4
  %61 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %60, %61
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period60 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 30
  %63 = load i32, i32* %intra_period60, align 4
  %rem = srem i32 %sub, %63
  %tobool61 = icmp ne i32 %rem, 0
  br i1 %tobool61, label %land.lhs.true.62, label %cond.false

land.lhs.true.62:                                 ; preds = %if.then.58
  %64 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %DisposableP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %64, i32 0, i32 192
  %65 = load i32, i32* %DisposableP, align 4
  %tobool63 = icmp ne i32 %65, 0
  br i1 %tobool63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.62
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 0
  %67 = load i32, i32* %number64, align 4
  %add65 = add nsw i32 %67, 1
  %rem66 = srem i32 %add65, 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.62, %if.then.58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %rem66, %cond.true ], [ 1, %cond.false ]
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 122
  store i32 %cond, i32* %nal_reference_idc, align 4
  br label %if.end.81

if.else.67:                                       ; preds = %for.body
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 0
  %70 = load i32, i32* %number68, align 4
  %tobool69 = icmp ne i32 %70, 0
  br i1 %tobool69, label %land.lhs.true.70, label %cond.false.77

land.lhs.true.70:                                 ; preds = %if.else.67
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %DisposableP71 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 192
  %72 = load i32, i32* %DisposableP71, align 4
  %tobool72 = icmp ne i32 %72, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.77

cond.true.73:                                     ; preds = %land.lhs.true.70
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 0
  %74 = load i32, i32* %number74, align 4
  %add75 = add nsw i32 %74, 1
  %rem76 = srem i32 %add75, 2
  br label %cond.end.78

cond.false.77:                                    ; preds = %land.lhs.true.70, %if.else.67
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.73
  %cond79 = phi i32 [ %rem76, %cond.true.73 ], [ 1, %cond.false.77 ]
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 122
  store i32 %cond79, i32* %nal_reference_idc80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.78, %cond.end
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period82 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 30
  %77 = load i32, i32* %intra_period82, align 4
  %tobool83 = icmp ne i32 %77, 0
  br i1 %tobool83, label %land.lhs.true.84, label %cond.false.91

land.lhs.true.84:                                 ; preds = %if.end.81
  %78 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %78, i32 0, i32 32
  %79 = load i32, i32* %idr_enable, align 4
  %tobool85 = icmp ne i32 %79, 0
  br i1 %tobool85, label %cond.true.86, label %cond.false.91

cond.true.86:                                     ; preds = %land.lhs.true.84
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 0
  %81 = load i32, i32* %number87, align 4
  %82 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub88 = sub nsw i32 %81, %82
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period89 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 30
  %84 = load i32, i32* %intra_period89, align 4
  %rem90 = srem i32 %sub88, %84
  br label %cond.end.94

cond.false.91:                                    ; preds = %land.lhs.true.84, %if.end.81
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number92 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 0
  %86 = load i32, i32* %number92, align 4
  %87 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub93 = sub nsw i32 %86, %87
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.91, %cond.true.86
  %cond95 = phi i32 [ %rem90, %cond.true.86 ], [ %sub93, %cond.false.91 ]
  %88 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd96 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %88, i32 0, i32 5
  %89 = load i32, i32* %jumpd96, align 4
  %add97 = add nsw i32 %89, 1
  %mul98 = mul nsw i32 2, %add97
  %mul99 = mul nsw i32 %cond95, %mul98
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 111
  store i32 %mul99, i32* %toppoc, align 4
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace100 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 121
  %92 = load i32, i32* %PicInterlace100, align 4
  %cmp101 = icmp eq i32 %92, 0
  br i1 %cmp101, label %land.lhs.true.103, label %if.else.108

land.lhs.true.103:                                ; preds = %cond.end.94
  %93 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %93, i32 0, i32 122
  %94 = load i32, i32* %MbInterlace, align 4
  %cmp104 = icmp eq i32 %94, 0
  br i1 %cmp104, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %land.lhs.true.103
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc107 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 111
  %96 = load i32, i32* %toppoc107, align 4
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 112
  store i32 %96, i32* %bottompoc, align 4
  br label %if.end.112

if.else.108:                                      ; preds = %land.lhs.true.103, %cond.end.94
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 111
  %99 = load i32, i32* %toppoc109, align 4
  %add110 = add nsw i32 %99, 1
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc111 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 112
  store i32 %add110, i32* %bottompoc111, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.108, %if.then.106
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc113 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 111
  %102 = load i32, i32* %toppoc113, align 4
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 112
  %104 = load i32, i32* %bottompoc114, align 4
  %call115 = call i32 @imin(i32 %102, i32 %104)
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 113
  store i32 %call115, i32* %framepoc, align 4
  %106 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %106, i32 0, i32 68
  %107 = load i32, i32* %BRefPictures, align 4
  %cmp116 = icmp ne i32 %107, 1
  br i1 %cmp116, label %land.lhs.true.118, label %lor.lhs.false

land.lhs.true.118:                                ; preds = %if.end.112
  %108 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding119 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %108, i32 0, i32 69
  %109 = load i32, i32* %HierarchicalCoding119, align 4
  %cmp120 = icmp eq i32 %109, 0
  br i1 %cmp120, label %if.then.129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.118, %if.end.112
  %110 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe122 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %110, i32 0, i32 40
  %111 = load i32, i32* %successive_Bframe122, align 4
  %cmp123 = icmp eq i32 %111, 0
  br i1 %cmp123, label %if.then.129, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %lor.lhs.false
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 0
  %113 = load i32, i32* %number126, align 4
  %cmp127 = icmp slt i32 %113, 2
  br i1 %cmp127, label %if.then.129, label %if.else.161

if.then.129:                                      ; preds = %lor.lhs.false.125, %lor.lhs.false, %land.lhs.true.118
  %114 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period130 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %114, i32 0, i32 30
  %115 = load i32, i32* %intra_period130, align 4
  %tobool131 = icmp ne i32 %115, 0
  br i1 %tobool131, label %land.lhs.true.132, label %if.else.152

land.lhs.true.132:                                ; preds = %if.then.129
  %116 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable133 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %116, i32 0, i32 32
  %117 = load i32, i32* %idr_enable133, align 4
  %tobool134 = icmp ne i32 %117, 0
  br i1 %tobool134, label %if.then.135, label %if.else.152

if.then.135:                                      ; preds = %land.lhs.true.132
  %118 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number136 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %118, i32 0, i32 0
  %119 = load i32, i32* %number136, align 4
  %120 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub137 = sub nsw i32 %119, %120
  %121 = load i32, i32* %primary_disp, align 4
  %sub138 = sub nsw i32 %sub137, %121
  %122 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period139 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %122, i32 0, i32 30
  %123 = load i32, i32* %intra_period139, align 4
  %rem140 = srem i32 %sub138, %123
  %124 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add141 = add i32 %124, 4
  %shl = shl i32 1, %add141
  %rem142 = srem i32 %rem140, %shl
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 115
  store i32 %rem142, i32* %frame_num, align 4
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 0
  %127 = load i32, i32* %number143, align 4
  %128 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub144 = sub nsw i32 %127, %128
  %129 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period145 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %129, i32 0, i32 30
  %130 = load i32, i32* %intra_period145, align 4
  %rem146 = srem i32 %sub144, %130
  %cmp147 = icmp eq i32 %rem146, 0
  br i1 %cmp147, label %if.then.149, label %if.end.151

if.then.149:                                      ; preds = %if.then.135
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num150 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 115
  store i32 0, i32* %frame_num150, align 4
  store i32 0, i32* %primary_disp, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.149, %if.then.135
  br label %if.end.160

if.else.152:                                      ; preds = %land.lhs.true.132, %if.then.129
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 0
  %133 = load i32, i32* %number153, align 4
  %134 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub154 = sub nsw i32 %133, %134
  %135 = load i32, i32* %primary_disp, align 4
  %sub155 = sub nsw i32 %sub154, %135
  %136 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add156 = add i32 %136, 4
  %shl157 = shl i32 1, %add156
  %rem158 = srem i32 %sub155, %shl157
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num159 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 115
  store i32 %rem158, i32* %frame_num159, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.152, %if.end.151
  br label %if.end.181

if.else.161:                                      ; preds = %lor.lhs.false.125
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period162 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 30
  %139 = load i32, i32* %intra_period162, align 4
  %tobool163 = icmp ne i32 %139, 0
  br i1 %tobool163, label %land.lhs.true.164, label %if.end.176

land.lhs.true.164:                                ; preds = %if.else.161
  %140 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable165 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %140, i32 0, i32 32
  %141 = load i32, i32* %idr_enable165, align 4
  %tobool166 = icmp ne i32 %141, 0
  br i1 %tobool166, label %if.then.167, label %if.end.176

if.then.167:                                      ; preds = %land.lhs.true.164
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number168 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 0
  %143 = load i32, i32* %number168, align 4
  %144 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period169 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %144, i32 0, i32 30
  %145 = load i32, i32* %intra_period169, align 4
  %rem170 = srem i32 %143, %145
  %cmp171 = icmp eq i32 0, %rem170
  br i1 %cmp171, label %if.then.173, label %if.end.175

if.then.173:                                      ; preds = %if.then.167
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 115
  store i32 0, i32* %frame_num174, align 4
  store i32 0, i32* %primary_disp, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.173, %if.then.167
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %land.lhs.true.164, %if.else.161
  %147 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add177 = add i32 %147, 4
  %shl178 = shl i32 1, %add177
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num179 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 115
  %149 = load i32, i32* %frame_num179, align 4
  %rem180 = urem i32 %149, %shl178
  store i32 %rem180, i32* %frame_num179, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.176, %if.end.160
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 109
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %151 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures182 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %151, i32 0, i32 68
  %152 = load i32, i32* %BRefPictures182, align 4
  %cmp183 = icmp eq i32 %152, 1
  br i1 %cmp183, label %if.then.185, label %if.end.194

if.then.185:                                      ; preds = %if.end.181
  %153 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number186 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %153, i32 0, i32 0
  %154 = load i32, i32* %number186, align 4
  %tobool187 = icmp ne i32 %154, 0
  br i1 %tobool187, label %if.then.188, label %if.end.193

if.then.188:                                      ; preds = %if.then.185
  %155 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe189 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %155, i32 0, i32 40
  %156 = load i32, i32* %successive_Bframe189, align 4
  %mul190 = mul nsw i32 2, %156
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt191 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 109
  %arrayidx192 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt191, i32 0, i64 0
  store i32 %mul190, i32* %arrayidx192, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.188, %if.then.185
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.181
  call void @SetImgType()
  %158 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ResendSPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %158, i32 0, i32 38
  %159 = load i32, i32* %ResendSPS, align 4
  %cmp195 = icmp eq i32 %159, 1
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.210

land.lhs.true.197:                                ; preds = %if.end.194
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 5
  %161 = load i32, i32* %type, align 4
  %cmp198 = icmp eq i32 %161, 2
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.210

land.lhs.true.200:                                ; preds = %land.lhs.true.197
  %162 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number201 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %162, i32 0, i32 0
  %163 = load i32, i32* %number201, align 4
  %cmp202 = icmp ne i32 %163, 0
  br i1 %cmp202, label %if.then.204, label %if.end.210

if.then.204:                                      ; preds = %land.lhs.true.200
  %call205 = call i32 @rewrite_paramsets()
  %164 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice206 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %164, i32 0, i32 6
  store i32 %call205, i32* %bit_slice206, align 4
  %165 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n207 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %165, i32 0, i32 35
  %166 = load i32, i32* %bit_ctr_parametersets_n207, align 4
  %167 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets208 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %167, i32 0, i32 34
  %168 = load i32, i32* %bit_ctr_parametersets208, align 4
  %add209 = add nsw i32 %168, %166
  store i32 %add209, i32* %bit_ctr_parametersets208, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.204, %land.lhs.true.200, %land.lhs.true.197, %if.end.194
  %169 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe211 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %169, i32 0, i32 40
  %170 = load i32, i32* %successive_Bframe211, align 4
  %tobool212 = icmp ne i32 %170, 0
  br i1 %tobool212, label %land.lhs.true.213, label %if.end.261

land.lhs.true.213:                                ; preds = %if.end.210
  %171 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame214 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %171, i32 0, i32 107
  %172 = load i32, i32* %last_frame214, align 4
  %tobool215 = icmp ne i32 %172, 0
  br i1 %tobool215, label %land.lhs.true.216, label %if.end.261

land.lhs.true.216:                                ; preds = %land.lhs.true.213
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number217 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 0
  %174 = load i32, i32* %number217, align 4
  %175 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub218 = sub nsw i32 %174, %175
  %add219 = add nsw i32 %sub218, 1
  %176 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames220 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %176, i32 0, i32 2
  %177 = load i32, i32* %no_frames220, align 4
  %cmp221 = icmp eq i32 %add219, %177
  br i1 %cmp221, label %if.then.223, label %if.end.261

if.then.223:                                      ; preds = %land.lhs.true.216
  %178 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd224 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %178, i32 0, i32 5
  %179 = load i32, i32* %jumpd224, align 4
  %add225 = add nsw i32 %179, 1
  %conv226 = sitofp i32 %add225 to float
  %conv227 = fpext float %conv226 to double
  %180 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe228 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %180, i32 0, i32 40
  %181 = load i32, i32* %successive_Bframe228, align 4
  %conv229 = sitofp i32 %181 to double
  %add230 = fadd double %conv229, 1.000000e+00
  %div231 = fdiv double %conv227, %add230
  %add232 = fadd double %div231, 4.999990e-01
  %conv233 = fptosi double %add232 to i32
  store i32 %conv233, i32* %bi, align 4
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame234 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 107
  %183 = load i32, i32* %last_frame234, align 4
  %184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number235 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %184, i32 0, i32 0
  %185 = load i32, i32* %number235, align 4
  %sub236 = sub nsw i32 %185, 1
  %186 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd237 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %186, i32 0, i32 5
  %187 = load i32, i32* %jumpd237, align 4
  %add238 = add nsw i32 %187, 1
  %mul239 = mul nsw i32 %sub236, %add238
  %sub240 = sub nsw i32 %183, %mul239
  %188 = load i32, i32* %bi, align 4
  %div241 = sdiv i32 %sub240, %188
  %sub242 = sub nsw i32 %div241, 1
  %189 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe243 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %189, i32 0, i32 40
  store i32 %sub242, i32* %successive_Bframe243, align 4
  %190 = load i32, i32* @initial_Bframes, align 4
  %191 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe244 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %191, i32 0, i32 40
  %192 = load i32, i32* %successive_Bframe244, align 4
  %sub245 = sub nsw i32 %190, %192
  %mul246 = mul nsw i32 -2, %sub245
  %193 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt247 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %193, i32 0, i32 109
  %arrayidx248 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt247, i32 0, i64 0
  store i32 %mul246, i32* %arrayidx248, align 4
  %194 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt249 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %194, i32 0, i32 109
  %arrayidx250 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt249, i32 0, i64 0
  %195 = load i32, i32* %arrayidx250, align 4
  %196 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc251 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %196, i32 0, i32 111
  %197 = load i32, i32* %toppoc251, align 4
  %add252 = add nsw i32 %197, %195
  store i32 %add252, i32* %toppoc251, align 4
  %198 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt253 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %198, i32 0, i32 109
  %arrayidx254 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt253, i32 0, i64 0
  %199 = load i32, i32* %arrayidx254, align 4
  %200 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc255 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %200, i32 0, i32 112
  %201 = load i32, i32* %bottompoc255, align 4
  %add256 = add nsw i32 %201, %199
  store i32 %add256, i32* %bottompoc255, align 4
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc257 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 111
  %203 = load i32, i32* %toppoc257, align 4
  %204 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc258 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %204, i32 0, i32 112
  %205 = load i32, i32* %bottompoc258, align 4
  %call259 = call i32 @imin(i32 %203, i32 %205)
  %206 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc260 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %206, i32 0, i32 113
  store i32 %call259, i32* %framepoc260, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.223, %land.lhs.true.216, %land.lhs.true.213, %if.end.210
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type262 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 5
  %208 = load i32, i32* %type262, align 4
  %cmp263 = icmp eq i32 %208, 2
  br i1 %cmp263, label %land.lhs.true.265, label %if.end.381

land.lhs.true.265:                                ; preds = %if.end.261
  %209 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %209, i32 0, i32 162
  %210 = load i32, i32* %RCUpdateMode, align 4
  %cmp266 = icmp ne i32 %210, 1
  br i1 %cmp266, label %land.lhs.true.268, label %lor.lhs.false.272

land.lhs.true.268:                                ; preds = %land.lhs.true.265
  %211 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode269 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %211, i32 0, i32 162
  %212 = load i32, i32* %RCUpdateMode269, align 4
  %cmp270 = icmp ne i32 %212, 3
  br i1 %cmp270, label %if.then.276, label %lor.lhs.false.272

lor.lhs.false.272:                                ; preds = %land.lhs.true.268, %land.lhs.true.265
  %213 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number273 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %213, i32 0, i32 0
  %214 = load i32, i32* %number273, align 4
  %215 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub274 = sub nsw i32 %214, %215
  %tobool275 = icmp ne i32 %sub274, 0
  br i1 %tobool275, label %if.end.381, label %if.then.276

if.then.276:                                      ; preds = %lor.lhs.false.272, %land.lhs.true.268
  %216 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable277 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %216, i32 0, i32 157
  %217 = load i32, i32* %RCEnable277, align 4
  %tobool278 = icmp ne i32 %217, 0
  br i1 %tobool278, label %if.then.279, label %if.end.380

if.then.279:                                      ; preds = %if.then.276
  %218 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period280 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %218, i32 0, i32 30
  %219 = load i32, i32* %intra_period280, align 4
  %cmp281 = icmp eq i32 %219, 0
  br i1 %cmp281, label %if.then.283, label %if.else.296

if.then.283:                                      ; preds = %if.then.279
  %220 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames284 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %220, i32 0, i32 2
  %221 = load i32, i32* %no_frames284, align 4
  %222 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames285 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %222, i32 0, i32 2
  %223 = load i32, i32* %no_frames285, align 4
  %sub286 = sub nsw i32 %223, 1
  %224 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe287 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %224, i32 0, i32 40
  %225 = load i32, i32* %successive_Bframe287, align 4
  %mul288 = mul nsw i32 %sub286, %225
  %add289 = add nsw i32 %221, %mul288
  store i32 %add289, i32* %n, align 4
  %226 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames290 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %226, i32 0, i32 2
  %227 = load i32, i32* %no_frames290, align 4
  %sub291 = sub nsw i32 %227, 1
  store i32 %sub291, i32* %np, align 4
  %228 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames292 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %228, i32 0, i32 2
  %229 = load i32, i32* %no_frames292, align 4
  %sub293 = sub nsw i32 %229, 1
  %230 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe294 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %230, i32 0, i32 40
  %231 = load i32, i32* %successive_Bframe294, align 4
  %mul295 = mul nsw i32 %sub293, %231
  store i32 %mul295, i32* %nb, align 4
  br label %if.end.379

if.else.296:                                      ; preds = %if.then.279
  %232 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode297 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %232, i32 0, i32 162
  %233 = load i32, i32* %RCUpdateMode297, align 4
  %cmp298 = icmp ne i32 %233, 1
  br i1 %cmp298, label %land.lhs.true.300, label %if.else.371

land.lhs.true.300:                                ; preds = %if.else.296
  %234 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode301 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %234, i32 0, i32 162
  %235 = load i32, i32* %RCUpdateMode301, align 4
  %cmp302 = icmp ne i32 %235, 3
  br i1 %cmp302, label %if.then.304, label %if.else.371

if.then.304:                                      ; preds = %land.lhs.true.300
  %236 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period305 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %236, i32 0, i32 30
  %237 = load i32, i32* %intra_period305, align 4
  %238 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe306 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %238, i32 0, i32 40
  %239 = load i32, i32* %successive_Bframe306, align 4
  %add307 = add nsw i32 %239, 1
  %mul308 = mul nsw i32 %237, %add307
  store i32 %mul308, i32* %N, align 4
  %240 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe309 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %240, i32 0, i32 40
  %241 = load i32, i32* %successive_Bframe309, align 4
  %add310 = add nsw i32 %241, 1
  store i32 %add310, i32* %M, align 4
  %242 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number311 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %242, i32 0, i32 0
  %243 = load i32, i32* %number311, align 4
  %cmp312 = icmp eq i32 %243, 0
  br i1 %cmp312, label %cond.true.314, label %cond.false.317

cond.true.314:                                    ; preds = %if.then.304
  %244 = load i32, i32* %N, align 4
  %245 = load i32, i32* %M, align 4
  %sub315 = sub nsw i32 %245, 1
  %sub316 = sub nsw i32 %244, %sub315
  br label %cond.end.318

cond.false.317:                                   ; preds = %if.then.304
  %246 = load i32, i32* %N, align 4
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.317, %cond.true.314
  %cond319 = phi i32 [ %sub316, %cond.true.314 ], [ %246, %cond.false.317 ]
  store i32 %cond319, i32* %n, align 4
  %247 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number320 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %247, i32 0, i32 0
  %248 = load i32, i32* %number320, align 4
  %249 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period321 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %249, i32 0, i32 30
  %250 = load i32, i32* %intra_period321, align 4
  %div322 = sdiv i32 %248, %250
  %251 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames323 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %251, i32 0, i32 2
  %252 = load i32, i32* %no_frames323, align 4
  %253 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period324 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %253, i32 0, i32 30
  %254 = load i32, i32* %intra_period324, align 4
  %div325 = sdiv i32 %252, %254
  %cmp326 = icmp sge i32 %div322, %div325
  br i1 %cmp326, label %if.then.328, label %if.end.353

if.then.328:                                      ; preds = %cond.end.318
  %255 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number329 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %255, i32 0, i32 0
  %256 = load i32, i32* %number329, align 4
  %cmp330 = icmp ne i32 %256, 0
  br i1 %cmp330, label %if.then.332, label %if.else.345

if.then.332:                                      ; preds = %if.then.328
  %257 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames333 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %257, i32 0, i32 2
  %258 = load i32, i32* %no_frames333, align 4
  %259 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number334 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %259, i32 0, i32 0
  %260 = load i32, i32* %number334, align 4
  %sub335 = sub nsw i32 %258, %260
  %261 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames336 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %261, i32 0, i32 2
  %262 = load i32, i32* %no_frames336, align 4
  %263 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number337 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %263, i32 0, i32 0
  %264 = load i32, i32* %number337, align 4
  %sub338 = sub nsw i32 %262, %264
  %sub339 = sub nsw i32 %sub338, 1
  %265 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe340 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %265, i32 0, i32 40
  %266 = load i32, i32* %successive_Bframe340, align 4
  %mul341 = mul nsw i32 %sub339, %266
  %add342 = add nsw i32 %sub335, %mul341
  %267 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe343 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %267, i32 0, i32 40
  %268 = load i32, i32* %successive_Bframe343, align 4
  %add344 = add nsw i32 %add342, %268
  store i32 %add344, i32* %n, align 4
  br label %if.end.352

if.else.345:                                      ; preds = %if.then.328
  %269 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames346 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %269, i32 0, i32 2
  %270 = load i32, i32* %no_frames346, align 4
  %271 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames347 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %271, i32 0, i32 2
  %272 = load i32, i32* %no_frames347, align 4
  %sub348 = sub nsw i32 %272, 1
  %273 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe349 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %273, i32 0, i32 40
  %274 = load i32, i32* %successive_Bframe349, align 4
  %mul350 = mul nsw i32 %sub348, %274
  %add351 = add nsw i32 %270, %mul350
  store i32 %add351, i32* %n, align 4
  br label %if.end.352

if.end.352:                                       ; preds = %if.else.345, %if.then.332
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %cond.end.318
  %275 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number354 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %275, i32 0, i32 0
  %276 = load i32, i32* %number354, align 4
  %cmp355 = icmp eq i32 %276, 0
  br i1 %cmp355, label %if.then.357, label %if.else.363

if.then.357:                                      ; preds = %if.end.353
  %277 = load i32, i32* %n, align 4
  %278 = load i32, i32* %M, align 4
  %sub358 = sub nsw i32 %278, 1
  %mul359 = mul nsw i32 2, %sub358
  %add360 = add nsw i32 %277, %mul359
  %279 = load i32, i32* %M, align 4
  %div361 = sdiv i32 %add360, %279
  %sub362 = sub nsw i32 %div361, 1
  store i32 %sub362, i32* %np, align 4
  br label %if.end.368

if.else.363:                                      ; preds = %if.end.353
  %280 = load i32, i32* %n, align 4
  %281 = load i32, i32* %M, align 4
  %sub364 = sub nsw i32 %281, 1
  %add365 = add nsw i32 %280, %sub364
  %282 = load i32, i32* %M, align 4
  %div366 = sdiv i32 %add365, %282
  %sub367 = sub nsw i32 %div366, 1
  store i32 %sub367, i32* %np, align 4
  br label %if.end.368

if.end.368:                                       ; preds = %if.else.363, %if.then.357
  %283 = load i32, i32* %n, align 4
  %284 = load i32, i32* %np, align 4
  %sub369 = sub nsw i32 %283, %284
  %sub370 = sub nsw i32 %sub369, 1
  store i32 %sub370, i32* %nb, align 4
  br label %if.end.378

if.else.371:                                      ; preds = %land.lhs.true.300, %if.else.296
  %285 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames372 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %285, i32 0, i32 2
  %286 = load i32, i32* %no_frames372, align 4
  %sub373 = sub nsw i32 %286, 1
  store i32 %sub373, i32* %np, align 4
  %287 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames374 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %287, i32 0, i32 2
  %288 = load i32, i32* %no_frames374, align 4
  %sub375 = sub nsw i32 %288, 1
  %289 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe376 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %289, i32 0, i32 40
  %290 = load i32, i32* %successive_Bframe376, align 4
  %mul377 = mul nsw i32 %sub375, %290
  store i32 %mul377, i32* %nb, align 4
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.371, %if.end.368
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.283
  %291 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %292 = load i32, i32* %np, align 4
  %293 = load i32, i32* %nb, align 4
  call void @rc_init_GOP(%struct.rc_quadratic* %291, i32 %292, i32 %293)
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.then.276
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %lor.lhs.false.272, %if.end.261
  %294 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number382 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %294, i32 0, i32 0
  %295 = load i32, i32* %number382, align 4
  %296 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub383 = sub nsw i32 %295, %296
  %297 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %297, i32 0, i32 129
  %298 = load i32, i32* %NumFramesInELSubSeq, align 4
  %add384 = add nsw i32 %298, 1
  %rem385 = srem i32 %sub383, %add384
  %cmp386 = icmp eq i32 %rem385, 0
  br i1 %cmp386, label %if.then.388, label %if.else.389

if.then.388:                                      ; preds = %if.end.381
  %299 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %299, i32 0, i32 95
  store i32 0, i32* %layer, align 4
  br label %if.end.391

if.else.389:                                      ; preds = %if.end.381
  %300 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer390 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %300, i32 0, i32 95
  store i32 1, i32* %layer390, align 4
  br label %if.end.391

if.end.391:                                       ; preds = %if.else.389, %if.then.388
  %301 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %301, i32 0, i32 149
  %302 = load i32, i32* %redundant_pic_flag, align 4
  %tobool392 = icmp ne i32 %302, 0
  br i1 %tobool392, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %if.end.391
  call void @Init_redundant_frame()
  call void @Set_redundant_frame()
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.393, %if.end.391
  %call395 = call i32 @encode_one_frame()
  %303 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag396 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %303, i32 0, i32 149
  %304 = load i32, i32* %redundant_pic_flag396, align 4
  %tobool397 = icmp ne i32 %304, 0
  br i1 %tobool397, label %land.lhs.true.398, label %if.end.401

land.lhs.true.398:                                ; preds = %if.end.394
  %305 = load i32, i32* @key_frame, align 4
  %tobool399 = icmp ne i32 %305, 0
  br i1 %tobool399, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %land.lhs.true.398
  call void @encode_one_redundant_frame()
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.400, %land.lhs.true.398, %if.end.394
  %306 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type402 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %306, i32 0, i32 5
  %307 = load i32, i32* %type402, align 4
  %cmp403 = icmp eq i32 %307, 2
  br i1 %cmp403, label %land.lhs.true.405, label %if.end.409

land.lhs.true.405:                                ; preds = %if.end.401
  %308 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EnableOpenGOP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %308, i32 0, i32 31
  %309 = load i32, i32* %EnableOpenGOP, align 4
  %tobool406 = icmp ne i32 %309, 0
  br i1 %tobool406, label %if.then.407, label %if.end.409

if.then.407:                                      ; preds = %land.lhs.true.405
  %310 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %310, i32 0, i32 114
  %311 = load i32, i32* %ThisPOC, align 4
  %312 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %last_valid_reference408 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %312, i32 0, i32 169
  store i32 %311, i32* %last_valid_reference408, align 4
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.407, %land.lhs.true.405, %if.end.401
  %313 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %313, i32 0, i32 154
  %314 = load i32, i32* %ReportFrameStats, align 4
  %tobool410 = icmp ne i32 %314, 0
  br i1 %tobool410, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %if.end.409
  call void @report_frame_statistic()
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.411, %if.end.409
  %315 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc413 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %315, i32 0, i32 122
  %316 = load i32, i32* %nal_reference_idc413, align 4
  %cmp414 = icmp eq i32 %316, 0
  br i1 %cmp414, label %if.then.416, label %if.end.423

if.then.416:                                      ; preds = %if.end.412
  %317 = load i32, i32* %primary_disp, align 4
  %inc = add nsw i32 %317, 1
  store i32 %inc, i32* %primary_disp, align 4
  %318 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num417 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %318, i32 0, i32 115
  %319 = load i32, i32* %frame_num417, align 4
  %sub418 = sub i32 %319, 1
  store i32 %sub418, i32* %frame_num417, align 4
  %320 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add419 = add i32 %320, 4
  %shl420 = shl i32 1, %add419
  %321 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num421 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %321, i32 0, i32 115
  %322 = load i32, i32* %frame_num421, align 4
  %rem422 = urem i32 %322, %shl420
  store i32 %rem422, i32* %frame_num421, align 4
  br label %if.end.423

if.end.423:                                       ; preds = %if.then.416, %if.end.412
  call void @encode_enhancement_layer()
  call void @process_2nd_IGOP()
  br label %for.inc

for.inc:                                          ; preds = %if.end.423
  %323 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number424 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %323, i32 0, i32 0
  %324 = load i32, i32* %number424, align 4
  %inc425 = add nsw i32 %324, 1
  store i32 %inc425, i32* %number424, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call426 = call i32 @terminate_sequence()
  call void @flush_dpb()
  %325 = load i32, i32* @p_in, align 4
  %call427 = call i32 @close(i32 %325)
  %326 = load i32, i32* @p_dec, align 4
  %cmp428 = icmp ne i32 -1, %326
  br i1 %cmp428, label %if.then.430, label %if.end.432

if.then.430:                                      ; preds = %for.end
  %327 = load i32, i32* @p_dec, align 4
  %call431 = call i32 @close(i32 %327)
  br label %if.end.432

if.end.432:                                       ; preds = %if.then.430, %for.end
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @p_trace, align 8
  %tobool433 = icmp ne %struct._IO_FILE* %328, null
  br i1 %tobool433, label %if.then.434, label %if.end.436

if.then.434:                                      ; preds = %if.end.432
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** @p_trace, align 8
  %call435 = call i32 @fclose(%struct._IO_FILE* %329)
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.434, %if.end.432
  call void @Clear_Motion_Search_Module()
  call void @RandomIntraUninit()
  call void @FmoUninit()
  %330 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding437 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %330, i32 0, i32 69
  %331 = load i32, i32* %HierarchicalCoding437, align 4
  %tobool438 = icmp ne i32 %331, 0
  br i1 %tobool438, label %if.then.439, label %if.end.440

if.then.439:                                      ; preds = %if.end.436
  call void @clear_gop_structure()
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.439, %if.end.436
  call void @clear_rdopt()
  call void (...) @calc_buffer()
  call void @report()
  %332 = load i64*, i64** @Bit_Buffer, align 8
  %333 = bitcast i64* %332 to i8*
  call void @free(i8* %333) #3
  %334 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  call void @free_picture(%struct.Picture* %334)
  %335 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision441 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %335, i32 0, i32 62
  %336 = load i32, i32* %RDPictureDecision441, align 4
  %tobool442 = icmp ne i32 %336, 0
  br i1 %tobool442, label %if.then.443, label %if.end.444

if.then.443:                                      ; preds = %if.end.440
  %337 = load %struct.Picture*, %struct.Picture** @frame_pic_2, align 8
  call void @free_picture(%struct.Picture* %337)
  %338 = load %struct.Picture*, %struct.Picture** @frame_pic_3, align 8
  call void @free_picture(%struct.Picture* %338)
  br label %if.end.444

if.end.444:                                       ; preds = %if.then.443, %if.end.440
  %339 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %si_frame_indicator445 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %339, i32 0, i32 53
  %340 = load i32, i32* %si_frame_indicator445, align 4
  %tobool446 = icmp ne i32 %340, 0
  br i1 %tobool446, label %if.then.447, label %if.end.448

if.then.447:                                      ; preds = %if.end.444
  %341 = load %struct.Picture*, %struct.Picture** @frame_pic_si, align 8
  call void @free_picture(%struct.Picture* %341)
  %342 = load i32**, i32*** @lrec, align 8
  call void @free_mem2Dint(i32** %342)
  %343 = load i32***, i32**** @lrec_uv, align 8
  call void @free_mem3Dint(i32*** %343, i32 2)
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.447, %if.end.444
  %344 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %tobool449 = icmp ne %struct.Picture* %344, null
  br i1 %tobool449, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %if.end.448
  %345 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  call void @free_picture(%struct.Picture* %345)
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.450, %if.end.448
  %346 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %tobool452 = icmp ne %struct.Picture* %346, null
  br i1 %tobool452, label %if.then.453, label %if.end.454

if.then.453:                                      ; preds = %if.end.451
  %347 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @free_picture(%struct.Picture* %347)
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.453, %if.end.451
  call void @free_dpb()
  %348 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @free_colocated(%struct.colocated_params* %348)
  call void @uninit_out_buffer()
  call void @free_global_buffers()
  call void @free_img()
  call void @free_context_memory()
  call void @FreeNalPayloadBuffer()
  call void @FreeParameterSets()
  ret i32 0
}

declare void @Configure(i32, i8**) #1

declare void @Init_QMatrix() #1

declare void @Init_QOffsetMatrix() #1

declare void @AllocNalPayloadBuffer() #1

; Function Attrs: nounwind uwtable
define void @init_poc() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 150
  %1 = load i32, i32* %pic_order_cnt_type, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_type1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 101
  store i32 %1, i32* %pic_order_cnt_type1, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 102
  store i32 0, i32* %delta_pic_order_always_zero_flag, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 105
  store i32 1, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 68
  %6 = load i32, i32* %BRefPictures, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_non_ref_pic = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 103
  store i32 0, i32* %offset_for_non_ref_pic, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_ref_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 106
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %offset_for_ref_frame, i32 0, i64 0
  store i32 2, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 40
  %10 = load i32, i32* %successive_Bframe, align 4
  %mul = mul nsw i32 -2, %10
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_non_ref_pic2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 103
  store i32 %mul, i32* %offset_for_non_ref_pic2, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 40
  %13 = load i32, i32* %successive_Bframe3, align 4
  %add = add nsw i32 %13, 1
  %mul4 = mul nsw i32 2, %add
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_ref_frame5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 106
  %arrayidx6 = getelementptr inbounds [1 x i32], [1 x i32]* %offset_for_ref_frame5, i32 0, i64 0
  store i32 %mul4, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 121
  %16 = load i32, i32* %PicInterlace, align 4
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.end
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 122
  %18 = load i32, i32* %MbInterlace, align 4
  %cmp8 = icmp eq i32 %18, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 104
  store i32 0, i32* %offset_for_top_to_bottom_field, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true, %if.end
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_top_to_bottom_field11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 104
  store i32 1, i32* %offset_for_top_to_bottom_field11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 121
  %22 = load i32, i32* %PicInterlace13, align 4
  %cmp14 = icmp eq i32 %22, 0
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.19

land.lhs.true.15:                                 ; preds = %if.end.12
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 122
  %24 = load i32, i32* %MbInterlace16, align 4
  %cmp17 = icmp eq i32 %24, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %land.lhs.true.15
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 121
  store i32 0, i32* %pic_order_present_flag, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 108
  store i32 0, i32* %delta_pic_order_cnt_bottom, align 4
  br label %if.end.22

if.else.19:                                       ; preds = %land.lhs.true.15, %if.end.12
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 121
  store i32 1, i32* %pic_order_present_flag20, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt_bottom21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 108
  store i32 1, i32* %delta_pic_order_cnt_bottom21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  ret void
}

declare void @GenerateParameterSets() #1

; Function Attrs: nounwind uwtable
define void @SetLevelIndices() #0 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 6
  %1 = load i32, i32* %level_idc, align 4
  switch i32 %1, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb.1
    i32 11, label %sw.bb.3
    i32 12, label %sw.bb.7
    i32 13, label %sw.bb.9
    i32 20, label %sw.bb.11
    i32 21, label %sw.bb.13
    i32 22, label %sw.bb.15
    i32 30, label %sw.bb.17
    i32 31, label %sw.bb.19
    i32 32, label %sw.bb.21
    i32 40, label %sw.bb.23
    i32 41, label %sw.bb.25
    i32 42, label %sw.bb.27
    i32 50, label %sw.bb.35
    i32 51, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 2
  store i32 1, i32* %LevelIndex, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 2
  store i32 0, i32* %LevelIndex2, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %4, i32 0, i32 1
  %5 = load i32, i32* %profile_idc, align 4
  %cmp = icmp ult i32 %5, 100
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.3
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %constrained_set3_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 5
  %7 = load i32, i32* %constrained_set3_flag, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 2
  store i32 2, i32* %LevelIndex5, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %sw.bb.3
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 2
  store i32 1, i32* %LevelIndex6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 2
  store i32 3, i32* %LevelIndex8, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 2
  store i32 4, i32* %LevelIndex10, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 2
  store i32 5, i32* %LevelIndex12, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 2
  store i32 6, i32* %LevelIndex14, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 2
  store i32 7, i32* %LevelIndex16, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 2
  store i32 8, i32* %LevelIndex18, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 2
  store i32 9, i32* %LevelIndex20, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 2
  store i32 10, i32* %LevelIndex22, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 2
  store i32 11, i32* %LevelIndex24, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 2
  store i32 12, i32* %LevelIndex26, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %profile_idc28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 1
  %21 = load i32, i32* %profile_idc28, align 4
  %cmp29 = icmp ule i32 %21, 88
  br i1 %cmp29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %sw.bb.27
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 2
  store i32 13, i32* %LevelIndex31, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %sw.bb.27
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 2
  store i32 14, i32* %LevelIndex33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.30
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 2
  store i32 15, i32* %LevelIndex36, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 2
  store i32 16, i32* %LevelIndex38, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.207, i32 0, i32 0))
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 2
  store i32 16, i32* %LevelIndex39, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.37, %sw.bb.35, %if.end.34, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %if.end, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_img() #0 {
entry:
  %i = alloca i32, align 4
  %byte_abs_range = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 16
  %1 = load i32, i32* %yuv_format, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 160
  store i32 %1, i32* %yuv_format1, align 4
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 172
  %4 = load i32, i32* %BitDepthLuma, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 142
  store i32 %4, i32* %bitdepth_luma, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 142
  %7 = load i32, i32* %bitdepth_luma2, align 4
  %sub = sub nsw i32 %7, 8
  %mul = mul nsw i32 6, %sub
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 144
  store i32 %mul, i32* %bitdepth_luma_qp_scale, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 142
  %10 = load i32, i32* %bitdepth_luma3, align 4
  %sub4 = sub nsw i32 %10, 8
  %mul5 = mul nsw i32 2, %sub4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_lambda_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 146
  store i32 %mul5, i32* %bitdepth_lambda_scale, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 142
  %13 = load i32, i32* %bitdepth_luma6, align 4
  %sub7 = sub nsw i32 %13, 1
  %shl = shl i32 1, %sub7
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 154
  store i32 %shl, i32* %dc_pred_value_luma, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 142
  %16 = load i32, i32* %bitdepth_luma8, align 4
  %shl9 = shl i32 1, %16
  %sub10 = sub nsw i32 %shl9, 1
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 156
  store i32 %sub10, i32* %max_imgpel_value, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 164
  %arrayidx = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 1
  store i32 16, i32* %arrayidx11, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 164
  %arrayidx13 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 0
  store i32 16, i32* %arrayidx14, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 160
  %21 = load i32, i32* %yuv_format15, align 4
  %cmp = icmp ne i32 %21, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthChroma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 173
  %23 = load i32, i32* %BitDepthChroma, align 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 143
  store i32 %23, i32* %bitdepth_chroma, align 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 143
  %26 = load i32, i32* %bitdepth_chroma16, align 4
  %sub17 = sub nsw i32 %26, 1
  %shl18 = shl i32 1, %sub17
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 155
  store i32 %shl18, i32* %dc_pred_value_chroma, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 143
  %29 = load i32, i32* %bitdepth_chroma19, align 4
  %shl20 = shl i32 1, %29
  %sub21 = sub nsw i32 %shl20, 1
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 157
  store i32 %sub21, i32* %max_imgpel_value_uv, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 160
  %32 = load i32, i32* %yuv_format22, align 4
  %shl23 = shl i32 1, %32
  %and = and i32 %shl23, -2
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 158
  store i32 %and, i32* %num_blk8x8_uv, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 158
  %35 = load i32, i32* %num_blk8x8_uv24, align 4
  %shl25 = shl i32 %35, 1
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_cdc_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 159
  store i32 %shl25, i32* %num_cdc_coeff, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 160
  %38 = load i32, i32* %yuv_format26, align 4
  %cmp27 = icmp eq i32 %38, 1
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 160
  %40 = load i32, i32* %yuv_format28, align 4
  %cmp29 = icmp eq i32 %40, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %41 = phi i1 [ true, %if.then ], [ %cmp29, %lor.rhs ]
  %cond = select i1 %41, i32 8, i32 16
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 162
  store i32 %cond, i32* %mb_cr_size_x, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 164
  %arrayidx31 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size30, i32 0, i64 2
  %arrayidx32 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx31, i32 0, i64 0
  store i32 %cond, i32* %arrayidx32, align 4
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 164
  %arrayidx34 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size33, i32 0, i64 1
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx34, i32 0, i64 0
  store i32 %cond, i32* %arrayidx35, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 160
  %46 = load i32, i32* %yuv_format36, align 4
  %cmp37 = icmp eq i32 %46, 3
  br i1 %cmp37, label %lor.end.41, label %lor.rhs.38

lor.rhs.38:                                       ; preds = %lor.end
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 160
  %48 = load i32, i32* %yuv_format39, align 4
  %cmp40 = icmp eq i32 %48, 2
  br label %lor.end.41

lor.end.41:                                       ; preds = %lor.rhs.38, %lor.end
  %49 = phi i1 [ true, %lor.end ], [ %cmp40, %lor.rhs.38 ]
  %cond42 = select i1 %49, i32 16, i32 8
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 163
  store i32 %cond42, i32* %mb_cr_size_y, align 4
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 164
  %arrayidx44 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size43, i32 0, i64 2
  %arrayidx45 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx44, i32 0, i64 1
  store i32 %cond42, i32* %arrayidx45, align 4
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size46 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 164
  %arrayidx47 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size46, i32 0, i64 1
  %arrayidx48 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx47, i32 0, i64 1
  store i32 %cond42, i32* %arrayidx48, align 4
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 143
  %54 = load i32, i32* %bitdepth_chroma49, align 4
  %sub50 = sub nsw i32 %54, 8
  %mul51 = mul nsw i32 6, %sub50
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 145
  store i32 %mul51, i32* %bitdepth_chroma_qp_scale, align 4
  %56 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %cb_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %56, i32 0, i32 24
  %57 = load i32, i32* %cb_qp_index_offset, align 4
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %chroma_qp_offset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 165
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset, i32 0, i64 0
  store i32 %57, i32* %arrayidx52, align 4
  %59 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %cr_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %59, i32 0, i32 25
  %60 = load i32, i32* %cr_qp_index_offset, align 4
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %chroma_qp_offset53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 165
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset53, i32 0, i64 1
  store i32 %60, i32* %arrayidx54, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 143
  store i32 0, i32* %bitdepth_chroma55, align 4
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 157
  store i32 0, i32* %max_imgpel_value_uv56, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 158
  store i32 0, i32* %num_blk8x8_uv57, align 4
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_cdc_coeff58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 159
  store i32 0, i32* %num_cdc_coeff58, align 4
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x59 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 162
  store i32 0, i32* %mb_cr_size_x59, align 4
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 164
  %arrayidx61 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size60, i32 0, i64 2
  %arrayidx62 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx61, i32 0, i64 0
  store i32 0, i32* %arrayidx62, align 4
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 164
  %arrayidx64 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size63, i32 0, i64 1
  %arrayidx65 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx64, i32 0, i64 0
  store i32 0, i32* %arrayidx65, align 4
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 163
  store i32 0, i32* %mb_cr_size_y66, align 4
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size67 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 164
  %arrayidx68 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size67, i32 0, i64 2
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx68, i32 0, i64 1
  store i32 0, i32* %arrayidx69, align 4
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 164
  %arrayidx71 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size70, i32 0, i64 1
  %arrayidx72 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx71, i32 0, i64 1
  store i32 0, i32* %arrayidx72, align 4
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma_qp_scale73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 145
  store i32 0, i32* %bitdepth_chroma_qp_scale73, align 4
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma_qp_scale74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 145
  store i32 0, i32* %bitdepth_chroma_qp_scale74, align 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %chroma_qp_offset75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 165
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset75, i32 0, i64 0
  store i32 0, i32* %arrayidx76, align 4
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %chroma_qp_offset77 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 165
  %arrayidx78 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset77, i32 0, i64 1
  store i32 0, i32* %arrayidx78, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.end.41
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma79 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 142
  %77 = load i32, i32* %bitdepth_luma79, align 4
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 143
  %79 = load i32, i32* %bitdepth_chroma80, align 4
  %cmp81 = icmp sgt i32 %77, %79
  br i1 %cmp81, label %if.then.84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 160
  %81 = load i32, i32* %yuv_format82, align 4
  %cmp83 = icmp eq i32 %81, 0
  br i1 %cmp83, label %if.then.84, label %if.else.88

if.then.84:                                       ; preds = %lor.lhs.false, %if.end
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma85 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 142
  %83 = load i32, i32* %bitdepth_luma85, align 4
  %cmp86 = icmp sgt i32 %83, 8
  %cond87 = select i1 %cmp86, i32 16, i32 8
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_unit_size_on_disk = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 141
  store i32 %cond87, i32* %pic_unit_size_on_disk, align 4
  br label %if.end.93

if.else.88:                                       ; preds = %lor.lhs.false
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma89 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 143
  %86 = load i32, i32* %bitdepth_chroma89, align 4
  %cmp90 = icmp sgt i32 %86, 8
  %cond91 = select i1 %cmp90, i32 16, i32 8
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_unit_size_on_disk92 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 141
  store i32 %cond91, i32* %pic_unit_size_on_disk92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.88, %if.then.84
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma94 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 142
  %89 = load i32, i32* %bitdepth_luma94, align 4
  %mul95 = mul nsw i32 256, %89
  %add = add nsw i32 128, %mul95
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 163
  %91 = load i32, i32* %mb_cr_size_y96, align 4
  %mul97 = mul nsw i32 2, %91
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x98 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 162
  %93 = load i32, i32* %mb_cr_size_x98, align 4
  %mul99 = mul nsw i32 %mul97, %93
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 143
  %95 = load i32, i32* %bitdepth_chroma100, align 4
  %mul101 = mul nsw i32 %mul99, %95
  %add102 = add nsw i32 %add, %mul101
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_bitCount = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 147
  store i32 %add102, i32* %max_bitCount, align 4
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 144
  %98 = load i32, i32* %bitdepth_luma_qp_scale103, align 4
  %shr = ashr i32 %98, 1
  %add104 = add nsw i32 25, %shr
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_qp_delta = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 148
  store i32 %add104, i32* %max_qp_delta, align 4
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_qp_delta105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 148
  %101 = load i32, i32* %max_qp_delta105, align 4
  %add106 = add nsw i32 %101, 1
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %min_qp_delta = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 149
  store i32 %add106, i32* %min_qp_delta, align 4
  %103 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %103, i32 0, i32 21
  %104 = load i32, i32* %num_ref_frames, align 4
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames107 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 7
  store i32 %104, i32* %num_ref_frames107, align 4
  %106 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %106, i32 0, i32 25
  %107 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool = icmp ne i32 %107, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.93
  %108 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames108 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %108, i32 0, i32 21
  %109 = load i32, i32* %num_ref_frames108, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.93
  %110 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames109 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %110, i32 0, i32 21
  %111 = load i32, i32* %num_ref_frames109, align 4
  %mul110 = mul i32 2, %111
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond111 = phi i32 [ %109, %cond.true ], [ %mul110, %cond.false ]
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 8
  store i32 %cond111, i32* %max_num_references, align 4
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames112 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 8
  %114 = load i32, i32* %num_ref_frames112, align 4
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 93
  store i32 %114, i32* %buf_cycle, align 4
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 136
  store i32 0, i32* %DeblockCall, align 4
  %117 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FrameRate = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %117, i32 0, i32 92
  %118 = load double, double* %FrameRate, align 8
  %conv = fptrunc double %118 to float
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 12
  store float %conv, float* %framerate, align 4
  %120 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %120, i32 0, i32 79
  %call = call i32 @get_mem_mv(i16******* %pred_mv)
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 80
  %call113 = call i32 @get_mem_mv(i16******* %all_mv)
  %122 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %122, i32 0, i32 46
  %123 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool114 = icmp ne i32 %123, 0
  br i1 %tobool114, label %if.then.115, label %if.end.118

if.then.115:                                      ; preds = %cond.end
  %124 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %124, i32 0, i32 81
  %call116 = call i32 @get_mem_mv(i16******* %bipred_mv1)
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 82
  %call117 = call i32 @get_mem_mv(i16******* %bipred_mv2)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.115, %cond.end
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 53
  %call119 = call i32 @get_mem_ACcoeff(i32***** %cofAC)
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 54
  %call120 = call i32 @get_mem_DCcoeff(i32**** %cofDC)
  %128 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AdaptiveRounding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %128, i32 0, i32 185
  %129 = load i32, i32* %AdaptiveRounding, align 4
  %tobool121 = icmp ne i32 %129, 0
  br i1 %tobool121, label %if.then.122, label %if.end.131

if.then.122:                                      ; preds = %if.end.118
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust4x4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 55
  %call123 = call i32 @get_mem3Dint(i32**** %fadjust4x4, i32 4, i32 16, i32 16)
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 56
  %call124 = call i32 @get_mem3Dint(i32**** %fadjust8x8, i32 3, i32 16, i32 16)
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust4x4Cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 57
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y125 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 163
  %134 = load i32, i32* %mb_cr_size_y125, align 4
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 162
  %136 = load i32, i32* %mb_cr_size_x126, align 4
  %call127 = call i32 @get_mem4Dint(i32***** %fadjust4x4Cr, i32 4, i32 2, i32 %134, i32 %136)
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust8x8Cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 58
  %138 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y128 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %138, i32 0, i32 163
  %139 = load i32, i32* %mb_cr_size_y128, align 4
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 162
  %141 = load i32, i32* %mb_cr_size_x129, align 4
  %call130 = call i32 @get_mem4Dint(i32***** %fadjust8x8Cr, i32 1, i32 2, i32 %139, i32 %141)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.122, %if.end.118
  %142 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %142, i32 0, i32 122
  %143 = load i32, i32* %MbInterlace, align 4
  %tobool132 = icmp ne i32 %143, 0
  br i1 %tobool132, label %if.then.133, label %if.end.155

if.then.133:                                      ; preds = %if.end.131
  %call134 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 16))
  %call135 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 17))
  %call136 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 16))
  %call137 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 17))
  %call138 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 4))
  %call139 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 5))
  %call140 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 4))
  %call141 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 5))
  %144 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace142 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %144, i32 0, i32 122
  %145 = load i32, i32* %MbInterlace142, align 4
  %cmp143 = icmp ne i32 %145, 3
  br i1 %cmp143, label %if.then.145, label %if.end.154

if.then.145:                                      ; preds = %if.then.133
  %call146 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 16))
  %call147 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 17))
  %call148 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 16))
  %call149 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 17))
  %call150 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 4))
  %call151 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 5))
  %call152 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 4))
  %call153 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 5))
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.145, %if.then.133
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.131
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value156 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 156
  %147 = load i32, i32* %max_imgpel_value156, align 4
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv157 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 157
  %149 = load i32, i32* %max_imgpel_value_uv157, align 4
  %cmp158 = icmp sgt i32 %147, %149
  br i1 %cmp158, label %if.then.160, label %if.else.164

if.then.160:                                      ; preds = %if.end.155
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value161 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 156
  %151 = load i32, i32* %max_imgpel_value161, align 4
  %add162 = add nsw i32 %151, 1
  %mul163 = mul nsw i32 %add162, 2
  store i32 %mul163, i32* %byte_abs_range, align 4
  br label %if.end.168

if.else.164:                                      ; preds = %if.end.155
  %152 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv165 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %152, i32 0, i32 157
  %153 = load i32, i32* %max_imgpel_value_uv165, align 4
  %add166 = add nsw i32 %153, 1
  %mul167 = mul nsw i32 %add166, 2
  store i32 %mul167, i32* %byte_abs_range, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.164, %if.then.160
  %154 = load i32, i32* %byte_abs_range, align 4
  %conv169 = sext i32 %154 to i64
  %call170 = call noalias i8* @calloc(i64 %conv169, i64 4) #3
  %155 = bitcast i8* %call170 to i32*
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 62
  store i32* %155, i32** %quad, align 8
  %cmp171 = icmp eq i32* %155, null
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.168
  call void @no_mem_exit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %if.end.168
  %157 = load i32, i32* %byte_abs_range, align 4
  %div = sdiv i32 %157, 2
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad175 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 62
  %159 = load i32*, i32** %quad175, align 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i32, i32* %159, i64 %idx.ext
  store i32* %add.ptr, i32** %quad175, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.174
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* %byte_abs_range, align 4
  %div176 = sdiv i32 %161, 2
  %cmp177 = icmp slt i32 %160, %div176
  br i1 %cmp177, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %162 = load i32, i32* %i, align 4
  %163 = load i32, i32* %i, align 4
  %mul179 = mul nsw i32 %162, %163
  %164 = load i32, i32* %i, align 4
  %sub180 = sub nsw i32 0, %164
  %idxprom = sext i32 %sub180 to i64
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 62
  %166 = load i32*, i32** %quad181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %166, i64 %idxprom
  store i32 %mul179, i32* %arrayidx182, align 4
  %167 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %167 to i64
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad184 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 62
  %169 = load i32*, i32** %quad184, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %169, i64 %idxprom183
  store i32 %mul179, i32* %arrayidx185, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %170 = load i32, i32* %i, align 4
  %inc = add nsw i32 %170, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %171 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %171, i32 0, i32 14
  %172 = load i32, i32* %img_width, align 4
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 166
  %174 = load i32, i32* %auto_crop_right, align 4
  %add186 = add nsw i32 %172, %174
  %175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %175, i32 0, i32 13
  store i32 %add186, i32* %width, align 4
  %176 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %176, i32 0, i32 15
  %177 = load i32, i32* %img_height, align 4
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 167
  %179 = load i32, i32* %auto_crop_bottom, align 4
  %add187 = add nsw i32 %177, %179
  %180 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %180, i32 0, i32 17
  store i32 %add187, i32* %height, align 4
  %181 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width188 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %181, i32 0, i32 13
  %182 = load i32, i32* %width188, align 4
  %div189 = sdiv i32 %182, 4
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 15
  store i32 %div189, i32* %width_blk, align 4
  %184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height190 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %184, i32 0, i32 17
  %185 = load i32, i32* %height190, align 4
  %div191 = sdiv i32 %185, 4
  %186 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %186, i32 0, i32 19
  store i32 %div191, i32* %height_blk, align 4
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width192 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 13
  %188 = load i32, i32* %width192, align 4
  %add193 = add nsw i32 %188, 40
  %189 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_padded = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %189, i32 0, i32 14
  store i32 %add193, i32* %width_padded, align 4
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height194 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 17
  %191 = load i32, i32* %height194, align 4
  %add195 = add nsw i32 %191, 40
  %192 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_padded = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %192, i32 0, i32 18
  store i32 %add195, i32* %height_padded, align 4
  %193 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format196 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %193, i32 0, i32 160
  %194 = load i32, i32* %yuv_format196, align 4
  %cmp197 = icmp ne i32 %194, 0
  br i1 %cmp197, label %if.then.199, label %if.else.224

if.then.199:                                      ; preds = %for.end
  %195 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width200 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %195, i32 0, i32 13
  %196 = load i32, i32* %width200, align 4
  %197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format201 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %197, i32 0, i32 160
  %198 = load i32, i32* %yuv_format201, align 4
  %idxprom202 = sext i32 %198 to i64
  %arrayidx203 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_width_cr, i32 0, i64 %idxprom202
  %199 = load i32, i32* %arrayidx203, align 4
  %div204 = sdiv i32 16, %199
  %div205 = sdiv i32 %196, %div204
  %200 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %200, i32 0, i32 16
  store i32 %div205, i32* %width_cr, align 4
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height206 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 17
  %202 = load i32, i32* %height206, align 4
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format207 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 160
  %204 = load i32, i32* %yuv_format207, align 4
  %idxprom208 = sext i32 %204 to i64
  %arrayidx209 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_height_cr, i32 0, i64 %idxprom208
  %205 = load i32, i32* %arrayidx209, align 4
  %div210 = sdiv i32 16, %205
  %div211 = sdiv i32 %202, %div210
  %206 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %206, i32 0, i32 20
  store i32 %div211, i32* %height_cr, align 4
  %207 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width212 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %207, i32 0, i32 14
  %208 = load i32, i32* %img_width212, align 4
  %209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format213 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %209, i32 0, i32 160
  %210 = load i32, i32* %yuv_format213, align 4
  %idxprom214 = sext i32 %210 to i64
  %arrayidx215 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_width_cr, i32 0, i64 %idxprom214
  %211 = load i32, i32* %arrayidx215, align 4
  %div216 = sdiv i32 16, %211
  %div217 = sdiv i32 %208, %div216
  %212 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %212, i32 0, i32 175
  store i32 %div217, i32* %img_width_cr, align 4
  %213 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height218 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %213, i32 0, i32 15
  %214 = load i32, i32* %img_height218, align 4
  %215 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format219 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %215, i32 0, i32 160
  %216 = load i32, i32* %yuv_format219, align 4
  %idxprom220 = sext i32 %216 to i64
  %arrayidx221 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_height_cr, i32 0, i64 %idxprom220
  %217 = load i32, i32* %arrayidx221, align 4
  %div222 = sdiv i32 16, %217
  %div223 = sdiv i32 %214, %div222
  %218 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %218, i32 0, i32 174
  store i32 %div223, i32* %img_height_cr, align 4
  br label %if.end.229

if.else.224:                                      ; preds = %for.end
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr225 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 16
  store i32 0, i32* %width_cr225, align 4
  %220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr226 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %220, i32 0, i32 20
  store i32 0, i32* %height_cr226, align 4
  %221 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr227 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %221, i32 0, i32 175
  store i32 0, i32* %img_width_cr227, align 4
  %222 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr228 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %222, i32 0, i32 174
  store i32 0, i32* %img_height_cr228, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.224, %if.then.199
  %223 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr230 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %223, i32 0, i32 20
  %224 = load i32, i32* %height_cr230, align 4
  %225 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %225, i32 0, i32 21
  store i32 %224, i32* %height_cr_frame, align 4
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width231 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 13
  %227 = load i32, i32* %width231, align 4
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height232 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 17
  %229 = load i32, i32* %height232, align 4
  %mul233 = mul nsw i32 %227, %229
  %230 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %size = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %230, i32 0, i32 22
  store i32 %mul233, i32* %size, align 4
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr234 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 16
  %232 = load i32, i32* %width_cr234, align 4
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr235 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 20
  %234 = load i32, i32* %height_cr235, align 4
  %mul236 = mul nsw i32 %232, %234
  %235 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %size_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %235, i32 0, i32 23
  store i32 %mul236, i32* %size_cr, align 4
  %236 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width237 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %236, i32 0, i32 13
  %237 = load i32, i32* %width237, align 4
  %div238 = sdiv i32 %237, 16
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 116
  store i32 %div238, i32* %PicWidthInMbs, align 4
  %239 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height239 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %239, i32 0, i32 17
  %240 = load i32, i32* %height239, align 4
  %div240 = sdiv i32 %240, 16
  %241 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %241, i32 0, i32 118
  store i32 %div240, i32* %FrameHeightInMbs, align 4
  %242 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs241 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %242, i32 0, i32 116
  %243 = load i32, i32* %PicWidthInMbs241, align 4
  %244 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs242 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %244, i32 0, i32 118
  %245 = load i32, i32* %FrameHeightInMbs242, align 4
  %mul243 = mul i32 %243, %245
  %246 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %246, i32 0, i32 120
  store i32 %mul243, i32* %FrameSizeInMbs, align 4
  %247 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag244 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %247, i32 0, i32 25
  %248 = load i32, i32* %frame_mbs_only_flag244, align 4
  %tobool245 = icmp ne i32 %248, 0
  br i1 %tobool245, label %cond.true.246, label %cond.false.248

cond.true.246:                                    ; preds = %if.end.229
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs247 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 118
  %250 = load i32, i32* %FrameHeightInMbs247, align 4
  br label %cond.end.251

cond.false.248:                                   ; preds = %if.end.229
  %251 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs249 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %251, i32 0, i32 118
  %252 = load i32, i32* %FrameHeightInMbs249, align 4
  %div250 = udiv i32 %252, 2
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.248, %cond.true.246
  %cond252 = phi i32 [ %250, %cond.true.246 ], [ %div250, %cond.false.248 ]
  %253 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %253, i32 0, i32 117
  store i32 %cond252, i32* %PicHeightInMapUnits, align 4
  %254 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs253 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %254, i32 0, i32 120
  %255 = load i32, i32* %FrameSizeInMbs253, align 4
  %conv254 = zext i32 %255 to i64
  %call255 = call noalias i8* @calloc(i64 %conv254, i64 536) #3
  %256 = bitcast i8* %call255 to %struct.macroblock*
  %257 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %257, i32 0, i32 61
  store %struct.macroblock* %256, %struct.macroblock** %mb_data, align 8
  %cmp256 = icmp eq %struct.macroblock* %256, null
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %cond.end.251
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %cond.end.251
  %258 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %258, i32 0, i32 23
  %259 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool260 = icmp ne i32 %259, 0
  br i1 %tobool260, label %if.then.261, label %if.end.269

if.then.261:                                      ; preds = %if.end.259
  %260 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs262 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %260, i32 0, i32 120
  %261 = load i32, i32* %FrameSizeInMbs262, align 4
  %conv263 = zext i32 %261 to i64
  %call264 = call noalias i8* @calloc(i64 %conv263, i64 4) #3
  %262 = bitcast i8* %call264 to i32*
  %263 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %263, i32 0, i32 63
  store i32* %262, i32** %intra_block, align 8
  %cmp265 = icmp eq i32* %262, null
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.then.261
  call void @no_mem_exit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %if.then.261
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.259
  %264 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %264, i32 0, i32 114
  %265 = load i32, i32* %CtxAdptLagrangeMult, align 4
  %cmp270 = icmp eq i32 %265, 1
  br i1 %cmp270, label %if.then.272, label %if.end.280

if.then.272:                                      ; preds = %if.end.269
  %266 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs273 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %266, i32 0, i32 120
  %267 = load i32, i32* %FrameSizeInMbs273, align 4
  %conv274 = zext i32 %267 to i64
  %call275 = call noalias i8* @calloc(i64 %conv274, i64 8) #3
  %268 = bitcast i8* %call275 to double*
  store double* %268, double** @mb16x16_cost_frame, align 8
  %cmp276 = icmp eq double* %268, null
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.then.272
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.278, %if.then.272
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.end.269
  %269 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %269, i32 0, i32 31
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk281 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 19
  %271 = load i32, i32* %height_blk281, align 4
  %272 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk282 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %272, i32 0, i32 15
  %273 = load i32, i32* %width_blk282, align 4
  %call283 = call i32 @get_mem2D(i8*** %ipredmode, i32 %271, i32 %273)
  %274 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %274, i32 0, i32 32
  %275 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk284 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %275, i32 0, i32 19
  %276 = load i32, i32* %height_blk284, align 4
  %277 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk285 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %277, i32 0, i32 15
  %278 = load i32, i32* %width_blk285, align 4
  %call286 = call i32 @get_mem2D(i8*** %ipredmode8x8, i32 %276, i32 %278)
  %279 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode287 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %279, i32 0, i32 31
  %280 = load i8**, i8*** %ipredmode287, align 8
  %arrayidx288 = getelementptr inbounds i8*, i8** %280, i64 0
  %281 = load i8*, i8** %arrayidx288, align 8
  %arrayidx289 = getelementptr inbounds i8, i8* %281, i64 0
  %282 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk290 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %282, i32 0, i32 19
  %283 = load i32, i32* %height_blk290, align 4
  %284 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %284, i32 0, i32 15
  %285 = load i32, i32* %width_blk291, align 4
  %mul292 = mul nsw i32 %283, %285
  %conv293 = sext i32 %mul292 to i64
  %mul294 = mul i64 %conv293, 1
  call void @llvm.memset.p0i8.i64(i8* %arrayidx289, i8 -1, i64 %mul294, i32 1, i1 false)
  %286 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8295 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %286, i32 0, i32 32
  %287 = load i8**, i8*** %ipredmode8x8295, align 8
  %arrayidx296 = getelementptr inbounds i8*, i8** %287, i64 0
  %288 = load i8*, i8** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %288, i64 0
  %289 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk298 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %289, i32 0, i32 19
  %290 = load i32, i32* %height_blk298, align 4
  %291 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk299 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %291, i32 0, i32 15
  %292 = load i32, i32* %width_blk299, align 4
  %mul300 = mul nsw i32 %290, %292
  %conv301 = sext i32 %mul300 to i64
  %mul302 = mul i64 %conv301, 1
  call void @llvm.memset.p0i8.i64(i8* %arrayidx297, i8 -1, i64 %mul302, i32 1, i1 false)
  %293 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk303 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %293, i32 0, i32 19
  %294 = load i32, i32* %height_blk303, align 4
  %295 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk304 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %295, i32 0, i32 15
  %296 = load i32, i32* %width_blk304, align 4
  %call305 = call i32 @get_mem2D(i8*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 10), i32 %294, i32 %296)
  %297 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace306 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %297, i32 0, i32 122
  %298 = load i32, i32* %MbInterlace306, align 4
  %tobool307 = icmp ne i32 %298, 0
  br i1 %tobool307, label %if.then.308, label %if.end.318

if.then.308:                                      ; preds = %if.end.280
  %299 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk309 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %299, i32 0, i32 19
  %300 = load i32, i32* %height_blk309, align 4
  %301 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk310 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %301, i32 0, i32 15
  %302 = load i32, i32* %width_blk310, align 4
  %call311 = call i32 @get_mem2D(i8*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 10), i32 %300, i32 %302)
  %303 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk312 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %303, i32 0, i32 19
  %304 = load i32, i32* %height_blk312, align 4
  %305 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk313 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %305, i32 0, i32 15
  %306 = load i32, i32* %width_blk313, align 4
  %call314 = call i32 @get_mem2D(i8*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 10), i32 %304, i32 %306)
  %307 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk315 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %307, i32 0, i32 19
  %308 = load i32, i32* %height_blk315, align 4
  %309 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk316 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %309, i32 0, i32 15
  %310 = load i32, i32* %width_blk316, align 4
  %call317 = call i32 @get_mem2D(i8*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 10), i32 %308, i32 %310)
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.308, %if.end.280
  %311 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %311, i32 0, i32 34
  %312 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs319 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %312, i32 0, i32 120
  %313 = load i32, i32* %FrameSizeInMbs319, align 4
  %314 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv320 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %314, i32 0, i32 158
  %315 = load i32, i32* %num_blk8x8_uv320, align 4
  %add321 = add nsw i32 4, %315
  %call322 = call i32 @get_mem3Dint(i32**** %nz_coeff, i32 %313, i32 4, i32 %add321)
  %316 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %316, i32 0, i32 150
  %317 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale323 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %317, i32 0, i32 144
  %318 = load i32, i32* %bitdepth_luma_qp_scale323, align 4
  %add324 = add nsw i32 52, %318
  %319 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale325 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %319, i32 0, i32 144
  %320 = load i32, i32* %bitdepth_luma_qp_scale325, align 4
  %call326 = call i32 @get_mem2Ddb_offset(double*** %lambda_md, i32 10, i32 %add324, i32 %320)
  %321 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %321, i32 0, i32 151
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale327 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 144
  %323 = load i32, i32* %bitdepth_luma_qp_scale327, align 4
  %add328 = add nsw i32 52, %323
  %324 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale329 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %324, i32 0, i32 144
  %325 = load i32, i32* %bitdepth_luma_qp_scale329, align 4
  %call330 = call i32 @get_mem3Ddb_offset(double**** %lambda_me, i32 10, i32 %add328, i32 3, i32 %325)
  %326 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %326, i32 0, i32 152
  %327 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale331 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %327, i32 0, i32 144
  %328 = load i32, i32* %bitdepth_luma_qp_scale331, align 4
  %add332 = add nsw i32 52, %328
  %329 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale333 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %329, i32 0, i32 144
  %330 = load i32, i32* %bitdepth_luma_qp_scale333, align 4
  %call334 = call i32 @get_mem3Dint_offset(i32**** %lambda_mf, i32 10, i32 %add332, i32 3, i32 %330)
  %331 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult335 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %331, i32 0, i32 114
  %332 = load i32, i32* %CtxAdptLagrangeMult335, align 4
  %cmp336 = icmp eq i32 %332, 1
  br i1 %cmp336, label %if.then.338, label %if.end.343

if.then.338:                                      ; preds = %if.end.318
  %333 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf_factor = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %333, i32 0, i32 153
  %334 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale339 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %334, i32 0, i32 144
  %335 = load i32, i32* %bitdepth_luma_qp_scale339, align 4
  %add340 = add nsw i32 52, %335
  %336 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale341 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %336, i32 0, i32 144
  %337 = load i32, i32* %bitdepth_luma_qp_scale341, align 4
  %call342 = call i32 @get_mem2Ddb_offset(double*** %lambda_mf_factor, i32 10, i32 %add340, i32 %337)
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.338, %if.end.318
  call void @CAVLC_init()
  %338 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %338, i32 0, i32 40
  %339 = load i32, i32* %successive_Bframe, align 4
  %tobool344 = icmp ne i32 %339, 0
  %cond345 = select i1 %tobool344, i32 1, i32 0
  %340 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %GopLevels = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %340, i32 0, i32 173
  store i32 %cond345, i32* %GopLevels, align 4
  %341 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %341, i32 0, i32 28
  store i32 0, i32* %mb_y_upd, align 4
  %342 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs346 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %342, i32 0, i32 116
  %343 = load i32, i32* %PicWidthInMbs346, align 4
  %344 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs347 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %344, i32 0, i32 118
  %345 = load i32, i32* %FrameHeightInMbs347, align 4
  %346 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RandomIntraMBRefresh = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %346, i32 0, i32 131
  %347 = load i32, i32* %RandomIntraMBRefresh, align 4
  call void @RandomIntraInit(i32 %343, i32 %345, i32 %347)
  call void @InitSEIMessages()
  %348 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFSendParameters = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %348, i32 0, i32 132
  %349 = load i32, i32* %LFSendParameters, align 4
  %tobool348 = icmp ne i32 %349, 0
  br i1 %tobool348, label %if.then.349, label %if.else.352

if.then.349:                                      ; preds = %if.end.343
  %350 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %350, i32 0, i32 134
  %351 = load i32, i32* %LFAlphaC0Offset, align 4
  %shl350 = shl i32 %351, 1
  store i32 %shl350, i32* %LFAlphaC0Offset, align 4
  %352 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFBetaOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %352, i32 0, i32 135
  %353 = load i32, i32* %LFBetaOffset, align 4
  %shl351 = shl i32 %353, 1
  store i32 %shl351, i32* %LFBetaOffset, align 4
  br label %if.end.355

if.else.352:                                      ; preds = %if.end.343
  %354 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFDisableIdc = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %354, i32 0, i32 133
  store i32 0, i32* %LFDisableIdc, align 4
  %355 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFAlphaC0Offset353 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %355, i32 0, i32 134
  store i32 0, i32* %LFAlphaC0Offset353, align 4
  %356 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFBetaOffset354 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %356, i32 0, i32 135
  store i32 0, i32* %LFBetaOffset354, align 4
  br label %if.end.355

if.end.355:                                       ; preds = %if.else.352, %if.then.349
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Picture* @malloc_picture() #0 {
entry:
  %pic = alloca %struct.Picture*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 824) #3
  %0 = bitcast i8* %call to %struct.Picture*
  store %struct.Picture* %0, %struct.Picture** %pic, align 8
  %cmp = icmp eq %struct.Picture* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.Picture*, %struct.Picture** %pic, align 8
  ret %struct.Picture* %1
}

declare i32 @get_mem2Dint(i32***, i32, i32) #1

declare i32 @get_mem3Dint(i32****, i32, i32, i32) #1

declare void @init_rdopt() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @init_gop_structure() #1

declare void @interpret_gop_structure() #1

declare void @create_hierarchy() #1

declare void @init_dpb() #1

declare void @init_out_buffer() #1

; Function Attrs: nounwind uwtable
define i32 @init_global_buffers() #0 {
entry:
  %j = alloca i32, align 4
  %memory_size = alloca i32, align 4
  store i32 0, i32* %memory_size, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 8
  %1 = load i32, i32* %max_num_references, align 4
  %mul = mul nsw i32 2, %1
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul1) #3
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** @last_P_no_frm, align 8
  %cmp = icmp eq i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.202, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %3, i32 0, i32 25
  %4 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.13, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 8
  %6 = load i32, i32* %max_num_references4, align 4
  %mul5 = mul nsw i32 4, %6
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 4
  %call8 = call noalias i8* @malloc(i64 %mul7) #3
  %7 = bitcast i8* %call8 to i32*
  store i32* %7, i32** @last_P_no_fld, align 8
  %cmp9 = icmp eq i32* %7, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.3
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.202, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %call14 = call i32 @init_orig_buffers()
  %8 = load i32, i32* %memory_size, align 4
  %add = add nsw i32 %8, %call14
  store i32 %add, i32* %memory_size, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 120
  %10 = load i32, i32* %FrameSizeInMbs, align 4
  %add15 = add i32 %10, 1
  %call16 = call i32 @get_mem2Dint(i32*** @PicPos, i32 %add15, i32 2)
  %11 = load i32, i32* %memory_size, align 4
  %add17 = add nsw i32 %11, %call16
  store i32 %add17, i32* %memory_size, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %12 = load i32, i32* %j, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 120
  %14 = load i32, i32* %FrameSizeInMbs18, align 4
  %add19 = add nsw i32 %14, 1
  %cmp20 = icmp slt i32 %12, %add19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %j, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 116
  %17 = load i32, i32* %PicWidthInMbs, align 4
  %rem = urem i32 %15, %17
  %18 = load i32, i32* %j, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32**, i32*** @PicPos, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %19, i64 %idxprom
  %20 = load i32*, i32** %arrayidx, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %rem, i32* %arrayidx22, align 4
  %21 = load i32, i32* %j, align 4
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 116
  %23 = load i32, i32* %PicWidthInMbs23, align 4
  %div = udiv i32 %21, %23
  %24 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load i32**, i32*** @PicPos, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %25, i64 %idxprom24
  %26 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %div, i32* %arrayidx26, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 59
  %29 = load i32, i32* %WeightedPrediction, align 4
  %tobool27 = icmp ne i32 %29, 0
  br i1 %tobool27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 60
  %31 = load i32, i32* %WeightedBiprediction, align 4
  %tobool28 = icmp ne i32 %31, 0
  br i1 %tobool28, label %if.then.31, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 34
  %33 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool30 = icmp ne i32 %33, 0
  br i1 %tobool30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false, %for.end
  %call32 = call i32 @get_mem3Dint(i32**** @wp_weight, i32 6, i32 32, i32 3)
  %34 = load i32, i32* %memory_size, align 4
  %add33 = add nsw i32 %34, %call32
  store i32 %add33, i32* %memory_size, align 4
  %call34 = call i32 @get_mem3Dint(i32**** @wp_offset, i32 6, i32 32, i32 3)
  %35 = load i32, i32* %memory_size, align 4
  %add35 = add nsw i32 %35, %call34
  store i32 %add35, i32* %memory_size, align 4
  %call36 = call i32 @get_mem4Dint(i32***** @wbp_weight, i32 6, i32 32, i32 32, i32 3)
  %36 = load i32, i32* %memory_size, align 4
  %add37 = add nsw i32 %36, %call36
  store i32 %add37, i32* %memory_size, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %lor.lhs.false.29
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 40
  %38 = load i32, i32* %successive_Bframe, align 4
  %cmp39 = icmp ne i32 %38, 0
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.38
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 68
  %40 = load i32, i32* %BRefPictures, align 4
  %cmp42 = icmp sgt i32 %40, 0
  br i1 %cmp42, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %lor.lhs.false.41, %if.end.38
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 19
  %42 = load i32, i32* %height_blk, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 15
  %44 = load i32, i32* %width_blk, align 4
  %call45 = call i32 @get_mem3D(i8**** @direct_ref_idx, i32 2, i32 %42, i32 %44)
  %45 = load i32, i32* %memory_size, align 4
  %add46 = add nsw i32 %45, %call45
  store i32 %add46, i32* %memory_size, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_blk47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 19
  %47 = load i32, i32* %height_blk47, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_blk48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 15
  %49 = load i32, i32* %width_blk48, align 4
  %call49 = call i32 @get_mem2D(i8*** @direct_pdir, i32 %47, i32 %49)
  %50 = load i32, i32* %memory_size, align 4
  %add50 = add nsw i32 %50, %call49
  store i32 %add50, i32* %memory_size, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %lor.lhs.false.41
  %51 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %51, i32 0, i32 113
  %52 = load i32, i32* %rdopt, align 4
  %cmp52 = icmp eq i32 %52, 3
  br i1 %cmp52, label %if.then.54, label %if.end.97

if.then.54:                                       ; preds = %if.end.51
  %53 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %53, i32 0, i32 0
  %call55 = call i32 @get_mem2Dint(i32*** %resY, i32 16, i32 16)
  %54 = load i32, i32* %memory_size, align 4
  %add56 = add nsw i32 %54, %call55
  store i32 %add56, i32* %memory_size, align 4
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 127
  %56 = load i32, i32* %NoOfDecoders, align 4
  %conv57 = sext i32 %56 to i64
  %call58 = call noalias i8* @calloc(i64 %conv57, i64 8) #3
  %57 = bitcast i8* %call58 to i16****
  %58 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref = getelementptr inbounds %struct.Decoders, %struct.Decoders* %58, i32 0, i32 2
  store i16**** %57, i16***** %decref, align 8
  %cmp59 = icmp eq i16**** %57, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.54
  call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.203, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.54
  store i32 0, i32* %j, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.75, %if.end.62
  %59 = load i32, i32* %j, align 4
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders64 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 127
  %61 = load i32, i32* %NoOfDecoders64, align 4
  %cmp65 = icmp slt i32 %59, %61
  br i1 %cmp65, label %for.body.67, label %for.end.77

for.body.67:                                      ; preds = %for.cond.63
  %62 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %62 to i64
  %63 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref69 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %63, i32 0, i32 2
  %64 = load i16****, i16***** %decref69, align 8
  %arrayidx70 = getelementptr inbounds i16***, i16**** %64, i64 %idxprom68
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 8
  %66 = load i32, i32* %max_num_references71, align 4
  %add72 = add nsw i32 %66, 1
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 17
  %68 = load i32, i32* %height, align 4
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 13
  %70 = load i32, i32* %width, align 4
  %call73 = call i32 @get_mem3Dpel(i16**** %arrayidx70, i32 %add72, i32 %68, i32 %70)
  %71 = load i32, i32* %memory_size, align 4
  %add74 = add nsw i32 %71, %call73
  store i32 %add74, i32* %memory_size, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.67
  %72 = load i32, i32* %j, align 4
  %inc76 = add nsw i32 %72, 1
  store i32 %inc76, i32* %j, align 4
  br label %for.cond.63

for.end.77:                                       ; preds = %for.cond.63
  %73 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock = getelementptr inbounds %struct.Decoders, %struct.Decoders* %73, i32 0, i32 4
  %call78 = call i32 @get_mem2Dpel(i16*** %RefBlock, i32 4, i32 4)
  %74 = load i32, i32* %memory_size, align 4
  %add79 = add nsw i32 %74, %call78
  store i32 %add79, i32* %memory_size, align 4
  %75 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %75, i32 0, i32 1
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders80 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 127
  %77 = load i32, i32* %NoOfDecoders80, align 4
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 17
  %79 = load i32, i32* %height81, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 13
  %81 = load i32, i32* %width82, align 4
  %call83 = call i32 @get_mem3Dpel(i16**** %decY, i32 %77, i32 %79, i32 %81)
  %82 = load i32, i32* %memory_size, align 4
  %add84 = add nsw i32 %82, %call83
  store i32 %add84, i32* %memory_size, align 4
  %83 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best = getelementptr inbounds %struct.Decoders, %struct.Decoders* %83, i32 0, i32 3
  %84 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders85 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %84, i32 0, i32 127
  %85 = load i32, i32* %NoOfDecoders85, align 4
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 17
  %87 = load i32, i32* %height86, align 4
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 13
  %89 = load i32, i32* %width87, align 4
  %call88 = call i32 @get_mem3Dpel(i16**** %decY_best, i32 %85, i32 %87, i32 %89)
  %90 = load i32, i32* %memory_size, align 4
  %add89 = add nsw i32 %90, %call88
  store i32 %add89, i32* %memory_size, align 4
  %91 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %status_map = getelementptr inbounds %struct.Decoders, %struct.Decoders* %91, i32 0, i32 5
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 118
  %93 = load i32, i32* %FrameHeightInMbs, align 4
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs90 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 116
  %95 = load i32, i32* %PicWidthInMbs90, align 4
  %call91 = call i32 @get_mem2D(i8*** %status_map, i32 %93, i32 %95)
  %96 = load i32, i32* %memory_size, align 4
  %add92 = add nsw i32 %96, %call91
  store i32 %add92, i32* %memory_size, align 4
  %97 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode = getelementptr inbounds %struct.Decoders, %struct.Decoders* %97, i32 0, i32 6
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 118
  %99 = load i32, i32* %FrameHeightInMbs93, align 4
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs94 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 116
  %101 = load i32, i32* %PicWidthInMbs94, align 4
  %call95 = call i32 @get_mem2D(i8*** %dec_mb_mode, i32 %99, i32 %101)
  %102 = load i32, i32* %memory_size, align 4
  %add96 = add nsw i32 %102, %call95
  store i32 %add96, i32* %memory_size, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %for.end.77, %if.end.51
  %103 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %103, i32 0, i32 128
  %104 = load i32, i32* %RestrictRef, align 4
  %tobool98 = icmp ne i32 %104, 0
  br i1 %tobool98, label %if.then.99, label %if.end.110

if.then.99:                                       ; preds = %if.end.97
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 17
  %106 = load i32, i32* %height100, align 4
  %107 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width101 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %107, i32 0, i32 13
  %108 = load i32, i32* %width101, align 4
  %call102 = call i32 @get_mem2D(i8*** @pixel_map, i32 %106, i32 %108)
  %109 = load i32, i32* %memory_size, align 4
  %add103 = add nsw i32 %109, %call102
  store i32 %add103, i32* %memory_size, align 4
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 17
  %111 = load i32, i32* %height104, align 4
  %div105 = sdiv i32 %111, 8
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 13
  %113 = load i32, i32* %width106, align 4
  %div107 = sdiv i32 %113, 8
  %call108 = call i32 @get_mem2D(i8*** @refresh_map, i32 %div105, i32 %div107)
  %114 = load i32, i32* %memory_size, align 4
  %add109 = add nsw i32 %114, %call108
  store i32 %add109, i32* %memory_size, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.99, %if.end.97
  %115 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag111 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %115, i32 0, i32 25
  %116 = load i32, i32* %frame_mbs_only_flag111, align 4
  %tobool112 = icmp ne i32 %116, 0
  br i1 %tobool112, label %if.end.124, label %if.then.113

if.then.113:                                      ; preds = %if.end.110
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 17
  %118 = load i32, i32* %height114, align 4
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width115 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 13
  %120 = load i32, i32* %width115, align 4
  %call116 = call i32 @get_mem2Dpel(i16*** @imgY_com, i32 %118, i32 %120)
  %121 = load i32, i32* %memory_size, align 4
  %add117 = add nsw i32 %121, %call116
  store i32 %add117, i32* %memory_size, align 4
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 160
  %123 = load i32, i32* %yuv_format, align 4
  %cmp118 = icmp ne i32 %123, 0
  br i1 %cmp118, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %if.then.113
  %124 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %124, i32 0, i32 20
  %125 = load i32, i32* %height_cr, align 4
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 16
  %127 = load i32, i32* %width_cr, align 4
  %call121 = call i32 @get_mem3Dpel(i16**** @imgUV_com, i32 2, i32 %125, i32 %127)
  %128 = load i32, i32* %memory_size, align 4
  %add122 = add nsw i32 %128, %call121
  store i32 %add122, i32* %memory_size, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %if.then.113
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.110
  %129 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %129, i32 0, i32 169
  %130 = load i32, i32* %SearchMode, align 4
  %cmp125 = icmp eq i32 %130, 1
  br i1 %cmp125, label %if.then.127, label %if.else

if.then.127:                                      ; preds = %if.end.124
  %call128 = call i32 @UMHEX_get_mem()
  %131 = load i32, i32* %memory_size, align 4
  %add129 = add nsw i32 %131, %call128
  store i32 %add129, i32* %memory_size, align 4
  br label %if.end.145

if.else:                                          ; preds = %if.end.124
  %132 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode130 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %132, i32 0, i32 169
  %133 = load i32, i32* %SearchMode130, align 4
  %cmp131 = icmp eq i32 %133, 2
  br i1 %cmp131, label %if.then.133, label %if.else.136

if.then.133:                                      ; preds = %if.else
  call void @smpUMHEX_init()
  %call134 = call i32 @smpUMHEX_get_mem()
  %134 = load i32, i32* %memory_size, align 4
  %add135 = add nsw i32 %134, %call134
  store i32 %add135, i32* %memory_size, align 4
  br label %if.end.144

if.else.136:                                      ; preds = %if.else
  %135 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode137 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %135, i32 0, i32 169
  %136 = load i32, i32* %SearchMode137, align 4
  %cmp138 = icmp eq i32 %136, 3
  br i1 %cmp138, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %if.else.136
  %call141 = call i32 @EPZSInit()
  %137 = load i32, i32* %memory_size, align 4
  %add142 = add nsw i32 %137, %call141
  store i32 %add142, i32* %memory_size, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.140, %if.else.136
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.133
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.127
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 157
  %139 = load i32, i32* %RCEnable, align 4
  %tobool146 = icmp ne i32 %139, 0
  br i1 %tobool146, label %if.then.147, label %if.end.154

if.then.147:                                      ; preds = %if.end.145
  call void @generic_alloc(%struct.rc_generic** @generic_RC)
  call void @rc_alloc(%struct.rc_quadratic** @quadratic_RC)
  %140 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %140, i32 0, i32 62
  %141 = load i32, i32* %RDPictureDecision, align 4
  %tobool148 = icmp ne i32 %141, 0
  br i1 %tobool148, label %if.then.152, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %if.then.147
  %142 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %142, i32 0, i32 122
  %143 = load i32, i32* %MbInterlace, align 4
  %cmp150 = icmp eq i32 %143, 2
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %lor.lhs.false.149, %if.then.147
  call void @generic_alloc(%struct.rc_generic** @generic_RC_init)
  call void @rc_alloc(%struct.rc_quadratic** @quadratic_RC_init)
  call void @generic_alloc(%struct.rc_generic** @generic_RC_best)
  call void @rc_alloc(%struct.rc_quadratic** @quadratic_RC_best)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %lor.lhs.false.149
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.145
  %144 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %144, i32 0, i32 149
  %145 = load i32, i32* %redundant_pic_flag, align 4
  %tobool155 = icmp ne i32 %145, 0
  br i1 %tobool155, label %if.then.156, label %if.end.171

if.then.156:                                      ; preds = %if.end.154
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height157 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 17
  %147 = load i32, i32* %height157, align 4
  %148 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %148, i32 0, i32 14
  %149 = load i32, i32* %img_width, align 4
  %call158 = call i32 @get_mem2Dpel(i16*** @imgY_tmp, i32 %147, i32 %149)
  %150 = load i32, i32* %memory_size, align 4
  %add159 = add nsw i32 %150, %call158
  store i32 %add159, i32* %memory_size, align 4
  %151 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %151, i32 0, i32 15
  %152 = load i32, i32* %img_height, align 4
  %div160 = sdiv i32 %152, 2
  %153 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width161 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %153, i32 0, i32 14
  %154 = load i32, i32* %img_width161, align 4
  %div162 = sdiv i32 %154, 2
  %call163 = call i32 @get_mem2Dpel(i16*** getelementptr inbounds ([2 x i16**], [2 x i16**]* @imgUV_tmp, i32 0, i64 0), i32 %div160, i32 %div162)
  %155 = load i32, i32* %memory_size, align 4
  %add164 = add nsw i32 %155, %call163
  store i32 %add164, i32* %memory_size, align 4
  %156 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height165 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %156, i32 0, i32 15
  %157 = load i32, i32* %img_height165, align 4
  %div166 = sdiv i32 %157, 2
  %158 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width167 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %158, i32 0, i32 14
  %159 = load i32, i32* %img_width167, align 4
  %div168 = sdiv i32 %159, 2
  %call169 = call i32 @get_mem2Dpel(i16*** getelementptr inbounds ([2 x i16**], [2 x i16**]* @imgUV_tmp, i32 0, i64 1), i32 %div166, i32 %div168)
  %160 = load i32, i32* %memory_size, align 4
  %add170 = add nsw i32 %160, %call169
  store i32 %add170, i32* %memory_size, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.156, %if.end.154
  %161 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_padded = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %161, i32 0, i32 18
  %162 = load i32, i32* %height_padded, align 4
  %163 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_padded = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %163, i32 0, i32 14
  %164 = load i32, i32* %width_padded, align 4
  %call172 = call i32 @get_mem2Dint(i32*** @imgY_sub_tmp, i32 %162, i32 %164)
  %165 = load i32, i32* %memory_size, align 4
  %add173 = add nsw i32 %165, %call172
  store i32 %add173, i32* %memory_size, align 4
  %166 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %166, i32 0, i32 13
  %167 = load i32, i32* %width174, align 4
  %add175 = add nsw i32 %167, 40
  store i32 %add175, i32* @img_padded_size_x, align 4
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr176 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 16
  %169 = load i32, i32* %width_cr176, align 4
  %170 = load i32, i32* @img_pad_size_uv_x, align 4
  %mul177 = mul nsw i32 2, %170
  %add178 = add nsw i32 %169, %mul177
  store i32 %add178, i32* @img_cr_padded_size_x, align 4
  %171 = load i32, i32* %memory_size, align 4
  ret i32 %171
}

declare void @create_context_memory() #1

declare void @Init_Motion_Search_Module() #1

; Function Attrs: nounwind uwtable
define internal void @information_init() #0 {
entry:
  %yuv_types = alloca [4 x [10 x i8]], align 16
  %0 = bitcast [4 x [10 x i8]]* %yuv_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([4 x [10 x i8]], [4 x [10 x i8]]* @information_init.yuv_types, i32 0, i32 0, i32 0), i64 40, i32 16, i1 false)
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 156
  %2 = load i32, i32* %Verbose, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 156
  %4 = load i32, i32* %Verbose1, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 25
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %infile, i32 0, i32 0
  %call4 = call i8* @mybasename(i8* %arraydecay)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.215, i32 0, i32 0), i8* %call4)
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %outfile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 26
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %outfile, i32 0, i32 0
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.216, i32 0, i32 0), i8* %arraydecay6)
  %7 = load i32, i32* @p_dec, align 4
  %cmp8 = icmp ne i32 %7, -1
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReconFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 27
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %ReconFile, i32 0, i32 0
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.217, i32 0, i32 0), i8* %arraydecay10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 160
  %10 = load i32, i32* %yuv_format, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x [10 x i8]], [4 x [10 x i8]]* %yuv_types, i32 0, i64 %idxprom
  %arrayidx13 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx, i32 0, i64 0
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.218, i32 0, i32 0), i8* %arrayidx13)
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 2
  %12 = load i32, i32* %no_frames, align 4
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 40
  %14 = load i32, i32* %successive_Bframe, align 4
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames15 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 2
  %16 = load i32, i32* %no_frames15, align 4
  %sub = sub nsw i32 %16, 1
  %mul = mul nsw i32 %14, %sub
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.219, i32 0, i32 0), i32 %12, i32 %mul)
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 121
  %18 = load i32, i32* %PicInterlace, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 122
  %20 = load i32, i32* %MbInterlace, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.220, i32 0, i32 0), i32 %18, i32 %20)
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 153
  %22 = load i32, i32* %Transform8x8Mode, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.221, i32 0, i32 0), i32 %22)
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 156
  %24 = load i32, i32* %Verbose19, align 4
  switch i32 %24, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.23
    i32 0, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.end.12
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.30, i32 0, i32 0))
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.222, i32 0, i32 0))
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.30, i32 0, i32 0))
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.12
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.223, i32 0, i32 0))
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.224, i32 0, i32 0))
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.223, i32 0, i32 0))
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.12
  br label %sw.default

sw.default:                                       ; preds = %if.end.12, %sw.bb.27
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.30, i32 0, i32 0))
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.225, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.23, %sw.bb
  ret void
}

declare void @rc_init_seq(%struct.rc_quadratic*) #1

declare void @UMHEX_DefineThreshold() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @PatchInputNoFrames() #1

declare i32 @start_sequence() #1

; Function Attrs: nounwind uwtable
define void @chroma_mc_setup() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 160
  %1 = load i32, i32* %yuv_format, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 10, i32* @img_pad_size_uv_x, align 4
  store i32 10, i32* @img_pad_size_uv_y, align 4
  store i8 7, i8* @chroma_mask_mv_y, align 1
  store i8 7, i8* @chroma_mask_mv_x, align 1
  store i32 3, i32* @chroma_shift_x, align 4
  store i32 3, i32* @chroma_shift_y, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 160
  %3 = load i32, i32* %yuv_format1, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 10, i32* @img_pad_size_uv_x, align 4
  store i32 20, i32* @img_pad_size_uv_y, align 4
  store i8 3, i8* @chroma_mask_mv_y, align 1
  store i8 7, i8* @chroma_mask_mv_x, align 1
  store i32 2, i32* @chroma_shift_y, align 4
  store i32 3, i32* @chroma_shift_x, align 4
  br label %if.end

if.else.4:                                        ; preds = %if.else
  store i32 20, i32* @img_pad_size_uv_x, align 4
  store i32 20, i32* @img_pad_size_uv_y, align 4
  store i8 3, i8* @chroma_mask_mv_y, align 1
  store i8 3, i8* @chroma_mask_mv_x, align 1
  store i32 2, i32* @chroma_shift_y, align 4
  store i32 2, i32* @chroma_shift_x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* @chroma_shift_y, align 4
  %sub = sub nsw i32 %4, 2
  store i32 %sub, i32* @shift_cr_y, align 4
  %5 = load i32, i32* @chroma_shift_x, align 4
  %sub6 = sub nsw i32 %5, 1
  store i32 %sub6, i32* @shift_cr_x, align 4
  ret void
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

; Function Attrs: nounwind uwtable
define void @SetImgType() #0 {
entry:
  %intra_refresh = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 30
  %1 = load i32, i32* %intra_period, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 0
  %3 = load i32, i32* %number, align 4
  %4 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %3, %4
  %cmp1 = icmp eq i32 %sub, 0
  %conv = zext i1 %cmp1 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 0
  %6 = load i32, i32* %number2, align 4
  %7 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub3 = sub nsw i32 %6, %7
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 30
  %9 = load i32, i32* %intra_period4, align 4
  %rem = srem i32 %sub3, %9
  %cmp5 = icmp eq i32 %rem, 0
  %conv6 = zext i1 %cmp5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv6, %cond.false ]
  store i32 %cond, i32* %intra_refresh, align 4
  %10 = load i32, i32* %intra_refresh, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 5
  store i32 2, i32* %type, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 50
  %13 = load i32, i32* %sp_periodicity, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %land.lhs.true, label %cond.false.15

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 0
  %15 = load i32, i32* %number8, align 4
  %16 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub9 = sub nsw i32 %15, %16
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 50
  %18 = load i32, i32* %sp_periodicity10, align 4
  %rem11 = srem i32 %sub9, %18
  %cmp12 = icmp eq i32 %rem11, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %land.lhs.true
  br label %cond.end.19

cond.false.15:                                    ; preds = %land.lhs.true, %if.else
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 68
  %20 = load i32, i32* %BRefPictures, align 4
  %cmp16 = icmp eq i32 %20, 2
  %cond18 = select i1 %cmp16, i32 1, i32 0
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.15, %cond.true.14
  %cond20 = phi i32 [ 3, %cond.true.14 ], [ %cond18, %cond.false.15 ]
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 5
  store i32 %cond20, i32* %type21, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.19, %if.then
  ret void
}

declare i32 @rewrite_paramsets() #1

declare void @rc_init_GOP(%struct.rc_quadratic*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @Init_redundant_frame() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 149
  %1 = load i32, i32* %redundant_pic_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 40
  %3 = load i32, i32* %successive_Bframe, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.208, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 121
  %5 = load i32, i32* %PicInterlace, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.209, i32 0, i32 0), i32 100)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 8
  %7 = load i32, i32* %num_ref_frames, align 4
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PrimaryGOPLength = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 195
  %9 = load i32, i32* %PrimaryGOPLength, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.5
  call void @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.210, i32 0, i32 0), i32 100)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.5
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumRedundantHierarchy = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 194
  %11 = load i32, i32* %NumRedundantHierarchy, align 4
  %shl = shl i32 1, %11
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PrimaryGOPLength8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 195
  %13 = load i32, i32* %PrimaryGOPLength8, align 4
  %cmp9 = icmp sgt i32 %shl, %13
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  call void @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.211, i32 0, i32 0), i32 100)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.7
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 156
  %15 = load i32, i32* %Verbose, align 4
  %cmp12 = icmp ne i32 %15, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  call void @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.212, i32 0, i32 0), i32 100)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  store i32 0, i32* @key_frame, align 4
  store i32 0, i32* @redundant_coding, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %redundant_pic_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 99
  store i32 0, i32* %redundant_pic_cnt, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 0
  %18 = load i32, i32* %number, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PrimaryGOPLength16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 195
  %20 = load i32, i32* %PrimaryGOPLength16, align 4
  %rem = srem i32 %18, %20
  store i32 %rem, i32* @frameNuminGOP, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 0
  %22 = load i32, i32* %number17, align 4
  %cmp18 = icmp eq i32 %22, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store i32 -1, i32* @frameNuminGOP, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define void @Set_redundant_frame() #0 {
entry:
  %GOPlength = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PrimaryGOPLength = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 195
  %1 = load i32, i32* %PrimaryGOPLength, align 4
  store i32 %1, i32* %GOPlength, align 4
  %2 = load i32, i32* @frameNuminGOP, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @redundant_coding, align 4
  store i32 1, i32* @key_frame, align 4
  %3 = load i32, i32* %GOPlength, align 4
  store i32 %3, i32* @redundant_ref_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumRedundantHierarchy = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 194
  %5 = load i32, i32* %NumRedundantHierarchy, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* @frameNuminGOP, align 4
  %7 = load i32, i32* %GOPlength, align 4
  %div = sdiv i32 %7, 2
  %cmp3 = icmp eq i32 %6, %div
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* @redundant_coding, align 4
  store i32 1, i32* @key_frame, align 4
  %8 = load i32, i32* %GOPlength, align 4
  %div5 = sdiv i32 %8, 2
  store i32 %div5, i32* @redundant_ref_idx, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumRedundantHierarchy8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 194
  %10 = load i32, i32* %NumRedundantHierarchy8, align 4
  %cmp9 = icmp sgt i32 %10, 1
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.7
  %11 = load i32, i32* @frameNuminGOP, align 4
  %12 = load i32, i32* %GOPlength, align 4
  %div11 = sdiv i32 %12, 4
  %cmp12 = icmp eq i32 %11, %div11
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.10
  %13 = load i32, i32* @frameNuminGOP, align 4
  %14 = load i32, i32* %GOPlength, align 4
  %mul = mul nsw i32 %14, 3
  %div13 = sdiv i32 %mul, 4
  %cmp14 = icmp eq i32 %13, %div13
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %lor.lhs.false, %if.then.10
  store i32 0, i32* @redundant_coding, align 4
  store i32 1, i32* @key_frame, align 4
  %15 = load i32, i32* %GOPlength, align 4
  %div16 = sdiv i32 %15, 4
  store i32 %div16, i32* @redundant_ref_idx, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %lor.lhs.false
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.7
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumRedundantHierarchy19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 194
  %17 = load i32, i32* %NumRedundantHierarchy19, align 4
  %cmp20 = icmp sgt i32 %17, 2
  br i1 %cmp20, label %if.then.21, label %if.end.39

if.then.21:                                       ; preds = %if.end.18
  %18 = load i32, i32* @frameNuminGOP, align 4
  %19 = load i32, i32* %GOPlength, align 4
  %div22 = sdiv i32 %19, 8
  %cmp23 = icmp eq i32 %18, %div22
  br i1 %cmp23, label %if.then.36, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.then.21
  %20 = load i32, i32* @frameNuminGOP, align 4
  %21 = load i32, i32* %GOPlength, align 4
  %mul25 = mul nsw i32 %21, 3
  %div26 = sdiv i32 %mul25, 8
  %cmp27 = icmp eq i32 %20, %div26
  br i1 %cmp27, label %if.then.36, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.24
  %22 = load i32, i32* @frameNuminGOP, align 4
  %23 = load i32, i32* %GOPlength, align 4
  %mul29 = mul nsw i32 %23, 5
  %div30 = sdiv i32 %mul29, 8
  %cmp31 = icmp eq i32 %22, %div30
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.28
  %24 = load i32, i32* @frameNuminGOP, align 4
  %25 = load i32, i32* %GOPlength, align 4
  %mul33 = mul nsw i32 %25, 7
  %div34 = sdiv i32 %mul33, 8
  %cmp35 = icmp eq i32 %24, %div34
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.28, %lor.lhs.false.24, %if.then.21
  store i32 0, i32* @redundant_coding, align 4
  store i32 1, i32* @key_frame, align 4
  %26 = load i32, i32* %GOPlength, align 4
  %div37 = sdiv i32 %26, 8
  store i32 %div37, i32* @redundant_ref_idx, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %lor.lhs.false.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.18
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumRedundantHierarchy40 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 194
  %28 = load i32, i32* %NumRedundantHierarchy40, align 4
  %cmp41 = icmp sgt i32 %28, 3
  br i1 %cmp41, label %if.then.42, label %if.end.72

if.then.42:                                       ; preds = %if.end.39
  %29 = load i32, i32* @frameNuminGOP, align 4
  %30 = load i32, i32* %GOPlength, align 4
  %div43 = sdiv i32 %30, 16
  %cmp44 = icmp eq i32 %29, %div43
  br i1 %cmp44, label %if.then.69, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.then.42
  %31 = load i32, i32* @frameNuminGOP, align 4
  %32 = load i32, i32* %GOPlength, align 4
  %mul46 = mul nsw i32 %32, 3
  %div47 = sdiv i32 %mul46, 16
  %cmp48 = icmp eq i32 %31, %div47
  br i1 %cmp48, label %if.then.69, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.45
  %33 = load i32, i32* @frameNuminGOP, align 4
  %34 = load i32, i32* %GOPlength, align 4
  %mul50 = mul nsw i32 %34, 5
  %div51 = sdiv i32 %mul50, 16
  %cmp52 = icmp eq i32 %33, %div51
  br i1 %cmp52, label %if.then.69, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.49
  %35 = load i32, i32* @frameNuminGOP, align 4
  %36 = load i32, i32* %GOPlength, align 4
  %mul54 = mul nsw i32 %36, 7
  %div55 = sdiv i32 %mul54, 16
  %cmp56 = icmp eq i32 %35, %div55
  br i1 %cmp56, label %if.then.69, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.53
  %37 = load i32, i32* @frameNuminGOP, align 4
  %38 = load i32, i32* %GOPlength, align 4
  %mul58 = mul nsw i32 %38, 9
  %div59 = sdiv i32 %mul58, 16
  %cmp60 = icmp eq i32 %37, %div59
  br i1 %cmp60, label %if.then.69, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.57
  %39 = load i32, i32* @frameNuminGOP, align 4
  %40 = load i32, i32* %GOPlength, align 4
  %mul62 = mul nsw i32 %40, 11
  %div63 = sdiv i32 %mul62, 16
  %cmp64 = icmp eq i32 %39, %div63
  br i1 %cmp64, label %if.then.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.61
  %41 = load i32, i32* @frameNuminGOP, align 4
  %42 = load i32, i32* %GOPlength, align 4
  %mul66 = mul nsw i32 %42, 13
  %div67 = sdiv i32 %mul66, 16
  %cmp68 = icmp eq i32 %41, %div67
  br i1 %cmp68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.61, %lor.lhs.false.57, %lor.lhs.false.53, %lor.lhs.false.49, %lor.lhs.false.45, %if.then.42
  store i32 0, i32* @redundant_coding, align 4
  store i32 1, i32* @key_frame, align 4
  %43 = load i32, i32* %GOPlength, align 4
  %div70 = sdiv i32 %43, 16
  store i32 %div70, i32* @redundant_ref_idx, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %lor.lhs.false.65
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.39
  ret void
}

declare i32 @encode_one_frame() #1

; Function Attrs: nounwind uwtable
define void @encode_one_redundant_frame() #0 {
entry:
  store i32 0, i32* @key_frame, align 4
  store i32 1, i32* @redundant_coding, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %redundant_pic_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 99
  store i32 1, i32* %redundant_pic_cnt, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 5
  %2 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 5
  store i32 0, i32* %type1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @encode_one_frame()
  ret void
}

; Function Attrs: nounwind uwtable
define void @report_frame_statistic() #0 {
entry:
  %p_stat_frm = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %name = alloca [20 x i8], align 16
  %bitcounter = alloca i32, align 4
  %now = alloca i64, align 8
  %l_time = alloca %struct.tm*, align 8
  %string = alloca [1000 x i8], align 16
  store %struct._IO_FILE* null, %struct._IO_FILE** %p_stat_frm, align 8
  %call = call %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %p_stat_frm, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %p_stat_frm, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %call4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end

if.else:                                          ; preds = %if.then
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.10, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.11, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.15

if.else.8:                                        ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* %3)
  %call10 = call %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %p_stat_frm, align 8
  %cmp11 = icmp eq %struct._IO_FILE* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.else.8
  %call13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.else.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %4 = load i32, i32* @frame_statistic_start, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.15
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([473 x i8], [473 x i8]* @.str.12, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([473 x i8], [473 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.15
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  %call21 = call i64 @time(i64* null) #3
  store i64 %call21, i64* %now, align 8
  %call22 = call i64 @time(i64* %now) #3
  %call23 = call %struct.tm* @localtime(i64* %now) #3
  store %struct.tm* %call23, %struct.tm** %l_time, align 8
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %8 = load %struct.tm*, %struct.tm** %l_time, align 8
  %call24 = call i64 @strftime(i8* %arraydecay, i64 1000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct.tm* %8) #3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %arraydecay25 = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay25)
  %arraydecay27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %10 = load %struct.tm*, %struct.tm** %l_time, align 8
  %call28 = call i64 @strftime(i8* %arraydecay27, i64 1000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.tm* %10) #3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %arraydecay29 = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay29)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %12 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %12, 20
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 25
  %arraydecay32 = getelementptr inbounds [256 x i8], [256 x i8]* %infile, i32 0, i32 0
  %call33 = call i64 @strlen(i8* %arraydecay32) #6
  %sub = sub i64 %call33, 20
  %conv = trunc i64 %sub to i32
  %call34 = call i32 @imax(i32 0, i32 %conv)
  %add = add nsw i32 %13, %call34
  %idxprom = sext i32 %add to i64
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile35 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 25
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %infile35, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %17 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %17 to i64
  %arrayidx37 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i64 %idxprom36
  store i8 %16, i8* %arrayidx37, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %arraydecay38 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* %arraydecay38)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %21 = load i32, i32* @frame_no, align 4
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 9
  %24 = load i32, i32* %qp, align 4
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %26 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %26, i32 0, i32 121
  %27 = load i32, i32* %PicInterlace, align 4
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 122
  %29 = load i32, i32* %MbInterlace, align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 %27, i32 %29)
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 0
  %31 = load i32, i32* %number, align 4
  %cmp43 = icmp eq i32 %31, 0
  br i1 %cmp43, label %land.lhs.true, label %if.else.49

land.lhs.true:                                    ; preds = %for.end
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 115
  %33 = load i32, i32* %frame_num, align 4
  %cmp45 = icmp eq i32 %33, 0
  br i1 %cmp45, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %land.lhs.true
  %34 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %34, i32 0, i32 16
  %35 = load i64, i64* %bit_ctr_I, align 8
  %conv48 = trunc i64 %35 to i32
  store i32 %conv48, i32* %bitcounter, align 4
  br label %if.end.53

if.else.49:                                       ; preds = %land.lhs.true, %for.end
  %36 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %36, i32 0, i32 5
  %37 = load i64, i64* %bit_ctr_n, align 8
  %38 = load i64, i64* @report_frame_statistic.last_bit_ctr_n, align 8
  %sub50 = sub nsw i64 %37, %38
  %conv51 = trunc i64 %sub50 to i32
  store i32 %conv51, i32* %bitcounter, align 4
  %39 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n52 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %39, i32 0, i32 5
  %40 = load i64, i64* %bit_ctr_n52, align 8
  store i64 %40, i64* @report_frame_statistic.last_bit_ctr_n, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.then.47
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %42 = load i32, i32* %bitcounter, align 4
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %44 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %44, i32 0, i32 0
  %45 = load float, float* %snr_y, align 4
  %conv55 = fpext float %45 to double
  %46 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %46, i32 0, i32 1
  %47 = load float, float* %snr_u, align 4
  %conv56 = fpext float %47 to double
  %48 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %48, i32 0, i32 2
  %49 = load float, float* %snr_v, align 4
  %conv57 = fpext float %49 to double
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), double %conv55, double %conv56, double %conv57)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %51 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %51, i32 0, i32 22
  %arrayidx59 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use, i32 0, i64 2
  %arrayidx60 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx59, i32 0, i64 9
  %52 = load i64, i64* %arrayidx60, align 8
  %53 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 2, i64 9), align 8
  %sub61 = sub nsw i64 %52, %53
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub61)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %55 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use63 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %55, i32 0, i32 22
  %arrayidx64 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use63, i32 0, i64 2
  %arrayidx65 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx64, i32 0, i64 13
  %56 = load i64, i64* %arrayidx65, align 8
  %57 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 2, i64 13), align 8
  %sub66 = sub nsw i64 %56, %57
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub66)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %59 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use68 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %59, i32 0, i32 22
  %arrayidx69 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use68, i32 0, i64 2
  %arrayidx70 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx69, i32 0, i64 10
  %60 = load i64, i64* %arrayidx70, align 8
  %61 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 2, i64 10), align 8
  %sub71 = sub nsw i64 %60, %61
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub71)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %63 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %63, i32 0, i32 12
  %arrayidx73 = getelementptr inbounds [4 x i32], [4 x i32]* %intra_chroma_mode, i32 0, i64 0
  %64 = load i32, i32* %arrayidx73, align 4
  %65 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i32 0, i64 0), align 4
  %sub74 = sub nsw i32 %64, %65
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %sub74)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %67 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode76 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %67, i32 0, i32 12
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %intra_chroma_mode76, i32 0, i64 1
  %68 = load i32, i32* %arrayidx77, align 4
  %69 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i32 0, i64 1), align 4
  %sub78 = sub nsw i32 %68, %69
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %sub78)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %71 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode80 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %71, i32 0, i32 12
  %arrayidx81 = getelementptr inbounds [4 x i32], [4 x i32]* %intra_chroma_mode80, i32 0, i64 2
  %72 = load i32, i32* %arrayidx81, align 4
  %73 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i32 0, i64 2), align 4
  %sub82 = sub nsw i32 %72, %73
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %sub82)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %75 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode84 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %75, i32 0, i32 12
  %arrayidx85 = getelementptr inbounds [4 x i32], [4 x i32]* %intra_chroma_mode84, i32 0, i64 3
  %76 = load i32, i32* %arrayidx85, align 4
  %77 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i32 0, i64 3), align 4
  %sub86 = sub nsw i32 %76, %77
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %sub86)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %79 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use88 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %79, i32 0, i32 22
  %arrayidx89 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use88, i32 0, i64 0
  %arrayidx90 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx89, i32 0, i64 9
  %80 = load i64, i64* %arrayidx90, align 8
  %81 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 9), align 8
  %sub91 = sub nsw i64 %80, %81
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub91)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %83 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use93 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %83, i32 0, i32 22
  %arrayidx94 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use93, i32 0, i64 0
  %arrayidx95 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx94, i32 0, i64 13
  %84 = load i64, i64* %arrayidx95, align 8
  %85 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 13), align 8
  %sub96 = sub nsw i64 %84, %85
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub96)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %87 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use98 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %87, i32 0, i32 22
  %arrayidx99 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use98, i32 0, i64 0
  %arrayidx100 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx99, i32 0, i64 10
  %88 = load i64, i64* %arrayidx100, align 8
  %89 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 10), align 8
  %sub101 = sub nsw i64 %88, %89
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub101)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %91 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use103 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %91, i32 0, i32 22
  %arrayidx104 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use103, i32 0, i64 0
  %arrayidx105 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx104, i32 0, i64 0
  %92 = load i64, i64* %arrayidx105, align 8
  %93 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 0), align 8
  %sub106 = sub nsw i64 %92, %93
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub106)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %95 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use108 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %95, i32 0, i32 22
  %arrayidx109 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use108, i32 0, i64 0
  %arrayidx110 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx109, i32 0, i64 1
  %96 = load i64, i64* %arrayidx110, align 8
  %97 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 1), align 8
  %sub111 = sub nsw i64 %96, %97
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub111)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %99 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use113 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %99, i32 0, i32 22
  %arrayidx114 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use113, i32 0, i64 0
  %arrayidx115 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx114, i32 0, i64 2
  %100 = load i64, i64* %arrayidx115, align 8
  %101 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 2), align 8
  %sub116 = sub nsw i64 %100, %101
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub116)
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %103 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use118 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %103, i32 0, i32 22
  %arrayidx119 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use118, i32 0, i64 0
  %arrayidx120 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx119, i32 0, i64 3
  %104 = load i64, i64* %arrayidx120, align 8
  %105 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 3), align 8
  %sub121 = sub nsw i64 %104, %105
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub121)
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %107 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %107, i32 0, i32 10
  %arrayidx123 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8, i32 0, i64 0
  %arrayidx124 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx123, i32 0, i64 1
  %108 = load i32, i32* %arrayidx124, align 4
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %108)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %110 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %110, i32 0, i32 11
  %arrayidx126 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4, i32 0, i64 0
  %arrayidx127 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx126, i32 0, i64 1
  %111 = load i32, i32* %arrayidx127, align 4
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %111)
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %113 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8129 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %113, i32 0, i32 10
  %arrayidx130 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8129, i32 0, i64 0
  %arrayidx131 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx130, i32 0, i64 2
  %114 = load i32, i32* %arrayidx131, align 4
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %114)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %116 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4133 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %116, i32 0, i32 11
  %arrayidx134 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4133, i32 0, i64 0
  %arrayidx135 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx134, i32 0, i64 2
  %117 = load i32, i32* %arrayidx135, align 4
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %117)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %119 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8137 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %119, i32 0, i32 10
  %arrayidx138 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8137, i32 0, i64 0
  %arrayidx139 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx138, i32 0, i64 3
  %120 = load i32, i32* %arrayidx139, align 4
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %120)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %122 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4141 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %122, i32 0, i32 11
  %arrayidx142 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4141, i32 0, i64 0
  %arrayidx143 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx142, i32 0, i64 3
  %123 = load i32, i32* %arrayidx143, align 4
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %123)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %125 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use145 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %125, i32 0, i32 22
  %arrayidx146 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use145, i32 0, i64 0
  %arrayidx147 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx146, i32 0, i64 8
  %126 = load i64, i64* %arrayidx147, align 8
  %127 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 8), align 8
  %sub148 = sub nsw i64 %126, %127
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub148)
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %129 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use150 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %129, i32 0, i32 22
  %arrayidx151 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use150, i32 0, i64 0
  %arrayidx152 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx151, i32 0, i64 4
  %130 = load i64, i64* %arrayidx152, align 8
  %131 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 4), align 8
  %sub153 = sub nsw i64 %130, %131
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub153)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %133 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8155 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %133, i32 0, i32 10
  %arrayidx156 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8155, i32 0, i64 0
  %arrayidx157 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx156, i32 0, i64 4
  %134 = load i32, i32* %arrayidx157, align 4
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %134)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %136 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4159 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %136, i32 0, i32 11
  %arrayidx160 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4159, i32 0, i64 0
  %arrayidx161 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx160, i32 0, i64 4
  %137 = load i32, i32* %arrayidx161, align 4
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %137)
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %139 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use163 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %139, i32 0, i32 22
  %arrayidx164 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use163, i32 0, i64 0
  %arrayidx165 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx164, i32 0, i64 5
  %140 = load i64, i64* %arrayidx165, align 8
  %141 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 5), align 8
  %sub166 = sub nsw i64 %140, %141
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub166)
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %143 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use168 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %143, i32 0, i32 22
  %arrayidx169 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use168, i32 0, i64 0
  %arrayidx170 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx169, i32 0, i64 6
  %144 = load i64, i64* %arrayidx170, align 8
  %145 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 6), align 8
  %sub171 = sub nsw i64 %144, %145
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub171)
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %147 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use173 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %147, i32 0, i32 22
  %arrayidx174 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use173, i32 0, i64 0
  %arrayidx175 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx174, i32 0, i64 7
  %148 = load i64, i64* %arrayidx175, align 8
  %149 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 7), align 8
  %sub176 = sub nsw i64 %148, %149
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub176)
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %151 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use178 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %151, i32 0, i32 22
  %arrayidx179 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use178, i32 0, i64 1
  %arrayidx180 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx179, i32 0, i64 9
  %152 = load i64, i64* %arrayidx180, align 8
  %153 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 9), align 8
  %sub181 = sub nsw i64 %152, %153
  %call182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub181)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %155 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use183 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %155, i32 0, i32 22
  %arrayidx184 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use183, i32 0, i64 1
  %arrayidx185 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx184, i32 0, i64 13
  %156 = load i64, i64* %arrayidx185, align 8
  %157 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 13), align 8
  %sub186 = sub nsw i64 %156, %157
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub186)
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %159 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use188 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %159, i32 0, i32 22
  %arrayidx189 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use188, i32 0, i64 1
  %arrayidx190 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx189, i32 0, i64 10
  %160 = load i64, i64* %arrayidx190, align 8
  %161 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 10), align 8
  %sub191 = sub nsw i64 %160, %161
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub191)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %163 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use193 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %163, i32 0, i32 22
  %arrayidx194 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use193, i32 0, i64 1
  %arrayidx195 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx194, i32 0, i64 0
  %164 = load i64, i64* %arrayidx195, align 8
  %165 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 0), align 8
  %sub196 = sub nsw i64 %164, %165
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub196)
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %167 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use198 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %167, i32 0, i32 22
  %arrayidx199 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use198, i32 0, i64 1
  %arrayidx200 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx199, i32 0, i64 1
  %168 = load i64, i64* %arrayidx200, align 8
  %169 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 1), align 8
  %sub201 = sub nsw i64 %168, %169
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub201)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %171 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use203 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %171, i32 0, i32 22
  %arrayidx204 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use203, i32 0, i64 1
  %arrayidx205 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx204, i32 0, i64 2
  %172 = load i64, i64* %arrayidx205, align 8
  %173 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 2), align 8
  %sub206 = sub nsw i64 %172, %173
  %call207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub206)
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %175 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use208 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %175, i32 0, i32 22
  %arrayidx209 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use208, i32 0, i64 1
  %arrayidx210 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx209, i32 0, i64 3
  %176 = load i64, i64* %arrayidx210, align 8
  %177 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 3), align 8
  %sub211 = sub nsw i64 %176, %177
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub211)
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %179 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8213 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %179, i32 0, i32 10
  %arrayidx214 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8213, i32 0, i64 1
  %arrayidx215 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx214, i32 0, i64 0
  %180 = load i32, i32* %arrayidx215, align 4
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %180)
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %182 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4217 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %182, i32 0, i32 11
  %arrayidx218 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4217, i32 0, i64 1
  %arrayidx219 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx218, i32 0, i64 0
  %183 = load i32, i32* %arrayidx219, align 4
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %183)
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %185 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8221 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %185, i32 0, i32 10
  %arrayidx222 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8221, i32 0, i64 1
  %arrayidx223 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx222, i32 0, i64 1
  %186 = load i32, i32* %arrayidx223, align 4
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %186)
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %188 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4225 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %188, i32 0, i32 11
  %arrayidx226 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4225, i32 0, i64 1
  %arrayidx227 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx226, i32 0, i64 1
  %189 = load i32, i32* %arrayidx227, align 4
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %189)
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %191 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8229 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %191, i32 0, i32 10
  %arrayidx230 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8229, i32 0, i64 1
  %arrayidx231 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx230, i32 0, i64 2
  %192 = load i32, i32* %arrayidx231, align 4
  %call232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %192)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %194 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4233 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %194, i32 0, i32 11
  %arrayidx234 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4233, i32 0, i64 1
  %arrayidx235 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx234, i32 0, i64 2
  %195 = load i32, i32* %arrayidx235, align 4
  %call236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %195)
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %197 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8237 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %197, i32 0, i32 10
  %arrayidx238 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8237, i32 0, i64 1
  %arrayidx239 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx238, i32 0, i64 3
  %198 = load i32, i32* %arrayidx239, align 4
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %198)
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %200 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4241 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %200, i32 0, i32 11
  %arrayidx242 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4241, i32 0, i64 1
  %arrayidx243 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx242, i32 0, i64 3
  %201 = load i32, i32* %arrayidx243, align 4
  %call244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %201)
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %203 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use245 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %203, i32 0, i32 22
  %arrayidx246 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use245, i32 0, i64 1
  %arrayidx247 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx246, i32 0, i64 8
  %204 = load i64, i64* %arrayidx247, align 8
  %205 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 8), align 8
  %sub248 = sub nsw i64 %204, %205
  %call249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub248)
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %207 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %207, i32 0, i32 9
  %arrayidx250 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use, i32 0, i64 1
  %arrayidx251 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx250, i32 0, i64 0
  %208 = load i32, i32* %arrayidx251, align 4
  %209 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use252 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %209, i32 0, i32 9
  %arrayidx253 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use252, i32 0, i64 1
  %arrayidx254 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx253, i32 0, i64 1
  %210 = load i32, i32* %arrayidx254, align 4
  %add255 = add nsw i32 %208, %210
  %211 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1, i64 0), align 4
  %212 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1, i64 1), align 4
  %add256 = add nsw i32 %211, %212
  %sub257 = sub nsw i32 %add255, %add256
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 %sub257)
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %214 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use259 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %214, i32 0, i32 9
  %arrayidx260 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use259, i32 0, i64 1
  %arrayidx261 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx260, i32 0, i64 1
  %215 = load i32, i32* %arrayidx261, align 4
  %216 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1, i64 1), align 4
  %sub262 = sub nsw i32 %215, %216
  %call263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %sub262)
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %218 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use264 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %218, i32 0, i32 9
  %arrayidx265 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use264, i32 0, i64 1
  %arrayidx266 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx265, i32 0, i64 0
  %219 = load i32, i32* %arrayidx266, align 4
  %220 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1, i64 0), align 4
  %sub267 = sub nsw i32 %219, %220
  %call268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %sub267)
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %222 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use269 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %222, i32 0, i32 22
  %arrayidx270 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use269, i32 0, i64 1
  %arrayidx271 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx270, i32 0, i64 4
  %223 = load i64, i64* %arrayidx271, align 8
  %224 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 4), align 8
  %sub272 = sub nsw i64 %223, %224
  %call273 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub272)
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %226 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8274 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %226, i32 0, i32 10
  %arrayidx275 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8274, i32 0, i64 1
  %arrayidx276 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx275, i32 0, i64 4
  %227 = load i32, i32* %arrayidx276, align 4
  %call277 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %227)
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %229 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4278 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %229, i32 0, i32 11
  %arrayidx279 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4278, i32 0, i64 1
  %arrayidx280 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx279, i32 0, i64 4
  %230 = load i32, i32* %arrayidx280, align 4
  %call281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %230)
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %232 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use282 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %232, i32 0, i32 22
  %arrayidx283 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use282, i32 0, i64 1
  %arrayidx284 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx283, i32 0, i64 5
  %233 = load i64, i64* %arrayidx284, align 8
  %234 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 5), align 8
  %sub285 = sub nsw i64 %233, %234
  %call286 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub285)
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %236 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use287 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %236, i32 0, i32 22
  %arrayidx288 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use287, i32 0, i64 1
  %arrayidx289 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx288, i32 0, i64 6
  %237 = load i64, i64* %arrayidx289, align 8
  %238 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 6), align 8
  %sub290 = sub nsw i64 %237, %238
  %call291 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub290)
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %240 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use292 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %240, i32 0, i32 22
  %arrayidx293 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use292, i32 0, i64 1
  %arrayidx294 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx293, i32 0, i64 7
  %241 = load i64, i64* %arrayidx294, align 8
  %242 = load i64, i64* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 7), align 8
  %sub295 = sub nsw i64 %241, %242
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 %sub295)
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call297 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %244 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use298 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %244, i32 0, i32 22
  %arrayidx299 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use298, i32 0, i64 2
  %245 = bitcast [15 x i64]* %arrayidx299 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([15 x i64]* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 2) to i8*), i8* %245, i64 120, i32 8, i1 false)
  %246 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use300 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %246, i32 0, i32 22
  %arrayidx301 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use300, i32 0, i64 0
  %247 = bitcast [15 x i64]* %arrayidx301 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([5 x [15 x i64]]* @report_frame_statistic.last_mode_use to i8*), i8* %247, i64 120, i32 8, i1 false)
  %248 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use302 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %248, i32 0, i32 22
  %arrayidx303 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use302, i32 0, i64 1
  %249 = bitcast [15 x i64]* %arrayidx303 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([15 x i64]* getelementptr inbounds ([5 x [15 x i64]], [5 x [15 x i64]]* @report_frame_statistic.last_mode_use, i32 0, i64 1) to i8*), i8* %249, i64 120, i32 8, i1 false)
  %250 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8304 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %250, i32 0, i32 10
  %251 = bitcast [5 x [15 x i32]]* %mode_use_transform_8x8304 to i8*
  call void @llvm.memset.p0i8.i64(i8* %251, i8 0, i64 120, i32 4, i1 false)
  %252 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4305 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %252, i32 0, i32 11
  %253 = bitcast [5 x [15 x i32]]* %mode_use_transform_4x4305 to i8*
  call void @llvm.memset.p0i8.i64(i8* %253, i8 0, i64 120, i32 8, i1 false)
  %254 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use306 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %254, i32 0, i32 9
  %arrayidx307 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use306, i32 0, i64 1
  %255 = bitcast [2 x i32]* %arrayidx307 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([2 x i32]* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1) to i8*), i8* %255, i64 8, i32 4, i1 false)
  %256 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode308 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %256, i32 0, i32 12
  %257 = bitcast [4 x i32]* %intra_chroma_mode308 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([4 x i32]* @report_frame_statistic.last_mode_chroma_use to i8*), i8* %257, i64 16, i32 4, i1 false)
  store i32 0, i32* @frame_statistic_start, align 4
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call309 = call i32 @fclose(%struct._IO_FILE* %258)
  ret void
}

declare void @encode_enhancement_layer() #1

; Function Attrs: nounwind uwtable
define void @process_2nd_IGOP() #0 {
entry:
  %FirstIGOPFinished = alloca i32, align 4
  store i32 0, i32* %FirstIGOPFinished, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 2
  %3 = load i32, i32* %no_frames, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp eq i32 %1, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %FirstIGOPFinished, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFrameIn2ndIGOP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 130
  %5 = load i32, i32* %NumFrameIn2ndIGOP, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i32, i32* %FirstIGOPFinished, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end.3
  %7 = load i32, i32* @In2ndIGOP, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end.3
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  store i32 1, i32* @In2ndIGOP, align 4
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 2
  %9 = load i32, i32* %no_frames7, align 4
  store i32 %9, i32* @start_frame_no_in_this_IGOP, align 4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 2
  %11 = load i32, i32* %no_frames8, align 4
  %sub9 = sub nsw i32 %11, 1
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 5
  %13 = load i32, i32* %jumpd, align 4
  %add = add nsw i32 %13, 1
  %mul = mul nsw i32 %sub9, %add
  %add10 = add nsw i32 %mul, 1
  store i32 %add10, i32* @start_tr_in_this_IGOP, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 2
  %15 = load i32, i32* %no_frames11, align 4
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFrameIn2ndIGOP12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 130
  %17 = load i32, i32* %NumFrameIn2ndIGOP12, align 4
  %add13 = add nsw i32 %15, %17
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 2
  store i32 %add13, i32* %no_frames14, align 4
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.2
  ret void
}

declare i32 @terminate_sequence() #1

declare void @flush_dpb() #1

declare i32 @close(i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @Clear_Motion_Search_Module() #1

declare void @RandomIntraUninit() #1

declare void @FmoUninit() #1

declare void @clear_gop_structure() #1

declare void @clear_rdopt() #1

declare void @calc_buffer(...) #1

; Function Attrs: nounwind uwtable
define void @report() #0 {
entry:
  %bit_use = alloca [5 x [2 x i64]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %name = alloca [30 x i8], align 16
  %total_bits = alloca i64, align 8
  %frame_rate = alloca float, align 4
  %mean_motion_info_bit_use = alloca [2 x double], align 16
  %now = alloca i64, align 8
  %l_time = alloca %struct.tm*, align 8
  %string = alloca [1000 x i8], align 16
  %seqtype = alloca [80 x i8], align 16
  %i167 = alloca i32, align 4
  %j168 = alloca i32, align 4
  %impix = alloca i32, align 4
  %impix_cr = alloca i32, align 4
  %max_pix_value_sqd = alloca i32, align 4
  %max_pix_value_sqd_uv = alloca i32, align 4
  %csnr_y = alloca float, align 4
  %csnr_u = alloca float, align 4
  %csnr_v = alloca float, align 4
  %0 = bitcast [2 x double]* %mean_motion_info_bit_use to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 16, i1 false)
  %1 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 2), align 4
  %conv = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx, i32 0, i64 0
  store i64 %conv, i64* %arrayidx1, align 8
  %2 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 0), align 4
  %3 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 3), align 4
  %add = add nsw i32 %2, %3
  %call = call i32 @imax(i32 %add, i32 1)
  %conv2 = sext i32 %call to i64
  %arrayidx3 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx3, i32 0, i64 0
  store i64 %conv2, i64* %arrayidx4, align 8
  %4 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx6, i32 0, i64 0
  store i64 %conv5, i64* %arrayidx7, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %5, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 %idxprom
  %arrayidx10 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx9, i32 0, i64 1
  store i64 0, i64* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.72, %for.end
  %8 = load i32, i32* %j, align 4
  %cmp12 = icmp slt i32 %8, 5
  br i1 %cmp12, label %for.body.14, label %for.end.74

for.body.14:                                      ; preds = %for.cond.11
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.27, %for.body.14
  %9 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %9, 15
  br i1 %cmp16, label %for.body.18, label %for.end.29

for.body.18:                                      ; preds = %for.cond.15
  %10 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %10 to i64
  %11 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %11 to i64
  %12 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %12, i32 0, i32 23
  %arrayidx21 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx21, i32 0, i64 %idxprom19
  %13 = load i64, i64* %arrayidx22, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx24, i32 0, i64 1
  %15 = load i64, i64* %arrayidx25, align 8
  %add26 = add nsw i64 %15, %13
  store i64 %add26, i64* %arrayidx25, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.18
  %16 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %16, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.15

for.end.29:                                       ; preds = %for.cond.15
  %17 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %17 to i64
  %18 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_header = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %18, i32 0, i32 26
  %arrayidx31 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_header, i32 0, i64 %idxprom30
  %19 = load i64, i64* %arrayidx31, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx33, i32 0, i64 1
  %21 = load i64, i64* %arrayidx34, align 8
  %add35 = add nsw i64 %21, %19
  store i64 %add35, i64* %arrayidx34, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %22 to i64
  %23 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mb_type = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %23, i32 0, i32 25
  %arrayidx37 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_mb_type, i32 0, i64 %idxprom36
  %24 = load i64, i64* %arrayidx37, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx39, i32 0, i64 1
  %26 = load i64, i64* %arrayidx40, align 8
  %add41 = add nsw i64 %26, %24
  store i64 %add41, i64* %arrayidx40, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %27 to i64
  %28 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %tmp_bit_use_cbp = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %28, i32 0, i32 27
  %arrayidx43 = getelementptr inbounds [5 x i64], [5 x i64]* %tmp_bit_use_cbp, i32 0, i64 %idxprom42
  %29 = load i64, i64* %arrayidx43, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %30 to i64
  %arrayidx45 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx45, i32 0, i64 1
  %31 = load i64, i64* %arrayidx46, align 8
  %add47 = add nsw i64 %31, %29
  store i64 %add47, i64* %arrayidx46, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %32 to i64
  %33 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffY = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %33, i32 0, i32 28
  %arrayidx49 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffY, i32 0, i64 %idxprom48
  %34 = load i64, i64* %arrayidx49, align 8
  %35 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %35 to i64
  %arrayidx51 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx51, i32 0, i64 1
  %36 = load i64, i64* %arrayidx52, align 8
  %add53 = add nsw i64 %36, %34
  store i64 %add53, i64* %arrayidx52, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %37 to i64
  %38 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffC = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %38, i32 0, i32 29
  %arrayidx55 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffC, i32 0, i64 %idxprom54
  %39 = load i64, i64* %arrayidx55, align 8
  %40 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx57, i32 0, i64 1
  %41 = load i64, i64* %arrayidx58, align 8
  %add59 = add nsw i64 %41, %39
  store i64 %add59, i64* %arrayidx58, align 8
  %42 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %42 to i64
  %43 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_delta_quant = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %43, i32 0, i32 30
  %arrayidx61 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_delta_quant, i32 0, i64 %idxprom60
  %44 = load i64, i64* %arrayidx61, align 8
  %45 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %45 to i64
  %arrayidx63 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx63, i32 0, i64 1
  %46 = load i64, i64* %arrayidx64, align 8
  %add65 = add nsw i64 %46, %44
  store i64 %add65, i64* %arrayidx64, align 8
  %47 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %47 to i64
  %48 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_stuffingBits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %48, i32 0, i32 24
  %arrayidx67 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_stuffingBits, i32 0, i64 %idxprom66
  %49 = load i64, i64* %arrayidx67, align 8
  %50 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %50 to i64
  %arrayidx69 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx69, i32 0, i64 1
  %51 = load i64, i64* %arrayidx70, align 8
  %add71 = add nsw i64 %51, %49
  store i64 %add71, i64* %arrayidx70, align 8
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.29
  %52 = load i32, i32* %j, align 4
  %inc73 = add nsw i32 %52, 1
  store i32 %inc73, i32* %j, align 4
  br label %for.cond.11

for.end.74:                                       ; preds = %for.cond.11
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 12
  %54 = load float, float* %framerate, align 4
  %55 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %55, i32 0, i32 13
  %56 = load i32, i32* %successive_Bframe, align 4
  %add75 = add nsw i32 %56, 1
  %conv76 = sitofp i32 %add75 to float
  %mul = fmul float %54, %conv76
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 5
  %58 = load i32, i32* %jumpd, align 4
  %add77 = add nsw i32 %58, 1
  %conv78 = sitofp i32 %add77 to float
  %div = fdiv float %mul, %conv78
  store float %div, float* %frame_rate, align 4
  %59 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %59, i32 0, i32 16
  %60 = load i64, i64* %bit_ctr_I, align 8
  %conv79 = sitofp i64 %60 to float
  %61 = load float, float* %frame_rate, align 4
  %mul80 = fmul float %conv79, %61
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 2
  %63 = load i32, i32* %no_frames, align 4
  %64 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %add81 = add nsw i32 %63, %64
  %conv82 = sitofp i32 %add81 to float
  %div83 = fdiv float %mul80, %conv82
  %65 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %65, i32 0, i32 19
  store float %div83, float* %bitrate_I, align 4
  %66 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %66, i32 0, i32 17
  %67 = load i64, i64* %bit_ctr_P, align 8
  %conv84 = sitofp i64 %67 to float
  %68 = load float, float* %frame_rate, align 4
  %mul85 = fmul float %conv84, %68
  %69 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames86 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %69, i32 0, i32 2
  %70 = load i32, i32* %no_frames86, align 4
  %71 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %add87 = add nsw i32 %70, %71
  %conv88 = sitofp i32 %add87 to float
  %div89 = fdiv float %mul85, %conv88
  %72 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_P = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %72, i32 0, i32 20
  store float %div89, float* %bitrate_P, align 4
  %73 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_B = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %73, i32 0, i32 18
  %74 = load i64, i64* %bit_ctr_B, align 8
  %conv90 = sitofp i64 %74 to float
  %75 = load float, float* %frame_rate, align 4
  %mul91 = fmul float %conv90, %75
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 2
  %77 = load i32, i32* %no_frames92, align 4
  %78 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %add93 = add nsw i32 %77, %78
  %conv94 = sitofp i32 %add93 to float
  %div95 = fdiv float %mul91, %conv94
  %79 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_B = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %79, i32 0, i32 21
  store float %div95, float* %bitrate_B, align 4
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.30, i32 0, i32 0))
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 156
  %82 = load i32, i32* %Verbose, align 4
  %cmp97 = icmp ne i32 %82, 0
  br i1 %cmp97, label %if.then, label %if.end.318

if.then:                                          ; preds = %for.end.74
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 12
  %85 = load float, float* %framerate99, align 4
  %86 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd100 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %86, i32 0, i32 5
  %87 = load i32, i32* %jumpd100, align 4
  %add101 = add nsw i32 %87, 1
  %conv102 = sitofp i32 %add101 to float
  %div103 = fdiv float %85, %conv102
  %conv104 = fpext float %div103 to double
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i32 0, i32 0), double %conv104)
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.115, %if.then
  %88 = load i32, i32* %i, align 4
  %cmp107 = icmp slt i32 %88, 3
  br i1 %cmp107, label %for.body.109, label %for.end.117

for.body.109:                                     ; preds = %for.cond.106
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %91 to i64
  %92 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %92, i32 0, i32 199
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric, i32 0, i64 %idxprom110
  %93 = load i32, i32* %arrayidx111, align 4
  %idxprom112 = sext i32 %93 to i64
  %arrayidx113 = getelementptr inbounds [3 x [20 x i8]], [3 x [20 x i8]]* @DistortionType, i32 0, i64 %idxprom112
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx113, i32 0, i32 0
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.32, i32 0, i32 0), i32 %90, i8* %arraydecay)
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.109
  %94 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %94, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.106

for.end.117:                                      ; preds = %for.cond.106
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %96 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ModeDecisionMetric = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %96, i32 0, i32 200
  %97 = load i32, i32* %ModeDecisionMetric, align 4
  %idxprom118 = sext i32 %97 to i64
  %arrayidx119 = getelementptr inbounds [3 x [20 x i8]], [3 x [20 x i8]]* @DistortionType, i32 0, i64 %idxprom118
  %arraydecay120 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx119, i32 0, i32 0
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i32 0, i32 0), i8* %arraydecay120)
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMEEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 198
  %99 = load i32, i32* %ChromaMEEnable, align 4
  switch i32 %99, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.end.117
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.117
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %103 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %103, i32 0, i32 14
  %104 = load i32, i32* %img_width, align 4
  %105 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %105, i32 0, i32 15
  %106 = load i32, i32* %img_height, align 4
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i32 0, i32 0), i32 %104, i32 %106)
  %107 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %107, i32 0, i32 17
  %108 = load i32, i32* %intra_upd, align 4
  %tobool = icmp ne i32 %108, 0
  br i1 %tobool, label %if.then.125, label %if.else

if.then.125:                                      ; preds = %sw.epilog
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.125
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %112 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %112, i32 0, i32 7
  %113 = load i32, i32* %search_range, align 4
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i32 0, i32 0), i32 %113)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %115 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %115, i32 0, i32 8
  %116 = load i32, i32* %num_ref_frames, align 4
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i32 0, i32 0), i32 %116)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %118 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %118, i32 0, i32 9
  %119 = load i32, i32* %P_List0_refs, align 4
  %tobool130 = icmp ne i32 %119, 0
  br i1 %tobool130, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %120 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs131 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %120, i32 0, i32 9
  %121 = load i32, i32* %P_List0_refs131, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %122 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames132 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %122, i32 0, i32 8
  %123 = load i32, i32* %num_ref_frames132, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %121, %cond.true ], [ %123, %cond.false ]
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0), i32 %cond)
  %124 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe134 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %124, i32 0, i32 13
  %125 = load i32, i32* %successive_Bframe134, align 4
  %cmp135 = icmp ne i32 %125, 0
  br i1 %cmp135, label %if.then.137, label %if.end.154

if.then.137:                                      ; preds = %cond.end
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %127 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %127, i32 0, i32 10
  %128 = load i32, i32* %B_List0_refs, align 4
  %tobool138 = icmp ne i32 %128, 0
  br i1 %tobool138, label %cond.true.139, label %cond.false.141

cond.true.139:                                    ; preds = %if.then.137
  %129 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs140 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %129, i32 0, i32 10
  %130 = load i32, i32* %B_List0_refs140, align 4
  br label %cond.end.143

cond.false.141:                                   ; preds = %if.then.137
  %131 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames142 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %131, i32 0, i32 8
  %132 = load i32, i32* %num_ref_frames142, align 4
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.141, %cond.true.139
  %cond144 = phi i32 [ %130, %cond.true.139 ], [ %132, %cond.false.141 ]
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0), i32 %cond144)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %134 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %134, i32 0, i32 11
  %135 = load i32, i32* %B_List1_refs, align 4
  %tobool146 = icmp ne i32 %135, 0
  br i1 %tobool146, label %cond.true.147, label %cond.false.149

cond.true.147:                                    ; preds = %cond.end.143
  %136 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs148 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %136, i32 0, i32 11
  %137 = load i32, i32* %B_List1_refs148, align 4
  br label %cond.end.151

cond.false.149:                                   ; preds = %cond.end.143
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames150 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 8
  %139 = load i32, i32* %num_ref_frames150, align 4
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.149, %cond.true.147
  %cond152 = phi i32 [ %137, %cond.true.147 ], [ %139, %cond.false.149 ]
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.43, i32 0, i32 0), i32 %cond152)
  br label %if.end.154

if.end.154:                                       ; preds = %cond.end.151, %cond.end
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i32 0, i32 0))
  %141 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe156 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %141, i32 0, i32 13
  %142 = load i32, i32* %successive_Bframe156, align 4
  %cmp157 = icmp sgt i32 %142, 0
  br i1 %cmp157, label %land.lhs.true, label %if.else.162

land.lhs.true:                                    ; preds = %if.end.154
  %143 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %143, i32 0, i32 69
  %144 = load i32, i32* %HierarchicalCoding, align 4
  %tobool159 = icmp ne i32 %144, 0
  br i1 %tobool159, label %if.then.160, label %if.else.162

if.then.160:                                      ; preds = %land.lhs.true
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %146 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %146, i32 0, i32 3
  %147 = load i32, i32* %qp0, align 4
  %148 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %148, i32 0, i32 4
  %149 = load i32, i32* %qpN, align 4
  %150 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %150, i32 0, i32 42
  %151 = load i32, i32* %qpB, align 4
  %call161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0), i32 %147, i32 %149, i32 %151)
  br label %if.end.247

if.else.162:                                      ; preds = %land.lhs.true, %if.end.154
  %152 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe163 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %152, i32 0, i32 13
  %153 = load i32, i32* %successive_Bframe163, align 4
  %cmp164 = icmp sgt i32 %153, 0
  br i1 %cmp164, label %if.then.166, label %if.else.230

if.then.166:                                      ; preds = %if.else.162
  %arraydecay169 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call170 = call i8* @strcpy(i8* %arraydecay169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0)) #3
  store i32 0, i32* %j168, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.210, %if.then.166
  %154 = load i32, i32* %j168, align 4
  %cmp172 = icmp slt i32 %154, 2
  br i1 %cmp172, label %for.body.174, label %for.end.212

for.body.174:                                     ; preds = %for.cond.171
  store i32 0, i32* %i167, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.199, %for.body.174
  %155 = load i32, i32* %i167, align 4
  %156 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe176 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %156, i32 0, i32 13
  %157 = load i32, i32* %successive_Bframe176, align 4
  %cmp177 = icmp slt i32 %155, %157
  br i1 %cmp177, label %for.body.179, label %for.end.201

for.body.179:                                     ; preds = %for.cond.175
  %158 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %158, i32 0, i32 68
  %159 = load i32, i32* %BRefPictures, align 4
  %tobool180 = icmp ne i32 %159, 0
  br i1 %tobool180, label %if.then.181, label %if.else.189

if.then.181:                                      ; preds = %for.body.179
  %arraydecay182 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %arraydecay183 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call184 = call i64 @strlen(i8* %arraydecay183) #6
  %sub = sub i64 79, %call184
  %conv185 = trunc i64 %sub to i32
  %call186 = call i32 @imax(i32 0, i32 %conv185)
  %conv187 = sext i32 %call186 to i64
  %call188 = call i8* @strncat(i8* %arraydecay182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i64 %conv187) #3
  br label %if.end.198

if.else.189:                                      ; preds = %for.body.179
  %arraydecay190 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %arraydecay191 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call192 = call i64 @strlen(i8* %arraydecay191) #6
  %sub193 = sub i64 79, %call192
  %conv194 = trunc i64 %sub193 to i32
  %call195 = call i32 @imax(i32 0, i32 %conv194)
  %conv196 = sext i32 %call195 to i64
  %call197 = call i8* @strncat(i8* %arraydecay190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i64 %conv196) #3
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.189, %if.then.181
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %160 = load i32, i32* %i167, align 4
  %inc200 = add nsw i32 %160, 1
  store i32 %inc200, i32* %i167, align 4
  br label %for.cond.175

for.end.201:                                      ; preds = %for.cond.175
  %arraydecay202 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %arraydecay203 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call204 = call i64 @strlen(i8* %arraydecay203) #6
  %sub205 = sub i64 79, %call204
  %conv206 = trunc i64 %sub205 to i32
  %call207 = call i32 @imax(i32 0, i32 %conv206)
  %conv208 = sext i32 %call207 to i64
  %call209 = call i8* @strncat(i8* %arraydecay202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i64 %conv208) #3
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.end.201
  %161 = load i32, i32* %j168, align 4
  %inc211 = add nsw i32 %161, 1
  store i32 %inc211, i32* %j168, align 4
  br label %for.cond.171

for.end.212:                                      ; preds = %for.cond.171
  %162 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures213 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %162, i32 0, i32 68
  %163 = load i32, i32* %BRefPictures213, align 4
  %tobool214 = icmp ne i32 %163, 0
  br i1 %tobool214, label %if.then.215, label %if.else.223

if.then.215:                                      ; preds = %for.end.212
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %arraydecay216 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %165 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0217 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %165, i32 0, i32 3
  %166 = load i32, i32* %qp0217, align 4
  %167 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN218 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %167, i32 0, i32 4
  %168 = load i32, i32* %qpN218, align 4
  %169 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB219 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %169, i32 0, i32 42
  %170 = load i32, i32* %qpB219, align 4
  %171 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %171, i32 0, i32 43
  %172 = load i32, i32* %qpBRSOffset, align 4
  %add220 = add nsw i32 %170, %172
  %call221 = call i32 @iClip3(i32 0, i32 51, i32 %add220)
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0), i8* %arraydecay216, i32 %166, i32 %168, i32 %call221)
  br label %if.end.229

if.else.223:                                      ; preds = %for.end.212
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %arraydecay224 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %174 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0225 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %174, i32 0, i32 3
  %175 = load i32, i32* %qp0225, align 4
  %176 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN226 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %176, i32 0, i32 4
  %177 = load i32, i32* %qpN226, align 4
  %178 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB227 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %178, i32 0, i32 42
  %179 = load i32, i32* %qpB227, align 4
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i32 0, i32 0), i8* %arraydecay224, i32 %175, i32 %177, i32 %179)
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.223, %if.then.215
  br label %if.end.246

if.else.230:                                      ; preds = %if.else.162
  %180 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe231 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %180, i32 0, i32 13
  %181 = load i32, i32* %successive_Bframe231, align 4
  %cmp232 = icmp eq i32 %181, 0
  br i1 %cmp232, label %land.lhs.true.234, label %if.else.241

land.lhs.true.234:                                ; preds = %if.else.230
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 50
  %183 = load i32, i32* %sp_periodicity, align 4
  %cmp235 = icmp eq i32 %183, 0
  br i1 %cmp235, label %if.then.237, label %if.else.241

if.then.237:                                      ; preds = %land.lhs.true.234
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %185 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0238 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %185, i32 0, i32 3
  %186 = load i32, i32* %qp0238, align 4
  %187 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN239 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %187, i32 0, i32 4
  %188 = load i32, i32* %qpN239, align 4
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0), i32 %186, i32 %188)
  br label %if.end.245

if.else.241:                                      ; preds = %land.lhs.true.234, %if.else.230
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %190 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0242 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %190, i32 0, i32 3
  %191 = load i32, i32* %qp0242, align 4
  %192 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN243 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %192, i32 0, i32 4
  %193 = load i32, i32* %qpN243, align 4
  %194 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %194, i32 0, i32 51
  %195 = load i32, i32* %qpsp, align 4
  %196 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp_pred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %196, i32 0, i32 52
  %197 = load i32, i32* %qpsp_pred, align 4
  %call244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.53, i32 0, i32 0), i32 %191, i32 %193, i32 %195, i32 %197)
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.241, %if.then.237
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.end.229
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.then.160
  %198 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %198, i32 0, i32 74
  %199 = load i32, i32* %symbol_mode, align 4
  %cmp248 = icmp eq i32 %199, 0
  br i1 %cmp248, label %if.then.250, label %if.else.252

if.then.250:                                      ; preds = %if.end.247
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.254

if.else.252:                                      ; preds = %if.end.247
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.252, %if.then.250
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %203 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %203, i32 0, i32 0
  %204 = load i32, i32* %ProfileIDC, align 4
  %205 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LevelIDC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %205, i32 0, i32 1
  %206 = load i32, i32* %LevelIDC, align 4
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.56, i32 0, i32 0), i32 %204, i32 %206)
  %207 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %207, i32 0, i32 169
  %208 = load i32, i32* %SearchMode, align 4
  %cmp256 = icmp eq i32 %208, 1
  br i1 %cmp256, label %if.then.258, label %if.else.260

if.then.258:                                      ; preds = %if.end.254
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %209, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.283

if.else.260:                                      ; preds = %if.end.254
  %210 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode261 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %210, i32 0, i32 169
  %211 = load i32, i32* %SearchMode261, align 4
  %cmp262 = icmp eq i32 %211, 2
  br i1 %cmp262, label %if.then.264, label %if.else.266

if.then.264:                                      ; preds = %if.else.260
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.282

if.else.266:                                      ; preds = %if.else.260
  %213 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode267 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %213, i32 0, i32 169
  %214 = load i32, i32* %SearchMode267, align 4
  %cmp268 = icmp eq i32 %214, 3
  br i1 %cmp268, label %if.then.270, label %if.else.272

if.then.270:                                      ; preds = %if.else.266
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i32 0, i32 0))
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @EPZSOutputStats(%struct._IO_FILE* %216, i16 signext 0)
  br label %if.end.281

if.else.272:                                      ; preds = %if.else.266
  %217 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode273 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %217, i32 0, i32 169
  %218 = load i32, i32* %SearchMode273, align 4
  %cmp274 = icmp eq i32 %218, 0
  br i1 %cmp274, label %if.then.276, label %if.else.278

if.then.276:                                      ; preds = %if.else.272
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call277 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.280

if.else.278:                                      ; preds = %if.else.272
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call279 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.280

if.end.280:                                       ; preds = %if.else.278, %if.then.276
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.then.270
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.then.264
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.then.258
  %221 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %221, i32 0, i32 106
  %222 = load i32, i32* %full_search, align 4
  %cmp284 = icmp eq i32 %222, 2
  br i1 %cmp284, label %if.then.286, label %if.else.288

if.then.286:                                      ; preds = %if.end.283
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.297

if.else.288:                                      ; preds = %if.end.283
  %224 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search289 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %224, i32 0, i32 106
  %225 = load i32, i32* %full_search289, align 4
  %cmp290 = icmp eq i32 %225, 1
  br i1 %cmp290, label %if.then.292, label %if.else.294

if.then.292:                                      ; preds = %if.else.288
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %226, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.296

if.else.294:                                      ; preds = %if.else.288
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %227, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.294, %if.then.292
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.then.286
  %228 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %228, i32 0, i32 113
  %229 = load i32, i32* %rdopt, align 4
  %tobool298 = icmp ne i32 %229, 0
  br i1 %tobool298, label %if.then.299, label %if.else.301

if.then.299:                                      ; preds = %if.end.297
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %230, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.303

if.else.301:                                      ; preds = %if.end.297
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.303

if.end.303:                                       ; preds = %if.else.301, %if.then.299
  %232 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %232, i32 0, i32 76
  %233 = load i32, i32* %partition_mode, align 4
  switch i32 %233, label %sw.default.308 [
    i32 0, label %sw.bb.304
    i32 1, label %sw.bb.306
  ]

sw.bb.304:                                        ; preds = %if.end.303
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i32 0, i32 0))
  br label %sw.epilog.310

sw.bb.306:                                        ; preds = %if.end.303
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call307 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.68, i32 0, i32 0))
  br label %sw.epilog.310

sw.default.308:                                   ; preds = %if.end.303
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call309 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.69, i32 0, i32 0))
  br label %sw.epilog.310

sw.epilog.310:                                    ; preds = %sw.default.308, %sw.bb.306, %sw.bb.304
  %237 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %237, i32 0, i32 75
  %238 = load i32, i32* %of_mode, align 4
  switch i32 %238, label %sw.default.315 [
    i32 0, label %sw.bb.311
    i32 1, label %sw.bb.313
  ]

sw.bb.311:                                        ; preds = %sw.epilog.310
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.70, i32 0, i32 0))
  br label %sw.epilog.317

sw.bb.313:                                        ; preds = %sw.epilog.310
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %240, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.71, i32 0, i32 0))
  br label %sw.epilog.317

sw.default.315:                                   ; preds = %sw.epilog.310
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call316 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.72, i32 0, i32 0))
  br label %sw.epilog.317

sw.epilog.317:                                    ; preds = %sw.default.315, %sw.bb.313, %sw.bb.311
  br label %if.end.318

if.end.318:                                       ; preds = %sw.epilog.317, %for.end.74
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.73, i32 0, i32 0))
  %243 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose320 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %243, i32 0, i32 156
  %244 = load i32, i32* %Verbose320, align 4
  %cmp321 = icmp ne i32 %244, 0
  br i1 %cmp321, label %if.then.323, label %if.end.404

if.then.323:                                      ; preds = %if.end.318
  %245 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height324 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %245, i32 0, i32 15
  %246 = load i32, i32* %img_height324, align 4
  %247 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width325 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %247, i32 0, i32 14
  %248 = load i32, i32* %img_width325, align 4
  %mul326 = mul nsw i32 %246, %248
  store i32 %mul326, i32* %impix, align 4
  %249 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %249, i32 0, i32 174
  %250 = load i32, i32* %img_height_cr, align 4
  %251 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %251, i32 0, i32 175
  %252 = load i32, i32* %img_width_cr, align 4
  %mul327 = mul nsw i32 %250, %252
  store i32 %mul327, i32* %impix_cr, align 4
  %253 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %253, i32 0, i32 156
  %254 = load i32, i32* %max_imgpel_value, align 4
  %255 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value328 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %255, i32 0, i32 156
  %256 = load i32, i32* %max_imgpel_value328, align 4
  %mul329 = mul nsw i32 %254, %256
  store i32 %mul329, i32* %max_pix_value_sqd, align 4
  %257 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %257, i32 0, i32 157
  %258 = load i32, i32* %max_imgpel_value_uv, align 4
  %259 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv330 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %259, i32 0, i32 157
  %260 = load i32, i32* %max_imgpel_value_uv330, align 4
  %mul331 = mul nsw i32 %258, %260
  store i32 %mul331, i32* %max_pix_value_sqd_uv, align 4
  %261 = load i32, i32* %max_pix_value_sqd, align 4
  %conv332 = uitofp i32 %261 to double
  %262 = load i32, i32* %impix, align 4
  %conv333 = sitofp i32 %262 to double
  %263 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %263, i32 0, i32 15
  %264 = load float, float* %msse_y, align 4
  %conv334 = fpext float %264 to double
  %cmp335 = fcmp oeq double %conv334, 0.000000e+00
  br i1 %cmp335, label %cond.true.337, label %cond.false.338

cond.true.337:                                    ; preds = %if.then.323
  br label %cond.end.341

cond.false.338:                                   ; preds = %if.then.323
  %265 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_y339 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %265, i32 0, i32 15
  %266 = load float, float* %msse_y339, align 4
  %conv340 = fpext float %266 to double
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.338, %cond.true.337
  %cond342 = phi double [ 1.000000e+00, %cond.true.337 ], [ %conv340, %cond.false.338 ]
  %div343 = fdiv double %conv333, %cond342
  %mul344 = fmul double %conv332, %div343
  %call345 = call double @log10(double %mul344) #3
  %mul346 = fmul double 1.000000e+01, %call345
  %conv347 = fptrunc double %mul346 to float
  store float %conv347, float* %csnr_y, align 4
  %267 = load i32, i32* %max_pix_value_sqd_uv, align 4
  %conv348 = uitofp i32 %267 to double
  %268 = load i32, i32* %impix_cr, align 4
  %conv349 = sitofp i32 %268 to double
  %269 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %269, i32 0, i32 16
  %270 = load float, float* %msse_u, align 4
  %conv350 = fpext float %270 to double
  %cmp351 = fcmp oeq double %conv350, 0.000000e+00
  br i1 %cmp351, label %cond.true.353, label %cond.false.354

cond.true.353:                                    ; preds = %cond.end.341
  br label %cond.end.357

cond.false.354:                                   ; preds = %cond.end.341
  %271 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_u355 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %271, i32 0, i32 16
  %272 = load float, float* %msse_u355, align 4
  %conv356 = fpext float %272 to double
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.354, %cond.true.353
  %cond358 = phi double [ 1.000000e+00, %cond.true.353 ], [ %conv356, %cond.false.354 ]
  %div359 = fdiv double %conv349, %cond358
  %mul360 = fmul double %conv348, %div359
  %call361 = call double @log10(double %mul360) #3
  %mul362 = fmul double 1.000000e+01, %call361
  %conv363 = fptrunc double %mul362 to float
  store float %conv363, float* %csnr_u, align 4
  %273 = load i32, i32* %max_pix_value_sqd_uv, align 4
  %conv364 = uitofp i32 %273 to double
  %274 = load i32, i32* %impix_cr, align 4
  %conv365 = sitofp i32 %274 to double
  %275 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %275, i32 0, i32 17
  %276 = load float, float* %msse_v, align 4
  %conv366 = fpext float %276 to double
  %cmp367 = fcmp oeq double %conv366, 0.000000e+00
  br i1 %cmp367, label %cond.true.369, label %cond.false.370

cond.true.369:                                    ; preds = %cond.end.357
  br label %cond.end.373

cond.false.370:                                   ; preds = %cond.end.357
  %277 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_v371 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %277, i32 0, i32 17
  %278 = load float, float* %msse_v371, align 4
  %conv372 = fpext float %278 to double
  br label %cond.end.373

cond.end.373:                                     ; preds = %cond.false.370, %cond.true.369
  %cond374 = phi double [ 1.000000e+00, %cond.true.369 ], [ %conv372, %cond.false.370 ]
  %div375 = fdiv double %conv365, %cond374
  %mul376 = fmul double %conv364, %div375
  %call377 = call double @log10(double %mul376) #3
  %mul378 = fmul double 1.000000e+01, %call377
  %conv379 = fptrunc double %mul378 to float
  store float %conv379, float* %csnr_v, align 4
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %280 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %280, i32 0, i32 9
  %281 = load float, float* %snr_ya, align 4
  %conv380 = fpext float %281 to double
  %call381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i32 0, i32 0), double %conv380)
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %283 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %283, i32 0, i32 10
  %284 = load float, float* %snr_ua, align 4
  %conv382 = fpext float %284 to double
  %call383 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %282, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i32 0, i32 0), double %conv382)
  %285 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %286 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %286, i32 0, i32 11
  %287 = load float, float* %snr_va, align 4
  %conv384 = fpext float %287 to double
  %call385 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %285, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.76, i32 0, i32 0), double %conv384)
  %288 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %289 = load float, float* %csnr_y, align 4
  %conv386 = fpext float %289 to double
  %290 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_y387 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %290, i32 0, i32 15
  %291 = load float, float* %msse_y387, align 4
  %292 = load i32, i32* %impix, align 4
  %conv388 = sitofp i32 %292 to float
  %div389 = fdiv float %291, %conv388
  %conv390 = fpext float %div389 to double
  %call391 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %288, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.77, i32 0, i32 0), double %conv386, double %conv390)
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %294 = load float, float* %csnr_u, align 4
  %conv392 = fpext float %294 to double
  %295 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_u393 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %295, i32 0, i32 16
  %296 = load float, float* %msse_u393, align 4
  %297 = load i32, i32* %impix_cr, align 4
  %conv394 = sitofp i32 %297 to float
  %div395 = fdiv float %296, %conv394
  %conv396 = fpext float %div395 to double
  %call397 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %293, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.78, i32 0, i32 0), double %conv392, double %conv396)
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %299 = load float, float* %csnr_v, align 4
  %conv398 = fpext float %299 to double
  %300 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_v399 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %300, i32 0, i32 17
  %301 = load float, float* %msse_v399, align 4
  %302 = load i32, i32* %impix_cr, align 4
  %conv400 = sitofp i32 %302 to float
  %div401 = fdiv float %301, %conv400
  %conv402 = fpext float %div401 to double
  %call403 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %298, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.79, i32 0, i32 0), double %conv398, double %conv402)
  br label %if.end.404

if.end.404:                                       ; preds = %cond.end.373, %if.end.318
  %303 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp405 = icmp ne i32 %303, 0
  br i1 %cmp405, label %if.then.407, label %if.else.440

if.then.407:                                      ; preds = %if.end.404
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %305 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P408 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %305, i32 0, i32 17
  %306 = load i64, i64* %bit_ctr_P408, align 8
  %307 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I409 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %307, i32 0, i32 16
  %308 = load i64, i64* %bit_ctr_I409, align 8
  %add410 = add nsw i64 %306, %308
  %309 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_B411 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %309, i32 0, i32 18
  %310 = load i64, i64* %bit_ctr_B411, align 8
  %add412 = add nsw i64 %add410, %310
  %311 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %311, i32 0, i32 34
  %312 = load i32, i32* %bit_ctr_parametersets, align 4
  %conv413 = sext i32 %312 to i64
  %add414 = add nsw i64 %add412, %conv413
  store i64 %add414, i64* %total_bits, align 8
  %313 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I415 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %313, i32 0, i32 16
  %314 = load i64, i64* %bit_ctr_I415, align 8
  %315 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P416 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %315, i32 0, i32 17
  %316 = load i64, i64* %bit_ctr_P416, align 8
  %317 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_B417 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %317, i32 0, i32 18
  %318 = load i64, i64* %bit_ctr_B417, align 8
  %319 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets418 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %319, i32 0, i32 34
  %320 = load i32, i32* %bit_ctr_parametersets418, align 4
  %call419 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %304, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.80, i32 0, i32 0), i64 %add414, i64 %314, i64 %316, i64 %318, i32 %320)
  %321 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate420 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %321, i32 0, i32 12
  %322 = load float, float* %framerate420, align 4
  %323 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe421 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %323, i32 0, i32 13
  %324 = load i32, i32* %successive_Bframe421, align 4
  %add422 = add nsw i32 %324, 1
  %conv423 = sitofp i32 %add422 to float
  %mul424 = fmul float %322, %conv423
  %325 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd425 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %325, i32 0, i32 5
  %326 = load i32, i32* %jumpd425, align 4
  %add426 = add nsw i32 %326, 1
  %conv427 = sitofp i32 %add426 to float
  %div428 = fdiv float %mul424, %conv427
  store float %div428, float* %frame_rate, align 4
  %327 = load i64, i64* %total_bits, align 8
  %conv429 = sitofp i64 %327 to float
  %328 = load float, float* %frame_rate, align 4
  %mul430 = fmul float %conv429, %328
  %329 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 2), align 4
  %330 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 0), align 4
  %add431 = add nsw i32 %329, %330
  %331 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %add432 = add nsw i32 %add431, %331
  %conv433 = sitofp i32 %add432 to float
  %div434 = fdiv float %mul430, %conv433
  %332 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %332, i32 0, i32 3
  store float %div434, float* %bitrate, align 4
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %334 = load float, float* %frame_rate, align 4
  %conv435 = fpext float %334 to double
  %335 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate436 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %335, i32 0, i32 3
  %336 = load float, float* %bitrate436, align 4
  %div437 = fdiv float %336, 1.000000e+03
  %conv438 = fpext float %div437 to double
  %call439 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %333, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.81, i32 0, i32 0), double %conv435, double %conv438)
  br label %if.end.499

if.else.440:                                      ; preds = %if.end.404
  %337 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity441 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %337, i32 0, i32 50
  %338 = load i32, i32* %sp_periodicity441, align 4
  %cmp442 = icmp eq i32 %338, 0
  br i1 %cmp442, label %if.then.444, label %if.else.471

if.then.444:                                      ; preds = %if.else.440
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %340 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P445 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %340, i32 0, i32 17
  %341 = load i64, i64* %bit_ctr_P445, align 8
  %342 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I446 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %342, i32 0, i32 16
  %343 = load i64, i64* %bit_ctr_I446, align 8
  %add447 = add nsw i64 %341, %343
  %344 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets448 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %344, i32 0, i32 34
  %345 = load i32, i32* %bit_ctr_parametersets448, align 4
  %conv449 = sext i32 %345 to i64
  %add450 = add nsw i64 %add447, %conv449
  store i64 %add450, i64* %total_bits, align 8
  %346 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I451 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %346, i32 0, i32 16
  %347 = load i64, i64* %bit_ctr_I451, align 8
  %348 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P452 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %348, i32 0, i32 17
  %349 = load i64, i64* %bit_ctr_P452, align 8
  %350 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets453 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %350, i32 0, i32 34
  %351 = load i32, i32* %bit_ctr_parametersets453, align 4
  %call454 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.82, i32 0, i32 0), i64 %add450, i64 %347, i64 %349, i32 %351)
  %352 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate455 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %352, i32 0, i32 12
  %353 = load float, float* %framerate455, align 4
  %354 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd456 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %354, i32 0, i32 5
  %355 = load i32, i32* %jumpd456, align 4
  %add457 = add nsw i32 %355, 1
  %conv458 = sitofp i32 %add457 to float
  %div459 = fdiv float %353, %conv458
  store float %div459, float* %frame_rate, align 4
  %356 = load i64, i64* %total_bits, align 8
  %conv460 = sitofp i64 %356 to float
  %357 = load float, float* %frame_rate, align 4
  %mul461 = fmul float %conv460, %357
  %358 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames462 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %358, i32 0, i32 2
  %359 = load i32, i32* %no_frames462, align 4
  %conv463 = sitofp i32 %359 to float
  %div464 = fdiv float %mul461, %conv463
  %360 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate465 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %360, i32 0, i32 3
  store float %div464, float* %bitrate465, align 4
  %361 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %362 = load float, float* %frame_rate, align 4
  %conv466 = fpext float %362 to double
  %363 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate467 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %363, i32 0, i32 3
  %364 = load float, float* %bitrate467, align 4
  %div468 = fdiv float %364, 1.000000e+03
  %conv469 = fpext float %div468 to double
  %call470 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %361, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.81, i32 0, i32 0), double %conv466, double %conv469)
  br label %if.end.498

if.else.471:                                      ; preds = %if.else.440
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %366 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P472 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %366, i32 0, i32 17
  %367 = load i64, i64* %bit_ctr_P472, align 8
  %368 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I473 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %368, i32 0, i32 16
  %369 = load i64, i64* %bit_ctr_I473, align 8
  %add474 = add nsw i64 %367, %369
  %370 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets475 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %370, i32 0, i32 34
  %371 = load i32, i32* %bit_ctr_parametersets475, align 4
  %conv476 = sext i32 %371 to i64
  %add477 = add nsw i64 %add474, %conv476
  store i64 %add477, i64* %total_bits, align 8
  %372 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I478 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %372, i32 0, i32 16
  %373 = load i64, i64* %bit_ctr_I478, align 8
  %374 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P479 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %374, i32 0, i32 17
  %375 = load i64, i64* %bit_ctr_P479, align 8
  %376 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets480 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %376, i32 0, i32 34
  %377 = load i32, i32* %bit_ctr_parametersets480, align 4
  %call481 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %365, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.82, i32 0, i32 0), i64 %add477, i64 %373, i64 %375, i32 %377)
  %378 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate482 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %378, i32 0, i32 12
  %379 = load float, float* %framerate482, align 4
  %380 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd483 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %380, i32 0, i32 5
  %381 = load i32, i32* %jumpd483, align 4
  %add484 = add nsw i32 %381, 1
  %conv485 = sitofp i32 %add484 to float
  %div486 = fdiv float %379, %conv485
  store float %div486, float* %frame_rate, align 4
  %382 = load i64, i64* %total_bits, align 8
  %conv487 = sitofp i64 %382 to float
  %383 = load float, float* %frame_rate, align 4
  %mul488 = fmul float %conv487, %383
  %384 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames489 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %384, i32 0, i32 2
  %385 = load i32, i32* %no_frames489, align 4
  %conv490 = sitofp i32 %385 to float
  %div491 = fdiv float %mul488, %conv490
  %386 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate492 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %386, i32 0, i32 3
  store float %div491, float* %bitrate492, align 4
  %387 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %388 = load float, float* %frame_rate, align 4
  %conv493 = fpext float %388 to double
  %389 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate494 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %389, i32 0, i32 3
  %390 = load float, float* %bitrate494, align 4
  %div495 = fdiv float %390, 1.000000e+03
  %conv496 = fpext float %div495 to double
  %call497 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %387, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.81, i32 0, i32 0), double %conv493, double %conv496)
  br label %if.end.498

if.end.498:                                       ; preds = %if.else.471, %if.then.444
  br label %if.end.499

if.end.499:                                       ; preds = %if.end.498, %if.then.407
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %392 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_emulationprevention = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %392, i32 0, i32 8
  %393 = load i32, i32* %bit_ctr_emulationprevention, align 4
  %call500 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %391, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.83, i32 0, i32 0), i32 %393)
  %394 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %395 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets501 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %395, i32 0, i32 34
  %396 = load i32, i32* %bit_ctr_parametersets501, align 4
  %call502 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %394, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i32 0, i32 0), i32 %396)
  %397 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call503 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %397, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.30, i32 0, i32 0))
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call504 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %398, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call505 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %399, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %call506 = call %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0))
  store %struct._IO_FILE* %call506, %struct._IO_FILE** @p_stat, align 8
  %cmp507 = icmp eq %struct._IO_FILE* %call506, null
  br i1 %cmp507, label %if.then.509, label %if.end.511

if.then.509:                                      ; preds = %if.end.499
  %call510 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.509, %if.end.499
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call512 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %400, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.90, i32 0, i32 0))
  %401 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call513 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %401, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.91, i32 0, i32 0))
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call514 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %402, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.90, i32 0, i32 0))
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %404 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %404, i32 0, i32 25
  %arraydecay515 = getelementptr inbounds [256 x i8], [256 x i8]* %infile, i32 0, i32 0
  %call516 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %403, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.92, i32 0, i32 0), i8* %arraydecay515)
  %405 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %406 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames517 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %406, i32 0, i32 2
  %407 = load i32, i32* %no_frames517, align 4
  %408 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %add518 = add nsw i32 %407, %408
  %call519 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %405, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.93, i32 0, i32 0), i32 %add518)
  %409 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %410 = load float, float* %frame_rate, align 4
  %conv520 = fpext float %410 to double
  %call521 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %409, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0), double %conv520)
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %412 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_I522 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %412, i32 0, i32 19
  %413 = load float, float* %bitrate_I522, align 4
  %div523 = fdiv float %413, 1.000000e+03
  %conv524 = fpext float %div523 to double
  %call525 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %411, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.95, i32 0, i32 0), double %conv524)
  %414 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %415 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_P526 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %415, i32 0, i32 20
  %416 = load float, float* %bitrate_P526, align 4
  %div527 = fdiv float %416, 1.000000e+03
  %conv528 = fpext float %div527 to double
  %call529 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %414, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.96, i32 0, i32 0), double %conv528)
  %417 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe530 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %417, i32 0, i32 13
  %418 = load i32, i32* %successive_Bframe530, align 4
  %cmp531 = icmp ne i32 %418, 0
  br i1 %cmp531, label %if.then.533, label %if.end.538

if.then.533:                                      ; preds = %if.end.511
  %419 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %420 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_B534 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %420, i32 0, i32 21
  %421 = load float, float* %bitrate_B534, align 4
  %div535 = fdiv float %421, 1.000000e+03
  %conv536 = fpext float %div535 to double
  %call537 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %419, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.97, i32 0, i32 0), double %conv536)
  br label %if.end.538

if.end.538:                                       ; preds = %if.then.533, %if.end.511
  %422 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %423 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate539 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %423, i32 0, i32 3
  %424 = load float, float* %bitrate539, align 4
  %div540 = fdiv float %424, 1.000000e+03
  %conv541 = fpext float %div540 to double
  %call542 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %422, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.98, i32 0, i32 0), double %conv541)
  store i32 0, i32* %i, align 4
  br label %for.cond.543

for.cond.543:                                     ; preds = %for.inc.554, %if.end.538
  %425 = load i32, i32* %i, align 4
  %cmp544 = icmp slt i32 %425, 3
  br i1 %cmp544, label %for.body.546, label %for.end.556

for.body.546:                                     ; preds = %for.cond.543
  %426 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %427 = load i32, i32* %i, align 4
  %428 = load i32, i32* %i, align 4
  %idxprom547 = sext i32 %428 to i64
  %429 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric548 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %429, i32 0, i32 199
  %arrayidx549 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric548, i32 0, i64 %idxprom547
  %430 = load i32, i32* %arrayidx549, align 4
  %idxprom550 = sext i32 %430 to i64
  %arrayidx551 = getelementptr inbounds [3 x [20 x i8]], [3 x [20 x i8]]* @DistortionType, i32 0, i64 %idxprom550
  %arraydecay552 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx551, i32 0, i32 0
  %call553 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %426, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.99, i32 0, i32 0), i32 %427, i8* %arraydecay552)
  br label %for.inc.554

for.inc.554:                                      ; preds = %for.body.546
  %431 = load i32, i32* %i, align 4
  %inc555 = add nsw i32 %431, 1
  store i32 %inc555, i32* %i, align 4
  br label %for.cond.543

for.end.556:                                      ; preds = %for.cond.543
  %432 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %433 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ModeDecisionMetric557 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %433, i32 0, i32 200
  %434 = load i32, i32* %ModeDecisionMetric557, align 4
  %idxprom558 = sext i32 %434 to i64
  %arrayidx559 = getelementptr inbounds [3 x [20 x i8]], [3 x [20 x i8]]* @DistortionType, i32 0, i64 %idxprom558
  %arraydecay560 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx559, i32 0, i32 0
  %call561 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %432, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i32 0, i32 0), i8* %arraydecay560)
  %435 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMEEnable562 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %435, i32 0, i32 198
  %436 = load i32, i32* %ChromaMEEnable562, align 4
  switch i32 %436, label %sw.default.565 [
    i32 1, label %sw.bb.563
  ]

sw.bb.563:                                        ; preds = %for.end.556
  %437 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call564 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %437, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i32 0, i32 0))
  br label %sw.epilog.567

sw.default.565:                                   ; preds = %for.end.556
  %438 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call566 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %438, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i32 0, i32 0))
  br label %sw.epilog.567

sw.epilog.567:                                    ; preds = %sw.default.565, %sw.bb.563
  %439 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %440 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width568 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %440, i32 0, i32 14
  %441 = load i32, i32* %img_width568, align 4
  %442 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height569 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %442, i32 0, i32 15
  %443 = load i32, i32* %img_height569, align 4
  %call570 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %439, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.100, i32 0, i32 0), i32 %441, i32 %443)
  %444 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd571 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %444, i32 0, i32 17
  %445 = load i32, i32* %intra_upd571, align 4
  %tobool572 = icmp ne i32 %445, 0
  br i1 %tobool572, label %if.then.573, label %if.else.575

if.then.573:                                      ; preds = %sw.epilog.567
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call574 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %446, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.101, i32 0, i32 0))
  br label %if.end.577

if.else.575:                                      ; preds = %sw.epilog.567
  %447 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call576 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %447, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.102, i32 0, i32 0))
  br label %if.end.577

if.end.577:                                       ; preds = %if.else.575, %if.then.573
  %448 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %449 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range578 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %449, i32 0, i32 7
  %450 = load i32, i32* %search_range578, align 4
  %call579 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %448, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.103, i32 0, i32 0), i32 %450)
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %452 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames580 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %452, i32 0, i32 8
  %453 = load i32, i32* %num_ref_frames580, align 4
  %call581 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %451, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.104, i32 0, i32 0), i32 %453)
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %455 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs582 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %455, i32 0, i32 9
  %456 = load i32, i32* %P_List0_refs582, align 4
  %tobool583 = icmp ne i32 %456, 0
  br i1 %tobool583, label %cond.true.584, label %cond.false.586

cond.true.584:                                    ; preds = %if.end.577
  %457 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs585 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %457, i32 0, i32 9
  %458 = load i32, i32* %P_List0_refs585, align 4
  br label %cond.end.588

cond.false.586:                                   ; preds = %if.end.577
  %459 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames587 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %459, i32 0, i32 8
  %460 = load i32, i32* %num_ref_frames587, align 4
  br label %cond.end.588

cond.end.588:                                     ; preds = %cond.false.586, %cond.true.584
  %cond589 = phi i32 [ %458, %cond.true.584 ], [ %460, %cond.false.586 ]
  %call590 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %454, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i32 0, i32 0), i32 %cond589)
  %461 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe591 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %461, i32 0, i32 13
  %462 = load i32, i32* %successive_Bframe591, align 4
  %cmp592 = icmp ne i32 %462, 0
  br i1 %cmp592, label %if.then.594, label %if.end.613

if.then.594:                                      ; preds = %cond.end.588
  %463 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %464 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs595 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %464, i32 0, i32 10
  %465 = load i32, i32* %B_List0_refs595, align 4
  %tobool596 = icmp ne i32 %465, 0
  br i1 %tobool596, label %cond.true.597, label %cond.false.599

cond.true.597:                                    ; preds = %if.then.594
  %466 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs598 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %466, i32 0, i32 10
  %467 = load i32, i32* %B_List0_refs598, align 4
  br label %cond.end.601

cond.false.599:                                   ; preds = %if.then.594
  %468 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames600 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %468, i32 0, i32 8
  %469 = load i32, i32* %num_ref_frames600, align 4
  br label %cond.end.601

cond.end.601:                                     ; preds = %cond.false.599, %cond.true.597
  %cond602 = phi i32 [ %467, %cond.true.597 ], [ %469, %cond.false.599 ]
  %call603 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %463, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.106, i32 0, i32 0), i32 %cond602)
  %470 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %471 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs604 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %471, i32 0, i32 11
  %472 = load i32, i32* %B_List1_refs604, align 4
  %tobool605 = icmp ne i32 %472, 0
  br i1 %tobool605, label %cond.true.606, label %cond.false.608

cond.true.606:                                    ; preds = %cond.end.601
  %473 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs607 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %473, i32 0, i32 11
  %474 = load i32, i32* %B_List1_refs607, align 4
  br label %cond.end.610

cond.false.608:                                   ; preds = %cond.end.601
  %475 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames609 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %475, i32 0, i32 8
  %476 = load i32, i32* %num_ref_frames609, align 4
  br label %cond.end.610

cond.end.610:                                     ; preds = %cond.false.608, %cond.true.606
  %cond611 = phi i32 [ %474, %cond.true.606 ], [ %476, %cond.false.608 ]
  %call612 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %470, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.107, i32 0, i32 0), i32 %cond611)
  br label %if.end.613

if.end.613:                                       ; preds = %cond.end.610, %cond.end.588
  %477 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode614 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %477, i32 0, i32 74
  %478 = load i32, i32* %symbol_mode614, align 4
  %cmp615 = icmp eq i32 %478, 0
  br i1 %cmp615, label %if.then.617, label %if.else.619

if.then.617:                                      ; preds = %if.end.613
  %479 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call618 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %479, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i32 0, i32 0))
  br label %if.end.621

if.else.619:                                      ; preds = %if.end.613
  %480 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call620 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %480, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i32 0, i32 0))
  br label %if.end.621

if.end.621:                                       ; preds = %if.else.619, %if.then.617
  %481 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %482 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC622 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %482, i32 0, i32 0
  %483 = load i32, i32* %ProfileIDC622, align 4
  %484 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LevelIDC623 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %484, i32 0, i32 1
  %485 = load i32, i32* %LevelIDC623, align 4
  %call624 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %481, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.110, i32 0, i32 0), i32 %483, i32 %485)
  %486 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %486, i32 0, i32 122
  %487 = load i32, i32* %MbInterlace, align 4
  %tobool625 = icmp ne i32 %487, 0
  br i1 %tobool625, label %if.then.626, label %if.end.628

if.then.626:                                      ; preds = %if.end.621
  %488 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call627 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %488, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.111, i32 0, i32 0))
  br label %if.end.628

if.end.628:                                       ; preds = %if.then.626, %if.end.621
  %489 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode629 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %489, i32 0, i32 169
  %490 = load i32, i32* %SearchMode629, align 4
  %cmp630 = icmp eq i32 %490, 3
  br i1 %cmp630, label %if.then.632, label %if.end.633

if.then.632:                                      ; preds = %if.end.628
  %491 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  call void @EPZSOutputStats(%struct._IO_FILE* %491, i16 signext 1)
  br label %if.end.633

if.end.633:                                       ; preds = %if.then.632, %if.end.628
  %492 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search634 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %492, i32 0, i32 106
  %493 = load i32, i32* %full_search634, align 4
  %cmp635 = icmp eq i32 %493, 2
  br i1 %cmp635, label %if.then.637, label %if.else.639

if.then.637:                                      ; preds = %if.end.633
  %494 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call638 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %494, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.112, i32 0, i32 0))
  br label %if.end.648

if.else.639:                                      ; preds = %if.end.633
  %495 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search640 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %495, i32 0, i32 106
  %496 = load i32, i32* %full_search640, align 4
  %cmp641 = icmp eq i32 %496, 1
  br i1 %cmp641, label %if.then.643, label %if.else.645

if.then.643:                                      ; preds = %if.else.639
  %497 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call644 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %497, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.113, i32 0, i32 0))
  br label %if.end.647

if.else.645:                                      ; preds = %if.else.639
  %498 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call646 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %498, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.114, i32 0, i32 0))
  br label %if.end.647

if.end.647:                                       ; preds = %if.else.645, %if.then.643
  br label %if.end.648

if.end.648:                                       ; preds = %if.end.647, %if.then.637
  %499 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt649 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %499, i32 0, i32 113
  %500 = load i32, i32* %rdopt649, align 4
  %tobool650 = icmp ne i32 %500, 0
  br i1 %tobool650, label %if.then.651, label %if.else.653

if.then.651:                                      ; preds = %if.end.648
  %501 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call652 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %501, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0))
  br label %if.end.655

if.else.653:                                      ; preds = %if.end.648
  %502 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call654 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %502, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.116, i32 0, i32 0))
  br label %if.end.655

if.end.655:                                       ; preds = %if.else.653, %if.then.651
  %503 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call656 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %503, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.117, i32 0, i32 0))
  %504 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call657 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %504, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.118, i32 0, i32 0))
  %505 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call658 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %505, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.117, i32 0, i32 0))
  %506 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call659 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %506, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i32 0, i32 0))
  %507 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %508 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %508, i32 0, i32 3
  %509 = load float, float* %snr_y1, align 4
  %conv660 = fpext float %509 to double
  %call661 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %507, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.120, i32 0, i32 0), double %conv660)
  %510 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %511 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya662 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %511, i32 0, i32 9
  %512 = load float, float* %snr_ya662, align 4
  %conv663 = fpext float %512 to double
  %call664 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %510, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.121, i32 0, i32 0), double %conv663)
  %513 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call665 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %513, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.122, i32 0, i32 0))
  %514 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %515 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %515, i32 0, i32 4
  %516 = load float, float* %snr_u1, align 4
  %conv666 = fpext float %516 to double
  %517 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %517, i32 0, i32 5
  %518 = load float, float* %snr_v1, align 4
  %conv667 = fpext float %518 to double
  %call668 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %514, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.123, i32 0, i32 0), double %conv666, double %conv667)
  %519 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %520 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua669 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %520, i32 0, i32 10
  %521 = load float, float* %snr_ua669, align 4
  %conv670 = fpext float %521 to double
  %522 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va671 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %522, i32 0, i32 11
  %523 = load float, float* %snr_va671, align 4
  %conv672 = fpext float %523 to double
  %call673 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %519, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.124, i32 0, i32 0), double %conv670, double %conv672)
  %524 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call674 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %524, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.125, i32 0, i32 0))
  %525 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %526 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0675 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %526, i32 0, i32 3
  %527 = load i32, i32* %qp0675, align 4
  %call676 = call i32 @iabs(i32 %527)
  %call677 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %525, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.126, i32 0, i32 0), i32 %call676)
  %528 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %529 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %quant1 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %529, i32 0, i32 1
  %530 = load i32, i32* %quant1, align 4
  %conv678 = sitofp i32 %530 to float
  %conv679 = fpext float %conv678 to double
  %531 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %quant0 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %531, i32 0, i32 0
  %532 = load i32, i32* %quant0, align 4
  %conv680 = sitofp i32 %532 to float
  %conv681 = fpext float %conv680 to double
  %call682 = call double @dmax(double 1.000000e+00, double %conv681)
  %div683 = fdiv double %conv679, %call682
  %call684 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %528, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.121, i32 0, i32 0), double %div683)
  %533 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call685 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %533, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.127, i32 0, i32 0))
  %534 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call686 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %534, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.128, i32 0, i32 0))
  %535 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call687 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %535, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.129, i32 0, i32 0))
  %536 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %537 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %537, i32 0, i32 6
  %arrayidx688 = getelementptr inbounds [5 x float], [5 x float]* %snr_yt, i32 0, i64 2
  %538 = load float, float* %arrayidx688, align 4
  %conv689 = fpext float %538 to double
  %539 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt690 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %539, i32 0, i32 6
  %arrayidx691 = getelementptr inbounds [5 x float], [5 x float]* %snr_yt690, i32 0, i64 0
  %540 = load float, float* %arrayidx691, align 4
  %conv692 = fpext float %540 to double
  %541 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt693 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %541, i32 0, i32 6
  %arrayidx694 = getelementptr inbounds [5 x float], [5 x float]* %snr_yt693, i32 0, i64 1
  %542 = load float, float* %arrayidx694, align 4
  %conv695 = fpext float %542 to double
  %call696 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %536, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.130, i32 0, i32 0), double %conv689, double %conv692, double %conv695)
  %543 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %544 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %544, i32 0, i32 7
  %arrayidx697 = getelementptr inbounds [5 x float], [5 x float]* %snr_ut, i32 0, i64 2
  %545 = load float, float* %arrayidx697, align 4
  %conv698 = fpext float %545 to double
  %546 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut699 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %546, i32 0, i32 7
  %arrayidx700 = getelementptr inbounds [5 x float], [5 x float]* %snr_ut699, i32 0, i64 0
  %547 = load float, float* %arrayidx700, align 4
  %conv701 = fpext float %547 to double
  %548 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut702 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %548, i32 0, i32 7
  %arrayidx703 = getelementptr inbounds [5 x float], [5 x float]* %snr_ut702, i32 0, i64 1
  %549 = load float, float* %arrayidx703, align 4
  %conv704 = fpext float %549 to double
  %call705 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %543, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.131, i32 0, i32 0), double %conv698, double %conv701, double %conv704)
  %550 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %551 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %551, i32 0, i32 8
  %arrayidx706 = getelementptr inbounds [5 x float], [5 x float]* %snr_vt, i32 0, i64 2
  %552 = load float, float* %arrayidx706, align 4
  %conv707 = fpext float %552 to double
  %553 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt708 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %553, i32 0, i32 8
  %arrayidx709 = getelementptr inbounds [5 x float], [5 x float]* %snr_vt708, i32 0, i64 0
  %554 = load float, float* %arrayidx709, align 4
  %conv710 = fpext float %554 to double
  %555 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt711 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %555, i32 0, i32 8
  %arrayidx712 = getelementptr inbounds [5 x float], [5 x float]* %snr_vt711, i32 0, i64 1
  %556 = load float, float* %arrayidx712, align 4
  %conv713 = fpext float %556 to double
  %call714 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %550, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.132, i32 0, i32 0), double %conv707, double %conv710, double %conv713)
  %557 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call715 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %557, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.133, i32 0, i32 0))
  %558 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call716 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %558, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.134, i32 0, i32 0))
  %559 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call717 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %559, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.135, i32 0, i32 0))
  %560 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %561 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %561, i32 0, i32 22
  %arrayidx718 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use, i32 0, i64 2
  %arrayidx719 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx718, i32 0, i64 9
  %562 = load i64, i64* %arrayidx719, align 8
  %call720 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %560, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.136, i32 0, i32 0), i64 %562)
  %563 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %564 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use721 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %564, i32 0, i32 22
  %arrayidx722 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use721, i32 0, i64 2
  %arrayidx723 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx722, i32 0, i64 13
  %565 = load i64, i64* %arrayidx723, align 8
  %call724 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %563, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.137, i32 0, i32 0), i64 %565)
  %566 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %567 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use725 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %567, i32 0, i32 22
  %arrayidx726 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use725, i32 0, i64 2
  %arrayidx727 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx726, i32 0, i64 10
  %568 = load i64, i64* %arrayidx727, align 8
  %call728 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %566, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.138, i32 0, i32 0), i64 %568)
  %569 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %570 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use729 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %570, i32 0, i32 22
  %arrayidx730 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use729, i32 0, i64 2
  %arrayidx731 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx730, i32 0, i64 14
  %571 = load i64, i64* %arrayidx731, align 8
  %call732 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %569, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.139, i32 0, i32 0), i64 %571)
  %572 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call733 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %572, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.140, i32 0, i32 0))
  %573 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call734 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %573, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.141, i32 0, i32 0))
  %574 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call735 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %574, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.142, i32 0, i32 0))
  %575 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %576 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use736 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %576, i32 0, i32 22
  %arrayidx737 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use736, i32 0, i64 0
  %arrayidx738 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx737, i32 0, i64 0
  %577 = load i64, i64* %arrayidx738, align 8
  %578 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode739 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %578, i32 0, i32 23
  %arrayidx740 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode739, i32 0, i64 0
  %arrayidx741 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx740, i32 0, i64 0
  %579 = load i64, i64* %arrayidx741, align 8
  %conv742 = sitofp i64 %579 to double
  %arrayidx743 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx744 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx743, i32 0, i64 0
  %580 = load i64, i64* %arrayidx744, align 8
  %conv745 = sitofp i64 %580 to double
  %div746 = fdiv double %conv742, %conv745
  %call747 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %575, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.143, i32 0, i32 0), i64 %577, double %div746)
  %581 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %582 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use748 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %582, i32 0, i32 22
  %arrayidx749 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use748, i32 0, i64 0
  %arrayidx750 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx749, i32 0, i64 1
  %583 = load i64, i64* %arrayidx750, align 8
  %584 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode751 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %584, i32 0, i32 23
  %arrayidx752 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode751, i32 0, i64 0
  %arrayidx753 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx752, i32 0, i64 1
  %585 = load i64, i64* %arrayidx753, align 8
  %conv754 = sitofp i64 %585 to double
  %arrayidx755 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx756 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx755, i32 0, i64 0
  %586 = load i64, i64* %arrayidx756, align 8
  %conv757 = sitofp i64 %586 to double
  %div758 = fdiv double %conv754, %conv757
  %call759 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %581, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.144, i32 0, i32 0), i64 %583, double %div758)
  %587 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %588 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use760 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %588, i32 0, i32 22
  %arrayidx761 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use760, i32 0, i64 0
  %arrayidx762 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx761, i32 0, i64 2
  %589 = load i64, i64* %arrayidx762, align 8
  %590 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode763 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %590, i32 0, i32 23
  %arrayidx764 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode763, i32 0, i64 0
  %arrayidx765 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx764, i32 0, i64 2
  %591 = load i64, i64* %arrayidx765, align 8
  %conv766 = sitofp i64 %591 to double
  %arrayidx767 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx768 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx767, i32 0, i64 0
  %592 = load i64, i64* %arrayidx768, align 8
  %conv769 = sitofp i64 %592 to double
  %div770 = fdiv double %conv766, %conv769
  %call771 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %587, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.145, i32 0, i32 0), i64 %589, double %div770)
  %593 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %594 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use772 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %594, i32 0, i32 22
  %arrayidx773 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use772, i32 0, i64 0
  %arrayidx774 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx773, i32 0, i64 3
  %595 = load i64, i64* %arrayidx774, align 8
  %596 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode775 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %596, i32 0, i32 23
  %arrayidx776 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode775, i32 0, i64 0
  %arrayidx777 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx776, i32 0, i64 3
  %597 = load i64, i64* %arrayidx777, align 8
  %conv778 = sitofp i64 %597 to double
  %arrayidx779 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx780 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx779, i32 0, i64 0
  %598 = load i64, i64* %arrayidx780, align 8
  %conv781 = sitofp i64 %598 to double
  %div782 = fdiv double %conv778, %conv781
  %call783 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %593, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.146, i32 0, i32 0), i64 %595, double %div782)
  %599 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %600 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use784 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %600, i32 0, i32 22
  %arrayidx785 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use784, i32 0, i64 0
  %arrayidx786 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx785, i32 0, i64 8
  %601 = load i64, i64* %arrayidx786, align 8
  %602 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode787 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %602, i32 0, i32 23
  %arrayidx788 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode787, i32 0, i64 0
  %arrayidx789 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx788, i32 0, i64 8
  %603 = load i64, i64* %arrayidx789, align 8
  %conv790 = sitofp i64 %603 to double
  %arrayidx791 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx792 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx791, i32 0, i64 0
  %604 = load i64, i64* %arrayidx792, align 8
  %conv793 = sitofp i64 %604 to double
  %div794 = fdiv double %conv790, %conv793
  %call795 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %599, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.147, i32 0, i32 0), i64 %601, double %div794)
  %605 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %606 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use796 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %606, i32 0, i32 22
  %arrayidx797 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use796, i32 0, i64 0
  %arrayidx798 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx797, i32 0, i64 9
  %607 = load i64, i64* %arrayidx798, align 8
  %call799 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %605, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.148, i32 0, i32 0), i64 %607)
  %608 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %609 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use800 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %609, i32 0, i32 22
  %arrayidx801 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use800, i32 0, i64 0
  %arrayidx802 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx801, i32 0, i64 13
  %610 = load i64, i64* %arrayidx802, align 8
  %call803 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %608, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.149, i32 0, i32 0), i64 %610)
  %611 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %612 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use804 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %612, i32 0, i32 22
  %arrayidx805 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use804, i32 0, i64 0
  %arrayidx806 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx805, i32 0, i64 10
  %613 = load i64, i64* %arrayidx806, align 8
  %call807 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.150, i32 0, i32 0), i64 %613)
  %614 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %615 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use808 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %615, i32 0, i32 22
  %arrayidx809 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use808, i32 0, i64 0
  %arrayidx810 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx809, i32 0, i64 14
  %616 = load i64, i64* %arrayidx810, align 8
  %call811 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %614, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.151, i32 0, i32 0), i64 %616)
  %617 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode812 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %617, i32 0, i32 23
  %arrayidx813 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode812, i32 0, i64 0
  %arrayidx814 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx813, i32 0, i64 0
  %618 = load i64, i64* %arrayidx814, align 8
  %619 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode815 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %619, i32 0, i32 23
  %arrayidx816 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode815, i32 0, i64 0
  %arrayidx817 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx816, i32 0, i64 1
  %620 = load i64, i64* %arrayidx817, align 8
  %add818 = add nsw i64 %618, %620
  %621 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode819 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %621, i32 0, i32 23
  %arrayidx820 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode819, i32 0, i64 0
  %arrayidx821 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx820, i32 0, i64 2
  %622 = load i64, i64* %arrayidx821, align 8
  %add822 = add nsw i64 %add818, %622
  %623 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode823 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %623, i32 0, i32 23
  %arrayidx824 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode823, i32 0, i64 0
  %arrayidx825 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx824, i32 0, i64 3
  %624 = load i64, i64* %arrayidx825, align 8
  %add826 = add nsw i64 %add822, %624
  %625 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode827 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %625, i32 0, i32 23
  %arrayidx828 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode827, i32 0, i64 0
  %arrayidx829 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx828, i32 0, i64 8
  %626 = load i64, i64* %arrayidx829, align 8
  %add830 = add nsw i64 %add826, %626
  %conv831 = sitofp i64 %add830 to double
  %arrayidx832 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx833 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx832, i32 0, i64 0
  %627 = load i64, i64* %arrayidx833, align 8
  %conv834 = sitofp i64 %627 to double
  %div835 = fdiv double %conv831, %conv834
  %arrayidx836 = getelementptr inbounds [2 x double], [2 x double]* %mean_motion_info_bit_use, i32 0, i64 0
  store double %div835, double* %arrayidx836, align 8
  %628 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe837 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %628, i32 0, i32 13
  %629 = load i32, i32* %successive_Bframe837, align 4
  %cmp838 = icmp ne i32 %629, 0
  br i1 %cmp838, label %land.lhs.true.840, label %if.end.936

land.lhs.true.840:                                ; preds = %if.end.655
  %630 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp841 = icmp ne i32 %630, 0
  br i1 %cmp841, label %if.then.843, label %if.end.936

if.then.843:                                      ; preds = %land.lhs.true.840
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call844 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %631, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.152, i32 0, i32 0))
  %632 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call845 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %632, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.153, i32 0, i32 0))
  %633 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call846 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %633, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.142, i32 0, i32 0))
  %634 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %635 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use847 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %635, i32 0, i32 22
  %arrayidx848 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use847, i32 0, i64 1
  %arrayidx849 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx848, i32 0, i64 0
  %636 = load i64, i64* %arrayidx849, align 8
  %637 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode850 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %637, i32 0, i32 23
  %arrayidx851 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode850, i32 0, i64 1
  %arrayidx852 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx851, i32 0, i64 0
  %638 = load i64, i64* %arrayidx852, align 8
  %conv853 = sitofp i64 %638 to double
  %639 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv854 = sitofp i32 %639 to double
  %div855 = fdiv double %conv853, %conv854
  %call856 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %634, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.143, i32 0, i32 0), i64 %636, double %div855)
  %640 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %641 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use857 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %641, i32 0, i32 22
  %arrayidx858 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use857, i32 0, i64 1
  %arrayidx859 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx858, i32 0, i64 1
  %642 = load i64, i64* %arrayidx859, align 8
  %643 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode860 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %643, i32 0, i32 23
  %arrayidx861 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode860, i32 0, i64 1
  %arrayidx862 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx861, i32 0, i64 1
  %644 = load i64, i64* %arrayidx862, align 8
  %conv863 = sitofp i64 %644 to double
  %645 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv864 = sitofp i32 %645 to double
  %div865 = fdiv double %conv863, %conv864
  %call866 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %640, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.144, i32 0, i32 0), i64 %642, double %div865)
  %646 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %647 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use867 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %647, i32 0, i32 22
  %arrayidx868 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use867, i32 0, i64 1
  %arrayidx869 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx868, i32 0, i64 2
  %648 = load i64, i64* %arrayidx869, align 8
  %649 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode870 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %649, i32 0, i32 23
  %arrayidx871 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode870, i32 0, i64 1
  %arrayidx872 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx871, i32 0, i64 2
  %650 = load i64, i64* %arrayidx872, align 8
  %conv873 = sitofp i64 %650 to double
  %651 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv874 = sitofp i32 %651 to double
  %div875 = fdiv double %conv873, %conv874
  %call876 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %646, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.145, i32 0, i32 0), i64 %648, double %div875)
  %652 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %653 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use877 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %653, i32 0, i32 22
  %arrayidx878 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use877, i32 0, i64 1
  %arrayidx879 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx878, i32 0, i64 3
  %654 = load i64, i64* %arrayidx879, align 8
  %655 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode880 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %655, i32 0, i32 23
  %arrayidx881 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode880, i32 0, i64 1
  %arrayidx882 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx881, i32 0, i64 3
  %656 = load i64, i64* %arrayidx882, align 8
  %conv883 = sitofp i64 %656 to double
  %657 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv884 = sitofp i32 %657 to double
  %div885 = fdiv double %conv883, %conv884
  %call886 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %652, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.146, i32 0, i32 0), i64 %654, double %div885)
  %658 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %659 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use887 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %659, i32 0, i32 22
  %arrayidx888 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use887, i32 0, i64 1
  %arrayidx889 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx888, i32 0, i64 8
  %660 = load i64, i64* %arrayidx889, align 8
  %661 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode890 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %661, i32 0, i32 23
  %arrayidx891 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode890, i32 0, i64 1
  %arrayidx892 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx891, i32 0, i64 8
  %662 = load i64, i64* %arrayidx892, align 8
  %conv893 = sitofp i64 %662 to double
  %663 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv894 = sitofp i32 %663 to double
  %div895 = fdiv double %conv893, %conv894
  %call896 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %658, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.147, i32 0, i32 0), i64 %660, double %div895)
  %664 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %665 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use897 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %665, i32 0, i32 22
  %arrayidx898 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use897, i32 0, i64 1
  %arrayidx899 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx898, i32 0, i64 9
  %666 = load i64, i64* %arrayidx899, align 8
  %call900 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %664, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.148, i32 0, i32 0), i64 %666)
  %667 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %668 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use901 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %668, i32 0, i32 22
  %arrayidx902 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use901, i32 0, i64 1
  %arrayidx903 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx902, i32 0, i64 13
  %669 = load i64, i64* %arrayidx903, align 8
  %call904 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %667, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.149, i32 0, i32 0), i64 %669)
  %670 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %671 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use905 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %671, i32 0, i32 22
  %arrayidx906 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use905, i32 0, i64 1
  %arrayidx907 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx906, i32 0, i64 10
  %672 = load i64, i64* %arrayidx907, align 8
  %call908 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %670, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.150, i32 0, i32 0), i64 %672)
  %673 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %674 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use909 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %674, i32 0, i32 22
  %arrayidx910 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %mode_use909, i32 0, i64 1
  %arrayidx911 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx910, i32 0, i64 14
  %675 = load i64, i64* %arrayidx911, align 8
  %call912 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %673, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.151, i32 0, i32 0), i64 %675)
  %676 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode913 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %676, i32 0, i32 23
  %arrayidx914 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode913, i32 0, i64 1
  %arrayidx915 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx914, i32 0, i64 0
  %677 = load i64, i64* %arrayidx915, align 8
  %678 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode916 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %678, i32 0, i32 23
  %arrayidx917 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode916, i32 0, i64 1
  %arrayidx918 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx917, i32 0, i64 1
  %679 = load i64, i64* %arrayidx918, align 8
  %add919 = add nsw i64 %677, %679
  %680 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode920 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %680, i32 0, i32 23
  %arrayidx921 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode920, i32 0, i64 1
  %arrayidx922 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx921, i32 0, i64 2
  %681 = load i64, i64* %arrayidx922, align 8
  %add923 = add nsw i64 %add919, %681
  %682 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode924 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %682, i32 0, i32 23
  %arrayidx925 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode924, i32 0, i64 1
  %arrayidx926 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx925, i32 0, i64 3
  %683 = load i64, i64* %arrayidx926, align 8
  %add927 = add nsw i64 %add923, %683
  %684 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode928 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %684, i32 0, i32 23
  %arrayidx929 = getelementptr inbounds [5 x [15 x i64]], [5 x [15 x i64]]* %bit_use_mode928, i32 0, i64 1
  %arrayidx930 = getelementptr inbounds [15 x i64], [15 x i64]* %arrayidx929, i32 0, i64 8
  %685 = load i64, i64* %arrayidx930, align 8
  %add931 = add nsw i64 %add927, %685
  %conv932 = sitofp i64 %add931 to double
  %686 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv933 = sitofp i32 %686 to double
  %div934 = fdiv double %conv932, %conv933
  %arrayidx935 = getelementptr inbounds [2 x double], [2 x double]* %mean_motion_info_bit_use, i32 0, i64 1
  store double %div934, double* %arrayidx935, align 8
  br label %if.end.936

if.end.936:                                       ; preds = %if.then.843, %land.lhs.true.840, %if.end.655
  %687 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call937 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %687, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.154, i32 0, i32 0))
  %688 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call938 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %688, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.155, i32 0, i32 0))
  %689 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call939 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %689, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.156, i32 0, i32 0))
  %690 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call940 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %690, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.157, i32 0, i32 0))
  %691 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %692 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_header941 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %692, i32 0, i32 26
  %arrayidx942 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_header941, i32 0, i64 2
  %693 = load i64, i64* %arrayidx942, align 8
  %conv943 = sitofp i64 %693 to float
  %arrayidx944 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx945 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx944, i32 0, i64 0
  %694 = load i64, i64* %arrayidx945, align 8
  %conv946 = sitofp i64 %694 to float
  %div947 = fdiv float %conv943, %conv946
  %conv948 = fpext float %div947 to double
  %call949 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %691, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv948)
  %695 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %696 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_header950 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %696, i32 0, i32 26
  %arrayidx951 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_header950, i32 0, i64 0
  %697 = load i64, i64* %arrayidx951, align 8
  %conv952 = sitofp i64 %697 to float
  %arrayidx953 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx954 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx953, i32 0, i64 0
  %698 = load i64, i64* %arrayidx954, align 8
  %conv955 = sitofp i64 %698 to float
  %div956 = fdiv float %conv952, %conv955
  %conv957 = fpext float %div956 to double
  %call958 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %695, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv957)
  %699 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe959 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %699, i32 0, i32 13
  %700 = load i32, i32* %successive_Bframe959, align 4
  %cmp960 = icmp ne i32 %700, 0
  br i1 %cmp960, label %land.lhs.true.962, label %if.else.973

land.lhs.true.962:                                ; preds = %if.end.936
  %701 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp963 = icmp ne i32 %701, 0
  br i1 %cmp963, label %if.then.965, label %if.else.973

if.then.965:                                      ; preds = %land.lhs.true.962
  %702 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %703 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_header966 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %703, i32 0, i32 26
  %arrayidx967 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_header966, i32 0, i64 1
  %704 = load i64, i64* %arrayidx967, align 8
  %conv968 = sitofp i64 %704 to float
  %705 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv969 = sitofp i32 %705 to float
  %div970 = fdiv float %conv968, %conv969
  %conv971 = fpext float %div970 to double
  %call972 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %702, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv971)
  br label %if.end.975

if.else.973:                                      ; preds = %land.lhs.true.962, %if.end.936
  %706 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call974 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %706, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double 0.000000e+00)
  br label %if.end.975

if.end.975:                                       ; preds = %if.else.973, %if.then.965
  %707 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call976 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %707, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %708 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call977 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %708, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.159, i32 0, i32 0))
  %709 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %710 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mb_type978 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %710, i32 0, i32 25
  %arrayidx979 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_mb_type978, i32 0, i64 2
  %711 = load i64, i64* %arrayidx979, align 8
  %conv980 = sitofp i64 %711 to float
  %arrayidx981 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx982 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx981, i32 0, i64 0
  %712 = load i64, i64* %arrayidx982, align 8
  %conv983 = sitofp i64 %712 to float
  %div984 = fdiv float %conv980, %conv983
  %conv985 = fpext float %div984 to double
  %call986 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %709, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv985)
  %713 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %714 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mb_type987 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %714, i32 0, i32 25
  %arrayidx988 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_mb_type987, i32 0, i64 0
  %715 = load i64, i64* %arrayidx988, align 8
  %conv989 = sitofp i64 %715 to float
  %arrayidx990 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx991 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx990, i32 0, i64 0
  %716 = load i64, i64* %arrayidx991, align 8
  %conv992 = sitofp i64 %716 to float
  %div993 = fdiv float %conv989, %conv992
  %conv994 = fpext float %div993 to double
  %call995 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %713, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv994)
  %717 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe996 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %717, i32 0, i32 13
  %718 = load i32, i32* %successive_Bframe996, align 4
  %cmp997 = icmp ne i32 %718, 0
  br i1 %cmp997, label %land.lhs.true.999, label %if.else.1010

land.lhs.true.999:                                ; preds = %if.end.975
  %719 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp1000 = icmp ne i32 %719, 0
  br i1 %cmp1000, label %if.then.1002, label %if.else.1010

if.then.1002:                                     ; preds = %land.lhs.true.999
  %720 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %721 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mb_type1003 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %721, i32 0, i32 25
  %arrayidx1004 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_mb_type1003, i32 0, i64 1
  %722 = load i64, i64* %arrayidx1004, align 8
  %conv1005 = sitofp i64 %722 to float
  %723 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv1006 = sitofp i32 %723 to float
  %div1007 = fdiv float %conv1005, %conv1006
  %conv1008 = fpext float %div1007 to double
  %call1009 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %720, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv1008)
  br label %if.end.1012

if.else.1010:                                     ; preds = %land.lhs.true.999, %if.end.975
  %724 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1011 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %724, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double 0.000000e+00)
  br label %if.end.1012

if.end.1012:                                      ; preds = %if.else.1010, %if.then.1002
  %725 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1013 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %725, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %726 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1014 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %726, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.160, i32 0, i32 0))
  %727 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1015 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %727, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.161, i32 0, i32 0))
  %728 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %arrayidx1016 = getelementptr inbounds [2 x double], [2 x double]* %mean_motion_info_bit_use, i32 0, i64 0
  %729 = load double, double* %arrayidx1016, align 8
  %call1017 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %728, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %729)
  %730 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1018 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %730, i32 0, i32 13
  %731 = load i32, i32* %successive_Bframe1018, align 4
  %cmp1019 = icmp ne i32 %731, 0
  br i1 %cmp1019, label %land.lhs.true.1021, label %if.else.1027

land.lhs.true.1021:                               ; preds = %if.end.1012
  %732 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp1022 = icmp ne i32 %732, 0
  br i1 %cmp1022, label %if.then.1024, label %if.else.1027

if.then.1024:                                     ; preds = %land.lhs.true.1021
  %733 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %arrayidx1025 = getelementptr inbounds [2 x double], [2 x double]* %mean_motion_info_bit_use, i32 0, i64 1
  %734 = load double, double* %arrayidx1025, align 8
  %call1026 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %733, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %734)
  br label %if.end.1029

if.else.1027:                                     ; preds = %land.lhs.true.1021, %if.end.1012
  %735 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1028 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %735, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double 0.000000e+00)
  br label %if.end.1029

if.end.1029:                                      ; preds = %if.else.1027, %if.then.1024
  %736 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1030 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %736, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %737 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1031 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %737, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.162, i32 0, i32 0))
  %738 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %739 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %tmp_bit_use_cbp1032 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %739, i32 0, i32 27
  %arrayidx1033 = getelementptr inbounds [5 x i64], [5 x i64]* %tmp_bit_use_cbp1032, i32 0, i64 2
  %740 = load i64, i64* %arrayidx1033, align 8
  %conv1034 = sitofp i64 %740 to float
  %arrayidx1035 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1036 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1035, i32 0, i64 0
  %741 = load i64, i64* %arrayidx1036, align 8
  %conv1037 = sitofp i64 %741 to float
  %div1038 = fdiv float %conv1034, %conv1037
  %conv1039 = fpext float %div1038 to double
  %call1040 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %738, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv1039)
  %742 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %743 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %tmp_bit_use_cbp1041 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %743, i32 0, i32 27
  %arrayidx1042 = getelementptr inbounds [5 x i64], [5 x i64]* %tmp_bit_use_cbp1041, i32 0, i64 0
  %744 = load i64, i64* %arrayidx1042, align 8
  %conv1043 = sitofp i64 %744 to float
  %arrayidx1044 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1045 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1044, i32 0, i64 0
  %745 = load i64, i64* %arrayidx1045, align 8
  %conv1046 = sitofp i64 %745 to float
  %div1047 = fdiv float %conv1043, %conv1046
  %conv1048 = fpext float %div1047 to double
  %call1049 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %742, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv1048)
  %746 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1050 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %746, i32 0, i32 13
  %747 = load i32, i32* %successive_Bframe1050, align 4
  %cmp1051 = icmp ne i32 %747, 0
  br i1 %cmp1051, label %land.lhs.true.1053, label %if.else.1068

land.lhs.true.1053:                               ; preds = %if.end.1029
  %arrayidx1054 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 1
  %arrayidx1055 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1054, i32 0, i64 0
  %748 = load i64, i64* %arrayidx1055, align 8
  %cmp1056 = icmp ne i64 %748, 0
  br i1 %cmp1056, label %if.then.1058, label %if.else.1068

if.then.1058:                                     ; preds = %land.lhs.true.1053
  %749 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %750 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %tmp_bit_use_cbp1059 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %750, i32 0, i32 27
  %arrayidx1060 = getelementptr inbounds [5 x i64], [5 x i64]* %tmp_bit_use_cbp1059, i32 0, i64 1
  %751 = load i64, i64* %arrayidx1060, align 8
  %conv1061 = sitofp i64 %751 to float
  %arrayidx1062 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 1
  %arrayidx1063 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1062, i32 0, i64 0
  %752 = load i64, i64* %arrayidx1063, align 8
  %conv1064 = sitofp i64 %752 to float
  %div1065 = fdiv float %conv1061, %conv1064
  %conv1066 = fpext float %div1065 to double
  %call1067 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %749, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv1066)
  br label %if.end.1070

if.else.1068:                                     ; preds = %land.lhs.true.1053, %if.end.1029
  %753 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1069 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %753, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double 0.000000e+00)
  br label %if.end.1070

if.end.1070:                                      ; preds = %if.else.1068, %if.then.1058
  %754 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1071 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %754, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %755 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1072 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %755, i32 0, i32 13
  %756 = load i32, i32* %successive_Bframe1072, align 4
  %cmp1073 = icmp ne i32 %756, 0
  br i1 %cmp1073, label %land.lhs.true.1075, label %if.else.1102

land.lhs.true.1075:                               ; preds = %if.end.1070
  %757 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp1076 = icmp ne i32 %757, 0
  br i1 %cmp1076, label %if.then.1078, label %if.else.1102

if.then.1078:                                     ; preds = %land.lhs.true.1075
  %758 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %759 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffY1079 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %759, i32 0, i32 28
  %arrayidx1080 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffY1079, i32 0, i64 2
  %760 = load i64, i64* %arrayidx1080, align 8
  %conv1081 = sitofp i64 %760 to float
  %arrayidx1082 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1083 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1082, i32 0, i64 0
  %761 = load i64, i64* %arrayidx1083, align 8
  %conv1084 = sitofp i64 %761 to float
  %div1085 = fdiv float %conv1081, %conv1084
  %conv1086 = fpext float %div1085 to double
  %762 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffY1087 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %762, i32 0, i32 28
  %arrayidx1088 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffY1087, i32 0, i64 0
  %763 = load i64, i64* %arrayidx1088, align 8
  %conv1089 = sitofp i64 %763 to float
  %arrayidx1090 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1091 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1090, i32 0, i64 0
  %764 = load i64, i64* %arrayidx1091, align 8
  %conv1092 = sitofp i64 %764 to float
  %div1093 = fdiv float %conv1089, %conv1092
  %conv1094 = fpext float %div1093 to double
  %765 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffY1095 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %765, i32 0, i32 28
  %arrayidx1096 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffY1095, i32 0, i64 1
  %766 = load i64, i64* %arrayidx1096, align 8
  %conv1097 = sitofp i64 %766 to float
  %767 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv1098 = sitofp i32 %767 to float
  %div1099 = fdiv float %conv1097, %conv1098
  %conv1100 = fpext float %div1099 to double
  %call1101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %758, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.163, i32 0, i32 0), double %conv1086, double %conv1094, double %conv1100)
  br label %if.end.1120

if.else.1102:                                     ; preds = %land.lhs.true.1075, %if.end.1070
  %768 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %769 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffY1103 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %769, i32 0, i32 28
  %arrayidx1104 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffY1103, i32 0, i64 2
  %770 = load i64, i64* %arrayidx1104, align 8
  %conv1105 = sitofp i64 %770 to float
  %arrayidx1106 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1107 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1106, i32 0, i64 0
  %771 = load i64, i64* %arrayidx1107, align 8
  %conv1108 = sitofp i64 %771 to float
  %div1109 = fdiv float %conv1105, %conv1108
  %conv1110 = fpext float %div1109 to double
  %772 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffY1111 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %772, i32 0, i32 28
  %arrayidx1112 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffY1111, i32 0, i64 0
  %773 = load i64, i64* %arrayidx1112, align 8
  %conv1113 = sitofp i64 %773 to float
  %arrayidx1114 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1115 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1114, i32 0, i64 0
  %774 = load i64, i64* %arrayidx1115, align 8
  %conv1116 = sitofp i64 %774 to float
  %div1117 = fdiv float %conv1113, %conv1116
  %conv1118 = fpext float %div1117 to double
  %call1119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %768, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.163, i32 0, i32 0), double %conv1110, double %conv1118, double 0.000000e+00)
  br label %if.end.1120

if.end.1120:                                      ; preds = %if.else.1102, %if.then.1078
  %775 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1121 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %775, i32 0, i32 13
  %776 = load i32, i32* %successive_Bframe1121, align 4
  %cmp1122 = icmp ne i32 %776, 0
  br i1 %cmp1122, label %land.lhs.true.1124, label %if.else.1151

land.lhs.true.1124:                               ; preds = %if.end.1120
  %777 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp1125 = icmp ne i32 %777, 0
  br i1 %cmp1125, label %if.then.1127, label %if.else.1151

if.then.1127:                                     ; preds = %land.lhs.true.1124
  %778 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %779 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffC1128 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %779, i32 0, i32 29
  %arrayidx1129 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffC1128, i32 0, i64 2
  %780 = load i64, i64* %arrayidx1129, align 8
  %conv1130 = sitofp i64 %780 to float
  %arrayidx1131 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1132 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1131, i32 0, i64 0
  %781 = load i64, i64* %arrayidx1132, align 8
  %conv1133 = sitofp i64 %781 to float
  %div1134 = fdiv float %conv1130, %conv1133
  %conv1135 = fpext float %div1134 to double
  %782 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffC1136 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %782, i32 0, i32 29
  %arrayidx1137 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffC1136, i32 0, i64 0
  %783 = load i64, i64* %arrayidx1137, align 8
  %conv1138 = sitofp i64 %783 to float
  %arrayidx1139 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1140 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1139, i32 0, i64 0
  %784 = load i64, i64* %arrayidx1140, align 8
  %conv1141 = sitofp i64 %784 to float
  %div1142 = fdiv float %conv1138, %conv1141
  %conv1143 = fpext float %div1142 to double
  %785 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffC1144 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %785, i32 0, i32 29
  %arrayidx1145 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffC1144, i32 0, i64 1
  %786 = load i64, i64* %arrayidx1145, align 8
  %conv1146 = sitofp i64 %786 to float
  %787 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv1147 = sitofp i32 %787 to float
  %div1148 = fdiv float %conv1146, %conv1147
  %conv1149 = fpext float %div1148 to double
  %call1150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %778, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.164, i32 0, i32 0), double %conv1135, double %conv1143, double %conv1149)
  br label %if.end.1169

if.else.1151:                                     ; preds = %land.lhs.true.1124, %if.end.1120
  %788 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %789 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffC1152 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %789, i32 0, i32 29
  %arrayidx1153 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffC1152, i32 0, i64 2
  %790 = load i64, i64* %arrayidx1153, align 8
  %conv1154 = sitofp i64 %790 to float
  %arrayidx1155 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1156 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1155, i32 0, i64 0
  %791 = load i64, i64* %arrayidx1156, align 8
  %conv1157 = sitofp i64 %791 to float
  %div1158 = fdiv float %conv1154, %conv1157
  %conv1159 = fpext float %div1158 to double
  %792 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffC1160 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %792, i32 0, i32 29
  %arrayidx1161 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_coeffC1160, i32 0, i64 0
  %793 = load i64, i64* %arrayidx1161, align 8
  %conv1162 = sitofp i64 %793 to float
  %arrayidx1163 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1164 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1163, i32 0, i64 0
  %794 = load i64, i64* %arrayidx1164, align 8
  %conv1165 = sitofp i64 %794 to float
  %div1166 = fdiv float %conv1162, %conv1165
  %conv1167 = fpext float %div1166 to double
  %call1168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %788, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.164, i32 0, i32 0), double %conv1159, double %conv1167, double 0.000000e+00)
  br label %if.end.1169

if.end.1169:                                      ; preds = %if.else.1151, %if.then.1127
  %795 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1170 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %795, i32 0, i32 13
  %796 = load i32, i32* %successive_Bframe1170, align 4
  %cmp1171 = icmp ne i32 %796, 0
  br i1 %cmp1171, label %land.lhs.true.1173, label %if.else.1200

land.lhs.true.1173:                               ; preds = %if.end.1169
  %797 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp1174 = icmp ne i32 %797, 0
  br i1 %cmp1174, label %if.then.1176, label %if.else.1200

if.then.1176:                                     ; preds = %land.lhs.true.1173
  %798 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %799 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_delta_quant1177 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %799, i32 0, i32 30
  %arrayidx1178 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_delta_quant1177, i32 0, i64 2
  %800 = load i64, i64* %arrayidx1178, align 8
  %conv1179 = sitofp i64 %800 to float
  %arrayidx1180 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1181 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1180, i32 0, i64 0
  %801 = load i64, i64* %arrayidx1181, align 8
  %conv1182 = sitofp i64 %801 to float
  %div1183 = fdiv float %conv1179, %conv1182
  %conv1184 = fpext float %div1183 to double
  %802 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_delta_quant1185 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %802, i32 0, i32 30
  %arrayidx1186 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_delta_quant1185, i32 0, i64 0
  %803 = load i64, i64* %arrayidx1186, align 8
  %conv1187 = sitofp i64 %803 to float
  %arrayidx1188 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1189 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1188, i32 0, i64 0
  %804 = load i64, i64* %arrayidx1189, align 8
  %conv1190 = sitofp i64 %804 to float
  %div1191 = fdiv float %conv1187, %conv1190
  %conv1192 = fpext float %div1191 to double
  %805 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_delta_quant1193 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %805, i32 0, i32 30
  %arrayidx1194 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_delta_quant1193, i32 0, i64 1
  %806 = load i64, i64* %arrayidx1194, align 8
  %conv1195 = sitofp i64 %806 to float
  %807 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv1196 = sitofp i32 %807 to float
  %div1197 = fdiv float %conv1195, %conv1196
  %conv1198 = fpext float %div1197 to double
  %call1199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %798, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.165, i32 0, i32 0), double %conv1184, double %conv1192, double %conv1198)
  br label %if.end.1218

if.else.1200:                                     ; preds = %land.lhs.true.1173, %if.end.1169
  %808 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %809 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_delta_quant1201 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %809, i32 0, i32 30
  %arrayidx1202 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_delta_quant1201, i32 0, i64 2
  %810 = load i64, i64* %arrayidx1202, align 8
  %conv1203 = sitofp i64 %810 to float
  %arrayidx1204 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1205 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1204, i32 0, i64 0
  %811 = load i64, i64* %arrayidx1205, align 8
  %conv1206 = sitofp i64 %811 to float
  %div1207 = fdiv float %conv1203, %conv1206
  %conv1208 = fpext float %div1207 to double
  %812 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_delta_quant1209 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %812, i32 0, i32 30
  %arrayidx1210 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_delta_quant1209, i32 0, i64 0
  %813 = load i64, i64* %arrayidx1210, align 8
  %conv1211 = sitofp i64 %813 to float
  %arrayidx1212 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1213 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1212, i32 0, i64 0
  %814 = load i64, i64* %arrayidx1213, align 8
  %conv1214 = sitofp i64 %814 to float
  %div1215 = fdiv float %conv1211, %conv1214
  %conv1216 = fpext float %div1215 to double
  %call1217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %808, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.165, i32 0, i32 0), double %conv1208, double %conv1216, double 0.000000e+00)
  br label %if.end.1218

if.end.1218:                                      ; preds = %if.else.1200, %if.then.1176
  %815 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1219 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %815, i32 0, i32 13
  %816 = load i32, i32* %successive_Bframe1219, align 4
  %cmp1220 = icmp ne i32 %816, 0
  br i1 %cmp1220, label %land.lhs.true.1222, label %if.else.1249

land.lhs.true.1222:                               ; preds = %if.end.1218
  %817 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp1223 = icmp ne i32 %817, 0
  br i1 %cmp1223, label %if.then.1225, label %if.else.1249

if.then.1225:                                     ; preds = %land.lhs.true.1222
  %818 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %819 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_stuffingBits1226 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %819, i32 0, i32 24
  %arrayidx1227 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_stuffingBits1226, i32 0, i64 2
  %820 = load i64, i64* %arrayidx1227, align 8
  %conv1228 = sitofp i64 %820 to float
  %arrayidx1229 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1230 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1229, i32 0, i64 0
  %821 = load i64, i64* %arrayidx1230, align 8
  %conv1231 = sitofp i64 %821 to float
  %div1232 = fdiv float %conv1228, %conv1231
  %conv1233 = fpext float %div1232 to double
  %822 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_stuffingBits1234 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %822, i32 0, i32 24
  %arrayidx1235 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_stuffingBits1234, i32 0, i64 0
  %823 = load i64, i64* %arrayidx1235, align 8
  %conv1236 = sitofp i64 %823 to float
  %arrayidx1237 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1238 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1237, i32 0, i64 0
  %824 = load i64, i64* %arrayidx1238, align 8
  %conv1239 = sitofp i64 %824 to float
  %div1240 = fdiv float %conv1236, %conv1239
  %conv1241 = fpext float %div1240 to double
  %825 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_stuffingBits1242 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %825, i32 0, i32 24
  %arrayidx1243 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_stuffingBits1242, i32 0, i64 1
  %826 = load i64, i64* %arrayidx1243, align 8
  %conv1244 = sitofp i64 %826 to float
  %827 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv1245 = sitofp i32 %827 to float
  %div1246 = fdiv float %conv1244, %conv1245
  %conv1247 = fpext float %div1246 to double
  %call1248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %818, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.166, i32 0, i32 0), double %conv1233, double %conv1241, double %conv1247)
  br label %if.end.1267

if.else.1249:                                     ; preds = %land.lhs.true.1222, %if.end.1218
  %828 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %829 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_stuffingBits1250 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %829, i32 0, i32 24
  %arrayidx1251 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_stuffingBits1250, i32 0, i64 2
  %830 = load i64, i64* %arrayidx1251, align 8
  %conv1252 = sitofp i64 %830 to float
  %arrayidx1253 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1254 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1253, i32 0, i64 0
  %831 = load i64, i64* %arrayidx1254, align 8
  %conv1255 = sitofp i64 %831 to float
  %div1256 = fdiv float %conv1252, %conv1255
  %conv1257 = fpext float %div1256 to double
  %832 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_stuffingBits1258 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %832, i32 0, i32 24
  %arrayidx1259 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_stuffingBits1258, i32 0, i64 0
  %833 = load i64, i64* %arrayidx1259, align 8
  %conv1260 = sitofp i64 %833 to float
  %arrayidx1261 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1262 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1261, i32 0, i64 0
  %834 = load i64, i64* %arrayidx1262, align 8
  %conv1263 = sitofp i64 %834 to float
  %div1264 = fdiv float %conv1260, %conv1263
  %conv1265 = fpext float %div1264 to double
  %call1266 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %828, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.166, i32 0, i32 0), double %conv1257, double %conv1265, double 0.000000e+00)
  br label %if.end.1267

if.end.1267:                                      ; preds = %if.else.1249, %if.then.1225
  %835 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %835, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.156, i32 0, i32 0))
  %836 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %836, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.167, i32 0, i32 0))
  %837 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %arrayidx1270 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1271 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1270, i32 0, i64 1
  %838 = load i64, i64* %arrayidx1271, align 8
  %conv1272 = sitofp i64 %838 to float
  %arrayidx1273 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 2
  %arrayidx1274 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1273, i32 0, i64 0
  %839 = load i64, i64* %arrayidx1274, align 8
  %conv1275 = sitofp i64 %839 to float
  %div1276 = fdiv float %conv1272, %conv1275
  %conv1277 = fpext float %div1276 to double
  %call1278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %837, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv1277)
  %840 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %arrayidx1279 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1280 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1279, i32 0, i64 1
  %841 = load i64, i64* %arrayidx1280, align 8
  %conv1281 = sitofp i64 %841 to float
  %arrayidx1282 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 0
  %arrayidx1283 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1282, i32 0, i64 0
  %842 = load i64, i64* %arrayidx1283, align 8
  %conv1284 = sitofp i64 %842 to float
  %div1285 = fdiv float %conv1281, %conv1284
  %conv1286 = fpext float %div1285 to double
  %call1287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %840, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv1286)
  %843 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1288 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %843, i32 0, i32 13
  %844 = load i32, i32* %successive_Bframe1288, align 4
  %cmp1289 = icmp ne i32 %844, 0
  br i1 %cmp1289, label %land.lhs.true.1291, label %if.else.1302

land.lhs.true.1291:                               ; preds = %if.end.1267
  %845 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp1292 = icmp ne i32 %845, 0
  br i1 %cmp1292, label %if.then.1294, label %if.else.1302

if.then.1294:                                     ; preds = %land.lhs.true.1291
  %846 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %arrayidx1295 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* %bit_use, i32 0, i64 1
  %arrayidx1296 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx1295, i32 0, i64 1
  %847 = load i64, i64* %arrayidx1296, align 8
  %conv1297 = sitofp i64 %847 to float
  %848 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv1298 = sitofp i32 %848 to float
  %div1299 = fdiv float %conv1297, %conv1298
  %conv1300 = fpext float %div1299 to double
  %call1301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %846, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double %conv1300)
  br label %if.end.1304

if.else.1302:                                     ; preds = %land.lhs.true.1291, %if.end.1267
  %849 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1303 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %849, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i32 0, i32 0), double 0.000000e+00)
  br label %if.end.1304

if.end.1304:                                      ; preds = %if.else.1302, %if.then.1294
  %850 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %850, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %851 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %851, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.156, i32 0, i32 0))
  %852 = load %struct._IO_FILE*, %struct._IO_FILE** @p_stat, align 8
  %call1307 = call i32 @fclose(%struct._IO_FILE* %852)
  %call1308 = call %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call1308, %struct._IO_FILE** @p_log, align 8
  %cmp1309 = icmp eq %struct._IO_FILE* %call1308, null
  br i1 %cmp1309, label %if.then.1311, label %if.else.1324

if.then.1311:                                     ; preds = %if.end.1304
  %call1312 = call %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call1312, %struct._IO_FILE** @p_log, align 8
  %cmp1313 = icmp eq %struct._IO_FILE* %call1312, null
  br i1 %cmp1313, label %if.then.1315, label %if.else.1317

if.then.1315:                                     ; preds = %if.then.1311
  %call1316 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.168, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.1323

if.else.1317:                                     ; preds = %if.then.1311
  %853 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1318 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %853, i8* getelementptr inbounds ([298 x i8], [298 x i8]* @.str.169, i32 0, i32 0))
  %854 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %854, i8* getelementptr inbounds ([298 x i8], [298 x i8]* @.str.170, i32 0, i32 0))
  %855 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1320 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %855, i8* getelementptr inbounds ([298 x i8], [298 x i8]* @.str.169, i32 0, i32 0))
  %856 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1321 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %856, i8* getelementptr inbounds ([298 x i8], [298 x i8]* @.str.171, i32 0, i32 0))
  %857 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1322 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %857, i8* getelementptr inbounds ([298 x i8], [298 x i8]* @.str.169, i32 0, i32 0))
  br label %if.end.1323

if.end.1323:                                      ; preds = %if.else.1317, %if.then.1315
  br label %if.end.1332

if.else.1324:                                     ; preds = %if.end.1304
  %858 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1325 = call i32 @fclose(%struct._IO_FILE* %858)
  %call1326 = call %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call1326, %struct._IO_FILE** @p_log, align 8
  %cmp1327 = icmp eq %struct._IO_FILE* %call1326, null
  br i1 %cmp1327, label %if.then.1329, label %if.end.1331

if.then.1329:                                     ; preds = %if.else.1324
  %call1330 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.168, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.1331

if.end.1331:                                      ; preds = %if.then.1329, %if.else.1324
  br label %if.end.1332

if.end.1332:                                      ; preds = %if.end.1331, %if.end.1323
  %859 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1333 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %859, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  %call1334 = call i64 @time(i64* null) #3
  store i64 %call1334, i64* %now, align 8
  %call1335 = call i64 @time(i64* %now) #3
  %call1336 = call %struct.tm* @localtime(i64* %now) #3
  store %struct.tm* %call1336, %struct.tm** %l_time, align 8
  %arraydecay1337 = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %860 = load %struct.tm*, %struct.tm** %l_time, align 8
  %call1338 = call i64 @strftime(i8* %arraydecay1337, i64 1000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct.tm* %860) #3
  %861 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %arraydecay1339 = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %call1340 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %861, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay1339)
  %arraydecay1341 = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %862 = load %struct.tm*, %struct.tm** %l_time, align 8
  %call1342 = call i64 @strftime(i8* %arraydecay1341, i64 1000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.tm* %862) #3
  %863 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %arraydecay1343 = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %call1344 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %863, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay1343)
  store i32 0, i32* %i, align 4
  br label %for.cond.1345

for.cond.1345:                                    ; preds = %for.inc.1361, %if.end.1332
  %864 = load i32, i32* %i, align 4
  %cmp1346 = icmp slt i32 %864, 30
  br i1 %cmp1346, label %for.body.1348, label %for.end.1363

for.body.1348:                                    ; preds = %for.cond.1345
  %865 = load i32, i32* %i, align 4
  %866 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile1349 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %866, i32 0, i32 25
  %arraydecay1350 = getelementptr inbounds [256 x i8], [256 x i8]* %infile1349, i32 0, i32 0
  %call1351 = call i64 @strlen(i8* %arraydecay1350) #6
  %conv1352 = trunc i64 %call1351 to i32
  %sub1353 = sub nsw i32 %conv1352, 30
  %call1354 = call i32 @imax(i32 0, i32 %sub1353)
  %add1355 = add nsw i32 %865, %call1354
  %idxprom1356 = sext i32 %add1355 to i64
  %867 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile1357 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %867, i32 0, i32 25
  %arrayidx1358 = getelementptr inbounds [256 x i8], [256 x i8]* %infile1357, i32 0, i64 %idxprom1356
  %868 = load i8, i8* %arrayidx1358, align 1
  %869 = load i32, i32* %i, align 4
  %idxprom1359 = sext i32 %869 to i64
  %arrayidx1360 = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i64 %idxprom1359
  store i8 %868, i8* %arrayidx1360, align 1
  br label %for.inc.1361

for.inc.1361:                                     ; preds = %for.body.1348
  %870 = load i32, i32* %i, align 4
  %inc1362 = add nsw i32 %870, 1
  store i32 %inc1362, i32* %i, align 4
  br label %for.cond.1345

for.end.1363:                                     ; preds = %for.cond.1345
  %871 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %arraydecay1364 = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i32 0
  %call1365 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %871, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0), i8* %arraydecay1364)
  %872 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %873 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames1366 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %873, i32 0, i32 2
  %874 = load i32, i32* %no_frames1366, align 4
  %call1367 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %872, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i32 0, i32 0), i32 %874)
  %875 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %876 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %876, i32 0, i32 121
  %877 = load i32, i32* %PicInterlace, align 4
  %878 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace1368 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %878, i32 0, i32 122
  %879 = load i32, i32* %MbInterlace1368, align 4
  %call1369 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %875, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 %877, i32 %879)
  %880 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %881 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp01370 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %881, i32 0, i32 3
  %882 = load i32, i32* %qp01370, align 4
  %call1371 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %880, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0), i32 %882)
  %883 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %884 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN1372 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %884, i32 0, i32 4
  %885 = load i32, i32* %qpN1372, align 4
  %call1373 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %883, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0), i32 %885)
  %886 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %887 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB1374 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %887, i32 0, i32 42
  %888 = load i32, i32* %qpB1374, align 4
  %call1375 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %886, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0), i32 %888)
  %889 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %890 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width1376 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %890, i32 0, i32 14
  %891 = load i32, i32* %img_width1376, align 4
  %892 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height1377 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %892, i32 0, i32 15
  %893 = load i32, i32* %img_height1377, align 4
  %call1378 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %889, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.176, i32 0, i32 0), i32 %891, i32 %893)
  %894 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %895 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %895, i32 0, i32 30
  %896 = load i32, i32* %intra_period, align 4
  %call1379 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %894, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i32 %896)
  %897 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %898 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1380 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %898, i32 0, i32 13
  %899 = load i32, i32* %successive_Bframe1380, align 4
  %call1381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %897, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %899)
  %900 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode1382 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %900, i32 0, i32 169
  %901 = load i32, i32* %SearchMode1382, align 4
  %cmp1383 = icmp eq i32 %901, 1
  br i1 %cmp1383, label %if.then.1385, label %if.else.1387

if.then.1385:                                     ; preds = %for.end.1363
  %902 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1386 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %902, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.178, i32 0, i32 0))
  br label %if.end.1410

if.else.1387:                                     ; preds = %for.end.1363
  %903 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode1388 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %903, i32 0, i32 169
  %904 = load i32, i32* %SearchMode1388, align 4
  %cmp1389 = icmp eq i32 %904, 2
  br i1 %cmp1389, label %if.then.1391, label %if.else.1393

if.then.1391:                                     ; preds = %if.else.1387
  %905 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1392 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %905, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.179, i32 0, i32 0))
  br label %if.end.1409

if.else.1393:                                     ; preds = %if.else.1387
  %906 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode1394 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %906, i32 0, i32 169
  %907 = load i32, i32* %SearchMode1394, align 4
  %cmp1395 = icmp eq i32 %907, 3
  br i1 %cmp1395, label %if.then.1397, label %if.else.1399

if.then.1397:                                     ; preds = %if.else.1393
  %908 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1398 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %908, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.180, i32 0, i32 0))
  br label %if.end.1408

if.else.1399:                                     ; preds = %if.else.1393
  %909 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode1400 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %909, i32 0, i32 169
  %910 = load i32, i32* %SearchMode1400, align 4
  %cmp1401 = icmp eq i32 %910, 0
  br i1 %cmp1401, label %if.then.1403, label %if.else.1405

if.then.1403:                                     ; preds = %if.else.1399
  %911 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1404 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %911, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.181, i32 0, i32 0))
  br label %if.end.1407

if.else.1405:                                     ; preds = %if.else.1399
  %912 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1406 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %912, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.182, i32 0, i32 0))
  br label %if.end.1407

if.end.1407:                                      ; preds = %if.else.1405, %if.then.1403
  br label %if.end.1408

if.end.1408:                                      ; preds = %if.end.1407, %if.then.1397
  br label %if.end.1409

if.end.1409:                                      ; preds = %if.end.1408, %if.then.1391
  br label %if.end.1410

if.end.1410:                                      ; preds = %if.end.1409, %if.then.1385
  %913 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %914 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric1411 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %914, i32 0, i32 199
  %arrayidx1412 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric1411, i32 0, i64 0
  %915 = load i32, i32* %arrayidx1412, align 4
  %916 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric1413 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %916, i32 0, i32 199
  %arrayidx1414 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric1413, i32 0, i64 1
  %917 = load i32, i32* %arrayidx1414, align 4
  %918 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric1415 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %918, i32 0, i32 199
  %arrayidx1416 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric1415, i32 0, i64 2
  %919 = load i32, i32* %arrayidx1416, align 4
  %call1417 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %913, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.183, i32 0, i32 0), i32 %915, i32 %917, i32 %919)
  %920 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %921 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range1418 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %921, i32 0, i32 7
  %922 = load i32, i32* %search_range1418, align 4
  %call1419 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %920, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.184, i32 0, i32 0), i32 %922)
  %923 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %924 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames1420 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %924, i32 0, i32 8
  %925 = load i32, i32* %num_ref_frames1420, align 4
  %call1421 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %923, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.185, i32 0, i32 0), i32 %925)
  %926 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %927 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate1422 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %927, i32 0, i32 12
  %928 = load float, float* %framerate1422, align 4
  %929 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1423 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %929, i32 0, i32 13
  %930 = load i32, i32* %successive_Bframe1423, align 4
  %add1424 = add nsw i32 %930, 1
  %conv1425 = sitofp i32 %add1424 to float
  %mul1426 = fmul float %928, %conv1425
  %931 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd1427 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %931, i32 0, i32 5
  %932 = load i32, i32* %jumpd1427, align 4
  %add1428 = add nsw i32 %932, 1
  %conv1429 = sitofp i32 %add1428 to float
  %div1430 = fdiv float %mul1426, %conv1429
  %conv1431 = fpext float %div1430 to double
  %call1432 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %926, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.186, i32 0, i32 0), double %conv1431)
  %933 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode1433 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %933, i32 0, i32 74
  %934 = load i32, i32* %symbol_mode1433, align 4
  %cmp1434 = icmp eq i32 %934, 0
  br i1 %cmp1434, label %if.then.1436, label %if.else.1438

if.then.1436:                                     ; preds = %if.end.1410
  %935 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1437 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %935, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.187, i32 0, i32 0))
  br label %if.end.1440

if.else.1438:                                     ; preds = %if.end.1410
  %936 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1439 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %936, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i32 0, i32 0))
  br label %if.end.1440

if.end.1440:                                      ; preds = %if.else.1438, %if.then.1436
  %937 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %938 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt1441 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %938, i32 0, i32 113
  %939 = load i32, i32* %rdopt1441, align 4
  %call1442 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %937, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.189, i32 0, i32 0), i32 %939)
  %940 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd1443 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %940, i32 0, i32 17
  %941 = load i32, i32* %intra_upd1443, align 4
  %cmp1444 = icmp eq i32 %941, 1
  br i1 %cmp1444, label %if.then.1446, label %if.else.1448

if.then.1446:                                     ; preds = %if.end.1440
  %942 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1447 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %942, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.190, i32 0, i32 0))
  br label %if.end.1450

if.else.1448:                                     ; preds = %if.end.1440
  %943 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1449 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %943, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.191, i32 0, i32 0))
  br label %if.end.1450

if.end.1450:                                      ; preds = %if.else.1448, %if.then.1446
  %944 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %945 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %945, i32 0, i32 153
  %946 = load i32, i32* %Transform8x8Mode, align 4
  %call1451 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %944, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.192, i32 0, i32 0), i32 %946)
  %947 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %948 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y11452 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %948, i32 0, i32 3
  %949 = load float, float* %snr_y11452, align 4
  %conv1453 = fpext float %949 to double
  %call1454 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %947, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i32 0, i32 0), double %conv1453)
  %950 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %951 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u11455 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %951, i32 0, i32 4
  %952 = load float, float* %snr_u11455, align 4
  %conv1456 = fpext float %952 to double
  %call1457 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %950, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i32 0, i32 0), double %conv1456)
  %953 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %954 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v11458 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %954, i32 0, i32 5
  %955 = load float, float* %snr_v11458, align 4
  %conv1459 = fpext float %955 to double
  %call1460 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %953, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i32 0, i32 0), double %conv1459)
  %956 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %957 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya1461 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %957, i32 0, i32 9
  %958 = load float, float* %snr_ya1461, align 4
  %conv1462 = fpext float %958 to double
  %call1463 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %956, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i32 0, i32 0), double %conv1462)
  %959 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %960 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua1464 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %960, i32 0, i32 10
  %961 = load float, float* %snr_ua1464, align 4
  %conv1465 = fpext float %961 to double
  %call1466 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %959, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i32 0, i32 0), double %conv1465)
  %962 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %963 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va1467 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %963, i32 0, i32 11
  %964 = load float, float* %snr_va1467, align 4
  %conv1468 = fpext float %964 to double
  %call1469 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %962, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i32 0, i32 0), double %conv1468)
  %965 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %966 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_I1470 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %966, i32 0, i32 19
  %967 = load float, float* %bitrate_I1470, align 4
  %conv1471 = fpext float %967 to double
  %call1472 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %965, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.194, i32 0, i32 0), double %conv1471)
  %968 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %969 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_P1473 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %969, i32 0, i32 20
  %970 = load float, float* %bitrate_P1473, align 4
  %conv1474 = fpext float %970 to double
  %call1475 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %968, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.194, i32 0, i32 0), double %conv1474)
  %971 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %972 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_B1476 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %972, i32 0, i32 21
  %973 = load float, float* %bitrate_B1476, align 4
  %conv1477 = fpext float %973 to double
  %call1478 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %971, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.194, i32 0, i32 0), double %conv1477)
  %974 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %975 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate1479 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %975, i32 0, i32 3
  %976 = load float, float* %bitrate1479, align 4
  %conv1480 = fpext float %976 to double
  %call1481 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %974, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.195, i32 0, i32 0), double %conv1480)
  %977 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %978 = load i64, i64* @tot_time, align 8
  %conv1482 = trunc i64 %978 to i32
  %call1483 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %977, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.196, i32 0, i32 0), i32 %conv1482)
  %979 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %980 = load i64, i64* @me_tot_time, align 8
  %conv1484 = trunc i64 %980 to i32
  %call1485 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %979, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.196, i32 0, i32 0), i32 %conv1484)
  %981 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1486 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %981, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %982 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1487 = call i32 @fclose(%struct._IO_FILE* %982)
  %call1488 = call %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call1488, %struct._IO_FILE** @p_log, align 8
  %983 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe1489 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %983, i32 0, i32 13
  %984 = load i32, i32* %successive_Bframe1489, align 4
  %cmp1490 = icmp ne i32 %984, 0
  br i1 %cmp1490, label %land.lhs.true.1492, label %if.else.1528

land.lhs.true.1492:                               ; preds = %if.end.1450
  %985 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %cmp1493 = icmp ne i32 %985, 0
  br i1 %cmp1493, label %if.then.1495, label %if.else.1528

if.then.1495:                                     ; preds = %land.lhs.true.1492
  %986 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %987 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames1496 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %987, i32 0, i32 2
  %988 = load i32, i32* %no_frames1496, align 4
  %989 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp01497 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %989, i32 0, i32 3
  %990 = load i32, i32* %qp01497, align 4
  %991 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN1498 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %991, i32 0, i32 4
  %992 = load i32, i32* %qpN1498, align 4
  %993 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y11499 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %993, i32 0, i32 3
  %994 = load float, float* %snr_y11499, align 4
  %conv1500 = fpext float %994 to double
  %995 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u11501 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %995, i32 0, i32 4
  %996 = load float, float* %snr_u11501, align 4
  %conv1502 = fpext float %996 to double
  %997 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v11503 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %997, i32 0, i32 5
  %998 = load float, float* %snr_v11503, align 4
  %conv1504 = fpext float %998 to double
  %999 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I1505 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %999, i32 0, i32 16
  %1000 = load i64, i64* %bit_ctr_I1505, align 8
  %1001 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya1506 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1001, i32 0, i32 9
  %1002 = load float, float* %snr_ya1506, align 4
  %conv1507 = fpext float %1002 to double
  %1003 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua1508 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1003, i32 0, i32 10
  %1004 = load float, float* %snr_ua1508, align 4
  %conv1509 = fpext float %1004 to double
  %1005 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va1510 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1005, i32 0, i32 11
  %1006 = load float, float* %snr_va1510, align 4
  %conv1511 = fpext float %1006 to double
  %1007 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I1512 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1007, i32 0, i32 16
  %1008 = load i64, i64* %bit_ctr_I1512, align 8
  %1009 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1009, i32 0, i32 4
  %1010 = load i64, i64* %bit_ctr, align 8
  %add1513 = add nsw i64 %1008, %1010
  %1011 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames1514 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1011, i32 0, i32 2
  %1012 = load i32, i32* %no_frames1514, align 4
  %1013 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %add1515 = add nsw i32 %1012, %1013
  %conv1516 = sext i32 %add1515 to i64
  %div1517 = sdiv i64 %add1513, %conv1516
  %1014 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_B1518 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1014, i32 0, i32 18
  %1015 = load i64, i64* %bit_ctr_B1518, align 8
  %1016 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %conv1519 = sext i32 %1016 to i64
  %div1520 = sdiv i64 %1015, %conv1519
  %1017 = load i64, i64* @tot_time, align 8
  %conv1521 = sitofp i64 %1017 to double
  %mul1522 = fmul double 1.000000e-03, %conv1521
  %1018 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames1523 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1018, i32 0, i32 2
  %1019 = load i32, i32* %no_frames1523, align 4
  %1020 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %add1524 = add nsw i32 %1019, %1020
  %conv1525 = sitofp i32 %add1524 to double
  %div1526 = fdiv double %mul1522, %conv1525
  %call1527 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %986, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.198, i32 0, i32 0), i32 %988, i32 %990, i32 %992, double %conv1500, double %conv1502, double %conv1504, i64 %1000, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0, double %conv1507, double %conv1509, double %conv1511, i64 %div1517, i64 %div1520, double %div1526)
  br label %if.end.1562

if.else.1528:                                     ; preds = %land.lhs.true.1492, %if.end.1450
  %1021 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames1529 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1021, i32 0, i32 2
  %1022 = load i32, i32* %no_frames1529, align 4
  %cmp1530 = icmp ne i32 %1022, 0
  br i1 %cmp1530, label %if.then.1532, label %if.end.1561

if.then.1532:                                     ; preds = %if.else.1528
  %1023 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %1024 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames1533 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1024, i32 0, i32 2
  %1025 = load i32, i32* %no_frames1533, align 4
  %1026 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp01534 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1026, i32 0, i32 3
  %1027 = load i32, i32* %qp01534, align 4
  %1028 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN1535 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1028, i32 0, i32 4
  %1029 = load i32, i32* %qpN1535, align 4
  %1030 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y11536 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1030, i32 0, i32 3
  %1031 = load float, float* %snr_y11536, align 4
  %conv1537 = fpext float %1031 to double
  %1032 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u11538 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1032, i32 0, i32 4
  %1033 = load float, float* %snr_u11538, align 4
  %conv1539 = fpext float %1033 to double
  %1034 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v11540 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1034, i32 0, i32 5
  %1035 = load float, float* %snr_v11540, align 4
  %conv1541 = fpext float %1035 to double
  %1036 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I1542 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1036, i32 0, i32 16
  %1037 = load i64, i64* %bit_ctr_I1542, align 8
  %1038 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya1543 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1038, i32 0, i32 9
  %1039 = load float, float* %snr_ya1543, align 4
  %conv1544 = fpext float %1039 to double
  %1040 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua1545 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1040, i32 0, i32 10
  %1041 = load float, float* %snr_ua1545, align 4
  %conv1546 = fpext float %1041 to double
  %1042 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va1547 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1042, i32 0, i32 11
  %1043 = load float, float* %snr_va1547, align 4
  %conv1548 = fpext float %1043 to double
  %1044 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I1549 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1044, i32 0, i32 16
  %1045 = load i64, i64* %bit_ctr_I1549, align 8
  %1046 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr1550 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1046, i32 0, i32 4
  %1047 = load i64, i64* %bit_ctr1550, align 8
  %add1551 = add nsw i64 %1045, %1047
  %1048 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames1552 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1048, i32 0, i32 2
  %1049 = load i32, i32* %no_frames1552, align 4
  %conv1553 = sext i32 %1049 to i64
  %div1554 = sdiv i64 %add1551, %conv1553
  %1050 = load i64, i64* @tot_time, align 8
  %conv1555 = sitofp i64 %1050 to double
  %mul1556 = fmul double 1.000000e-03, %conv1555
  %1051 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames1557 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1051, i32 0, i32 2
  %1052 = load i32, i32* %no_frames1557, align 4
  %conv1558 = sitofp i32 %1052 to double
  %div1559 = fdiv double %mul1556, %conv1558
  %call1560 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1023, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.199, i32 0, i32 0), i32 %1025, i32 %1027, i32 %1029, double %conv1537, double %conv1539, double %conv1541, i64 %1037, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0, double %conv1544, double %conv1546, double %conv1548, i64 %div1554, i32 0, double %div1559)
  br label %if.end.1561

if.end.1561:                                      ; preds = %if.then.1532, %if.else.1528
  br label %if.end.1562

if.end.1562:                                      ; preds = %if.end.1561, %if.then.1495
  %1053 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1563 = call i32 @fclose(%struct._IO_FILE* %1053)
  %1054 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1054, i32 0, i32 154
  %1055 = load i32, i32* %ReportFrameStats, align 4
  %tobool1564 = icmp ne i32 %1055, 0
  br i1 %tobool1564, label %if.then.1565, label %if.end.1575

if.then.1565:                                     ; preds = %if.end.1562
  %call1566 = call %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call1566, %struct._IO_FILE** @p_log, align 8
  %cmp1567 = icmp eq %struct._IO_FILE* %call1566, null
  br i1 %cmp1567, label %if.then.1569, label %if.else.1571

if.then.1569:                                     ; preds = %if.then.1565
  %call1570 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)) #3
  br label %if.end.1574

if.else.1571:                                     ; preds = %if.then.1565
  %1056 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1572 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1056, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.10, i32 0, i32 0))
  %1057 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call1573 = call i32 @fclose(%struct._IO_FILE* %1057)
  br label %if.end.1574

if.end.1574:                                      ; preds = %if.else.1571, %if.then.1569
  br label %if.end.1575

if.end.1575:                                      ; preds = %if.end.1574, %if.end.1562
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @free_picture(%struct.Picture* %pic) #0 {
entry:
  %pic.addr = alloca %struct.Picture*, align 8
  store %struct.Picture* %pic, %struct.Picture** %pic.addr, align 8
  %0 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %cmp = icmp ne %struct.Picture* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  call void @free_slice_list(%struct.Picture* %1)
  %2 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %3 = bitcast %struct.Picture* %2 to i8*
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free_mem2Dint(i32**) #1

declare void @free_mem3Dint(i32***, i32) #1

declare void @free_dpb() #1

declare void @free_colocated(%struct.colocated_params*) #1

declare void @uninit_out_buffer() #1

; Function Attrs: nounwind uwtable
define void @free_global_buffers() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load i32*, i32** @last_P_no_frm, align 8
  %1 = bitcast i32* %0 to i8*
  call void @free(i8* %1) #3
  %2 = load i32*, i32** @last_P_no_fld, align 8
  %3 = bitcast i32* %2 to i8*
  call void @free(i8* %3) #3
  call void @free_orig_planes()
  %4 = load i32**, i32*** @PicPos, align 8
  call void @free_mem2Dint(i32** %4)
  call void @free_QMatrix()
  call void @free_QOffsets()
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 59
  %6 = load i32, i32* %WeightedPrediction, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 60
  %8 = load i32, i32* %WeightedBiprediction, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 34
  %10 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %11 = load i32***, i32**** @wp_weight, align 8
  call void @free_mem3Dint(i32*** %11, i32 6)
  %12 = load i32***, i32**** @wp_offset, align 8
  call void @free_mem3Dint(i32*** %12, i32 6)
  %13 = load i32****, i32***** @wbp_weight, align 8
  call void @free_mem4Dint(i32**** %13, i32 6, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  %14 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %successive_Bframe = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %14, i32 0, i32 13
  %15 = load i32, i32* %successive_Bframe, align 4
  %cmp = icmp ne i32 %15, 0
  br i1 %cmp, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 68
  %17 = load i32, i32* %BRefPictures, align 4
  %cmp5 = icmp sgt i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false.4, %if.end
  %18 = load i8***, i8**** @direct_ref_idx, align 8
  call void @free_mem3D(i8*** %18, i32 2)
  %19 = load i8**, i8*** @direct_pdir, align 8
  call void @free_mem2D(i8** %19)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %lor.lhs.false.4
  %20 = load i32**, i32*** @imgY_sub_tmp, align 8
  %tobool8 = icmp ne i32** %20, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %21 = load i32**, i32*** @imgY_sub_tmp, align 8
  call void @free_mem2Dint(i32** %21)
  store i32** null, i32*** @imgY_sub_tmp, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 31
  %23 = load i8**, i8*** %ipredmode, align 8
  call void @free_mem2D(i8** %23)
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 32
  %25 = load i8**, i8*** %ipredmode8x8, align 8
  call void @free_mem2D(i8** %25)
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 61
  %27 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %28 = bitcast %struct.macroblock* %27 to i8*
  call void @free(i8* %28) #3
  %29 = load i8**, i8*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 10), align 8
  call void @free_mem2D(i8** %29)
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 23
  %31 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool11 = icmp ne i32 %31, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 63
  %33 = load i32*, i32** %intra_block, align 8
  %34 = bitcast i32* %33 to i8*
  call void @free(i8* %34) #3
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 114
  %36 = load i32, i32* %CtxAdptLagrangeMult, align 4
  %cmp14 = icmp eq i32 %36, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %37 = load double*, double** @mb16x16_cost_frame, align 8
  %38 = bitcast double* %37 to i8*
  call void @free(i8* %38) #3
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 113
  %40 = load i32, i32* %rdopt, align 4
  %cmp17 = icmp eq i32 %40, 3
  br i1 %cmp17, label %if.then.18, label %if.end.60

if.then.18:                                       ; preds = %if.end.16
  %41 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %41, i32 0, i32 0
  %42 = load i32**, i32*** %resY, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %42, i64 0
  %43 = load i32*, i32** %arrayidx, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #3
  %45 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY19 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %45, i32 0, i32 0
  %46 = load i32**, i32*** %resY19, align 8
  %47 = bitcast i32** %46 to i8*
  call void @free(i8* %47) #3
  %48 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock = getelementptr inbounds %struct.Decoders, %struct.Decoders* %48, i32 0, i32 4
  %49 = load i16**, i16*** %RefBlock, align 8
  %arrayidx20 = getelementptr inbounds i16*, i16** %49, i64 0
  %50 = load i16*, i16** %arrayidx20, align 8
  %51 = bitcast i16* %50 to i8*
  call void @free(i8* %51) #3
  %52 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock21 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %52, i32 0, i32 4
  %53 = load i16**, i16*** %RefBlock21, align 8
  %54 = bitcast i16** %53 to i8*
  call void @free(i8* %54) #3
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.then.18
  %55 = load i32, i32* %j, align 4
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 127
  %57 = load i32, i32* %NoOfDecoders, align 4
  %cmp22 = icmp slt i32 %55, %57
  br i1 %cmp22, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %58 = load i32, i32* %j, align 4
  %idxprom = sext i32 %58 to i64
  %59 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %59, i32 0, i32 1
  %60 = load i16***, i16**** %decY, align 8
  %arrayidx23 = getelementptr inbounds i16**, i16*** %60, i64 %idxprom
  %61 = load i16**, i16*** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i16*, i16** %61, i64 0
  %62 = load i16*, i16** %arrayidx24, align 8
  %63 = bitcast i16* %62 to i8*
  call void @free(i8* %63) #3
  %64 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %64 to i64
  %65 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY26 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %65, i32 0, i32 1
  %66 = load i16***, i16**** %decY26, align 8
  %arrayidx27 = getelementptr inbounds i16**, i16*** %66, i64 %idxprom25
  %67 = load i16**, i16*** %arrayidx27, align 8
  %68 = bitcast i16** %67 to i8*
  call void @free(i8* %68) #3
  %69 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %69 to i64
  %70 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best = getelementptr inbounds %struct.Decoders, %struct.Decoders* %70, i32 0, i32 3
  %71 = load i16***, i16**** %decY_best, align 8
  %arrayidx29 = getelementptr inbounds i16**, i16*** %71, i64 %idxprom28
  %72 = load i16**, i16*** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i16*, i16** %72, i64 0
  %73 = load i16*, i16** %arrayidx30, align 8
  %74 = bitcast i16* %73 to i8*
  call void @free(i8* %74) #3
  %75 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %75 to i64
  %76 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best32 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %76, i32 0, i32 3
  %77 = load i16***, i16**** %decY_best32, align 8
  %arrayidx33 = getelementptr inbounds i16**, i16*** %77, i64 %idxprom31
  %78 = load i16**, i16*** %arrayidx33, align 8
  %79 = bitcast i16** %78 to i8*
  call void @free(i8* %79) #3
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %for.body
  %80 = load i32, i32* %i, align 4
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 8
  %82 = load i32, i32* %max_num_references, align 4
  %add = add nsw i32 %82, 1
  %cmp35 = icmp slt i32 %80, %add
  br i1 %cmp35, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.34
  %83 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %83 to i64
  %84 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %84 to i64
  %85 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref = getelementptr inbounds %struct.Decoders, %struct.Decoders* %85, i32 0, i32 2
  %86 = load i16****, i16***** %decref, align 8
  %arrayidx39 = getelementptr inbounds i16***, i16**** %86, i64 %idxprom38
  %87 = load i16***, i16**** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i16**, i16*** %87, i64 %idxprom37
  %88 = load i16**, i16*** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16*, i16** %88, i64 0
  %89 = load i16*, i16** %arrayidx41, align 8
  %90 = bitcast i16* %89 to i8*
  call void @free(i8* %90) #3
  %91 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %91 to i64
  %92 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %92 to i64
  %93 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref44 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %93, i32 0, i32 2
  %94 = load i16****, i16***** %decref44, align 8
  %arrayidx45 = getelementptr inbounds i16***, i16**** %94, i64 %idxprom43
  %95 = load i16***, i16**** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16**, i16*** %95, i64 %idxprom42
  %96 = load i16**, i16*** %arrayidx46, align 8
  %97 = bitcast i16** %96 to i8*
  call void @free(i8* %97) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %98 = load i32, i32* %i, align 4
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.34

for.end:                                          ; preds = %for.cond.34
  %99 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %99 to i64
  %100 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref48 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %100, i32 0, i32 2
  %101 = load i16****, i16***** %decref48, align 8
  %arrayidx49 = getelementptr inbounds i16***, i16**** %101, i64 %idxprom47
  %102 = load i16***, i16**** %arrayidx49, align 8
  %103 = bitcast i16*** %102 to i8*
  call void @free(i8* %103) #3
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %104 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %104, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  %105 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY53 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %105, i32 0, i32 1
  %106 = load i16***, i16**** %decY53, align 8
  %107 = bitcast i16*** %106 to i8*
  call void @free(i8* %107) #3
  %108 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best54 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %108, i32 0, i32 3
  %109 = load i16***, i16**** %decY_best54, align 8
  %110 = bitcast i16*** %109 to i8*
  call void @free(i8* %110) #3
  %111 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref55 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %111, i32 0, i32 2
  %112 = load i16****, i16***** %decref55, align 8
  %113 = bitcast i16**** %112 to i8*
  call void @free(i8* %113) #3
  %114 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %status_map = getelementptr inbounds %struct.Decoders, %struct.Decoders* %114, i32 0, i32 5
  %115 = load i8**, i8*** %status_map, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %115, i64 0
  %116 = load i8*, i8** %arrayidx56, align 8
  call void @free(i8* %116) #3
  %117 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %status_map57 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %117, i32 0, i32 5
  %118 = load i8**, i8*** %status_map57, align 8
  %119 = bitcast i8** %118 to i8*
  call void @free(i8* %119) #3
  %120 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode = getelementptr inbounds %struct.Decoders, %struct.Decoders* %120, i32 0, i32 6
  %121 = load i8**, i8*** %dec_mb_mode, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %121, i64 0
  %122 = load i8*, i8** %arrayidx58, align 8
  call void @free(i8* %122) #3
  %123 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode59 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %123, i32 0, i32 6
  %124 = load i8**, i8*** %dec_mb_mode59, align 8
  %125 = bitcast i8** %124 to i8*
  call void @free(i8* %125) #3
  br label %if.end.60

if.end.60:                                        ; preds = %for.end.52, %if.end.16
  %126 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %126, i32 0, i32 128
  %127 = load i32, i32* %RestrictRef, align 4
  %tobool61 = icmp ne i32 %127, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.60
  %128 = load i8**, i8*** @pixel_map, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %128, i64 0
  %129 = load i8*, i8** %arrayidx63, align 8
  call void @free(i8* %129) #3
  %130 = load i8**, i8*** @pixel_map, align 8
  %131 = bitcast i8** %130 to i8*
  call void @free(i8* %131) #3
  %132 = load i8**, i8*** @refresh_map, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %132, i64 0
  %133 = load i8*, i8** %arrayidx64, align 8
  call void @free(i8* %133) #3
  %134 = load i8**, i8*** @refresh_map, align 8
  %135 = bitcast i8** %134 to i8*
  call void @free(i8* %135) #3
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.60
  %136 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %136, i32 0, i32 25
  %137 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool66 = icmp ne i32 %137, 0
  br i1 %tobool66, label %if.end.71, label %if.then.67

if.then.67:                                       ; preds = %if.end.65
  %138 = load i16**, i16*** @imgY_com, align 8
  call void @free_mem2Dpel(i16** %138)
  %139 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %139, i32 0, i32 160
  %140 = load i32, i32* %yuv_format, align 4
  %cmp68 = icmp ne i32 %140, 0
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.67
  %141 = load i16***, i16**** @imgUV_com, align 8
  call void @free_mem3Dpel(i16*** %141, i32 2)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.then.67
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.65
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 34
  %143 = load i32***, i32**** %nz_coeff, align 8
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 120
  %145 = load i32, i32* %FrameSizeInMbs, align 4
  call void @free_mem3Dint(i32*** %143, i32 %145)
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 150
  %147 = load double**, double*** %lambda_md, align 8
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 144
  %149 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  call void @free_mem2Ddb_offset(double** %147, i32 %149)
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 151
  %151 = load double***, double**** %lambda_me, align 8
  %152 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale72 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %152, i32 0, i32 144
  %153 = load i32, i32* %bitdepth_luma_qp_scale72, align 4
  %add73 = add nsw i32 52, %153
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 144
  %155 = load i32, i32* %bitdepth_luma_qp_scale74, align 4
  call void @free_mem3Ddb_offset(double*** %151, i32 10, i32 %add73, i32 %155)
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 152
  %157 = load i32***, i32**** %lambda_mf, align 8
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 144
  %159 = load i32, i32* %bitdepth_luma_qp_scale75, align 4
  %add76 = add nsw i32 52, %159
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale77 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 144
  %161 = load i32, i32* %bitdepth_luma_qp_scale77, align 4
  call void @free_mem3Dint_offset(i32*** %157, i32 10, i32 %add76, i32 %161)
  %162 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult78 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %162, i32 0, i32 114
  %163 = load i32, i32* %CtxAdptLagrangeMult78, align 4
  %cmp79 = icmp eq i32 %163, 1
  br i1 %cmp79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.71
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf_factor = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 153
  %165 = load double**, double*** %lambda_mf_factor, align 8
  %166 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %166, i32 0, i32 144
  %167 = load i32, i32* %bitdepth_luma_qp_scale81, align 4
  call void @free_mem2Ddb_offset(double** %165, i32 %167)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.71
  %168 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %168, i32 0, i32 169
  %169 = load i32, i32* %SearchMode, align 4
  %cmp83 = icmp eq i32 %169, 1
  br i1 %cmp83, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %if.end.82
  call void @UMHEX_free_mem()
  br label %if.end.94

if.else:                                          ; preds = %if.end.82
  %170 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode85 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %170, i32 0, i32 169
  %171 = load i32, i32* %SearchMode85, align 4
  %cmp86 = icmp eq i32 %171, 2
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.else
  call void @smpUMHEX_free_mem()
  br label %if.end.93

if.else.88:                                       ; preds = %if.else
  %172 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode89 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %172, i32 0, i32 169
  %173 = load i32, i32* %SearchMode89, align 4
  %cmp90 = icmp eq i32 %173, 3
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.else.88
  call void @EPZSDelete()
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.else.88
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.87
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.84
  %174 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %174, i32 0, i32 157
  %175 = load i32, i32* %RCEnable, align 4
  %tobool95 = icmp ne i32 %175, 0
  br i1 %tobool95, label %if.then.96, label %if.end.102

if.then.96:                                       ; preds = %if.end.94
  call void @generic_free(%struct.rc_generic** @generic_RC)
  call void @rc_free(%struct.rc_quadratic** @quadratic_RC)
  %176 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %176, i32 0, i32 62
  %177 = load i32, i32* %RDPictureDecision, align 4
  %tobool97 = icmp ne i32 %177, 0
  br i1 %tobool97, label %if.then.100, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.then.96
  %178 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %178, i32 0, i32 122
  %179 = load i32, i32* %MbInterlace, align 4
  %cmp99 = icmp eq i32 %179, 2
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %lor.lhs.false.98, %if.then.96
  call void @generic_free(%struct.rc_generic** @generic_RC_init)
  call void @rc_free(%struct.rc_quadratic** @quadratic_RC_init)
  call void @generic_free(%struct.rc_generic** @generic_RC_best)
  call void @rc_free(%struct.rc_quadratic** @quadratic_RC_best)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %lor.lhs.false.98
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.94
  %180 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %180, i32 0, i32 149
  %181 = load i32, i32* %redundant_pic_flag, align 4
  %tobool103 = icmp ne i32 %181, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.102
  %182 = load i16**, i16*** @imgY_tmp, align 8
  call void @free_mem2Dpel(i16** %182)
  %183 = load i16**, i16*** getelementptr inbounds ([2 x i16**], [2 x i16**]* @imgUV_tmp, i32 0, i64 0), align 8
  call void @free_mem2Dpel(i16** %183)
  %184 = load i16**, i16*** getelementptr inbounds ([2 x i16**], [2 x i16**]* @imgUV_tmp, i32 0, i64 1), align 8
  call void @free_mem2Dpel(i16** %184)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.end.102
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_img() #0 {
entry:
  call void @CloseSEIMessages()
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 79
  %1 = load i16******, i16******* %pred_mv, align 8
  call void @free_mem_mv(i16****** %1)
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 80
  %3 = load i16******, i16******* %all_mv, align 8
  call void @free_mem_mv(i16****** %3)
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 46
  %5 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 81
  %7 = load i16******, i16******* %bipred_mv1, align 8
  call void @free_mem_mv(i16****** %7)
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 82
  %9 = load i16******, i16******* %bipred_mv2, align 8
  call void @free_mem_mv(i16****** %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 53
  %11 = load i32****, i32***** %cofAC, align 8
  call void @free_mem_ACcoeff(i32**** %11)
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 54
  %13 = load i32***, i32**** %cofDC, align 8
  call void @free_mem_DCcoeff(i32*** %13)
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AdaptiveRounding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 185
  %15 = load i32, i32* %AdaptiveRounding, align 4
  %tobool1 = icmp ne i32 %15, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust4x4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 55
  %17 = load i32***, i32**** %fadjust4x4, align 8
  call void @free_mem3Dint(i32*** %17, i32 4)
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 56
  %19 = load i32***, i32**** %fadjust8x8, align 8
  call void @free_mem3Dint(i32*** %19, i32 3)
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust4x4Cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 57
  %21 = load i32****, i32***** %fadjust4x4Cr, align 8
  call void @free_mem4Dint(i32**** %21, i32 4, i32 2)
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust8x8Cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 58
  %23 = load i32****, i32***** %fadjust8x8Cr, align 8
  call void @free_mem4Dint(i32**** %23, i32 1, i32 2)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 122
  %25 = load i32, i32* %MbInterlace, align 4
  %tobool4 = icmp ne i32 %25, 0
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end.3
  %26 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %26)
  %27 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %27)
  %28 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %28)
  %29 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %29)
  %30 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %30)
  %31 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %31)
  %32 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %32)
  %33 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %33)
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 122
  %35 = load i32, i32* %MbInterlace6, align 4
  %cmp = icmp ne i32 %35, 3
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %36 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %36)
  %37 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %37)
  %38 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %38)
  %39 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %39)
  %40 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %40)
  %41 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %41)
  %42 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %42)
  %43 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %43)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end.3
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 156
  %45 = load i32, i32* %max_imgpel_value, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 157
  %47 = load i32, i32* %max_imgpel_value_uv, align 4
  %cmp10 = icmp sgt i32 %45, %47
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 62
  %49 = load i32*, i32** %quad, align 8
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 156
  %51 = load i32, i32* %max_imgpel_value12, align 4
  %add = add nsw i32 %51, 1
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, i32* %49, i64 %idx.neg
  %52 = bitcast i32* %add.ptr to i8*
  call void @free(i8* %52) #3
  br label %if.end.19

if.else:                                          ; preds = %if.end.9
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 62
  %54 = load i32*, i32** %quad13, align 8
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 157
  %56 = load i32, i32* %max_imgpel_value_uv14, align 4
  %add15 = add nsw i32 %56, 1
  %idx.ext16 = sext i32 %add15 to i64
  %idx.neg17 = sub i64 0, %idx.ext16
  %add.ptr18 = getelementptr inbounds i32, i32* %54, i64 %idx.neg17
  %57 = bitcast i32* %add.ptr18 to i8*
  call void @free(i8* %57) #3
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.11
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace20 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 122
  %59 = load i32, i32* %MbInterlace20, align 4
  %tobool21 = icmp ne i32 %59, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  %60 = load i8**, i8*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 10), align 8
  call void @free_mem2D(i8** %60)
  %61 = load i8**, i8*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 10), align 8
  call void @free_mem2D(i8** %61)
  %62 = load i8**, i8*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 10), align 8
  call void @free_mem2D(i8** %62)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.19
  ret void
}

declare void @free_context_memory() #1

declare void @FreeNalPayloadBuffer() #1

declare void @FreeParameterSets() #1

; Function Attrs: nounwind uwtable
define void @report_stats_on_error() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 2
  store i32 %1, i32* %no_frames, align 4
  %call = call i32 @terminate_sequence()
  call void @flush_dpb()
  %3 = load i32, i32* @p_in, align 4
  %call1 = call i32 @close(i32 %3)
  %4 = load i32, i32* @p_dec, align 4
  %cmp = icmp ne i32 -1, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @p_dec, align 4
  %call2 = call i32 @close(i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @p_trace, align 8
  %tobool = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @p_trace, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  call void @Clear_Motion_Search_Module()
  call void @RandomIntraUninit()
  call void @FmoUninit()
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 69
  %9 = load i32, i32* %HierarchicalCoding, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  call void @clear_gop_structure()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  call void @clear_rdopt()
  call void (...) @calc_buffer()
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 154
  %11 = load i32, i32* %ReportFrameStats, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  call void @report_frame_statistic()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  call void @report()
  %12 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  call void @free_picture(%struct.Picture* %12)
  %13 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %tobool12 = icmp ne %struct.Picture* %13, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %14 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  call void @free_picture(%struct.Picture* %14)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %15 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %tobool15 = icmp ne %struct.Picture* %15, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %16 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @free_picture(%struct.Picture* %16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  call void @free_dpb()
  %17 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @free_colocated(%struct.colocated_params* %17)
  call void @uninit_out_buffer()
  call void @free_global_buffers()
  call void @free_img()
  call void @free_context_memory()
  call void @FreeNalPayloadBuffer()
  call void @FreeParameterSets()
  ret void
}

; Function Attrs: nounwind uwtable
define void @CAVLC_init() #0 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 119
  %2 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.body
  %3 = load i32, i32* %k, align 4
  %cmp2 = icmp ult i32 %3, 4
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %l, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %l, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 158
  %6 = load i32, i32* %num_blk8x8_uv, align 4
  %add = add i32 4, %6
  %cmp5 = icmp ult i32 %4, %add
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %7 = load i32, i32* %l, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i32, i32* %k, align 4
  %idxprom7 = zext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %9 to i64
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 34
  %11 = load i32***, i32**** %nz_coeff, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %11, i64 %idxprom8
  %12 = load i32**, i32*** %arrayidx, align 8
  %arrayidx9 = getelementptr inbounds i32*, i32** %12, i64 %idxprom7
  %13 = load i32*, i32** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 0, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %14 = load i32, i32* %l, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %15 = load i32, i32* %k, align 4
  %inc12 = add i32 %15, 1
  store i32 %inc12, i32* %k, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end.13
  %16 = load i32, i32* %i, align 4
  %inc15 = add i32 %16, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_mem_mv(i16******* %mv) #0 {
entry:
  %mv.addr = alloca i16*******, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store i16******* %mv, i16******** %mv.addr, align 8
  %call = call noalias i8* @calloc(i64 4, i64 8) #3
  %0 = bitcast i8* %call to i16******
  %1 = load i16*******, i16******** %mv.addr, align 8
  store i16****** %0, i16******* %1, align 8
  %cmp = icmp eq i16****** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 4
  br i1 %cmp1, label %for.body, label %for.end.98

for.body:                                         ; preds = %for.cond
  %call2 = call noalias i8* @calloc(i64 4, i64 8) #3
  %3 = bitcast i8* %call2 to i16*****
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i16*******, i16******** %mv.addr, align 8
  %6 = load i16******, i16******* %5, align 8
  %arrayidx = getelementptr inbounds i16*****, i16****** %6, i64 %idxprom
  store i16***** %3, i16****** %arrayidx, align 8
  %cmp3 = icmp eq i16***** %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.93, %if.end.5
  %7 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %7, 4
  br i1 %cmp7, label %for.body.8, label %for.end.95

for.body.8:                                       ; preds = %for.cond.6
  %call9 = call noalias i8* @calloc(i64 2, i64 8) #3
  %8 = bitcast i8* %call9 to i16****
  %9 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load i16*******, i16******** %mv.addr, align 8
  %12 = load i16******, i16******* %11, align 8
  %arrayidx12 = getelementptr inbounds i16*****, i16****** %12, i64 %idxprom11
  %13 = load i16*****, i16****** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16****, i16***** %13, i64 %idxprom10
  store i16**** %8, i16***** %arrayidx13, align 8
  %cmp14 = icmp eq i16**** %8, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body.8
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.body.8
  store i32 0, i32* %k, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.90, %if.end.16
  %14 = load i32, i32* %k, align 4
  %cmp18 = icmp slt i32 %14, 2
  br i1 %cmp18, label %for.body.19, label %for.end.92

for.body.19:                                      ; preds = %for.cond.17
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 8
  %16 = load i32, i32* %max_num_references, align 4
  %conv = sext i32 %16 to i64
  %call20 = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %17 = bitcast i8* %call20 to i16***
  %18 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %18 to i64
  %19 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i16*******, i16******** %mv.addr, align 8
  %22 = load i16******, i16******* %21, align 8
  %arrayidx24 = getelementptr inbounds i16*****, i16****** %22, i64 %idxprom23
  %23 = load i16*****, i16****** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i16****, i16***** %23, i64 %idxprom22
  %24 = load i16****, i16***** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i16***, i16**** %24, i64 %idxprom21
  store i16*** %17, i16**** %arrayidx26, align 8
  %cmp27 = icmp eq i16*** %17, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.body.19
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %for.body.19
  store i32 0, i32* %l, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.87, %if.end.30
  %25 = load i32, i32* %l, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 8
  %27 = load i32, i32* %max_num_references32, align 4
  %cmp33 = icmp slt i32 %25, %27
  br i1 %cmp33, label %for.body.35, label %for.end.89

for.body.35:                                      ; preds = %for.cond.31
  %call36 = call noalias i8* @calloc(i64 9, i64 8) #3
  %28 = bitcast i8* %call36 to i16**
  %29 = load i32, i32* %l, align 4
  %idxprom37 = sext i32 %29 to i64
  %30 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load i16*******, i16******** %mv.addr, align 8
  %34 = load i16******, i16******* %33, align 8
  %arrayidx41 = getelementptr inbounds i16*****, i16****** %34, i64 %idxprom40
  %35 = load i16*****, i16****** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i16****, i16***** %35, i64 %idxprom39
  %36 = load i16****, i16***** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i16***, i16**** %36, i64 %idxprom38
  %37 = load i16***, i16**** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i16**, i16*** %37, i64 %idxprom37
  store i16** %28, i16*** %arrayidx44, align 8
  %cmp45 = icmp eq i16** %28, null
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body.35
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %for.body.35
  %call49 = call noalias i8* @calloc(i64 18, i64 2) #3
  %38 = bitcast i8* %call49 to i16*
  %39 = load i32, i32* %l, align 4
  %idxprom50 = sext i32 %39 to i64
  %40 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %40 to i64
  %41 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %41 to i64
  %42 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %42 to i64
  %43 = load i16*******, i16******** %mv.addr, align 8
  %44 = load i16******, i16******* %43, align 8
  %arrayidx54 = getelementptr inbounds i16*****, i16****** %44, i64 %idxprom53
  %45 = load i16*****, i16****** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i16****, i16***** %45, i64 %idxprom52
  %46 = load i16****, i16***** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16***, i16**** %46, i64 %idxprom51
  %47 = load i16***, i16**** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i16**, i16*** %47, i64 %idxprom50
  %48 = load i16**, i16*** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i16*, i16** %48, i64 0
  store i16* %38, i16** %arrayidx58, align 8
  %cmp59 = icmp eq i16* %38, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.48
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.48
  store i32 1, i32* %m, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc, %if.end.62
  %49 = load i32, i32* %m, align 4
  %cmp64 = icmp slt i32 %49, 9
  br i1 %cmp64, label %for.body.66, label %for.end

for.body.66:                                      ; preds = %for.cond.63
  %50 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %50, 1
  %idxprom67 = sext i32 %sub to i64
  %51 = load i32, i32* %l, align 4
  %idxprom68 = sext i32 %51 to i64
  %52 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %52 to i64
  %53 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %53 to i64
  %54 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %54 to i64
  %55 = load i16*******, i16******** %mv.addr, align 8
  %56 = load i16******, i16******* %55, align 8
  %arrayidx72 = getelementptr inbounds i16*****, i16****** %56, i64 %idxprom71
  %57 = load i16*****, i16****** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i16****, i16***** %57, i64 %idxprom70
  %58 = load i16****, i16***** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i16***, i16**** %58, i64 %idxprom69
  %59 = load i16***, i16**** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i16**, i16*** %59, i64 %idxprom68
  %60 = load i16**, i16*** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i16*, i16** %60, i64 %idxprom67
  %61 = load i16*, i16** %arrayidx76, align 8
  %add.ptr = getelementptr inbounds i16, i16* %61, i64 2
  %62 = load i32, i32* %m, align 4
  %idxprom77 = sext i32 %62 to i64
  %63 = load i32, i32* %l, align 4
  %idxprom78 = sext i32 %63 to i64
  %64 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %64 to i64
  %65 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %65 to i64
  %66 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %66 to i64
  %67 = load i16*******, i16******** %mv.addr, align 8
  %68 = load i16******, i16******* %67, align 8
  %arrayidx82 = getelementptr inbounds i16*****, i16****** %68, i64 %idxprom81
  %69 = load i16*****, i16****** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i16****, i16***** %69, i64 %idxprom80
  %70 = load i16****, i16***** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i16***, i16**** %70, i64 %idxprom79
  %71 = load i16***, i16**** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i16**, i16*** %71, i64 %idxprom78
  %72 = load i16**, i16*** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i16*, i16** %72, i64 %idxprom77
  store i16* %add.ptr, i16** %arrayidx86, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.66
  %73 = load i32, i32* %m, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond.63

for.end:                                          ; preds = %for.cond.63
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end
  %74 = load i32, i32* %l, align 4
  %inc88 = add nsw i32 %74, 1
  store i32 %inc88, i32* %l, align 4
  br label %for.cond.31

for.end.89:                                       ; preds = %for.cond.31
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.end.89
  %75 = load i32, i32* %k, align 4
  %inc91 = add nsw i32 %75, 1
  store i32 %inc91, i32* %k, align 4
  br label %for.cond.17

for.end.92:                                       ; preds = %for.cond.17
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.92
  %76 = load i32, i32* %j, align 4
  %inc94 = add nsw i32 %76, 1
  store i32 %inc94, i32* %j, align 4
  br label %for.cond.6

for.end.95:                                       ; preds = %for.cond.6
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end.95
  %77 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %77, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond

for.end.98:                                       ; preds = %for.cond
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 8
  %79 = load i32, i32* %max_num_references99, align 4
  %mul = mul nsw i32 16, %79
  %mul100 = mul nsw i32 %mul, 9
  %mul101 = mul nsw i32 %mul100, 2
  %conv102 = sext i32 %mul101 to i64
  %mul103 = mul i64 %conv102, 2
  %conv104 = trunc i64 %mul103 to i32
  ret i32 %conv104
}

; Function Attrs: nounwind uwtable
define i32 @get_mem_ACcoeff(i32***** %cofAC) #0 {
entry:
  %cofAC.addr = alloca i32*****, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %num_blk8x8 = alloca i32, align 4
  store i32***** %cofAC, i32****** %cofAC.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 158
  %1 = load i32, i32* %num_blk8x8_uv, align 4
  %add = add nsw i32 4, %1
  store i32 %add, i32* %num_blk8x8, align 4
  %2 = load i32, i32* %num_blk8x8, align 4
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %3 = bitcast i8* %call to i32****
  %4 = load i32*****, i32****** %cofAC.addr, align 8
  store i32**** %3, i32***** %4, align 8
  %cmp = icmp eq i32**** %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.205, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %if.end
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %num_blk8x8, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %call4 = call noalias i8* @calloc(i64 4, i64 8) #3
  %7 = bitcast i8* %call4 to i32***
  %8 = load i32, i32* %k, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32*****, i32****** %cofAC.addr, align 8
  %10 = load i32****, i32***** %9, align 8
  %arrayidx = getelementptr inbounds i32***, i32**** %10, i64 %idxprom
  store i32*** %7, i32**** %arrayidx, align 8
  %cmp5 = icmp eq i32*** %7, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.205, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.37, %if.end.8
  %11 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %11, 4
  br i1 %cmp10, label %for.body.12, label %for.end.39

for.body.12:                                      ; preds = %for.cond.9
  %call13 = call noalias i8* @calloc(i64 2, i64 8) #3
  %12 = bitcast i8* %call13 to i32**
  %13 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load i32*****, i32****** %cofAC.addr, align 8
  %16 = load i32****, i32***** %15, align 8
  %arrayidx16 = getelementptr inbounds i32***, i32**** %16, i64 %idxprom15
  %17 = load i32***, i32**** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i32**, i32*** %17, i64 %idxprom14
  store i32** %12, i32*** %arrayidx17, align 8
  %cmp18 = icmp eq i32** %12, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.body.12
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.205, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %for.body.12
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.end.21
  %18 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %18, 2
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.22
  %call26 = call noalias i8* @calloc(i64 65, i64 4) #3
  %19 = bitcast i8* %call26 to i32*
  %20 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %20 to i64
  %21 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %21 to i64
  %22 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %22 to i64
  %23 = load i32*****, i32****** %cofAC.addr, align 8
  %24 = load i32****, i32***** %23, align 8
  %arrayidx30 = getelementptr inbounds i32***, i32**** %24, i64 %idxprom29
  %25 = load i32***, i32**** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i32**, i32*** %25, i64 %idxprom28
  %26 = load i32**, i32*** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %26, i64 %idxprom27
  store i32* %19, i32** %arrayidx32, align 8
  %cmp33 = icmp eq i32* %19, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body.25
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.205, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %for.body.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %28, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.9

for.end.39:                                       ; preds = %for.cond.9
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %29 = load i32, i32* %k, align 4
  %inc41 = add nsw i32 %29, 1
  store i32 %inc41, i32* %k, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %30 = load i32, i32* %num_blk8x8, align 4
  %mul = mul nsw i32 %30, 4
  %mul43 = mul nsw i32 %mul, 2
  %mul44 = mul nsw i32 %mul43, 65
  %conv45 = sext i32 %mul44 to i64
  %mul46 = mul i64 %conv45, 4
  %conv47 = trunc i64 %mul46 to i32
  ret i32 %conv47
}

; Function Attrs: nounwind uwtable
define i32 @get_mem_DCcoeff(i32**** %cofDC) #0 {
entry:
  %cofDC.addr = alloca i32****, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32**** %cofDC, i32***** %cofDC.addr, align 8
  %call = call noalias i8* @calloc(i64 3, i64 8) #3
  %0 = bitcast i8* %call to i32***
  %1 = load i32****, i32***** %cofDC.addr, align 8
  store i32*** %0, i32**** %1, align 8
  %cmp = icmp eq i32*** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.206, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %if.end
  %2 = load i32, i32* %k, align 4
  %cmp1 = icmp slt i32 %2, 3
  br i1 %cmp1, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %call2 = call noalias i8* @calloc(i64 2, i64 8) #3
  %3 = bitcast i8* %call2 to i32**
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32****, i32***** %cofDC.addr, align 8
  %6 = load i32***, i32**** %5, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %6, i64 %idxprom
  store i32** %3, i32*** %arrayidx, align 8
  %cmp3 = icmp eq i32** %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.206, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.end.5
  %7 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %7, 2
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %call9 = call noalias i8* @calloc(i64 65, i64 4) #3
  %8 = bitcast i8* %call9 to i32*
  %9 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load i32****, i32***** %cofDC.addr, align 8
  %12 = load i32***, i32**** %11, align 8
  %arrayidx12 = getelementptr inbounds i32**, i32*** %12, i64 %idxprom11
  %13 = load i32**, i32*** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %13, i64 %idxprom10
  store i32* %8, i32** %arrayidx13, align 8
  %cmp14 = icmp eq i32* %8, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body.8
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.206, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %15 = load i32, i32* %k, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, i32* %k, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  ret i32 1560
}

declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare void @no_mem_exit(i8*) #1

declare i32 @get_mem2D(i8***, i32, i32) #1

declare i32 @get_mem2Ddb_offset(double***, i32, i32, i32) #1

declare i32 @get_mem3Ddb_offset(double****, i32, i32, i32, i32) #1

declare i32 @get_mem3Dint_offset(i32****, i32, i32, i32, i32) #1

declare void @RandomIntraInit(i32, i32, i32) #1

declare void @InitSEIMessages() #1

declare void @CloseSEIMessages() #1

; Function Attrs: nounwind uwtable
define void @free_mem_mv(i16****** %mv) #0 {
entry:
  %mv.addr = alloca i16******, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i16****** %mv, i16******* %mv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.38, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end.40

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.31, %for.body.3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 2
  br i1 %cmp5, label %for.body.6, label %for.end.33

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %l, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %3 = load i32, i32* %l, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 8
  %5 = load i32, i32* %max_num_references, align 4
  %cmp8 = icmp slt i32 %3, %5
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %6 = load i32, i32* %l, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %10 = load i16******, i16******* %mv.addr, align 8
  %arrayidx = getelementptr inbounds i16*****, i16****** %10, i64 %idxprom12
  %11 = load i16*****, i16****** %arrayidx, align 8
  %arrayidx13 = getelementptr inbounds i16****, i16***** %11, i64 %idxprom11
  %12 = load i16****, i16***** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i16***, i16**** %12, i64 %idxprom10
  %13 = load i16***, i16**** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i16**, i16*** %13, i64 %idxprom
  %14 = load i16**, i16*** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i16*, i16** %14, i64 0
  %15 = load i16*, i16** %arrayidx16, align 8
  %16 = bitcast i16* %15 to i8*
  call void @free(i8* %16) #3
  %17 = load i32, i32* %l, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load i16******, i16******* %mv.addr, align 8
  %arrayidx21 = getelementptr inbounds i16*****, i16****** %21, i64 %idxprom20
  %22 = load i16*****, i16****** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16****, i16***** %22, i64 %idxprom19
  %23 = load i16****, i16***** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16***, i16**** %23, i64 %idxprom18
  %24 = load i16***, i16**** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i16**, i16*** %24, i64 %idxprom17
  %25 = load i16**, i16*** %arrayidx24, align 8
  %26 = bitcast i16** %25 to i8*
  call void @free(i8* %26) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %27 = load i32, i32* %l, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %28 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load i16******, i16******* %mv.addr, align 8
  %arrayidx28 = getelementptr inbounds i16*****, i16****** %31, i64 %idxprom27
  %32 = load i16*****, i16****** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i16****, i16***** %32, i64 %idxprom26
  %33 = load i16****, i16***** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i16***, i16**** %33, i64 %idxprom25
  %34 = load i16***, i16**** %arrayidx30, align 8
  %35 = bitcast i16*** %34 to i8*
  call void @free(i8* %35) #3
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %36 = load i32, i32* %k, align 4
  %inc32 = add nsw i32 %36, 1
  store i32 %inc32, i32* %k, align 4
  br label %for.cond.4

for.end.33:                                       ; preds = %for.cond.4
  %37 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %38 to i64
  %39 = load i16******, i16******* %mv.addr, align 8
  %arrayidx36 = getelementptr inbounds i16*****, i16****** %39, i64 %idxprom35
  %40 = load i16*****, i16****** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16****, i16***** %40, i64 %idxprom34
  %41 = load i16****, i16***** %arrayidx37, align 8
  %42 = bitcast i16**** %41 to i8*
  call void @free(i8* %42) #3
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.33
  %43 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %43, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond.1

for.end.40:                                       ; preds = %for.cond.1
  %44 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %44 to i64
  %45 = load i16******, i16******* %mv.addr, align 8
  %arrayidx42 = getelementptr inbounds i16*****, i16****** %45, i64 %idxprom41
  %46 = load i16*****, i16****** %arrayidx42, align 8
  %47 = bitcast i16***** %46 to i8*
  call void @free(i8* %47) #3
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.40
  %48 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %48, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  %49 = load i16******, i16******* %mv.addr, align 8
  %50 = bitcast i16****** %49 to i8*
  call void @free(i8* %50) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem_ACcoeff(i32**** %cofAC) #0 {
entry:
  %cofAC.addr = alloca i32****, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32**** %cofAC, i32***** %cofAC.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 158
  %2 = load i32, i32* %num_blk8x8_uv, align 4
  %add = add nsw i32 4, %2
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.15, %for.body
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 4
  br i1 %cmp2, label %for.body.3, label %for.end.17

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %4, 2
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load i32****, i32***** %cofAC.addr, align 8
  %arrayidx = getelementptr inbounds i32***, i32**** %8, i64 %idxprom8
  %9 = load i32***, i32**** %arrayidx, align 8
  %arrayidx9 = getelementptr inbounds i32**, i32*** %9, i64 %idxprom7
  %10 = load i32**, i32*** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %10, i64 %idxprom
  %11 = load i32*, i32** %arrayidx10, align 8
  %12 = bitcast i32* %11 to i8*
  call void @free(i8* %12) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i32****, i32***** %cofAC.addr, align 8
  %arrayidx13 = getelementptr inbounds i32***, i32**** %16, i64 %idxprom12
  %17 = load i32***, i32**** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32**, i32*** %17, i64 %idxprom11
  %18 = load i32**, i32*** %arrayidx14, align 8
  %19 = bitcast i32** %18 to i8*
  call void @free(i8* %19) #3
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %20, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.1

for.end.17:                                       ; preds = %for.cond.1
  %21 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i32****, i32***** %cofAC.addr, align 8
  %arrayidx19 = getelementptr inbounds i32***, i32**** %22, i64 %idxprom18
  %23 = load i32***, i32**** %arrayidx19, align 8
  %24 = bitcast i32*** %23 to i8*
  call void @free(i8* %24) #3
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.17
  %25 = load i32, i32* %k, align 4
  %inc21 = add nsw i32 %25, 1
  store i32 %inc21, i32* %k, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %26 = load i32****, i32***** %cofAC.addr, align 8
  %27 = bitcast i32**** %26 to i8*
  call void @free(i8* %27) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem_DCcoeff(i32*** %cofDC) #0 {
entry:
  %cofDC.addr = alloca i32***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32*** %cofDC, i32**** %cofDC.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load i32***, i32**** %cofDC.addr, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %4, i64 %idxprom4
  %5 = load i32**, i32*** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %5, i64 %idxprom
  %6 = load i32*, i32** %arrayidx5, align 8
  %7 = bitcast i32* %6 to i8*
  call void @free(i8* %7) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %9 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32***, i32**** %cofDC.addr, align 8
  %arrayidx7 = getelementptr inbounds i32**, i32*** %10, i64 %idxprom6
  %11 = load i32**, i32*** %arrayidx7, align 8
  %12 = bitcast i32** %11 to i8*
  call void @free(i8* %12) #3
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %13 = load i32, i32* %j, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %j, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %14 = load i32***, i32**** %cofDC.addr, align 8
  %15 = bitcast i32*** %14 to i8*
  call void @free(i8* %15) #3
  ret void
}

declare void @free_mem4Dint(i32****, i32, i32) #1

declare void @free_mem2D(i8**) #1

declare void @free_slice_list(%struct.Picture*) #1

declare %struct._IO_FILE* @fopen64(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

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

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #2

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

declare void @EPZSOutputStats(%struct._IO_FILE*, i16 signext) #1

; Function Attrs: nounwind
declare double @log10(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iabs(i32 %x) #4 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal double @dmax(double %a, double %b) #4 {
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

; Function Attrs: nounwind uwtable
define i32 @init_orig_buffers() #0 {
entry:
  %memory_size = alloca i32, align 4
  store i32 0, i32* %memory_size, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 17
  %1 = load i32, i32* %height, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4
  %call = call i32 @get_mem2Dpel(i16*** @imgY_org_frm, i32 %1, i32 %3)
  %4 = load i32, i32* %memory_size, align 4
  %add = add nsw i32 %4, %call
  store i32 %add, i32* %memory_size, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 160
  %6 = load i32, i32* %yuv_format, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 20
  %8 = load i32, i32* %height_cr, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 16
  %10 = load i32, i32* %width_cr, align 4
  %call1 = call i32 @get_mem3Dpel(i16**** @imgUV_org_frm, i32 2, i32 %8, i32 %10)
  %11 = load i32, i32* %memory_size, align 4
  %add2 = add nsw i32 %11, %call1
  store i32 %add2, i32* %memory_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %12, i32 0, i32 25
  %13 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end.34, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %14 = load i16**, i16*** @imgY_org_frm, align 8
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 17
  %16 = load i32, i32* %height4, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 13
  %18 = load i32, i32* %width5, align 4
  %call6 = call i32 @init_top_bot_planes(i16** %14, i32 %16, i32 %18, i16*** @imgY_org_top, i16*** @imgY_org_bot)
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 160
  %20 = load i32, i32* %yuv_format7, align 4
  %cmp8 = icmp ne i32 %20, 0
  br i1 %cmp8, label %if.then.9, label %if.end.33

if.then.9:                                        ; preds = %if.then.3
  %call10 = call noalias i8* @calloc(i64 2, i64 8) #3
  %21 = bitcast i8* %call10 to i16***
  store i16*** %21, i16**** @imgUV_org_top, align 8
  %cmp11 = icmp eq i16*** %21, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.200, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  %call14 = call noalias i8* @calloc(i64 2, i64 8) #3
  %22 = bitcast i8* %call14 to i16***
  store i16*** %22, i16**** @imgUV_org_bot, align 8
  %cmp15 = icmp eq i16*** %22, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.201, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  %23 = load i32, i32* %memory_size, align 4
  %conv = sext i32 %23 to i64
  %add18 = add i64 %conv, 32
  %conv19 = trunc i64 %add18 to i32
  store i32 %conv19, i32* %memory_size, align 4
  %24 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %24, i64 0
  %25 = load i16**, i16*** %arrayidx, align 8
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 20
  %27 = load i32, i32* %height_cr20, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 16
  %29 = load i32, i32* %width_cr21, align 4
  %30 = load i16***, i16**** @imgUV_org_top, align 8
  %arrayidx22 = getelementptr inbounds i16**, i16*** %30, i64 0
  %31 = load i16***, i16**** @imgUV_org_bot, align 8
  %arrayidx23 = getelementptr inbounds i16**, i16*** %31, i64 0
  %call24 = call i32 @init_top_bot_planes(i16** %25, i32 %27, i32 %29, i16*** %arrayidx22, i16*** %arrayidx23)
  %32 = load i32, i32* %memory_size, align 4
  %add25 = add nsw i32 %32, %call24
  store i32 %add25, i32* %memory_size, align 4
  %33 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx26 = getelementptr inbounds i16**, i16*** %33, i64 1
  %34 = load i16**, i16*** %arrayidx26, align 8
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 20
  %36 = load i32, i32* %height_cr27, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 16
  %38 = load i32, i32* %width_cr28, align 4
  %39 = load i16***, i16**** @imgUV_org_top, align 8
  %arrayidx29 = getelementptr inbounds i16**, i16*** %39, i64 1
  %40 = load i16***, i16**** @imgUV_org_bot, align 8
  %arrayidx30 = getelementptr inbounds i16**, i16*** %40, i64 1
  %call31 = call i32 @init_top_bot_planes(i16** %34, i32 %36, i32 %38, i16*** %arrayidx29, i16*** %arrayidx30)
  %41 = load i32, i32* %memory_size, align 4
  %add32 = add nsw i32 %41, %call31
  store i32 %add32, i32* %memory_size, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.17, %if.then.3
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %42 = load i32, i32* %memory_size, align 4
  ret i32 %42
}

declare i32 @get_mem2Dpel(i16***, i32, i32) #1

declare i32 @get_mem3Dpel(i16****, i32, i32, i32) #1

declare i32 @init_top_bot_planes(i16**, i32, i32, i16***, i16***) #1

declare i32 @get_mem3D(i8****, i32, i32, i32) #1

declare i32 @UMHEX_get_mem() #1

declare void @smpUMHEX_init() #1

declare i32 @smpUMHEX_get_mem() #1

declare i32 @EPZSInit() #1

declare void @generic_alloc(%struct.rc_generic**) #1

declare void @rc_alloc(%struct.rc_quadratic**) #1

; Function Attrs: nounwind uwtable
define void @free_orig_planes() #0 {
entry:
  %0 = load i16**, i16*** @imgY_org_frm, align 8
  call void @free_mem2Dpel(i16** %0)
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 160
  %2 = load i32, i32* %yuv_format, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i16***, i16**** @imgUV_org_frm, align 8
  call void @free_mem3Dpel(i16*** %3, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %4, i32 0, i32 25
  %5 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.9, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %6 = load i16**, i16*** @imgY_org_top, align 8
  %7 = load i16**, i16*** @imgY_org_bot, align 8
  call void @free_top_bot_planes(i16** %6, i16** %7)
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 160
  %9 = load i32, i32* %yuv_format2, align 4
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.then.1
  %10 = load i16***, i16**** @imgUV_org_top, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %10, i64 0
  %11 = load i16**, i16*** %arrayidx, align 8
  %12 = load i16***, i16**** @imgUV_org_bot, align 8
  %arrayidx5 = getelementptr inbounds i16**, i16*** %12, i64 0
  %13 = load i16**, i16*** %arrayidx5, align 8
  call void @free_top_bot_planes(i16** %11, i16** %13)
  %14 = load i16***, i16**** @imgUV_org_top, align 8
  %arrayidx6 = getelementptr inbounds i16**, i16*** %14, i64 1
  %15 = load i16**, i16*** %arrayidx6, align 8
  %16 = load i16***, i16**** @imgUV_org_bot, align 8
  %arrayidx7 = getelementptr inbounds i16**, i16*** %16, i64 1
  %17 = load i16**, i16*** %arrayidx7, align 8
  call void @free_top_bot_planes(i16** %15, i16** %17)
  %18 = load i16***, i16**** @imgUV_org_top, align 8
  %19 = bitcast i16*** %18 to i8*
  call void @free(i8* %19) #3
  %20 = load i16***, i16**** @imgUV_org_bot, align 8
  %21 = bitcast i16*** %20 to i8*
  call void @free(i8* %21) #3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.then.1
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  ret void
}

declare void @free_mem2Dpel(i16**) #1

declare void @free_mem3Dpel(i16***, i32) #1

declare void @free_top_bot_planes(i16**, i16**) #1

declare void @free_QMatrix() #1

declare void @free_QOffsets() #1

declare void @free_mem3D(i8***, i32) #1

declare void @free_mem2Ddb_offset(double**, i32) #1

declare void @free_mem3Ddb_offset(double***, i32, i32, i32) #1

declare void @free_mem3Dint_offset(i32***, i32, i32, i32) #1

declare void @UMHEX_free_mem() #1

declare void @smpUMHEX_free_mem() #1

declare void @EPZSDelete() #1

declare void @generic_free(%struct.rc_generic**) #1

declare void @rc_free(%struct.rc_quadratic**) #1

; Function Attrs: nounwind uwtable
define void @combine_field() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 17
  %2 = load i32, i32* %height, align 4
  %div = sdiv i32 %2, 2
  %cmp = icmp slt i32 %0, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 2
  %idxprom = sext i32 %mul to i64
  %4 = load i16**, i16*** @imgY_com, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %4, i64 %idxprom
  %5 = load i16*, i16** %arrayidx, align 8
  %6 = bitcast i16* %5 to i8*
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 29
  %9 = load i16**, i16*** %imgY, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %9, i64 %idxprom1
  %10 = load i16*, i16** %arrayidx2, align 8
  %11 = bitcast i16* %10 to i8*
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 13
  %13 = load i32, i32* %width, align 4
  %conv = sext i32 %13 to i64
  %mul3 = mul i64 %conv, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %11, i64 %mul3, i32 2, i1 false)
  %14 = load i32, i32* %i, align 4
  %mul4 = mul nsw i32 %14, 2
  %add = add nsw i32 %mul4, 1
  %idxprom5 = sext i32 %add to i64
  %15 = load i16**, i16*** @imgY_com, align 8
  %arrayidx6 = getelementptr inbounds i16*, i16** %15, i64 %idxprom5
  %16 = load i16*, i16** %arrayidx6, align 8
  %17 = bitcast i16* %16 to i8*
  %18 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %18 to i64
  %19 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %imgY8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 29
  %20 = load i16**, i16*** %imgY8, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %20, i64 %idxprom7
  %21 = load i16*, i16** %arrayidx9, align 8
  %22 = bitcast i16* %21 to i8*
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 13
  %24 = load i32, i32* %width10, align 4
  %conv11 = sext i32 %24 to i64
  %mul12 = mul i64 %conv11, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %22, i64 %mul12, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 160
  %27 = load i32, i32* %yuv_format, align 4
  %cmp13 = icmp ne i32 %27, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.64, %if.then
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 20
  %30 = load i32, i32* %height_cr, align 4
  %div16 = sdiv i32 %30, 2
  %cmp17 = icmp slt i32 %28, %div16
  br i1 %cmp17, label %for.body.19, label %for.end.66

for.body.19:                                      ; preds = %for.cond.15
  %31 = load i32, i32* %i, align 4
  %mul20 = mul nsw i32 %31, 2
  %idxprom21 = sext i32 %mul20 to i64
  %32 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx22 = getelementptr inbounds i16**, i16*** %32, i64 0
  %33 = load i16**, i16*** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16*, i16** %33, i64 %idxprom21
  %34 = load i16*, i16** %arrayidx23, align 8
  %35 = bitcast i16* %34 to i8*
  %36 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %36 to i64
  %37 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 33
  %38 = load i16***, i16**** %imgUV, align 8
  %arrayidx25 = getelementptr inbounds i16**, i16*** %38, i64 0
  %39 = load i16**, i16*** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i16*, i16** %39, i64 %idxprom24
  %40 = load i16*, i16** %arrayidx26, align 8
  %41 = bitcast i16* %40 to i8*
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 16
  %43 = load i32, i32* %width_cr, align 4
  %conv27 = sext i32 %43 to i64
  %mul28 = mul i64 %conv27, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %41, i64 %mul28, i32 2, i1 false)
  %44 = load i32, i32* %i, align 4
  %mul29 = mul nsw i32 %44, 2
  %add30 = add nsw i32 %mul29, 1
  %idxprom31 = sext i32 %add30 to i64
  %45 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx32 = getelementptr inbounds i16**, i16*** %45, i64 0
  %46 = load i16**, i16*** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i16*, i16** %46, i64 %idxprom31
  %47 = load i16*, i16** %arrayidx33, align 8
  %48 = bitcast i16* %47 to i8*
  %49 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %49 to i64
  %50 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %imgUV35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 33
  %51 = load i16***, i16**** %imgUV35, align 8
  %arrayidx36 = getelementptr inbounds i16**, i16*** %51, i64 0
  %52 = load i16**, i16*** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16*, i16** %52, i64 %idxprom34
  %53 = load i16*, i16** %arrayidx37, align 8
  %54 = bitcast i16* %53 to i8*
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 16
  %56 = load i32, i32* %width_cr38, align 4
  %conv39 = sext i32 %56 to i64
  %mul40 = mul i64 %conv39, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %54, i64 %mul40, i32 2, i1 false)
  %57 = load i32, i32* %i, align 4
  %mul41 = mul nsw i32 %57, 2
  %idxprom42 = sext i32 %mul41 to i64
  %58 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx43 = getelementptr inbounds i16**, i16*** %58, i64 1
  %59 = load i16**, i16*** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i16*, i16** %59, i64 %idxprom42
  %60 = load i16*, i16** %arrayidx44, align 8
  %61 = bitcast i16* %60 to i8*
  %62 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %62 to i64
  %63 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %imgUV46 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 33
  %64 = load i16***, i16**** %imgUV46, align 8
  %arrayidx47 = getelementptr inbounds i16**, i16*** %64, i64 1
  %65 = load i16**, i16*** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16*, i16** %65, i64 %idxprom45
  %66 = load i16*, i16** %arrayidx48, align 8
  %67 = bitcast i16* %66 to i8*
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 16
  %69 = load i32, i32* %width_cr49, align 4
  %conv50 = sext i32 %69 to i64
  %mul51 = mul i64 %conv50, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %67, i64 %mul51, i32 2, i1 false)
  %70 = load i32, i32* %i, align 4
  %mul52 = mul nsw i32 %70, 2
  %add53 = add nsw i32 %mul52, 1
  %idxprom54 = sext i32 %add53 to i64
  %71 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx55 = getelementptr inbounds i16**, i16*** %71, i64 1
  %72 = load i16**, i16*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16*, i16** %72, i64 %idxprom54
  %73 = load i16*, i16** %arrayidx56, align 8
  %74 = bitcast i16* %73 to i8*
  %75 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %75 to i64
  %76 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %imgUV58 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %76, i32 0, i32 33
  %77 = load i16***, i16**** %imgUV58, align 8
  %arrayidx59 = getelementptr inbounds i16**, i16*** %77, i64 1
  %78 = load i16**, i16*** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %78, i64 %idxprom57
  %79 = load i16*, i16** %arrayidx60, align 8
  %80 = bitcast i16* %79 to i8*
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 16
  %82 = load i32, i32* %width_cr61, align 4
  %conv62 = sext i32 %82 to i64
  %mul63 = mul i64 %conv62, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %80, i64 %mul63, i32 2, i1 false)
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.19
  %83 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %83, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.15

for.end.66:                                       ; preds = %for.cond.15
  br label %if.end

if.end:                                           ; preds = %for.end.66, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @decide_fld_frame(float %snr_frame_Y, float %snr_field_Y, i32 %bit_field, i32 %bit_frame, double %lambda_picture) #0 {
entry:
  %retval = alloca i32, align 4
  %snr_frame_Y.addr = alloca float, align 4
  %snr_field_Y.addr = alloca float, align 4
  %bit_field.addr = alloca i32, align 4
  %bit_frame.addr = alloca i32, align 4
  %lambda_picture.addr = alloca double, align 8
  %cost_frame = alloca double, align 8
  %cost_field = alloca double, align 8
  store float %snr_frame_Y, float* %snr_frame_Y.addr, align 4
  store float %snr_field_Y, float* %snr_field_Y.addr, align 4
  store i32 %bit_field, i32* %bit_field.addr, align 4
  store i32 %bit_frame, i32* %bit_frame.addr, align 4
  store double %lambda_picture, double* %lambda_picture.addr, align 8
  %0 = load i32, i32* %bit_frame.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load double, double* %lambda_picture.addr, align 8
  %mul = fmul double %conv, %1
  %2 = load float, float* %snr_frame_Y.addr, align 4
  %conv1 = fpext float %2 to double
  %add = fadd double %mul, %conv1
  store double %add, double* %cost_frame, align 8
  %3 = load i32, i32* %bit_field.addr, align 4
  %conv2 = sitofp i32 %3 to double
  %4 = load double, double* %lambda_picture.addr, align 8
  %mul3 = fmul double %conv2, %4
  %5 = load float, float* %snr_field_Y.addr, align 4
  %conv4 = fpext float %5 to double
  %add5 = fadd double %mul3, %conv4
  store double %add5, double* %cost_field, align 8
  %6 = load double, double* %cost_field, align 8
  %7 = load double, double* %cost_frame, align 8
  %cmp = fcmp ogt double %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #6
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
