; ModuleID = 'lencod.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.SNRParameters = type { float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, i32, i8** }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
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
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@p_trace = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_stat = common global %struct._IO_FILE* null, align 8
@frame_statistic_start = common global i32 0, align 4
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@enc_bottom_picture = external global %struct.storable_picture*, align 8
@enc_top_picture = external global %struct.storable_picture*, align 8
@enc_frame_picture = external global %struct.storable_picture*, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@Iframe_ctr = common global i32 0, align 4
@Pframe_ctr = common global i32 0, align 4
@Bframe_ctr = common global i32 0, align 4
@tot_time = common global i32 0, align 4
@log2_max_frame_num_minus4 = common global i32 0, align 4
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
@.str.3 = private unnamed_addr constant [34 x i8] c"malloc_picture: Picture structure\00", align 1
@report_frame_statistic.last_mode_use = internal global [5 x [15 x i32]] zeroinitializer, align 16
@report_frame_statistic.last_b8_mode_0 = internal global [5 x [2 x i32]] zeroinitializer, align 16
@report_frame_statistic.last_mode_chroma_use = internal global [4 x i32] zeroinitializer, align 16
@report_frame_statistic.last_bit_ctr_n = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"stat_frame.dat\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [22 x i8] c"Error open file %s  \0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"stat_frame.dat.dat\00", align 1
@.str.9 = private unnamed_addr constant [469 x i8] c" --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \0A\00", align 1
@.str.10 = private unnamed_addr constant [469 x i8] c"|            Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                                                                                                                                                                                                              |\0A\00", align 1
@.str.11 = private unnamed_addr constant [469 x i8] c"|  ver   | Date  | Time  |    Sequence        |Frm | QP |P/MbInt|   Bits   |  SNRY  |  SNRU  |  SNRV  |  I4  |  I8  | I16  | IC0  | IC1  | IC2  | IC3  | PI4  | PI8  | PI16 |  P0  |  P1  |  P2  |  P3  | P1*8*| P1*4*| P2*8*| P2*4*| P3*8*| P3*4*|  P8  | P8:4 | P4*8*| P4*4*| P8:5 | P8:6 | P8:7 | BI4  | BI8  | BI16 |  B0  |  B1  |  B2  |  B3  | B0*8*| B0*4*| B1*8*| B1*4*| B2*8*| B2*4*| B3*8*| B3*4*|  B8  | B8:0 |B80*8*|B80*4*| B8:4 | B4*8*| B4*4*| B8:5 | B8:6 | B8:7 |\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"|%4s/%s\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"9.3\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"%d-%b-%Y\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"| %1.5s |\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c" %1.5s |\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%20.20s|\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%3d |\00", align 1
@frame_no = common global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"  %d/%d  |\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" %9d|\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c" %2.4f| %2.4f| %2.4f|\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c" %5d|\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c" Freq. for encoded bitstream       : %1.0f\0A\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c" Hadamard transform                : Used for QPel\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c" Hadamard transform                : Used\0A\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c" Hadamard transform                : Not used\0A\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c" Image format                      : %dx%d\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c" Error robustness                  : On\0A\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c" Error robustness                  : Off\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c" Search range                      : %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c" Total number of references        : %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c" References for P slices           : %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c" List0 references for B slices     : %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c" List1 references for B slices     : %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c" Total encoding time for the seq.  : %.3f sec \0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c" Total ME time for sequence        : %.3f sec \0A\00", align 1
@me_tot_time = common global i32 0, align 4
@.str.41 = private unnamed_addr constant [37 x i8] c" Sequence type                     :\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c" Pyramid (QP: I %d, P %d, B %d) \0A\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"-RB\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c" %s (QP: I %d, P %d, RB %d) \0A\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c" %s (QP: I %d, P %d, B %d) \0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c" IPPP (QP: I %d, P %d) \0A\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c" I-P-P-SP-P (QP: I %d, P %d, SP (%d, %d)) \0A\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c" Entropy coding method             : CAVLC\0A\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c" Entropy coding method             : CABAC\0A\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c" Profile/Level IDC                 : (%d,%d)\0A\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c" Search range restrictions         : none\0A\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c" Search range restrictions         : older reference frames\0A\00", align 1
@.str.56 = private unnamed_addr constant [80 x i8] c" Search range restrictions         : smaller blocks and older reference frames\0A\00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c" RD-optimized mode decision        : used\0A\00", align 1
@.str.58 = private unnamed_addr constant [47 x i8] c" RD-optimized mode decision        : not used\0A\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c" Data Partitioning Mode            : 1 partition \0A\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c" Data Partitioning Mode            : 3 partitions \0A\00", align 1
@.str.61 = private unnamed_addr constant [52 x i8] c" Data Partitioning Mode            : not supported\0A\00", align 1
@.str.62 = private unnamed_addr constant [68 x i8] c" Output File Format                : H.264 Bit Stream File Format \0A\00", align 1
@.str.63 = private unnamed_addr constant [62 x i8] c" Output File Format                : RTP Packet File Format \0A\00", align 1
@.str.64 = private unnamed_addr constant [52 x i8] c" Output File Format                : not supported\0A\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c" Residue Color Transform           : used\0A\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c" Residue Color Transform           : not used\0A\00", align 1
@.str.67 = private unnamed_addr constant [81 x i8] c"------------------ Average data all frames  -----------------------------------\0A\00", align 1
@.str.68 = private unnamed_addr constant [44 x i8] c" SNR Y(dB)                         : %5.2f\0A\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c" SNR U(dB)                         : %5.2f\0A\00", align 1
@.str.70 = private unnamed_addr constant [44 x i8] c" SNR V(dB)                         : %5.2f\0A\00", align 1
@.str.71 = private unnamed_addr constant [70 x i8] c" Total bits                        : %d (I %5d, P %5d, B %d NVB %d) \0A\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c" Bit rate (kbit/s)  @ %2.2f Hz     : %5.2f\0A\00", align 1
@.str.73 = private unnamed_addr constant [65 x i8] c" Total bits                        : %d (I %5d, P %5d, NVB %d) \0A\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c" Bits to avoid Startcode Emulation : %d \0A\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c" Bits for parameter sets           : %d \0A\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"Exit JM %s encoder ver %s \00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"9 (FRExt)\00", align 1
@information_init.yuv_types = private unnamed_addr constant [4 x [10 x i8]] [[10 x i8] c"YUV 4:0:0\00", [10 x i8] c"YUV 4:2:0\00", [10 x i8] c"YUV 4:2:2\00", [10 x i8] c"YUV 4:4:4\00"], align 16
@.str.78 = private unnamed_addr constant [75 x i8] c"------------------------------- JM %s %s --------------------------------\0A\00", align 1
@.str.79 = private unnamed_addr constant [42 x i8] c" Input YUV file                    : %s \0A\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c" Output H.264 bitstream            : %s \0A\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c" Output YUV file                   : %s \0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c" YUV Format                        : %s \0A\00", align 1
@.str.83 = private unnamed_addr constant [44 x i8] c" Frames to be encoded I-P/B        : %d/%d\0A\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c" PicInterlace / MbInterlace        : %d/%d\0A\00", align 1
@.str.85 = private unnamed_addr constant [41 x i8] c" Transform8x8Mode                  : %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [81 x i8] c"  Frame  Bit/pic WP QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld   I D\0A\00", align 1
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@.str.87 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_top\00", align 1
@imgUV_org_bot = common global i16*** null, align 8
@.str.88 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_bot\00", align 1
@last_P_no_frm = external global i32*, align 8
@.str.89 = private unnamed_addr constant [31 x i8] c"init_global_buffers: last_P_no\00", align 1
@last_P_no_fld = external global i32*, align 8
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@direct_ref_idx = common global i16*** null, align 8
@direct_pdir = common global i16** null, align 8
@img4Y_tmp = common global i32** null, align 8
@.str.90 = private unnamed_addr constant [28 x i8] c"init_global_buffers: decref\00", align 1
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@.str.91 = private unnamed_addr constant [15 x i8] c"get_mem_mv: mv\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"get_mem_ACcoeff: cofAC\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"get_mem_DCcoeff: cofDC\00", align 1
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_time = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@intras = common global i32 0, align 4
@nextP_tr_fld = common global i32 0, align 4
@nextP_tr_frm = common global i32 0, align 4
@resTrans_R = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_G = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_B = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resR = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resG = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resB = common global [16 x [16 x i32]] zeroinitializer, align 16
@mprRGB = common global [3 x [16 x [16 x i32]]] zeroinitializer, align 16
@dc_level = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@dc_level_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@b8_ipredmode8x8 = common global [4 x [4 x i32]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common global [16 x i32] zeroinitializer, align 16
@Bytes_After_Header = common global i32 0, align 4
@QP = common global i32 0, align 4
@QP2 = common global i32 0, align 4
@gop_structure = common global %struct.GOP_DATA* null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@glob_remapping_of_pic_nums_idc_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_remapping_of_pic_nums_idc_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l1 = common global [20 x i32] zeroinitializer, align 16
@rpc_bytes_to_go = common global i32 0, align 4
@rpc_bits_to_go = common global i32 0, align 4

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
  %bi = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
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
  call void (...) @Init_QOffsetMatrix()
  call void (...) @AllocNalPayloadBuffer()
  call void @init_poc()
  call void (...) @GenerateParameterSets()
  call void @init_img()
  %call = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call, %struct.Picture** @frame_pic, align 8
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 49
  %3 = load i32, i32* %RDPictureDecision, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call1, %struct.Picture** @frame_pic2, align 8
  %call2 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call2, %struct.Picture** @frame_pic3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 91
  %5 = load i32, i32* %PicInterlace, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call4, %struct.Picture** @top_pic, align 8
  %call5 = call %struct.Picture* @malloc_picture()
  store %struct.Picture* %call5, %struct.Picture** @bottom_pic, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  call void (...) @init_rdopt()
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 55
  %7 = load i32, i32* %PyramidCoding, align 4
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.6
  call void (...) @init_gop_structure()
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 55
  %9 = load i32, i32* %PyramidCoding9, align 4
  %cmp10 = icmp eq i32 %9, 3
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.8
  call void (...) @interpret_gop_structure()
  br label %if.end.12

if.else:                                          ; preds = %if.then.8
  call void (...) @create_pyramid()
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.6
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  call void (%struct.InputParameters*, ...) bitcast (void (...)* @init_dpb to void (%struct.InputParameters*, ...)*)(%struct.InputParameters* %10)
  call void (...) @init_out_buffer()
  store %struct.storable_picture* null, %struct.storable_picture** @enc_bottom_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_top_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_picture, align 8
  %call14 = call i32 @init_global_buffers()
  call void (...) @create_context_memory()
  call void (...) @Init_Motion_Search_Module()
  call void @information_init()
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 127
  %12 = load i32, i32* %RCEnable, align 4
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  call void (...) @rc_init_seq()
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FMEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 134
  %14 = load i32, i32* %FMEnable, align 4
  %tobool18 = icmp ne i32 %14, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  call void (...) @DefineThreshold()
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  store i32 0, i32* @Iframe_ctr, align 4
  store i32 0, i32* @Pframe_ctr, align 4
  store i32 0, i32* @Bframe_ctr, align 4
  store i32 0, i32* @tot_time, align 4
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 79
  %16 = load i32, i32* %last_frame, align 4
  %cmp21 = icmp sgt i32 %16, 0
  br i1 %cmp21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.20
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 79
  %18 = load i32, i32* %last_frame23, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 5
  %20 = load i32, i32* %jumpd, align 4
  %add = add nsw i32 %18, %20
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd24 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 5
  %22 = load i32, i32* %jumpd24, align 4
  %add25 = add nsw i32 %22, 1
  %div = sdiv i32 %add, %add25
  %add26 = add nsw i32 1, %div
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 2
  store i32 %add26, i32* %no_frames, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.end.20
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 34
  %25 = load i32, i32* %successive_Bframe, align 4
  store i32 %25, i32* @initial_Bframes, align 4
  call void (...) @PatchInputNoFrames()
  %26 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %26, i32 0, i32 32
  store i32 0, i32* %bit_ctr_parametersets, align 4
  %call28 = call i32 (...) @start_sequence()
  %27 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %27, i32 0, i32 6
  store i32 %call28, i32* %bit_slice, align 4
  %28 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %28, i32 0, i32 33
  %29 = load i32, i32* %bit_ctr_parametersets_n, align 4
  %30 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets29 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %30, i32 0, i32 32
  %31 = load i32, i32* %bit_ctr_parametersets29, align 4
  %add30 = add nsw i32 %31, %29
  store i32 %add30, i32* %bit_ctr_parametersets29, align 4
  store i32 0, i32* @start_frame_no_in_this_IGOP, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 0
  store i32 0, i32* %number, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 0
  %34 = load i32, i32* %number31, align 4
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames32 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 2
  %36 = load i32, i32* %no_frames32, align 4
  %cmp33 = icmp slt i32 %34, %36
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 113
  store i32 1, i32* %nal_reference_idc, align 4
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 31
  %39 = load i32, i32* %intra_period, align 4
  %tobool34 = icmp ne i32 %39, 0
  br i1 %tobool34, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %40 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %40, i32 0, i32 32
  %41 = load i32, i32* %idr_enable, align 4
  %tobool35 = icmp ne i32 %41, 0
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 0
  %43 = load i32, i32* %number36, align 4
  %44 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %43, %44
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period37 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 31
  %46 = load i32, i32* %intra_period37, align 4
  %rem = srem i32 %sub, %46
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 0
  %48 = load i32, i32* %number38, align 4
  %49 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub39 = sub nsw i32 %48, %49
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %rem, %cond.true ], [ %sub39, %cond.false ]
  %50 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd40 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %50, i32 0, i32 5
  %51 = load i32, i32* %jumpd40, align 4
  %add41 = add nsw i32 %51, 1
  %mul = mul nsw i32 2, %add41
  %mul42 = mul nsw i32 %cond, %mul
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 101
  store i32 %mul42, i32* %toppoc, align 4
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace43 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 91
  %54 = load i32, i32* %PicInterlace43, align 4
  %cmp44 = icmp eq i32 %54, 0
  br i1 %cmp44, label %land.lhs.true.45, label %if.else.49

land.lhs.true.45:                                 ; preds = %cond.end
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 92
  %56 = load i32, i32* %MbInterlace, align 4
  %cmp46 = icmp eq i32 %56, 0
  br i1 %cmp46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %land.lhs.true.45
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 101
  %58 = load i32, i32* %toppoc48, align 4
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 102
  store i32 %58, i32* %bottompoc, align 4
  br label %if.end.53

if.else.49:                                       ; preds = %land.lhs.true.45, %cond.end
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc50 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 101
  %61 = load i32, i32* %toppoc50, align 4
  %add51 = add nsw i32 %61, 1
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 102
  store i32 %add51, i32* %bottompoc52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.then.47
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 101
  %64 = load i32, i32* %toppoc54, align 4
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 102
  %66 = load i32, i32* %bottompoc55, align 4
  %cmp56 = icmp slt i32 %64, %66
  br i1 %cmp56, label %cond.true.57, label %cond.false.59

cond.true.57:                                     ; preds = %if.end.53
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 101
  %68 = load i32, i32* %toppoc58, align 4
  br label %cond.end.61

cond.false.59:                                    ; preds = %if.end.53
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 102
  %70 = load i32, i32* %bottompoc60, align 4
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.57
  %cond62 = phi i32 [ %68, %cond.true.57 ], [ %70, %cond.false.59 ]
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 103
  store i32 %cond62, i32* %framepoc, align 4
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 54
  %73 = load i32, i32* %BRefPictures, align 4
  %cmp63 = icmp eq i32 %73, 0
  br i1 %cmp63, label %land.lhs.true.64, label %lor.lhs.false

land.lhs.true.64:                                 ; preds = %cond.end.61
  %74 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding65 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %74, i32 0, i32 55
  %75 = load i32, i32* %PyramidCoding65, align 4
  %cmp66 = icmp eq i32 %75, 0
  br i1 %cmp66, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.64, %cond.end.61
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe67 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 34
  %77 = load i32, i32* %successive_Bframe67, align 4
  %cmp68 = icmp eq i32 %77, 0
  br i1 %cmp68, label %if.then.72, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 0
  %79 = load i32, i32* %number70, align 4
  %cmp71 = icmp slt i32 %79, 2
  br i1 %cmp71, label %if.then.72, label %if.else.90

if.then.72:                                       ; preds = %lor.lhs.false.69, %lor.lhs.false, %land.lhs.true.64
  %80 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period73 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %80, i32 0, i32 31
  %81 = load i32, i32* %intra_period73, align 4
  %tobool74 = icmp ne i32 %81, 0
  br i1 %tobool74, label %land.lhs.true.75, label %cond.false.83

land.lhs.true.75:                                 ; preds = %if.then.72
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable76 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 32
  %83 = load i32, i32* %idr_enable76, align 4
  %tobool77 = icmp ne i32 %83, 0
  br i1 %tobool77, label %cond.true.78, label %cond.false.83

cond.true.78:                                     ; preds = %land.lhs.true.75
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number79 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 0
  %85 = load i32, i32* %number79, align 4
  %86 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub80 = sub nsw i32 %85, %86
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period81 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 31
  %88 = load i32, i32* %intra_period81, align 4
  %rem82 = srem i32 %sub80, %88
  br label %cond.end.86

cond.false.83:                                    ; preds = %land.lhs.true.75, %if.then.72
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number84 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 0
  %90 = load i32, i32* %number84, align 4
  %91 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub85 = sub nsw i32 %90, %91
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.true.78
  %cond87 = phi i32 [ %rem82, %cond.true.78 ], [ %sub85, %cond.false.83 ]
  %92 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add88 = add i32 %92, 4
  %shl = shl i32 1, %add88
  %rem89 = srem i32 %cond87, %shl
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 105
  store i32 %rem89, i32* %frame_num, align 4
  br label %if.end.110

if.else.90:                                       ; preds = %lor.lhs.false.69
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num91 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 105
  %95 = load i32, i32* %frame_num91, align 4
  %inc = add i32 %95, 1
  store i32 %inc, i32* %frame_num91, align 4
  %96 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %96, i32 0, i32 31
  %97 = load i32, i32* %intra_period92, align 4
  %tobool93 = icmp ne i32 %97, 0
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.105

land.lhs.true.94:                                 ; preds = %if.else.90
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable95 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 32
  %99 = load i32, i32* %idr_enable95, align 4
  %tobool96 = icmp ne i32 %99, 0
  br i1 %tobool96, label %if.then.97, label %if.end.105

if.then.97:                                       ; preds = %land.lhs.true.94
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number98 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 0
  %101 = load i32, i32* %number98, align 4
  %102 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period99 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %102, i32 0, i32 31
  %103 = load i32, i32* %intra_period99, align 4
  %rem100 = srem i32 %101, %103
  %cmp101 = icmp eq i32 0, %rem100
  br i1 %cmp101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.then.97
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 105
  store i32 0, i32* %frame_num103, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.then.97
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %land.lhs.true.94, %if.else.90
  %105 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add106 = add i32 %105, 4
  %shl107 = shl i32 1, %add106
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num108 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 105
  %107 = load i32, i32* %frame_num108, align 4
  %rem109 = urem i32 %107, %shl107
  store i32 %rem109, i32* %frame_num108, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.105, %cond.end.86
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 99
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %109 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures111 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %109, i32 0, i32 54
  %110 = load i32, i32* %BRefPictures111, align 4
  %tobool112 = icmp ne i32 %110, 0
  br i1 %tobool112, label %if.then.113, label %if.end.122

if.then.113:                                      ; preds = %if.end.110
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 0
  %112 = load i32, i32* %number114, align 4
  %tobool115 = icmp ne i32 %112, 0
  br i1 %tobool115, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %if.then.113
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe117 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 34
  %114 = load i32, i32* %successive_Bframe117, align 4
  %mul118 = mul nsw i32 2, %114
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 99
  %arrayidx120 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt119, i32 0, i64 0
  store i32 %mul118, i32* %arrayidx120, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.116, %if.then.113
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.110
  call void @SetImgType()
  %116 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe123 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %116, i32 0, i32 34
  %117 = load i32, i32* %successive_Bframe123, align 4
  %tobool124 = icmp ne i32 %117, 0
  br i1 %tobool124, label %land.lhs.true.125, label %if.end.167

land.lhs.true.125:                                ; preds = %if.end.122
  %118 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame126 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %118, i32 0, i32 79
  %119 = load i32, i32* %last_frame126, align 4
  %tobool127 = icmp ne i32 %119, 0
  br i1 %tobool127, label %land.lhs.true.128, label %if.end.167

land.lhs.true.128:                                ; preds = %land.lhs.true.125
  %120 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %120, i32 0, i32 0
  %121 = load i32, i32* %number129, align 4
  %122 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub130 = sub nsw i32 %121, %122
  %add131 = add nsw i32 %sub130, 1
  %123 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames132 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %123, i32 0, i32 2
  %124 = load i32, i32* %no_frames132, align 4
  %cmp133 = icmp eq i32 %add131, %124
  br i1 %cmp133, label %if.then.134, label %if.end.167

if.then.134:                                      ; preds = %land.lhs.true.128
  %125 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd135 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %125, i32 0, i32 5
  %126 = load i32, i32* %jumpd135, align 4
  %add136 = add nsw i32 %126, 1
  %conv = sitofp i32 %add136 to float
  %conv137 = fpext float %conv to double
  %127 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe138 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %127, i32 0, i32 34
  %128 = load i32, i32* %successive_Bframe138, align 4
  %conv139 = sitofp i32 %128 to double
  %add140 = fadd double %conv139, 1.000000e+00
  %div141 = fdiv double %conv137, %add140
  %add142 = fadd double %div141, 4.999990e-01
  %conv143 = fptosi double %add142 to i32
  store i32 %conv143, i32* %bi, align 4
  %129 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame144 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %129, i32 0, i32 79
  %130 = load i32, i32* %last_frame144, align 4
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number145 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 0
  %132 = load i32, i32* %number145, align 4
  %sub146 = sub nsw i32 %132, 1
  %133 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd147 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %133, i32 0, i32 5
  %134 = load i32, i32* %jumpd147, align 4
  %add148 = add nsw i32 %134, 1
  %mul149 = mul nsw i32 %sub146, %add148
  %sub150 = sub nsw i32 %130, %mul149
  %135 = load i32, i32* %bi, align 4
  %div151 = sdiv i32 %sub150, %135
  %sub152 = sub nsw i32 %div151, 1
  %136 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe153 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %136, i32 0, i32 34
  store i32 %sub152, i32* %successive_Bframe153, align 4
  %137 = load i32, i32* @initial_Bframes, align 4
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe154 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 34
  %139 = load i32, i32* %successive_Bframe154, align 4
  %sub155 = sub nsw i32 %137, %139
  %mul156 = mul nsw i32 -2, %sub155
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt157 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 99
  %arrayidx158 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt157, i32 0, i64 0
  store i32 %mul156, i32* %arrayidx158, align 4
  %141 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt159 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %141, i32 0, i32 99
  %arrayidx160 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt159, i32 0, i64 0
  %142 = load i32, i32* %arrayidx160, align 4
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc161 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 101
  %144 = load i32, i32* %toppoc161, align 4
  %add162 = add nsw i32 %144, %142
  store i32 %add162, i32* %toppoc161, align 4
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt163 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 99
  %arrayidx164 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt163, i32 0, i64 0
  %146 = load i32, i32* %arrayidx164, align 4
  %147 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc165 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %147, i32 0, i32 102
  %148 = load i32, i32* %bottompoc165, align 4
  %add166 = add nsw i32 %148, %146
  store i32 %add166, i32* %bottompoc165, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.134, %land.lhs.true.128, %land.lhs.true.125, %if.end.122
  %149 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %149, i32 0, i32 6
  %150 = load i32, i32* %type, align 4
  %cmp168 = icmp eq i32 %150, 2
  br i1 %cmp168, label %if.then.170, label %if.end.259

if.then.170:                                      ; preds = %if.end.167
  %151 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable171 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %151, i32 0, i32 127
  %152 = load i32, i32* %RCEnable171, align 4
  %tobool172 = icmp ne i32 %152, 0
  br i1 %tobool172, label %if.then.173, label %if.end.258

if.then.173:                                      ; preds = %if.then.170
  %153 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period174 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %153, i32 0, i32 31
  %154 = load i32, i32* %intra_period174, align 4
  %cmp175 = icmp eq i32 %154, 0
  br i1 %cmp175, label %if.then.177, label %if.else.190

if.then.177:                                      ; preds = %if.then.173
  %155 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames178 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %155, i32 0, i32 2
  %156 = load i32, i32* %no_frames178, align 4
  %157 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames179 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %157, i32 0, i32 2
  %158 = load i32, i32* %no_frames179, align 4
  %sub180 = sub nsw i32 %158, 1
  %159 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe181 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %159, i32 0, i32 34
  %160 = load i32, i32* %successive_Bframe181, align 4
  %mul182 = mul nsw i32 %sub180, %160
  %add183 = add nsw i32 %156, %mul182
  store i32 %add183, i32* %n, align 4
  %161 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames184 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %161, i32 0, i32 2
  %162 = load i32, i32* %no_frames184, align 4
  %sub185 = sub nsw i32 %162, 1
  store i32 %sub185, i32* %np, align 4
  %163 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames186 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %163, i32 0, i32 2
  %164 = load i32, i32* %no_frames186, align 4
  %sub187 = sub nsw i32 %164, 1
  %165 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe188 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %165, i32 0, i32 34
  %166 = load i32, i32* %successive_Bframe188, align 4
  %mul189 = mul nsw i32 %sub187, %166
  store i32 %mul189, i32* %nb, align 4
  br label %if.end.257

if.else.190:                                      ; preds = %if.then.173
  %167 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period191 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %167, i32 0, i32 31
  %168 = load i32, i32* %intra_period191, align 4
  %169 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe192 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %169, i32 0, i32 34
  %170 = load i32, i32* %successive_Bframe192, align 4
  %add193 = add nsw i32 %170, 1
  %mul194 = mul nsw i32 %168, %add193
  store i32 %mul194, i32* %N, align 4
  %171 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe195 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %171, i32 0, i32 34
  %172 = load i32, i32* %successive_Bframe195, align 4
  %add196 = add nsw i32 %172, 1
  store i32 %add196, i32* %M, align 4
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number197 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 0
  %174 = load i32, i32* %number197, align 4
  %cmp198 = icmp eq i32 %174, 0
  br i1 %cmp198, label %cond.true.200, label %cond.false.203

cond.true.200:                                    ; preds = %if.else.190
  %175 = load i32, i32* %N, align 4
  %176 = load i32, i32* %M, align 4
  %sub201 = sub nsw i32 %176, 1
  %sub202 = sub nsw i32 %175, %sub201
  br label %cond.end.204

cond.false.203:                                   ; preds = %if.else.190
  %177 = load i32, i32* %N, align 4
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.203, %cond.true.200
  %cond205 = phi i32 [ %sub202, %cond.true.200 ], [ %177, %cond.false.203 ]
  store i32 %cond205, i32* %n, align 4
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number206 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 0
  %179 = load i32, i32* %number206, align 4
  %180 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period207 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %180, i32 0, i32 31
  %181 = load i32, i32* %intra_period207, align 4
  %div208 = sdiv i32 %179, %181
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames209 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 2
  %183 = load i32, i32* %no_frames209, align 4
  %184 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period210 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %184, i32 0, i32 31
  %185 = load i32, i32* %intra_period210, align 4
  %div211 = sdiv i32 %183, %185
  %cmp212 = icmp sge i32 %div208, %div211
  br i1 %cmp212, label %if.then.214, label %if.end.239

if.then.214:                                      ; preds = %cond.end.204
  %186 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number215 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %186, i32 0, i32 0
  %187 = load i32, i32* %number215, align 4
  %cmp216 = icmp ne i32 %187, 0
  br i1 %cmp216, label %if.then.218, label %if.else.231

if.then.218:                                      ; preds = %if.then.214
  %188 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames219 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %188, i32 0, i32 2
  %189 = load i32, i32* %no_frames219, align 4
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number220 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 0
  %191 = load i32, i32* %number220, align 4
  %sub221 = sub nsw i32 %189, %191
  %192 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames222 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %192, i32 0, i32 2
  %193 = load i32, i32* %no_frames222, align 4
  %194 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number223 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %194, i32 0, i32 0
  %195 = load i32, i32* %number223, align 4
  %sub224 = sub nsw i32 %193, %195
  %sub225 = sub nsw i32 %sub224, 1
  %196 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe226 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %196, i32 0, i32 34
  %197 = load i32, i32* %successive_Bframe226, align 4
  %mul227 = mul nsw i32 %sub225, %197
  %add228 = add nsw i32 %sub221, %mul227
  %198 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe229 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %198, i32 0, i32 34
  %199 = load i32, i32* %successive_Bframe229, align 4
  %add230 = add nsw i32 %add228, %199
  store i32 %add230, i32* %n, align 4
  br label %if.end.238

if.else.231:                                      ; preds = %if.then.214
  %200 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames232 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %200, i32 0, i32 2
  %201 = load i32, i32* %no_frames232, align 4
  %202 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames233 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %202, i32 0, i32 2
  %203 = load i32, i32* %no_frames233, align 4
  %sub234 = sub nsw i32 %203, 1
  %204 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe235 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %204, i32 0, i32 34
  %205 = load i32, i32* %successive_Bframe235, align 4
  %mul236 = mul nsw i32 %sub234, %205
  %add237 = add nsw i32 %201, %mul236
  store i32 %add237, i32* %n, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.231, %if.then.218
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %cond.end.204
  %206 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number240 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %206, i32 0, i32 0
  %207 = load i32, i32* %number240, align 4
  %cmp241 = icmp eq i32 %207, 0
  br i1 %cmp241, label %if.then.243, label %if.else.249

if.then.243:                                      ; preds = %if.end.239
  %208 = load i32, i32* %n, align 4
  %209 = load i32, i32* %M, align 4
  %sub244 = sub nsw i32 %209, 1
  %mul245 = mul nsw i32 2, %sub244
  %add246 = add nsw i32 %208, %mul245
  %210 = load i32, i32* %M, align 4
  %div247 = sdiv i32 %add246, %210
  %sub248 = sub nsw i32 %div247, 1
  store i32 %sub248, i32* %np, align 4
  br label %if.end.254

if.else.249:                                      ; preds = %if.end.239
  %211 = load i32, i32* %n, align 4
  %212 = load i32, i32* %M, align 4
  %sub250 = sub nsw i32 %212, 1
  %add251 = add nsw i32 %211, %sub250
  %213 = load i32, i32* %M, align 4
  %div252 = sdiv i32 %add251, %213
  %sub253 = sub nsw i32 %div252, 1
  store i32 %sub253, i32* %np, align 4
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.249, %if.then.243
  %214 = load i32, i32* %n, align 4
  %215 = load i32, i32* %np, align 4
  %sub255 = sub nsw i32 %214, %215
  %sub256 = sub nsw i32 %sub255, 1
  store i32 %sub256, i32* %nb, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.254, %if.then.177
  %216 = load i32, i32* %np, align 4
  %217 = load i32, i32* %nb, align 4
  call void @rc_init_GOP(i32 %216, i32 %217)
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.then.170
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.end.167
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number260 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 0
  %219 = load i32, i32* %number260, align 4
  %220 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub261 = sub nsw i32 %219, %220
  %221 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %221, i32 0, i32 99
  %222 = load i32, i32* %NumFramesInELSubSeq, align 4
  %add262 = add nsw i32 %222, 1
  %rem263 = srem i32 %sub261, %add262
  %cmp264 = icmp eq i32 %rem263, 0
  br i1 %cmp264, label %if.then.266, label %if.else.267

if.then.266:                                      ; preds = %if.end.259
  %223 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %223, i32 0, i32 86
  store i32 0, i32* %layer, align 4
  br label %if.end.269

if.else.267:                                      ; preds = %if.end.259
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer268 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 86
  store i32 1, i32* %layer268, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.267, %if.then.266
  %call270 = call i32 (...) @encode_one_frame()
  %225 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %225, i32 0, i32 125
  %226 = load i32, i32* %ReportFrameStats, align 4
  %tobool271 = icmp ne i32 %226, 0
  br i1 %tobool271, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %if.end.269
  call void @report_frame_statistic()
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.272, %if.end.269
  %227 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nb_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %227, i32 0, i32 2
  %228 = load i32, i32* %nb_references, align 4
  %add274 = add nsw i32 %228, 1
  store i32 %add274, i32* %nb_references, align 4
  %229 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nb_references275 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %229, i32 0, i32 2
  %230 = load i32, i32* %nb_references275, align 4
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 84
  %232 = load i32, i32* %buf_cycle, align 4
  %cmp276 = icmp slt i32 %230, %232
  br i1 %cmp276, label %cond.true.278, label %cond.false.280

cond.true.278:                                    ; preds = %if.end.273
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nb_references279 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 2
  %234 = load i32, i32* %nb_references279, align 4
  br label %cond.end.282

cond.false.280:                                   ; preds = %if.end.273
  %235 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle281 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %235, i32 0, i32 84
  %236 = load i32, i32* %buf_cycle281, align 4
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.false.280, %cond.true.278
  %cond283 = phi i32 [ %234, %cond.true.278 ], [ %236, %cond.false.280 ]
  %237 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nb_references284 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %237, i32 0, i32 2
  store i32 %cond283, i32* %nb_references284, align 4
  call void (...) @encode_enhancement_layer()
  call void @process_2nd_IGOP()
  br label %for.inc

for.inc:                                          ; preds = %cond.end.282
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number285 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 0
  %239 = load i32, i32* %number285, align 4
  %inc286 = add nsw i32 %239, 1
  store i32 %inc286, i32* %number285, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call287 = call i32 (...) @terminate_sequence()
  call void (...) @flush_dpb()
  %240 = load i32, i32* @p_in, align 4
  %call288 = call i32 @close(i32 %240)
  %241 = load i32, i32* @p_dec, align 4
  %cmp289 = icmp ne i32 -1, %241
  br i1 %cmp289, label %if.then.291, label %if.end.293

if.then.291:                                      ; preds = %for.end
  %242 = load i32, i32* @p_dec, align 4
  %call292 = call i32 @close(i32 %242)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.291, %for.end
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @p_trace, align 8
  %tobool294 = icmp ne %struct._IO_FILE* %243, null
  br i1 %tobool294, label %if.then.295, label %if.end.297

if.then.295:                                      ; preds = %if.end.293
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @p_trace, align 8
  %call296 = call i32 @fclose(%struct._IO_FILE* %244)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.295, %if.end.293
  call void (...) @Clear_Motion_Search_Module()
  call void (...) @RandomIntraUninit()
  call void (...) @FmoUninit()
  %245 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding298 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %245, i32 0, i32 55
  %246 = load i32, i32* %PyramidCoding298, align 4
  %tobool299 = icmp ne i32 %246, 0
  br i1 %tobool299, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %if.end.297
  call void (...) @clear_gop_structure()
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.300, %if.end.297
  call void (...) @clear_rdopt()
  call void (...) @calc_buffer()
  call void @report()
  %247 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  call void @free_picture(%struct.Picture* %247)
  %248 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision302 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %248, i32 0, i32 49
  %249 = load i32, i32* %RDPictureDecision302, align 4
  %tobool303 = icmp ne i32 %249, 0
  br i1 %tobool303, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.end.301
  %250 = load %struct.Picture*, %struct.Picture** @frame_pic2, align 8
  call void @free_picture(%struct.Picture* %250)
  %251 = load %struct.Picture*, %struct.Picture** @frame_pic3, align 8
  call void @free_picture(%struct.Picture* %251)
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.304, %if.end.301
  %252 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %tobool306 = icmp ne %struct.Picture* %252, null
  br i1 %tobool306, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.end.305
  %253 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  call void @free_picture(%struct.Picture* %253)
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %if.end.305
  %254 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %tobool309 = icmp ne %struct.Picture* %254, null
  br i1 %tobool309, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %if.end.308
  %255 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @free_picture(%struct.Picture* %255)
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.310, %if.end.308
  call void (...) @free_dpb()
  %256 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @free_colocated(%struct.colocated_params* %256)
  call void (...) @uninit_out_buffer()
  call void @free_global_buffers()
  call void @free_img()
  call void (...) @free_context_memory()
  call void (...) @FreeNalPayloadBuffer()
  call void (...) @FreeParameterSets()
  ret i32 0
}

declare void @Configure(i32, i8**) #1

declare void @Init_QMatrix() #1

declare void @Init_QOffsetMatrix(...) #1

declare void @AllocNalPayloadBuffer(...) #1

declare void @GenerateParameterSets(...) #1

declare void @init_rdopt(...) #1

declare void @init_gop_structure(...) #1

declare void @interpret_gop_structure(...) #1

declare void @create_pyramid(...) #1

declare void @init_dpb(...) #1

declare void @init_out_buffer(...) #1

declare void @create_context_memory(...) #1

declare void @Init_Motion_Search_Module(...) #1

declare void @rc_init_seq(...) #1

declare void @DefineThreshold(...) #1

declare void @PatchInputNoFrames(...) #1

declare i32 @start_sequence(...) #1

declare void @rc_init_GOP(i32, i32) #1

declare i32 @encode_one_frame(...) #1

declare void @encode_enhancement_layer(...) #1

declare i32 @terminate_sequence(...) #1

declare void @flush_dpb(...) #1

declare i32 @close(i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @Clear_Motion_Search_Module(...) #1

declare void @RandomIntraUninit(...) #1

declare void @FmoUninit(...) #1

declare void @clear_gop_structure(...) #1

declare void @clear_rdopt(...) #1

declare void @calc_buffer(...) #1

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
  call void @free(i8* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free_dpb(...) #1

declare void @free_colocated(%struct.colocated_params*) #1

declare void @uninit_out_buffer(...) #1

declare void @free_context_memory(...) #1

declare void @FreeNalPayloadBuffer(...) #1

declare void @FreeParameterSets(...) #1

; Function Attrs: nounwind uwtable
define void @report_stats_on_error() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 2
  store i32 %sub, i32* %no_frames, align 4
  %call = call i32 (...) @terminate_sequence()
  call void (...) @flush_dpb()
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
  call void (...) @Clear_Motion_Search_Module()
  call void (...) @RandomIntraUninit()
  call void (...) @FmoUninit()
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 55
  %9 = load i32, i32* %PyramidCoding, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  call void (...) @clear_gop_structure()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  call void (...) @clear_rdopt()
  call void (...) @calc_buffer()
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 125
  %11 = load i32, i32* %ReportFrameStats, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  call void @report_frame_statistic()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  call void @report()
  %12 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
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
  call void (...) @free_dpb()
  %17 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @free_colocated(%struct.colocated_params* %17)
  call void (...) @uninit_out_buffer()
  call void @free_global_buffers()
  call void @free_img()
  call void (...) @free_context_memory()
  call void (...) @FreeNalPayloadBuffer()
  call void (...) @FreeParameterSets()
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_poc() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 120
  %1 = load i32, i32* %pic_order_cnt_type, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_type1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 91
  store i32 %1, i32* %pic_order_cnt_type1, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 92
  store i32 0, i32* %delta_pic_order_always_zero_flag, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 95
  store i32 1, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 54
  %6 = load i32, i32* %BRefPictures, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_non_ref_pic = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 93
  store i32 0, i32* %offset_for_non_ref_pic, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_ref_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 96
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %offset_for_ref_frame, i32 0, i64 0
  store i32 2, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 34
  %10 = load i32, i32* %successive_Bframe, align 4
  %mul = mul nsw i32 -2, %10
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_non_ref_pic2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 93
  store i32 %mul, i32* %offset_for_non_ref_pic2, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 34
  %13 = load i32, i32* %successive_Bframe3, align 4
  %add = add nsw i32 %13, 1
  %mul4 = mul nsw i32 2, %add
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_ref_frame5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 96
  %arrayidx6 = getelementptr inbounds [1 x i32], [1 x i32]* %offset_for_ref_frame5, i32 0, i64 0
  store i32 %mul4, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 91
  %16 = load i32, i32* %PicInterlace, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.end
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 92
  %18 = load i32, i32* %MbInterlace, align 4
  %cmp7 = icmp eq i32 %18, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 94
  store i32 0, i32* %offset_for_top_to_bottom_field, align 4
  br label %if.end.11

if.else.9:                                        ; preds = %land.lhs.true, %if.end
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_top_to_bottom_field10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 94
  store i32 1, i32* %offset_for_top_to_bottom_field10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.8
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 91
  %22 = load i32, i32* %PicInterlace12, align 4
  %cmp13 = icmp eq i32 %22, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.18

land.lhs.true.14:                                 ; preds = %if.end.11
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace15 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 92
  %24 = load i32, i32* %MbInterlace15, align 4
  %cmp16 = icmp eq i32 %24, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true.14
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 112
  store i32 0, i32* %pic_order_present_flag, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 98
  store i32 0, i32* %delta_pic_order_cnt_bottom, align 4
  br label %if.end.21

if.else.18:                                       ; preds = %land.lhs.true.14, %if.end.11
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 112
  store i32 1, i32* %pic_order_present_flag19, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt_bottom20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 98
  store i32 1, i32* %delta_pic_order_cnt_bottom20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
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
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 110
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
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 157
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
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 28
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
define void @init_img() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %byte_abs_range = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 18
  %1 = load i32, i32* %yuv_format, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 159
  store i32 %1, i32* %yuv_format1, align 4
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 135
  %4 = load i32, i32* %BitDepthLuma, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 149
  store i32 %4, i32* %bitdepth_luma, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 149
  %7 = load i32, i32* %bitdepth_luma2, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 150
  %9 = load i32, i32* %bitdepth_chroma, align 4
  %cmp = icmp sgt i32 %7, %9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 159
  %11 = load i32, i32* %yuv_format3, align 4
  %cmp4 = icmp eq i32 %11, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 149
  %13 = load i32, i32* %bitdepth_luma5, align 4
  %cmp6 = icmp sgt i32 %13, 8
  %cond = select i1 %cmp6, i32 16, i32 8
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_unit_size_on_disk = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 148
  store i32 %cond, i32* %pic_unit_size_on_disk, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 150
  %16 = load i32, i32* %bitdepth_chroma7, align 4
  %cmp8 = icmp sgt i32 %16, 8
  %cond9 = select i1 %cmp8, i32 16, i32 8
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_unit_size_on_disk10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 148
  store i32 %cond9, i32* %pic_unit_size_on_disk10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 149
  %19 = load i32, i32* %bitdepth_luma11, align 4
  %sub = sub nsw i32 %19, 8
  %mul = mul nsw i32 6, %sub
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 151
  store i32 %mul, i32* %bitdepth_luma_qp_scale, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 149
  %22 = load i32, i32* %bitdepth_luma12, align 4
  %sub13 = sub nsw i32 %22, 8
  %mul14 = mul nsw i32 2, %sub13
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_lambda_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 153
  store i32 %mul14, i32* %bitdepth_lambda_scale, align 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 149
  %25 = load i32, i32* %bitdepth_luma15, align 4
  %sub16 = sub nsw i32 %25, 1
  %shl = shl i32 1, %sub16
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 154
  store i32 %shl, i32* %dc_pred_value, align 4
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 149
  %28 = load i32, i32* %bitdepth_luma17, align 4
  %shl18 = shl i32 1, %28
  %sub19 = sub nsw i32 %shl18, 1
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 155
  store i32 %sub19, i32* %max_imgpel_value, align 4
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 159
  %31 = load i32, i32* %yuv_format20, align 4
  %cmp21 = icmp ne i32 %31, 0
  br i1 %cmp21, label %if.then.22, label %if.else.51

if.then.22:                                       ; preds = %if.end
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthChroma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 136
  %33 = load i32, i32* %BitDepthChroma, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 150
  store i32 %33, i32* %bitdepth_chroma23, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 150
  %36 = load i32, i32* %bitdepth_chroma24, align 4
  %shl25 = shl i32 1, %36
  %sub26 = sub nsw i32 %shl25, 1
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 156
  store i32 %sub26, i32* %max_imgpel_value_uv, align 4
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 159
  %39 = load i32, i32* %yuv_format27, align 4
  %shl28 = shl i32 1, %39
  %and = and i32 %shl28, -2
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 157
  store i32 %and, i32* %num_blk8x8_uv, align 4
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 157
  %42 = load i32, i32* %num_blk8x8_uv29, align 4
  %shl30 = shl i32 %42, 1
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_cdc_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 158
  store i32 %shl30, i32* %num_cdc_coeff, align 4
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 159
  %45 = load i32, i32* %yuv_format31, align 4
  %cmp32 = icmp eq i32 %45, 1
  br i1 %cmp32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.22
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 159
  %47 = load i32, i32* %yuv_format33, align 4
  %cmp34 = icmp eq i32 %47, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.22
  %48 = phi i1 [ true, %if.then.22 ], [ %cmp34, %lor.rhs ]
  %cond35 = select i1 %48, i32 8, i32 16
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 161
  store i32 %cond35, i32* %mb_cr_size_x, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 159
  %51 = load i32, i32* %yuv_format36, align 4
  %cmp37 = icmp eq i32 %51, 3
  br i1 %cmp37, label %lor.end.41, label %lor.rhs.38

lor.rhs.38:                                       ; preds = %lor.end
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 159
  %53 = load i32, i32* %yuv_format39, align 4
  %cmp40 = icmp eq i32 %53, 2
  br label %lor.end.41

lor.end.41:                                       ; preds = %lor.rhs.38, %lor.end
  %54 = phi i1 [ true, %lor.end ], [ %cmp40, %lor.rhs.38 ]
  %cond42 = select i1 %54, i32 16, i32 8
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 162
  store i32 %cond42, i32* %mb_cr_size_y, align 4
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 150
  %57 = load i32, i32* %bitdepth_chroma43, align 4
  %sub44 = sub nsw i32 %57, 8
  %mul45 = mul nsw i32 6, %sub44
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 152
  store i32 %mul45, i32* %bitdepth_chroma_qp_scale, align 4
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 164
  %60 = load i32, i32* %residue_transform_flag, align 4
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %lor.end.41
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma_qp_scale47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 152
  %62 = load i32, i32* %bitdepth_chroma_qp_scale47, align 4
  %add = add nsw i32 %62, 6
  store i32 %add, i32* %bitdepth_chroma_qp_scale47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %lor.end.41
  %63 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %cb_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %63, i32 0, i32 24
  %64 = load i32, i32* %cb_qp_index_offset, align 4
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %chroma_qp_offset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 163
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset, i32 0, i64 0
  store i32 %64, i32* %arrayidx, align 4
  %66 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %cr_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %66, i32 0, i32 25
  %67 = load i32, i32* %cr_qp_index_offset, align 4
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %chroma_qp_offset49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 163
  %arrayidx50 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset49, i32 0, i64 1
  store i32 %67, i32* %arrayidx50, align 4
  br label %if.end.64

if.else.51:                                       ; preds = %if.end
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 150
  store i32 0, i32* %bitdepth_chroma52, align 4
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 156
  store i32 0, i32* %max_imgpel_value_uv53, align 4
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 157
  store i32 0, i32* %num_blk8x8_uv54, align 4
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_cdc_coeff55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 158
  store i32 0, i32* %num_cdc_coeff55, align 4
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 161
  store i32 0, i32* %mb_cr_size_x56, align 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 162
  store i32 0, i32* %mb_cr_size_y57, align 4
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma_qp_scale58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 152
  store i32 0, i32* %bitdepth_chroma_qp_scale58, align 4
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma_qp_scale59 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 152
  store i32 0, i32* %bitdepth_chroma_qp_scale59, align 4
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %chroma_qp_offset60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 163
  %arrayidx61 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset60, i32 0, i64 0
  store i32 0, i32* %arrayidx61, align 4
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %chroma_qp_offset62 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 163
  %arrayidx63 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset62, i32 0, i64 1
  store i32 0, i32* %arrayidx63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.51, %if.end.48
  %79 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %79, i32 0, i32 21
  %80 = load i32, i32* %num_ref_frames, align 4
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 8
  store i32 %80, i32* %num_ref_frames65, align 4
  %82 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %82, i32 0, i32 25
  %83 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool66 = icmp ne i32 %83, 0
  br i1 %tobool66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.64
  %84 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames67 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %84, i32 0, i32 21
  %85 = load i32, i32* %num_ref_frames67, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.64
  %86 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames68 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %86, i32 0, i32 21
  %87 = load i32, i32* %num_ref_frames68, align 4
  %mul69 = mul i32 2, %87
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond70 = phi i32 [ %85, %cond.true ], [ %mul69, %cond.false ]
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 9
  store i32 %cond70, i32* %max_num_references, align 4
  %89 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames71 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %89, i32 0, i32 9
  %90 = load i32, i32* %num_ref_frames71, align 4
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 84
  store i32 %90, i32* %buf_cycle, align 4
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 143
  store i32 0, i32* %DeblockCall, align 4
  %93 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FrameRate = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %93, i32 0, i32 76
  %94 = load double, double* %FrameRate, align 8
  %conv = fptrunc double %94 to float
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 12
  store float %conv, float* %framerate, align 4
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 70
  %call = call i32 @get_mem_mv(i16******* %pred_mv)
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 71
  %call72 = call i32 @get_mem_mv(i16******* %all_mv)
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 39
  %99 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool73 = icmp ne i32 %99, 0
  br i1 %tobool73, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %cond.end
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 72
  %call75 = call i32 @get_mem_mv(i16******* %bipred_mv1)
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 73
  %call76 = call i32 @get_mem_mv(i16******* %bipred_mv2)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %cond.end
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 47
  %call78 = call i32 @get_mem_ACcoeff(i32***** %cofAC)
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 48
  %call79 = call i32 @get_mem_DCcoeff(i32**** %cofDC)
  %104 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %104, i32 0, i32 92
  %105 = load i32, i32* %MbInterlace, align 4
  %tobool80 = icmp ne i32 %105, 0
  br i1 %tobool80, label %if.then.81, label %if.end.110

if.then.81:                                       ; preds = %if.end.77
  %call82 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 15))
  %call83 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 16))
  %call84 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 15))
  %call85 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 16))
  %call86 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 15))
  %call87 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 16))
  %call88 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 15))
  %call89 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 16))
  %106 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation90 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %106, i32 0, i32 39
  %107 = load i32, i32* %BiPredMotionEstimation90, align 4
  %tobool91 = icmp ne i32 %107, 0
  br i1 %tobool91, label %if.then.92, label %if.end.101

if.then.92:                                       ; preds = %if.then.81
  %call93 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 17))
  %call94 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 18))
  %call95 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 17))
  %call96 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 18))
  %call97 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 17))
  %call98 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 18))
  %call99 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 17))
  %call100 = call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 18))
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.92, %if.then.81
  %call102 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 4))
  %call103 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 5))
  %call104 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 4))
  %call105 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 5))
  %call106 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 4))
  %call107 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 5))
  %call108 = call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 4))
  %call109 = call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 5))
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.101, %if.end.77
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value111 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 155
  %109 = load i32, i32* %max_imgpel_value111, align 4
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 156
  %111 = load i32, i32* %max_imgpel_value_uv112, align 4
  %cmp113 = icmp sgt i32 %109, %111
  br i1 %cmp113, label %if.then.115, label %if.else.119

if.then.115:                                      ; preds = %if.end.110
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 155
  %113 = load i32, i32* %max_imgpel_value116, align 4
  %add117 = add nsw i32 %113, 1
  %mul118 = mul nsw i32 %add117, 2
  store i32 %mul118, i32* %byte_abs_range, align 4
  br label %if.end.123

if.else.119:                                      ; preds = %if.end.110
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv120 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 156
  %115 = load i32, i32* %max_imgpel_value_uv120, align 4
  %add121 = add nsw i32 %115, 1
  %mul122 = mul nsw i32 %add121, 2
  store i32 %mul122, i32* %byte_abs_range, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.119, %if.then.115
  %116 = load i32, i32* %byte_abs_range, align 4
  %conv124 = sext i32 %116 to i64
  %call125 = call noalias i8* @calloc(i64 %conv124, i64 4) #4
  %117 = bitcast i8* %call125 to i32*
  %118 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %118, i32 0, i32 53
  store i32* %117, i32** %quad, align 8
  %cmp126 = icmp eq i32* %117, null
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.123
  call void @no_mem_exit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.123
  %119 = load i32, i32* %byte_abs_range, align 4
  %div = sdiv i32 %119, 2
  %120 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad130 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %120, i32 0, i32 53
  %121 = load i32*, i32** %quad130, align 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i32, i32* %121, i64 %idx.ext
  store i32* %add.ptr, i32** %quad130, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.129
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* %byte_abs_range, align 4
  %div131 = sdiv i32 %123, 2
  %cmp132 = icmp slt i32 %122, %div131
  br i1 %cmp132, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %i, align 4
  %mul134 = mul nsw i32 %124, %125
  %126 = load i32, i32* %i, align 4
  %sub135 = sub nsw i32 0, %126
  %idxprom = sext i32 %sub135 to i64
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad136 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 53
  %128 = load i32*, i32** %quad136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %128, i64 %idxprom
  store i32 %mul134, i32* %arrayidx137, align 4
  %129 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %129 to i64
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 53
  %131 = load i32*, i32** %quad139, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %131, i64 %idxprom138
  store i32 %mul134, i32* %arrayidx140, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %132 = load i32, i32* %i, align 4
  %inc = add nsw i32 %132, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %133 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %133, i32 0, i32 16
  %134 = load i32, i32* %img_width, align 4
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 165
  %136 = load i32, i32* %auto_crop_right, align 4
  %add141 = add nsw i32 %134, %136
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 13
  store i32 %add141, i32* %width, align 4
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 17
  %139 = load i32, i32* %img_height, align 4
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 166
  %141 = load i32, i32* %auto_crop_bottom, align 4
  %add142 = add nsw i32 %139, %141
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 15
  store i32 %add142, i32* %height, align 4
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 159
  %144 = load i32, i32* %yuv_format143, align 4
  %cmp144 = icmp ne i32 %144, 0
  br i1 %cmp144, label %if.then.146, label %if.else.171

if.then.146:                                      ; preds = %for.end
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width147 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 13
  %146 = load i32, i32* %width147, align 4
  %147 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format148 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %147, i32 0, i32 159
  %148 = load i32, i32* %yuv_format148, align 4
  %idxprom149 = sext i32 %148 to i64
  %arrayidx150 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_width_cr, i32 0, i64 %idxprom149
  %149 = load i32, i32* %arrayidx150, align 4
  %div151 = sdiv i32 16, %149
  %div152 = sdiv i32 %146, %div151
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 14
  store i32 %div152, i32* %width_cr, align 4
  %151 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %151, i32 0, i32 15
  %152 = load i32, i32* %height153, align 4
  %153 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format154 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %153, i32 0, i32 159
  %154 = load i32, i32* %yuv_format154, align 4
  %idxprom155 = sext i32 %154 to i64
  %arrayidx156 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_height_cr, i32 0, i64 %idxprom155
  %155 = load i32, i32* %arrayidx156, align 4
  %div157 = sdiv i32 16, %155
  %div158 = sdiv i32 %152, %div157
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 16
  store i32 %div158, i32* %height_cr, align 4
  %157 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width159 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %157, i32 0, i32 16
  %158 = load i32, i32* %img_width159, align 4
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format160 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 159
  %160 = load i32, i32* %yuv_format160, align 4
  %idxprom161 = sext i32 %160 to i64
  %arrayidx162 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_width_cr, i32 0, i64 %idxprom161
  %161 = load i32, i32* %arrayidx162, align 4
  %div163 = sdiv i32 16, %161
  %div164 = sdiv i32 %158, %div163
  %162 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %162, i32 0, i32 138
  store i32 %div164, i32* %img_width_cr, align 4
  %163 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height165 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %163, i32 0, i32 17
  %164 = load i32, i32* %img_height165, align 4
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 159
  %166 = load i32, i32* %yuv_format166, align 4
  %idxprom167 = sext i32 %166 to i64
  %arrayidx168 = getelementptr inbounds [4 x i32], [4 x i32]* @init_img.mb_height_cr, i32 0, i64 %idxprom167
  %167 = load i32, i32* %arrayidx168, align 4
  %div169 = sdiv i32 16, %167
  %div170 = sdiv i32 %164, %div169
  %168 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %168, i32 0, i32 137
  store i32 %div170, i32* %img_height_cr, align 4
  br label %if.end.176

if.else.171:                                      ; preds = %for.end
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr172 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 14
  store i32 0, i32* %width_cr172, align 4
  %170 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr173 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %170, i32 0, i32 16
  store i32 0, i32* %height_cr173, align 4
  %171 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr174 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %171, i32 0, i32 138
  store i32 0, i32* %img_width_cr174, align 4
  %172 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr175 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %172, i32 0, i32 137
  store i32 0, i32* %img_height_cr175, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.171, %if.then.146
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr177 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 16
  %174 = load i32, i32* %height_cr177, align 4
  %175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %175, i32 0, i32 17
  store i32 %174, i32* %height_cr_frame, align 4
  %176 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width178 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %176, i32 0, i32 16
  %177 = load i32, i32* %img_width178, align 4
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right179 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 165
  %179 = load i32, i32* %auto_crop_right179, align 4
  %add180 = add nsw i32 %177, %179
  %div181 = sdiv i32 %add180, 16
  %180 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %180, i32 0, i32 106
  store i32 %div181, i32* %PicWidthInMbs, align 4
  %181 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height182 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %181, i32 0, i32 17
  %182 = load i32, i32* %img_height182, align 4
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom183 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 166
  %184 = load i32, i32* %auto_crop_bottom183, align 4
  %add184 = add nsw i32 %182, %184
  %div185 = sdiv i32 %add184, 16
  %185 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %185, i32 0, i32 108
  store i32 %div185, i32* %FrameHeightInMbs, align 4
  %186 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs186 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %186, i32 0, i32 106
  %187 = load i32, i32* %PicWidthInMbs186, align 4
  %188 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %188, i32 0, i32 108
  %189 = load i32, i32* %FrameHeightInMbs187, align 4
  %mul188 = mul i32 %187, %189
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 111
  store i32 %mul188, i32* %FrameSizeInMbs, align 4
  %191 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag189 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %191, i32 0, i32 25
  %192 = load i32, i32* %frame_mbs_only_flag189, align 4
  %tobool190 = icmp ne i32 %192, 0
  br i1 %tobool190, label %cond.true.191, label %cond.false.193

cond.true.191:                                    ; preds = %if.end.176
  %193 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs192 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %193, i32 0, i32 108
  %194 = load i32, i32* %FrameHeightInMbs192, align 4
  br label %cond.end.196

cond.false.193:                                   ; preds = %if.end.176
  %195 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs194 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %195, i32 0, i32 108
  %196 = load i32, i32* %FrameHeightInMbs194, align 4
  %div195 = udiv i32 %196, 2
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.193, %cond.true.191
  %cond197 = phi i32 [ %194, %cond.true.191 ], [ %div195, %cond.false.193 ]
  %197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %197, i32 0, i32 107
  store i32 %cond197, i32* %PicHeightInMapUnits, align 4
  %198 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs198 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %198, i32 0, i32 111
  %199 = load i32, i32* %FrameSizeInMbs198, align 4
  %conv199 = zext i32 %199 to i64
  %call200 = call noalias i8* @calloc(i64 %conv199, i64 632) #4
  %200 = bitcast i8* %call200 to %struct.macroblock*
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 51
  store %struct.macroblock* %200, %struct.macroblock** %mb_data, align 8
  %cmp201 = icmp eq %struct.macroblock* %200, null
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %cond.end.196
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.203, %cond.end.196
  %202 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %202, i32 0, i32 24
  %203 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool205 = icmp ne i32 %203, 0
  br i1 %tobool205, label %if.then.206, label %if.end.214

if.then.206:                                      ; preds = %if.end.204
  %204 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs207 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %204, i32 0, i32 111
  %205 = load i32, i32* %FrameSizeInMbs207, align 4
  %conv208 = zext i32 %205 to i64
  %call209 = call noalias i8* @calloc(i64 %conv208, i64 4) #4
  %206 = bitcast i8* %call209 to i32*
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 54
  store i32* %206, i32** %intra_block, align 8
  %cmp210 = icmp eq i32* %206, null
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %if.then.206
  call void @no_mem_exit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.212, %if.then.206
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.204
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 25
  %209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width215 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %209, i32 0, i32 13
  %210 = load i32, i32* %width215, align 4
  %div216 = sdiv i32 %210, 4
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height217 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 15
  %212 = load i32, i32* %height217, align 4
  %div218 = sdiv i32 %212, 4
  %call219 = call i32 @get_mem2Dint(i32*** %ipredmode, i32 %div216, i32 %div218)
  %213 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %213, i32 0, i32 26
  %214 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width220 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %214, i32 0, i32 13
  %215 = load i32, i32* %width220, align 4
  %div221 = sdiv i32 %215, 4
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height222 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 15
  %217 = load i32, i32* %height222, align 4
  %div223 = sdiv i32 %217, 4
  %call224 = call i32 @get_mem2Dint(i32*** %ipredmode8x8, i32 %div221, i32 %div223)
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width225 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 13
  %219 = load i32, i32* %width225, align 4
  %div226 = sdiv i32 %219, 4
  %220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height227 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %220, i32 0, i32 15
  %221 = load i32, i32* %height227, align 4
  %div228 = sdiv i32 %221, 4
  %call229 = call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 10), i32 %div226, i32 %div228)
  %222 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace230 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %222, i32 0, i32 92
  %223 = load i32, i32* %MbInterlace230, align 4
  %tobool231 = icmp ne i32 %223, 0
  br i1 %tobool231, label %if.then.232, label %if.end.248

if.then.232:                                      ; preds = %if.end.214
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width233 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 13
  %225 = load i32, i32* %width233, align 4
  %div234 = sdiv i32 %225, 4
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height235 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 15
  %227 = load i32, i32* %height235, align 4
  %div236 = sdiv i32 %227, 4
  %call237 = call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 10), i32 %div234, i32 %div236)
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width238 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 13
  %229 = load i32, i32* %width238, align 4
  %div239 = sdiv i32 %229, 4
  %230 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height240 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %230, i32 0, i32 15
  %231 = load i32, i32* %height240, align 4
  %div241 = sdiv i32 %231, 4
  %call242 = call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 10), i32 %div239, i32 %div241)
  %232 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width243 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %232, i32 0, i32 13
  %233 = load i32, i32* %width243, align 4
  %div244 = sdiv i32 %233, 4
  %234 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height245 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %234, i32 0, i32 15
  %235 = load i32, i32* %height245, align 4
  %div246 = sdiv i32 %235, 4
  %call247 = call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 10), i32 %div244, i32 %div246)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.232, %if.end.214
  %236 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %236, i32 0, i32 28
  %237 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs249 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %237, i32 0, i32 111
  %238 = load i32, i32* %FrameSizeInMbs249, align 4
  %239 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv250 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %239, i32 0, i32 157
  %240 = load i32, i32* %num_blk8x8_uv250, align 4
  %add251 = add nsw i32 4, %240
  %call252 = call i32 @get_mem3Dint(i32**** %nz_coeff, i32 %238, i32 4, i32 %add251)
  call void @CAVLC_init()
  store i32 0, i32* %i, align 4
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.278, %if.end.248
  %241 = load i32, i32* %i, align 4
  %242 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width254 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %242, i32 0, i32 13
  %243 = load i32, i32* %width254, align 4
  %div255 = sdiv i32 %243, 4
  %cmp256 = icmp slt i32 %241, %div255
  br i1 %cmp256, label %for.body.258, label %for.end.280

for.body.258:                                     ; preds = %for.cond.253
  store i32 0, i32* %j, align 4
  br label %for.cond.259

for.cond.259:                                     ; preds = %for.inc.275, %for.body.258
  %244 = load i32, i32* %j, align 4
  %245 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height260 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %245, i32 0, i32 15
  %246 = load i32, i32* %height260, align 4
  %div261 = sdiv i32 %246, 4
  %cmp262 = icmp slt i32 %244, %div261
  br i1 %cmp262, label %for.body.264, label %for.end.277

for.body.264:                                     ; preds = %for.cond.259
  %247 = load i32, i32* %j, align 4
  %idxprom265 = sext i32 %247 to i64
  %248 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %248 to i64
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode267 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 25
  %250 = load i32**, i32*** %ipredmode267, align 8
  %arrayidx268 = getelementptr inbounds i32*, i32** %250, i64 %idxprom266
  %251 = load i32*, i32** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %251, i64 %idxprom265
  store i32 -1, i32* %arrayidx269, align 4
  %252 = load i32, i32* %j, align 4
  %idxprom270 = sext i32 %252 to i64
  %253 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %253 to i64
  %254 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8272 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %254, i32 0, i32 26
  %255 = load i32**, i32*** %ipredmode8x8272, align 8
  %arrayidx273 = getelementptr inbounds i32*, i32** %255, i64 %idxprom271
  %256 = load i32*, i32** %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %256, i64 %idxprom270
  store i32 -1, i32* %arrayidx274, align 4
  br label %for.inc.275

for.inc.275:                                      ; preds = %for.body.264
  %257 = load i32, i32* %j, align 4
  %inc276 = add nsw i32 %257, 1
  store i32 %inc276, i32* %j, align 4
  br label %for.cond.259

for.end.277:                                      ; preds = %for.cond.259
  br label %for.inc.278

for.inc.278:                                      ; preds = %for.end.277
  %258 = load i32, i32* %i, align 4
  %inc279 = add nsw i32 %258, 1
  store i32 %inc279, i32* %i, align 4
  br label %for.cond.253

for.end.280:                                      ; preds = %for.cond.253
  %259 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %259, i32 0, i32 22
  store i32 0, i32* %mb_y_upd, align 4
  %260 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width281 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %260, i32 0, i32 13
  %261 = load i32, i32* %width281, align 4
  %div282 = sdiv i32 %261, 16
  %262 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height283 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %262, i32 0, i32 15
  %263 = load i32, i32* %height283, align 4
  %div284 = sdiv i32 %263, 16
  %264 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RandomIntraMBRefresh = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %264, i32 0, i32 101
  %265 = load i32, i32* %RandomIntraMBRefresh, align 4
  call void @RandomIntraInit(i32 %div282, i32 %div284, i32 %265)
  call void (...) @InitSEIMessages()
  %266 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFSendParameters = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %266, i32 0, i32 102
  %267 = load i32, i32* %LFSendParameters, align 4
  %tobool285 = icmp ne i32 %267, 0
  br i1 %tobool285, label %if.then.286, label %if.else.289

if.then.286:                                      ; preds = %for.end.280
  %268 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %268, i32 0, i32 104
  %269 = load i32, i32* %LFAlphaC0Offset, align 4
  %shl287 = shl i32 %269, 1
  store i32 %shl287, i32* %LFAlphaC0Offset, align 4
  %270 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFBetaOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %270, i32 0, i32 105
  %271 = load i32, i32* %LFBetaOffset, align 4
  %shl288 = shl i32 %271, 1
  store i32 %shl288, i32* %LFBetaOffset, align 4
  br label %if.end.292

if.else.289:                                      ; preds = %for.end.280
  %272 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFDisableIdc = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %272, i32 0, i32 103
  store i32 0, i32* %LFDisableIdc, align 4
  %273 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFAlphaC0Offset290 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %273, i32 0, i32 104
  store i32 0, i32* %LFAlphaC0Offset290, align 4
  %274 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFBetaOffset291 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %274, i32 0, i32 105
  store i32 0, i32* %LFBetaOffset291, align 4
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.289, %if.then.286
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
  %call = call noalias i8* @calloc(i64 4, i64 8) #4
  %0 = bitcast i8* %call to i16******
  %1 = load i16*******, i16******** %mv.addr, align 8
  store i16****** %0, i16******* %1, align 8
  %cmp = icmp eq i16****** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.77, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 4
  br i1 %cmp1, label %for.body, label %for.end.79

for.body:                                         ; preds = %for.cond
  %call2 = call noalias i8* @calloc(i64 4, i64 8) #4
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
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.74, %if.end.5
  %7 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %7, 4
  br i1 %cmp7, label %for.body.8, label %for.end.76

for.body.8:                                       ; preds = %for.cond.6
  %call9 = call noalias i8* @calloc(i64 2, i64 8) #4
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
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.body.8
  store i32 0, i32* %k, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.71, %if.end.16
  %14 = load i32, i32* %k, align 4
  %cmp18 = icmp slt i32 %14, 2
  br i1 %cmp18, label %for.body.19, label %for.end.73

for.body.19:                                      ; preds = %for.cond.17
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 9
  %16 = load i32, i32* %max_num_references, align 4
  %conv = sext i32 %16 to i64
  %call20 = call noalias i8* @calloc(i64 %conv, i64 8) #4
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
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %for.body.19
  store i32 0, i32* %l, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.68, %if.end.30
  %25 = load i32, i32* %l, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 9
  %27 = load i32, i32* %max_num_references32, align 4
  %cmp33 = icmp slt i32 %25, %27
  br i1 %cmp33, label %for.body.35, label %for.end.70

for.body.35:                                      ; preds = %for.cond.31
  %call36 = call noalias i8* @calloc(i64 9, i64 8) #4
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
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %for.body.35
  store i32 0, i32* %m, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %if.end.48
  %38 = load i32, i32* %m, align 4
  %cmp50 = icmp slt i32 %38, 9
  br i1 %cmp50, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.49
  %call53 = call noalias i8* @calloc(i64 2, i64 2) #4
  %39 = bitcast i8* %call53 to i16*
  %40 = load i32, i32* %m, align 4
  %idxprom54 = sext i32 %40 to i64
  %41 = load i32, i32* %l, align 4
  %idxprom55 = sext i32 %41 to i64
  %42 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %42 to i64
  %43 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %44 to i64
  %45 = load i16*******, i16******** %mv.addr, align 8
  %46 = load i16******, i16******* %45, align 8
  %arrayidx59 = getelementptr inbounds i16*****, i16****** %46, i64 %idxprom58
  %47 = load i16*****, i16****** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16****, i16***** %47, i64 %idxprom57
  %48 = load i16****, i16***** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16***, i16**** %48, i64 %idxprom56
  %49 = load i16***, i16**** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i16**, i16*** %49, i64 %idxprom55
  %50 = load i16**, i16*** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i16*, i16** %50, i64 %idxprom54
  store i16* %39, i16** %arrayidx63, align 8
  %cmp64 = icmp eq i16* %39, null
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.body.52
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %for.body.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %51 = load i32, i32* %m, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end
  %52 = load i32, i32* %l, align 4
  %inc69 = add nsw i32 %52, 1
  store i32 %inc69, i32* %l, align 4
  br label %for.cond.31

for.end.70:                                       ; preds = %for.cond.31
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.70
  %53 = load i32, i32* %k, align 4
  %inc72 = add nsw i32 %53, 1
  store i32 %inc72, i32* %k, align 4
  br label %for.cond.17

for.end.73:                                       ; preds = %for.cond.17
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.73
  %54 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %54, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.6

for.end.76:                                       ; preds = %for.cond.6
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %55 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %55, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond

for.end.79:                                       ; preds = %for.cond
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 9
  %57 = load i32, i32* %max_num_references80, align 4
  %mul = mul nsw i32 16, %57
  %mul81 = mul nsw i32 %mul, 9
  %mul82 = mul nsw i32 %mul81, 2
  %conv83 = sext i32 %mul82 to i64
  %mul84 = mul i64 %conv83, 2
  %conv85 = trunc i64 %mul84 to i32
  ret i32 %conv85
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
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 157
  %1 = load i32, i32* %num_blk8x8_uv, align 4
  %add = add nsw i32 4, %1
  store i32 %add, i32* %num_blk8x8, align 4
  %2 = load i32, i32* %num_blk8x8, align 4
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %3 = bitcast i8* %call to i32****
  %4 = load i32*****, i32****** %cofAC.addr, align 8
  store i32**** %3, i32***** %4, align 8
  %cmp = icmp eq i32**** %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i32 0, i32 0))
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
  %call4 = call noalias i8* @calloc(i64 4, i64 8) #4
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
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.37, %if.end.8
  %11 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %11, 4
  br i1 %cmp10, label %for.body.12, label %for.end.39

for.body.12:                                      ; preds = %for.cond.9
  %call13 = call noalias i8* @calloc(i64 2, i64 8) #4
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
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %for.body.12
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.end.21
  %18 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %18, 2
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.22
  %call26 = call noalias i8* @calloc(i64 65, i64 4) #4
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
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i32 0, i32 0))
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
  %call = call noalias i8* @calloc(i64 3, i64 8) #4
  %0 = bitcast i8* %call to i32***
  %1 = load i32****, i32***** %cofDC.addr, align 8
  store i32*** %0, i32**** %1, align 8
  %cmp = icmp eq i32*** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %if.end
  %2 = load i32, i32* %k, align 4
  %cmp1 = icmp slt i32 %2, 3
  br i1 %cmp1, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %call2 = call noalias i8* @calloc(i64 2, i64 8) #4
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
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.end.5
  %7 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %7, 2
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %call9 = call noalias i8* @calloc(i64 65, i64 4) #4
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
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0))
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

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare void @no_mem_exit(i8*) #1

declare i32 @get_mem2Dint(i32***, i32, i32) #1

declare i32 @get_mem3Dint(i32****, i32, i32, i32) #1

declare void @RandomIntraInit(i32, i32, i32) #1

declare void @InitSEIMessages(...) #1

; Function Attrs: nounwind uwtable
define void @free_img() #0 {
entry:
  call void (...) @CloseSEIMessages()
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 70
  %1 = load i16******, i16******* %pred_mv, align 8
  call void @free_mem_mv(i16****** %1)
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 71
  %3 = load i16******, i16******* %all_mv, align 8
  call void @free_mem_mv(i16****** %3)
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 39
  %5 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 72
  %7 = load i16******, i16******* %bipred_mv1, align 8
  call void @free_mem_mv(i16****** %7)
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 73
  %9 = load i16******, i16******* %bipred_mv2, align 8
  call void @free_mem_mv(i16****** %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 47
  %11 = load i32****, i32***** %cofAC, align 8
  call void @free_mem_ACcoeff(i32**** %11)
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 48
  %13 = load i32***, i32**** %cofDC, align 8
  call void @free_mem_DCcoeff(i32*** %13)
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 92
  %15 = load i32, i32* %MbInterlace, align 4
  %tobool1 = icmp ne i32 %15, 0
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %16 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 15), align 8
  call void @free_mem_mv(i16****** %16)
  %17 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %17)
  %18 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 15), align 8
  call void @free_mem_mv(i16****** %18)
  %19 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %19)
  %20 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 15), align 8
  call void @free_mem_mv(i16****** %20)
  %21 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %21)
  %22 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 15), align 8
  call void @free_mem_mv(i16****** %22)
  %23 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 16), align 8
  call void @free_mem_mv(i16****** %23)
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 39
  %25 = load i32, i32* %BiPredMotionEstimation3, align 4
  %tobool4 = icmp ne i32 %25, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  %26 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %26)
  %27 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 18), align 8
  call void @free_mem_mv(i16****** %27)
  %28 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %28)
  %29 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 18), align 8
  call void @free_mem_mv(i16****** %29)
  %30 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %30)
  %31 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 18), align 8
  call void @free_mem_mv(i16****** %31)
  %32 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 17), align 8
  call void @free_mem_mv(i16****** %32)
  %33 = load i16******, i16******* getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 18), align 8
  call void @free_mem_mv(i16****** %33)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.2
  %34 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %34)
  %35 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %35)
  %36 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %36)
  %37 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %37)
  %38 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %38)
  %39 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %39)
  %40 = load i32****, i32***** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 4), align 8
  call void @free_mem_ACcoeff(i32**** %40)
  %41 = load i32***, i32**** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 5), align 8
  call void @free_mem_DCcoeff(i32*** %41)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 155
  %43 = load i32, i32* %max_imgpel_value, align 4
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 156
  %45 = load i32, i32* %max_imgpel_value_uv, align 4
  %cmp = icmp sgt i32 %43, %45
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.7
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 53
  %47 = load i32*, i32** %quad, align 8
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 155
  %49 = load i32, i32* %max_imgpel_value9, align 4
  %add = add nsw i32 %49, 1
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, i32* %47, i64 %idx.neg
  %50 = bitcast i32* %add.ptr to i8*
  call void @free(i8* %50) #4
  br label %if.end.16

if.else:                                          ; preds = %if.end.7
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 53
  %52 = load i32*, i32** %quad10, align 8
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 156
  %54 = load i32, i32* %max_imgpel_value_uv11, align 4
  %add12 = add nsw i32 %54, 1
  %idx.ext13 = sext i32 %add12 to i64
  %idx.neg14 = sub i64 0, %idx.ext13
  %add.ptr15 = getelementptr inbounds i32, i32* %52, i64 %idx.neg14
  %55 = bitcast i32* %add.ptr15 to i8*
  call void @free(i8* %55) #4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.8
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 92
  %57 = load i32, i32* %MbInterlace17, align 4
  %tobool18 = icmp ne i32 %57, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %58 = load i32**, i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_frame_mb, i32 0, i32 10), align 8
  call void @free_mem2Dint(i32** %58)
  %59 = load i32**, i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_field_mb, i32 0, i32 10), align 8
  call void @free_mem2Dint(i32** %59)
  %60 = load i32**, i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_bot_field_mb, i32 0, i32 10), align 8
  call void @free_mem2Dint(i32** %60)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  ret void
}

declare void @CloseSEIMessages(...) #1

; Function Attrs: nounwind uwtable
define void @free_mem_mv(i16****** %mv) #0 {
entry:
  %mv.addr = alloca i16******, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store i16****** %mv, i16******* %mv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.45, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end.47

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.38, %for.body.3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 2
  br i1 %cmp5, label %for.body.6, label %for.end.40

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %l, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body.6
  %3 = load i32, i32* %l, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 9
  %5 = load i32, i32* %max_num_references, align 4
  %cmp8 = icmp slt i32 %3, %5
  br i1 %cmp8, label %for.body.9, label %for.end.31

for.body.9:                                       ; preds = %for.cond.7
  store i32 0, i32* %m, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body.9
  %6 = load i32, i32* %m, align 4
  %cmp11 = icmp slt i32 %6, 9
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %7 = load i32, i32* %m, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %l, align 4
  %idxprom13 = sext i32 %8 to i64
  %9 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %11 to i64
  %12 = load i16******, i16******* %mv.addr, align 8
  %arrayidx = getelementptr inbounds i16*****, i16****** %12, i64 %idxprom16
  %13 = load i16*****, i16****** %arrayidx, align 8
  %arrayidx17 = getelementptr inbounds i16****, i16***** %13, i64 %idxprom15
  %14 = load i16****, i16***** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i16***, i16**** %14, i64 %idxprom14
  %15 = load i16***, i16**** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i16**, i16*** %15, i64 %idxprom13
  %16 = load i16**, i16*** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i16*, i16** %16, i64 %idxprom
  %17 = load i16*, i16** %arrayidx20, align 8
  %18 = bitcast i16* %17 to i8*
  call void @free(i8* %18) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %19 = load i32, i32* %m, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %20 = load i32, i32* %l, align 4
  %idxprom21 = sext i32 %20 to i64
  %21 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load i16******, i16******* %mv.addr, align 8
  %arrayidx25 = getelementptr inbounds i16*****, i16****** %24, i64 %idxprom24
  %25 = load i16*****, i16****** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i16****, i16***** %25, i64 %idxprom23
  %26 = load i16****, i16***** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i16***, i16**** %26, i64 %idxprom22
  %27 = load i16***, i16**** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i16**, i16*** %27, i64 %idxprom21
  %28 = load i16**, i16*** %arrayidx28, align 8
  %29 = bitcast i16** %28 to i8*
  call void @free(i8* %29) #4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %30 = load i32, i32* %l, align 4
  %inc30 = add nsw i32 %30, 1
  store i32 %inc30, i32* %l, align 4
  br label %for.cond.7

for.end.31:                                       ; preds = %for.cond.7
  %31 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %31 to i64
  %32 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %33 to i64
  %34 = load i16******, i16******* %mv.addr, align 8
  %arrayidx35 = getelementptr inbounds i16*****, i16****** %34, i64 %idxprom34
  %35 = load i16*****, i16****** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16****, i16***** %35, i64 %idxprom33
  %36 = load i16****, i16***** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16***, i16**** %36, i64 %idxprom32
  %37 = load i16***, i16**** %arrayidx37, align 8
  %38 = bitcast i16*** %37 to i8*
  call void @free(i8* %38) #4
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.31
  %39 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %39, 1
  store i32 %inc39, i32* %k, align 4
  br label %for.cond.4

for.end.40:                                       ; preds = %for.cond.4
  %40 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %42 = load i16******, i16******* %mv.addr, align 8
  %arrayidx43 = getelementptr inbounds i16*****, i16****** %42, i64 %idxprom42
  %43 = load i16*****, i16****** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i16****, i16***** %43, i64 %idxprom41
  %44 = load i16****, i16***** %arrayidx44, align 8
  %45 = bitcast i16**** %44 to i8*
  call void @free(i8* %45) #4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end.40
  %46 = load i32, i32* %j, align 4
  %inc46 = add nsw i32 %46, 1
  store i32 %inc46, i32* %j, align 4
  br label %for.cond.1

for.end.47:                                       ; preds = %for.cond.1
  %47 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %47 to i64
  %48 = load i16******, i16******* %mv.addr, align 8
  %arrayidx49 = getelementptr inbounds i16*****, i16****** %48, i64 %idxprom48
  %49 = load i16*****, i16****** %arrayidx49, align 8
  %50 = bitcast i16***** %49 to i8*
  call void @free(i8* %50) #4
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.47
  %51 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %51, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  %52 = load i16******, i16******* %mv.addr, align 8
  %53 = bitcast i16****** %52 to i8*
  call void @free(i8* %53) #4
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
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 157
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
  call void @free(i8* %12) #4
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
  call void @free(i8* %19) #4
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
  call void @free(i8* %24) #4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.17
  %25 = load i32, i32* %k, align 4
  %inc21 = add nsw i32 %25, 1
  store i32 %inc21, i32* %k, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %26 = load i32****, i32***** %cofAC.addr, align 8
  %27 = bitcast i32**** %26 to i8*
  call void @free(i8* %27) #4
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
  call void @free(i8* %7) #4
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
  call void @free(i8* %12) #4
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %13 = load i32, i32* %j, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %j, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %14 = load i32***, i32**** %cofDC.addr, align 8
  %15 = bitcast i32*** %14 to i8*
  call void @free(i8* %15) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @free_mem2Dint(i32**) #1

; Function Attrs: nounwind uwtable
define %struct.Picture* @malloc_picture() #0 {
entry:
  %pic = alloca %struct.Picture*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 824) #4
  %0 = bitcast i8* %call to %struct.Picture*
  store %struct.Picture* %0, %struct.Picture** %pic, align 8
  %cmp = icmp eq %struct.Picture* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.Picture*, %struct.Picture** %pic, align 8
  ret %struct.Picture* %1
}

declare void @free_slice_list(%struct.Picture*) #1

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
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %p_stat_frm, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %p_stat_frm, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %call4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end

if.else:                                          ; preds = %if.then
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.9, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.10, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.15

if.else.8:                                        ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* %3)
  %call10 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %p_stat_frm, align 8
  %cmp11 = icmp eq %struct._IO_FILE* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.else.8
  %call13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #4
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
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.11, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.15
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  %call21 = call i64 @time(i64* null) #4
  store i64 %call21, i64* %now, align 8
  %call22 = call i64 @time(i64* %now) #4
  %call23 = call %struct.tm* @localtime(i64* %now) #4
  store %struct.tm* %call23, %struct.tm** %l_time, align 8
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %8 = load %struct.tm*, %struct.tm** %l_time, align 8
  %call24 = call i64 @strftime(i8* %arraydecay, i64 1000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct.tm* %8) #4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %arraydecay25 = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay25)
  %arraydecay27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %10 = load %struct.tm*, %struct.tm** %l_time, align 8
  %call28 = call i64 @strftime(i8* %arraydecay27, i64 1000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct.tm* %10) #4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %arraydecay29 = getelementptr inbounds [1000 x i8], [1000 x i8]* %string, i32 0, i32 0
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay29)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %12 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %12, 20
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 26
  %arraydecay32 = getelementptr inbounds [200 x i8], [200 x i8]* %infile, i32 0, i32 0
  %call33 = call i64 @strlen(i8* %arraydecay32) #5
  %sub = sub i64 %call33, 20
  %conv = trunc i64 %sub to i32
  %cmp34 = icmp sgt i32 0, %conv
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile36 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 26
  %arraydecay37 = getelementptr inbounds [200 x i8], [200 x i8]* %infile36, i32 0, i32 0
  %call38 = call i64 @strlen(i8* %arraydecay37) #5
  %sub39 = sub i64 %call38, 20
  %conv40 = trunc i64 %sub39 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv40, %cond.false ]
  %add = add nsw i32 %13, %cond
  %idxprom = sext i32 %add to i64
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile41 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 26
  %arrayidx = getelementptr inbounds [200 x i8], [200 x i8]* %infile41, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %18 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %18 to i64
  %arrayidx43 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i64 %idxprom42
  store i8 %17, i8* %arrayidx43, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %arraydecay44 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay44)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %22 = load i32, i32* @frame_no, align 4
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 10
  %25 = load i32, i32* %qp, align 4
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 91
  %28 = load i32, i32* %PicInterlace, align 4
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 92
  %30 = load i32, i32* %MbInterlace, align 4
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 %28, i32 %30)
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 105
  %32 = load i32, i32* %frame_num, align 4
  %cmp49 = icmp eq i32 %32, 0
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %for.end
  %33 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %33, i32 0, i32 14
  %34 = load i32, i32* %bit_ctr_I, align 4
  store i32 %34, i32* %bitcounter, align 4
  br label %if.end.55

if.else.52:                                       ; preds = %for.end
  %35 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %35, i32 0, i32 5
  %36 = load i32, i32* %bit_ctr_n, align 4
  %37 = load i32, i32* @report_frame_statistic.last_bit_ctr_n, align 4
  %sub53 = sub nsw i32 %36, %37
  store i32 %sub53, i32* %bitcounter, align 4
  %38 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n54 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %38, i32 0, i32 5
  %39 = load i32, i32* %bit_ctr_n54, align 4
  store i32 %39, i32* @report_frame_statistic.last_bit_ctr_n, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %41 = load i32, i32* %bitcounter, align 4
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %43 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %43, i32 0, i32 0
  %44 = load float, float* %snr_y, align 4
  %conv57 = fpext float %44 to double
  %45 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %45, i32 0, i32 1
  %46 = load float, float* %snr_u, align 4
  %conv58 = fpext float %46 to double
  %47 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %47, i32 0, i32 2
  %48 = load float, float* %snr_v, align 4
  %conv59 = fpext float %48 to double
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), double %conv57, double %conv58, double %conv59)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %50 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %50, i32 0, i32 20
  %arrayidx61 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use, i32 0, i64 2
  %arrayidx62 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx61, i32 0, i64 9
  %51 = load i32, i32* %arrayidx62, align 4
  %52 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 2, i64 9), align 4
  %sub63 = sub nsw i32 %51, %52
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub63)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %54 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use65 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %54, i32 0, i32 20
  %arrayidx66 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use65, i32 0, i64 2
  %arrayidx67 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx66, i32 0, i64 13
  %55 = load i32, i32* %arrayidx67, align 4
  %56 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 2, i64 13), align 4
  %sub68 = sub nsw i32 %55, %56
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub68)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %58 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use70 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %58, i32 0, i32 20
  %arrayidx71 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use70, i32 0, i64 2
  %arrayidx72 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx71, i32 0, i64 10
  %59 = load i32, i32* %arrayidx72, align 4
  %60 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 2, i64 10), align 4
  %sub73 = sub nsw i32 %59, %60
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub73)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %62 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %62, i32 0, i32 11
  %arrayidx75 = getelementptr inbounds [4 x i32], [4 x i32]* %intra_chroma_mode, i32 0, i64 0
  %63 = load i32, i32* %arrayidx75, align 4
  %64 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i32 0, i64 0), align 4
  %sub76 = sub nsw i32 %63, %64
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub76)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %66 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode78 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %66, i32 0, i32 11
  %arrayidx79 = getelementptr inbounds [4 x i32], [4 x i32]* %intra_chroma_mode78, i32 0, i64 1
  %67 = load i32, i32* %arrayidx79, align 4
  %68 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i32 0, i64 1), align 4
  %sub80 = sub nsw i32 %67, %68
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub80)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %70 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode82 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %70, i32 0, i32 11
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %intra_chroma_mode82, i32 0, i64 2
  %71 = load i32, i32* %arrayidx83, align 4
  %72 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i32 0, i64 2), align 4
  %sub84 = sub nsw i32 %71, %72
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub84)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %74 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode86 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %74, i32 0, i32 11
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %intra_chroma_mode86, i32 0, i64 3
  %75 = load i32, i32* %arrayidx87, align 4
  %76 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i32 0, i64 3), align 4
  %sub88 = sub nsw i32 %75, %76
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub88)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %78 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use90 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %78, i32 0, i32 20
  %arrayidx91 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use90, i32 0, i64 0
  %arrayidx92 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx91, i32 0, i64 9
  %79 = load i32, i32* %arrayidx92, align 4
  %80 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 9), align 4
  %sub93 = sub nsw i32 %79, %80
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub93)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %82 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use95 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %82, i32 0, i32 20
  %arrayidx96 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use95, i32 0, i64 0
  %arrayidx97 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx96, i32 0, i64 13
  %83 = load i32, i32* %arrayidx97, align 4
  %84 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 13), align 4
  %sub98 = sub nsw i32 %83, %84
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub98)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %86 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use100 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %86, i32 0, i32 20
  %arrayidx101 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use100, i32 0, i64 0
  %arrayidx102 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx101, i32 0, i64 10
  %87 = load i32, i32* %arrayidx102, align 4
  %88 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 10), align 4
  %sub103 = sub nsw i32 %87, %88
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub103)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %90 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use105 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %90, i32 0, i32 20
  %arrayidx106 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use105, i32 0, i64 0
  %arrayidx107 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx106, i32 0, i64 0
  %91 = load i32, i32* %arrayidx107, align 4
  %92 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 0), align 4
  %sub108 = sub nsw i32 %91, %92
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub108)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %94 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use110 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %94, i32 0, i32 20
  %arrayidx111 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use110, i32 0, i64 0
  %arrayidx112 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx111, i32 0, i64 1
  %95 = load i32, i32* %arrayidx112, align 4
  %96 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 1), align 4
  %sub113 = sub nsw i32 %95, %96
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub113)
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %98 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use115 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %98, i32 0, i32 20
  %arrayidx116 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use115, i32 0, i64 0
  %arrayidx117 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx116, i32 0, i64 2
  %99 = load i32, i32* %arrayidx117, align 4
  %100 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 2), align 4
  %sub118 = sub nsw i32 %99, %100
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub118)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %102 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use120 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %102, i32 0, i32 20
  %arrayidx121 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use120, i32 0, i64 0
  %arrayidx122 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx121, i32 0, i64 3
  %103 = load i32, i32* %arrayidx122, align 4
  %104 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 3), align 4
  %sub123 = sub nsw i32 %103, %104
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub123)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %106 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %106, i32 0, i32 9
  %arrayidx125 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8, i32 0, i64 0
  %arrayidx126 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx125, i32 0, i64 1
  %107 = load i32, i32* %arrayidx126, align 4
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %107)
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %109 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %109, i32 0, i32 10
  %arrayidx128 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4, i32 0, i64 0
  %arrayidx129 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx128, i32 0, i64 1
  %110 = load i32, i32* %arrayidx129, align 4
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %110)
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %112 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8131 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %112, i32 0, i32 9
  %arrayidx132 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8131, i32 0, i64 0
  %arrayidx133 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx132, i32 0, i64 2
  %113 = load i32, i32* %arrayidx133, align 4
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %113)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %115 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4135 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %115, i32 0, i32 10
  %arrayidx136 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4135, i32 0, i64 0
  %arrayidx137 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx136, i32 0, i64 2
  %116 = load i32, i32* %arrayidx137, align 4
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %116)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %118 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8139 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %118, i32 0, i32 9
  %arrayidx140 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8139, i32 0, i64 0
  %arrayidx141 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx140, i32 0, i64 3
  %119 = load i32, i32* %arrayidx141, align 4
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %119)
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %121 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4143 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %121, i32 0, i32 10
  %arrayidx144 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4143, i32 0, i64 0
  %arrayidx145 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx144, i32 0, i64 3
  %122 = load i32, i32* %arrayidx145, align 4
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %122)
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %124 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use147 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %124, i32 0, i32 20
  %arrayidx148 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use147, i32 0, i64 0
  %arrayidx149 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx148, i32 0, i64 8
  %125 = load i32, i32* %arrayidx149, align 4
  %126 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 8), align 4
  %sub150 = sub nsw i32 %125, %126
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub150)
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %128 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use152 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %128, i32 0, i32 20
  %arrayidx153 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use152, i32 0, i64 0
  %arrayidx154 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx153, i32 0, i64 4
  %129 = load i32, i32* %arrayidx154, align 4
  %130 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 4), align 4
  %sub155 = sub nsw i32 %129, %130
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub155)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %132 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8157 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %132, i32 0, i32 9
  %arrayidx158 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8157, i32 0, i64 0
  %arrayidx159 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx158, i32 0, i64 4
  %133 = load i32, i32* %arrayidx159, align 4
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %133)
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %135 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4161 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %135, i32 0, i32 10
  %arrayidx162 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4161, i32 0, i64 0
  %arrayidx163 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx162, i32 0, i64 4
  %136 = load i32, i32* %arrayidx163, align 4
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %136)
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %138 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use165 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %138, i32 0, i32 20
  %arrayidx166 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use165, i32 0, i64 0
  %arrayidx167 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx166, i32 0, i64 5
  %139 = load i32, i32* %arrayidx167, align 4
  %140 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 5), align 4
  %sub168 = sub nsw i32 %139, %140
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub168)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %142 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use170 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %142, i32 0, i32 20
  %arrayidx171 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use170, i32 0, i64 0
  %arrayidx172 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx171, i32 0, i64 6
  %143 = load i32, i32* %arrayidx172, align 4
  %144 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 6), align 4
  %sub173 = sub nsw i32 %143, %144
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub173)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %146 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use175 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %146, i32 0, i32 20
  %arrayidx176 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use175, i32 0, i64 0
  %arrayidx177 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx176, i32 0, i64 7
  %147 = load i32, i32* %arrayidx177, align 4
  %148 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0, i64 7), align 4
  %sub178 = sub nsw i32 %147, %148
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub178)
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %150 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use180 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %150, i32 0, i32 20
  %arrayidx181 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use180, i32 0, i64 1
  %arrayidx182 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx181, i32 0, i64 9
  %151 = load i32, i32* %arrayidx182, align 4
  %152 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 9), align 4
  %sub183 = sub nsw i32 %151, %152
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub183)
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %154 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use185 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %154, i32 0, i32 20
  %arrayidx186 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use185, i32 0, i64 1
  %arrayidx187 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx186, i32 0, i64 13
  %155 = load i32, i32* %arrayidx187, align 4
  %156 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 13), align 4
  %sub188 = sub nsw i32 %155, %156
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub188)
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %158 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use190 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %158, i32 0, i32 20
  %arrayidx191 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use190, i32 0, i64 1
  %arrayidx192 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx191, i32 0, i64 10
  %159 = load i32, i32* %arrayidx192, align 4
  %160 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 10), align 4
  %sub193 = sub nsw i32 %159, %160
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub193)
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %162 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use195 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %162, i32 0, i32 20
  %arrayidx196 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use195, i32 0, i64 1
  %arrayidx197 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx196, i32 0, i64 0
  %163 = load i32, i32* %arrayidx197, align 4
  %164 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 0), align 4
  %sub198 = sub nsw i32 %163, %164
  %call199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub198)
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %166 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use200 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %166, i32 0, i32 20
  %arrayidx201 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use200, i32 0, i64 1
  %arrayidx202 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx201, i32 0, i64 1
  %167 = load i32, i32* %arrayidx202, align 4
  %168 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 1), align 4
  %sub203 = sub nsw i32 %167, %168
  %call204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub203)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %170 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use205 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %170, i32 0, i32 20
  %arrayidx206 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use205, i32 0, i64 1
  %arrayidx207 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx206, i32 0, i64 2
  %171 = load i32, i32* %arrayidx207, align 4
  %172 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 2), align 4
  %sub208 = sub nsw i32 %171, %172
  %call209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub208)
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %174 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use210 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %174, i32 0, i32 20
  %arrayidx211 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use210, i32 0, i64 1
  %arrayidx212 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx211, i32 0, i64 3
  %175 = load i32, i32* %arrayidx212, align 4
  %176 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 3), align 4
  %sub213 = sub nsw i32 %175, %176
  %call214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub213)
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %178 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8215 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %178, i32 0, i32 9
  %arrayidx216 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8215, i32 0, i64 1
  %arrayidx217 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx216, i32 0, i64 0
  %179 = load i32, i32* %arrayidx217, align 4
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %179)
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %181 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4219 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %181, i32 0, i32 10
  %arrayidx220 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4219, i32 0, i64 1
  %arrayidx221 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx220, i32 0, i64 0
  %182 = load i32, i32* %arrayidx221, align 4
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %182)
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %184 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8223 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %184, i32 0, i32 9
  %arrayidx224 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8223, i32 0, i64 1
  %arrayidx225 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx224, i32 0, i64 1
  %185 = load i32, i32* %arrayidx225, align 4
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %185)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %187 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4227 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %187, i32 0, i32 10
  %arrayidx228 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4227, i32 0, i64 1
  %arrayidx229 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx228, i32 0, i64 1
  %188 = load i32, i32* %arrayidx229, align 4
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %188)
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %190 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8231 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %190, i32 0, i32 9
  %arrayidx232 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8231, i32 0, i64 1
  %arrayidx233 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx232, i32 0, i64 2
  %191 = load i32, i32* %arrayidx233, align 4
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %191)
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %193 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4235 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %193, i32 0, i32 10
  %arrayidx236 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4235, i32 0, i64 1
  %arrayidx237 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx236, i32 0, i64 2
  %194 = load i32, i32* %arrayidx237, align 4
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %194)
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %196 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8239 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %196, i32 0, i32 9
  %arrayidx240 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8239, i32 0, i64 1
  %arrayidx241 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx240, i32 0, i64 3
  %197 = load i32, i32* %arrayidx241, align 4
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %197)
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %199 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4243 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %199, i32 0, i32 10
  %arrayidx244 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4243, i32 0, i64 1
  %arrayidx245 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx244, i32 0, i64 3
  %200 = load i32, i32* %arrayidx245, align 4
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %200)
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %202 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use247 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %202, i32 0, i32 20
  %arrayidx248 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use247, i32 0, i64 1
  %arrayidx249 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx248, i32 0, i64 8
  %203 = load i32, i32* %arrayidx249, align 4
  %204 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 8), align 4
  %sub250 = sub nsw i32 %203, %204
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub250)
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %206 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %206, i32 0, i32 8
  %arrayidx252 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use, i32 0, i64 1
  %arrayidx253 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx252, i32 0, i64 0
  %207 = load i32, i32* %arrayidx253, align 4
  %208 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use254 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %208, i32 0, i32 8
  %arrayidx255 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use254, i32 0, i64 1
  %arrayidx256 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx255, i32 0, i64 1
  %209 = load i32, i32* %arrayidx256, align 4
  %add257 = add nsw i32 %207, %209
  %210 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1, i64 0), align 4
  %211 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1, i64 1), align 4
  %add258 = add nsw i32 %210, %211
  %sub259 = sub nsw i32 %add257, %add258
  %call260 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub259)
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %213 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use261 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %213, i32 0, i32 8
  %arrayidx262 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use261, i32 0, i64 1
  %arrayidx263 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx262, i32 0, i64 1
  %214 = load i32, i32* %arrayidx263, align 4
  %215 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1, i64 1), align 4
  %sub264 = sub nsw i32 %214, %215
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub264)
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %217 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use266 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %217, i32 0, i32 8
  %arrayidx267 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use266, i32 0, i64 1
  %arrayidx268 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx267, i32 0, i64 0
  %218 = load i32, i32* %arrayidx268, align 4
  %219 = load i32, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1, i64 0), align 4
  %sub269 = sub nsw i32 %218, %219
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub269)
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %221 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use271 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %221, i32 0, i32 20
  %arrayidx272 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use271, i32 0, i64 1
  %arrayidx273 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx272, i32 0, i64 4
  %222 = load i32, i32* %arrayidx273, align 4
  %223 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 4), align 4
  %sub274 = sub nsw i32 %222, %223
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub274)
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %225 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8276 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %225, i32 0, i32 9
  %arrayidx277 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8276, i32 0, i64 1
  %arrayidx278 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx277, i32 0, i64 4
  %226 = load i32, i32* %arrayidx278, align 4
  %call279 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %226)
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %228 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4280 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %228, i32 0, i32 10
  %arrayidx281 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4280, i32 0, i64 1
  %arrayidx282 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx281, i32 0, i64 4
  %229 = load i32, i32* %arrayidx282, align 4
  %call283 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %229)
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %231 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use284 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %231, i32 0, i32 20
  %arrayidx285 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use284, i32 0, i64 1
  %arrayidx286 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx285, i32 0, i64 5
  %232 = load i32, i32* %arrayidx286, align 4
  %233 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 5), align 4
  %sub287 = sub nsw i32 %232, %233
  %call288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub287)
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %235 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use289 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %235, i32 0, i32 20
  %arrayidx290 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use289, i32 0, i64 1
  %arrayidx291 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx290, i32 0, i64 6
  %236 = load i32, i32* %arrayidx291, align 4
  %237 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 6), align 4
  %sub292 = sub nsw i32 %236, %237
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub292)
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %239 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use294 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %239, i32 0, i32 20
  %arrayidx295 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use294, i32 0, i64 1
  %arrayidx296 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx295, i32 0, i64 7
  %240 = load i32, i32* %arrayidx296, align 4
  %241 = load i32, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1, i64 7), align 4
  %sub297 = sub nsw i32 %240, %241
  %call298 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %sub297)
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  %243 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use300 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %243, i32 0, i32 20
  %arrayidx301 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use300, i32 0, i64 2
  %arrayidx302 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx301, i32 0, i64 9
  %244 = load i32, i32* %arrayidx302, align 4
  store i32 %244, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 2, i64 9), align 4
  %245 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use303 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %245, i32 0, i32 20
  %arrayidx304 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use303, i32 0, i64 2
  %arrayidx305 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx304, i32 0, i64 13
  %246 = load i32, i32* %arrayidx305, align 4
  store i32 %246, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 2, i64 13), align 4
  %247 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use306 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %247, i32 0, i32 20
  %arrayidx307 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use306, i32 0, i64 2
  %arrayidx308 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx307, i32 0, i64 10
  %248 = load i32, i32* %arrayidx308, align 4
  store i32 %248, i32* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 2, i64 10), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.341, %if.end.55
  %249 = load i32, i32* %i, align 4
  %cmp310 = icmp slt i32 %249, 15
  br i1 %cmp310, label %for.body.312, label %for.end.343

for.body.312:                                     ; preds = %for.cond.309
  %250 = load i32, i32* %i, align 4
  %idxprom313 = sext i32 %250 to i64
  %251 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use314 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %251, i32 0, i32 20
  %arrayidx315 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use314, i32 0, i64 0
  %arrayidx316 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx315, i32 0, i64 %idxprom313
  %252 = load i32, i32* %arrayidx316, align 4
  %253 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %253 to i64
  %arrayidx318 = getelementptr inbounds [15 x i32], [15 x i32]* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 0), i32 0, i64 %idxprom317
  store i32 %252, i32* %arrayidx318, align 4
  %254 = load i32, i32* %i, align 4
  %idxprom319 = sext i32 %254 to i64
  %255 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use320 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %255, i32 0, i32 20
  %arrayidx321 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use320, i32 0, i64 1
  %arrayidx322 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx321, i32 0, i64 %idxprom319
  %256 = load i32, i32* %arrayidx322, align 4
  %257 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %257 to i64
  %arrayidx324 = getelementptr inbounds [15 x i32], [15 x i32]* getelementptr inbounds ([5 x [15 x i32]], [5 x [15 x i32]]* @report_frame_statistic.last_mode_use, i32 0, i64 1), i32 0, i64 %idxprom323
  store i32 %256, i32* %arrayidx324, align 4
  %258 = load i32, i32* %i, align 4
  %idxprom325 = sext i32 %258 to i64
  %259 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8326 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %259, i32 0, i32 9
  %arrayidx327 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8326, i32 0, i64 0
  %arrayidx328 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx327, i32 0, i64 %idxprom325
  store i32 0, i32* %arrayidx328, align 4
  %260 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %260 to i64
  %261 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_8x8330 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %261, i32 0, i32 9
  %arrayidx331 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_8x8330, i32 0, i64 1
  %arrayidx332 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx331, i32 0, i64 %idxprom329
  store i32 0, i32* %arrayidx332, align 4
  %262 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %262 to i64
  %263 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4334 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %263, i32 0, i32 10
  %arrayidx335 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4334, i32 0, i64 0
  %arrayidx336 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx335, i32 0, i64 %idxprom333
  store i32 0, i32* %arrayidx336, align 4
  %264 = load i32, i32* %i, align 4
  %idxprom337 = sext i32 %264 to i64
  %265 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %mode_use_transform_4x4338 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %265, i32 0, i32 10
  %arrayidx339 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %mode_use_transform_4x4338, i32 0, i64 1
  %arrayidx340 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx339, i32 0, i64 %idxprom337
  store i32 0, i32* %arrayidx340, align 4
  br label %for.inc.341

for.inc.341:                                      ; preds = %for.body.312
  %266 = load i32, i32* %i, align 4
  %inc342 = add nsw i32 %266, 1
  store i32 %inc342, i32* %i, align 4
  br label %for.cond.309

for.end.343:                                      ; preds = %for.cond.309
  %267 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use344 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %267, i32 0, i32 8
  %arrayidx345 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use344, i32 0, i64 1
  %arrayidx346 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx345, i32 0, i64 0
  %268 = load i32, i32* %arrayidx346, align 4
  store i32 %268, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1, i64 0), align 4
  %269 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %b8_mode_0_use347 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %269, i32 0, i32 8
  %arrayidx348 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %b8_mode_0_use347, i32 0, i64 1
  %arrayidx349 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx348, i32 0, i64 1
  %270 = load i32, i32* %arrayidx349, align 4
  store i32 %270, i32* getelementptr inbounds ([5 x [2 x i32]], [5 x [2 x i32]]* @report_frame_statistic.last_b8_mode_0, i32 0, i64 1, i64 1), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.350

for.cond.350:                                     ; preds = %for.inc.359, %for.end.343
  %271 = load i32, i32* %i, align 4
  %cmp351 = icmp slt i32 %271, 4
  br i1 %cmp351, label %for.body.353, label %for.end.361

for.body.353:                                     ; preds = %for.cond.350
  %272 = load i32, i32* %i, align 4
  %idxprom354 = sext i32 %272 to i64
  %273 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %intra_chroma_mode355 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %273, i32 0, i32 11
  %arrayidx356 = getelementptr inbounds [4 x i32], [4 x i32]* %intra_chroma_mode355, i32 0, i64 %idxprom354
  %274 = load i32, i32* %arrayidx356, align 4
  %275 = load i32, i32* %i, align 4
  %idxprom357 = sext i32 %275 to i64
  %arrayidx358 = getelementptr inbounds [4 x i32], [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i32 0, i64 %idxprom357
  store i32 %274, i32* %arrayidx358, align 4
  br label %for.inc.359

for.inc.359:                                      ; preds = %for.body.353
  %276 = load i32, i32* %i, align 4
  %inc360 = add nsw i32 %276, 1
  store i32 %inc360, i32* %i, align 4
  br label %for.cond.350

for.end.361:                                      ; preds = %for.cond.350
  store i32 0, i32* @frame_statistic_start, align 4
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_frm, align 8
  %call362 = call i32 @fclose(%struct._IO_FILE* %277)
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

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

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define void @report() #0 {
entry:
  %bit_use = alloca [5 x [2 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %name = alloca [20 x i8], align 16
  %total_bits = alloca i32, align 4
  %frame_rate = alloca float, align 4
  %mean_motion_info_bit_use = alloca [2 x float], align 4
  %now = alloca i64, align 8
  %l_time = alloca %struct.tm*, align 8
  %string = alloca [1000 x i8], align 16
  %seqtype = alloca [80 x i8], align 16
  %i160 = alloca i32, align 4
  %j161 = alloca i32, align 4
  %0 = load i32, i32* @Iframe_ctr, align 4
  %arrayidx = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 2
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  store i32 %0, i32* %arrayidx1, align 4
  %1 = load i32, i32* @Pframe_ctr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* @Pframe_ctr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 1, %cond.false ]
  %arrayidx2 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 0
  store i32 %cond, i32* %arrayidx3, align 4
  %3 = load i32, i32* @Bframe_ctr, align 4
  %arrayidx4 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 1
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 0
  store i32 %3, i32* %arrayidx5, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %4, 5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 %idxprom
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx7, i32 0, i64 1
  store i32 0, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.67, %for.end
  %7 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %7, 5
  br i1 %cmp10, label %for.body.11, label %for.end.69

for.body.11:                                      ; preds = %for.cond.9
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.22, %for.body.11
  %8 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %8, 15
  br i1 %cmp13, label %for.body.14, label %for.end.24

for.body.14:                                      ; preds = %for.cond.12
  %9 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %10 to i64
  %11 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mode = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %11, i32 0, i32 21
  %arrayidx17 = getelementptr inbounds [5 x [15 x i32]], [5 x [15 x i32]]* %bit_use_mode, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx17, i32 0, i64 %idxprom15
  %12 = load i32, i32* %arrayidx18, align 4
  %13 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx20, i32 0, i64 1
  %14 = load i32, i32* %arrayidx21, align 4
  %add = add nsw i32 %14, %12
  store i32 %add, i32* %arrayidx21, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.14
  %15 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %15, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond.12

for.end.24:                                       ; preds = %for.cond.12
  %16 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %16 to i64
  %17 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_header = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %17, i32 0, i32 24
  %arrayidx26 = getelementptr inbounds [5 x i32], [5 x i32]* %bit_use_header, i32 0, i64 %idxprom25
  %18 = load i32, i32* %arrayidx26, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx28, i32 0, i64 1
  %20 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %20, %18
  store i32 %add30, i32* %arrayidx29, align 4
  %21 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %21 to i64
  %22 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_mb_type = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %22, i32 0, i32 23
  %arrayidx32 = getelementptr inbounds [5 x i32], [5 x i32]* %bit_use_mb_type, i32 0, i64 %idxprom31
  %23 = load i32, i32* %arrayidx32, align 4
  %24 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx34, i32 0, i64 1
  %25 = load i32, i32* %arrayidx35, align 4
  %add36 = add nsw i32 %25, %23
  store i32 %add36, i32* %arrayidx35, align 4
  %26 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %26 to i64
  %27 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %tmp_bit_use_cbp = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %27, i32 0, i32 25
  %arrayidx38 = getelementptr inbounds [5 x i32], [5 x i32]* %tmp_bit_use_cbp, i32 0, i64 %idxprom37
  %28 = load i32, i32* %arrayidx38, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx40, i32 0, i64 1
  %30 = load i32, i32* %arrayidx41, align 4
  %add42 = add nsw i32 %30, %28
  store i32 %add42, i32* %arrayidx41, align 4
  %31 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %31 to i64
  %32 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffY = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %32, i32 0, i32 26
  %arrayidx44 = getelementptr inbounds [5 x i32], [5 x i32]* %bit_use_coeffY, i32 0, i64 %idxprom43
  %33 = load i32, i32* %arrayidx44, align 4
  %34 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx46, i32 0, i64 1
  %35 = load i32, i32* %arrayidx47, align 4
  %add48 = add nsw i32 %35, %33
  store i32 %add48, i32* %arrayidx47, align 4
  %36 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %36 to i64
  %37 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_coeffC = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %37, i32 0, i32 27
  %arrayidx50 = getelementptr inbounds [5 x i32], [5 x i32]* %bit_use_coeffC, i32 0, i64 %idxprom49
  %38 = load i32, i32* %arrayidx50, align 4
  %39 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx52, i32 0, i64 1
  %40 = load i32, i32* %arrayidx53, align 4
  %add54 = add nsw i32 %40, %38
  store i32 %add54, i32* %arrayidx53, align 4
  %41 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %41 to i64
  %42 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_delta_quant = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %42, i32 0, i32 28
  %arrayidx56 = getelementptr inbounds [5 x i32], [5 x i32]* %bit_use_delta_quant, i32 0, i64 %idxprom55
  %43 = load i32, i32* %arrayidx56, align 4
  %44 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %44 to i64
  %arrayidx58 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx58, i32 0, i64 1
  %45 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %45, %43
  store i32 %add60, i32* %arrayidx59, align 4
  %46 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %46 to i64
  %47 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_stuffingBits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %47, i32 0, i32 22
  %arrayidx62 = getelementptr inbounds [5 x i32], [5 x i32]* %bit_use_stuffingBits, i32 0, i64 %idxprom61
  %48 = load i32, i32* %arrayidx62, align 4
  %49 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %49 to i64
  %arrayidx64 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %bit_use, i32 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx64, i32 0, i64 1
  %50 = load i32, i32* %arrayidx65, align 4
  %add66 = add nsw i32 %50, %48
  store i32 %add66, i32* %arrayidx65, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.24
  %51 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %51, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond.9

for.end.69:                                       ; preds = %for.cond.9
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 12
  %53 = load float, float* %framerate, align 4
  %54 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %54, i32 0, i32 34
  %55 = load i32, i32* %successive_Bframe, align 4
  %add70 = add nsw i32 %55, 1
  %conv = sitofp i32 %add70 to float
  %mul = fmul float %53, %conv
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 5
  %57 = load i32, i32* %jumpd, align 4
  %add71 = add nsw i32 %57, 1
  %conv72 = sitofp i32 %add71 to float
  %div = fdiv float %mul, %conv72
  store float %div, float* %frame_rate, align 4
  %58 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %58, i32 0, i32 14
  %59 = load i32, i32* %bit_ctr_I, align 4
  %conv73 = sitofp i32 %59 to float
  %60 = load float, float* %frame_rate, align 4
  %mul74 = fmul float %conv73, %60
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 2
  %62 = load i32, i32* %no_frames, align 4
  %63 = load i32, i32* @Bframe_ctr, align 4
  %add75 = add nsw i32 %62, %63
  %conv76 = sitofp i32 %add75 to float
  %div77 = fdiv float %mul74, %conv76
  %64 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %64, i32 0, i32 17
  store float %div77, float* %bitrate_I, align 4
  %65 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %65, i32 0, i32 15
  %66 = load i32, i32* %bit_ctr_P, align 4
  %conv78 = sitofp i32 %66 to float
  %67 = load float, float* %frame_rate, align 4
  %mul79 = fmul float %conv78, %67
  %68 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames80 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %68, i32 0, i32 2
  %69 = load i32, i32* %no_frames80, align 4
  %70 = load i32, i32* @Bframe_ctr, align 4
  %add81 = add nsw i32 %69, %70
  %conv82 = sitofp i32 %add81 to float
  %div83 = fdiv float %mul79, %conv82
  %71 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_P = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %71, i32 0, i32 18
  store float %div83, float* %bitrate_P, align 4
  %72 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_B = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %72, i32 0, i32 16
  %73 = load i32, i32* %bit_ctr_B, align 4
  %conv84 = sitofp i32 %73 to float
  %74 = load float, float* %frame_rate, align 4
  %mul85 = fmul float %conv84, %74
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames86 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 2
  %76 = load i32, i32* %no_frames86, align 4
  %77 = load i32, i32* @Bframe_ctr, align 4
  %add87 = add nsw i32 %76, %77
  %conv88 = sitofp i32 %add87 to float
  %div89 = fdiv float %mul85, %conv88
  %78 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate_B = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %78, i32 0, i32 19
  store float %div89, float* %bitrate_B, align 4
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.26, i32 0, i32 0))
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate90 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 12
  %82 = load float, float* %framerate90, align 4
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd91 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 5
  %84 = load i32, i32* %jumpd91, align 4
  %add92 = add nsw i32 %84, 1
  %conv93 = sitofp i32 %add92 to float
  %div94 = fdiv float %82, %conv93
  %conv95 = fpext float %div94 to double
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0), double %conv95)
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %hadamard = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 6
  %86 = load i32, i32* %hadamard, align 4
  %tobool = icmp ne i32 %86, 0
  br i1 %tobool, label %if.then, label %if.else.101

if.then:                                          ; preds = %for.end.69
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %hadamardqpel = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 7
  %88 = load i32, i32* %hadamardqpel, align 4
  %tobool97 = icmp ne i32 %88, 0
  br i1 %tobool97, label %if.then.98, label %if.else

if.then.98:                                       ; preds = %if.then
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.98
  br label %if.end.103

if.else.101:                                      ; preds = %for.end.69
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.end
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %93 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %93, i32 0, i32 16
  %94 = load i32, i32* %img_width, align 4
  %95 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %95, i32 0, i32 17
  %96 = load i32, i32* %img_height, align 4
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i32 0, i32 0), i32 %94, i32 %96)
  %97 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %97, i32 0, i32 19
  %98 = load i32, i32* %intra_upd, align 4
  %tobool105 = icmp ne i32 %98, 0
  br i1 %tobool105, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %if.end.103
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.110

if.else.108:                                      ; preds = %if.end.103
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.then.106
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %102 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %102, i32 0, i32 8
  %103 = load i32, i32* %search_range, align 4
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 %103)
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %105 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %105, i32 0, i32 9
  %106 = load i32, i32* %num_ref_frames, align 4
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i32 0, i32 0), i32 %106)
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %108 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %108, i32 0, i32 10
  %109 = load i32, i32* %P_List0_refs, align 4
  %tobool113 = icmp ne i32 %109, 0
  br i1 %tobool113, label %cond.true.114, label %cond.false.116

cond.true.114:                                    ; preds = %if.end.110
  %110 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs115 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %110, i32 0, i32 10
  %111 = load i32, i32* %P_List0_refs115, align 4
  br label %cond.end.118

cond.false.116:                                   ; preds = %if.end.110
  %112 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames117 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %112, i32 0, i32 9
  %113 = load i32, i32* %num_ref_frames117, align 4
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.116, %cond.true.114
  %cond119 = phi i32 [ %111, %cond.true.114 ], [ %113, %cond.false.116 ]
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0), i32 %cond119)
  %114 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe121 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %114, i32 0, i32 34
  %115 = load i32, i32* %successive_Bframe121, align 4
  %cmp122 = icmp ne i32 %115, 0
  br i1 %cmp122, label %if.then.124, label %if.end.141

if.then.124:                                      ; preds = %cond.end.118
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %117 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %117, i32 0, i32 11
  %118 = load i32, i32* %B_List0_refs, align 4
  %tobool125 = icmp ne i32 %118, 0
  br i1 %tobool125, label %cond.true.126, label %cond.false.128

cond.true.126:                                    ; preds = %if.then.124
  %119 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs127 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %119, i32 0, i32 11
  %120 = load i32, i32* %B_List0_refs127, align 4
  br label %cond.end.130

cond.false.128:                                   ; preds = %if.then.124
  %121 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames129 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %121, i32 0, i32 9
  %122 = load i32, i32* %num_ref_frames129, align 4
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.128, %cond.true.126
  %cond131 = phi i32 [ %120, %cond.true.126 ], [ %122, %cond.false.128 ]
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 %cond131)
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %124 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %124, i32 0, i32 12
  %125 = load i32, i32* %B_List1_refs, align 4
  %tobool133 = icmp ne i32 %125, 0
  br i1 %tobool133, label %cond.true.134, label %cond.false.136

cond.true.134:                                    ; preds = %cond.end.130
  %126 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs135 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %126, i32 0, i32 12
  %127 = load i32, i32* %B_List1_refs135, align 4
  br label %cond.end.138

cond.false.136:                                   ; preds = %cond.end.130
  %128 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames137 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %128, i32 0, i32 9
  %129 = load i32, i32* %num_ref_frames137, align 4
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.136, %cond.true.134
  %cond139 = phi i32 [ %127, %cond.true.134 ], [ %129, %cond.false.136 ]
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 %cond139)
  br label %if.end.141

if.end.141:                                       ; preds = %cond.end.138, %cond.end.118
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %131 = load i32, i32* @tot_time, align 4
  %conv142 = sitofp i32 %131 to double
  %mul143 = fmul double %conv142, 1.000000e-03
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.39, i32 0, i32 0), double %mul143)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %133 = load i32, i32* @me_tot_time, align 4
  %conv145 = sitofp i32 %133 to double
  %mul146 = fmul double %conv145, 1.000000e-03
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i32 0, i32 0), double %mul146)
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i32 0, i32 0))
  %135 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe149 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %135, i32 0, i32 34
  %136 = load i32, i32* %successive_Bframe149, align 4
  %cmp150 = icmp sgt i32 %136, 0
  br i1 %cmp150, label %land.lhs.true, label %if.else.155

land.lhs.true:                                    ; preds = %if.end.141
  %137 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %137, i32 0, i32 55
  %138 = load i32, i32* %PyramidCoding, align 4
  %tobool152 = icmp ne i32 %138, 0
  br i1 %tobool152, label %if.then.153, label %if.else.155

if.then.153:                                      ; preds = %land.lhs.true
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %140 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %140, i32 0, i32 3
  %141 = load i32, i32* %qp0, align 4
  %142 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %142, i32 0, i32 4
  %143 = load i32, i32* %qpN, align 4
  %144 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %144, i32 0, i32 35
  %145 = load i32, i32* %qpB, align 4
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0), i32 %141, i32 %143, i32 %145)
  br label %if.end.283

if.else.155:                                      ; preds = %land.lhs.true, %if.end.141
  %146 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe156 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %146, i32 0, i32 34
  %147 = load i32, i32* %successive_Bframe156, align 4
  %cmp157 = icmp sgt i32 %147, 0
  br i1 %cmp157, label %if.then.159, label %if.else.266

if.then.159:                                      ; preds = %if.else.155
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call162 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)) #4
  store i32 0, i32* %j161, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.229, %if.then.159
  %148 = load i32, i32* %j161, align 4
  %cmp164 = icmp slt i32 %148, 2
  br i1 %cmp164, label %for.body.166, label %for.end.231

for.body.166:                                     ; preds = %for.cond.163
  store i32 0, i32* %i160, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.209, %for.body.166
  %149 = load i32, i32* %i160, align 4
  %150 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe168 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %150, i32 0, i32 34
  %151 = load i32, i32* %successive_Bframe168, align 4
  %cmp169 = icmp slt i32 %149, %151
  br i1 %cmp169, label %for.body.171, label %for.end.211

for.body.171:                                     ; preds = %for.cond.167
  %152 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %152, i32 0, i32 54
  %153 = load i32, i32* %BRefPictures, align 4
  %tobool172 = icmp ne i32 %153, 0
  br i1 %tobool172, label %if.then.173, label %if.else.190

if.then.173:                                      ; preds = %for.body.171
  %arraydecay174 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %arraydecay175 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call176 = call i64 @strlen(i8* %arraydecay175) #5
  %sub = sub i64 79, %call176
  %conv177 = trunc i64 %sub to i32
  %cmp178 = icmp sgt i32 0, %conv177
  br i1 %cmp178, label %cond.true.180, label %cond.false.181

cond.true.180:                                    ; preds = %if.then.173
  br label %cond.end.186

cond.false.181:                                   ; preds = %if.then.173
  %arraydecay182 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call183 = call i64 @strlen(i8* %arraydecay182) #5
  %sub184 = sub i64 79, %call183
  %conv185 = trunc i64 %sub184 to i32
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.181, %cond.true.180
  %cond187 = phi i32 [ 0, %cond.true.180 ], [ %conv185, %cond.false.181 ]
  %conv188 = sext i32 %cond187 to i64
  %call189 = call i8* @strncat(i8* %arraydecay174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i64 %conv188) #4
  br label %if.end.208

if.else.190:                                      ; preds = %for.body.171
  %arraydecay191 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %arraydecay192 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call193 = call i64 @strlen(i8* %arraydecay192) #5
  %sub194 = sub i64 79, %call193
  %conv195 = trunc i64 %sub194 to i32
  %cmp196 = icmp sgt i32 0, %conv195
  br i1 %cmp196, label %cond.true.198, label %cond.false.199

cond.true.198:                                    ; preds = %if.else.190
  br label %cond.end.204

cond.false.199:                                   ; preds = %if.else.190
  %arraydecay200 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call201 = call i64 @strlen(i8* %arraydecay200) #5
  %sub202 = sub i64 79, %call201
  %conv203 = trunc i64 %sub202 to i32
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.199, %cond.true.198
  %cond205 = phi i32 [ 0, %cond.true.198 ], [ %conv203, %cond.false.199 ]
  %conv206 = sext i32 %cond205 to i64
  %call207 = call i8* @strncat(i8* %arraydecay191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i64 %conv206) #4
  br label %if.end.208

if.end.208:                                       ; preds = %cond.end.204, %cond.end.186
  br label %for.inc.209

for.inc.209:                                      ; preds = %if.end.208
  %154 = load i32, i32* %i160, align 4
  %inc210 = add nsw i32 %154, 1
  store i32 %inc210, i32* %i160, align 4
  br label %for.cond.167

for.end.211:                                      ; preds = %for.cond.167
  %arraydecay212 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %arraydecay213 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call214 = call i64 @strlen(i8* %arraydecay213) #5
  %sub215 = sub i64 79, %call214
  %conv216 = trunc i64 %sub215 to i32
  %cmp217 = icmp sgt i32 0, %conv216
  br i1 %cmp217, label %cond.true.219, label %cond.false.220

cond.true.219:                                    ; preds = %for.end.211
  br label %cond.end.225

cond.false.220:                                   ; preds = %for.end.211
  %arraydecay221 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %call222 = call i64 @strlen(i8* %arraydecay221) #5
  %sub223 = sub i64 79, %call222
  %conv224 = trunc i64 %sub223 to i32
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.220, %cond.true.219
  %cond226 = phi i32 [ 0, %cond.true.219 ], [ %conv224, %cond.false.220 ]
  %conv227 = sext i32 %cond226 to i64
  %call228 = call i8* @strncat(i8* %arraydecay212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i64 %conv227) #4
  br label %for.inc.229

for.inc.229:                                      ; preds = %cond.end.225
  %155 = load i32, i32* %j161, align 4
  %inc230 = add nsw i32 %155, 1
  store i32 %inc230, i32* %j161, align 4
  br label %for.cond.163

for.end.231:                                      ; preds = %for.cond.163
  %156 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures232 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %156, i32 0, i32 54
  %157 = load i32, i32* %BRefPictures232, align 4
  %tobool233 = icmp ne i32 %157, 0
  br i1 %tobool233, label %if.then.234, label %if.else.259

if.then.234:                                      ; preds = %for.end.231
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %arraydecay235 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %159 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0236 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %159, i32 0, i32 3
  %160 = load i32, i32* %qp0236, align 4
  %161 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN237 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %161, i32 0, i32 4
  %162 = load i32, i32* %qpN237, align 4
  %163 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB238 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %163, i32 0, i32 35
  %164 = load i32, i32* %qpB238, align 4
  %165 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %165, i32 0, i32 36
  %166 = load i32, i32* %qpBRSOffset, align 4
  %add239 = add nsw i32 %164, %166
  %cmp240 = icmp slt i32 %add239, 0
  br i1 %cmp240, label %cond.true.242, label %cond.false.243

cond.true.242:                                    ; preds = %if.then.234
  br label %cond.end.256

cond.false.243:                                   ; preds = %if.then.234
  %167 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB244 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %167, i32 0, i32 35
  %168 = load i32, i32* %qpB244, align 4
  %169 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset245 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %169, i32 0, i32 36
  %170 = load i32, i32* %qpBRSOffset245, align 4
  %add246 = add nsw i32 %168, %170
  %cmp247 = icmp sgt i32 %add246, 51
  br i1 %cmp247, label %cond.true.249, label %cond.false.250

cond.true.249:                                    ; preds = %cond.false.243
  br label %cond.end.254

cond.false.250:                                   ; preds = %cond.false.243
  %171 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB251 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %171, i32 0, i32 35
  %172 = load i32, i32* %qpB251, align 4
  %173 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset252 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %173, i32 0, i32 36
  %174 = load i32, i32* %qpBRSOffset252, align 4
  %add253 = add nsw i32 %172, %174
  br label %cond.end.254

cond.end.254:                                     ; preds = %cond.false.250, %cond.true.249
  %cond255 = phi i32 [ 51, %cond.true.249 ], [ %add253, %cond.false.250 ]
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.end.254, %cond.true.242
  %cond257 = phi i32 [ 0, %cond.true.242 ], [ %cond255, %cond.end.254 ]
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay235, i32 %160, i32 %162, i32 %cond257)
  br label %if.end.265

if.else.259:                                      ; preds = %for.end.231
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %arraydecay260 = getelementptr inbounds [80 x i8], [80 x i8]* %seqtype, i32 0, i32 0
  %176 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0261 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %176, i32 0, i32 3
  %177 = load i32, i32* %qp0261, align 4
  %178 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN262 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %178, i32 0, i32 4
  %179 = load i32, i32* %qpN262, align 4
  %180 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB263 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %180, i32 0, i32 35
  %181 = load i32, i32* %qpB263, align 4
  %call264 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0), i8* %arraydecay260, i32 %177, i32 %179, i32 %181)
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.259, %cond.end.256
  br label %if.end.282

if.else.266:                                      ; preds = %if.else.155
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe267 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 34
  %183 = load i32, i32* %successive_Bframe267, align 4
  %cmp268 = icmp eq i32 %183, 0
  br i1 %cmp268, label %land.lhs.true.270, label %if.else.277

land.lhs.true.270:                                ; preds = %if.else.266
  %184 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %184, i32 0, i32 43
  %185 = load i32, i32* %sp_periodicity, align 4
  %cmp271 = icmp eq i32 %185, 0
  br i1 %cmp271, label %if.then.273, label %if.else.277

if.then.273:                                      ; preds = %land.lhs.true.270
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %187 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0274 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %187, i32 0, i32 3
  %188 = load i32, i32* %qp0274, align 4
  %189 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN275 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %189, i32 0, i32 4
  %190 = load i32, i32* %qpN275, align 4
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i32 0, i32 0), i32 %188, i32 %190)
  br label %if.end.281

if.else.277:                                      ; preds = %land.lhs.true.270, %if.else.266
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %192 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0278 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %192, i32 0, i32 3
  %193 = load i32, i32* %qp0278, align 4
  %194 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN279 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %194, i32 0, i32 4
  %195 = load i32, i32* %qpN279, align 4
  %196 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %196, i32 0, i32 44
  %197 = load i32, i32* %qpsp, align 4
  %198 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp_pred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %198, i32 0, i32 45
  %199 = load i32, i32* %qpsp_pred, align 4
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.50, i32 0, i32 0), i32 %193, i32 %195, i32 %197, i32 %199)
  br label %if.end.281

if.end.281:                                       ; preds = %if.else.277, %if.then.273
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.end.265
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.then.153
  %200 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %200, i32 0, i32 59
  %201 = load i32, i32* %symbol_mode, align 4
  %cmp284 = icmp eq i32 %201, 0
  br i1 %cmp284, label %if.then.286, label %if.else.288

if.then.286:                                      ; preds = %if.end.283
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.290

if.else.288:                                      ; preds = %if.end.283
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.290

if.end.290:                                       ; preds = %if.else.288, %if.then.286
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %205 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %205, i32 0, i32 0
  %206 = load i32, i32* %ProfileIDC, align 4
  %207 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LevelIDC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %207, i32 0, i32 1
  %208 = load i32, i32* %LevelIDC, align 4
  %call291 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.53, i32 0, i32 0), i32 %206, i32 %208)
  %209 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %209, i32 0, i32 78
  %210 = load i32, i32* %full_search, align 4
  %cmp292 = icmp eq i32 %210, 2
  br i1 %cmp292, label %if.then.294, label %if.else.296

if.then.294:                                      ; preds = %if.end.290
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.305

if.else.296:                                      ; preds = %if.end.290
  %212 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search297 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %212, i32 0, i32 78
  %213 = load i32, i32* %full_search297, align 4
  %cmp298 = icmp eq i32 %213, 1
  br i1 %cmp298, label %if.then.300, label %if.else.302

if.then.300:                                      ; preds = %if.else.296
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.304

if.else.302:                                      ; preds = %if.else.296
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call303 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.304

if.end.304:                                       ; preds = %if.else.302, %if.then.300
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %if.then.294
  %216 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %216, i32 0, i32 85
  %217 = load i32, i32* %rdopt, align 4
  %tobool306 = icmp ne i32 %217, 0
  br i1 %tobool306, label %if.then.307, label %if.else.309

if.then.307:                                      ; preds = %if.end.305
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call308 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.311

if.else.309:                                      ; preds = %if.end.305
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call310 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.311

if.end.311:                                       ; preds = %if.else.309, %if.then.307
  %220 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %220, i32 0, i32 61
  %221 = load i32, i32* %partition_mode, align 4
  switch i32 %221, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.313
  ]

sw.bb:                                            ; preds = %if.end.311
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %222, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.59, i32 0, i32 0))
  br label %sw.epilog

sw.bb.313:                                        ; preds = %if.end.311
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.311
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.61, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.313, %sw.bb
  %225 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %225, i32 0, i32 60
  %226 = load i32, i32* %of_mode, align 4
  switch i32 %226, label %sw.default.320 [
    i32 0, label %sw.bb.316
    i32 1, label %sw.bb.318
  ]

sw.bb.316:                                        ; preds = %sw.epilog
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call317 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %227, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.62, i32 0, i32 0))
  br label %sw.epilog.322

sw.bb.318:                                        ; preds = %sw.epilog
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %228, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.63, i32 0, i32 0))
  br label %sw.epilog.322

sw.default.320:                                   ; preds = %sw.epilog
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call321 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.64, i32 0, i32 0))
  br label %sw.epilog.322

sw.epilog.322:                                    ; preds = %sw.default.320, %sw.bb.318, %sw.bb.316
  %230 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %residue_transform_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %230, i32 0, i32 143
  %231 = load i32, i32* %residue_transform_flag, align 4
  %tobool323 = icmp ne i32 %231, 0
  br i1 %tobool323, label %if.then.324, label %if.else.326

if.then.324:                                      ; preds = %sw.epilog.322
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call325 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.328

if.else.326:                                      ; preds = %sw.epilog.322
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %233, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.328

if.end.328:                                       ; preds = %if.else.326, %if.then.324
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call329 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.67, i32 0, i32 0))
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %236 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %236, i32 0, i32 9
  %237 = load float, float* %snr_ya, align 4
  %conv330 = fpext float %237 to double
  %call331 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.68, i32 0, i32 0), double %conv330)
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %239 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %239, i32 0, i32 10
  %240 = load float, float* %snr_ua, align 4
  %conv332 = fpext float %240 to double
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %238, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i32 0, i32 0), double %conv332)
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %242 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %242, i32 0, i32 11
  %243 = load float, float* %snr_va, align 4
  %conv334 = fpext float %243 to double
  %call335 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.70, i32 0, i32 0), double %conv334)
  %244 = load i32, i32* @Bframe_ctr, align 4
  %cmp336 = icmp ne i32 %244, 0
  br i1 %cmp336, label %if.then.338, label %if.else.370

if.then.338:                                      ; preds = %if.end.328
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %246 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P339 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %246, i32 0, i32 15
  %247 = load i32, i32* %bit_ctr_P339, align 4
  %248 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I340 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %248, i32 0, i32 14
  %249 = load i32, i32* %bit_ctr_I340, align 4
  %add341 = add nsw i32 %247, %249
  %250 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_B342 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %250, i32 0, i32 16
  %251 = load i32, i32* %bit_ctr_B342, align 4
  %add343 = add nsw i32 %add341, %251
  %252 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %252, i32 0, i32 32
  %253 = load i32, i32* %bit_ctr_parametersets, align 4
  %add344 = add nsw i32 %add343, %253
  store i32 %add344, i32* %total_bits, align 4
  %254 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I345 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %254, i32 0, i32 14
  %255 = load i32, i32* %bit_ctr_I345, align 4
  %256 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P346 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %256, i32 0, i32 15
  %257 = load i32, i32* %bit_ctr_P346, align 4
  %258 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_B347 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %258, i32 0, i32 16
  %259 = load i32, i32* %bit_ctr_B347, align 4
  %260 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets348 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %260, i32 0, i32 32
  %261 = load i32, i32* %bit_ctr_parametersets348, align 4
  %call349 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.71, i32 0, i32 0), i32 %add344, i32 %255, i32 %257, i32 %259, i32 %261)
  %262 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate350 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %262, i32 0, i32 12
  %263 = load float, float* %framerate350, align 4
  %264 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe351 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %264, i32 0, i32 34
  %265 = load i32, i32* %successive_Bframe351, align 4
  %add352 = add nsw i32 %265, 1
  %conv353 = sitofp i32 %add352 to float
  %mul354 = fmul float %263, %conv353
  %266 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd355 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %266, i32 0, i32 5
  %267 = load i32, i32* %jumpd355, align 4
  %add356 = add nsw i32 %267, 1
  %conv357 = sitofp i32 %add356 to float
  %div358 = fdiv float %mul354, %conv357
  store float %div358, float* %frame_rate, align 4
  %268 = load i32, i32* %total_bits, align 4
  %conv359 = sitofp i32 %268 to float
  %269 = load float, float* %frame_rate, align 4
  %mul360 = fmul float %conv359, %269
  %270 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames361 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %270, i32 0, i32 2
  %271 = load i32, i32* %no_frames361, align 4
  %272 = load i32, i32* @Bframe_ctr, align 4
  %add362 = add nsw i32 %271, %272
  %conv363 = sitofp i32 %add362 to float
  %div364 = fdiv float %mul360, %conv363
  %273 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %273, i32 0, i32 3
  store float %div364, float* %bitrate, align 4
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %275 = load float, float* %frame_rate, align 4
  %conv365 = fpext float %275 to double
  %276 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate366 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %276, i32 0, i32 3
  %277 = load float, float* %bitrate366, align 4
  %div367 = fdiv float %277, 1.000000e+03
  %conv368 = fpext float %div367 to double
  %call369 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %274, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0), double %conv365, double %conv368)
  br label %if.end.427

if.else.370:                                      ; preds = %if.end.328
  %278 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity371 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %278, i32 0, i32 43
  %279 = load i32, i32* %sp_periodicity371, align 4
  %cmp372 = icmp eq i32 %279, 0
  br i1 %cmp372, label %if.then.374, label %if.else.400

if.then.374:                                      ; preds = %if.else.370
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %281 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P375 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %281, i32 0, i32 15
  %282 = load i32, i32* %bit_ctr_P375, align 4
  %283 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I376 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %283, i32 0, i32 14
  %284 = load i32, i32* %bit_ctr_I376, align 4
  %add377 = add nsw i32 %282, %284
  %285 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets378 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %285, i32 0, i32 32
  %286 = load i32, i32* %bit_ctr_parametersets378, align 4
  %add379 = add nsw i32 %add377, %286
  store i32 %add379, i32* %total_bits, align 4
  %287 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I380 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %287, i32 0, i32 14
  %288 = load i32, i32* %bit_ctr_I380, align 4
  %289 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P381 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %289, i32 0, i32 15
  %290 = load i32, i32* %bit_ctr_P381, align 4
  %291 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets382 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %291, i32 0, i32 32
  %292 = load i32, i32* %bit_ctr_parametersets382, align 4
  %call383 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.73, i32 0, i32 0), i32 %add379, i32 %288, i32 %290, i32 %292)
  %293 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate384 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %293, i32 0, i32 12
  %294 = load float, float* %framerate384, align 4
  %295 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd385 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %295, i32 0, i32 5
  %296 = load i32, i32* %jumpd385, align 4
  %add386 = add nsw i32 %296, 1
  %conv387 = sitofp i32 %add386 to float
  %div388 = fdiv float %294, %conv387
  store float %div388, float* %frame_rate, align 4
  %297 = load i32, i32* %total_bits, align 4
  %conv389 = sitofp i32 %297 to float
  %298 = load float, float* %frame_rate, align 4
  %mul390 = fmul float %conv389, %298
  %299 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames391 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %299, i32 0, i32 2
  %300 = load i32, i32* %no_frames391, align 4
  %conv392 = sitofp i32 %300 to float
  %div393 = fdiv float %mul390, %conv392
  %301 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate394 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %301, i32 0, i32 3
  store float %div393, float* %bitrate394, align 4
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %303 = load float, float* %frame_rate, align 4
  %conv395 = fpext float %303 to double
  %304 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate396 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %304, i32 0, i32 3
  %305 = load float, float* %bitrate396, align 4
  %div397 = fdiv float %305, 1.000000e+03
  %conv398 = fpext float %div397 to double
  %call399 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %302, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0), double %conv395, double %conv398)
  br label %if.end.426

if.else.400:                                      ; preds = %if.else.370
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %307 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P401 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %307, i32 0, i32 15
  %308 = load i32, i32* %bit_ctr_P401, align 4
  %309 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I402 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %309, i32 0, i32 14
  %310 = load i32, i32* %bit_ctr_I402, align 4
  %add403 = add nsw i32 %308, %310
  %311 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets404 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %311, i32 0, i32 32
  %312 = load i32, i32* %bit_ctr_parametersets404, align 4
  %add405 = add nsw i32 %add403, %312
  store i32 %add405, i32* %total_bits, align 4
  %313 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I406 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %313, i32 0, i32 14
  %314 = load i32, i32* %bit_ctr_I406, align 4
  %315 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P407 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %315, i32 0, i32 15
  %316 = load i32, i32* %bit_ctr_P407, align 4
  %317 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets408 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %317, i32 0, i32 32
  %318 = load i32, i32* %bit_ctr_parametersets408, align 4
  %call409 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %306, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.73, i32 0, i32 0), i32 %add405, i32 %314, i32 %316, i32 %318)
  %319 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate410 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %319, i32 0, i32 12
  %320 = load float, float* %framerate410, align 4
  %321 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd411 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %321, i32 0, i32 5
  %322 = load i32, i32* %jumpd411, align 4
  %add412 = add nsw i32 %322, 1
  %conv413 = sitofp i32 %add412 to float
  %div414 = fdiv float %320, %conv413
  store float %div414, float* %frame_rate, align 4
  %323 = load i32, i32* %total_bits, align 4
  %conv415 = sitofp i32 %323 to float
  %324 = load float, float* %frame_rate, align 4
  %mul416 = fmul float %conv415, %324
  %325 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames417 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %325, i32 0, i32 2
  %326 = load i32, i32* %no_frames417, align 4
  %conv418 = sitofp i32 %326 to float
  %div419 = fdiv float %mul416, %conv418
  %327 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate420 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %327, i32 0, i32 3
  store float %div419, float* %bitrate420, align 4
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %329 = load float, float* %frame_rate, align 4
  %conv421 = fpext float %329 to double
  %330 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bitrate422 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %330, i32 0, i32 3
  %331 = load float, float* %bitrate422, align 4
  %div423 = fdiv float %331, 1.000000e+03
  %conv424 = fpext float %div423 to double
  %call425 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %328, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0), double %conv421, double %conv424)
  br label %if.end.426

if.end.426:                                       ; preds = %if.else.400, %if.then.374
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %if.then.338
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %333 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_emulationprevention = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %333, i32 0, i32 7
  %334 = load i32, i32* %bit_ctr_emulationprevention, align 4
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %332, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i32 0, i32 0), i32 %334)
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %336 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets429 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %336, i32 0, i32 32
  %337 = load i32, i32* %bit_ctr_parametersets429, align 4
  %call430 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %335, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.75, i32 0, i32 0), i32 %337)
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call431 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %338, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.26, i32 0, i32 0))
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call432 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call433 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %340, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  %341 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %341, i32 0, i32 125
  %342 = load i32, i32* %ReportFrameStats, align 4
  %tobool434 = icmp ne i32 %342, 0
  br i1 %tobool434, label %if.then.435, label %if.end.445

if.then.435:                                      ; preds = %if.end.427
  %call436 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call436, %struct._IO_FILE** @p_log, align 8
  %cmp437 = icmp eq %struct._IO_FILE* %call436, null
  br i1 %cmp437, label %if.then.439, label %if.else.441

if.then.439:                                      ; preds = %if.then.435
  %call440 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #4
  br label %if.end.444

if.else.441:                                      ; preds = %if.then.435
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call442 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %343, i8* getelementptr inbounds ([469 x i8], [469 x i8]* @.str.9, i32 0, i32 0))
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** @p_log, align 8
  %call443 = call i32 @fclose(%struct._IO_FILE* %344)
  br label %if.end.444

if.end.444:                                       ; preds = %if.else.441, %if.then.439
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %if.end.427
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @information_init() #0 {
entry:
  %yuv_types = alloca [4 x [10 x i8]], align 16
  %0 = bitcast [4 x [10 x i8]]* %yuv_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([4 x [10 x i8]], [4 x [10 x i8]]* @information_init.yuv_types, i32 0, i32 0, i32 0), i64 40, i32 16, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 26
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %infile, i32 0, i32 0
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.79, i32 0, i32 0), i8* %arraydecay)
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %outfile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 27
  %arraydecay2 = getelementptr inbounds [200 x i8], [200 x i8]* %outfile, i32 0, i32 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.80, i32 0, i32 0), i8* %arraydecay2)
  %3 = load i32, i32* @p_dec, align 4
  %cmp = icmp ne i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReconFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 28
  %arraydecay4 = getelementptr inbounds [200 x i8], [200 x i8]* %ReconFile, i32 0, i32 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.81, i32 0, i32 0), i8* %arraydecay4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 159
  %6 = load i32, i32* %yuv_format, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x [10 x i8]], [4 x [10 x i8]]* %yuv_types, i32 0, i64 %idxprom
  %arrayidx6 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx, i32 0, i64 0
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i32 0, i32 0), i8* %arrayidx6)
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 2
  %8 = load i32, i32* %no_frames, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 34
  %10 = load i32, i32* %successive_Bframe, align 4
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 2
  %12 = load i32, i32* %no_frames8, align 4
  %sub = sub nsw i32 %12, 1
  %mul = mul nsw i32 %10, %sub
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.83, i32 0, i32 0), i32 %8, i32 %mul)
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 91
  %14 = load i32, i32* %PicInterlace, align 4
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 92
  %16 = load i32, i32* %MbInterlace, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.84, i32 0, i32 0), i32 %14, i32 %16)
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 123
  %18 = load i32, i32* %AllowTransform8x8, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.85, i32 0, i32 0), i32 %18)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.26, i32 0, i32 0))
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.86, i32 0, i32 0))
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.26, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @init_orig_buffers() #0 {
entry:
  %memory_size = alloca i32, align 4
  store i32 0, i32* %memory_size, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 15
  %1 = load i32, i32* %height, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4
  %call = call i32 @get_mem2Dpel(i16*** @imgY_org_frm, i32 %1, i32 %3)
  %4 = load i32, i32* %memory_size, align 4
  %add = add nsw i32 %4, %call
  store i32 %add, i32* %memory_size, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 159
  %6 = load i32, i32* %yuv_format, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 16
  %8 = load i32, i32* %height_cr, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 14
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
  %height4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 15
  %16 = load i32, i32* %height4, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 13
  %18 = load i32, i32* %width5, align 4
  %call6 = call i32 @init_top_bot_planes(i16** %14, i32 %16, i32 %18, i16*** @imgY_org_top, i16*** @imgY_org_bot)
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 159
  %20 = load i32, i32* %yuv_format7, align 4
  %cmp8 = icmp ne i32 %20, 0
  br i1 %cmp8, label %if.then.9, label %if.end.33

if.then.9:                                        ; preds = %if.then.3
  %call10 = call noalias i8* @calloc(i64 2, i64 8) #4
  %21 = bitcast i8* %call10 to i16***
  store i16*** %21, i16**** @imgUV_org_top, align 8
  %cmp11 = icmp eq i16*** %21, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  %call14 = call noalias i8* @calloc(i64 2, i64 8) #4
  %22 = bitcast i8* %call14 to i16***
  store i16*** %22, i16**** @imgUV_org_bot, align 8
  %cmp15 = icmp eq i16*** %22, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.88, i32 0, i32 0))
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
  %height_cr20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 16
  %27 = load i32, i32* %height_cr20, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 14
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
  %height_cr27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 16
  %36 = load i32, i32* %height_cr27, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 14
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

; Function Attrs: nounwind uwtable
define i32 @init_global_buffers() #0 {
entry:
  %j = alloca i32, align 4
  %memory_size = alloca i32, align 4
  store i32 0, i32* %memory_size, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 9
  %1 = load i32, i32* %max_num_references, align 4
  %mul = mul nsw i32 2, %1
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul1) #4
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** @last_P_no_frm, align 8
  %cmp = icmp eq i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %3, i32 0, i32 25
  %4 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.13, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 9
  %6 = load i32, i32* %max_num_references4, align 4
  %mul5 = mul nsw i32 4, %6
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 4
  %call8 = call noalias i8* @malloc(i64 %mul7) #4
  %7 = bitcast i8* %call8 to i32*
  store i32* %7, i32** @last_P_no_fld, align 8
  %cmp9 = icmp eq i32* %7, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.3
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %call14 = call i32 @init_orig_buffers()
  %8 = load i32, i32* %memory_size, align 4
  %add = add nsw i32 %8, %call14
  store i32 %add, i32* %memory_size, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 46
  %10 = load i32, i32* %WeightedPrediction, align 4
  %tobool15 = icmp ne i32 %10, 0
  br i1 %tobool15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 47
  %12 = load i32, i32* %WeightedBiprediction, align 4
  %tobool16 = icmp ne i32 %12, 0
  br i1 %tobool16, label %if.then.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 15
  %14 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool18 = icmp ne i32 %14, 0
  br i1 %tobool18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false, %if.end.13
  %call20 = call i32 @get_mem3Dint(i32**** @wp_weight, i32 6, i32 15, i32 3)
  %15 = load i32, i32* %memory_size, align 4
  %add21 = add nsw i32 %15, %call20
  store i32 %add21, i32* %memory_size, align 4
  %call22 = call i32 @get_mem3Dint(i32**** @wp_offset, i32 6, i32 15, i32 3)
  %16 = load i32, i32* %memory_size, align 4
  %add23 = add nsw i32 %16, %call22
  store i32 %add23, i32* %memory_size, align 4
  %call24 = call i32 @get_mem4Dint(i32***** @wbp_weight, i32 6, i32 15, i32 15, i32 3)
  %17 = load i32, i32* %memory_size, align 4
  %add25 = add nsw i32 %17, %call24
  store i32 %add25, i32* %memory_size, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.19, %lor.lhs.false.17
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 34
  %19 = load i32, i32* %successive_Bframe, align 4
  %cmp27 = icmp ne i32 %19, 0
  br i1 %cmp27, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.end.26
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 54
  %21 = load i32, i32* %BRefPictures, align 4
  %cmp30 = icmp sgt i32 %21, 0
  br i1 %cmp30, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %lor.lhs.false.29, %if.end.26
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 13
  %23 = load i32, i32* %width, align 4
  %div = sdiv i32 %23, 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 15
  %25 = load i32, i32* %height, align 4
  %div33 = sdiv i32 %25, 4
  %call34 = call i32 @get_mem3Dshort(i16**** @direct_ref_idx, i32 2, i32 %div, i32 %div33)
  %26 = load i32, i32* %memory_size, align 4
  %add35 = add nsw i32 %26, %call34
  store i32 %add35, i32* %memory_size, align 4
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 13
  %28 = load i32, i32* %width36, align 4
  %div37 = sdiv i32 %28, 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 15
  %30 = load i32, i32* %height38, align 4
  %div39 = sdiv i32 %30, 4
  %call40 = call i32 @get_mem2Dshort(i16*** @direct_pdir, i32 %div37, i32 %div39)
  %31 = load i32, i32* %memory_size, align 4
  %add41 = add nsw i32 %31, %call40
  store i32 %add41, i32* %memory_size, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.32, %lor.lhs.false.29
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 15
  %33 = load i32, i32* %height43, align 4
  %add44 = add nsw i32 %33, 8
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 13
  %35 = load i32, i32* %width45, align 4
  %add46 = add nsw i32 %35, 8
  %mul47 = mul nsw i32 %add46, 4
  %call48 = call i32 @get_mem2Dint(i32*** @img4Y_tmp, i32 %add44, i32 %mul47)
  %36 = load i32, i32* %memory_size, align 4
  %add49 = add nsw i32 %36, %call48
  store i32 %add49, i32* %memory_size, align 4
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 85
  %38 = load i32, i32* %rdopt, align 4
  %cmp50 = icmp eq i32 %38, 2
  br i1 %cmp50, label %if.then.52, label %if.end.95

if.then.52:                                       ; preds = %if.end.42
  %39 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %39, i32 0, i32 0
  %call53 = call i32 @get_mem2Dint(i32*** %resY, i32 16, i32 16)
  %40 = load i32, i32* %memory_size, align 4
  %add54 = add nsw i32 %40, %call53
  store i32 %add54, i32* %memory_size, align 4
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 97
  %42 = load i32, i32* %NoOfDecoders, align 4
  %conv55 = sext i32 %42 to i64
  %call56 = call noalias i8* @calloc(i64 %conv55, i64 8) #4
  %43 = bitcast i8* %call56 to i16****
  %44 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref = getelementptr inbounds %struct.Decoders, %struct.Decoders* %44, i32 0, i32 2
  store i16**** %43, i16***** %decref, align 8
  %cmp57 = icmp eq i16**** %43, null
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.52
  call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.52
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.60
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders61 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 97
  %47 = load i32, i32* %NoOfDecoders61, align 4
  %cmp62 = icmp slt i32 %45, %47
  br i1 %cmp62, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %j, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref64 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %49, i32 0, i32 2
  %50 = load i16****, i16***** %decref64, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %50, i64 %idxprom
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 9
  %52 = load i32, i32* %max_num_references65, align 4
  %add66 = add nsw i32 %52, 1
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height67 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 15
  %54 = load i32, i32* %height67, align 4
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 13
  %56 = load i32, i32* %width68, align 4
  %call69 = call i32 @get_mem3Dpel(i16**** %arrayidx, i32 %add66, i32 %54, i32 %56)
  %57 = load i32, i32* %memory_size, align 4
  %add70 = add nsw i32 %57, %call69
  store i32 %add70, i32* %memory_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, i32* %j, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock = getelementptr inbounds %struct.Decoders, %struct.Decoders* %59, i32 0, i32 4
  %call71 = call i32 @get_mem2Dpel(i16*** %RefBlock, i32 4, i32 4)
  %60 = load i32, i32* %memory_size, align 4
  %add72 = add nsw i32 %60, %call71
  store i32 %add72, i32* %memory_size, align 4
  %61 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %61, i32 0, i32 1
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders73 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 97
  %63 = load i32, i32* %NoOfDecoders73, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 15
  %65 = load i32, i32* %height74, align 4
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 13
  %67 = load i32, i32* %width75, align 4
  %call76 = call i32 @get_mem3Dpel(i16**** %decY, i32 %63, i32 %65, i32 %67)
  %68 = load i32, i32* %memory_size, align 4
  %add77 = add nsw i32 %68, %call76
  store i32 %add77, i32* %memory_size, align 4
  %69 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best = getelementptr inbounds %struct.Decoders, %struct.Decoders* %69, i32 0, i32 3
  %70 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders78 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %70, i32 0, i32 97
  %71 = load i32, i32* %NoOfDecoders78, align 4
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height79 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 15
  %73 = load i32, i32* %height79, align 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 13
  %75 = load i32, i32* %width80, align 4
  %call81 = call i32 @get_mem3Dpel(i16**** %decY_best, i32 %71, i32 %73, i32 %75)
  %76 = load i32, i32* %memory_size, align 4
  %add82 = add nsw i32 %76, %call81
  store i32 %add82, i32* %memory_size, align 4
  %77 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %status_map = getelementptr inbounds %struct.Decoders, %struct.Decoders* %77, i32 0, i32 5
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height83 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 15
  %79 = load i32, i32* %height83, align 4
  %div84 = sdiv i32 %79, 16
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width85 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 13
  %81 = load i32, i32* %width85, align 4
  %div86 = sdiv i32 %81, 16
  %call87 = call i32 @get_mem2D(i8*** %status_map, i32 %div84, i32 %div86)
  %82 = load i32, i32* %memory_size, align 4
  %add88 = add nsw i32 %82, %call87
  store i32 %add88, i32* %memory_size, align 4
  %83 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode = getelementptr inbounds %struct.Decoders, %struct.Decoders* %83, i32 0, i32 6
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width89 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 13
  %85 = load i32, i32* %width89, align 4
  %div90 = sdiv i32 %85, 16
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height91 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 15
  %87 = load i32, i32* %height91, align 4
  %div92 = sdiv i32 %87, 16
  %call93 = call i32 @get_mem2D(i8*** %dec_mb_mode, i32 %div90, i32 %div92)
  %88 = load i32, i32* %memory_size, align 4
  %add94 = add nsw i32 %88, %call93
  store i32 %add94, i32* %memory_size, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %for.end, %if.end.42
  %89 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %89, i32 0, i32 98
  %90 = load i32, i32* %RestrictRef, align 4
  %tobool96 = icmp ne i32 %90, 0
  br i1 %tobool96, label %if.then.97, label %if.end.108

if.then.97:                                       ; preds = %if.end.95
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height98 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 15
  %92 = load i32, i32* %height98, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 13
  %94 = load i32, i32* %width99, align 4
  %call100 = call i32 @get_mem2D(i8*** @pixel_map, i32 %92, i32 %94)
  %95 = load i32, i32* %memory_size, align 4
  %add101 = add nsw i32 %95, %call100
  store i32 %add101, i32* %memory_size, align 4
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 15
  %97 = load i32, i32* %height102, align 4
  %div103 = sdiv i32 %97, 8
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 13
  %99 = load i32, i32* %width104, align 4
  %div105 = sdiv i32 %99, 8
  %call106 = call i32 @get_mem2D(i8*** @refresh_map, i32 %div103, i32 %div105)
  %100 = load i32, i32* %memory_size, align 4
  %add107 = add nsw i32 %100, %call106
  store i32 %add107, i32* %memory_size, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.97, %if.end.95
  %101 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag109 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %101, i32 0, i32 25
  %102 = load i32, i32* %frame_mbs_only_flag109, align 4
  %tobool110 = icmp ne i32 %102, 0
  br i1 %tobool110, label %if.end.122, label %if.then.111

if.then.111:                                      ; preds = %if.end.108
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 15
  %104 = load i32, i32* %height112, align 4
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width113 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 13
  %106 = load i32, i32* %width113, align 4
  %call114 = call i32 @get_mem2Dpel(i16*** @imgY_com, i32 %104, i32 %106)
  %107 = load i32, i32* %memory_size, align 4
  %add115 = add nsw i32 %107, %call114
  store i32 %add115, i32* %memory_size, align 4
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 159
  %109 = load i32, i32* %yuv_format, align 4
  %cmp116 = icmp ne i32 %109, 0
  br i1 %cmp116, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %if.then.111
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 16
  %111 = load i32, i32* %height_cr, align 4
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 14
  %113 = load i32, i32* %width_cr, align 4
  %call119 = call i32 @get_mem3Dpel(i16**** @imgUV_com, i32 2, i32 %111, i32 %113)
  %114 = load i32, i32* %memory_size, align 4
  %add120 = add nsw i32 %114, %call119
  store i32 %add120, i32* %memory_size, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %if.then.111
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.108
  %115 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FMEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %115, i32 0, i32 134
  %116 = load i32, i32* %FMEnable, align 4
  %tobool123 = icmp ne i32 %116, 0
  br i1 %tobool123, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %if.end.122
  %call125 = call i32 (...) @get_mem_FME()
  %117 = load i32, i32* %memory_size, align 4
  %add126 = add nsw i32 %117, %call125
  store i32 %add126, i32* %memory_size, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %if.end.122
  %118 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %118, i32 0, i32 127
  %119 = load i32, i32* %RCEnable, align 4
  %tobool128 = icmp ne i32 %119, 0
  br i1 %tobool128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.end.127
  call void (...) @rc_alloc()
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %if.end.127
  %120 = load i32, i32* %memory_size, align 4
  ret i32 %120
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #1

declare i32 @get_mem3Dshort(i16****, i32, i32, i32) #1

declare i32 @get_mem2Dshort(i16***, i32, i32) #1

declare i32 @get_mem2D(i8***, i32, i32) #1

declare i32 @get_mem_FME(...) #1

declare void @rc_alloc(...) #1

; Function Attrs: nounwind uwtable
define void @free_orig_planes() #0 {
entry:
  %0 = load i16**, i16*** @imgY_org_frm, align 8
  call void @free_mem2Dpel(i16** %0)
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 159
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
  %yuv_format2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 159
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
  call void @free(i8* %19) #4
  %20 = load i16***, i16**** @imgUV_org_bot, align 8
  %21 = bitcast i16*** %20 to i8*
  call void @free(i8* %21) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.then.1
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  ret void
}

declare void @free_mem2Dpel(i16**) #1

declare void @free_mem3Dpel(i16***, i32) #1

declare void @free_top_bot_planes(i16**, i16**) #1

; Function Attrs: nounwind uwtable
define void @free_global_buffers() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load i32*, i32** @last_P_no_frm, align 8
  %1 = bitcast i32* %0 to i8*
  call void @free(i8* %1) #4
  %2 = load i32*, i32** @last_P_no_fld, align 8
  %3 = bitcast i32* %2 to i8*
  call void @free(i8* %3) #4
  call void @free_orig_planes()
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 46
  %5 = load i32, i32* %WeightedPrediction, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 47
  %7 = load i32, i32* %WeightedBiprediction, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 15
  %9 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %10 = load i32***, i32**** @wp_weight, align 8
  call void @free_mem3Dint(i32*** %10, i32 6)
  %11 = load i32***, i32**** @wp_offset, align 8
  call void @free_mem3Dint(i32*** %11, i32 6)
  %12 = load i32****, i32***** @wbp_weight, align 8
  call void @free_mem4Dint(i32**** %12, i32 6, i32 15)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 34
  %14 = load i32, i32* %successive_Bframe, align 4
  %cmp = icmp ne i32 %14, 0
  br i1 %cmp, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 54
  %16 = load i32, i32* %BRefPictures, align 4
  %cmp5 = icmp sgt i32 %16, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false.4, %if.end
  %17 = load i16***, i16**** @direct_ref_idx, align 8
  call void @free_mem3Dshort(i16*** %17, i32 2)
  %18 = load i16**, i16*** @direct_pdir, align 8
  call void @free_mem2Dshort(i16** %18)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %lor.lhs.false.4
  %19 = load i32**, i32*** @img4Y_tmp, align 8
  call void @free_mem2Dint(i32** %19)
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 25
  %21 = load i32**, i32*** %ipredmode, align 8
  call void @free_mem2Dint(i32** %21)
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 26
  %23 = load i32**, i32*** %ipredmode8x8, align 8
  call void @free_mem2Dint(i32** %23)
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 51
  %25 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %26 = bitcast %struct.macroblock* %25 to i8*
  call void @free(i8* %26) #4
  %27 = load i32**, i32*** getelementptr inbounds (%struct.RD_DATA, %struct.RD_DATA* @rddata_top_frame_mb, i32 0, i32 10), align 8
  call void @free_mem2Dint(i32** %27)
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 24
  %29 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool8 = icmp ne i32 %29, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 54
  %31 = load i32*, i32** %intra_block, align 8
  %32 = bitcast i32* %31 to i8*
  call void @free(i8* %32) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %33 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %33, i32 0, i32 85
  %34 = load i32, i32* %rdopt, align 4
  %cmp11 = icmp eq i32 %34, 2
  br i1 %cmp11, label %if.then.12, label %if.end.54

if.then.12:                                       ; preds = %if.end.10
  %35 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %35, i32 0, i32 0
  %36 = load i32**, i32*** %resY, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %36, i64 0
  %37 = load i32*, i32** %arrayidx, align 8
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* %38) #4
  %39 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY13 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %39, i32 0, i32 0
  %40 = load i32**, i32*** %resY13, align 8
  %41 = bitcast i32** %40 to i8*
  call void @free(i8* %41) #4
  %42 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock = getelementptr inbounds %struct.Decoders, %struct.Decoders* %42, i32 0, i32 4
  %43 = load i16**, i16*** %RefBlock, align 8
  %arrayidx14 = getelementptr inbounds i16*, i16** %43, i64 0
  %44 = load i16*, i16** %arrayidx14, align 8
  %45 = bitcast i16* %44 to i8*
  call void @free(i8* %45) #4
  %46 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock15 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %46, i32 0, i32 4
  %47 = load i16**, i16*** %RefBlock15, align 8
  %48 = bitcast i16** %47 to i8*
  call void @free(i8* %48) #4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %if.then.12
  %49 = load i32, i32* %j, align 4
  %50 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %50, i32 0, i32 97
  %51 = load i32, i32* %NoOfDecoders, align 4
  %cmp16 = icmp slt i32 %49, %51
  br i1 %cmp16, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  %52 = load i32, i32* %j, align 4
  %idxprom = sext i32 %52 to i64
  %53 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %53, i32 0, i32 1
  %54 = load i16***, i16**** %decY, align 8
  %arrayidx17 = getelementptr inbounds i16**, i16*** %54, i64 %idxprom
  %55 = load i16**, i16*** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i16*, i16** %55, i64 0
  %56 = load i16*, i16** %arrayidx18, align 8
  %57 = bitcast i16* %56 to i8*
  call void @free(i8* %57) #4
  %58 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %58 to i64
  %59 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY20 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %59, i32 0, i32 1
  %60 = load i16***, i16**** %decY20, align 8
  %arrayidx21 = getelementptr inbounds i16**, i16*** %60, i64 %idxprom19
  %61 = load i16**, i16*** %arrayidx21, align 8
  %62 = bitcast i16** %61 to i8*
  call void @free(i8* %62) #4
  %63 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %63 to i64
  %64 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best = getelementptr inbounds %struct.Decoders, %struct.Decoders* %64, i32 0, i32 3
  %65 = load i16***, i16**** %decY_best, align 8
  %arrayidx23 = getelementptr inbounds i16**, i16*** %65, i64 %idxprom22
  %66 = load i16**, i16*** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i16*, i16** %66, i64 0
  %67 = load i16*, i16** %arrayidx24, align 8
  %68 = bitcast i16* %67 to i8*
  call void @free(i8* %68) #4
  %69 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %69 to i64
  %70 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best26 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %70, i32 0, i32 3
  %71 = load i16***, i16**** %decY_best26, align 8
  %arrayidx27 = getelementptr inbounds i16**, i16*** %71, i64 %idxprom25
  %72 = load i16**, i16*** %arrayidx27, align 8
  %73 = bitcast i16** %72 to i8*
  call void @free(i8* %73) #4
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body
  %74 = load i32, i32* %i, align 4
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 9
  %76 = load i32, i32* %max_num_references, align 4
  %add = add nsw i32 %76, 1
  %cmp29 = icmp slt i32 %74, %add
  br i1 %cmp29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %77 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %77 to i64
  %78 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %78 to i64
  %79 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref = getelementptr inbounds %struct.Decoders, %struct.Decoders* %79, i32 0, i32 2
  %80 = load i16****, i16***** %decref, align 8
  %arrayidx33 = getelementptr inbounds i16***, i16**** %80, i64 %idxprom32
  %81 = load i16***, i16**** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16**, i16*** %81, i64 %idxprom31
  %82 = load i16**, i16*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16*, i16** %82, i64 0
  %83 = load i16*, i16** %arrayidx35, align 8
  %84 = bitcast i16* %83 to i8*
  call void @free(i8* %84) #4
  %85 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %85 to i64
  %86 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %86 to i64
  %87 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref38 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %87, i32 0, i32 2
  %88 = load i16****, i16***** %decref38, align 8
  %arrayidx39 = getelementptr inbounds i16***, i16**** %88, i64 %idxprom37
  %89 = load i16***, i16**** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i16**, i16*** %89, i64 %idxprom36
  %90 = load i16**, i16*** %arrayidx40, align 8
  %91 = bitcast i16** %90 to i8*
  call void @free(i8* %91) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %92 = load i32, i32* %i, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %93 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %93 to i64
  %94 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref42 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %94, i32 0, i32 2
  %95 = load i16****, i16***** %decref42, align 8
  %arrayidx43 = getelementptr inbounds i16***, i16**** %95, i64 %idxprom41
  %96 = load i16***, i16**** %arrayidx43, align 8
  %97 = bitcast i16*** %96 to i8*
  call void @free(i8* %97) #4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %98 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %98, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  %99 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY47 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %99, i32 0, i32 1
  %100 = load i16***, i16**** %decY47, align 8
  %101 = bitcast i16*** %100 to i8*
  call void @free(i8* %101) #4
  %102 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best48 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %102, i32 0, i32 3
  %103 = load i16***, i16**** %decY_best48, align 8
  %104 = bitcast i16*** %103 to i8*
  call void @free(i8* %104) #4
  %105 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref49 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %105, i32 0, i32 2
  %106 = load i16****, i16***** %decref49, align 8
  %107 = bitcast i16**** %106 to i8*
  call void @free(i8* %107) #4
  %108 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %status_map = getelementptr inbounds %struct.Decoders, %struct.Decoders* %108, i32 0, i32 5
  %109 = load i8**, i8*** %status_map, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %109, i64 0
  %110 = load i8*, i8** %arrayidx50, align 8
  call void @free(i8* %110) #4
  %111 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %status_map51 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %111, i32 0, i32 5
  %112 = load i8**, i8*** %status_map51, align 8
  %113 = bitcast i8** %112 to i8*
  call void @free(i8* %113) #4
  %114 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode = getelementptr inbounds %struct.Decoders, %struct.Decoders* %114, i32 0, i32 6
  %115 = load i8**, i8*** %dec_mb_mode, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %115, i64 0
  %116 = load i8*, i8** %arrayidx52, align 8
  call void @free(i8* %116) #4
  %117 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode53 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %117, i32 0, i32 6
  %118 = load i8**, i8*** %dec_mb_mode53, align 8
  %119 = bitcast i8** %118 to i8*
  call void @free(i8* %119) #4
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.46, %if.end.10
  %120 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %120, i32 0, i32 98
  %121 = load i32, i32* %RestrictRef, align 4
  %tobool55 = icmp ne i32 %121, 0
  br i1 %tobool55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.54
  %122 = load i8**, i8*** @pixel_map, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %122, i64 0
  %123 = load i8*, i8** %arrayidx57, align 8
  call void @free(i8* %123) #4
  %124 = load i8**, i8*** @pixel_map, align 8
  %125 = bitcast i8** %124 to i8*
  call void @free(i8* %125) #4
  %126 = load i8**, i8*** @refresh_map, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %126, i64 0
  %127 = load i8*, i8** %arrayidx58, align 8
  call void @free(i8* %127) #4
  %128 = load i8**, i8*** @refresh_map, align 8
  %129 = bitcast i8** %128 to i8*
  call void @free(i8* %129) #4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.end.54
  %130 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %130, i32 0, i32 25
  %131 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool60 = icmp ne i32 %131, 0
  br i1 %tobool60, label %if.end.65, label %if.then.61

if.then.61:                                       ; preds = %if.end.59
  %132 = load i16**, i16*** @imgY_com, align 8
  call void @free_mem2Dpel(i16** %132)
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 159
  %134 = load i32, i32* %yuv_format, align 4
  %cmp62 = icmp ne i32 %134, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.61
  %135 = load i16***, i16**** @imgUV_com, align 8
  call void @free_mem3Dpel(i16*** %135, i32 2)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.59
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 28
  %137 = load i32***, i32**** %nz_coeff, align 8
  %138 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %138, i32 0, i32 111
  %139 = load i32, i32* %FrameSizeInMbs, align 4
  call void @free_mem3Dint(i32*** %137, i32 %139)
  %140 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FMEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %140, i32 0, i32 134
  %141 = load i32, i32* %FMEnable, align 4
  %tobool66 = icmp ne i32 %141, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  call void (...) @free_mem_FME()
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.65
  %142 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %142, i32 0, i32 127
  %143 = load i32, i32* %RCEnable, align 4
  %tobool69 = icmp ne i32 %143, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  call void (...) @rc_free()
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.68
  ret void
}

declare void @free_mem3Dint(i32***, i32) #1

declare void @free_mem4Dint(i32****, i32, i32) #1

declare void @free_mem3Dshort(i16***, i32) #1

declare void @free_mem2Dshort(i16**) #1

declare void @free_mem_FME(...) #1

declare void @rc_free(...) #1

; Function Attrs: nounwind uwtable
define void @combine_field() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 15
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
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 25
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
  %imgY8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 25
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
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 159
  %27 = load i32, i32* %yuv_format, align 4
  %cmp13 = icmp ne i32 %27, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.64, %if.then
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 16
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
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 30
  %38 = load i16***, i16**** %imgUV, align 8
  %arrayidx25 = getelementptr inbounds i16**, i16*** %38, i64 0
  %39 = load i16**, i16*** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i16*, i16** %39, i64 %idxprom24
  %40 = load i16*, i16** %arrayidx26, align 8
  %41 = bitcast i16* %40 to i8*
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 14
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
  %imgUV35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 30
  %51 = load i16***, i16**** %imgUV35, align 8
  %arrayidx36 = getelementptr inbounds i16**, i16*** %51, i64 0
  %52 = load i16**, i16*** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16*, i16** %52, i64 %idxprom34
  %53 = load i16*, i16** %arrayidx37, align 8
  %54 = bitcast i16* %53 to i8*
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 14
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
  %imgUV46 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 30
  %64 = load i16***, i16**** %imgUV46, align 8
  %arrayidx47 = getelementptr inbounds i16**, i16*** %64, i64 1
  %65 = load i16**, i16*** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16*, i16** %65, i64 %idxprom45
  %66 = load i16*, i16** %arrayidx48, align 8
  %67 = bitcast i16* %66 to i8*
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 14
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
  %imgUV58 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %76, i32 0, i32 30
  %77 = load i16***, i16**** %imgUV58, align 8
  %arrayidx59 = getelementptr inbounds i16**, i16*** %77, i64 1
  %78 = load i16**, i16*** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %78, i64 %idxprom57
  %79 = load i16*, i16** %arrayidx60, align 8
  %80 = bitcast i16* %79 to i8*
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 14
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
  %NumFrameIn2ndIGOP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 100
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
  %NumFrameIn2ndIGOP12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 100
  %17 = load i32, i32* %NumFrameIn2ndIGOP12, align 4
  %add13 = add nsw i32 %15, %17
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 2
  store i32 %add13, i32* %no_frames14, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nb_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 2
  store i32 0, i32* %nb_references, align 4
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetImgType() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 31
  %1 = load i32, i32* %intra_period, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 0
  %3 = load i32, i32* %number, align 4
  %4 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %3, %4
  %cmp1 = icmp eq i32 %sub, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 6
  store i32 2, i32* %type, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 6
  store i32 0, i32* %type3, align 4
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 43
  %8 = load i32, i32* %sp_periodicity, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.else
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 0
  %10 = load i32, i32* %number5, align 4
  %11 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub6 = sub nsw i32 %10, %11
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 43
  %13 = load i32, i32* %sp_periodicity7, align 4
  %rem = srem i32 %sub6, %13
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 6
  store i32 3, i32* %type10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.2
  br label %if.end.36

if.else.13:                                       ; preds = %entry
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 0
  %16 = load i32, i32* %number14, align 4
  %17 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub15 = sub nsw i32 %16, %17
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 31
  %19 = load i32, i32* %intra_period16, align 4
  %rem17 = srem i32 %sub15, %19
  %cmp18 = icmp eq i32 %rem17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else.13
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 6
  store i32 2, i32* %type20, align 4
  br label %if.end.35

if.else.21:                                       ; preds = %if.else.13
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 6
  store i32 0, i32* %type22, align 4
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 43
  %23 = load i32, i32* %sp_periodicity23, align 4
  %tobool24 = icmp ne i32 %23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %if.else.21
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 0
  %25 = load i32, i32* %number26, align 4
  %26 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub27 = sub nsw i32 %25, %26
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 43
  %28 = load i32, i32* %sp_periodicity28, align 4
  %rem29 = srem i32 %sub27, %28
  %cmp30 = icmp eq i32 %rem29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.25
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 6
  store i32 3, i32* %type32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.then.25
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.else.21
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.19
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.12
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
