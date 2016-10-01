; ModuleID = './MultiSource.Applications.JM/69.lencod.image.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.StatParameters = type { i32, i32, float, float, i64, i64, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, i32*, i32*, i64, i64, i64, float, float, float, [5 x [15 x i64]], [5 x [15 x i64]], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], i32, i32, i32*, i32, i32 }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct.SNRParameters = type { float, float, float, float, float, float, [5 x float], [5 x float], [5 x float], float, float, float, float, float, float, float, float, float, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.rc_quadratic = type { float, float, float, double, double, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, double*, double*, double*, double*, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.bufferingperiod_information_struct = type { i32, [32 x i32], [32 x i32], %struct.Bitstream*, i32 }
%struct.pictiming_information_struct = type { i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.timeb = type { i64, i16, i16, i16 }

@enc_picture = common global %struct.storable_picture* null, align 8
@img = external global %struct.ImageParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@start_frame_no_in_this_IGOP = external global i32, align 4
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@stats = external global %struct.StatParameters*, align 8
@decs = external global %struct.Decoders*, align 8
@encode_one_frame.prev_frame_no = internal global i32 0, align 4
@encode_one_frame.consecutive_non_reference_pictures = internal global i32 0, align 4
@me_time = common global i64 0, align 8
@enc_frame_picture = common global %struct.storable_picture* null, align 8
@enc_frame_picture2 = common global %struct.storable_picture* null, align 8
@enc_frame_picture3 = common global %struct.storable_picture* null, align 8
@frame_ctr = common global [5 x i32] zeroinitializer, align 16
@snr = external global %struct.SNRParameters*, align 8
@sp2_frame_indicator = common global i32 0, align 4
@generic_RC = common global %struct.rc_generic* null, align 8
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@mb_adaptive = common global i32 0, align 4
@quadratic_RC_init = common global %struct.rc_quadratic* null, align 8
@quadratic_RC = common global %struct.rc_quadratic* null, align 8
@generic_RC_init = common global %struct.rc_generic* null, align 8
@updateQP = common global i32 (%struct.rc_quadratic*, i32)* null, align 8
@QP = common global i32 0, align 4
@PicParSet = external global [256 x %struct.pic_parameter_set_rbsp_t*], align 16
@frame_pic_1 = common global %struct.Picture* null, align 8
@si_frame_indicator = common global i32 0, align 4
@frame_pic_si = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@key_frame = common global i32 0, align 4
@imgY_tmp = common global i16** null, align 8
@imgUV_tmp = common global [2 x i16**] zeroinitializer, align 16
@redundant_coding = common global i32 0, align 4
@tot_time = common global i64 0, align 8
@enc_bottom_picture = common global %struct.storable_picture* null, align 8
@total_frame_buffer = external global i64, align 8
@Bit_Buffer = common global i64* null, align 8
@frame_no = common global i32 0, align 4
@.str = private unnamed_addr constant [137 x i8] c"POC type 2 cannot be applied for the coding pattern where the encoding /decoding order of pictures are different from the output order.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Completed Encoding Frame %05d.\0D\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@enc_top_picture = common global %struct.storable_picture* null, align 8
@nextP_tr_fld = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"alloc_storable_picture: s->imgY_sub\00", align 1
@rdopt = common global %struct.RD_DATA* null, align 8
@.str.3 = private unnamed_addr constant [110 x i8] c"Source picture has higher bit depth than imgpel data type. Please recompile with larger data type for imgpel.\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@number_sp2_frames = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Fatal: cannot open SP output file '%s', exit (-1)\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@lrec = common global i32** null, align 8
@lrec_uv = common global i32*** null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Fatal: cannot open SP input file '%s', exit (-1)\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Fatal: cannot seek in SP input file, exit (-1)\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Fatal: cannot read in SP input file, exit (-1)\0A\00", align 1
@color_formats = common global i32 0, align 4
@frame_pic = common global %struct.Picture* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@imgY_sub_tmp = common global i32** null, align 8
@PicPos = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i64 0, align 8
@dsr_new_search_range = common global i32 0, align 4
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
@nextP_tr_frm = common global i32 0, align 4
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
@giRDOpt_B8OnlyFlag = common global i32 0, align 4
@frameNuminGOP = common global i32 0, align 4
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
@height_pad = common global i32 0, align 4
@width_pad = common global i32 0, align 4
@height_pad_cr = common global i32 0, align 4
@width_pad_cr = common global i32 0, align 4
@seiHasBufferingPeriod_info = common global i32 0, align 4
@seiBufferingPeriod = common global %struct.bufferingperiod_information_struct zeroinitializer, align 8
@seiHasPicTiming_info = common global i32 0, align 4
@seiPicTiming = common global %struct.pictiming_information_struct zeroinitializer, align 8
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@delta_qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@generic_RC_best = common global %struct.rc_generic* null, align 8
@quadratic_RC_best = common global %struct.rc_quadratic* null, align 8
@last_P_no = common global i32* null, align 8
@last_P_no_frm = common global i32* null, align 8
@last_P_no_fld = common global i32* null, align 8
@start_tr_in_this_IGOP = external global i32, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"%04d(NVB)%8d \0A\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"%04d(IDR)%8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"FLD\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"FRM\00", align 1
@.str.16 = private unnamed_addr constant [78 x i8] c"%04d(IDR)%8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"%04d(I)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [78 x i8] c"%04d(I)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"%04d(SP) %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [78 x i8] c"%04d(SP) %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"%04d(B)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [80 x i8] c"%04d(B)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d %1d %2d %2d  %d   %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"%04d(P)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"    (R)  %8d   %2d %7.3f %7.3f %7.3f %9d %7d    %3s    %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [78 x i8] c"%04d(P)  %8d %1d %2d %7.3f %7.3f %7.3f %9d %7d    %3s %5d   %2d %2d  %d   %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"ReadOneFrame: buf\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"ReadOneFrame: cannot fseek to (Header size) in p_in\00", align 1
@.str.28 = private unnamed_addr constant [67 x i8] c"ReadOneFrame: cannot advance file pointer in p_in beyond frame %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [77 x i8] c"ReadOneFrame: cannot read %d bytes from input file, unexpected EOF?, exiting\00", align 1
@.str.30 = private unnamed_addr constant [75 x i8] c"ReadOneFrame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8\00", align 1

; Function Attrs: nounwind uwtable
define void @MbAffPostProc() #0 {
entry:
  %temp = alloca [32 x [16 x i16]], align 16
  %imgY = alloca i16**, align 8
  %imgUV = alloca i16***, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %uv = alloca i32, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 29
  %1 = load i16**, i16*** %imgY1, align 8
  store i16** %1, i16*** %imgY, align 8
  %2 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 33
  %3 = load i16***, i16**** %imgUV2, align 8
  store i16*** %3, i16**** %imgUV, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 160
  %5 = load i32, i32* %yuv_format, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.102, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 119
  %8 = load i32, i32* %PicSizeInMbs, align 4
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mb_field = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 34
  %11 = load i8*, i8** %mb_field, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  call void @get_mb_pos(i32 %13, i32* %x0, i32* %y0, i32 0)
  store i32 0, i32* %y, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then.4
  %14 = load i32, i32* %y, align 4
  %cmp6 = icmp slt i32 %14, 32
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %y, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [32 x [16 x i16]], [32 x [16 x i16]]* %temp, i32 0, i64 %idxprom8
  %16 = bitcast [16 x i16]* %arrayidx9 to i8*
  %17 = load i32, i32* %x0, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i32, i32* %y0, align 4
  %19 = load i32, i32* %y, align 4
  %add = add nsw i32 %18, %19
  %idxprom11 = sext i32 %add to i64
  %20 = load i16**, i16*** %imgY, align 8
  %arrayidx12 = getelementptr inbounds i16*, i16** %20, i64 %idxprom11
  %21 = load i16*, i16** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %21, i64 %idxprom10
  %22 = bitcast i16* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %22, i64 32, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %23 = load i32, i32* %y, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  store i32 0, i32* %y, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.34, %for.end
  %24 = load i32, i32* %y, align 4
  %cmp15 = icmp slt i32 %24, 16
  br i1 %cmp15, label %for.body.16, label %for.end.36

for.body.16:                                      ; preds = %for.cond.14
  %25 = load i32, i32* %x0, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load i32, i32* %y0, align 4
  %27 = load i32, i32* %y, align 4
  %mul = mul nsw i32 2, %27
  %add18 = add nsw i32 %26, %mul
  %idxprom19 = sext i32 %add18 to i64
  %28 = load i16**, i16*** %imgY, align 8
  %arrayidx20 = getelementptr inbounds i16*, i16** %28, i64 %idxprom19
  %29 = load i16*, i16** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %29, i64 %idxprom17
  %30 = bitcast i16* %arrayidx21 to i8*
  %31 = load i32, i32* %y, align 4
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds [32 x [16 x i16]], [32 x [16 x i16]]* %temp, i32 0, i64 %idxprom22
  %32 = bitcast [16 x i16]* %arrayidx23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %32, i64 32, i32 2, i1 false)
  %33 = load i32, i32* %x0, align 4
  %idxprom24 = sext i32 %33 to i64
  %34 = load i32, i32* %y0, align 4
  %35 = load i32, i32* %y, align 4
  %mul25 = mul nsw i32 2, %35
  %add26 = add nsw i32 %mul25, 1
  %add27 = add nsw i32 %34, %add26
  %idxprom28 = sext i32 %add27 to i64
  %36 = load i16**, i16*** %imgY, align 8
  %arrayidx29 = getelementptr inbounds i16*, i16** %36, i64 %idxprom28
  %37 = load i16*, i16** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %37, i64 %idxprom24
  %38 = bitcast i16* %arrayidx30 to i8*
  %39 = load i32, i32* %y, align 4
  %add31 = add nsw i32 %39, 16
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [32 x [16 x i16]], [32 x [16 x i16]]* %temp, i32 0, i64 %idxprom32
  %40 = bitcast [16 x i16]* %arrayidx33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %40, i64 32, i32 2, i1 false)
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.16
  %41 = load i32, i32* %y, align 4
  %inc35 = add nsw i32 %41, 1
  store i32 %inc35, i32* %y, align 4
  br label %for.cond.14

for.end.36:                                       ; preds = %for.cond.14
  %42 = load i32, i32* %x0, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 162
  %44 = load i32, i32* %mb_cr_size_x, align 4
  %div = sdiv i32 16, %44
  %div37 = sdiv i32 %42, %div
  store i32 %div37, i32* %x0, align 4
  %45 = load i32, i32* %y0, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 163
  %47 = load i32, i32* %mb_cr_size_y, align 4
  %div38 = sdiv i32 16, %47
  %div39 = sdiv i32 %45, %div38
  store i32 %div39, i32* %y0, align 4
  store i32 0, i32* %uv, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.99, %for.end.36
  %48 = load i32, i32* %uv, align 4
  %cmp41 = icmp slt i32 %48, 2
  br i1 %cmp41, label %for.body.42, label %for.end.101

for.body.42:                                      ; preds = %for.cond.40
  store i32 0, i32* %y, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.59, %for.body.42
  %49 = load i32, i32* %y, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 163
  %51 = load i32, i32* %mb_cr_size_y44, align 4
  %mul45 = mul nsw i32 2, %51
  %cmp46 = icmp slt i32 %49, %mul45
  br i1 %cmp46, label %for.body.47, label %for.end.61

for.body.47:                                      ; preds = %for.cond.43
  %52 = load i32, i32* %y, align 4
  %idxprom48 = sext i32 %52 to i64
  %arrayidx49 = getelementptr inbounds [32 x [16 x i16]], [32 x [16 x i16]]* %temp, i32 0, i64 %idxprom48
  %53 = bitcast [16 x i16]* %arrayidx49 to i8*
  %54 = load i32, i32* %x0, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load i32, i32* %y0, align 4
  %56 = load i32, i32* %y, align 4
  %add51 = add nsw i32 %55, %56
  %idxprom52 = sext i32 %add51 to i64
  %57 = load i32, i32* %uv, align 4
  %idxprom53 = sext i32 %57 to i64
  %58 = load i16***, i16**** %imgUV, align 8
  %arrayidx54 = getelementptr inbounds i16**, i16*** %58, i64 %idxprom53
  %59 = load i16**, i16*** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i16*, i16** %59, i64 %idxprom52
  %60 = load i16*, i16** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %60, i64 %idxprom50
  %61 = bitcast i16* %arrayidx56 to i8*
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 162
  %63 = load i32, i32* %mb_cr_size_x57, align 4
  %conv = sext i32 %63 to i64
  %mul58 = mul i64 %conv, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %61, i64 %mul58, i32 2, i1 false)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.47
  %64 = load i32, i32* %y, align 4
  %inc60 = add nsw i32 %64, 1
  store i32 %inc60, i32* %y, align 4
  br label %for.cond.43

for.end.61:                                       ; preds = %for.cond.43
  store i32 0, i32* %y, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.96, %for.end.61
  %65 = load i32, i32* %y, align 4
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 163
  %67 = load i32, i32* %mb_cr_size_y63, align 4
  %cmp64 = icmp slt i32 %65, %67
  br i1 %cmp64, label %for.body.66, label %for.end.98

for.body.66:                                      ; preds = %for.cond.62
  %68 = load i32, i32* %x0, align 4
  %idxprom67 = sext i32 %68 to i64
  %69 = load i32, i32* %y0, align 4
  %70 = load i32, i32* %y, align 4
  %mul68 = mul nsw i32 2, %70
  %add69 = add nsw i32 %69, %mul68
  %idxprom70 = sext i32 %add69 to i64
  %71 = load i32, i32* %uv, align 4
  %idxprom71 = sext i32 %71 to i64
  %72 = load i16***, i16**** %imgUV, align 8
  %arrayidx72 = getelementptr inbounds i16**, i16*** %72, i64 %idxprom71
  %73 = load i16**, i16*** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i16*, i16** %73, i64 %idxprom70
  %74 = load i16*, i16** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %74, i64 %idxprom67
  %75 = bitcast i16* %arrayidx74 to i8*
  %76 = load i32, i32* %y, align 4
  %idxprom75 = sext i32 %76 to i64
  %arrayidx76 = getelementptr inbounds [32 x [16 x i16]], [32 x [16 x i16]]* %temp, i32 0, i64 %idxprom75
  %77 = bitcast [16 x i16]* %arrayidx76 to i8*
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x77 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 162
  %79 = load i32, i32* %mb_cr_size_x77, align 4
  %conv78 = sext i32 %79 to i64
  %mul79 = mul i64 %conv78, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %77, i64 %mul79, i32 2, i1 false)
  %80 = load i32, i32* %x0, align 4
  %idxprom80 = sext i32 %80 to i64
  %81 = load i32, i32* %y0, align 4
  %82 = load i32, i32* %y, align 4
  %mul81 = mul nsw i32 2, %82
  %add82 = add nsw i32 %mul81, 1
  %add83 = add nsw i32 %81, %add82
  %idxprom84 = sext i32 %add83 to i64
  %83 = load i32, i32* %uv, align 4
  %idxprom85 = sext i32 %83 to i64
  %84 = load i16***, i16**** %imgUV, align 8
  %arrayidx86 = getelementptr inbounds i16**, i16*** %84, i64 %idxprom85
  %85 = load i16**, i16*** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i16*, i16** %85, i64 %idxprom84
  %86 = load i16*, i16** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %86, i64 %idxprom80
  %87 = bitcast i16* %arrayidx88 to i8*
  %88 = load i32, i32* %y, align 4
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y89 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 163
  %90 = load i32, i32* %mb_cr_size_y89, align 4
  %add90 = add nsw i32 %88, %90
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds [32 x [16 x i16]], [32 x [16 x i16]]* %temp, i32 0, i64 %idxprom91
  %91 = bitcast [16 x i16]* %arrayidx92 to i8*
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 162
  %93 = load i32, i32* %mb_cr_size_x93, align 4
  %conv94 = sext i32 %93 to i64
  %mul95 = mul i64 %conv94, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %91, i64 %mul95, i32 2, i1 false)
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.66
  %94 = load i32, i32* %y, align 4
  %inc97 = add nsw i32 %94, 1
  store i32 %inc97, i32* %y, align 4
  br label %for.cond.62

for.end.98:                                       ; preds = %for.cond.62
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.end.98
  %95 = load i32, i32* %uv, align 4
  %inc100 = add nsw i32 %95, 1
  store i32 %inc100, i32* %uv, align 4
  br label %for.cond.40

for.end.101:                                      ; preds = %for.cond.40
  br label %if.end

if.end:                                           ; preds = %for.end.101, %for.body
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end
  %96 = load i32, i32* %i, align 4
  %add103 = add nsw i32 %96, 2
  store i32 %add103, i32* %i, align 4
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  br label %if.end.158

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.155, %if.else
  %97 = load i32, i32* %i, align 4
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 119
  %99 = load i32, i32* %PicSizeInMbs106, align 4
  %cmp107 = icmp slt i32 %97, %99
  br i1 %cmp107, label %for.body.109, label %for.end.157

for.body.109:                                     ; preds = %for.cond.105
  %100 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %100 to i64
  %101 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mb_field111 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 34
  %102 = load i8*, i8** %mb_field111, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %102, i64 %idxprom110
  %103 = load i8, i8* %arrayidx112, align 1
  %tobool113 = icmp ne i8 %103, 0
  br i1 %tobool113, label %if.then.114, label %if.end.154

if.then.114:                                      ; preds = %for.body.109
  %104 = load i32, i32* %i, align 4
  call void @get_mb_pos(i32 %104, i32* %x0, i32* %y0, i32 0)
  store i32 0, i32* %y, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.126, %if.then.114
  %105 = load i32, i32* %y, align 4
  %cmp116 = icmp slt i32 %105, 32
  br i1 %cmp116, label %for.body.118, label %for.end.128

for.body.118:                                     ; preds = %for.cond.115
  %106 = load i32, i32* %y, align 4
  %idxprom119 = sext i32 %106 to i64
  %arrayidx120 = getelementptr inbounds [32 x [16 x i16]], [32 x [16 x i16]]* %temp, i32 0, i64 %idxprom119
  %107 = bitcast [16 x i16]* %arrayidx120 to i8*
  %108 = load i32, i32* %x0, align 4
  %idxprom121 = sext i32 %108 to i64
  %109 = load i32, i32* %y0, align 4
  %110 = load i32, i32* %y, align 4
  %add122 = add nsw i32 %109, %110
  %idxprom123 = sext i32 %add122 to i64
  %111 = load i16**, i16*** %imgY, align 8
  %arrayidx124 = getelementptr inbounds i16*, i16** %111, i64 %idxprom123
  %112 = load i16*, i16** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %112, i64 %idxprom121
  %113 = bitcast i16* %arrayidx125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %113, i64 32, i32 2, i1 false)
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.body.118
  %114 = load i32, i32* %y, align 4
  %inc127 = add nsw i32 %114, 1
  store i32 %inc127, i32* %y, align 4
  br label %for.cond.115

for.end.128:                                      ; preds = %for.cond.115
  store i32 0, i32* %y, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.151, %for.end.128
  %115 = load i32, i32* %y, align 4
  %cmp130 = icmp slt i32 %115, 16
  br i1 %cmp130, label %for.body.132, label %for.end.153

for.body.132:                                     ; preds = %for.cond.129
  %116 = load i32, i32* %x0, align 4
  %idxprom133 = sext i32 %116 to i64
  %117 = load i32, i32* %y0, align 4
  %118 = load i32, i32* %y, align 4
  %mul134 = mul nsw i32 2, %118
  %add135 = add nsw i32 %117, %mul134
  %idxprom136 = sext i32 %add135 to i64
  %119 = load i16**, i16*** %imgY, align 8
  %arrayidx137 = getelementptr inbounds i16*, i16** %119, i64 %idxprom136
  %120 = load i16*, i16** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i16, i16* %120, i64 %idxprom133
  %121 = bitcast i16* %arrayidx138 to i8*
  %122 = load i32, i32* %y, align 4
  %idxprom139 = sext i32 %122 to i64
  %arrayidx140 = getelementptr inbounds [32 x [16 x i16]], [32 x [16 x i16]]* %temp, i32 0, i64 %idxprom139
  %123 = bitcast [16 x i16]* %arrayidx140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %123, i64 32, i32 2, i1 false)
  %124 = load i32, i32* %x0, align 4
  %idxprom141 = sext i32 %124 to i64
  %125 = load i32, i32* %y0, align 4
  %126 = load i32, i32* %y, align 4
  %mul142 = mul nsw i32 2, %126
  %add143 = add nsw i32 %mul142, 1
  %add144 = add nsw i32 %125, %add143
  %idxprom145 = sext i32 %add144 to i64
  %127 = load i16**, i16*** %imgY, align 8
  %arrayidx146 = getelementptr inbounds i16*, i16** %127, i64 %idxprom145
  %128 = load i16*, i16** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i16, i16* %128, i64 %idxprom141
  %129 = bitcast i16* %arrayidx147 to i8*
  %130 = load i32, i32* %y, align 4
  %add148 = add nsw i32 %130, 16
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds [32 x [16 x i16]], [32 x [16 x i16]]* %temp, i32 0, i64 %idxprom149
  %131 = bitcast [16 x i16]* %arrayidx150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %131, i64 32, i32 2, i1 false)
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.132
  %132 = load i32, i32* %y, align 4
  %inc152 = add nsw i32 %132, 1
  store i32 %inc152, i32* %y, align 4
  br label %for.cond.129

for.end.153:                                      ; preds = %for.cond.129
  br label %if.end.154

if.end.154:                                       ; preds = %for.end.153, %for.body.109
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %133 = load i32, i32* %i, align 4
  %add156 = add nsw i32 %133, 2
  store i32 %add156, i32* %i, align 4
  br label %for.cond.105

for.end.157:                                      ; preds = %for.cond.105
  br label %if.end.158

if.end.158:                                       ; preds = %for.end.157, %for.end.104
  ret void
}

declare void @get_mb_pos(i32, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @code_a_picture(%struct.Picture* %pic) #0 {
entry:
  %pic.addr = alloca %struct.Picture*, align 8
  %NumberOfCodedMBs = alloca i32, align 4
  %SliceGroup = alloca i32, align 4
  %j = alloca i32, align 4
  %intra_refresh = alloca i32, align 4
  store %struct.Picture* %pic, %struct.Picture** %pic.addr, align 8
  store i32 0, i32* %NumberOfCodedMBs, align 4
  store i32 0, i32* %SliceGroup, align 4
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
  %10 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 59
  store %struct.Picture* %10, %struct.Picture** %currentPicture, align 8
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 0
  %13 = load i32, i32* %number7, align 4
  %14 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub8 = sub nsw i32 %13, %14
  %tobool = icmp ne i32 %sub8, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 6
  %16 = load i32, i32* %structure, align 4
  %cmp9 = icmp eq i32 %16, 2
  br i1 %cmp9, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true, %cond.end
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 32
  %18 = load i32, i32* %idr_enable, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %land.lhs.true.12, label %land.end

land.lhs.true.12:                                 ; preds = %lor.rhs
  %19 = load i32, i32* %intra_refresh, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %land.lhs.true.14, label %land.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 5
  %21 = load i32, i32* %type, align 4
  %cmp15 = icmp eq i32 %21, 2
  br i1 %cmp15, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.14
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 5
  %23 = load i32, i32* %type17, align 4
  %cmp18 = icmp eq i32 %23, 4
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true.14
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 6
  %25 = load i32, i32* %structure20, align 4
  %cmp21 = icmp eq i32 %25, 2
  %lnot = xor i1 %cmp21, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %land.lhs.true.12, %lor.rhs
  %26 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true.12 ], [ false, %lor.rhs ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %27 = phi i1 [ true, %land.lhs.true ], [ %26, %land.end ]
  %lor.ext = zext i1 %27 to i32
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 59
  %29 = load %struct.Picture*, %struct.Picture** %currentPicture23, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %29, i32 0, i32 1
  store i32 %lor.ext, i32* %idr_flag, align 4
  %30 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %no_slices = getelementptr inbounds %struct.Picture, %struct.Picture* %30, i32 0, i32 0
  store i32 0, i32* %no_slices, align 4
  %31 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %31, i32 0, i32 4
  store float 0.000000e+00, float* %distortion_y, align 4
  %32 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %32, i32 0, i32 6
  store float 0.000000e+00, float* %distortion_v, align 4
  %33 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %33, i32 0, i32 5
  store float 0.000000e+00, float* %distortion_u, align 4
  call void @RandomIntraNewPicture()
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 140
  store i32 1, i32* %slice_group_change_cycle, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %36 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %37 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %call = call i32 @FmoInit(%struct.ImageParameters* %35, %struct.pic_parameter_set_rbsp_t* %36, %struct.seq_parameter_set_rbsp_t* %37)
  %call24 = call i32 @FmoStartPicture()
  call void @CalculateQuantParam()
  call void @CalculateOffsetParam()
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 153
  %39 = load i32, i32* %Transform8x8Mode, align 4
  %tobool25 = icmp ne i32 %39, 0
  br i1 %tobool25, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  call void @CalculateQuant8Param()
  call void @CalculateOffset8Param()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  call void @reset_pic_bin_count()
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bytes_in_picture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 170
  store i32 0, i32* %bytes_in_picture, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %41 = load i32, i32* %NumberOfCodedMBs, align 4
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 119
  %43 = load i32, i32* %PicSizeInMbs, align 4
  %cmp26 = icmp ult i32 %41, %43
  br i1 %cmp26, label %while.body, label %while.end.35

while.body:                                       ; preds = %while.cond
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.32, %while.body
  %44 = load i32, i32* %SliceGroup, align 4
  %call29 = call i32 @FmoSliceGroupCompletelyCoded(i32 %44)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  br i1 %lnot31, label %while.body.32, label %while.end

while.body.32:                                    ; preds = %while.cond.28
  %45 = load i32, i32* %SliceGroup, align 4
  %46 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %47 = load i32, i32* %NumberOfCodedMBs, align 4
  %call33 = call i32 @encode_one_slice(i32 %45, %struct.Picture* %46, i32 %47)
  %48 = load i32, i32* %NumberOfCodedMBs, align 4
  %add = add i32 %48, %call33
  store i32 %add, i32* %NumberOfCodedMBs, align 4
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 3
  %50 = load i32, i32* %current_mb_nr, align 4
  call void @FmoSetLastMacroblockInSlice(i32 %50)
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 4
  %52 = load i32, i32* %current_slice_nr, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %current_slice_nr, align 4
  %53 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %53, i32 0, i32 6
  store i32 0, i32* %bit_slice, align 4
  br label %while.cond.28

while.end:                                        ; preds = %while.cond.28
  %54 = load i32, i32* %SliceGroup, align 4
  %inc34 = add nsw i32 %54, 1
  store i32 %inc34, i32* %SliceGroup, align 4
  br label %while.cond

while.end.35:                                     ; preds = %while.cond
  %call36 = call i32 @FmoEndPicture()
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 113
  %56 = load i32, i32* %rdopt, align 4
  %cmp37 = icmp eq i32 %56, 3
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.47

land.lhs.true.39:                                 ; preds = %while.end.35
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 5
  %58 = load i32, i32* %type40, align 4
  %cmp41 = icmp ne i32 %58, 1
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %land.lhs.true.39
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.43
  %59 = load i32, i32* %j, align 4
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 127
  %61 = load i32, i32* %NoOfDecoders, align 4
  %cmp44 = icmp slt i32 %59, %61
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom = sext i32 %63 to i64
  %64 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best = getelementptr inbounds %struct.Decoders, %struct.Decoders* %64, i32 0, i32 3
  %65 = load i16***, i16**** %decY_best, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %65, i64 %idxprom
  %66 = load i16**, i16*** %arrayidx, align 8
  call void @DeblockFrame(%struct.ImageParameters* %62, i16** %66, i16*** null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, i32* %j, align 4
  %inc46 = add nsw i32 %67, 1
  store i32 %inc46, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %land.lhs.true.39, %while.end.35
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %69 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %69, i32 0, i32 29
  %70 = load i16**, i16*** %imgY, align 8
  %71 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 33
  %72 = load i16***, i16**** %imgUV, align 8
  call void @DeblockFrame(%struct.ImageParameters* %68, i16** %70, i16*** %72)
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 100
  %74 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool48 = icmp ne i32 %74, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.47
  call void @MbAffPostProc()
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.47
  ret void
}

declare void @RandomIntraNewPicture() #1

declare i32 @FmoInit(%struct.ImageParameters*, %struct.pic_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t*) #1

declare i32 @FmoStartPicture() #1

declare void @CalculateQuantParam() #1

declare void @CalculateOffsetParam() #1

declare void @CalculateQuant8Param() #1

declare void @CalculateOffset8Param() #1

declare void @reset_pic_bin_count() #1

declare i32 @FmoSliceGroupCompletelyCoded(i32) #1

declare i32 @encode_one_slice(i32, %struct.Picture*, i32) #1

declare void @FmoSetLastMacroblockInSlice(i32) #1

declare i32 @FmoEndPicture() #1

declare void @DeblockFrame(%struct.ImageParameters*, i16**, i16***) #1

; Function Attrs: nounwind uwtable
define i32 @encode_one_frame() #0 {
entry:
  %retval = alloca i32, align 4
  %FrameNumberInFile = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ltime1 = alloca i64, align 8
  %ltime2 = alloca i64, align 8
  %tstruct1 = alloca %struct.timeb, align 8
  %tstruct2 = alloca %struct.timeb, align 8
  %tmp_time = alloca i64, align 8
  %bits_frm = alloca i32, align 4
  %bits_fld = alloca i32, align 4
  %dis_frm = alloca float, align 4
  %dis_frm_y = alloca float, align 4
  %dis_frm_u = alloca float, align 4
  %dis_frm_v = alloca float, align 4
  %dis_fld = alloca float, align 4
  %dis_fld_y = alloca float, align 4
  %dis_fld_u = alloca float, align 4
  %dis_fld_v = alloca float, align 4
  %pic_type = alloca i32, align 4
  %bits = alloca i32, align 4
  %tmpFrameQP = alloca i32, align 4
  store i32 0, i32* %bits_frm, align 4
  store i32 0, i32* %bits_fld, align 4
  store float 0.000000e+00, float* %dis_frm, align 4
  store float 0.000000e+00, float* %dis_frm_y, align 4
  store float 0.000000e+00, float* %dis_frm_u, align 4
  store float 0.000000e+00, float* %dis_frm_v, align 4
  store float 0.000000e+00, float* %dis_fld, align 4
  store float 0.000000e+00, float* %dis_fld_y, align 4
  store float 0.000000e+00, float* %dis_fld_u, align 4
  store float 0.000000e+00, float* %dis_fld_v, align 4
  store i32 0, i32* %bits, align 4
  store i64 0, i64* @me_time, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 67
  store i32 0, i32* %rd_pass, align 4
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture2, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture3, align 8
  %call = call i32 @ftime(%struct.timeb* %tstruct1)
  %call1 = call i64 @time(i64* %ltime1) #2
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 133
  store i32 0, i32* %write_macroblock, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ResendPPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 39
  %3 = load i32, i32* %ResendPPS, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 0
  %5 = load i32, i32* %number, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32 @write_PPS(i32 0, i32 0)
  %6 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %6, i32 0, i32 35
  store i32 %call2, i32* %bit_ctr_parametersets_n, align 4
  %7 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n3 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %7, i32 0, i32 35
  %8 = load i32, i32* %bit_ctr_parametersets_n3, align 4
  %9 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %9, i32 0, i32 34
  %10 = load i32, i32* %bit_ctr_parametersets, align 4
  %add = add nsw i32 %10, %8
  store i32 %add, i32* %bit_ctr_parametersets, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @put_buffer_frame()
  call void @init_frame()
  %call4 = call i32 @CalculateFrameNumber()
  store i32 %call4, i32* %FrameNumberInFile, align 4
  %11 = load i32, i32* %FrameNumberInFile, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile_header = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 24
  %13 = load i32, i32* %infile_header, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 14
  %15 = load i32, i32* %img_width, align 4
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 15
  %17 = load i32, i32* %img_height, align 4
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 175
  %19 = load i32, i32* %img_width_cr, align 4
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 174
  %21 = load i32, i32* %img_height_cr, align 4
  call void @ReadOneFrame(i32 %11, i32 %13, i32 %15, i32 %17, i32 %19, i32 %21)
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 14
  %23 = load i32, i32* %img_width5, align 4
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 15
  %25 = load i32, i32* %img_height6, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 13
  %27 = load i32, i32* %width, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 17
  %29 = load i32, i32* %height, align 4
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 175
  %31 = load i32, i32* %img_width_cr7, align 4
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 174
  %33 = load i32, i32* %img_height_cr8, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 16
  %35 = load i32, i32* %width_cr, align 4
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 20
  %37 = load i32, i32* %height_cr, align 4
  call void @PaddAutoCropBorders(i32 %23, i32 %25, i32 %27, i32 %29, i32 %31, i32 %33, i32 %35, i32 %37)
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 44
  %39 = load i32, i32* %direct_spatial_mv_pred_flag, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %direct_spatial_mv_pred_flag9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 87
  store i32 %39, i32* %direct_spatial_mv_pred_flag9, align 4
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFDisableIdc = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 133
  %42 = load i32, i32* %LFDisableIdc, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFDisableIdc10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 84
  store i32 %42, i32* %LFDisableIdc10, align 4
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 134
  %45 = load i32, i32* %LFAlphaC0Offset, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFAlphaC0Offset11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 85
  store i32 %45, i32* %LFAlphaC0Offset11, align 4
  %47 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFBetaOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %47, i32 0, i32 135
  %48 = load i32, i32* %LFBetaOffset, align 4
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFBetaOffset12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 86
  store i32 %48, i32* %LFBetaOffset12, align 4
  %50 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AdaptiveRounding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %50, i32 0, i32 185
  %51 = load i32, i32* %AdaptiveRounding, align 4
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 98
  store i32 %51, i32* %AdaptiveRounding13, align 4
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 5
  %54 = load i32, i32* %type, align 4
  %idxprom = sext i32 %54 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 %idxprom
  %55 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %arrayidx, align 4
  %56 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %frame_ctr = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %56, i32 0, i32 18
  %57 = load i32, i32* %frame_ctr, align 4
  %inc14 = add nsw i32 %57, 1
  store i32 %inc14, i32* %frame_ctr, align 4
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 5
  %59 = load i32, i32* %type15, align 4
  %cmp16 = icmp eq i32 %59, 3
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 54
  %61 = load i32, i32* %sp2_frame_indicator, align 4
  %tobool18 = icmp ne i32 %61, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  store i32 1, i32* @sp2_frame_indicator, align 4
  call void @read_SP_coefficients()
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  br label %if.end.21

if.else:                                          ; preds = %if.end
  store i32 0, i32* @sp2_frame_indicator, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.end.20
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 121
  %63 = load i32, i32* %PicInterlace, align 4
  %cmp22 = icmp eq i32 %63, 1
  br i1 %cmp22, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %if.end.21
  %64 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %64, i32 0, i32 157
  %65 = load i32, i32* %RCEnable, align 4
  %tobool24 = icmp ne i32 %65, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  %66 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %66, i32 0, i32 1
  store i32 1, i32* %FieldControl, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.23
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 110
  store i32 1, i32* %field_picture, align 4
  %68 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %69 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @field_picture(%struct.Picture* %68, %struct.Picture* %69)
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 66
  store i32 1, i32* %fld_flag, align 4
  br label %if.end.145

if.else.27:                                       ; preds = %if.end.21
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 157
  %72 = load i32, i32* %RCEnable28, align 4
  %tobool29 = icmp ne i32 %72, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.else.27
  %73 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl31 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %73, i32 0, i32 1
  store i32 0, i32* %FieldControl31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.else.27
  %74 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %74, i32 0, i32 122
  %75 = load i32, i32* %MbInterlace, align 4
  %tobool33 = icmp ne i32 %75, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  store i32 1, i32* @mb_adaptive, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.32
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 110
  store i32 0, i32* %field_picture36, align 4
  %77 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable37 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %77, i32 0, i32 157
  %78 = load i32, i32* %RCEnable37, align 4
  %tobool38 = icmp ne i32 %78, 0
  br i1 %tobool38, label %if.then.39, label %if.end.65

if.then.39:                                       ; preds = %if.end.35
  %79 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace40 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %79, i32 0, i32 122
  %80 = load i32, i32* %MbInterlace40, align 4
  %tobool41 = icmp ne i32 %80, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.else.53

land.lhs.true.42:                                 ; preds = %if.then.39
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 160
  %82 = load i32, i32* %basicunit, align 4
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 120
  %84 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp43 = icmp ult i32 %82, %84
  br i1 %cmp43, label %land.lhs.true.44, label %if.else.53

land.lhs.true.44:                                 ; preds = %land.lhs.true.42
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 5
  %86 = load i32, i32* %type45, align 4
  %cmp46 = icmp eq i32 %86, 0
  br i1 %cmp46, label %land.lhs.true.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.44
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 162
  %88 = load i32, i32* %RCUpdateMode, align 4
  %cmp47 = icmp eq i32 %88, 1
  br i1 %cmp47, label %land.lhs.true.48, label %if.else.53

land.lhs.true.48:                                 ; preds = %lor.lhs.false, %land.lhs.true.44
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 0
  %90 = load i32, i32* %number49, align 4
  %91 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %90, %91
  %tobool50 = icmp ne i32 %sub, 0
  br i1 %tobool50, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %land.lhs.true.48
  %92 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit52 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %92, i32 0, i32 160
  %93 = load i32, i32* %basicunit52, align 4
  %shl = shl i32 %93, 1
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 132
  store i32 %shl, i32* %BasicUnit, align 4
  br label %if.end.56

if.else.53:                                       ; preds = %land.lhs.true.48, %lor.lhs.false, %land.lhs.true.42, %if.then.39
  %95 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit54 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %95, i32 0, i32 160
  %96 = load i32, i32* %basicunit54, align 4
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 132
  store i32 %96, i32* %BasicUnit55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.51
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 62
  %99 = load i32, i32* %RDPictureDecision, align 4
  %tobool57 = icmp ne i32 %99, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  %100 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_init, align 8
  %101 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %100, %struct.rc_quadratic* %101)
  %102 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_init, align 8
  %103 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  call void @copy_rc_generic(%struct.rc_generic* %102, %struct.rc_generic* %103)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.56
  %104 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @rc_init_pict(%struct.rc_quadratic* %104, i32 1, i32 0, i32 1, float 1.000000e+00)
  %105 = load i32 (%struct.rc_quadratic*, i32)*, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  %106 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %call60 = call i32 %105(%struct.rc_quadratic* %106, i32 0)
  %107 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %107, i32 0, i32 9
  store i32 %call60, i32* %qp, align 4
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 5
  %109 = load i32, i32* %type61, align 4
  store i32 %109, i32* %pic_type, align 4
  store i32 0, i32* @QP, align 4
  %110 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %110, i32 0, i32 25
  %111 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool62 = icmp ne i32 %111, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.59
  %112 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TopFieldFlag = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %112, i32 0, i32 0
  store i32 0, i32* %TopFieldFlag, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.59
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.35
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 34
  %114 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool66 = icmp ne i32 %114, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  %115 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  store %struct.pic_parameter_set_rbsp_t* %115, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.65
  %116 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  call void @frame_picture(%struct.Picture* %116, i32 0)
  %117 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureIntra = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %117, i32 0, i32 63
  %118 = load i32, i32* %RDPictureIntra, align 4
  %tobool69 = icmp ne i32 %118, 0
  br i1 %tobool69, label %land.lhs.true.73, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %if.end.68
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 5
  %120 = load i32, i32* %type71, align 4
  %cmp72 = icmp ne i32 %120, 2
  br i1 %cmp72, label %land.lhs.true.73, label %if.end.77

land.lhs.true.73:                                 ; preds = %lor.lhs.false.70, %if.end.68
  %121 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision74 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %121, i32 0, i32 62
  %122 = load i32, i32* %RDPictureDecision74, align 4
  %tobool75 = icmp ne i32 %122, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.73
  call void @rdPictureCoding()
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %land.lhs.true.73, %lor.lhs.false.70
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 172
  %124 = load i32, i32* %SumFrameQP, align 4
  store i32 %124, i32* %tmpFrameQP, align 4
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type78 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 5
  %126 = load i32, i32* %type78, align 4
  %cmp79 = icmp eq i32 %126, 3
  br i1 %cmp79, label %land.lhs.true.80, label %if.end.85

land.lhs.true.80:                                 ; preds = %if.end.77
  %127 = load i32, i32* @si_frame_indicator, align 4
  %cmp81 = icmp eq i32 %127, 0
  br i1 %cmp81, label %land.lhs.true.82, label %if.end.85

land.lhs.true.82:                                 ; preds = %land.lhs.true.80
  %128 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %si_frame_indicator = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %128, i32 0, i32 53
  %129 = load i32, i32* %si_frame_indicator, align 4
  %tobool83 = icmp ne i32 %129, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.82
  store i32 1, i32* @si_frame_indicator, align 4
  %130 = load %struct.Picture*, %struct.Picture** @frame_pic_si, align 8
  call void @frame_picture(%struct.Picture* %130, i32 0)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %land.lhs.true.82, %land.lhs.true.80, %if.end.77
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 5
  %132 = load i32, i32* %type86, align 4
  %cmp87 = icmp eq i32 %132, 3
  br i1 %cmp87, label %land.lhs.true.88, label %if.end.91

land.lhs.true.88:                                 ; preds = %if.end.85
  %133 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_output_indicator = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %133, i32 0, i32 55
  %134 = load i32, i32* %sp_output_indicator, align 4
  %tobool89 = icmp ne i32 %134, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %land.lhs.true.88
  call void @output_SP_coefficients()
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %land.lhs.true.88, %if.end.85
  %135 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %135, i32 0, i32 122
  %136 = load i32, i32* %MbInterlace92, align 4
  %tobool93 = icmp ne i32 %136, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.91
  store i32 0, i32* @mb_adaptive, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.end.91
  %137 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace96 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %137, i32 0, i32 121
  %138 = load i32, i32* %PicInterlace96, align 4
  %cmp97 = icmp eq i32 %138, 2
  br i1 %cmp97, label %if.then.98, label %if.else.141

if.then.98:                                       ; preds = %if.end.95
  %139 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable99 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %139, i32 0, i32 157
  %140 = load i32, i32* %RCEnable99, align 4
  %tobool100 = icmp ne i32 %140, 0
  br i1 %tobool100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.then.98
  %141 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl102 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %141, i32 0, i32 1
  store i32 1, i32* %FieldControl102, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.then.98
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 133
  store i32 0, i32* %write_macroblock104, align 4
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 134
  store i32 0, i32* %bot_MB, align 4
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 110
  store i32 1, i32* %field_picture105, align 4
  %145 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %146 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @field_picture(%struct.Picture* %145, %struct.Picture* %146)
  %147 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %147, i32 0, i32 4
  %148 = load float, float* %distortion_y, align 4
  %149 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %149, i32 0, i32 5
  %150 = load float, float* %distortion_u, align 4
  %add106 = fadd float %148, %150
  %151 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %151, i32 0, i32 6
  %152 = load float, float* %distortion_v, align 4
  %add107 = fadd float %add106, %152
  store float %add107, float* %dis_fld, align 4
  %153 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  %distortion_y108 = getelementptr inbounds %struct.Picture, %struct.Picture* %153, i32 0, i32 4
  %154 = load float, float* %distortion_y108, align 4
  %155 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  %distortion_u109 = getelementptr inbounds %struct.Picture, %struct.Picture* %155, i32 0, i32 5
  %156 = load float, float* %distortion_u109, align 4
  %add110 = fadd float %154, %156
  %157 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  %distortion_v111 = getelementptr inbounds %struct.Picture, %struct.Picture* %157, i32 0, i32 6
  %158 = load float, float* %distortion_v111, align 4
  %add112 = fadd float %add110, %158
  store float %add112, float* %dis_frm, align 4
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass113 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 67
  %160 = load i32, i32* %rd_pass113, align 4
  %cmp114 = icmp eq i32 %160, 0
  br i1 %cmp114, label %if.then.115, label %if.else.118

if.then.115:                                      ; preds = %if.end.103
  %161 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  %162 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %163 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %call116 = call i32 @picture_structure_decision(%struct.Picture* %161, %struct.Picture* %162, %struct.Picture* %163)
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag117 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 66
  store i32 %call116, i32* %fld_flag117, align 4
  br label %if.end.128

if.else.118:                                      ; preds = %if.end.103
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 67
  %166 = load i32, i32* %rd_pass119, align 4
  %cmp120 = icmp eq i32 %166, 1
  br i1 %cmp120, label %if.then.121, label %if.else.124

if.then.121:                                      ; preds = %if.else.118
  %167 = load %struct.Picture*, %struct.Picture** @frame_pic_2, align 8
  %168 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %169 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %call122 = call i32 @picture_structure_decision(%struct.Picture* %167, %struct.Picture* %168, %struct.Picture* %169)
  %170 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag123 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %170, i32 0, i32 66
  store i32 %call122, i32* %fld_flag123, align 4
  br label %if.end.127

if.else.124:                                      ; preds = %if.else.118
  %171 = load %struct.Picture*, %struct.Picture** @frame_pic_3, align 8
  %172 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %173 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %call125 = call i32 @picture_structure_decision(%struct.Picture* %171, %struct.Picture* %172, %struct.Picture* %173)
  %174 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %174, i32 0, i32 66
  store i32 %call125, i32* %fld_flag126, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.121
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.115
  %175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %175, i32 0, i32 66
  %176 = load i32, i32* %fld_flag129, align 4
  %tobool130 = icmp ne i32 %176, 0
  br i1 %tobool130, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %if.end.128
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP132 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 172
  %178 = load i32, i32* %SumFrameQP132, align 4
  store i32 %178, i32* %tmpFrameQP, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %if.end.128
  %179 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag134 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %179, i32 0, i32 66
  %180 = load i32, i32* %fld_flag134, align 4
  call void @update_field_frame_contexts(i32 %180)
  %181 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable135 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %181, i32 0, i32 157
  %182 = load i32, i32* %RCEnable135, align 4
  %tobool136 = icmp ne i32 %182, 0
  br i1 %tobool136, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %if.end.133
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag138 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 66
  %184 = load i32, i32* %fld_flag138, align 4
  %tobool139 = icmp ne i32 %184, 0
  %lnot = xor i1 %tobool139, true
  %cond = select i1 %lnot, i32 1, i32 0
  %185 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %185, i32 0, i32 2
  store i32 %cond, i32* %FieldFrame, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %if.end.133
  br label %if.end.143

if.else.141:                                      ; preds = %if.end.95
  %186 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag142 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %186, i32 0, i32 66
  store i32 0, i32* %fld_flag142, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.141, %if.end.140
  %187 = load i32, i32* %tmpFrameQP, align 4
  %188 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %188, i32 0, i32 172
  store i32 %187, i32* %SumFrameQP144, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.143, %if.end.26
  %189 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag146 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %189, i32 0, i32 66
  %190 = load i32, i32* %fld_flag146, align 4
  %tobool147 = icmp ne i32 %190, 0
  br i1 %tobool147, label %if.then.148, label %if.else.150

if.then.148:                                      ; preds = %if.end.145
  %191 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_fld = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %191, i32 0, i32 32
  %192 = load i32, i32* %em_prev_bits_fld, align 4
  %193 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_emulationprevention = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %193, i32 0, i32 8
  %194 = load i32, i32* %bit_ctr_emulationprevention, align 4
  %add149 = add nsw i32 %194, %192
  store i32 %add149, i32* %bit_ctr_emulationprevention, align 4
  br label %if.end.153

if.else.150:                                      ; preds = %if.end.145
  %195 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_frm = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %195, i32 0, i32 31
  %196 = load i32, i32* %em_prev_bits_frm, align 4
  %197 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_emulationprevention151 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %197, i32 0, i32 8
  %198 = load i32, i32* %bit_ctr_emulationprevention151, align 4
  %add152 = add nsw i32 %198, %196
  store i32 %add152, i32* %bit_ctr_emulationprevention151, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.148
  %199 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type154 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %199, i32 0, i32 5
  %200 = load i32, i32* %type154, align 4
  %cmp155 = icmp ne i32 %200, 1
  br i1 %cmp155, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %if.end.153
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag157 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 66
  %202 = load i32, i32* %fld_flag157, align 4
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pstruct_next_P = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 69
  store i32 %202, i32* %pstruct_next_P, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %if.end.153
  %204 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag159 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %204, i32 0, i32 66
  %205 = load i32, i32* %fld_flag159, align 4
  %tobool160 = icmp ne i32 %205, 0
  br i1 %tobool160, label %if.then.161, label %if.else.164

if.then.161:                                      ; preds = %if.end.158
  %206 = load i32, i32* %bits_fld, align 4
  %207 = load float, float* %dis_fld_y, align 4
  %208 = load float, float* %dis_fld_u, align 4
  %209 = load float, float* %dis_fld_v, align 4
  call void @field_mode_buffer(i32 %206, float %207, float %208, float %209)
  %210 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %call162 = call i32 @writeout_picture(%struct.Picture* %210)
  %211 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %call163 = call i32 @writeout_picture(%struct.Picture* %211)
  br label %if.end.192

if.else.164:                                      ; preds = %if.end.158
  %212 = load i32, i32* %bits_frm, align 4
  %213 = load float, float* %dis_frm_y, align 4
  %214 = load float, float* %dis_frm_u, align 4
  %215 = load float, float* %dis_frm_v, align 4
  call void @frame_mode_buffer(i32 %212, float %213, float %214, float %215)
  %216 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision165 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %216, i32 0, i32 62
  %217 = load i32, i32* %RDPictureDecision165, align 4
  %tobool166 = icmp ne i32 %217, 0
  br i1 %tobool166, label %land.lhs.true.167, label %if.else.172

land.lhs.true.167:                                ; preds = %if.else.164
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass168 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 67
  %219 = load i32, i32* %rd_pass168, align 4
  %cmp169 = icmp eq i32 %219, 2
  br i1 %cmp169, label %if.then.170, label %if.else.172

if.then.170:                                      ; preds = %land.lhs.true.167
  %220 = load %struct.Picture*, %struct.Picture** @frame_pic_3, align 8
  %call171 = call i32 @writeout_picture(%struct.Picture* %220)
  br label %if.end.191

if.else.172:                                      ; preds = %land.lhs.true.167, %if.else.164
  %221 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision173 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %221, i32 0, i32 62
  %222 = load i32, i32* %RDPictureDecision173, align 4
  %tobool174 = icmp ne i32 %222, 0
  br i1 %tobool174, label %land.lhs.true.175, label %if.else.180

land.lhs.true.175:                                ; preds = %if.else.172
  %223 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass176 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %223, i32 0, i32 67
  %224 = load i32, i32* %rd_pass176, align 4
  %cmp177 = icmp eq i32 %224, 1
  br i1 %cmp177, label %if.then.178, label %if.else.180

if.then.178:                                      ; preds = %land.lhs.true.175
  %225 = load %struct.Picture*, %struct.Picture** @frame_pic_2, align 8
  %call179 = call i32 @writeout_picture(%struct.Picture* %225)
  br label %if.end.190

if.else.180:                                      ; preds = %land.lhs.true.175, %if.else.172
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 5
  %227 = load i32, i32* %type181, align 4
  %cmp182 = icmp eq i32 %227, 3
  br i1 %cmp182, label %land.lhs.true.183, label %if.else.187

land.lhs.true.183:                                ; preds = %if.else.180
  %228 = load i32, i32* @si_frame_indicator, align 4
  %cmp184 = icmp eq i32 %228, 1
  br i1 %cmp184, label %if.then.185, label %if.else.187

if.then.185:                                      ; preds = %land.lhs.true.183
  %229 = load %struct.Picture*, %struct.Picture** @frame_pic_si, align 8
  %call186 = call i32 @writeout_picture(%struct.Picture* %229)
  store i32 0, i32* @si_frame_indicator, align 4
  br label %if.end.189

if.else.187:                                      ; preds = %land.lhs.true.183, %if.else.180
  %230 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  %call188 = call i32 @writeout_picture(%struct.Picture* %230)
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.187, %if.then.185
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.178
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.170
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.161
  %231 = load %struct.Picture*, %struct.Picture** @frame_pic_si, align 8
  %tobool193 = icmp ne %struct.Picture* %231, null
  br i1 %tobool193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.192
  %232 = load %struct.Picture*, %struct.Picture** @frame_pic_si, align 8
  call void @free_slice_list(%struct.Picture* %232)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %if.end.192
  %233 = load %struct.Picture*, %struct.Picture** @frame_pic_3, align 8
  %tobool196 = icmp ne %struct.Picture* %233, null
  br i1 %tobool196, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %if.end.195
  %234 = load %struct.Picture*, %struct.Picture** @frame_pic_3, align 8
  call void @free_slice_list(%struct.Picture* %234)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.197, %if.end.195
  %235 = load %struct.Picture*, %struct.Picture** @frame_pic_2, align 8
  %tobool199 = icmp ne %struct.Picture* %235, null
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.198
  %236 = load %struct.Picture*, %struct.Picture** @frame_pic_2, align 8
  call void @free_slice_list(%struct.Picture* %236)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %if.end.198
  %237 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  %tobool202 = icmp ne %struct.Picture* %237, null
  br i1 %tobool202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.201
  %238 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  call void @free_slice_list(%struct.Picture* %238)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.203, %if.end.201
  %239 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %tobool205 = icmp ne %struct.Picture* %239, null
  br i1 %tobool205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.204
  %240 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  call void @free_slice_list(%struct.Picture* %240)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %if.end.204
  %241 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %tobool208 = icmp ne %struct.Picture* %241, null
  br i1 %tobool208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.end.207
  %242 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @free_slice_list(%struct.Picture* %242)
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %if.end.207
  %243 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable211 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %243, i32 0, i32 157
  %244 = load i32, i32* %RCEnable211, align 4
  %tobool212 = icmp ne i32 %244, 0
  br i1 %tobool212, label %if.then.213, label %if.end.215

if.then.213:                                      ; preds = %if.end.210
  %245 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %245, i32 0, i32 4
  %246 = load i64, i64* %bit_ctr, align 8
  %247 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %247, i32 0, i32 5
  %248 = load i64, i64* %bit_ctr_n, align 8
  %sub214 = sub nsw i64 %246, %248
  %conv = trunc i64 %sub214 to i32
  store i32 %conv, i32* %bits, align 4
  %249 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %250 = load i32, i32* %bits, align 4
  call void @rc_update_pict_frame(%struct.rc_quadratic* %249, i32 %250)
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.213, %if.end.210
  %251 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace216 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %251, i32 0, i32 121
  %252 = load i32, i32* %PicInterlace216, align 4
  %cmp217 = icmp eq i32 %252, 0
  br i1 %cmp217, label %if.then.219, label %if.end.231

if.then.219:                                      ; preds = %if.end.215
  %253 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %253, i32 0, i32 113
  %254 = load i32, i32* %rdopt, align 4
  %cmp220 = icmp eq i32 %254, 3
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.227

land.lhs.true.222:                                ; preds = %if.then.219
  %255 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type223 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %255, i32 0, i32 5
  %256 = load i32, i32* %type223, align 4
  %cmp224 = icmp ne i32 %256, 1
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %land.lhs.true.222
  call void @UpdateDecoders()
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %land.lhs.true.222, %if.then.219
  %257 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %257, i32 0, i32 128
  %258 = load i32, i32* %RestrictRef, align 4
  %tobool228 = icmp ne i32 %258, 0
  br i1 %tobool228, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.end.227
  call void @UpdatePixelMap()
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.229, %if.end.227
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.215
  %259 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %259, i32 0, i32 156
  %260 = load i32, i32* %Verbose, align 4
  %cmp232 = icmp ne i32 %260, 0
  br i1 %cmp232, label %if.then.234, label %if.else.235

if.then.234:                                      ; preds = %if.end.231
  call void @find_snr()
  br label %if.end.236

if.else.235:                                      ; preds = %if.end.231
  %261 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %261, i32 0, i32 0
  store float 0.000000e+00, float* %snr_y, align 4
  %262 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %262, i32 0, i32 1
  store float 0.000000e+00, float* %snr_u, align 4
  %263 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %263, i32 0, i32 2
  store float 0.000000e+00, float* %snr_v, align 4
  %264 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %264, i32 0, i32 12
  store float 0.000000e+00, float* %sse_y, align 4
  %265 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %265, i32 0, i32 13
  store float 0.000000e+00, float* %sse_u, align 4
  %266 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %266, i32 0, i32 14
  store float 0.000000e+00, float* %sse_v, align 4
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.235, %if.then.234
  %267 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %267, i32 0, i32 149
  %268 = load i32, i32* %redundant_pic_flag, align 4
  %tobool237 = icmp ne i32 %268, 0
  br i1 %tobool237, label %land.lhs.true.238, label %if.end.296

land.lhs.true.238:                                ; preds = %if.end.236
  %269 = load i32, i32* @key_frame, align 4
  %tobool239 = icmp ne i32 %269, 0
  br i1 %tobool239, label %if.then.240, label %if.end.296

if.then.240:                                      ; preds = %land.lhs.true.238
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.258, %if.then.240
  %270 = load i32, i32* %i, align 4
  %271 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width241 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %271, i32 0, i32 13
  %272 = load i32, i32* %width241, align 4
  %cmp242 = icmp slt i32 %270, %272
  br i1 %cmp242, label %for.body, label %for.end.260

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc, %for.body
  %273 = load i32, i32* %j, align 4
  %274 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height245 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %274, i32 0, i32 17
  %275 = load i32, i32* %height245, align 4
  %cmp246 = icmp slt i32 %273, %275
  br i1 %cmp246, label %for.body.248, label %for.end

for.body.248:                                     ; preds = %for.cond.244
  %276 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %276 to i64
  %277 = load i32, i32* %j, align 4
  %idxprom250 = sext i32 %277 to i64
  %278 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %278, i32 0, i32 29
  %279 = load i16**, i16*** %imgY, align 8
  %arrayidx251 = getelementptr inbounds i16*, i16** %279, i64 %idxprom250
  %280 = load i16*, i16** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i16, i16* %280, i64 %idxprom249
  %281 = load i16, i16* %arrayidx252, align 2
  %282 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %282 to i64
  %283 = load i32, i32* %j, align 4
  %idxprom254 = sext i32 %283 to i64
  %284 = load i16**, i16*** @imgY_tmp, align 8
  %arrayidx255 = getelementptr inbounds i16*, i16** %284, i64 %idxprom254
  %285 = load i16*, i16** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds i16, i16* %285, i64 %idxprom253
  store i16 %281, i16* %arrayidx256, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.248
  %286 = load i32, i32* %j, align 4
  %inc257 = add nsw i32 %286, 1
  store i32 %inc257, i32* %j, align 4
  br label %for.cond.244

for.end:                                          ; preds = %for.cond.244
  br label %for.inc.258

for.inc.258:                                      ; preds = %for.end
  %287 = load i32, i32* %i, align 4
  %inc259 = add nsw i32 %287, 1
  store i32 %inc259, i32* %i, align 4
  br label %for.cond

for.end.260:                                      ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.261

for.cond.261:                                     ; preds = %for.inc.293, %for.end.260
  %288 = load i32, i32* %i, align 4
  %289 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr262 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %289, i32 0, i32 16
  %290 = load i32, i32* %width_cr262, align 4
  %cmp263 = icmp slt i32 %288, %290
  br i1 %cmp263, label %for.body.265, label %for.end.295

for.body.265:                                     ; preds = %for.cond.261
  store i32 0, i32* %j, align 4
  br label %for.cond.266

for.cond.266:                                     ; preds = %for.inc.290, %for.body.265
  %291 = load i32, i32* %j, align 4
  %292 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr267 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %292, i32 0, i32 20
  %293 = load i32, i32* %height_cr267, align 4
  %cmp268 = icmp slt i32 %291, %293
  br i1 %cmp268, label %for.body.270, label %for.end.292

for.body.270:                                     ; preds = %for.cond.266
  %294 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %294 to i64
  %295 = load i32, i32* %j, align 4
  %idxprom272 = sext i32 %295 to i64
  %296 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %296, i32 0, i32 33
  %297 = load i16***, i16**** %imgUV, align 8
  %arrayidx273 = getelementptr inbounds i16**, i16*** %297, i64 0
  %298 = load i16**, i16*** %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds i16*, i16** %298, i64 %idxprom272
  %299 = load i16*, i16** %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds i16, i16* %299, i64 %idxprom271
  %300 = load i16, i16* %arrayidx275, align 2
  %301 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %301 to i64
  %302 = load i32, i32* %j, align 4
  %idxprom277 = sext i32 %302 to i64
  %303 = load i16**, i16*** getelementptr inbounds ([2 x i16**], [2 x i16**]* @imgUV_tmp, i32 0, i64 0), align 8
  %arrayidx278 = getelementptr inbounds i16*, i16** %303, i64 %idxprom277
  %304 = load i16*, i16** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i16, i16* %304, i64 %idxprom276
  store i16 %300, i16* %arrayidx279, align 2
  %305 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %305 to i64
  %306 = load i32, i32* %j, align 4
  %idxprom281 = sext i32 %306 to i64
  %307 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %imgUV282 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %307, i32 0, i32 33
  %308 = load i16***, i16**** %imgUV282, align 8
  %arrayidx283 = getelementptr inbounds i16**, i16*** %308, i64 1
  %309 = load i16**, i16*** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i16*, i16** %309, i64 %idxprom281
  %310 = load i16*, i16** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i16, i16* %310, i64 %idxprom280
  %311 = load i16, i16* %arrayidx285, align 2
  %312 = load i32, i32* %i, align 4
  %idxprom286 = sext i32 %312 to i64
  %313 = load i32, i32* %j, align 4
  %idxprom287 = sext i32 %313 to i64
  %314 = load i16**, i16*** getelementptr inbounds ([2 x i16**], [2 x i16**]* @imgUV_tmp, i32 0, i64 1), align 8
  %arrayidx288 = getelementptr inbounds i16*, i16** %314, i64 %idxprom287
  %315 = load i16*, i16** %arrayidx288, align 8
  %arrayidx289 = getelementptr inbounds i16, i16* %315, i64 %idxprom286
  store i16 %311, i16* %arrayidx289, align 2
  br label %for.inc.290

for.inc.290:                                      ; preds = %for.body.270
  %316 = load i32, i32* %j, align 4
  %inc291 = add nsw i32 %316, 1
  store i32 %inc291, i32* %j, align 4
  br label %for.cond.266

for.end.292:                                      ; preds = %for.cond.266
  br label %for.inc.293

for.inc.293:                                      ; preds = %for.end.292
  %317 = load i32, i32* %i, align 4
  %inc294 = add nsw i32 %317, 1
  store i32 %inc294, i32* %i, align 4
  br label %for.cond.261

for.end.295:                                      ; preds = %for.cond.261
  br label %if.end.296

if.end.296:                                       ; preds = %for.end.295, %land.lhs.true.238, %if.end.236
  %318 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag297 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %318, i32 0, i32 149
  %319 = load i32, i32* %redundant_pic_flag297, align 4
  %tobool298 = icmp ne i32 %319, 0
  br i1 %tobool298, label %land.lhs.true.299, label %if.end.363

land.lhs.true.299:                                ; preds = %if.end.296
  %320 = load i32, i32* @redundant_coding, align 4
  %tobool300 = icmp ne i32 %320, 0
  br i1 %tobool300, label %if.then.301, label %if.end.363

if.then.301:                                      ; preds = %land.lhs.true.299
  store i32 0, i32* %i, align 4
  br label %for.cond.302

for.cond.302:                                     ; preds = %for.inc.324, %if.then.301
  %321 = load i32, i32* %i, align 4
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width303 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 13
  %323 = load i32, i32* %width303, align 4
  %cmp304 = icmp slt i32 %321, %323
  br i1 %cmp304, label %for.body.306, label %for.end.326

for.body.306:                                     ; preds = %for.cond.302
  store i32 0, i32* %j, align 4
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.321, %for.body.306
  %324 = load i32, i32* %j, align 4
  %325 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height308 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %325, i32 0, i32 17
  %326 = load i32, i32* %height308, align 4
  %cmp309 = icmp slt i32 %324, %326
  br i1 %cmp309, label %for.body.311, label %for.end.323

for.body.311:                                     ; preds = %for.cond.307
  %327 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %327 to i64
  %328 = load i32, i32* %j, align 4
  %idxprom313 = sext i32 %328 to i64
  %329 = load i16**, i16*** @imgY_tmp, align 8
  %arrayidx314 = getelementptr inbounds i16*, i16** %329, i64 %idxprom313
  %330 = load i16*, i16** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds i16, i16* %330, i64 %idxprom312
  %331 = load i16, i16* %arrayidx315, align 2
  %332 = load i32, i32* %i, align 4
  %idxprom316 = sext i32 %332 to i64
  %333 = load i32, i32* %j, align 4
  %idxprom317 = sext i32 %333 to i64
  %334 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %imgY318 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %334, i32 0, i32 29
  %335 = load i16**, i16*** %imgY318, align 8
  %arrayidx319 = getelementptr inbounds i16*, i16** %335, i64 %idxprom317
  %336 = load i16*, i16** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds i16, i16* %336, i64 %idxprom316
  store i16 %331, i16* %arrayidx320, align 2
  br label %for.inc.321

for.inc.321:                                      ; preds = %for.body.311
  %337 = load i32, i32* %j, align 4
  %inc322 = add nsw i32 %337, 1
  store i32 %inc322, i32* %j, align 4
  br label %for.cond.307

for.end.323:                                      ; preds = %for.cond.307
  br label %for.inc.324

for.inc.324:                                      ; preds = %for.end.323
  %338 = load i32, i32* %i, align 4
  %inc325 = add nsw i32 %338, 1
  store i32 %inc325, i32* %i, align 4
  br label %for.cond.302

for.end.326:                                      ; preds = %for.cond.302
  store i32 0, i32* %i, align 4
  br label %for.cond.327

for.cond.327:                                     ; preds = %for.inc.360, %for.end.326
  %339 = load i32, i32* %i, align 4
  %340 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr328 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %340, i32 0, i32 16
  %341 = load i32, i32* %width_cr328, align 4
  %cmp329 = icmp slt i32 %339, %341
  br i1 %cmp329, label %for.body.331, label %for.end.362

for.body.331:                                     ; preds = %for.cond.327
  store i32 0, i32* %j, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.357, %for.body.331
  %342 = load i32, i32* %j, align 4
  %343 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr333 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %343, i32 0, i32 20
  %344 = load i32, i32* %height_cr333, align 4
  %cmp334 = icmp slt i32 %342, %344
  br i1 %cmp334, label %for.body.336, label %for.end.359

for.body.336:                                     ; preds = %for.cond.332
  %345 = load i32, i32* %i, align 4
  %idxprom337 = sext i32 %345 to i64
  %346 = load i32, i32* %j, align 4
  %idxprom338 = sext i32 %346 to i64
  %347 = load i16**, i16*** getelementptr inbounds ([2 x i16**], [2 x i16**]* @imgUV_tmp, i32 0, i64 0), align 8
  %arrayidx339 = getelementptr inbounds i16*, i16** %347, i64 %idxprom338
  %348 = load i16*, i16** %arrayidx339, align 8
  %arrayidx340 = getelementptr inbounds i16, i16* %348, i64 %idxprom337
  %349 = load i16, i16* %arrayidx340, align 2
  %350 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %350 to i64
  %351 = load i32, i32* %j, align 4
  %idxprom342 = sext i32 %351 to i64
  %352 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %imgUV343 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %352, i32 0, i32 33
  %353 = load i16***, i16**** %imgUV343, align 8
  %arrayidx344 = getelementptr inbounds i16**, i16*** %353, i64 0
  %354 = load i16**, i16*** %arrayidx344, align 8
  %arrayidx345 = getelementptr inbounds i16*, i16** %354, i64 %idxprom342
  %355 = load i16*, i16** %arrayidx345, align 8
  %arrayidx346 = getelementptr inbounds i16, i16* %355, i64 %idxprom341
  store i16 %349, i16* %arrayidx346, align 2
  %356 = load i32, i32* %i, align 4
  %idxprom347 = sext i32 %356 to i64
  %357 = load i32, i32* %j, align 4
  %idxprom348 = sext i32 %357 to i64
  %358 = load i16**, i16*** getelementptr inbounds ([2 x i16**], [2 x i16**]* @imgUV_tmp, i32 0, i64 1), align 8
  %arrayidx349 = getelementptr inbounds i16*, i16** %358, i64 %idxprom348
  %359 = load i16*, i16** %arrayidx349, align 8
  %arrayidx350 = getelementptr inbounds i16, i16* %359, i64 %idxprom347
  %360 = load i16, i16* %arrayidx350, align 2
  %361 = load i32, i32* %i, align 4
  %idxprom351 = sext i32 %361 to i64
  %362 = load i32, i32* %j, align 4
  %idxprom352 = sext i32 %362 to i64
  %363 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %imgUV353 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %363, i32 0, i32 33
  %364 = load i16***, i16**** %imgUV353, align 8
  %arrayidx354 = getelementptr inbounds i16**, i16*** %364, i64 1
  %365 = load i16**, i16*** %arrayidx354, align 8
  %arrayidx355 = getelementptr inbounds i16*, i16** %365, i64 %idxprom352
  %366 = load i16*, i16** %arrayidx355, align 8
  %arrayidx356 = getelementptr inbounds i16, i16* %366, i64 %idxprom351
  store i16 %360, i16* %arrayidx356, align 2
  br label %for.inc.357

for.inc.357:                                      ; preds = %for.body.336
  %367 = load i32, i32* %j, align 4
  %inc358 = add nsw i32 %367, 1
  store i32 %inc358, i32* %j, align 4
  br label %for.cond.332

for.end.359:                                      ; preds = %for.cond.332
  br label %for.inc.360

for.inc.360:                                      ; preds = %for.end.359
  %368 = load i32, i32* %i, align 4
  %inc361 = add nsw i32 %368, 1
  store i32 %inc361, i32* %i, align 4
  br label %for.cond.327

for.end.362:                                      ; preds = %for.cond.327
  br label %if.end.363

if.end.363:                                       ; preds = %for.end.362, %land.lhs.true.299, %if.end.296
  %call364 = call i64 @time(i64* %ltime2) #2
  %call365 = call i32 @ftime(%struct.timeb* %tstruct2)
  %369 = load i64, i64* %ltime2, align 8
  %mul = mul nsw i64 %369, 1000
  %millitm = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct2, i32 0, i32 1
  %370 = load i16, i16* %millitm, align 2
  %conv366 = zext i16 %370 to i64
  %add367 = add nsw i64 %mul, %conv366
  %371 = load i64, i64* %ltime1, align 8
  %mul368 = mul nsw i64 %371, 1000
  %millitm369 = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct1, i32 0, i32 1
  %372 = load i16, i16* %millitm369, align 2
  %conv370 = zext i16 %372 to i64
  %add371 = add nsw i64 %mul368, %conv370
  %sub372 = sub nsw i64 %add367, %add371
  store i64 %sub372, i64* %tmp_time, align 8
  %373 = load i64, i64* @tot_time, align 8
  %374 = load i64, i64* %tmp_time, align 8
  %add373 = add nsw i64 %373, %374
  store i64 %add373, i64* @tot_time, align 8
  %375 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace374 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %375, i32 0, i32 121
  %376 = load i32, i32* %PicInterlace374, align 4
  %cmp375 = icmp eq i32 %376, 2
  br i1 %cmp375, label %if.then.377, label %if.else.383

if.then.377:                                      ; preds = %if.end.363
  %377 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag378 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %377, i32 0, i32 66
  %378 = load i32, i32* %fld_flag378, align 4
  %tobool379 = icmp ne i32 %378, 0
  br i1 %tobool379, label %if.then.380, label %if.else.381

if.then.380:                                      ; preds = %if.then.377
  %379 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %379)
  %380 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @free_storable_picture(%struct.storable_picture* %380)
  br label %if.end.382

if.else.381:                                      ; preds = %if.then.377
  %381 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @replace_top_pic_with_frame(%struct.storable_picture* %381)
  %382 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  call void @free_storable_picture(%struct.storable_picture* %382)
  br label %if.end.382

if.end.382:                                       ; preds = %if.else.381, %if.then.380
  br label %if.end.411

if.else.383:                                      ; preds = %if.end.363
  %383 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag384 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %383, i32 0, i32 66
  %384 = load i32, i32* %fld_flag384, align 4
  %tobool385 = icmp ne i32 %384, 0
  br i1 %tobool385, label %if.then.386, label %if.else.387

if.then.386:                                      ; preds = %if.else.383
  %385 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %385)
  br label %if.end.410

if.else.387:                                      ; preds = %if.else.383
  %386 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass388 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %386, i32 0, i32 67
  %387 = load i32, i32* %rd_pass388, align 4
  %cmp389 = icmp eq i32 %387, 2
  br i1 %cmp389, label %if.then.391, label %if.else.392

if.then.391:                                      ; preds = %if.else.387
  %388 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %388)
  %389 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @free_storable_picture(%struct.storable_picture* %389)
  %390 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  call void @free_storable_picture(%struct.storable_picture* %390)
  br label %if.end.409

if.else.392:                                      ; preds = %if.else.387
  %391 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass393 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %391, i32 0, i32 67
  %392 = load i32, i32* %rd_pass393, align 4
  %cmp394 = icmp eq i32 %392, 1
  br i1 %cmp394, label %if.then.396, label %if.else.397

if.then.396:                                      ; preds = %if.else.392
  %393 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %393)
  %394 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @free_storable_picture(%struct.storable_picture* %394)
  %395 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  call void @free_storable_picture(%struct.storable_picture* %395)
  br label %if.end.408

if.else.397:                                      ; preds = %if.else.392
  %396 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag398 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %396, i32 0, i32 149
  %397 = load i32, i32* %redundant_pic_flag398, align 4
  %cmp399 = icmp eq i32 %397, 0
  br i1 %cmp399, label %if.then.401, label %if.else.402

if.then.401:                                      ; preds = %if.else.397
  %398 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %398)
  %399 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  call void @free_storable_picture(%struct.storable_picture* %399)
  %400 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  call void @free_storable_picture(%struct.storable_picture* %400)
  br label %if.end.407

if.else.402:                                      ; preds = %if.else.397
  %401 = load i32, i32* @key_frame, align 4
  %cmp403 = icmp eq i32 %401, 0
  br i1 %cmp403, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %if.else.402
  %402 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %402)
  %403 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  call void @free_storable_picture(%struct.storable_picture* %403)
  %404 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  call void @free_storable_picture(%struct.storable_picture* %404)
  br label %if.end.406

if.end.406:                                       ; preds = %if.then.405, %if.else.402
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.406, %if.then.401
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.407, %if.then.396
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.then.391
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.then.386
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %if.end.382
  %405 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP412 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %405, i32 0, i32 172
  %406 = load i32, i32* %SumFrameQP412, align 4
  %407 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs413 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %407, i32 0, i32 120
  %408 = load i32, i32* %FrameSizeInMbs413, align 4
  %shr = lshr i32 %408, 1
  %add414 = add i32 %406, %shr
  %409 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs415 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %409, i32 0, i32 120
  %410 = load i32, i32* %FrameSizeInMbs415, align 4
  %div = udiv i32 %add414, %410
  %411 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %411, i32 0, i32 171
  store i32 %div, i32* %AverageFrameQP, align 4
  %412 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable416 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %412, i32 0, i32 157
  %413 = load i32, i32* %RCEnable416, align 4
  %tobool417 = icmp ne i32 %413, 0
  br i1 %tobool417, label %land.lhs.true.418, label %if.end.429

land.lhs.true.418:                                ; preds = %if.end.411
  %414 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type419 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %414, i32 0, i32 5
  %415 = load i32, i32* %type419, align 4
  %cmp420 = icmp ne i32 %415, 1
  br i1 %cmp420, label %land.lhs.true.422, label %if.end.429

land.lhs.true.422:                                ; preds = %land.lhs.true.418
  %416 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit423 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %416, i32 0, i32 160
  %417 = load i32, i32* %basicunit423, align 4
  %418 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs424 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %418, i32 0, i32 120
  %419 = load i32, i32* %FrameSizeInMbs424, align 4
  %cmp425 = icmp ult i32 %417, %419
  br i1 %cmp425, label %if.then.427, label %if.end.429

if.then.427:                                      ; preds = %land.lhs.true.422
  %420 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP428 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %420, i32 0, i32 171
  %421 = load i32, i32* %AverageFrameQP428, align 4
  %422 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %422, i32 0, i32 36
  store i32 %421, i32* %CurrLastQP, align 4
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.427, %land.lhs.true.422, %land.lhs.true.418, %if.end.411
  %423 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr430 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %423, i32 0, i32 4
  %424 = load i64, i64* %bit_ctr430, align 8
  %425 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n431 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %425, i32 0, i32 5
  %426 = load i64, i64* %bit_ctr_n431, align 8
  %sub432 = sub nsw i64 %424, %426
  %conv433 = trunc i64 %sub432 to i32
  %conv434 = sext i32 %conv433 to i64
  %427 = load i64, i64* @total_frame_buffer, align 8
  %428 = load i64*, i64** @Bit_Buffer, align 8
  %arrayidx435 = getelementptr inbounds i64, i64* %428, i64 %427
  store i64 %conv434, i64* %arrayidx435, align 8
  %429 = load i64, i64* @total_frame_buffer, align 8
  %inc436 = add i64 %429, 1
  store i64 %inc436, i64* @total_frame_buffer, align 8
  %430 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %430, i32 0, i32 101
  %431 = load i32, i32* %pic_order_cnt_type, align 4
  %cmp437 = icmp eq i32 %431, 2
  br i1 %cmp437, label %if.then.439, label %if.end.452

if.then.439:                                      ; preds = %if.end.429
  %432 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %432, i32 0, i32 122
  %433 = load i32, i32* %nal_reference_idc, align 4
  %tobool440 = icmp ne i32 %433, 0
  br i1 %tobool440, label %if.else.443, label %if.then.441

if.then.441:                                      ; preds = %if.then.439
  %434 = load i32, i32* @encode_one_frame.consecutive_non_reference_pictures, align 4
  %inc442 = add nsw i32 %434, 1
  store i32 %inc442, i32* @encode_one_frame.consecutive_non_reference_pictures, align 4
  br label %if.end.444

if.else.443:                                      ; preds = %if.then.439
  store i32 0, i32* @encode_one_frame.consecutive_non_reference_pictures, align 4
  br label %if.end.444

if.end.444:                                       ; preds = %if.else.443, %if.then.441
  %435 = load i32, i32* @frame_no, align 4
  %436 = load i32, i32* @encode_one_frame.prev_frame_no, align 4
  %cmp445 = icmp slt i32 %435, %436
  br i1 %cmp445, label %if.then.450, label %lor.lhs.false.447

lor.lhs.false.447:                                ; preds = %if.end.444
  %437 = load i32, i32* @encode_one_frame.consecutive_non_reference_pictures, align 4
  %cmp448 = icmp sgt i32 %437, 1
  br i1 %cmp448, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %lor.lhs.false.447, %if.end.444
  call void @error(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str, i32 0, i32 0), i32 -1)
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.450, %lor.lhs.false.447
  %438 = load i32, i32* @frame_no, align 4
  store i32 %438, i32* @encode_one_frame.prev_frame_no, align 4
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %if.end.429
  %439 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n453 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %439, i32 0, i32 35
  %440 = load i32, i32* %bit_ctr_parametersets_n453, align 4
  %cmp454 = icmp ne i32 %440, 0
  br i1 %cmp454, label %if.then.456, label %if.end.457

if.then.456:                                      ; preds = %if.end.452
  %441 = load i64, i64* %tmp_time, align 8
  %442 = load i64, i64* @me_time, align 8
  call void @ReportNALNonVLCBits(i64 %441, i64 %442)
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.456, %if.end.452
  %443 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number458 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %443, i32 0, i32 0
  %444 = load i32, i32* %number458, align 4
  %445 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub459 = sub nsw i32 %444, %445
  %cmp460 = icmp eq i32 %sub459, 0
  br i1 %cmp460, label %if.then.462, label %if.else.463

if.then.462:                                      ; preds = %if.end.457
  %446 = load i64, i64* %tmp_time, align 8
  %447 = load i64, i64* @me_time, align 8
  call void @ReportFirstframe(i64 %446, i64 %447)
  br label %if.end.505

if.else.463:                                      ; preds = %if.end.457
  %448 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable464 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %448, i32 0, i32 157
  %449 = load i32, i32* %RCEnable464, align 4
  %tobool465 = icmp ne i32 %449, 0
  br i1 %tobool465, label %if.then.466, label %if.end.484

if.then.466:                                      ; preds = %if.else.463
  %450 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace467 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %450, i32 0, i32 121
  %451 = load i32, i32* %PicInterlace467, align 4
  %tobool468 = icmp ne i32 %451, 0
  br i1 %tobool468, label %if.else.477, label %land.lhs.true.469

land.lhs.true.469:                                ; preds = %if.then.466
  %452 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace470 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %452, i32 0, i32 122
  %453 = load i32, i32* %MbInterlace470, align 4
  %tobool471 = icmp ne i32 %453, 0
  br i1 %tobool471, label %if.else.477, label %if.then.472

if.then.472:                                      ; preds = %land.lhs.true.469
  %454 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr473 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %454, i32 0, i32 4
  %455 = load i64, i64* %bit_ctr473, align 8
  %456 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n474 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %456, i32 0, i32 5
  %457 = load i64, i64* %bit_ctr_n474, align 8
  %sub475 = sub nsw i64 %455, %457
  %conv476 = trunc i64 %sub475 to i32
  store i32 %conv476, i32* %bits, align 4
  br label %if.end.483

if.else.477:                                      ; preds = %land.lhs.true.469, %if.then.466
  %458 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr478 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %458, i32 0, i32 4
  %459 = load i64, i64* %bit_ctr478, align 8
  %460 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %Pprev_bits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %460, i32 0, i32 65
  %461 = load i64, i64* %Pprev_bits, align 8
  %sub479 = sub nsw i64 %459, %461
  %conv480 = trunc i64 %sub479 to i32
  store i32 %conv480, i32* %bits, align 4
  %462 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr481 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %462, i32 0, i32 4
  %463 = load i64, i64* %bit_ctr481, align 8
  %464 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %Pprev_bits482 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %464, i32 0, i32 65
  store i64 %463, i64* %Pprev_bits482, align 8
  br label %if.end.483

if.end.483:                                       ; preds = %if.else.477, %if.then.472
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %if.else.463
  %465 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type485 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %465, i32 0, i32 5
  %466 = load i32, i32* %type485, align 4
  switch i32 %466, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.490
    i32 1, label %sw.bb.495
  ]

sw.bb:                                            ; preds = %if.end.484
  %467 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr486 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %467, i32 0, i32 4
  %468 = load i64, i64* %bit_ctr486, align 8
  %469 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n487 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %469, i32 0, i32 5
  %470 = load i64, i64* %bit_ctr_n487, align 8
  %sub488 = sub nsw i64 %468, %470
  %471 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %471, i32 0, i32 16
  %472 = load i64, i64* %bit_ctr_I, align 8
  %add489 = add nsw i64 %472, %sub488
  store i64 %add489, i64* %bit_ctr_I, align 8
  %473 = load i64, i64* %tmp_time, align 8
  %474 = load i64, i64* @me_time, align 8
  call void @ReportIntra(i64 %473, i64 %474)
  br label %sw.epilog

sw.bb.490:                                        ; preds = %if.end.484
  %475 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr491 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %475, i32 0, i32 4
  %476 = load i64, i64* %bit_ctr491, align 8
  %477 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n492 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %477, i32 0, i32 5
  %478 = load i64, i64* %bit_ctr_n492, align 8
  %sub493 = sub nsw i64 %476, %478
  %479 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %479, i32 0, i32 17
  %480 = load i64, i64* %bit_ctr_P, align 8
  %add494 = add nsw i64 %480, %sub493
  store i64 %add494, i64* %bit_ctr_P, align 8
  %481 = load i64, i64* %tmp_time, align 8
  %482 = load i64, i64* @me_time, align 8
  call void @ReportSP(i64 %481, i64 %482)
  br label %sw.epilog

sw.bb.495:                                        ; preds = %if.end.484
  %483 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr496 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %483, i32 0, i32 4
  %484 = load i64, i64* %bit_ctr496, align 8
  %485 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n497 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %485, i32 0, i32 5
  %486 = load i64, i64* %bit_ctr_n497, align 8
  %sub498 = sub nsw i64 %484, %486
  %487 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_B = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %487, i32 0, i32 18
  %488 = load i64, i64* %bit_ctr_B, align 8
  %add499 = add nsw i64 %488, %sub498
  store i64 %add499, i64* %bit_ctr_B, align 8
  %489 = load i64, i64* %tmp_time, align 8
  %490 = load i64, i64* @me_time, align 8
  call void @ReportB(i64 %489, i64 %490)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.484
  %491 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr500 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %491, i32 0, i32 4
  %492 = load i64, i64* %bit_ctr500, align 8
  %493 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n501 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %493, i32 0, i32 5
  %494 = load i64, i64* %bit_ctr_n501, align 8
  %sub502 = sub nsw i64 %492, %494
  %495 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P503 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %495, i32 0, i32 17
  %496 = load i64, i64* %bit_ctr_P503, align 8
  %add504 = add nsw i64 %496, %sub502
  store i64 %add504, i64* %bit_ctr_P503, align 8
  %497 = load i64, i64* %tmp_time, align 8
  %498 = load i64, i64* @me_time, align 8
  call void @ReportP(i64 %497, i64 %498)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.495, %sw.bb.490, %sw.bb
  br label %if.end.505

if.end.505:                                       ; preds = %sw.epilog, %if.then.462
  %499 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose506 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %499, i32 0, i32 156
  %500 = load i32, i32* %Verbose506, align 4
  %cmp507 = icmp eq i32 %500, 0
  br i1 %cmp507, label %if.then.509, label %if.end.511

if.then.509:                                      ; preds = %if.end.505
  %501 = load i32, i32* @frame_no, align 4
  %call510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %501)
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.509, %if.end.505
  %502 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call512 = call i32 @fflush(%struct._IO_FILE* %502)
  %503 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr513 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %503, i32 0, i32 4
  %504 = load i64, i64* %bit_ctr513, align 8
  %505 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n514 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %505, i32 0, i32 5
  store i64 %504, i64* %bit_ctr_n514, align 8
  %506 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable515 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %506, i32 0, i32 157
  %507 = load i32, i32* %RCEnable515, align 4
  %tobool516 = icmp ne i32 %507, 0
  br i1 %tobool516, label %if.then.517, label %if.end.537

if.then.517:                                      ; preds = %if.end.511
  %508 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %509 = load i32, i32* %bits, align 4
  call void @rc_update_pict(%struct.rc_quadratic* %508, i32 %509)
  %510 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type518 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %510, i32 0, i32 5
  %511 = load i32, i32* %type518, align 4
  %cmp519 = icmp eq i32 %511, 0
  br i1 %cmp519, label %land.lhs.true.525, label %lor.lhs.false.521

lor.lhs.false.521:                                ; preds = %if.then.517
  %512 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode522 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %512, i32 0, i32 162
  %513 = load i32, i32* %RCUpdateMode522, align 4
  %cmp523 = icmp eq i32 %513, 1
  br i1 %cmp523, label %land.lhs.true.525, label %if.end.536

land.lhs.true.525:                                ; preds = %lor.lhs.false.521, %if.then.517
  %514 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number526 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %514, i32 0, i32 0
  %515 = load i32, i32* %number526, align 4
  %516 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub527 = sub nsw i32 %515, %516
  %tobool528 = icmp ne i32 %sub527, 0
  br i1 %tobool528, label %if.then.529, label %if.end.536

if.then.529:                                      ; preds = %land.lhs.true.525
  %517 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @updateRCModel(%struct.rc_quadratic* %517)
  %518 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode530 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %518, i32 0, i32 162
  %519 = load i32, i32* %RCUpdateMode530, align 4
  %cmp531 = icmp eq i32 %519, 3
  br i1 %cmp531, label %if.then.533, label %if.end.535

if.then.533:                                      ; preds = %if.then.529
  %call534 = call double @ComputeFrameMAD()
  %520 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %PreviousWholeFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %520, i32 0, i32 50
  store double %call534, double* %PreviousWholeFrameMAD, align 8
  br label %if.end.535

if.end.535:                                       ; preds = %if.then.533, %if.then.529
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535, %land.lhs.true.525, %lor.lhs.false.521
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %if.end.511
  %521 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n538 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %521, i32 0, i32 35
  store i32 0, i32* %bit_ctr_parametersets_n538, align 4
  %522 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number539 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %522, i32 0, i32 0
  %523 = load i32, i32* %number539, align 4
  %524 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub540 = sub nsw i32 %523, %524
  %cmp541 = icmp eq i32 %sub540, 0
  br i1 %cmp541, label %if.then.543, label %if.else.544

if.then.543:                                      ; preds = %if.end.537
  store i32 0, i32* %retval
  br label %return

if.else.544:                                      ; preds = %if.end.537
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.544, %if.then.543
  %525 = load i32, i32* %retval
  ret i32 %525
}

declare i32 @ftime(%struct.timeb*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @write_PPS(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @put_buffer_frame() #0 {
entry:
  %0 = load i16**, i16*** @imgY_org_frm, align 8
  store i16** %0, i16*** @imgY_org, align 8
  %1 = load i16***, i16**** @imgUV_org_frm, align 8
  store i16*** %1, i16**** @imgUV_org, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_frame() #0 {
entry:
  %i = alloca i32, align 4
  %prevP_no = alloca i32, align 4
  %nextP_no = alloca i32, align 4
  %0 = load i32*, i32** @last_P_no_frm, align 8
  store i32* %0, i32** @last_P_no, align 8
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 3
  store i32 0, i32* %current_mb_nr, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 4
  store i32 0, i32* %current_slice_nr, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 6
  store i32 0, i32* %bit_slice, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 35
  store i32 0, i32* %mb_x, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 36
  store i32 0, i32* %mb_y, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 42
  store i32 0, i32* %pix_c_y, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 40
  store i32 0, i32* %pix_y, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 38
  store i32 0, i32* %block_y, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 41
  store i32 0, i32* %pix_c_x, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 30
  store i32 0, i32* %block_c_x, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 39
  store i32 0, i32* %pix_x, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 37
  store i32 0, i32* %block_x, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 120
  %15 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 61
  %18 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i64 %idxprom
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 0
  store i32 -1, i32* %slice_nr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 76
  %21 = load i32, i32* %b_frame_to_code, align 4
  %cmp1 = icmp eq i32 %21, 0
  br i1 %cmp1, label %if.then, label %if.else.123

if.then:                                          ; preds = %for.end
  %22 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 0
  %24 = load i32, i32* %number, align 4
  %25 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %24, %25
  %26 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %26, i32 0, i32 5
  %27 = load i32, i32* %jumpd, align 4
  %add = add nsw i32 %27, 1
  %mul = mul nsw i32 %sub, %add
  %add2 = add nsw i32 %22, %mul
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 64
  store i32 %add2, i32* %tr, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_next_P_frm = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 70
  %30 = load i32, i32* %imgtr_next_P_frm, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_last_P_frm = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 71
  store i32 %30, i32* %imgtr_last_P_frm, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 64
  %33 = load i32, i32* %tr3, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_next_P_frm4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 70
  store i32 %33, i32* %imgtr_next_P_frm4, align 4
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 107
  %36 = load i32, i32* %last_frame, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 0
  %38 = load i32, i32* %number5, align 4
  %add6 = add nsw i32 %38, 1
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 2
  %40 = load i32, i32* %no_frames, align 4
  %cmp7 = icmp eq i32 %add6, %40
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 107
  %42 = load i32, i32* %last_frame9, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 64
  store i32 %42, i32* %tr10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %if.then
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 0
  %45 = load i32, i32* %number11, align 4
  %46 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub12 = sub nsw i32 %45, %46
  %cmp13 = icmp ne i32 %sub12, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.18

land.lhs.true.14:                                 ; preds = %if.end
  %47 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %47, i32 0, i32 40
  %48 = load i32, i32* %successive_Bframe, align 4
  %cmp15 = icmp ne i32 %48, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %land.lhs.true.14
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 64
  %50 = load i32, i32* %tr17, align 4
  store i32 %50, i32* @nextP_tr_frm, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %land.lhs.true.14, %if.end
  %51 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %51, i32 0, i32 157
  %52 = load i32, i32* %RCEnable, align 4
  %tobool19 = icmp ne i32 %52, 0
  br i1 %tobool19, label %if.end.113, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 5
  %54 = load i32, i32* %type, align 4
  %cmp21 = icmp eq i32 %54, 2
  br i1 %cmp21, label %if.then.22, label %if.else.44

if.then.22:                                       ; preds = %if.then.20
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 110
  %56 = load i32, i32* %qp2start, align 4
  %cmp23 = icmp sgt i32 %56, 0
  br i1 %cmp23, label %land.lhs.true.24, label %lor.lhs.false

land.lhs.true.24:                                 ; preds = %if.then.22
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 64
  %58 = load i32, i32* %tr25, align 4
  %59 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %59, i32 0, i32 110
  %60 = load i32, i32* %qp2start26, align 4
  %cmp27 = icmp sge i32 %58, %60
  br i1 %cmp27, label %land.lhs.true.28, label %lor.lhs.false

land.lhs.true.28:                                 ; preds = %land.lhs.true.24
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 54
  %62 = load i32, i32* %sp2_frame_indicator, align 4
  %cmp29 = icmp eq i32 %62, 0
  br i1 %cmp29, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.28, %land.lhs.true.24, %if.then.22
  %63 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start30 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %63, i32 0, i32 110
  %64 = load i32, i32* %qp2start30, align 4
  %cmp31 = icmp sgt i32 %64, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %lor.lhs.false
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 64
  %66 = load i32, i32* %tr33, align 4
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 110
  %68 = load i32, i32* %qp2start34, align 4
  %mul35 = mul nsw i32 2, %68
  %rem = srem i32 %66, %mul35
  %69 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start36 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %69, i32 0, i32 110
  %70 = load i32, i32* %qp2start36, align 4
  %cmp37 = icmp sge i32 %rem, %70
  br i1 %cmp37, label %land.lhs.true.38, label %if.else

land.lhs.true.38:                                 ; preds = %land.lhs.true.32
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator39 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 54
  %72 = load i32, i32* %sp2_frame_indicator39, align 4
  %cmp40 = icmp eq i32 %72, 1
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %land.lhs.true.38, %land.lhs.true.28
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp02 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 111
  %74 = load i32, i32* %qp02, align 4
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 9
  store i32 %74, i32* %qp, align 4
  br label %if.end.43

if.else:                                          ; preds = %land.lhs.true.38, %land.lhs.true.32, %lor.lhs.false
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 3
  %77 = load i32, i32* %qp0, align 4
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 9
  store i32 %77, i32* %qp42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.41
  br label %if.end.112

if.else.44:                                       ; preds = %if.then.20
  %79 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start45 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %79, i32 0, i32 110
  %80 = load i32, i32* %qp2start45, align 4
  %cmp46 = icmp sgt i32 %80, 0
  br i1 %cmp46, label %land.lhs.true.47, label %lor.lhs.false.54

land.lhs.true.47:                                 ; preds = %if.else.44
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 64
  %82 = load i32, i32* %tr48, align 4
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start49 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 110
  %84 = load i32, i32* %qp2start49, align 4
  %cmp50 = icmp sge i32 %82, %84
  br i1 %cmp50, label %land.lhs.true.51, label %lor.lhs.false.54

land.lhs.true.51:                                 ; preds = %land.lhs.true.47
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator52 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 54
  %86 = load i32, i32* %sp2_frame_indicator52, align 4
  %cmp53 = icmp eq i32 %86, 0
  br i1 %cmp53, label %if.then.67, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %land.lhs.true.51, %land.lhs.true.47, %if.else.44
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start55 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 110
  %88 = load i32, i32* %qp2start55, align 4
  %cmp56 = icmp sgt i32 %88, 0
  br i1 %cmp56, label %land.lhs.true.57, label %if.else.71

land.lhs.true.57:                                 ; preds = %lor.lhs.false.54
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 64
  %90 = load i32, i32* %tr58, align 4
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start59 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 110
  %92 = load i32, i32* %qp2start59, align 4
  %mul60 = mul nsw i32 2, %92
  %rem61 = srem i32 %90, %mul60
  %93 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %93, i32 0, i32 110
  %94 = load i32, i32* %qp2start62, align 4
  %cmp63 = icmp sge i32 %rem61, %94
  br i1 %cmp63, label %land.lhs.true.64, label %if.else.71

land.lhs.true.64:                                 ; preds = %land.lhs.true.57
  %95 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator65 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %95, i32 0, i32 54
  %96 = load i32, i32* %sp2_frame_indicator65, align 4
  %cmp66 = icmp eq i32 %96, 1
  br i1 %cmp66, label %if.then.67, label %if.else.71

if.then.67:                                       ; preds = %land.lhs.true.64, %land.lhs.true.51
  %97 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %97, i32 0, i32 108
  %98 = load i32, i32* %qpN2, align 4
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 122
  %100 = load i32, i32* %nal_reference_idc, align 4
  %tobool68 = icmp ne i32 %100, 0
  br i1 %tobool68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.67
  br label %cond.end

cond.false:                                       ; preds = %if.then.67
  %101 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %DispPQPOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %101, i32 0, i32 193
  %102 = load i32, i32* %DispPQPOffset, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %102, %cond.false ]
  %add69 = add nsw i32 %98, %cond
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 9
  store i32 %add69, i32* %qp70, align 4
  br label %if.end.81

if.else.71:                                       ; preds = %land.lhs.true.64, %land.lhs.true.57, %lor.lhs.false.54
  %104 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %104, i32 0, i32 4
  %105 = load i32, i32* %qpN, align 4
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc72 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 122
  %107 = load i32, i32* %nal_reference_idc72, align 4
  %tobool73 = icmp ne i32 %107, 0
  br i1 %tobool73, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %if.else.71
  br label %cond.end.77

cond.false.75:                                    ; preds = %if.else.71
  %108 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %DispPQPOffset76 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %108, i32 0, i32 193
  %109 = load i32, i32* %DispPQPOffset76, align 4
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.74
  %cond78 = phi i32 [ 0, %cond.true.74 ], [ %109, %cond.false.75 ]
  %add79 = add nsw i32 %105, %cond78
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 9
  store i32 %add79, i32* %qp80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.77, %cond.end
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 5
  %112 = load i32, i32* %type82, align 4
  %cmp83 = icmp eq i32 %112, 3
  br i1 %cmp83, label %if.then.84, label %if.end.111

if.then.84:                                       ; preds = %if.end.81
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start85 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 110
  %114 = load i32, i32* %qp2start85, align 4
  %cmp86 = icmp sgt i32 %114, 0
  br i1 %cmp86, label %land.lhs.true.87, label %if.else.105

land.lhs.true.87:                                 ; preds = %if.then.84
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 64
  %116 = load i32, i32* %tr88, align 4
  %117 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start89 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %117, i32 0, i32 110
  %118 = load i32, i32* %qp2start89, align 4
  %mul90 = mul nsw i32 2, %118
  %rem91 = srem i32 %116, %mul90
  %119 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %119, i32 0, i32 110
  %120 = load i32, i32* %qp2start92, align 4
  %cmp93 = icmp sge i32 %rem91, %120
  br i1 %cmp93, label %if.then.94, label %if.else.105

if.then.94:                                       ; preds = %land.lhs.true.87
  %121 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN295 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %121, i32 0, i32 108
  %122 = load i32, i32* %qpN295, align 4
  %123 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN96 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %123, i32 0, i32 4
  %124 = load i32, i32* %qpN96, align 4
  %125 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %125, i32 0, i32 51
  %126 = load i32, i32* %qpsp, align 4
  %sub97 = sub nsw i32 %124, %126
  %sub98 = sub nsw i32 %122, %sub97
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 9
  store i32 %sub98, i32* %qp99, align 4
  %128 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN2100 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %128, i32 0, i32 108
  %129 = load i32, i32* %qpN2100, align 4
  %130 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN101 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %130, i32 0, i32 4
  %131 = load i32, i32* %qpN101, align 4
  %132 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp_pred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %132, i32 0, i32 52
  %133 = load i32, i32* %qpsp_pred, align 4
  %sub102 = sub nsw i32 %131, %133
  %sub103 = sub nsw i32 %129, %sub102
  %134 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qpsp104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %134, i32 0, i32 10
  store i32 %sub103, i32* %qpsp104, align 4
  br label %if.end.110

if.else.105:                                      ; preds = %land.lhs.true.87, %if.then.84
  %135 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp106 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %135, i32 0, i32 51
  %136 = load i32, i32* %qpsp106, align 4
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp107 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 9
  store i32 %136, i32* %qp107, align 4
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp_pred108 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 52
  %139 = load i32, i32* %qpsp_pred108, align 4
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qpsp109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 10
  store i32 %139, i32* %qpsp109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.105, %if.then.94
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.81
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.43
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.18
  %141 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %141, i32 0, i32 28
  %142 = load i32, i32* %mb_y_upd, align 4
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_intra = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 29
  store i32 %142, i32* %mb_y_intra, align 4
  %144 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %144, i32 0, i32 17
  %145 = load i32, i32* %intra_upd, align 4
  %cmp114 = icmp sgt i32 %145, 0
  br i1 %cmp114, label %if.then.115, label %if.end.122

if.then.115:                                      ; preds = %if.end.113
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 0
  %147 = load i32, i32* %number116, align 4
  %148 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub117 = sub nsw i32 %147, %148
  %149 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd118 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %149, i32 0, i32 17
  %150 = load i32, i32* %intra_upd118, align 4
  %div = sdiv i32 %sub117, %150
  %151 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %151, i32 0, i32 17
  %152 = load i32, i32* %height, align 4
  %div119 = sdiv i32 %152, 16
  %rem120 = srem i32 %div, %div119
  %153 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd121 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %153, i32 0, i32 28
  store i32 %rem120, i32* %mb_y_upd121, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.115, %if.end.113
  br label %if.end.304

if.else.123:                                      ; preds = %for.end
  %154 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd124 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %154, i32 0, i32 5
  %155 = load i32, i32* %jumpd124, align 4
  %add125 = add nsw i32 %155, 1
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 75
  store i32 %add125, i32* %p_interval, align 4
  %157 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 0
  %159 = load i32, i32* %number126, align 4
  %160 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub127 = sub nsw i32 %159, %160
  %sub128 = sub nsw i32 %sub127, 1
  %161 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %161, i32 0, i32 75
  %162 = load i32, i32* %p_interval129, align 4
  %mul130 = mul nsw i32 %sub128, %162
  %add131 = add nsw i32 %157, %mul130
  store i32 %add131, i32* %prevP_no, align 4
  %163 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number132 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 0
  %165 = load i32, i32* %number132, align 4
  %166 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub133 = sub nsw i32 %165, %166
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval134 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 75
  %168 = load i32, i32* %p_interval134, align 4
  %mul135 = mul nsw i32 %sub133, %168
  %add136 = add nsw i32 %163, %mul135
  store i32 %add136, i32* %nextP_no, align 4
  %169 = load i32, i32* %prevP_no, align 4
  %170 = load i32*, i32** @last_P_no, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %169, i32* %arrayidx137, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.148, %if.else.123
  %171 = load i32, i32* %i, align 4
  %172 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %172, i32 0, i32 93
  %173 = load i32, i32* %buf_cycle, align 4
  %cmp139 = icmp slt i32 %171, %173
  br i1 %cmp139, label %for.body.140, label %for.end.150

for.body.140:                                     ; preds = %for.cond.138
  %174 = load i32, i32* %i, align 4
  %sub141 = sub nsw i32 %174, 1
  %idxprom142 = sext i32 %sub141 to i64
  %175 = load i32*, i32** @last_P_no, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %175, i64 %idxprom142
  %176 = load i32, i32* %arrayidx143, align 4
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 75
  %178 = load i32, i32* %p_interval144, align 4
  %sub145 = sub nsw i32 %176, %178
  %179 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %179 to i64
  %180 = load i32*, i32** @last_P_no, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %180, i64 %idxprom146
  store i32 %sub145, i32* %arrayidx147, align 4
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.140
  %181 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %181, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond.138

for.end.150:                                      ; preds = %for.cond.138
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame151 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 107
  %183 = load i32, i32* %last_frame151, align 4
  %tobool152 = icmp ne i32 %183, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.162

land.lhs.true.153:                                ; preds = %for.end.150
  %184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number154 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %184, i32 0, i32 0
  %185 = load i32, i32* %number154, align 4
  %add155 = add nsw i32 %185, 1
  %186 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames156 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %186, i32 0, i32 2
  %187 = load i32, i32* %no_frames156, align 4
  %cmp157 = icmp eq i32 %add155, %187
  br i1 %cmp157, label %if.then.158, label %if.end.162

if.then.158:                                      ; preds = %land.lhs.true.153
  %188 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame159 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %188, i32 0, i32 107
  %189 = load i32, i32* %last_frame159, align 4
  store i32 %189, i32* %nextP_no, align 4
  %190 = load i32, i32* %nextP_no, align 4
  %191 = load i32, i32* %prevP_no, align 4
  %sub160 = sub nsw i32 %190, %191
  %192 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval161 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %192, i32 0, i32 75
  store i32 %sub160, i32* %p_interval161, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.158, %land.lhs.true.153, %for.end.150
  %193 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd163 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %193, i32 0, i32 5
  %194 = load i32, i32* %jumpd163, align 4
  %add164 = add nsw i32 %194, 1
  %conv = sitofp i32 %add164 to double
  %195 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe165 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %195, i32 0, i32 40
  %196 = load i32, i32* %successive_Bframe165, align 4
  %conv166 = sitofp i32 %196 to double
  %add167 = fadd double %conv166, 1.000000e+00
  %div168 = fdiv double %conv, %add167
  %197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %197, i32 0, i32 74
  store double %div168, double* %b_interval, align 8
  %198 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %198, i32 0, i32 69
  %199 = load i32, i32* %HierarchicalCoding, align 4
  %cmp169 = icmp eq i32 %199, 3
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %if.end.162
  %200 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval172 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %200, i32 0, i32 74
  store double 1.000000e+00, double* %b_interval172, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %if.end.162
  %201 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding174 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %201, i32 0, i32 69
  %202 = load i32, i32* %HierarchicalCoding174, align 4
  %tobool175 = icmp ne i32 %202, 0
  br i1 %tobool175, label %if.then.176, label %if.else.188

if.then.176:                                      ; preds = %if.end.173
  %203 = load i32, i32* %prevP_no, align 4
  %204 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval177 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %204, i32 0, i32 74
  %205 = load double, double* %b_interval177, align 8
  %206 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %206, i32 0, i32 76
  %207 = load i32, i32* %b_frame_to_code178, align 4
  %sub179 = sub nsw i32 %207, 1
  %idxprom180 = sext i32 %sub179 to i64
  %208 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx181 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %208, i64 %idxprom180
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx181, i32 0, i32 1
  %209 = load i32, i32* %display_no, align 4
  %add182 = add nsw i32 1, %209
  %conv183 = sitofp i32 %add182 to double
  %mul184 = fmul double %205, %conv183
  %conv185 = fptosi double %mul184 to i32
  %add186 = add nsw i32 %203, %conv185
  %210 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %210, i32 0, i32 64
  store i32 %add186, i32* %tr187, align 4
  br label %if.end.196

if.else.188:                                      ; preds = %if.end.173
  %211 = load i32, i32* %prevP_no, align 4
  %212 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval189 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %212, i32 0, i32 74
  %213 = load double, double* %b_interval189, align 8
  %214 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code190 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %214, i32 0, i32 76
  %215 = load i32, i32* %b_frame_to_code190, align 4
  %conv191 = sitofp i32 %215 to double
  %mul192 = fmul double %213, %conv191
  %conv193 = fptosi double %mul192 to i32
  %add194 = add nsw i32 %211, %conv193
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr195 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 64
  store i32 %add194, i32* %tr195, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.188, %if.then.176
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr197 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 64
  %218 = load i32, i32* %tr197, align 4
  %219 = load i32, i32* %nextP_no, align 4
  %cmp198 = icmp sge i32 %218, %219
  br i1 %cmp198, label %if.then.200, label %if.end.203

if.then.200:                                      ; preds = %if.end.196
  %220 = load i32, i32* %nextP_no, align 4
  %sub201 = sub nsw i32 %220, 1
  %221 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr202 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %221, i32 0, i32 64
  store i32 %sub201, i32* %tr202, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.200, %if.end.196
  %222 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable204 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %222, i32 0, i32 157
  %223 = load i32, i32* %RCEnable204, align 4
  %tobool205 = icmp ne i32 %223, 0
  br i1 %tobool205, label %if.else.289, label %land.lhs.true.206

land.lhs.true.206:                                ; preds = %if.end.203
  %224 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding207 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %224, i32 0, i32 69
  %225 = load i32, i32* %HierarchicalCoding207, align 4
  %cmp208 = icmp eq i32 %225, 0
  br i1 %cmp208, label %if.then.210, label %if.else.289

if.then.210:                                      ; preds = %land.lhs.true.206
  %226 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start211 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %226, i32 0, i32 110
  %227 = load i32, i32* %qp2start211, align 4
  %cmp212 = icmp sgt i32 %227, 0
  br i1 %cmp212, label %land.lhs.true.214, label %lor.lhs.false.223

land.lhs.true.214:                                ; preds = %if.then.210
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr215 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 64
  %229 = load i32, i32* %tr215, align 4
  %230 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start216 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %230, i32 0, i32 110
  %231 = load i32, i32* %qp2start216, align 4
  %cmp217 = icmp sge i32 %229, %231
  br i1 %cmp217, label %land.lhs.true.219, label %lor.lhs.false.223

land.lhs.true.219:                                ; preds = %land.lhs.true.214
  %232 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator220 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %232, i32 0, i32 54
  %233 = load i32, i32* %sp2_frame_indicator220, align 4
  %cmp221 = icmp eq i32 %233, 0
  br i1 %cmp221, label %if.then.239, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %land.lhs.true.219, %land.lhs.true.214, %if.then.210
  %234 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start224 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %234, i32 0, i32 110
  %235 = load i32, i32* %qp2start224, align 4
  %cmp225 = icmp sgt i32 %235, 0
  br i1 %cmp225, label %land.lhs.true.227, label %if.else.241

land.lhs.true.227:                                ; preds = %lor.lhs.false.223
  %236 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr228 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %236, i32 0, i32 64
  %237 = load i32, i32* %tr228, align 4
  %238 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start229 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %238, i32 0, i32 110
  %239 = load i32, i32* %qp2start229, align 4
  %mul230 = mul nsw i32 2, %239
  %rem231 = srem i32 %237, %mul230
  %240 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start232 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %240, i32 0, i32 110
  %241 = load i32, i32* %qp2start232, align 4
  %cmp233 = icmp sge i32 %rem231, %241
  br i1 %cmp233, label %land.lhs.true.235, label %if.else.241

land.lhs.true.235:                                ; preds = %land.lhs.true.227
  %242 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator236 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %242, i32 0, i32 54
  %243 = load i32, i32* %sp2_frame_indicator236, align 4
  %cmp237 = icmp eq i32 %243, 1
  br i1 %cmp237, label %if.then.239, label %if.else.241

if.then.239:                                      ; preds = %land.lhs.true.235, %land.lhs.true.219
  %244 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %244, i32 0, i32 109
  %245 = load i32, i32* %qpB2, align 4
  %246 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp240 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %246, i32 0, i32 9
  store i32 %245, i32* %qp240, align 4
  br label %if.end.243

if.else.241:                                      ; preds = %land.lhs.true.235, %land.lhs.true.227, %lor.lhs.false.223
  %247 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %247, i32 0, i32 42
  %248 = load i32, i32* %qpB, align 4
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp242 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 9
  store i32 %248, i32* %qp242, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.241, %if.then.239
  %250 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc244 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %250, i32 0, i32 122
  %251 = load i32, i32* %nal_reference_idc244, align 4
  %tobool245 = icmp ne i32 %251, 0
  br i1 %tobool245, label %if.then.246, label %if.end.288

if.then.246:                                      ; preds = %if.end.243
  %252 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start247 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %252, i32 0, i32 110
  %253 = load i32, i32* %qp2start247, align 4
  %cmp248 = icmp sgt i32 %253, 0
  br i1 %cmp248, label %land.lhs.true.250, label %lor.lhs.false.259

land.lhs.true.250:                                ; preds = %if.then.246
  %254 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr251 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %254, i32 0, i32 64
  %255 = load i32, i32* %tr251, align 4
  %256 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start252 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %256, i32 0, i32 110
  %257 = load i32, i32* %qp2start252, align 4
  %cmp253 = icmp sge i32 %255, %257
  br i1 %cmp253, label %land.lhs.true.255, label %lor.lhs.false.259

land.lhs.true.255:                                ; preds = %land.lhs.true.250
  %258 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator256 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %258, i32 0, i32 54
  %259 = load i32, i32* %sp2_frame_indicator256, align 4
  %cmp257 = icmp eq i32 %259, 0
  br i1 %cmp257, label %if.then.275, label %lor.lhs.false.259

lor.lhs.false.259:                                ; preds = %land.lhs.true.255, %land.lhs.true.250, %if.then.246
  %260 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start260 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %260, i32 0, i32 110
  %261 = load i32, i32* %qp2start260, align 4
  %cmp261 = icmp sgt i32 %261, 0
  br i1 %cmp261, label %land.lhs.true.263, label %if.else.280

land.lhs.true.263:                                ; preds = %lor.lhs.false.259
  %262 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr264 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %262, i32 0, i32 64
  %263 = load i32, i32* %tr264, align 4
  %264 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start265 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %264, i32 0, i32 110
  %265 = load i32, i32* %qp2start265, align 4
  %mul266 = mul nsw i32 2, %265
  %rem267 = srem i32 %263, %mul266
  %266 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start268 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %266, i32 0, i32 110
  %267 = load i32, i32* %qp2start268, align 4
  %cmp269 = icmp sge i32 %rem267, %267
  br i1 %cmp269, label %land.lhs.true.271, label %if.else.280

land.lhs.true.271:                                ; preds = %land.lhs.true.263
  %268 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator272 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %268, i32 0, i32 54
  %269 = load i32, i32* %sp2_frame_indicator272, align 4
  %cmp273 = icmp eq i32 %269, 1
  br i1 %cmp273, label %if.then.275, label %if.else.280

if.then.275:                                      ; preds = %land.lhs.true.271, %land.lhs.true.255
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 144
  %271 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %sub276 = sub nsw i32 0, %271
  %272 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2277 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %272, i32 0, i32 109
  %273 = load i32, i32* %qpB2277, align 4
  %274 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRS2Offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %274, i32 0, i32 112
  %275 = load i32, i32* %qpBRS2Offset, align 4
  %add278 = add nsw i32 %273, %275
  %call = call i32 @iClip3(i32 %sub276, i32 51, i32 %add278)
  %276 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp279 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %276, i32 0, i32 9
  store i32 %call, i32* %qp279, align 4
  br label %if.end.287

if.else.280:                                      ; preds = %land.lhs.true.271, %land.lhs.true.263, %lor.lhs.false.259
  %277 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale281 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %277, i32 0, i32 144
  %278 = load i32, i32* %bitdepth_luma_qp_scale281, align 4
  %sub282 = sub nsw i32 0, %278
  %279 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB283 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %279, i32 0, i32 42
  %280 = load i32, i32* %qpB283, align 4
  %281 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %281, i32 0, i32 43
  %282 = load i32, i32* %qpBRSOffset, align 4
  %add284 = add nsw i32 %280, %282
  %call285 = call i32 @iClip3(i32 %sub282, i32 51, i32 %add284)
  %283 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp286 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %283, i32 0, i32 9
  store i32 %call285, i32* %qp286, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.280, %if.then.275
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.end.243
  br label %if.end.303

if.else.289:                                      ; preds = %land.lhs.true.206, %if.end.203
  %284 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable290 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %284, i32 0, i32 157
  %285 = load i32, i32* %RCEnable290, align 4
  %tobool291 = icmp ne i32 %285, 0
  br i1 %tobool291, label %if.end.302, label %land.lhs.true.292

land.lhs.true.292:                                ; preds = %if.else.289
  %286 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding293 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %286, i32 0, i32 69
  %287 = load i32, i32* %HierarchicalCoding293, align 4
  %cmp294 = icmp ne i32 %287, 0
  br i1 %cmp294, label %if.then.296, label %if.end.302

if.then.296:                                      ; preds = %land.lhs.true.292
  %288 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code297 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %288, i32 0, i32 76
  %289 = load i32, i32* %b_frame_to_code297, align 4
  %sub298 = sub nsw i32 %289, 1
  %idxprom299 = sext i32 %sub298 to i64
  %290 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx300 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %290, i64 %idxprom299
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx300, i32 0, i32 3
  %291 = load i32, i32* %slice_qp, align 4
  %292 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp301 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %292, i32 0, i32 9
  store i32 %291, i32* %qp301, align 4
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.296, %land.lhs.true.292, %if.else.289
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.end.288
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %if.end.122
  %293 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp305 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %293, i32 0, i32 9
  %294 = load i32, i32* %qp305, align 4
  %295 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale306 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %295, i32 0, i32 144
  %296 = load i32, i32* %bitdepth_luma_qp_scale306, align 4
  %add307 = add nsw i32 %294, %296
  %297 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp_scaled = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %297, i32 0, i32 11
  store i32 %add307, i32* %qp_scaled, align 4
  %298 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %298, i32 0, i32 95
  %299 = load i32, i32* %layer, align 4
  call void @UpdateSubseqInfo(i32 %299)
  call void @UpdateSceneInformation(i32 0, i32 0, i32 0, i32 -1)
  %300 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %no_output_of_prior_pics_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %300, i32 0, i32 124
  store i32 0, i32* %no_output_of_prior_pics_flag, align 4
  %301 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %long_term_reference_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %301, i32 0, i32 125
  store i32 0, i32* %long_term_reference_flag, align 4
  call void @init_dec_ref_pic_marking_buffer()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @CalculateFrameNumber() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 76
  %1 = load i32, i32* %b_frame_to_code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.24

if.then:                                          ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 69
  %3 = load i32, i32* %HierarchicalCoding, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 0
  %6 = load i32, i32* %number, align 4
  %7 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %6, %7
  %sub3 = sub nsw i32 %sub, 1
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 5
  %9 = load i32, i32* %jumpd, align 4
  %add = add nsw i32 %9, 1
  %mul = mul nsw i32 %sub3, %add
  %add4 = add nsw i32 %4, %mul
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 74
  %11 = load double, double* %b_interval, align 8
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 76
  %13 = load i32, i32* %b_frame_to_code5, align 4
  %sub6 = sub nsw i32 %13, 1
  %idxprom = sext i32 %sub6 to i64
  %14 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %14, i64 %idxprom
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 1
  %15 = load i32, i32* %display_no, align 4
  %add7 = add nsw i32 1, %15
  %conv = sitofp i32 %add7 to double
  %mul8 = fmul double %11, %conv
  %conv9 = fptosi double %mul8 to i32
  %add10 = add nsw i32 %add4, %conv9
  store i32 %add10, i32* @frame_no, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 0
  %18 = load i32, i32* %number11, align 4
  %19 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub12 = sub nsw i32 %18, %19
  %sub13 = sub nsw i32 %sub12, 1
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 5
  %21 = load i32, i32* %jumpd14, align 4
  %add15 = add nsw i32 %21, 1
  %mul16 = mul nsw i32 %sub13, %add15
  %add17 = add nsw i32 %16, %mul16
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 74
  %23 = load double, double* %b_interval18, align 8
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 76
  %25 = load i32, i32* %b_frame_to_code19, align 4
  %conv20 = sitofp i32 %25 to double
  %mul21 = fmul double %23, %conv20
  %conv22 = fptosi double %mul21 to i32
  %add23 = add nsw i32 %add17, %conv22
  store i32 %add23, i32* @frame_no, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.38

if.else.24:                                       ; preds = %entry
  %26 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 0
  %28 = load i32, i32* %number25, align 4
  %29 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub26 = sub nsw i32 %28, %29
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 5
  %31 = load i32, i32* %jumpd27, align 4
  %add28 = add nsw i32 %31, 1
  %mul29 = mul nsw i32 %sub26, %add28
  %add30 = add nsw i32 %26, %mul29
  store i32 %add30, i32* @frame_no, align 4
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 107
  %33 = load i32, i32* %last_frame, align 4
  %tobool31 = icmp ne i32 %33, 0
  br i1 %tobool31, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.else.24
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 0
  %35 = load i32, i32* %number32, align 4
  %add33 = add nsw i32 %35, 1
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 2
  %37 = load i32, i32* %no_frames, align 4
  %cmp = icmp eq i32 %add33, %37
  br i1 %cmp, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame36 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 107
  %39 = load i32, i32* %last_frame36, align 4
  store i32 %39, i32* @frame_no, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %land.lhs.true, %if.else.24
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end
  %40 = load i32, i32* @frame_no, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal void @ReadOneFrame(i32 %FrameNoInFile, i32 %HeaderSize, i32 %xs, i32 %ys, i32 %xs_cr, i32 %ys_cr) #0 {
entry:
  %FrameNoInFile.addr = alloca i32, align 4
  %HeaderSize.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %xs_cr.addr = alloca i32, align 4
  %ys_cr.addr = alloca i32, align 4
  %symbol_size_in_bytes = alloca i32, align 4
  %imgsize_y = alloca i32, align 4
  %imgsize_uv = alloca i32, align 4
  %bytes_y = alloca i32, align 4
  %bytes_uv = alloca i32, align 4
  %framesize_in_bytes = alloca i64, align 8
  %buf = alloca i8*, align 8
  %rgb_input = alloca i32, align 4
  store i32 %FrameNoInFile, i32* %FrameNoInFile.addr, align 4
  store i32 %HeaderSize, i32* %HeaderSize.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %xs_cr, i32* %xs_cr.addr, align 4
  store i32 %ys_cr, i32* %ys_cr.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_unit_size_on_disk = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 141
  %1 = load i32, i32* %pic_unit_size_on_disk, align 4
  %div = sdiv i32 %1, 8
  store i32 %div, i32* %symbol_size_in_bytes, align 4
  %2 = load i32, i32* %xs.addr, align 4
  %3 = load i32, i32* %ys.addr, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %imgsize_y, align 4
  %4 = load i32, i32* %xs_cr.addr, align 4
  %5 = load i32, i32* %ys_cr.addr, align 4
  %mul1 = mul nsw i32 %4, %5
  store i32 %mul1, i32* %imgsize_uv, align 4
  %6 = load i32, i32* %imgsize_y, align 4
  %7 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul2 = mul i32 %6, %7
  store i32 %mul2, i32* %bytes_y, align 4
  %8 = load i32, i32* %imgsize_uv, align 4
  %9 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul3 = mul i32 %8, %9
  store i32 %mul3, i32* %bytes_uv, align 4
  %10 = load i32, i32* %bytes_y, align 4
  %11 = load i32, i32* %bytes_uv, align 4
  %mul4 = mul nsw i32 2, %11
  %add = add nsw i32 %10, %mul4
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %framesize_in_bytes, align 8
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 176
  %13 = load i32, i32* %rgb_input_flag, align 4
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 16
  %15 = load i32, i32* %yuv_format, align 4
  %cmp6 = icmp eq i32 %15, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  store i32 %land.ext, i32* %rgb_input, align 4
  %17 = load i32, i32* %xs.addr, align 4
  %18 = load i32, i32* %ys.addr, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul9 = mul i32 %mul8, %19
  %conv10 = zext i32 %mul9 to i64
  %call = call noalias i8* @malloc(i64 %conv10) #2
  store i8* %call, i8** %buf, align 8
  %cmp11 = icmp eq i8* null, %call
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %20 = load i32, i32* @p_in, align 4
  %21 = load i32, i32* %HeaderSize.addr, align 4
  %conv13 = sext i32 %21 to i64
  %call14 = call i64 @lseek64(i32 %20, i64 %conv13, i32 0) #2
  %22 = load i32, i32* %HeaderSize.addr, align 4
  %conv15 = sext i32 %22 to i64
  %cmp16 = icmp ne i64 %call14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i32 0, i32 0), i32 -1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end
  %23 = load i32, i32* @p_in, align 4
  %24 = load i64, i64* %framesize_in_bytes, align 8
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %start_frame = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 33
  %26 = load i32, i32* %start_frame, align 4
  %conv20 = sext i32 %26 to i64
  %mul21 = mul nsw i64 %24, %conv20
  %call22 = call i64 @lseek64(i32 %23, i64 %mul21, i32 1) #2
  %cmp23 = icmp eq i64 %call22, -1
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.19
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %start_frame26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 33
  %28 = load i32, i32* %start_frame26, align 4
  %call27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.28, i32 0, i32 0), i32 %28) #2
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 -1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.19
  %29 = load i32, i32* @p_in, align 4
  %30 = load i64, i64* %framesize_in_bytes, align 8
  %31 = load i32, i32* %FrameNoInFile.addr, align 4
  %conv29 = sext i32 %31 to i64
  %mul30 = mul nsw i64 %30, %conv29
  %call31 = call i64 @lseek64(i32 %29, i64 %mul30, i32 1) #2
  %cmp32 = icmp eq i64 %call31, -1
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.end.28
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %start_frame35 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 33
  %33 = load i32, i32* %start_frame35, align 4
  %34 = load i32, i32* %FrameNoInFile.addr, align 4
  %add36 = add nsw i32 %33, %34
  %call37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.28, i32 0, i32 0), i32 %add36) #2
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 -1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.end.28
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_unit_size_on_disk39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 141
  %36 = load i32, i32* %pic_unit_size_on_disk39, align 4
  %rem = srem i32 %36, 8
  %cmp40 = icmp eq i32 %rem, 0
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.38
  %37 = load i32, i32* %rgb_input, align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.then.42
  %38 = load i32, i32* @p_in, align 4
  %39 = load i64, i64* %framesize_in_bytes, align 8
  %div44 = sdiv i64 %39, 3
  %call45 = call i64 @lseek64(i32 %38, i64 %div44, i32 1) #2
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.then.42
  %40 = load i32, i32* @p_in, align 4
  %41 = load i8*, i8** %buf, align 8
  %42 = load i32, i32* %bytes_y, align 4
  %conv47 = sext i32 %42 to i64
  %call48 = call i64 @read(i32 %40, i8* %41, i64 %conv47)
  %43 = load i32, i32* %bytes_y, align 4
  %conv49 = sext i32 %43 to i64
  %cmp50 = icmp ne i64 %call48, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.46
  %44 = load i32, i32* %bytes_y, align 4
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.29, i32 0, i32 0), i32 %44)
  call void @report_stats_on_error()
  call void @exit(i32 -1) #6
  unreachable

if.end.54:                                        ; preds = %if.end.46
  %45 = load i16**, i16*** @imgY_org_frm, align 8
  %46 = load i8*, i8** %buf, align 8
  %47 = load i32, i32* %xs.addr, align 4
  %48 = load i32, i32* %ys.addr, align 4
  %49 = load i32, i32* %symbol_size_in_bytes, align 4
  call void @buf2img(i16** %45, i8* %46, i32 %47, i32 %48, i32 %49)
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 160
  %51 = load i32, i32* %yuv_format55, align 4
  %cmp56 = icmp ne i32 %51, 0
  br i1 %cmp56, label %if.then.58, label %if.end.86

if.then.58:                                       ; preds = %if.end.54
  %52 = load i32, i32* @p_in, align 4
  %53 = load i8*, i8** %buf, align 8
  %54 = load i32, i32* %bytes_uv, align 4
  %conv59 = sext i32 %54 to i64
  %call60 = call i64 @read(i32 %52, i8* %53, i64 %conv59)
  %55 = load i32, i32* %bytes_uv, align 4
  %conv61 = sext i32 %55 to i64
  %cmp62 = icmp ne i64 %call60, %conv61
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.then.58
  %56 = load i32, i32* %bytes_y, align 4
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.29, i32 0, i32 0), i32 %56)
  call void @report_stats_on_error()
  call void @exit(i32 -1) #6
  unreachable

if.end.66:                                        ; preds = %if.then.58
  %57 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %57, i64 0
  %58 = load i16**, i16*** %arrayidx, align 8
  %59 = load i8*, i8** %buf, align 8
  %60 = load i32, i32* %xs_cr.addr, align 4
  %61 = load i32, i32* %ys_cr.addr, align 4
  %62 = load i32, i32* %symbol_size_in_bytes, align 4
  call void @buf2img(i16** %58, i8* %59, i32 %60, i32 %61, i32 %62)
  %63 = load i32, i32* %rgb_input, align 4
  %tobool67 = icmp ne i32 %63, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.66
  %64 = load i32, i32* @p_in, align 4
  %65 = load i64, i64* %framesize_in_bytes, align 8
  %sub = sub nsw i64 0, %65
  %call69 = call i64 @lseek64(i32 %64, i64 %sub, i32 1) #2
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.66
  %66 = load i32, i32* @p_in, align 4
  %67 = load i8*, i8** %buf, align 8
  %68 = load i32, i32* %bytes_uv, align 4
  %conv71 = sext i32 %68 to i64
  %call72 = call i64 @read(i32 %66, i8* %67, i64 %conv71)
  %69 = load i32, i32* %bytes_uv, align 4
  %conv73 = sext i32 %69 to i64
  %cmp74 = icmp ne i64 %call72, %conv73
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.70
  %70 = load i32, i32* %bytes_y, align 4
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.29, i32 0, i32 0), i32 %70)
  call void @report_stats_on_error()
  call void @exit(i32 -1) #6
  unreachable

if.end.78:                                        ; preds = %if.end.70
  %71 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx79 = getelementptr inbounds i16**, i16*** %71, i64 1
  %72 = load i16**, i16*** %arrayidx79, align 8
  %73 = load i8*, i8** %buf, align 8
  %74 = load i32, i32* %xs_cr.addr, align 4
  %75 = load i32, i32* %ys_cr.addr, align 4
  %76 = load i32, i32* %symbol_size_in_bytes, align 4
  call void @buf2img(i16** %72, i8* %73, i32 %74, i32 %75, i32 %76)
  %77 = load i32, i32* %rgb_input, align 4
  %tobool80 = icmp ne i32 %77, 0
  br i1 %tobool80, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %if.end.78
  %78 = load i32, i32* @p_in, align 4
  %79 = load i64, i64* %framesize_in_bytes, align 8
  %mul82 = mul nsw i64 %79, 2
  %div83 = sdiv i64 %mul82, 3
  %call84 = call i64 @lseek64(i32 %78, i64 %div83, i32 1) #2
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %if.end.78
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.54
  br label %if.end.88

if.else:                                          ; preds = %if.end.38
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.30, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.88:                                        ; preds = %if.end.86
  %80 = load i8*, i8** %buf, align 8
  call void @free(i8* %80) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PaddAutoCropBorders(i32 %org_size_x, i32 %org_size_y, i32 %img_size_x, i32 %img_size_y, i32 %org_size_x_cr, i32 %org_size_y_cr, i32 %img_size_x_cr, i32 %img_size_y_cr) #0 {
entry:
  %org_size_x.addr = alloca i32, align 4
  %org_size_y.addr = alloca i32, align 4
  %img_size_x.addr = alloca i32, align 4
  %img_size_y.addr = alloca i32, align 4
  %org_size_x_cr.addr = alloca i32, align 4
  %org_size_y_cr.addr = alloca i32, align 4
  %img_size_x_cr.addr = alloca i32, align 4
  %img_size_y_cr.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %org_size_x, i32* %org_size_x.addr, align 4
  store i32 %org_size_y, i32* %org_size_y.addr, align 4
  store i32 %img_size_x, i32* %img_size_x.addr, align 4
  store i32 %img_size_y, i32* %img_size_y.addr, align 4
  store i32 %org_size_x_cr, i32* %org_size_x_cr.addr, align 4
  store i32 %org_size_y_cr, i32* %org_size_y_cr.addr, align 4
  store i32 %img_size_x_cr, i32* %img_size_x_cr.addr, align 4
  store i32 %img_size_y_cr, i32* %img_size_y_cr.addr, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %y, align 4
  %1 = load i32, i32* %org_size_y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %org_size_x.addr, align 4
  store i32 %2, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %img_size_x.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load i32, i32* %y, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i16**, i16*** @imgY_org_frm, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 %idxprom4
  %8 = load i16*, i16** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx5, align 2
  %10 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32, i32* %y, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i16**, i16*** @imgY_org_frm, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %12, i64 %idxprom7
  %13 = load i16*, i16** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %13, i64 %idxprom6
  store i16 %9, i16* %arrayidx9, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %14 = load i32, i32* %x, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %15 = load i32, i32* %y, align 4
  %inc11 = add nsw i32 %15, 1
  store i32 %inc11, i32* %y, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %16 = load i32, i32* %org_size_y.addr, align 4
  store i32 %16, i32* %y, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.31, %for.end.12
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %img_size_y.addr, align 4
  %cmp14 = icmp slt i32 %17, %18
  br i1 %cmp14, label %for.body.15, label %for.end.33

for.body.15:                                      ; preds = %for.cond.13
  store i32 0, i32* %x, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.28, %for.body.15
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %img_size_x.addr, align 4
  %cmp17 = icmp slt i32 %19, %20
  br i1 %cmp17, label %for.body.18, label %for.end.30

for.body.18:                                      ; preds = %for.cond.16
  %21 = load i32, i32* %x, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load i32, i32* %y, align 4
  %sub20 = sub nsw i32 %22, 1
  %idxprom21 = sext i32 %sub20 to i64
  %23 = load i16**, i16*** @imgY_org_frm, align 8
  %arrayidx22 = getelementptr inbounds i16*, i16** %23, i64 %idxprom21
  %24 = load i16*, i16** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %24, i64 %idxprom19
  %25 = load i16, i16* %arrayidx23, align 2
  %26 = load i32, i32* %x, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load i32, i32* %y, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load i16**, i16*** @imgY_org_frm, align 8
  %arrayidx26 = getelementptr inbounds i16*, i16** %28, i64 %idxprom25
  %29 = load i16*, i16** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %29, i64 %idxprom24
  store i16 %25, i16* %arrayidx27, align 2
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.18
  %30 = load i32, i32* %x, align 4
  %inc29 = add nsw i32 %30, 1
  store i32 %inc29, i32* %x, align 4
  br label %for.cond.16

for.end.30:                                       ; preds = %for.cond.16
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.30
  %31 = load i32, i32* %y, align 4
  %inc32 = add nsw i32 %31, 1
  store i32 %inc32, i32* %y, align 4
  br label %for.cond.13

for.end.33:                                       ; preds = %for.cond.13
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 160
  %33 = load i32, i32* %yuv_format, align 4
  %cmp34 = icmp ne i32 %33, 0
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.33
  store i32 0, i32* %y, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.66, %if.then
  %34 = load i32, i32* %y, align 4
  %35 = load i32, i32* %org_size_y_cr.addr, align 4
  %cmp36 = icmp slt i32 %34, %35
  br i1 %cmp36, label %for.body.37, label %for.end.68

for.body.37:                                      ; preds = %for.cond.35
  %36 = load i32, i32* %org_size_x_cr.addr, align 4
  store i32 %36, i32* %x, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.63, %for.body.37
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %img_size_x_cr.addr, align 4
  %cmp39 = icmp slt i32 %37, %38
  br i1 %cmp39, label %for.body.40, label %for.end.65

for.body.40:                                      ; preds = %for.cond.38
  %39 = load i32, i32* %x, align 4
  %sub41 = sub nsw i32 %39, 1
  %idxprom42 = sext i32 %sub41 to i64
  %40 = load i32, i32* %y, align 4
  %idxprom43 = sext i32 %40 to i64
  %41 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx44 = getelementptr inbounds i16**, i16*** %41, i64 0
  %42 = load i16**, i16*** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i16*, i16** %42, i64 %idxprom43
  %43 = load i16*, i16** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %43, i64 %idxprom42
  %44 = load i16, i16* %arrayidx46, align 2
  %45 = load i32, i32* %x, align 4
  %idxprom47 = sext i32 %45 to i64
  %46 = load i32, i32* %y, align 4
  %idxprom48 = sext i32 %46 to i64
  %47 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx49 = getelementptr inbounds i16**, i16*** %47, i64 0
  %48 = load i16**, i16*** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i16*, i16** %48, i64 %idxprom48
  %49 = load i16*, i16** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %49, i64 %idxprom47
  store i16 %44, i16* %arrayidx51, align 2
  %50 = load i32, i32* %x, align 4
  %sub52 = sub nsw i32 %50, 1
  %idxprom53 = sext i32 %sub52 to i64
  %51 = load i32, i32* %y, align 4
  %idxprom54 = sext i32 %51 to i64
  %52 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx55 = getelementptr inbounds i16**, i16*** %52, i64 1
  %53 = load i16**, i16*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16*, i16** %53, i64 %idxprom54
  %54 = load i16*, i16** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %54, i64 %idxprom53
  %55 = load i16, i16* %arrayidx57, align 2
  %56 = load i32, i32* %x, align 4
  %idxprom58 = sext i32 %56 to i64
  %57 = load i32, i32* %y, align 4
  %idxprom59 = sext i32 %57 to i64
  %58 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx60 = getelementptr inbounds i16**, i16*** %58, i64 1
  %59 = load i16**, i16*** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16*, i16** %59, i64 %idxprom59
  %60 = load i16*, i16** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %60, i64 %idxprom58
  store i16 %55, i16* %arrayidx62, align 2
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.40
  %61 = load i32, i32* %x, align 4
  %inc64 = add nsw i32 %61, 1
  store i32 %inc64, i32* %x, align 4
  br label %for.cond.38

for.end.65:                                       ; preds = %for.cond.38
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %62 = load i32, i32* %y, align 4
  %inc67 = add nsw i32 %62, 1
  store i32 %inc67, i32* %y, align 4
  br label %for.cond.35

for.end.68:                                       ; preds = %for.cond.35
  %63 = load i32, i32* %org_size_y_cr.addr, align 4
  store i32 %63, i32* %y, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.100, %for.end.68
  %64 = load i32, i32* %y, align 4
  %65 = load i32, i32* %img_size_y_cr.addr, align 4
  %cmp70 = icmp slt i32 %64, %65
  br i1 %cmp70, label %for.body.71, label %for.end.102

for.body.71:                                      ; preds = %for.cond.69
  store i32 0, i32* %x, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.97, %for.body.71
  %66 = load i32, i32* %x, align 4
  %67 = load i32, i32* %img_size_x_cr.addr, align 4
  %cmp73 = icmp slt i32 %66, %67
  br i1 %cmp73, label %for.body.74, label %for.end.99

for.body.74:                                      ; preds = %for.cond.72
  %68 = load i32, i32* %x, align 4
  %idxprom75 = sext i32 %68 to i64
  %69 = load i32, i32* %y, align 4
  %sub76 = sub nsw i32 %69, 1
  %idxprom77 = sext i32 %sub76 to i64
  %70 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx78 = getelementptr inbounds i16**, i16*** %70, i64 0
  %71 = load i16**, i16*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i16*, i16** %71, i64 %idxprom77
  %72 = load i16*, i16** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %72, i64 %idxprom75
  %73 = load i16, i16* %arrayidx80, align 2
  %74 = load i32, i32* %x, align 4
  %idxprom81 = sext i32 %74 to i64
  %75 = load i32, i32* %y, align 4
  %idxprom82 = sext i32 %75 to i64
  %76 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx83 = getelementptr inbounds i16**, i16*** %76, i64 0
  %77 = load i16**, i16*** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i16*, i16** %77, i64 %idxprom82
  %78 = load i16*, i16** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i16, i16* %78, i64 %idxprom81
  store i16 %73, i16* %arrayidx85, align 2
  %79 = load i32, i32* %x, align 4
  %idxprom86 = sext i32 %79 to i64
  %80 = load i32, i32* %y, align 4
  %sub87 = sub nsw i32 %80, 1
  %idxprom88 = sext i32 %sub87 to i64
  %81 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx89 = getelementptr inbounds i16**, i16*** %81, i64 1
  %82 = load i16**, i16*** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i16*, i16** %82, i64 %idxprom88
  %83 = load i16*, i16** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i16, i16* %83, i64 %idxprom86
  %84 = load i16, i16* %arrayidx91, align 2
  %85 = load i32, i32* %x, align 4
  %idxprom92 = sext i32 %85 to i64
  %86 = load i32, i32* %y, align 4
  %idxprom93 = sext i32 %86 to i64
  %87 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx94 = getelementptr inbounds i16**, i16*** %87, i64 1
  %88 = load i16**, i16*** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16*, i16** %88, i64 %idxprom93
  %89 = load i16*, i16** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %89, i64 %idxprom92
  store i16 %84, i16* %arrayidx96, align 2
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.74
  %90 = load i32, i32* %x, align 4
  %inc98 = add nsw i32 %90, 1
  store i32 %inc98, i32* %x, align 4
  br label %for.cond.72

for.end.99:                                       ; preds = %for.cond.72
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.99
  %91 = load i32, i32* %y, align 4
  %inc101 = add nsw i32 %91, 1
  store i32 %inc101, i32* %y, align 4
  br label %for.cond.69

for.end.102:                                      ; preds = %for.cond.69
  br label %if.end

if.end:                                           ; preds = %for.end.102, %for.end.33
  ret void
}

; Function Attrs: nounwind uwtable
define void @read_SP_coefficients() #0 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %SP_coeff_file = alloca %struct._IO_FILE*, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 110
  %1 = load i32, i32* %qp2start, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 64
  %3 = load i32, i32* %tr, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 110
  %5 = load i32, i32* %qp2start1, align 4
  %mul = mul nsw i32 2, %5
  %rem = srem i32 %3, %mul
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 110
  %7 = load i32, i32* %qp2start2, align 4
  %cmp3 = icmp sge i32 %rem, %7
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_input_filename1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 57
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %sp2_input_filename1, i32 0, i32 0
  %call = call %struct._IO_FILE* @fopen64(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %SP_coeff_file, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_input_filename2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 58
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %sp2_input_filename2, i32 0, i32 0
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay6)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_input_filename28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 58
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %sp2_input_filename28, i32 0, i32 0
  %call10 = call %struct._IO_FILE* @fopen64(i8* %arraydecay9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %SP_coeff_file, align 8
  %cmp11 = icmp eq %struct._IO_FILE* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.else
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_input_filename113 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 57
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %sp2_input_filename113, i32 0, i32 0
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay14)
  call void @exit(i32 -1) #6
  unreachable

if.end.16:                                        ; preds = %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %SP_coeff_file, align 8
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %size = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 22
  %14 = load i32, i32* %size, align 4
  %mul18 = mul nsw i32 %14, 3
  %div = sdiv i32 %mul18, 2
  %15 = load i32, i32* @number_sp2_frames, align 4
  %mul19 = mul nsw i32 %div, %15
  %conv = sext i32 %mul19 to i64
  %mul20 = mul i64 %conv, 4
  %call21 = call i32 @fseek(%struct._IO_FILE* %12, i64 %mul20, i32 0)
  %cmp22 = icmp ne i32 0, %call21
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.17
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.26:                                        ; preds = %if.end.17
  %16 = load i32, i32* @number_sp2_frames, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* @number_sp2_frames, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %17 = load i32, i32* %i, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 17
  %19 = load i32, i32* %height, align 4
  %cmp27 = icmp slt i32 %17, %19
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i32**, i32*** @lrec, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %23, i64 %idxprom
  %24 = load i32*, i32** %arrayidx, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 13
  %27 = load i32, i32* %width29, align 4
  %conv30 = sext i32 %27 to i64
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %SP_coeff_file, align 8
  %call31 = call i64 @fread(i8* %25, i64 4, i64 %conv30, %struct._IO_FILE* %28)
  %conv32 = trunc i64 %call31 to i32
  %cmp33 = icmp ne i32 %21, %conv32
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.body
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.37:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %29 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.63, %for.end
  %30 = load i32, i32* %k, align 4
  %cmp40 = icmp slt i32 %30, 2
  br i1 %cmp40, label %for.body.42, label %for.end.65

for.body.42:                                      ; preds = %for.cond.39
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.60, %for.body.42
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 20
  %33 = load i32, i32* %height_cr, align 4
  %cmp44 = icmp slt i32 %31, %33
  br i1 %cmp44, label %for.body.46, label %for.end.62

for.body.46:                                      ; preds = %for.cond.43
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 16
  %35 = load i32, i32* %width_cr, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %36 to i64
  %37 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %37 to i64
  %38 = load i32***, i32**** @lrec_uv, align 8
  %arrayidx49 = getelementptr inbounds i32**, i32*** %38, i64 %idxprom48
  %39 = load i32**, i32*** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i32*, i32** %39, i64 %idxprom47
  %40 = load i32*, i32** %arrayidx50, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 16
  %43 = load i32, i32* %width_cr51, align 4
  %conv52 = sext i32 %43 to i64
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %SP_coeff_file, align 8
  %call53 = call i64 @fread(i8* %41, i64 4, i64 %conv52, %struct._IO_FILE* %44)
  %conv54 = trunc i64 %call53 to i32
  %cmp55 = icmp ne i32 %35, %conv54
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %for.body.46
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.59:                                        ; preds = %for.body.46
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %45 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %45, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.43

for.end.62:                                       ; preds = %for.cond.43
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %46 = load i32, i32* %k, align 4
  %inc64 = add nsw i32 %46, 1
  store i32 %inc64, i32* %k, align 4
  br label %for.cond.39

for.end.65:                                       ; preds = %for.cond.39
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %SP_coeff_file, align 8
  %call66 = call i32 @fclose(%struct._IO_FILE* %47)
  ret void
}

; Function Attrs: nounwind uwtable
define void @field_picture(%struct.Picture* %top, %struct.Picture* %bottom) #0 {
entry:
  %top.addr = alloca %struct.Picture*, align 8
  %bottom.addr = alloca %struct.Picture*, align 8
  %old_pic_type = alloca i32, align 4
  %TopFieldBits = alloca i32, align 4
  store %struct.Picture* %top, %struct.Picture** %top.addr, align 8
  store %struct.Picture* %bottom, %struct.Picture** %bottom.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 172
  store i32 0, i32* %SumFrameQP, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 5
  %2 = load i32, i32* %type, align 4
  store i32 %2, i32* %old_pic_type, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_fld = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 32
  store i32 0, i32* %em_prev_bits_fld, align 4
  %4 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_fld1 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %4, i32 0, i32 32
  %5 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %5, i32 0, i32 33
  store i32* %em_prev_bits_fld1, i32** %em_prev_bits, align 8
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 0
  %7 = load i32, i32* %number, align 4
  %mul = mul nsw i32 %7, 2
  store i32 %mul, i32* %number, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 93
  %9 = load i32, i32* %buf_cycle, align 4
  %mul2 = mul nsw i32 %9, 2
  store i32 %mul2, i32* %buf_cycle, align 4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 15
  %11 = load i32, i32* %img_height, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 167
  %13 = load i32, i32* %auto_crop_bottom, align 4
  %add = add nsw i32 %11, %13
  %div = sdiv i32 %add, 2
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 17
  store i32 %div, i32* %height, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 21
  %16 = load i32, i32* %height_cr_frame, align 4
  %div3 = sdiv i32 %16, 2
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 20
  store i32 %div3, i32* %height_cr, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 66
  store i32 1, i32* %fld_flag, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 120
  %20 = load i32, i32* %FrameSizeInMbs, align 4
  %div4 = udiv i32 %20, 2
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 119
  store i32 %div4, i32* %PicSizeInMbs, align 4
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 6
  %23 = load i32, i32* %structure, align 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 13
  %25 = load i32, i32* %width, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 17
  %27 = load i32, i32* %height5, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 16
  %29 = load i32, i32* %width_cr, align 4
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 20
  %31 = load i32, i32* %height_cr6, align 4
  %call = call %struct.storable_picture* @alloc_storable_picture(i32 %23, i32 %25, i32 %27, i32 %29, i32 %31)
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_top_picture, align 8
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 111
  %33 = load i32, i32* %toppoc, align 4
  %34 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %34, i32 0, i32 1
  store i32 %33, i32* %poc, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 111
  %36 = load i32, i32* %toppoc7, align 4
  %37 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 4
  store i32 %36, i32* %frame_poc, align 4
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 115
  %39 = load i32, i32* %frame_num, align 4
  %40 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %40, i32 0, i32 11
  store i32 %39, i32* %pic_num, align 4
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 115
  %42 = load i32, i32* %frame_num8, align 4
  %43 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %frame_num9 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 10
  store i32 %42, i32* %frame_num9, align 4
  %44 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %coded_frame = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %44, i32 0, i32 27
  store i32 0, i32* %coded_frame, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 100
  store i32 0, i32* %MbaffFrameFlag, align 4
  %46 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %MbaffFrameFlag10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %46, i32 0, i32 28
  store i32 0, i32* %MbaffFrameFlag10, align 4
  store void (i32, i32*, i32*)* @get_mb_block_pos_normal, void (i32, i32*, i32*)** @get_mb_block_pos, align 8
  store void (i32, i32, i32, i32, %struct.pix_pos*)* @getNonAffNeighbour, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 111
  %48 = load i32, i32* %toppoc11, align 4
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 114
  store i32 %48, i32* %ThisPOC, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 6
  store i32 1, i32* %structure12, align 4
  %51 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  store %struct.storable_picture* %51, %struct.storable_picture** @enc_picture, align 8
  call void @copy_params()
  call void @put_buffer_top()
  call void @init_field()
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 5
  %53 = load i32, i32* %type13, align 4
  %cmp = icmp eq i32 %53, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %54 = load i32, i32* @nextP_tr_fld, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* @nextP_tr_fld, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 66
  store i32 1, i32* %fld_flag14, align 4
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 157
  %57 = load i32, i32* %RCEnable, align 4
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 160
  %59 = load i32, i32* %basicunit, align 4
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 132
  store i32 %59, i32* %BasicUnit, align 4
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 121
  %62 = load i32, i32* %PicInterlace, align 4
  %cmp16 = icmp eq i32 %62, 1
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.15
  %63 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @rc_init_pict(%struct.rc_quadratic* %63, i32 0, i32 1, i32 1, float 1.000000e+00)
  br label %if.end.18

if.else:                                          ; preds = %if.then.15
  %64 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @rc_init_pict(%struct.rc_quadratic* %64, i32 0, i32 1, i32 0, float 1.000000e+00)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  %65 = load i32 (%struct.rc_quadratic*, i32)*, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  %66 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %call19 = call i32 %65(%struct.rc_quadratic* %66, i32 1)
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 9
  store i32 %call19, i32* %qp, align 4
  %68 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TopFieldFlag = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %68, i32 0, i32 0
  store i32 1, i32* %TopFieldFlag, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.18, %if.end
  %69 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  call void @code_a_picture(%struct.Picture* %69)
  %70 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %structure21 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %70, i32 0, i32 0
  store i32 1, i32* %structure21, align 4
  %71 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %71)
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 60
  %73 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %73, i32 0, i32 6
  %74 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %74, i64 0
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %75 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %75, i32 0, i32 0
  %76 = load i32, i32* %byte_pos, align 4
  %mul22 = mul nsw i32 8, %76
  %77 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %bits_per_picture = getelementptr inbounds %struct.Picture, %struct.Picture* %77, i32 0, i32 3
  store i32 %mul22, i32* %bits_per_picture, align 4
  %78 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %bits_per_picture23 = getelementptr inbounds %struct.Picture, %struct.Picture* %78, i32 0, i32 3
  %79 = load i32, i32* %bits_per_picture23, align 4
  store i32 %79, i32* %TopFieldBits, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 6
  %81 = load i32, i32* %structure24, align 4
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 13
  %83 = load i32, i32* %width25, align 4
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 17
  %85 = load i32, i32* %height26, align 4
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 16
  %87 = load i32, i32* %width_cr27, align 4
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 20
  %89 = load i32, i32* %height_cr28, align 4
  %call29 = call %struct.storable_picture* @alloc_storable_picture(i32 %81, i32 %83, i32 %85, i32 %87, i32 %89)
  store %struct.storable_picture* %call29, %struct.storable_picture** @enc_bottom_picture, align 8
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 112
  %91 = load i32, i32* %bottompoc, align 4
  %92 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %poc30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %92, i32 0, i32 1
  store i32 %91, i32* %poc30, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 112
  %94 = load i32, i32* %bottompoc31, align 4
  %95 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %frame_poc32 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %95, i32 0, i32 4
  store i32 %94, i32* %frame_poc32, align 4
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 115
  %97 = load i32, i32* %frame_num33, align 4
  %98 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %pic_num34 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %98, i32 0, i32 11
  store i32 %97, i32* %pic_num34, align 4
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 115
  %100 = load i32, i32* %frame_num35, align 4
  %101 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %frame_num36 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 10
  store i32 %100, i32* %frame_num36, align 4
  %102 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %coded_frame37 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %102, i32 0, i32 27
  store i32 0, i32* %coded_frame37, align 4
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 100
  store i32 0, i32* %MbaffFrameFlag38, align 4
  %104 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %MbaffFrameFlag39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %104, i32 0, i32 28
  store i32 0, i32* %MbaffFrameFlag39, align 4
  store void (i32, i32*, i32*)* @get_mb_block_pos_normal, void (i32, i32*, i32*)** @get_mb_block_pos, align 8
  store void (i32, i32, i32, i32, %struct.pix_pos*)* @getNonAffNeighbour, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 112
  %106 = load i32, i32* %bottompoc40, align 4
  %107 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %107, i32 0, i32 114
  store i32 %106, i32* %ThisPOC41, align 4
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 6
  store i32 2, i32* %structure42, align 4
  %109 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  store %struct.storable_picture* %109, %struct.storable_picture** @enc_picture, align 8
  call void @copy_params()
  call void @put_buffer_bot()
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 0
  %111 = load i32, i32* %number43, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %number43, align 4
  call void @init_field()
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 5
  %113 = load i32, i32* %type44, align 4
  %cmp45 = icmp eq i32 %113, 1
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.20
  %114 = load i32, i32* @nextP_tr_fld, align 4
  %inc47 = add nsw i32 %114, 1
  store i32 %inc47, i32* @nextP_tr_fld, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.20
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 5
  %116 = load i32, i32* %type49, align 4
  %cmp50 = icmp eq i32 %116, 2
  br i1 %cmp50, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.end.48
  %117 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraBottom = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %117, i32 0, i32 123
  %118 = load i32, i32* %IntraBottom, align 4
  %cmp51 = icmp ne i32 %118, 1
  br i1 %cmp51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %land.lhs.true
  %119 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %119, i32 0, i32 68
  %120 = load i32, i32* %BRefPictures, align 4
  %cmp53 = icmp eq i32 %120, 2
  %cond = select i1 %cmp53, i32 1, i32 0
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 5
  store i32 %cond, i32* %type54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %land.lhs.true, %if.end.48
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 66
  store i32 1, i32* %fld_flag56, align 4
  %123 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable57 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %123, i32 0, i32 157
  %124 = load i32, i32* %RCEnable57, align 4
  %tobool58 = icmp ne i32 %124, 0
  br i1 %tobool58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.end.55
  %125 = load i32, i32* %TopFieldBits, align 4
  %126 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %bits_topfield = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %126, i32 0, i32 72
  store i32 %125, i32* %bits_topfield, align 4
  %127 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @rc_init_pict(%struct.rc_quadratic* %127, i32 0, i32 0, i32 0, float 1.000000e+00)
  %128 = load i32 (%struct.rc_quadratic*, i32)*, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  %129 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %call60 = call i32 %128(%struct.rc_quadratic* %129, i32 0)
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 9
  store i32 %call60, i32* %qp61, align 4
  %131 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TopFieldFlag62 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %131, i32 0, i32 0
  store i32 0, i32* %TopFieldFlag62, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.end.55
  %132 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %structure64 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %132, i32 0, i32 0
  store i32 2, i32* %structure64, align 4
  %133 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @code_a_picture(%struct.Picture* %133)
  %134 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %134, i32 0, i32 60
  %135 = load %struct.Slice*, %struct.Slice** %currentSlice65, align 8
  %partArr66 = getelementptr inbounds %struct.Slice, %struct.Slice* %135, i32 0, i32 6
  %136 = load %struct.datapartition*, %struct.datapartition** %partArr66, align 8
  %arrayidx67 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %136, i64 0
  %bitstream68 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx67, i32 0, i32 0
  %137 = load %struct.Bitstream*, %struct.Bitstream** %bitstream68, align 8
  %byte_pos69 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %137, i32 0, i32 0
  %138 = load i32, i32* %byte_pos69, align 4
  %mul70 = mul nsw i32 8, %138
  %139 = load %struct.Picture*, %struct.Picture** %bottom.addr, align 8
  %bits_per_picture71 = getelementptr inbounds %struct.Picture, %struct.Picture* %139, i32 0, i32 3
  store i32 %mul70, i32* %bits_per_picture71, align 4
  %140 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %140, i32 0, i32 4
  %141 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %141, i32 0, i32 5
  %142 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %142, i32 0, i32 6
  call void @distortion_fld(float* %distortion_y, float* %distortion_u, float* %distortion_v)
  ret void
}

declare void @copy_rc_jvt(%struct.rc_quadratic*, %struct.rc_quadratic*) #1

declare void @copy_rc_generic(%struct.rc_generic*, %struct.rc_generic*) #1

declare void @rc_init_pict(%struct.rc_quadratic*, i32, i32, i32, float) #1

; Function Attrs: nounwind uwtable
define void @frame_picture(%struct.Picture* %frame, i32 %rd_pass) #0 {
entry:
  %frame.addr = alloca %struct.Picture*, align 8
  %rd_pass.addr = alloca i32, align 4
  store %struct.Picture* %frame, %struct.Picture** %frame.addr, align 8
  store i32 %rd_pass, i32* %rd_pass.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 172
  store i32 0, i32* %SumFrameQP, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 6
  store i32 0, i32* %structure, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 120
  %3 = load i32, i32* %FrameSizeInMbs, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 119
  store i32 %3, i32* %PicSizeInMbs, align 4
  %5 = load i32, i32* %rd_pass.addr, align 4
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 6
  %7 = load i32, i32* %structure1, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 13
  %9 = load i32, i32* %width, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 17
  %11 = load i32, i32* %height, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 16
  %13 = load i32, i32* %width_cr, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 20
  %15 = load i32, i32* %height_cr, align 4
  %call = call %struct.storable_picture* @alloc_storable_picture(i32 %7, i32 %9, i32 %11, i32 %13, i32 %15)
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_frame_picture3, align 8
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 113
  %17 = load i32, i32* %framepoc, align 4
  %18 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %18, i32 0, i32 1
  store i32 %17, i32* %poc, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 114
  store i32 %17, i32* %ThisPOC, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 111
  %21 = load i32, i32* %toppoc, align 4
  %22 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %top_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 2
  store i32 %21, i32* %top_poc, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 112
  %24 = load i32, i32* %bottompoc, align 4
  %25 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %bottom_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 3
  store i32 %24, i32* %bottom_poc, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 113
  %27 = load i32, i32* %framepoc2, align 4
  %28 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %28, i32 0, i32 4
  store i32 %27, i32* %frame_poc, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 115
  %30 = load i32, i32* %frame_num, align 4
  %31 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %31, i32 0, i32 11
  store i32 %30, i32* %pic_num, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 115
  %33 = load i32, i32* %frame_num3, align 4
  %34 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %frame_num4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %34, i32 0, i32 10
  store i32 %33, i32* %frame_num4, align 4
  %35 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %coded_frame = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 27
  store i32 1, i32* %coded_frame, align 4
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 122
  %37 = load i32, i32* %MbInterlace, align 4
  %cmp5 = icmp ne i32 %37, 0
  %conv = zext i1 %cmp5 to i32
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 100
  store i32 %conv, i32* %MbaffFrameFlag, align 4
  %39 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %MbaffFrameFlag6 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %39, i32 0, i32 28
  store i32 %conv, i32* %MbaffFrameFlag6, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 100
  %41 = load i32, i32* %MbaffFrameFlag7, align 4
  %tobool = icmp ne i32 %41, 0
  %cond = select i1 %tobool, void (i32, i32*, i32*)* @get_mb_block_pos_mbaff, void (i32, i32*, i32*)* @get_mb_block_pos_normal
  store void (i32, i32*, i32*)* %cond, void (i32, i32*, i32*)** @get_mb_block_pos, align 8
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 100
  %43 = load i32, i32* %MbaffFrameFlag8, align 4
  %tobool9 = icmp ne i32 %43, 0
  %cond10 = select i1 %tobool9, void (i32, i32, i32, i32, %struct.pix_pos*)* @getAffNeighbour, void (i32, i32, i32, i32, %struct.pix_pos*)* @getNonAffNeighbour
  store void (i32, i32, i32, i32, %struct.pix_pos*)* %cond10, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %44 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  store %struct.storable_picture* %44, %struct.storable_picture** @enc_picture, align 8
  call void @copy_params()
  br label %if.end.77

if.else:                                          ; preds = %entry
  %45 = load i32, i32* %rd_pass.addr, align 4
  %cmp11 = icmp eq i32 %45, 1
  br i1 %cmp11, label %if.then.13, label %if.else.45

if.then.13:                                       ; preds = %if.else
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 6
  %47 = load i32, i32* %structure14, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 13
  %49 = load i32, i32* %width15, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 17
  %51 = load i32, i32* %height16, align 4
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 16
  %53 = load i32, i32* %width_cr17, align 4
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 20
  %55 = load i32, i32* %height_cr18, align 4
  %call19 = call %struct.storable_picture* @alloc_storable_picture(i32 %47, i32 %49, i32 %51, i32 %53, i32 %55)
  store %struct.storable_picture* %call19, %struct.storable_picture** @enc_frame_picture2, align 8
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 113
  %57 = load i32, i32* %framepoc20, align 4
  %58 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %poc21 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 1
  store i32 %57, i32* %poc21, align 4
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 114
  store i32 %57, i32* %ThisPOC22, align 4
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 111
  %61 = load i32, i32* %toppoc23, align 4
  %62 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %top_poc24 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %62, i32 0, i32 2
  store i32 %61, i32* %top_poc24, align 4
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 112
  %64 = load i32, i32* %bottompoc25, align 4
  %65 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %bottom_poc26 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %65, i32 0, i32 3
  store i32 %64, i32* %bottom_poc26, align 4
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 113
  %67 = load i32, i32* %framepoc27, align 4
  %68 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %frame_poc28 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %68, i32 0, i32 4
  store i32 %67, i32* %frame_poc28, align 4
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 115
  %70 = load i32, i32* %frame_num29, align 4
  %71 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %pic_num30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 11
  store i32 %70, i32* %pic_num30, align 4
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 115
  %73 = load i32, i32* %frame_num31, align 4
  %74 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %frame_num32 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %74, i32 0, i32 10
  store i32 %73, i32* %frame_num32, align 4
  %75 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %coded_frame33 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 27
  store i32 1, i32* %coded_frame33, align 4
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 122
  %77 = load i32, i32* %MbInterlace34, align 4
  %cmp35 = icmp ne i32 %77, 0
  %conv36 = zext i1 %cmp35 to i32
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 100
  store i32 %conv36, i32* %MbaffFrameFlag37, align 4
  %79 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %MbaffFrameFlag38 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %79, i32 0, i32 28
  store i32 %conv36, i32* %MbaffFrameFlag38, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 100
  %81 = load i32, i32* %MbaffFrameFlag39, align 4
  %tobool40 = icmp ne i32 %81, 0
  %cond41 = select i1 %tobool40, void (i32, i32*, i32*)* @get_mb_block_pos_mbaff, void (i32, i32*, i32*)* @get_mb_block_pos_normal
  store void (i32, i32*, i32*)* %cond41, void (i32, i32*, i32*)** @get_mb_block_pos, align 8
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 100
  %83 = load i32, i32* %MbaffFrameFlag42, align 4
  %tobool43 = icmp ne i32 %83, 0
  %cond44 = select i1 %tobool43, void (i32, i32, i32, i32, %struct.pix_pos*)* @getAffNeighbour, void (i32, i32, i32, i32, %struct.pix_pos*)* @getNonAffNeighbour
  store void (i32, i32, i32, i32, %struct.pix_pos*)* %cond44, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %84 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  store %struct.storable_picture* %84, %struct.storable_picture** @enc_picture, align 8
  call void @copy_params()
  br label %if.end

if.else.45:                                       ; preds = %if.else
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure46 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 6
  %86 = load i32, i32* %structure46, align 4
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 13
  %88 = load i32, i32* %width47, align 4
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 17
  %90 = load i32, i32* %height48, align 4
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 16
  %92 = load i32, i32* %width_cr49, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr50 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 20
  %94 = load i32, i32* %height_cr50, align 4
  %call51 = call %struct.storable_picture* @alloc_storable_picture(i32 %86, i32 %88, i32 %90, i32 %92, i32 %94)
  store %struct.storable_picture* %call51, %struct.storable_picture** @enc_frame_picture, align 8
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 113
  %96 = load i32, i32* %framepoc52, align 4
  %97 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %poc53 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %97, i32 0, i32 1
  store i32 %96, i32* %poc53, align 4
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 114
  store i32 %96, i32* %ThisPOC54, align 4
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 111
  %100 = load i32, i32* %toppoc55, align 4
  %101 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %top_poc56 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 2
  store i32 %100, i32* %top_poc56, align 4
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 112
  %103 = load i32, i32* %bottompoc57, align 4
  %104 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %bottom_poc58 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %104, i32 0, i32 3
  store i32 %103, i32* %bottom_poc58, align 4
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc59 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 113
  %106 = load i32, i32* %framepoc59, align 4
  %107 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %frame_poc60 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %107, i32 0, i32 4
  store i32 %106, i32* %frame_poc60, align 4
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 115
  %109 = load i32, i32* %frame_num61, align 4
  %110 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %pic_num62 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %110, i32 0, i32 11
  store i32 %109, i32* %pic_num62, align 4
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 115
  %112 = load i32, i32* %frame_num63, align 4
  %113 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %frame_num64 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %113, i32 0, i32 10
  store i32 %112, i32* %frame_num64, align 4
  %114 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %coded_frame65 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %114, i32 0, i32 27
  store i32 1, i32* %coded_frame65, align 4
  %115 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace66 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %115, i32 0, i32 122
  %116 = load i32, i32* %MbInterlace66, align 4
  %cmp67 = icmp ne i32 %116, 0
  %conv68 = zext i1 %cmp67 to i32
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag69 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 100
  store i32 %conv68, i32* %MbaffFrameFlag69, align 4
  %118 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %MbaffFrameFlag70 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %118, i32 0, i32 28
  store i32 %conv68, i32* %MbaffFrameFlag70, align 4
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 100
  %120 = load i32, i32* %MbaffFrameFlag71, align 4
  %tobool72 = icmp ne i32 %120, 0
  %cond73 = select i1 %tobool72, void (i32, i32*, i32*)* @get_mb_block_pos_mbaff, void (i32, i32*, i32*)* @get_mb_block_pos_normal
  store void (i32, i32*, i32*)* %cond73, void (i32, i32*, i32*)** @get_mb_block_pos, align 8
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 100
  %122 = load i32, i32* %MbaffFrameFlag74, align 4
  %tobool75 = icmp ne i32 %122, 0
  %cond76 = select i1 %tobool75, void (i32, i32, i32, i32, %struct.pix_pos*)* @getAffNeighbour, void (i32, i32, i32, i32, %struct.pix_pos*)* @getNonAffNeighbour
  store void (i32, i32, i32, i32, %struct.pix_pos*)* %cond76, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %123 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* %123, %struct.storable_picture** @enc_picture, align 8
  call void @copy_params()
  br label %if.end

if.end:                                           ; preds = %if.else.45, %if.then.13
  br label %if.end.77

if.end.77:                                        ; preds = %if.end, %if.then
  %124 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_frm = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %124, i32 0, i32 31
  store i32 0, i32* %em_prev_bits_frm, align 4
  %125 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_frm78 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %125, i32 0, i32 31
  %126 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %126, i32 0, i32 33
  store i32* %em_prev_bits_frm78, i32** %em_prev_bits, align 8
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 66
  store i32 0, i32* %fld_flag, align 4
  %128 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  call void @code_a_picture(%struct.Picture* %128)
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 60
  %130 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %130, i32 0, i32 6
  %131 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %131, i64 0
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %132 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %132, i32 0, i32 0
  %133 = load i32, i32* %byte_pos, align 4
  %mul = mul nsw i32 8, %133
  %134 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %bits_per_picture = getelementptr inbounds %struct.Picture, %struct.Picture* %134, i32 0, i32 3
  store i32 %mul, i32* %bits_per_picture, align 4
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure79 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 6
  %136 = load i32, i32* %structure79, align 4
  %cmp80 = icmp eq i32 %136, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.77
  call void @find_distortion()
  %137 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %137, i32 0, i32 0
  %138 = load float, float* %snr_y, align 4
  %139 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %139, i32 0, i32 4
  store float %138, float* %distortion_y, align 4
  %140 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %140, i32 0, i32 1
  %141 = load float, float* %snr_u, align 4
  %142 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %142, i32 0, i32 5
  store float %141, float* %distortion_u, align 4
  %143 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %143, i32 0, i32 2
  %144 = load float, float* %snr_v, align 4
  %145 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %145, i32 0, i32 6
  store float %144, float* %distortion_v, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.77
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rdPictureCoding() #0 {
entry:
  %second_qp = alloca i32, align 4
  %rd_qp = alloca i32, align 4
  %previntras = alloca i32, align 4
  %prevtype = alloca i32, align 4
  %skip_encode = alloca i32, align 4
  %sec_pps = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %tmpFrameQP = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 9
  %1 = load i32, i32* %qp, align 4
  store i32 %1, i32* %second_qp, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 9
  %3 = load i32, i32* %qp1, align 4
  store i32 %3, i32* %rd_qp, align 4
  %4 = load i32, i32* @intras, align 4
  store i32 %4, i32* %previntras, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 5
  %6 = load i32, i32* %type, align 4
  store i32 %6, i32* %prevtype, align 4
  store i32 0, i32* %skip_encode, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 172
  %8 = load i32, i32* %SumFrameQP, align 4
  store i32 %8, i32* %tmpFrameQP, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 157
  %10 = load i32, i32* %RCEnable, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_best, align 8
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %11, %struct.rc_quadratic* %12)
  %13 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_best, align 8
  %14 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  call void @copy_rc_generic(%struct.rc_generic* %13, %struct.rc_generic* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 5
  %16 = load i32, i32* %type2, align 4
  %cmp = icmp ne i32 %16, 2
  br i1 %cmp, label %land.lhs.true, label %if.else.17

land.lhs.true:                                    ; preds = %if.end
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 34
  %18 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool3 = icmp ne i32 %18, 0
  br i1 %tobool3, label %if.then.4, label %if.else.17

if.then.4:                                        ; preds = %land.lhs.true
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 5
  %20 = load i32, i32* %type5, align 4
  %cmp6 = icmp eq i32 %20, 0
  br i1 %cmp6, label %if.then.7, label %if.else.15

if.then.7:                                        ; preds = %if.then.4
  %call = call i32 @test_wp_P_slice(i32 0)
  %cmp8 = icmp eq i32 %call, 1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 1), align 8
  store %struct.pic_parameter_set_rbsp_t* %21, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.then.7
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPSliceWeightOnly = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 64
  %23 = load i32, i32* %RDPSliceWeightOnly, align 4
  store i32 %23, i32* %skip_encode, align 4
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  store %struct.pic_parameter_set_rbsp_t* %24, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 98
  %26 = load i32, i32* %AdaptiveRounding, align 4
  %tobool10 = icmp ne i32 %26, 0
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 9
  %28 = load i32, i32* %qp12, align 4
  %sub = sub nsw i32 %28, 1
  store i32 %sub, i32* %qp12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.9
  br label %if.end.16

if.else.15:                                       ; preds = %if.then.4
  %29 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 2), align 8
  store %struct.pic_parameter_set_rbsp_t* %29, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.end.14
  br label %if.end.24

if.else.17:                                       ; preds = %land.lhs.true, %if.end
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 98
  %31 = load i32, i32* %AdaptiveRounding18, align 4
  %tobool19 = icmp ne i32 %31, 0
  br i1 %tobool19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %if.else.17
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 9
  %33 = load i32, i32* %qp21, align 4
  %sub22 = sub nsw i32 %33, 1
  store i32 %sub22, i32* %qp21, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.else.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.16
  %34 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  store %struct.pic_parameter_set_rbsp_t* %34, %struct.pic_parameter_set_rbsp_t** %sec_pps, align 8
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 9
  %36 = load i32, i32* %qp25, align 4
  store i32 %36, i32* %second_qp, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 133
  store i32 0, i32* %write_macroblock, align 4
  %38 = load i32, i32* %skip_encode, align 4
  %tobool26 = icmp ne i32 %38, 0
  br i1 %tobool26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.end.24
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 67
  store i32 0, i32* %rd_pass, align 4
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture2, align 8
  br label %if.end.39

if.else.28:                                       ; preds = %if.end.24
  %40 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable29 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %40, i32 0, i32 157
  %41 = load i32, i32* %RCEnable29, align 4
  %tobool30 = icmp ne i32 %41, 0
  br i1 %tobool30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.else.28
  %42 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %43 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_init, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %42, %struct.rc_quadratic* %43)
  %44 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %45 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_init, align 8
  call void @copy_rc_generic(%struct.rc_generic* %44, %struct.rc_generic* %45)
  %46 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %47 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS32 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %47, i32 0, i32 34
  %48 = load i32, i32* %GenerateMultiplePPS32, align 4
  %tobool33 = icmp ne i32 %48, 0
  %cond = select i1 %tobool33, float 1.000000e+00, float 0x3FEB333340000000
  call void @rc_init_pict(%struct.rc_quadratic* %46, i32 1, i32 0, i32 1, float %cond)
  %49 = load i32 (%struct.rc_quadratic*, i32)*, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  %50 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %call34 = call i32 %49(%struct.rc_quadratic* %50, i32 0)
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 9
  store i32 %call34, i32* %qp35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.else.28
  %52 = load %struct.Picture*, %struct.Picture** @frame_pic_2, align 8
  call void @frame_picture(%struct.Picture* %52, i32 1)
  %53 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  %54 = load %struct.Picture*, %struct.Picture** @frame_pic_2, align 8
  %55 = load i32, i32* %rd_qp, align 4
  %call37 = call i32 @picture_coding_decision(%struct.Picture* %53, %struct.Picture* %54, i32 %55)
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 67
  store i32 %call37, i32* %rd_pass38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.36, %if.then.27
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 67
  %58 = load i32, i32* %rd_pass40, align 4
  %cmp41 = icmp eq i32 %58, 0
  br i1 %cmp41, label %if.then.42, label %if.else.53

if.then.42:                                       ; preds = %if.end.39
  %59 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* %59, %struct.storable_picture** @enc_picture, align 8
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 5
  %61 = load i32, i32* %type43, align 4
  %cmp44 = icmp ne i32 %61, 2
  br i1 %cmp44, label %land.lhs.true.45, label %if.else.50

land.lhs.true.45:                                 ; preds = %if.then.42
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS46 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 34
  %63 = load i32, i32* %GenerateMultiplePPS46, align 4
  %tobool47 = icmp ne i32 %63, 0
  br i1 %tobool47, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %land.lhs.true.45
  %64 = load i32, i32* %rd_qp, align 4
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 9
  store i32 %64, i32* %qp49, align 4
  %66 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  store %struct.pic_parameter_set_rbsp_t* %66, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.52

if.else.50:                                       ; preds = %land.lhs.true.45, %if.then.42
  %67 = load i32, i32* %rd_qp, align 4
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 9
  store i32 %67, i32* %qp51, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %if.then.48
  %69 = load i32, i32* %previntras, align 4
  store i32 %69, i32* @intras, align 4
  %70 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  store %struct.Picture* %70, %struct.Picture** @frame_pic, align 8
  br label %if.end.59

if.else.53:                                       ; preds = %if.end.39
  %71 = load i32, i32* @intras, align 4
  store i32 %71, i32* %previntras, align 4
  %72 = load %struct.Picture*, %struct.Picture** @frame_pic_2, align 8
  store %struct.Picture* %72, %struct.Picture** @frame_pic, align 8
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 172
  %74 = load i32, i32* %SumFrameQP54, align 4
  store i32 %74, i32* %tmpFrameQP, align 4
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable55 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 157
  %76 = load i32, i32* %RCEnable55, align 4
  %tobool56 = icmp ne i32 %76, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.else.53
  %77 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_best, align 8
  %78 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %77, %struct.rc_quadratic* %78)
  %79 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_best, align 8
  %80 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  call void @copy_rc_generic(%struct.rc_generic* %79, %struct.rc_generic* %80)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.else.53
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.52
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 5
  %82 = load i32, i32* %type60, align 4
  %cmp61 = icmp ne i32 %82, 2
  br i1 %cmp61, label %if.then.62, label %if.else.111

if.then.62:                                       ; preds = %if.end.59
  store i32 0, i32* %skip_encode, align 4
  %83 = load i32, i32* %rd_qp, align 4
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 9
  store i32 %83, i32* %qp63, align 4
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 5
  %86 = load i32, i32* %type64, align 4
  %cmp65 = icmp eq i32 %86, 0
  br i1 %cmp65, label %land.lhs.true.66, label %if.else.70

land.lhs.true.66:                                 ; preds = %if.then.62
  %87 = load i32, i32* @intras, align 4
  %mul = mul nsw i32 %87, 100
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 120
  %89 = load i32, i32* %FrameSizeInMbs, align 4
  %div = udiv i32 %mul, %89
  %cmp67 = icmp uge i32 %div, 75
  br i1 %cmp67, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %land.lhs.true.66
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type69 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 5
  store i32 2, i32* %type69, align 4
  %91 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  store %struct.pic_parameter_set_rbsp_t* %91, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.110

if.else.70:                                       ; preds = %land.lhs.true.66, %if.then.62
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 5
  %93 = load i32, i32* %type71, align 4
  %cmp72 = icmp eq i32 %93, 0
  br i1 %cmp72, label %if.then.73, label %if.else.96

if.then.73:                                       ; preds = %if.else.70
  %94 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS74 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %94, i32 0, i32 34
  %95 = load i32, i32* %GenerateMultiplePPS74, align 4
  %tobool75 = icmp ne i32 %95, 0
  br i1 %tobool75, label %if.then.76, label %if.end.95

if.then.76:                                       ; preds = %if.then.73
  %call77 = call i32 @test_wp_P_slice(i32 1)
  %cmp78 = icmp eq i32 %call77, 1
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.then.76
  %96 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 1), align 8
  store %struct.pic_parameter_set_rbsp_t* %96, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.94

if.else.80:                                       ; preds = %if.then.76
  %97 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPSliceBTest = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %97, i32 0, i32 65
  %98 = load i32, i32* %RDPSliceBTest, align 4
  %tobool81 = icmp ne i32 %98, 0
  br i1 %tobool81, label %land.lhs.true.82, label %if.else.86

land.lhs.true.82:                                 ; preds = %if.else.80
  %99 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %99, i32 0, i32 1
  %100 = load i32, i32* %profile_idc, align 4
  %cmp83 = icmp ne i32 %100, 66
  br i1 %cmp83, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %land.lhs.true.82
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type85 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 5
  store i32 1, i32* %type85, align 4
  %102 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  store %struct.pic_parameter_set_rbsp_t* %102, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.93

if.else.86:                                       ; preds = %land.lhs.true.82, %if.else.80
  %103 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPSliceWeightOnly87 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %103, i32 0, i32 64
  %104 = load i32, i32* %RDPSliceWeightOnly87, align 4
  store i32 %104, i32* %skip_encode, align 4
  %105 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  store %struct.pic_parameter_set_rbsp_t* %105, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 98
  %107 = load i32, i32* %AdaptiveRounding88, align 4
  %tobool89 = icmp ne i32 %107, 0
  br i1 %tobool89, label %if.end.92, label %if.then.90

if.then.90:                                       ; preds = %if.else.86
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp91 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 9
  %109 = load i32, i32* %qp91, align 4
  %add = add nsw i32 %109, 1
  store i32 %add, i32* %qp91, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.else.86
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.84
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.79
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.73
  br label %if.end.109

if.else.96:                                       ; preds = %if.else.70
  %110 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS97 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %110, i32 0, i32 34
  %111 = load i32, i32* %GenerateMultiplePPS97, align 4
  %tobool98 = icmp ne i32 %111, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.else.103

land.lhs.true.99:                                 ; preds = %if.else.96
  %call100 = call i32 @test_wp_B_slice(i32 0)
  %cmp101 = icmp eq i32 %call100, 1
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %land.lhs.true.99
  %112 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 1), align 8
  store %struct.pic_parameter_set_rbsp_t* %112, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.108

if.else.103:                                      ; preds = %land.lhs.true.99, %if.else.96
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDBSliceWeightOnly = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 66
  %114 = load i32, i32* %RDBSliceWeightOnly, align 4
  store i32 %114, i32* %skip_encode, align 4
  %115 = load i32, i32* %rd_qp, align 4
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 122
  %117 = load i32, i32* %nal_reference_idc, align 4
  %tobool104 = icmp ne i32 %117, 0
  %cond105 = select i1 %tobool104, i32 -1, i32 1
  %add106 = add nsw i32 %115, %cond105
  %118 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp107 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %118, i32 0, i32 9
  store i32 %add106, i32* %qp107, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.103, %if.then.102
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.95
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.68
  br label %if.end.118

if.else.111:                                      ; preds = %if.end.59
  %119 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  store %struct.pic_parameter_set_rbsp_t* %119, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %120 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %120, i32 0, i32 98
  %121 = load i32, i32* %AdaptiveRounding112, align 4
  %tobool113 = icmp ne i32 %121, 0
  br i1 %tobool113, label %if.end.117, label %if.then.114

if.then.114:                                      ; preds = %if.else.111
  %122 = load i32, i32* %rd_qp, align 4
  %add115 = add nsw i32 %122, 1
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 9
  store i32 %add115, i32* %qp116, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %if.else.111
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.110
  %124 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %124, i32 0, i32 133
  store i32 0, i32* %write_macroblock119, align 4
  %125 = load i32, i32* %skip_encode, align 4
  %tobool120 = icmp ne i32 %125, 0
  br i1 %tobool120, label %if.then.121, label %if.else.123

if.then.121:                                      ; preds = %if.end.118
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture3, align 8
  %126 = load i32, i32* %rd_qp, align 4
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp122 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 9
  store i32 %126, i32* %qp122, align 4
  br label %if.end.156

if.else.123:                                      ; preds = %if.end.118
  %128 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable124 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %128, i32 0, i32 157
  %129 = load i32, i32* %RCEnable124, align 4
  %tobool125 = icmp ne i32 %129, 0
  br i1 %tobool125, label %if.then.126, label %if.end.132

if.then.126:                                      ; preds = %if.else.123
  %130 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %131 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_init, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %130, %struct.rc_quadratic* %131)
  %132 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %133 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_init, align 8
  call void @copy_rc_generic(%struct.rc_generic* %132, %struct.rc_generic* %133)
  %134 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %135 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS127 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %135, i32 0, i32 34
  %136 = load i32, i32* %GenerateMultiplePPS127, align 4
  %tobool128 = icmp ne i32 %136, 0
  %cond129 = select i1 %tobool128, float 1.000000e+00, float 0x3FF2666660000000
  call void @rc_init_pict(%struct.rc_quadratic* %134, i32 1, i32 0, i32 1, float %cond129)
  %137 = load i32 (%struct.rc_quadratic*, i32)*, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  %138 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %call130 = call i32 %137(%struct.rc_quadratic* %138, i32 0)
  %139 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp131 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %139, i32 0, i32 9
  store i32 %call130, i32* %qp131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.126, %if.else.123
  %140 = load %struct.Picture*, %struct.Picture** @frame_pic_3, align 8
  call void @frame_picture(%struct.Picture* %140, i32 2)
  %141 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %141, i32 0, i32 67
  %142 = load i32, i32* %rd_pass133, align 4
  %cmp134 = icmp eq i32 %142, 0
  br i1 %cmp134, label %if.then.135, label %if.else.139

if.then.135:                                      ; preds = %if.end.132
  %143 = load %struct.Picture*, %struct.Picture** @frame_pic_1, align 8
  %144 = load %struct.Picture*, %struct.Picture** @frame_pic_3, align 8
  %145 = load i32, i32* %rd_qp, align 4
  %call136 = call i32 @picture_coding_decision(%struct.Picture* %143, %struct.Picture* %144, i32 %145)
  %mul137 = mul nsw i32 2, %call136
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass138 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 67
  store i32 %mul137, i32* %rd_pass138, align 4
  br label %if.end.143

if.else.139:                                      ; preds = %if.end.132
  %147 = load %struct.Picture*, %struct.Picture** @frame_pic_2, align 8
  %148 = load %struct.Picture*, %struct.Picture** @frame_pic_3, align 8
  %149 = load i32, i32* %rd_qp, align 4
  %call140 = call i32 @picture_coding_decision(%struct.Picture* %147, %struct.Picture* %148, i32 %149)
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass141 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 67
  %151 = load i32, i32* %rd_pass141, align 4
  %add142 = add i32 %151, %call140
  store i32 %add142, i32* %rd_pass141, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.139, %if.then.135
  %152 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable144 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %152, i32 0, i32 157
  %153 = load i32, i32* %RCEnable144, align 4
  %tobool145 = icmp ne i32 %153, 0
  br i1 %tobool145, label %land.lhs.true.146, label %if.end.150

land.lhs.true.146:                                ; preds = %if.end.143
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass147 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 67
  %155 = load i32, i32* %rd_pass147, align 4
  %cmp148 = icmp eq i32 %155, 2
  br i1 %cmp148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %land.lhs.true.146
  %156 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_best, align 8
  %157 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %156, %struct.rc_quadratic* %157)
  %158 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_best, align 8
  %159 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  call void @copy_rc_generic(%struct.rc_generic* %158, %struct.rc_generic* %159)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %land.lhs.true.146, %if.end.143
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass151 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 67
  %161 = load i32, i32* %rd_pass151, align 4
  %cmp152 = icmp eq i32 %161, 2
  br i1 %cmp152, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %if.end.150
  %162 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP154 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %162, i32 0, i32 172
  %163 = load i32, i32* %SumFrameQP154, align 4
  store i32 %163, i32* %tmpFrameQP, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.153, %if.end.150
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.121
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass157 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 67
  %165 = load i32, i32* %rd_pass157, align 4
  %cmp158 = icmp eq i32 %165, 0
  br i1 %cmp158, label %if.then.159, label %if.else.162

if.then.159:                                      ; preds = %if.end.156
  %166 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* %166, %struct.storable_picture** @enc_picture, align 8
  %167 = load i32, i32* %prevtype, align 4
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type160 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 5
  store i32 %167, i32* %type160, align 4
  %169 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  store %struct.pic_parameter_set_rbsp_t* %169, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %170 = load i32, i32* %rd_qp, align 4
  %171 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp161 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %171, i32 0, i32 9
  store i32 %170, i32* %qp161, align 4
  %172 = load i32, i32* %previntras, align 4
  store i32 %172, i32* @intras, align 4
  br label %if.end.169

if.else.162:                                      ; preds = %if.end.156
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass163 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 67
  %174 = load i32, i32* %rd_pass163, align 4
  %cmp164 = icmp eq i32 %174, 1
  br i1 %cmp164, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %if.else.162
  %175 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  store %struct.storable_picture* %175, %struct.storable_picture** @enc_picture, align 8
  %176 = load i32, i32* %prevtype, align 4
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 5
  store i32 %176, i32* %type166, align 4
  %178 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %sec_pps, align 8
  store %struct.pic_parameter_set_rbsp_t* %178, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %179 = load i32, i32* %second_qp, align 4
  %180 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp167 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %180, i32 0, i32 9
  store i32 %179, i32* %qp167, align 4
  %181 = load i32, i32* %previntras, align 4
  store i32 %181, i32* @intras, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %if.else.162
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.159
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable170 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 157
  %183 = load i32, i32* %RCEnable170, align 4
  %tobool171 = icmp ne i32 %183, 0
  br i1 %tobool171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.169
  %184 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %185 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC_best, align 8
  call void @copy_rc_jvt(%struct.rc_quadratic* %184, %struct.rc_quadratic* %185)
  %186 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %187 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC_best, align 8
  call void @copy_rc_generic(%struct.rc_generic* %186, %struct.rc_generic* %187)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.end.169
  %188 = load i32, i32* %tmpFrameQP, align 4
  %189 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %SumFrameQP174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %189, i32 0, i32 172
  store i32 %188, i32* %SumFrameQP174, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_SP_coefficients() #0 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %SP_coeff_file = alloca %struct._IO_FILE*, align 8
  %0 = load i32, i32* @number_sp2_frames, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_output_filename = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 56
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %sp_output_filename, i32 0, i32 0
  %call = call %struct._IO_FILE* @fopen64(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %SP_coeff_file, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_output_filename3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 56
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %sp_output_filename3, i32 0, i32 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay4)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load i32, i32* @number_sp2_frames, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @number_sp2_frames, align 4
  br label %if.end.15

if.else:                                          ; preds = %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_output_filename6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 56
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %sp_output_filename6, i32 0, i32 0
  %call8 = call %struct._IO_FILE* @fopen64(i8* %arraydecay7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %SP_coeff_file, align 8
  %cmp9 = icmp eq %struct._IO_FILE* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.else
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_output_filename11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 56
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %sp_output_filename11, i32 0, i32 0
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay12)
  call void @exit(i32 -1) #6
  unreachable

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 17
  %8 = load i32, i32* %height, align 4
  %cmp16 = icmp slt i32 %6, %8
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32**, i32*** @lrec, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %10, i64 %idxprom
  %11 = load i32*, i32** %arrayidx, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 13
  %14 = load i32, i32* %width, align 4
  %conv = sext i32 %14 to i64
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %SP_coeff_file, align 8
  %call17 = call i64 @fwrite(i8* %12, i64 4, i64 %conv, %struct._IO_FILE* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.36, %for.end
  %17 = load i32, i32* %k, align 4
  %cmp20 = icmp slt i32 %17, 2
  br i1 %cmp20, label %for.body.22, label %for.end.38

for.body.22:                                      ; preds = %for.cond.19
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.33, %for.body.22
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 20
  %20 = load i32, i32* %height_cr, align 4
  %cmp24 = icmp slt i32 %18, %20
  br i1 %cmp24, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.23
  %21 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %21 to i64
  %22 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %22 to i64
  %23 = load i32***, i32**** @lrec_uv, align 8
  %arrayidx29 = getelementptr inbounds i32**, i32*** %23, i64 %idxprom28
  %24 = load i32**, i32*** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32*, i32** %24, i64 %idxprom27
  %25 = load i32*, i32** %arrayidx30, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 16
  %28 = load i32, i32* %width_cr, align 4
  %conv31 = sext i32 %28 to i64
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %SP_coeff_file, align 8
  %call32 = call i64 @fwrite(i8* %26, i64 4, i64 %conv31, %struct._IO_FILE* %29)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.26
  %30 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %30, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.23

for.end.35:                                       ; preds = %for.cond.23
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.35
  %31 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, i32* %k, align 4
  br label %for.cond.19

for.end.38:                                       ; preds = %for.cond.19
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %SP_coeff_file, align 8
  %call39 = call i32 @fclose(%struct._IO_FILE* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @picture_structure_decision(%struct.Picture* %frame, %struct.Picture* %top, %struct.Picture* %bot) #0 {
entry:
  %frame.addr = alloca %struct.Picture*, align 8
  %top.addr = alloca %struct.Picture*, align 8
  %bot.addr = alloca %struct.Picture*, align 8
  %lambda_picture = alloca double, align 8
  %bframe = alloca i32, align 4
  %snr_frame = alloca float, align 4
  %snr_field = alloca float, align 4
  %bit_frame = alloca i32, align 4
  %bit_field = alloca i32, align 4
  store %struct.Picture* %frame, %struct.Picture** %frame.addr, align 8
  store %struct.Picture* %top, %struct.Picture** %top.addr, align 8
  store %struct.Picture* %bot, %struct.Picture** %bot.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_lambda_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 146
  %3 = load i32, i32* %bitdepth_lambda_scale, align 4
  %conv1 = sitofp i32 %3 to double
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 9
  %5 = load i32, i32* %qp, align 4
  %sub = sub nsw i32 %5, 12
  %conv2 = sitofp i32 %sub to double
  %div = fdiv double %conv2, 3.000000e+00
  %add = fadd double %conv1, %div
  %call = call double @pow(double 2.000000e+00, double %add) #2
  %mul = fmul double 6.800000e-01, %call
  %6 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %6, 0
  %cond = select i1 %tobool, i32 1, i32 1
  %conv3 = sitofp i32 %cond to double
  %mul4 = fmul double %mul, %conv3
  store double %mul4, double* %lambda_picture, align 8
  %7 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %7, i32 0, i32 4
  %8 = load float, float* %distortion_y, align 4
  %9 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %9, i32 0, i32 5
  %10 = load float, float* %distortion_u, align 4
  %add5 = fadd float %8, %10
  %11 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %11, i32 0, i32 6
  %12 = load float, float* %distortion_v, align 4
  %add6 = fadd float %add5, %12
  store float %add6, float* %snr_frame, align 4
  %13 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_y7 = getelementptr inbounds %struct.Picture, %struct.Picture* %13, i32 0, i32 4
  %14 = load float, float* %distortion_y7, align 4
  %15 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_u8 = getelementptr inbounds %struct.Picture, %struct.Picture* %15, i32 0, i32 5
  %16 = load float, float* %distortion_u8, align 4
  %add9 = fadd float %14, %16
  %17 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_v10 = getelementptr inbounds %struct.Picture, %struct.Picture* %17, i32 0, i32 6
  %18 = load float, float* %distortion_v10, align 4
  %add11 = fadd float %add9, %18
  store float %add11, float* %snr_field, align 4
  %19 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %bits_per_picture = getelementptr inbounds %struct.Picture, %struct.Picture* %19, i32 0, i32 3
  %20 = load i32, i32* %bits_per_picture, align 4
  %21 = load %struct.Picture*, %struct.Picture** %bot.addr, align 8
  %bits_per_picture12 = getelementptr inbounds %struct.Picture, %struct.Picture* %21, i32 0, i32 3
  %22 = load i32, i32* %bits_per_picture12, align 4
  %add13 = add nsw i32 %20, %22
  store i32 %add13, i32* %bit_field, align 4
  %23 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %bits_per_picture14 = getelementptr inbounds %struct.Picture, %struct.Picture* %23, i32 0, i32 3
  %24 = load i32, i32* %bits_per_picture14, align 4
  store i32 %24, i32* %bit_frame, align 4
  %25 = load float, float* %snr_frame, align 4
  %26 = load float, float* %snr_field, align 4
  %27 = load i32, i32* %bit_field, align 4
  %28 = load i32, i32* %bit_frame, align 4
  %29 = load double, double* %lambda_picture, align 8
  %call15 = call i32 @decide_fld_frame(float %25, float %26, i32 %27, i32 %28, double %29)
  ret i32 %call15
}

declare void @update_field_frame_contexts(i32) #1

; Function Attrs: nounwind uwtable
define internal void @field_mode_buffer(i32 %bit_field, float %snr_field_y, float %snr_field_u, float %snr_field_v) #0 {
entry:
  %bit_field.addr = alloca i32, align 4
  %snr_field_y.addr = alloca float, align 4
  %snr_field_u.addr = alloca float, align 4
  %snr_field_v.addr = alloca float, align 4
  store i32 %bit_field, i32* %bit_field.addr, align 4
  store float %snr_field_y, float* %snr_field_y.addr, align 4
  store float %snr_field_u, float* %snr_field_u.addr, align 4
  store float %snr_field_v, float* %snr_field_v.addr, align 4
  call void @put_buffer_frame()
  %0 = load float, float* %snr_field_y.addr, align 4
  %1 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1, i32 0, i32 0
  store float %0, float* %snr_y, align 4
  %2 = load float, float* %snr_field_u.addr, align 4
  %3 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %3, i32 0, i32 1
  store float %2, float* %snr_u, align 4
  %4 = load float, float* %snr_field_v.addr, align 4
  %5 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %5, i32 0, i32 2
  store float %4, float* %snr_v, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @writeout_picture(%struct.Picture* %pic) #0 {
entry:
  %pic.addr = alloca %struct.Picture*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %partition = alloca i32, align 4
  %slice = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  store %struct.Picture* %pic, %struct.Picture** %pic.addr, align 8
  %0 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 59
  store %struct.Picture* %0, %struct.Picture** %currentPicture, align 8
  store i32 0, i32* %slice, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %2 = load i32, i32* %slice, align 4
  %3 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %no_slices = getelementptr inbounds %struct.Picture, %struct.Picture* %3, i32 0, i32 0
  %4 = load i32, i32* %no_slices, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %slice, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %slices = getelementptr inbounds %struct.Picture, %struct.Picture* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [100 x %struct.Slice*], [100 x %struct.Slice*]* %slices, i32 0, i64 %idxprom
  %7 = load %struct.Slice*, %struct.Slice** %arrayidx, align 8
  store %struct.Slice* %7, %struct.Slice** %currSlice, align 8
  %8 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %start_mb_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %8, i32 0, i32 3
  %9 = load i32, i32* %start_mb_nr, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 3
  store i32 %9, i32* %current_mb_nr, align 4
  store i32 0, i32* %partition, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %partition, align 4
  %12 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %12, i32 0, i32 4
  %13 = load i32, i32* %max_part_nr, align 4
  %cmp2 = icmp slt i32 %11, %13
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %14 = load i32, i32* %partition, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i32 0, i32 6
  %16 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx5 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %16, i64 %idxprom4
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx5, i32 0, i32 0
  %17 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %17, %struct.Bitstream** %currStream, align 8
  %18 = load i32, i32* %partition, align 4
  %idxprom6 = sext i32 %18 to i64
  %19 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr7 = getelementptr inbounds %struct.Slice, %struct.Slice* %19, i32 0, i32 6
  %20 = load %struct.datapartition*, %struct.datapartition** %partArr7, align 8
  %arrayidx8 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %20, i64 %idxprom6
  %bitstream9 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx8, i32 0, i32 0
  %21 = load %struct.Bitstream*, %struct.Bitstream** %bitstream9, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %21, i32 0, i32 10
  %22 = load i32, i32* %write_flag, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %23 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %24 = load i32, i32* %partition, align 4
  call void @writeUnit(%struct.Bitstream* %23, i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %partition, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %partition, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %26 = load i32, i32* %slice, align 4
  %inc11 = add nsw i32 %26, 1
  store i32 %inc11, i32* %slice, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @frame_mode_buffer(i32 %bit_frame, float %snr_frame_y, float %snr_frame_u, float %snr_frame_v) #0 {
entry:
  %bit_frame.addr = alloca i32, align 4
  %snr_frame_y.addr = alloca float, align 4
  %snr_frame_u.addr = alloca float, align 4
  %snr_frame_v.addr = alloca float, align 4
  store i32 %bit_frame, i32* %bit_frame.addr, align 4
  store float %snr_frame_y, float* %snr_frame_y.addr, align 4
  store float %snr_frame_u, float* %snr_frame_u.addr, align 4
  store float %snr_frame_v, float* %snr_frame_v.addr, align 4
  call void @put_buffer_frame()
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 121
  %1 = load i32, i32* %PicInterlace, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 122
  %3 = load i32, i32* %MbInterlace, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 17
  %5 = load i32, i32* %height, align 4
  %div = sdiv i32 %5, 2
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 17
  store i32 %div, i32* %height2, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 20
  %8 = load i32, i32* %height_cr, align 4
  %div3 = sdiv i32 %8, 2
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 20
  store i32 %div3, i32* %height_cr4, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 0
  %11 = load i32, i32* %number, align 4
  %mul = mul nsw i32 %11, 2
  store i32 %mul, i32* %number, align 4
  call void @put_buffer_top()
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 0
  %13 = load i32, i32* %number5, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %number5, align 4
  call void @put_buffer_bot()
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 0
  %15 = load i32, i32* %number6, align 4
  %div7 = sdiv i32 %15, 2
  store i32 %div7, i32* %number6, align 4
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 15
  %17 = load i32, i32* %img_height, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 167
  %19 = load i32, i32* %auto_crop_bottom, align 4
  %add = add nsw i32 %17, %19
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 17
  store i32 %add, i32* %height8, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 21
  %22 = load i32, i32* %height_cr_frame, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 20
  store i32 %22, i32* %height_cr9, align 4
  %24 = load float, float* %snr_frame_y.addr, align 4
  %25 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %25, i32 0, i32 0
  store float %24, float* %snr_y, align 4
  %26 = load float, float* %snr_frame_u.addr, align 4
  %27 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %27, i32 0, i32 1
  store float %26, float* %snr_u, align 4
  %28 = load float, float* %snr_frame_v.addr, align 4
  %29 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %29, i32 0, i32 2
  store float %28, float* %snr_v, align 4
  call void @put_buffer_frame()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare void @free_slice_list(%struct.Picture*) #1

declare void @rc_update_pict_frame(%struct.rc_quadratic*, i32) #1

declare void @UpdateDecoders() #1

declare void @UpdatePixelMap() #1

; Function Attrs: nounwind uwtable
define internal void @find_snr() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %diff_y = alloca i64, align 8
  %diff_u = alloca i64, align 8
  %diff_v = alloca i64, align 8
  %impix = alloca i32, align 4
  %impix_cr = alloca i32, align 4
  %max_pix_value_sqd = alloca i32, align 4
  %max_pix_value_sqd_uv = alloca i32, align 4
  %total_frames = alloca i32, align 4
  store i64 0, i64* %diff_y, align 8
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 156
  %1 = load i32, i32* %max_imgpel_value, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 156
  %3 = load i32, i32* %max_imgpel_value1, align 4
  %mul = mul nsw i32 %1, %3
  store i32 %mul, i32* %max_pix_value_sqd, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 157
  %5 = load i32, i32* %max_imgpel_value_uv, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 157
  %7 = load i32, i32* %max_imgpel_value_uv2, align 4
  %mul3 = mul nsw i32 %5, %7
  store i32 %mul3, i32* %max_pix_value_sqd_uv, align 4
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 15
  %9 = load i32, i32* %img_height, align 4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 14
  %11 = load i32, i32* %img_width, align 4
  %mul4 = mul nsw i32 %9, %11
  store i32 %mul4, i32* %impix, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 174
  %13 = load i32, i32* %img_height_cr, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 175
  %15 = load i32, i32* %img_width_cr, align 4
  %mul5 = mul nsw i32 %13, %15
  store i32 %mul5, i32* %impix_cr, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 66
  %17 = load i32, i32* %fld_flag, align 4
  %cmp = icmp ne i32 %17, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %diff_y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.then
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 14
  %20 = load i32, i32* %img_width6, align 4
  %cmp7 = icmp slt i32 %18, %20
  br i1 %cmp7, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %j, align 4
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 15
  %23 = load i32, i32* %img_height9, align 4
  %cmp10 = icmp slt i32 %21, %23
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %25 to i64
  %26 = load i16**, i16*** @imgY_org, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %26, i64 %idxprom12
  %27 = load i16*, i16** %arrayidx, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %27, i64 %idxprom
  %28 = load i16, i16* %arrayidx13, align 2
  %conv = zext i16 %28 to i32
  %29 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %29 to i64
  %30 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %30 to i64
  %31 = load i16**, i16*** @imgY_com, align 8
  %arrayidx16 = getelementptr inbounds i16*, i16** %31, i64 %idxprom15
  %32 = load i16*, i16** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %32, i64 %idxprom14
  %33 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %33 to i32
  %sub = sub nsw i32 %conv, %conv18
  %idxprom19 = sext i32 %sub to i64
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 62
  %35 = load i32*, i32** %quad, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %35, i64 %idxprom19
  %36 = load i32, i32* %arrayidx20, align 4
  %conv21 = sext i32 %36 to i64
  %37 = load i64, i64* %diff_y, align 8
  %add = add nsw i64 %37, %conv21
  store i64 %add, i64* %diff_y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %39 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %39, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 160
  %41 = load i32, i32* %yuv_format, align 4
  %cmp25 = icmp ne i32 %41, 0
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %for.end.24
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.77, %if.then.27
  %42 = load i32, i32* %i, align 4
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr29 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 175
  %44 = load i32, i32* %img_width_cr29, align 4
  %cmp30 = icmp slt i32 %42, %44
  br i1 %cmp30, label %for.body.32, label %for.end.79

for.body.32:                                      ; preds = %for.cond.28
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.74, %for.body.32
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 174
  %47 = load i32, i32* %img_height_cr34, align 4
  %cmp35 = icmp slt i32 %45, %47
  br i1 %cmp35, label %for.body.37, label %for.end.76

for.body.37:                                      ; preds = %for.cond.33
  %48 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %49 to i64
  %50 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx40 = getelementptr inbounds i16**, i16*** %50, i64 0
  %51 = load i16**, i16*** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16*, i16** %51, i64 %idxprom39
  %52 = load i16*, i16** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %52, i64 %idxprom38
  %53 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %53 to i32
  %54 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %55 to i64
  %56 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx46 = getelementptr inbounds i16**, i16*** %56, i64 0
  %57 = load i16**, i16*** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i16*, i16** %57, i64 %idxprom45
  %58 = load i16*, i16** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %58, i64 %idxprom44
  %59 = load i16, i16* %arrayidx48, align 2
  %conv49 = zext i16 %59 to i32
  %sub50 = sub nsw i32 %conv43, %conv49
  %idxprom51 = sext i32 %sub50 to i64
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 62
  %61 = load i32*, i32** %quad52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %61, i64 %idxprom51
  %62 = load i32, i32* %arrayidx53, align 4
  %conv54 = sext i32 %62 to i64
  %63 = load i64, i64* %diff_u, align 8
  %add55 = add nsw i64 %63, %conv54
  store i64 %add55, i64* %diff_u, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %64 to i64
  %65 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %65 to i64
  %66 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx58 = getelementptr inbounds i16**, i16*** %66, i64 1
  %67 = load i16**, i16*** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i16*, i16** %67, i64 %idxprom57
  %68 = load i16*, i16** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16, i16* %68, i64 %idxprom56
  %69 = load i16, i16* %arrayidx60, align 2
  %conv61 = zext i16 %69 to i32
  %70 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %70 to i64
  %71 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %71 to i64
  %72 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx64 = getelementptr inbounds i16**, i16*** %72, i64 1
  %73 = load i16**, i16*** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i16*, i16** %73, i64 %idxprom63
  %74 = load i16*, i16** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i16, i16* %74, i64 %idxprom62
  %75 = load i16, i16* %arrayidx66, align 2
  %conv67 = zext i16 %75 to i32
  %sub68 = sub nsw i32 %conv61, %conv67
  %idxprom69 = sext i32 %sub68 to i64
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 62
  %77 = load i32*, i32** %quad70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %77, i64 %idxprom69
  %78 = load i32, i32* %arrayidx71, align 4
  %conv72 = sext i32 %78 to i64
  %79 = load i64, i64* %diff_v, align 8
  %add73 = add nsw i64 %79, %conv72
  store i64 %add73, i64* %diff_v, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.37
  %80 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %80, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.33

for.end.76:                                       ; preds = %for.cond.33
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %81 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %81, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.28

for.end.79:                                       ; preds = %for.cond.28
  br label %if.end

if.end:                                           ; preds = %for.end.79, %for.end.24
  br label %if.end.174

if.else:                                          ; preds = %entry
  %82 = load i16**, i16*** @imgY_org_frm, align 8
  store i16** %82, i16*** @imgY_org, align 8
  %83 = load i16***, i16**** @imgUV_org_frm, align 8
  store i16*** %83, i16**** @imgUV_org, align 8
  %84 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %84, i32 0, i32 121
  %85 = load i32, i32* %PicInterlace, align 4
  %cmp80 = icmp eq i32 %85, 2
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.else
  %86 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* %86, %struct.storable_picture** @enc_picture, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.else
  store i64 0, i64* %diff_y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.113, %if.end.83
  %87 = load i32, i32* %i, align 4
  %88 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width85 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %88, i32 0, i32 14
  %89 = load i32, i32* %img_width85, align 4
  %cmp86 = icmp slt i32 %87, %89
  br i1 %cmp86, label %for.body.88, label %for.end.115

for.body.88:                                      ; preds = %for.cond.84
  store i32 0, i32* %j, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.110, %for.body.88
  %90 = load i32, i32* %j, align 4
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height90 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 15
  %92 = load i32, i32* %img_height90, align 4
  %cmp91 = icmp slt i32 %90, %92
  br i1 %cmp91, label %for.body.93, label %for.end.112

for.body.93:                                      ; preds = %for.cond.89
  %93 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %93 to i64
  %94 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %94 to i64
  %95 = load i16**, i16*** @imgY_org, align 8
  %arrayidx96 = getelementptr inbounds i16*, i16** %95, i64 %idxprom95
  %96 = load i16*, i16** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i16, i16* %96, i64 %idxprom94
  %97 = load i16, i16* %arrayidx97, align 2
  %conv98 = zext i16 %97 to i32
  %98 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %98 to i64
  %99 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %99 to i64
  %100 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %100, i32 0, i32 29
  %101 = load i16**, i16*** %imgY, align 8
  %arrayidx101 = getelementptr inbounds i16*, i16** %101, i64 %idxprom100
  %102 = load i16*, i16** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i16, i16* %102, i64 %idxprom99
  %103 = load i16, i16* %arrayidx102, align 2
  %conv103 = zext i16 %103 to i32
  %sub104 = sub nsw i32 %conv98, %conv103
  %idxprom105 = sext i32 %sub104 to i64
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 62
  %105 = load i32*, i32** %quad106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %105, i64 %idxprom105
  %106 = load i32, i32* %arrayidx107, align 4
  %conv108 = sext i32 %106 to i64
  %107 = load i64, i64* %diff_y, align 8
  %add109 = add nsw i64 %107, %conv108
  store i64 %add109, i64* %diff_y, align 8
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.93
  %108 = load i32, i32* %j, align 4
  %inc111 = add nsw i32 %108, 1
  store i32 %inc111, i32* %j, align 4
  br label %for.cond.89

for.end.112:                                      ; preds = %for.cond.89
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.end.112
  %109 = load i32, i32* %i, align 4
  %inc114 = add nsw i32 %109, 1
  store i32 %inc114, i32* %i, align 4
  br label %for.cond.84

for.end.115:                                      ; preds = %for.cond.84
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 160
  %111 = load i32, i32* %yuv_format116, align 4
  %cmp117 = icmp ne i32 %111, 0
  br i1 %cmp117, label %if.then.119, label %if.end.173

if.then.119:                                      ; preds = %for.end.115
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.170, %if.then.119
  %112 = load i32, i32* %i, align 4
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr121 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 175
  %114 = load i32, i32* %img_width_cr121, align 4
  %cmp122 = icmp slt i32 %112, %114
  br i1 %cmp122, label %for.body.124, label %for.end.172

for.body.124:                                     ; preds = %for.cond.120
  store i32 0, i32* %j, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.167, %for.body.124
  %115 = load i32, i32* %j, align 4
  %116 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr126 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %116, i32 0, i32 174
  %117 = load i32, i32* %img_height_cr126, align 4
  %cmp127 = icmp slt i32 %115, %117
  br i1 %cmp127, label %for.body.129, label %for.end.169

for.body.129:                                     ; preds = %for.cond.125
  %118 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %118 to i64
  %119 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %119 to i64
  %120 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx132 = getelementptr inbounds i16**, i16*** %120, i64 0
  %121 = load i16**, i16*** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i16*, i16** %121, i64 %idxprom131
  %122 = load i16*, i16** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i16, i16* %122, i64 %idxprom130
  %123 = load i16, i16* %arrayidx134, align 2
  %conv135 = zext i16 %123 to i32
  %124 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %124 to i64
  %125 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %125 to i64
  %126 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %126, i32 0, i32 33
  %127 = load i16***, i16**** %imgUV, align 8
  %arrayidx138 = getelementptr inbounds i16**, i16*** %127, i64 0
  %128 = load i16**, i16*** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i16*, i16** %128, i64 %idxprom137
  %129 = load i16*, i16** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i16, i16* %129, i64 %idxprom136
  %130 = load i16, i16* %arrayidx140, align 2
  %conv141 = zext i16 %130 to i32
  %sub142 = sub nsw i32 %conv135, %conv141
  %idxprom143 = sext i32 %sub142 to i64
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 62
  %132 = load i32*, i32** %quad144, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %132, i64 %idxprom143
  %133 = load i32, i32* %arrayidx145, align 4
  %conv146 = sext i32 %133 to i64
  %134 = load i64, i64* %diff_u, align 8
  %add147 = add nsw i64 %134, %conv146
  store i64 %add147, i64* %diff_u, align 8
  %135 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %135 to i64
  %136 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %136 to i64
  %137 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx150 = getelementptr inbounds i16**, i16*** %137, i64 1
  %138 = load i16**, i16*** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i16*, i16** %138, i64 %idxprom149
  %139 = load i16*, i16** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i16, i16* %139, i64 %idxprom148
  %140 = load i16, i16* %arrayidx152, align 2
  %conv153 = zext i16 %140 to i32
  %141 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %141 to i64
  %142 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %142 to i64
  %143 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV156 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %143, i32 0, i32 33
  %144 = load i16***, i16**** %imgUV156, align 8
  %arrayidx157 = getelementptr inbounds i16**, i16*** %144, i64 1
  %145 = load i16**, i16*** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i16*, i16** %145, i64 %idxprom155
  %146 = load i16*, i16** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i16, i16* %146, i64 %idxprom154
  %147 = load i16, i16* %arrayidx159, align 2
  %conv160 = zext i16 %147 to i32
  %sub161 = sub nsw i32 %conv153, %conv160
  %idxprom162 = sext i32 %sub161 to i64
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad163 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 62
  %149 = load i32*, i32** %quad163, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %149, i64 %idxprom162
  %150 = load i32, i32* %arrayidx164, align 4
  %conv165 = sext i32 %150 to i64
  %151 = load i64, i64* %diff_v, align 8
  %add166 = add nsw i64 %151, %conv165
  store i64 %add166, i64* %diff_v, align 8
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.129
  %152 = load i32, i32* %j, align 4
  %inc168 = add nsw i32 %152, 1
  store i32 %inc168, i32* %j, align 4
  br label %for.cond.125

for.end.169:                                      ; preds = %for.cond.125
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.end.169
  %153 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %153, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond.120

for.end.172:                                      ; preds = %for.cond.120
  br label %if.end.173

if.end.173:                                       ; preds = %for.end.172, %for.end.115
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end
  %154 = load i64, i64* %diff_y, align 8
  %conv175 = sitofp i64 %154 to float
  %155 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %155, i32 0, i32 12
  store float %conv175, float* %sse_y, align 4
  %156 = load i64, i64* %diff_u, align 8
  %conv176 = sitofp i64 %156 to float
  %157 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %157, i32 0, i32 13
  store float %conv176, float* %sse_u, align 4
  %158 = load i64, i64* %diff_v, align 8
  %conv177 = sitofp i64 %158 to float
  %159 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %159, i32 0, i32 14
  store float %conv177, float* %sse_v, align 4
  %160 = load i64, i64* %diff_y, align 8
  %cmp178 = icmp eq i64 %160, 0
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.end.174
  store i64 1, i64* %diff_y, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.180, %if.end.174
  %161 = load i64, i64* %diff_u, align 8
  %cmp182 = icmp eq i64 %161, 0
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.end.181
  store i64 1, i64* %diff_u, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %if.end.181
  %162 = load i64, i64* %diff_v, align 8
  %cmp186 = icmp eq i64 %162, 0
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.end.185
  store i64 1, i64* %diff_v, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %if.end.185
  %163 = load i64, i64* %diff_y, align 8
  %cmp190 = icmp ne i64 %163, 0
  br i1 %cmp190, label %if.then.192, label %if.end.223

if.then.192:                                      ; preds = %if.end.189
  %164 = load i32, i32* %max_pix_value_sqd, align 4
  %conv193 = uitofp i32 %164 to double
  %165 = load i32, i32* %impix, align 4
  %conv194 = sitofp i32 %165 to double
  %166 = load i64, i64* %diff_y, align 8
  %conv195 = sitofp i64 %166 to double
  %div = fdiv double %conv194, %conv195
  %mul196 = fmul double %conv193, %div
  %call = call double @log10(double %mul196) #2
  %mul197 = fmul double 1.000000e+01, %call
  %conv198 = fptrunc double %mul197 to float
  %167 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %167, i32 0, i32 0
  store float %conv198, float* %snr_y, align 4
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format199 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 160
  %169 = load i32, i32* %yuv_format199, align 4
  %cmp200 = icmp ne i32 %169, 0
  br i1 %cmp200, label %if.then.202, label %if.else.219

if.then.202:                                      ; preds = %if.then.192
  %170 = load i32, i32* %max_pix_value_sqd_uv, align 4
  %conv203 = uitofp i32 %170 to double
  %171 = load i32, i32* %impix_cr, align 4
  %conv204 = sitofp i32 %171 to double
  %172 = load i64, i64* %diff_u, align 8
  %conv205 = sitofp i64 %172 to double
  %div206 = fdiv double %conv204, %conv205
  %mul207 = fmul double %conv203, %div206
  %call208 = call double @log10(double %mul207) #2
  %mul209 = fmul double 1.000000e+01, %call208
  %conv210 = fptrunc double %mul209 to float
  %173 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %173, i32 0, i32 1
  store float %conv210, float* %snr_u, align 4
  %174 = load i32, i32* %max_pix_value_sqd_uv, align 4
  %conv211 = uitofp i32 %174 to double
  %175 = load i32, i32* %impix_cr, align 4
  %conv212 = sitofp i32 %175 to double
  %176 = load i64, i64* %diff_v, align 8
  %conv213 = sitofp i64 %176 to double
  %div214 = fdiv double %conv212, %conv213
  %mul215 = fmul double %conv211, %div214
  %call216 = call double @log10(double %mul215) #2
  %mul217 = fmul double 1.000000e+01, %call216
  %conv218 = fptrunc double %mul217 to float
  %177 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %177, i32 0, i32 2
  store float %conv218, float* %snr_v, align 4
  br label %if.end.222

if.else.219:                                      ; preds = %if.then.192
  %178 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u220 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %178, i32 0, i32 1
  store float 0.000000e+00, float* %snr_u220, align 4
  %179 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v221 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %179, i32 0, i32 2
  store float 0.000000e+00, float* %snr_v221, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.219, %if.then.202
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.end.189
  %180 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %180, i32 0, i32 0
  %181 = load i32, i32* %number, align 4
  %cmp224 = icmp eq i32 %181, 0
  br i1 %cmp224, label %if.then.226, label %if.else.249

if.then.226:                                      ; preds = %if.end.223
  %182 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y227 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %182, i32 0, i32 0
  %183 = load float, float* %snr_y227, align 4
  %184 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %184, i32 0, i32 3
  store float %183, float* %snr_y1, align 4
  %185 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u228 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %185, i32 0, i32 1
  %186 = load float, float* %snr_u228, align 4
  %187 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %187, i32 0, i32 4
  store float %186, float* %snr_u1, align 4
  %188 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v229 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %188, i32 0, i32 2
  %189 = load float, float* %snr_v229, align 4
  %190 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %190, i32 0, i32 5
  store float %189, float* %snr_v1, align 4
  %191 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y1230 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %191, i32 0, i32 3
  %192 = load float, float* %snr_y1230, align 4
  %193 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %193, i32 0, i32 9
  store float %192, float* %snr_ya, align 4
  %194 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u1231 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %194, i32 0, i32 4
  %195 = load float, float* %snr_u1231, align 4
  %196 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %196, i32 0, i32 10
  store float %195, float* %snr_ua, align 4
  %197 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v1232 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %197, i32 0, i32 5
  %198 = load float, float* %snr_v1232, align 4
  %199 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %199, i32 0, i32 11
  store float %198, float* %snr_va, align 4
  %200 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_y233 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %200, i32 0, i32 12
  %201 = load float, float* %sse_y233, align 4
  %202 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %202, i32 0, i32 15
  store float %201, float* %msse_y, align 4
  %203 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_u234 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %203, i32 0, i32 13
  %204 = load float, float* %sse_u234, align 4
  %205 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %205, i32 0, i32 16
  store float %204, float* %msse_u, align 4
  %206 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_v235 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %206, i32 0, i32 14
  %207 = load float, float* %sse_v235, align 4
  %208 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %208, i32 0, i32 17
  store float %207, float* %msse_v, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.246, %if.then.226
  %209 = load i32, i32* %i, align 4
  %cmp237 = icmp slt i32 %209, 5
  br i1 %cmp237, label %for.body.239, label %for.end.248

for.body.239:                                     ; preds = %for.cond.236
  %210 = load i32, i32* %i, align 4
  %idxprom240 = sext i32 %210 to i64
  %211 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %211, i32 0, i32 6
  %arrayidx241 = getelementptr inbounds [5 x float], [5 x float]* %snr_yt, i32 0, i64 %idxprom240
  store float 0.000000e+00, float* %arrayidx241, align 4
  %212 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %212 to i64
  %213 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %213, i32 0, i32 7
  %arrayidx243 = getelementptr inbounds [5 x float], [5 x float]* %snr_ut, i32 0, i64 %idxprom242
  store float 0.000000e+00, float* %arrayidx243, align 4
  %214 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %214 to i64
  %215 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %215, i32 0, i32 8
  %arrayidx245 = getelementptr inbounds [5 x float], [5 x float]* %snr_vt, i32 0, i64 %idxprom244
  store float 0.000000e+00, float* %arrayidx245, align 4
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.body.239
  %216 = load i32, i32* %i, align 4
  %inc247 = add nsw i32 %216, 1
  store i32 %inc247, i32* %i, align 4
  br label %for.cond.236

for.end.248:                                      ; preds = %for.cond.236
  br label %if.end.305

if.else.249:                                      ; preds = %if.end.223
  %217 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %frame_ctr = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %217, i32 0, i32 18
  %218 = load i32, i32* %frame_ctr, align 4
  %sub250 = sub nsw i32 %218, 1
  store i32 %sub250, i32* %total_frames, align 4
  %219 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya251 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %219, i32 0, i32 9
  %220 = load float, float* %snr_ya251, align 4
  %221 = load i32, i32* %total_frames, align 4
  %conv252 = sitofp i32 %221 to float
  %mul253 = fmul float %220, %conv252
  %222 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y254 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %222, i32 0, i32 0
  %223 = load float, float* %snr_y254, align 4
  %add255 = fadd float %mul253, %223
  %224 = load i32, i32* %total_frames, align 4
  %add256 = add nsw i32 %224, 1
  %conv257 = sitofp i32 %add256 to float
  %div258 = fdiv float %add255, %conv257
  %225 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya259 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %225, i32 0, i32 9
  store float %div258, float* %snr_ya259, align 4
  %226 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua260 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %226, i32 0, i32 10
  %227 = load float, float* %snr_ua260, align 4
  %228 = load i32, i32* %total_frames, align 4
  %conv261 = sitofp i32 %228 to float
  %mul262 = fmul float %227, %conv261
  %229 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u263 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %229, i32 0, i32 1
  %230 = load float, float* %snr_u263, align 4
  %add264 = fadd float %mul262, %230
  %231 = load i32, i32* %total_frames, align 4
  %add265 = add nsw i32 %231, 1
  %conv266 = sitofp i32 %add265 to float
  %div267 = fdiv float %add264, %conv266
  %232 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua268 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %232, i32 0, i32 10
  store float %div267, float* %snr_ua268, align 4
  %233 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va269 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %233, i32 0, i32 11
  %234 = load float, float* %snr_va269, align 4
  %235 = load i32, i32* %total_frames, align 4
  %conv270 = sitofp i32 %235 to float
  %mul271 = fmul float %234, %conv270
  %236 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v272 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %236, i32 0, i32 2
  %237 = load float, float* %snr_v272, align 4
  %add273 = fadd float %mul271, %237
  %238 = load i32, i32* %total_frames, align 4
  %add274 = add nsw i32 %238, 1
  %conv275 = sitofp i32 %add274 to float
  %div276 = fdiv float %add273, %conv275
  %239 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va277 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %239, i32 0, i32 11
  store float %div276, float* %snr_va277, align 4
  %240 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_y278 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %240, i32 0, i32 15
  %241 = load float, float* %msse_y278, align 4
  %242 = load i32, i32* %total_frames, align 4
  %conv279 = sitofp i32 %242 to float
  %mul280 = fmul float %241, %conv279
  %243 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_y281 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %243, i32 0, i32 12
  %244 = load float, float* %sse_y281, align 4
  %add282 = fadd float %mul280, %244
  %245 = load i32, i32* %total_frames, align 4
  %add283 = add nsw i32 %245, 1
  %conv284 = sitofp i32 %add283 to float
  %div285 = fdiv float %add282, %conv284
  %246 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_y286 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %246, i32 0, i32 15
  store float %div285, float* %msse_y286, align 4
  %247 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_u287 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %247, i32 0, i32 16
  %248 = load float, float* %msse_u287, align 4
  %249 = load i32, i32* %total_frames, align 4
  %conv288 = sitofp i32 %249 to float
  %mul289 = fmul float %248, %conv288
  %250 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_u290 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %250, i32 0, i32 13
  %251 = load float, float* %sse_u290, align 4
  %add291 = fadd float %mul289, %251
  %252 = load i32, i32* %total_frames, align 4
  %add292 = add nsw i32 %252, 1
  %conv293 = sitofp i32 %add292 to float
  %div294 = fdiv float %add291, %conv293
  %253 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_u295 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %253, i32 0, i32 16
  store float %div294, float* %msse_u295, align 4
  %254 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_v296 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %254, i32 0, i32 17
  %255 = load float, float* %msse_v296, align 4
  %256 = load i32, i32* %total_frames, align 4
  %conv297 = sitofp i32 %256 to float
  %mul298 = fmul float %255, %conv297
  %257 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %sse_v299 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %257, i32 0, i32 14
  %258 = load float, float* %sse_v299, align 4
  %add300 = fadd float %mul298, %258
  %259 = load i32, i32* %total_frames, align 4
  %add301 = add nsw i32 %259, 1
  %conv302 = sitofp i32 %add301 to float
  %div303 = fdiv float %add300, %conv302
  %260 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %msse_v304 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %260, i32 0, i32 17
  store float %div303, float* %msse_v304, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.else.249, %for.end.248
  %261 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %261, i32 0, i32 5
  %262 = load i32, i32* %type, align 4
  %idxprom306 = sext i32 %262 to i64
  %263 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt307 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %263, i32 0, i32 6
  %arrayidx308 = getelementptr inbounds [5 x float], [5 x float]* %snr_yt307, i32 0, i64 %idxprom306
  %264 = load float, float* %arrayidx308, align 4
  %265 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type309 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %265, i32 0, i32 5
  %266 = load i32, i32* %type309, align 4
  %idxprom310 = sext i32 %266 to i64
  %arrayidx311 = getelementptr inbounds [5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 %idxprom310
  %267 = load i32, i32* %arrayidx311, align 4
  %sub312 = sub nsw i32 %267, 1
  %conv313 = sitofp i32 %sub312 to float
  %mul314 = fmul float %264, %conv313
  %268 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y315 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %268, i32 0, i32 0
  %269 = load float, float* %snr_y315, align 4
  %add316 = fadd float %mul314, %269
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type317 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 5
  %271 = load i32, i32* %type317, align 4
  %idxprom318 = sext i32 %271 to i64
  %arrayidx319 = getelementptr inbounds [5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 %idxprom318
  %272 = load i32, i32* %arrayidx319, align 4
  %conv320 = sitofp i32 %272 to float
  %div321 = fdiv float %add316, %conv320
  %273 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type322 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %273, i32 0, i32 5
  %274 = load i32, i32* %type322, align 4
  %idxprom323 = sext i32 %274 to i64
  %275 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt324 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %275, i32 0, i32 6
  %arrayidx325 = getelementptr inbounds [5 x float], [5 x float]* %snr_yt324, i32 0, i64 %idxprom323
  store float %div321, float* %arrayidx325, align 4
  %276 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type326 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %276, i32 0, i32 5
  %277 = load i32, i32* %type326, align 4
  %idxprom327 = sext i32 %277 to i64
  %278 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut328 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %278, i32 0, i32 7
  %arrayidx329 = getelementptr inbounds [5 x float], [5 x float]* %snr_ut328, i32 0, i64 %idxprom327
  %279 = load float, float* %arrayidx329, align 4
  %280 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type330 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %280, i32 0, i32 5
  %281 = load i32, i32* %type330, align 4
  %idxprom331 = sext i32 %281 to i64
  %arrayidx332 = getelementptr inbounds [5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 %idxprom331
  %282 = load i32, i32* %arrayidx332, align 4
  %sub333 = sub nsw i32 %282, 1
  %conv334 = sitofp i32 %sub333 to float
  %mul335 = fmul float %279, %conv334
  %283 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u336 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %283, i32 0, i32 1
  %284 = load float, float* %snr_u336, align 4
  %add337 = fadd float %mul335, %284
  %285 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type338 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %285, i32 0, i32 5
  %286 = load i32, i32* %type338, align 4
  %idxprom339 = sext i32 %286 to i64
  %arrayidx340 = getelementptr inbounds [5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 %idxprom339
  %287 = load i32, i32* %arrayidx340, align 4
  %conv341 = sitofp i32 %287 to float
  %div342 = fdiv float %add337, %conv341
  %288 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type343 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %288, i32 0, i32 5
  %289 = load i32, i32* %type343, align 4
  %idxprom344 = sext i32 %289 to i64
  %290 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut345 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %290, i32 0, i32 7
  %arrayidx346 = getelementptr inbounds [5 x float], [5 x float]* %snr_ut345, i32 0, i64 %idxprom344
  store float %div342, float* %arrayidx346, align 4
  %291 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type347 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %291, i32 0, i32 5
  %292 = load i32, i32* %type347, align 4
  %idxprom348 = sext i32 %292 to i64
  %293 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt349 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %293, i32 0, i32 8
  %arrayidx350 = getelementptr inbounds [5 x float], [5 x float]* %snr_vt349, i32 0, i64 %idxprom348
  %294 = load float, float* %arrayidx350, align 4
  %295 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type351 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %295, i32 0, i32 5
  %296 = load i32, i32* %type351, align 4
  %idxprom352 = sext i32 %296 to i64
  %arrayidx353 = getelementptr inbounds [5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 %idxprom352
  %297 = load i32, i32* %arrayidx353, align 4
  %sub354 = sub nsw i32 %297, 1
  %conv355 = sitofp i32 %sub354 to float
  %mul356 = fmul float %294, %conv355
  %298 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v357 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %298, i32 0, i32 2
  %299 = load float, float* %snr_v357, align 4
  %add358 = fadd float %mul356, %299
  %300 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type359 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %300, i32 0, i32 5
  %301 = load i32, i32* %type359, align 4
  %idxprom360 = sext i32 %301 to i64
  %arrayidx361 = getelementptr inbounds [5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 %idxprom360
  %302 = load i32, i32* %arrayidx361, align 4
  %conv362 = sitofp i32 %302 to float
  %div363 = fdiv float %add358, %conv362
  %303 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type364 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %303, i32 0, i32 5
  %304 = load i32, i32* %type364, align 4
  %idxprom365 = sext i32 %304 to i64
  %305 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt366 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %305, i32 0, i32 8
  %arrayidx367 = getelementptr inbounds [5 x float], [5 x float]* %snr_vt366, i32 0, i64 %idxprom365
  store float %div363, float* %arrayidx367, align 4
  ret void
}

declare void @store_picture_in_dpb(%struct.storable_picture*) #1

declare void @free_storable_picture(%struct.storable_picture*) #1

declare void @replace_top_pic_with_frame(%struct.storable_picture*) #1

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ReportNALNonVLCBits(i64 %tmp_time, i64 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i64, align 8
  %me_time.addr = alloca i64, align 8
  store i64 %tmp_time, i64* %tmp_time.addr, align 8
  store i64 %me_time, i64* %me_time.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 156
  %1 = load i32, i32* %Verbose, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @frame_no, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 %2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportFirstframe(i64 %tmp_time, i64 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i64, align 8
  %me_time.addr = alloca i64, align 8
  %bits = alloca i32, align 4
  store i64 %tmp_time, i64* %tmp_time.addr, align 8
  store i64 %me_time, i64* %me_time.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 156
  %1 = load i32, i32* %Verbose, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @frame_no, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 171
  %4 = load i32, i32* %AverageFrameQP, align 4
  %5 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %5, i32 0, i32 0
  %6 = load float, float* %snr_y, align 4
  %conv = fpext float %6 to double
  %7 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %7, i32 0, i32 1
  %8 = load float, float* %snr_u, align 4
  %conv1 = fpext float %8 to double
  %9 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %9, i32 0, i32 2
  %10 = load float, float* %snr_v, align 4
  %conv2 = fpext float %10 to double
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 66
  %12 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %12, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 122
  %14 = load i32, i32* %nal_reference_idc, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i32 0, i32 0), i32 %2, i32 0, i32 %4, double %conv, double %conv1, double %conv2, i32 0, i32 0, i8* %cond, i32 %14)
  br label %if.end.19

if.else:                                          ; preds = %entry
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 156
  %16 = load i32, i32* %Verbose3, align 4
  %cmp4 = icmp eq i32 %16, 2
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %17 = load i32, i32* @frame_no, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 171
  %19 = load i32, i32* %AverageFrameQP7, align 4
  %20 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y8 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %20, i32 0, i32 0
  %21 = load float, float* %snr_y8, align 4
  %conv9 = fpext float %21 to double
  %22 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u10 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %22, i32 0, i32 1
  %23 = load float, float* %snr_u10, align 4
  %conv11 = fpext float %23 to double
  %24 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v12 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %24, i32 0, i32 2
  %25 = load float, float* %snr_v12, align 4
  %conv13 = fpext float %25 to double
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 66
  %27 = load i32, i32* %fld_flag14, align 4
  %tobool15 = icmp ne i32 %27, 0
  %cond16 = select i1 %tobool15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %28 = load i32, i32* @intras, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 88
  %30 = load i32, i32* %num_ref_idx_l0_active, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 89
  %32 = load i32, i32* %num_ref_idx_l1_active, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 67
  %34 = load i32, i32* %rd_pass, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 122
  %36 = load i32, i32* %nal_reference_idc17, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i32 0, i32 0), i32 %17, i32 0, i32 0, i32 %19, double %conv9, double %conv11, double %conv13, i32 0, i32 0, i8* %cond16, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 157
  %38 = load i32, i32* %RCEnable, align 4
  %tobool20 = icmp ne i32 %38, 0
  br i1 %tobool20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %if.end.19
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 121
  %40 = load i32, i32* %PicInterlace, align 4
  %tobool22 = icmp ne i32 %40, 0
  br i1 %tobool22, label %if.else.26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.21
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 122
  %42 = load i32, i32* %MbInterlace, align 4
  %tobool23 = icmp ne i32 %42, 0
  br i1 %tobool23, label %if.else.26, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  %43 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %43, i32 0, i32 4
  %44 = load i64, i64* %bit_ctr, align 8
  %45 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %45, i32 0, i32 5
  %46 = load i64, i64* %bit_ctr_n, align 8
  %sub = sub nsw i64 %44, %46
  %conv25 = trunc i64 %sub to i32
  store i32 %conv25, i32* %bits, align 4
  br label %if.end.32

if.else.26:                                       ; preds = %land.lhs.true, %if.then.21
  %47 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr27 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %47, i32 0, i32 4
  %48 = load i64, i64* %bit_ctr27, align 8
  %49 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %Iprev_bits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %49, i32 0, i32 64
  %50 = load i64, i64* %Iprev_bits, align 8
  %sub28 = sub nsw i64 %48, %50
  %conv29 = trunc i64 %sub28 to i32
  store i32 %conv29, i32* %bits, align 4
  %51 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr30 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %51, i32 0, i32 4
  %52 = load i64, i64* %bit_ctr30, align 8
  %53 = load %struct.rc_quadratic*, %struct.rc_quadratic** @quadratic_RC, align 8
  %Iprev_bits31 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %53, i32 0, i32 64
  store i64 %52, i64* %Iprev_bits31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.19
  %54 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr34 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %54, i32 0, i32 4
  %55 = load i64, i64* %bit_ctr34, align 8
  %56 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %56, i32 0, i32 16
  store i64 %55, i64* %bit_ctr_I, align 8
  %57 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr35 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %57, i32 0, i32 4
  store i64 0, i64* %bit_ctr35, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportIntra(i64 %tmp_time, i64 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i64, align 8
  %me_time.addr = alloca i64, align 8
  store i64 %tmp_time, i64* %tmp_time.addr, align 8
  store i64 %me_time, i64* %me_time.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 156
  %1 = load i32, i32* %Verbose, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else.17

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 59
  %3 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %3, i32 0, i32 1
  %4 = load i32, i32* %idr_flag, align 4
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load i32, i32* @frame_no, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 171
  %7 = load i32, i32* %AverageFrameQP, align 4
  %8 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %8, i32 0, i32 0
  %9 = load float, float* %snr_y, align 4
  %conv = fpext float %9 to double
  %10 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %10, i32 0, i32 1
  %11 = load float, float* %snr_u, align 4
  %conv3 = fpext float %11 to double
  %12 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %12, i32 0, i32 2
  %13 = load float, float* %snr_v, align 4
  %conv4 = fpext float %13 to double
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 66
  %15 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %15, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 122
  %17 = load i32, i32* %nal_reference_idc, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i32 0, i32 0), i32 %5, i32 0, i32 %7, double %conv, double %conv3, double %conv4, i32 0, i32 0, i8* %cond, i32 %17)
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load i32, i32* @frame_no, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 171
  %20 = load i32, i32* %AverageFrameQP5, align 4
  %21 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y6 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %21, i32 0, i32 0
  %22 = load float, float* %snr_y6, align 4
  %conv7 = fpext float %22 to double
  %23 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u8 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %23, i32 0, i32 1
  %24 = load float, float* %snr_u8, align 4
  %conv9 = fpext float %24 to double
  %25 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v10 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %25, i32 0, i32 2
  %26 = load float, float* %snr_v10, align 4
  %conv11 = fpext float %26 to double
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 66
  %28 = load i32, i32* %fld_flag12, align 4
  %tobool13 = icmp ne i32 %28, 0
  %cond14 = select i1 %tobool13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 122
  %30 = load i32, i32* %nal_reference_idc15, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i32 0, i32 0), i32 %18, i32 0, i32 %20, double %conv7, double %conv9, double %conv11, i32 0, i32 0, i8* %cond14, i32 %30)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.57

if.else.17:                                       ; preds = %entry
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose18 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 156
  %32 = load i32, i32* %Verbose18, align 4
  %cmp19 = icmp eq i32 %32, 2
  br i1 %cmp19, label %if.then.21, label %if.end.56

if.then.21:                                       ; preds = %if.else.17
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 59
  %34 = load %struct.Picture*, %struct.Picture** %currentPicture22, align 8
  %idr_flag23 = getelementptr inbounds %struct.Picture, %struct.Picture* %34, i32 0, i32 1
  %35 = load i32, i32* %idr_flag23, align 4
  %cmp24 = icmp eq i32 %35, 1
  br i1 %cmp24, label %if.then.26, label %if.else.39

if.then.26:                                       ; preds = %if.then.21
  %36 = load i32, i32* @frame_no, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 171
  %38 = load i32, i32* %AverageFrameQP27, align 4
  %39 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y28 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %39, i32 0, i32 0
  %40 = load float, float* %snr_y28, align 4
  %conv29 = fpext float %40 to double
  %41 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u30 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %41, i32 0, i32 1
  %42 = load float, float* %snr_u30, align 4
  %conv31 = fpext float %42 to double
  %43 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v32 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %43, i32 0, i32 2
  %44 = load float, float* %snr_v32, align 4
  %conv33 = fpext float %44 to double
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 66
  %46 = load i32, i32* %fld_flag34, align 4
  %tobool35 = icmp ne i32 %46, 0
  %cond36 = select i1 %tobool35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %47 = load i32, i32* @intras, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 88
  %49 = load i32, i32* %num_ref_idx_l0_active, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 89
  %51 = load i32, i32* %num_ref_idx_l1_active, align 4
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 67
  %53 = load i32, i32* %rd_pass, align 4
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 122
  %55 = load i32, i32* %nal_reference_idc37, align 4
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i32 0, i32 0), i32 %36, i32 0, i32 0, i32 %38, double %conv29, double %conv31, double %conv33, i32 0, i32 0, i8* %cond36, i32 %47, i32 %49, i32 %51, i32 %53, i32 %55)
  br label %if.end.55

if.else.39:                                       ; preds = %if.then.21
  %56 = load i32, i32* @frame_no, align 4
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 171
  %58 = load i32, i32* %AverageFrameQP40, align 4
  %59 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y41 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %59, i32 0, i32 0
  %60 = load float, float* %snr_y41, align 4
  %conv42 = fpext float %60 to double
  %61 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u43 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %61, i32 0, i32 1
  %62 = load float, float* %snr_u43, align 4
  %conv44 = fpext float %62 to double
  %63 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v45 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %63, i32 0, i32 2
  %64 = load float, float* %snr_v45, align 4
  %conv46 = fpext float %64 to double
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 66
  %66 = load i32, i32* %fld_flag47, align 4
  %tobool48 = icmp ne i32 %66, 0
  %cond49 = select i1 %tobool48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %67 = load i32, i32* @intras, align 4
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active50 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 88
  %69 = load i32, i32* %num_ref_idx_l0_active50, align 4
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 89
  %71 = load i32, i32* %num_ref_idx_l1_active51, align 4
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 67
  %73 = load i32, i32* %rd_pass52, align 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 122
  %75 = load i32, i32* %nal_reference_idc53, align 4
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.18, i32 0, i32 0), i32 %56, i32 0, i32 0, i32 %58, double %conv42, double %conv44, double %conv46, i32 0, i32 0, i8* %cond49, i32 %67, i32 %69, i32 %71, i32 %73, i32 %75)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.39, %if.then.26
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.else.17
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportSP(i64 %tmp_time, i64 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i64, align 8
  %me_time.addr = alloca i64, align 8
  store i64 %tmp_time, i64* %tmp_time.addr, align 8
  store i64 %me_time, i64* %me_time.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 156
  %1 = load i32, i32* %Verbose, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @frame_no, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 171
  %4 = load i32, i32* %AverageFrameQP, align 4
  %5 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %5, i32 0, i32 0
  %6 = load float, float* %snr_y, align 4
  %conv = fpext float %6 to double
  %7 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %7, i32 0, i32 1
  %8 = load float, float* %snr_u, align 4
  %conv1 = fpext float %8 to double
  %9 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %9, i32 0, i32 2
  %10 = load float, float* %snr_v, align 4
  %conv2 = fpext float %10 to double
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 66
  %12 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %12, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 122
  %14 = load i32, i32* %nal_reference_idc, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i32 0, i32 0), i32 %2, i32 0, i32 %4, double %conv, double %conv1, double %conv2, i32 0, i32 0, i8* %cond, i32 %14)
  br label %if.end.19

if.else:                                          ; preds = %entry
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 156
  %16 = load i32, i32* %Verbose3, align 4
  %cmp4 = icmp eq i32 %16, 2
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %17 = load i32, i32* @frame_no, align 4
  %18 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %18, i32 0, i32 19
  %19 = load i32, i32* %weighted_pred_flag, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 171
  %21 = load i32, i32* %AverageFrameQP7, align 4
  %22 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y8 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %22, i32 0, i32 0
  %23 = load float, float* %snr_y8, align 4
  %conv9 = fpext float %23 to double
  %24 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u10 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %24, i32 0, i32 1
  %25 = load float, float* %snr_u10, align 4
  %conv11 = fpext float %25 to double
  %26 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v12 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %26, i32 0, i32 2
  %27 = load float, float* %snr_v12, align 4
  %conv13 = fpext float %27 to double
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 66
  %29 = load i32, i32* %fld_flag14, align 4
  %tobool15 = icmp ne i32 %29, 0
  %cond16 = select i1 %tobool15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %30 = load i32, i32* @intras, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 88
  %32 = load i32, i32* %num_ref_idx_l0_active, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 89
  %34 = load i32, i32* %num_ref_idx_l1_active, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 67
  %36 = load i32, i32* %rd_pass, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 122
  %38 = load i32, i32* %nal_reference_idc17, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.20, i32 0, i32 0), i32 %17, i32 0, i32 %19, i32 %21, double %conv9, double %conv11, double %conv13, i32 0, i32 0, i8* %cond16, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportB(i64 %tmp_time, i64 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i64, align 8
  %me_time.addr = alloca i64, align 8
  store i64 %tmp_time, i64* %tmp_time.addr, align 8
  store i64 %me_time, i64* %me_time.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 156
  %1 = load i32, i32* %Verbose, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @frame_no, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 171
  %4 = load i32, i32* %AverageFrameQP, align 4
  %5 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %5, i32 0, i32 0
  %6 = load float, float* %snr_y, align 4
  %conv = fpext float %6 to double
  %7 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %7, i32 0, i32 1
  %8 = load float, float* %snr_u, align 4
  %conv1 = fpext float %8 to double
  %9 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %9, i32 0, i32 2
  %10 = load float, float* %snr_v, align 4
  %conv2 = fpext float %10 to double
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 66
  %12 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %12, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 122
  %14 = load i32, i32* %nal_reference_idc, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i32 0, i32 0), i32 %2, i32 0, i32 %4, double %conv, double %conv1, double %conv2, i32 0, i32 0, i8* %cond, i32 %14)
  br label %if.end.19

if.else:                                          ; preds = %entry
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 156
  %16 = load i32, i32* %Verbose3, align 4
  %cmp4 = icmp eq i32 %16, 2
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %17 = load i32, i32* @frame_no, align 4
  %18 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %18, i32 0, i32 20
  %19 = load i32, i32* %weighted_bipred_idc, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 171
  %21 = load i32, i32* %AverageFrameQP7, align 4
  %22 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y8 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %22, i32 0, i32 0
  %23 = load float, float* %snr_y8, align 4
  %conv9 = fpext float %23 to double
  %24 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u10 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %24, i32 0, i32 1
  %25 = load float, float* %snr_u10, align 4
  %conv11 = fpext float %25 to double
  %26 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v12 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %26, i32 0, i32 2
  %27 = load float, float* %snr_v12, align 4
  %conv13 = fpext float %27 to double
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 66
  %29 = load i32, i32* %fld_flag14, align 4
  %tobool15 = icmp ne i32 %29, 0
  %cond16 = select i1 %tobool15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %30 = load i32, i32* @intras, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 87
  %32 = load i32, i32* %direct_spatial_mv_pred_flag, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 88
  %34 = load i32, i32* %num_ref_idx_l0_active, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 89
  %36 = load i32, i32* %num_ref_idx_l1_active, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 67
  %38 = load i32, i32* %rd_pass, align 4
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 122
  %40 = load i32, i32* %nal_reference_idc17, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.22, i32 0, i32 0), i32 %17, i32 0, i32 %19, i32 %21, double %conv9, double %conv11, double %conv13, i32 0, i32 0, i8* %cond16, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %40)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportP(i64 %tmp_time, i64 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i64, align 8
  %me_time.addr = alloca i64, align 8
  store i64 %tmp_time, i64* %tmp_time.addr, align 8
  store i64 %me_time, i64* %me_time.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 156
  %1 = load i32, i32* %Verbose, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else.33

if.then:                                          ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 149
  %3 = load i32, i32* %redundant_pic_flag, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load i32, i32* @frame_no, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 171
  %6 = load i32, i32* %AverageFrameQP, align 4
  %7 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %7, i32 0, i32 0
  %8 = load float, float* %snr_y, align 4
  %conv = fpext float %8 to double
  %9 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %9, i32 0, i32 1
  %10 = load float, float* %snr_u, align 4
  %conv3 = fpext float %10 to double
  %11 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %11, i32 0, i32 2
  %12 = load float, float* %snr_v, align 4
  %conv4 = fpext float %12 to double
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 66
  %14 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %14, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 122
  %16 = load i32, i32* %nal_reference_idc, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i32 0, i32 0), i32 %4, i32 0, i32 %6, double %conv, double %conv3, double %conv4, i32 0, i32 0, i8* %cond, i32 %16)
  br label %if.end.32

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* @redundant_coding, align 4
  %tobool5 = icmp ne i32 %17, 0
  br i1 %tobool5, label %if.else.19, label %if.then.6

if.then.6:                                        ; preds = %if.else
  %18 = load i32, i32* @frame_no, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 171
  %20 = load i32, i32* %AverageFrameQP7, align 4
  %21 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y8 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %21, i32 0, i32 0
  %22 = load float, float* %snr_y8, align 4
  %conv9 = fpext float %22 to double
  %23 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u10 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %23, i32 0, i32 1
  %24 = load float, float* %snr_u10, align 4
  %conv11 = fpext float %24 to double
  %25 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v12 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %25, i32 0, i32 2
  %26 = load float, float* %snr_v12, align 4
  %conv13 = fpext float %26 to double
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 66
  %28 = load i32, i32* %fld_flag14, align 4
  %tobool15 = icmp ne i32 %28, 0
  %cond16 = select i1 %tobool15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 122
  %30 = load i32, i32* %nal_reference_idc17, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i32 0, i32 0), i32 %18, i32 0, i32 %20, double %conv9, double %conv11, double %conv13, i32 0, i32 0, i8* %cond16, i32 %30)
  br label %if.end

if.else.19:                                       ; preds = %if.else
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 171
  %32 = load i32, i32* %AverageFrameQP20, align 4
  %33 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y21 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %33, i32 0, i32 0
  %34 = load float, float* %snr_y21, align 4
  %conv22 = fpext float %34 to double
  %35 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u23 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %35, i32 0, i32 1
  %36 = load float, float* %snr_u23, align 4
  %conv24 = fpext float %36 to double
  %37 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v25 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %37, i32 0, i32 2
  %38 = load float, float* %snr_v25, align 4
  %conv26 = fpext float %38 to double
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 66
  %40 = load i32, i32* %fld_flag27, align 4
  %tobool28 = icmp ne i32 %40, 0
  %cond29 = select i1 %tobool28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 122
  %42 = load i32, i32* %nal_reference_idc30, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.24, i32 0, i32 0), i32 0, i32 %32, double %conv22, double %conv24, double %conv26, i32 0, i32 0, i8* %cond29, i32 %42)
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.6
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then.2
  br label %if.end.51

if.else.33:                                       ; preds = %entry
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Verbose34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 156
  %44 = load i32, i32* %Verbose34, align 4
  %cmp35 = icmp eq i32 %44, 2
  br i1 %cmp35, label %if.then.37, label %if.end.50

if.then.37:                                       ; preds = %if.else.33
  %45 = load i32, i32* @frame_no, align 4
  %46 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %46, i32 0, i32 19
  %47 = load i32, i32* %weighted_pred_flag, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AverageFrameQP38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 171
  %49 = load i32, i32* %AverageFrameQP38, align 4
  %50 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y39 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %50, i32 0, i32 0
  %51 = load float, float* %snr_y39, align 4
  %conv40 = fpext float %51 to double
  %52 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u41 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %52, i32 0, i32 1
  %53 = load float, float* %snr_u41, align 4
  %conv42 = fpext float %53 to double
  %54 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v43 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %54, i32 0, i32 2
  %55 = load float, float* %snr_v43, align 4
  %conv44 = fpext float %55 to double
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 66
  %57 = load i32, i32* %fld_flag45, align 4
  %tobool46 = icmp ne i32 %57, 0
  %cond47 = select i1 %tobool46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %58 = load i32, i32* @intras, align 4
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 88
  %60 = load i32, i32* %num_ref_idx_l0_active, align 4
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 89
  %62 = load i32, i32* %num_ref_idx_l1_active, align 4
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 67
  %64 = load i32, i32* %rd_pass, align 4
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 122
  %66 = load i32, i32* %nal_reference_idc48, align 4
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.25, i32 0, i32 0), i32 %45, i32 0, i32 %47, i32 %49, double %conv40, double %conv42, double %conv44, i32 0, i32 0, i8* %cond47, i32 %58, i32 %60, i32 %62, i32 %64, i32 %66)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.37, %if.else.33
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.32
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @rc_update_pict(%struct.rc_quadratic*, i32) #1

declare void @updateRCModel(%struct.rc_quadratic*) #1

declare double @ComputeFrameMAD() #1

; Function Attrs: nounwind uwtable
define void @copy_params() #0 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 25
  %1 = load i32, i32* %frame_mbs_only_flag, align 4
  %2 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_mbs_only_flag1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 45
  store i32 %1, i32* %frame_mbs_only_flag1, align 4
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %3, i32 0, i32 28
  %4 = load i32, i32* %frame_cropping_flag, align 4
  %5 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_flag2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %5, i32 0, i32 46
  store i32 %4, i32* %frame_cropping_flag2, align 4
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 8
  %7 = load i32, i32* %chroma_format_idc, align 4
  %8 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %chroma_format_idc3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 44
  store i32 %7, i32* %chroma_format_idc3, align 4
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_flag4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 28
  %10 = load i32, i32* %frame_cropping_flag4, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %11, i32 0, i32 29
  %12 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %13 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_left_offset5 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 47
  store i32 %12, i32* %frame_cropping_rect_left_offset5, align 4
  %14 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %14, i32 0, i32 30
  %15 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %16 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_right_offset6 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 48
  store i32 %15, i32* %frame_cropping_rect_right_offset6, align 4
  %17 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %17, i32 0, i32 31
  %18 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %19 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_top_offset7 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 49
  store i32 %18, i32* %frame_cropping_rect_top_offset7, align 4
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 32
  %21 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %22 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_bottom_offset8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 50
  store i32 %21, i32* %frame_cropping_rect_bottom_offset8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_left_offset9 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 47
  store i32 0, i32* %frame_cropping_rect_left_offset9, align 4
  %24 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_right_offset10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %24, i32 0, i32 48
  store i32 0, i32* %frame_cropping_rect_right_offset10, align 4
  %25 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_top_offset11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 49
  store i32 0, i32* %frame_cropping_rect_top_offset11, align 4
  %26 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_bottom_offset12 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %26, i32 0, i32 50
  store i32 0, i32* %frame_cropping_rect_bottom_offset12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #1

declare void @get_mb_block_pos_mbaff(i32, i32*, i32*) #1

declare void @get_mb_block_pos_normal(i32, i32*, i32*) #1

declare void @getAffNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #1

declare void @getNonAffNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind uwtable
define internal void @find_distortion() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %diff_y = alloca i64, align 8
  %diff_u = alloca i64, align 8
  %diff_v = alloca i64, align 8
  %impix = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 15
  %1 = load i32, i32* %img_height, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 14
  %3 = load i32, i32* %img_width, align 4
  %mul = mul nsw i32 %1, %3
  store i32 %mul, i32* %impix, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 6
  %5 = load i32, i32* %structure, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %diff_y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 14
  %8 = load i32, i32* %img_width1, align 4
  %cmp2 = icmp slt i32 %6, %8
  br i1 %cmp2, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 15
  %11 = load i32, i32* %img_height4, align 4
  %cmp5 = icmp slt i32 %9, %11
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i16**, i16*** @imgY_org, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %14, i64 %idxprom7
  %15 = load i16*, i16** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx8, align 2
  %conv = zext i16 %16 to i32
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load i16**, i16*** @imgY_com, align 8
  %arrayidx11 = getelementptr inbounds i16*, i16** %19, i64 %idxprom10
  %20 = load i16*, i16** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %20, i64 %idxprom9
  %21 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %21 to i32
  %sub = sub nsw i32 %conv, %conv13
  %idxprom14 = sext i32 %sub to i64
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 62
  %23 = load i32*, i32** %quad, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %23, i64 %idxprom14
  %24 = load i32, i32* %arrayidx15, align 4
  %conv16 = sext i32 %24 to i64
  %25 = load i64, i64* %diff_y, align 8
  %add = add nsw i64 %25, %conv16
  store i64 %add, i64* %diff_y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %27, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 160
  %29 = load i32, i32* %yuv_format, align 4
  %cmp20 = icmp ne i32 %29, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %for.end.19
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.70, %if.then.22
  %30 = load i32, i32* %i, align 4
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 175
  %32 = load i32, i32* %img_width_cr, align 4
  %cmp24 = icmp slt i32 %30, %32
  br i1 %cmp24, label %for.body.26, label %for.end.72

for.body.26:                                      ; preds = %for.cond.23
  store i32 0, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.67, %for.body.26
  %33 = load i32, i32* %j, align 4
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 174
  %35 = load i32, i32* %img_height_cr, align 4
  %cmp28 = icmp slt i32 %33, %35
  br i1 %cmp28, label %for.body.30, label %for.end.69

for.body.30:                                      ; preds = %for.cond.27
  %36 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %37 to i64
  %38 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx33 = getelementptr inbounds i16**, i16*** %38, i64 0
  %39 = load i16**, i16*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16*, i16** %39, i64 %idxprom32
  %40 = load i16*, i16** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %40, i64 %idxprom31
  %41 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %41 to i32
  %42 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %42 to i64
  %43 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %43 to i64
  %44 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx39 = getelementptr inbounds i16**, i16*** %44, i64 0
  %45 = load i16**, i16*** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i16*, i16** %45, i64 %idxprom38
  %46 = load i16*, i16** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %46, i64 %idxprom37
  %47 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %47 to i32
  %sub43 = sub nsw i32 %conv36, %conv42
  %idxprom44 = sext i32 %sub43 to i64
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 62
  %49 = load i32*, i32** %quad45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %49, i64 %idxprom44
  %50 = load i32, i32* %arrayidx46, align 4
  %conv47 = sext i32 %50 to i64
  %51 = load i64, i64* %diff_u, align 8
  %add48 = add nsw i64 %51, %conv47
  store i64 %add48, i64* %diff_u, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %52 to i64
  %53 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %53 to i64
  %54 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx51 = getelementptr inbounds i16**, i16*** %54, i64 1
  %55 = load i16**, i16*** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i16*, i16** %55, i64 %idxprom50
  %56 = load i16*, i16** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %56, i64 %idxprom49
  %57 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %57 to i32
  %58 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %58 to i64
  %59 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %59 to i64
  %60 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx57 = getelementptr inbounds i16**, i16*** %60, i64 1
  %61 = load i16**, i16*** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i16*, i16** %61, i64 %idxprom56
  %62 = load i16*, i16** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %62, i64 %idxprom55
  %63 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %63 to i32
  %sub61 = sub nsw i32 %conv54, %conv60
  %idxprom62 = sext i32 %sub61 to i64
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 62
  %65 = load i32*, i32** %quad63, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %65, i64 %idxprom62
  %66 = load i32, i32* %arrayidx64, align 4
  %conv65 = sext i32 %66 to i64
  %67 = load i64, i64* %diff_v, align 8
  %add66 = add nsw i64 %67, %conv65
  store i64 %add66, i64* %diff_v, align 8
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.30
  %68 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %68, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond.27

for.end.69:                                       ; preds = %for.cond.27
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.69
  %69 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %69, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.23

for.end.72:                                       ; preds = %for.cond.23
  br label %if.end

if.end:                                           ; preds = %for.end.72, %for.end.19
  br label %if.end.163

if.else:                                          ; preds = %entry
  %70 = load i16**, i16*** @imgY_org_frm, align 8
  store i16** %70, i16*** @imgY_org, align 8
  %71 = load i16***, i16**** @imgUV_org_frm, align 8
  store i16*** %71, i16**** @imgUV_org, align 8
  store i64 0, i64* %diff_y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.102, %if.else
  %72 = load i32, i32* %i, align 4
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width74 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 14
  %74 = load i32, i32* %img_width74, align 4
  %cmp75 = icmp slt i32 %72, %74
  br i1 %cmp75, label %for.body.77, label %for.end.104

for.body.77:                                      ; preds = %for.cond.73
  store i32 0, i32* %j, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.99, %for.body.77
  %75 = load i32, i32* %j, align 4
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height79 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 15
  %77 = load i32, i32* %img_height79, align 4
  %cmp80 = icmp slt i32 %75, %77
  br i1 %cmp80, label %for.body.82, label %for.end.101

for.body.82:                                      ; preds = %for.cond.78
  %78 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %78 to i64
  %79 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %79 to i64
  %80 = load i16**, i16*** @imgY_org, align 8
  %arrayidx85 = getelementptr inbounds i16*, i16** %80, i64 %idxprom84
  %81 = load i16*, i16** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %81, i64 %idxprom83
  %82 = load i16, i16* %arrayidx86, align 2
  %conv87 = zext i16 %82 to i32
  %83 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %83 to i64
  %84 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %84 to i64
  %85 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %85, i32 0, i32 29
  %86 = load i16**, i16*** %imgY, align 8
  %arrayidx90 = getelementptr inbounds i16*, i16** %86, i64 %idxprom89
  %87 = load i16*, i16** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i16, i16* %87, i64 %idxprom88
  %88 = load i16, i16* %arrayidx91, align 2
  %conv92 = zext i16 %88 to i32
  %sub93 = sub nsw i32 %conv87, %conv92
  %idxprom94 = sext i32 %sub93 to i64
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad95 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 62
  %90 = load i32*, i32** %quad95, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %90, i64 %idxprom94
  %91 = load i32, i32* %arrayidx96, align 4
  %conv97 = sext i32 %91 to i64
  %92 = load i64, i64* %diff_y, align 8
  %add98 = add nsw i64 %92, %conv97
  store i64 %add98, i64* %diff_y, align 8
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.82
  %93 = load i32, i32* %j, align 4
  %inc100 = add nsw i32 %93, 1
  store i32 %inc100, i32* %j, align 4
  br label %for.cond.78

for.end.101:                                      ; preds = %for.cond.78
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %94 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %94, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.73

for.end.104:                                      ; preds = %for.cond.73
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 160
  %96 = load i32, i32* %yuv_format105, align 4
  %cmp106 = icmp ne i32 %96, 0
  br i1 %cmp106, label %if.then.108, label %if.end.162

if.then.108:                                      ; preds = %for.end.104
  store i32 0, i32* %i, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.159, %if.then.108
  %97 = load i32, i32* %i, align 4
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr110 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 175
  %99 = load i32, i32* %img_width_cr110, align 4
  %cmp111 = icmp slt i32 %97, %99
  br i1 %cmp111, label %for.body.113, label %for.end.161

for.body.113:                                     ; preds = %for.cond.109
  store i32 0, i32* %j, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.156, %for.body.113
  %100 = load i32, i32* %j, align 4
  %101 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr115 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %101, i32 0, i32 174
  %102 = load i32, i32* %img_height_cr115, align 4
  %cmp116 = icmp slt i32 %100, %102
  br i1 %cmp116, label %for.body.118, label %for.end.158

for.body.118:                                     ; preds = %for.cond.114
  %103 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %103 to i64
  %104 = load i32, i32* %j, align 4
  %idxprom120 = sext i32 %104 to i64
  %105 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx121 = getelementptr inbounds i16**, i16*** %105, i64 0
  %106 = load i16**, i16*** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i16*, i16** %106, i64 %idxprom120
  %107 = load i16*, i16** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i16, i16* %107, i64 %idxprom119
  %108 = load i16, i16* %arrayidx123, align 2
  %conv124 = zext i16 %108 to i32
  %109 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %109 to i64
  %110 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %110 to i64
  %111 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %111, i32 0, i32 33
  %112 = load i16***, i16**** %imgUV, align 8
  %arrayidx127 = getelementptr inbounds i16**, i16*** %112, i64 0
  %113 = load i16**, i16*** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i16*, i16** %113, i64 %idxprom126
  %114 = load i16*, i16** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i16, i16* %114, i64 %idxprom125
  %115 = load i16, i16* %arrayidx129, align 2
  %conv130 = zext i16 %115 to i32
  %sub131 = sub nsw i32 %conv124, %conv130
  %idxprom132 = sext i32 %sub131 to i64
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 62
  %117 = load i32*, i32** %quad133, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %117, i64 %idxprom132
  %118 = load i32, i32* %arrayidx134, align 4
  %conv135 = sext i32 %118 to i64
  %119 = load i64, i64* %diff_u, align 8
  %add136 = add nsw i64 %119, %conv135
  store i64 %add136, i64* %diff_u, align 8
  %120 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom138 = sext i32 %121 to i64
  %122 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx139 = getelementptr inbounds i16**, i16*** %122, i64 1
  %123 = load i16**, i16*** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i16*, i16** %123, i64 %idxprom138
  %124 = load i16*, i16** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i16, i16* %124, i64 %idxprom137
  %125 = load i16, i16* %arrayidx141, align 2
  %conv142 = zext i16 %125 to i32
  %126 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %126 to i64
  %127 = load i32, i32* %j, align 4
  %idxprom144 = sext i32 %127 to i64
  %128 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV145 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %128, i32 0, i32 33
  %129 = load i16***, i16**** %imgUV145, align 8
  %arrayidx146 = getelementptr inbounds i16**, i16*** %129, i64 1
  %130 = load i16**, i16*** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i16*, i16** %130, i64 %idxprom144
  %131 = load i16*, i16** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i16, i16* %131, i64 %idxprom143
  %132 = load i16, i16* %arrayidx148, align 2
  %conv149 = zext i16 %132 to i32
  %sub150 = sub nsw i32 %conv142, %conv149
  %idxprom151 = sext i32 %sub150 to i64
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad152 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 62
  %134 = load i32*, i32** %quad152, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %134, i64 %idxprom151
  %135 = load i32, i32* %arrayidx153, align 4
  %conv154 = sext i32 %135 to i64
  %136 = load i64, i64* %diff_v, align 8
  %add155 = add nsw i64 %136, %conv154
  store i64 %add155, i64* %diff_v, align 8
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.118
  %137 = load i32, i32* %j, align 4
  %inc157 = add nsw i32 %137, 1
  store i32 %inc157, i32* %j, align 4
  br label %for.cond.114

for.end.158:                                      ; preds = %for.cond.114
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.end.158
  %138 = load i32, i32* %i, align 4
  %inc160 = add nsw i32 %138, 1
  store i32 %inc160, i32* %i, align 4
  br label %for.cond.109

for.end.161:                                      ; preds = %for.cond.109
  br label %if.end.162

if.end.162:                                       ; preds = %for.end.161, %for.end.104
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end
  %139 = load i64, i64* %diff_y, align 8
  %conv164 = sitofp i64 %139 to float
  %140 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %140, i32 0, i32 0
  store float %conv164, float* %snr_y, align 4
  %141 = load i64, i64* %diff_u, align 8
  %conv165 = sitofp i64 %141 to float
  %142 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %142, i32 0, i32 1
  store float %conv165, float* %snr_u, align 4
  %143 = load i64, i64* %diff_v, align 8
  %conv166 = sitofp i64 %143 to float
  %144 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %144, i32 0, i32 2
  store float %conv166, float* %snr_v, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_buffer_top() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 65
  store i32 0, i32* %fld_type, align 4
  %1 = load i16**, i16*** @imgY_org_top, align 8
  store i16** %1, i16*** @imgY_org, align 8
  %2 = load i16***, i16**** @imgUV_org_top, align 8
  store i16*** %2, i16**** @imgUV_org, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_field() #0 {
entry:
  %i = alloca i32, align 4
  %prevP_no = alloca i32, align 4
  %nextP_no = alloca i32, align 4
  %0 = load i32*, i32** @last_P_no_fld, align 8
  store i32* %0, i32** @last_P_no, align 8
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 3
  store i32 0, i32* %current_mb_nr, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 4
  store i32 0, i32* %current_slice_nr, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 6
  store i32 0, i32* %bit_slice, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 5
  %5 = load i32, i32* %jumpd, align 4
  %mul = mul nsw i32 %5, 2
  store i32 %mul, i32* %jumpd, align 4
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 40
  %7 = load i32, i32* %successive_Bframe, align 4
  %mul1 = mul nsw i32 %7, 2
  store i32 %mul1, i32* %successive_Bframe, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 0
  %9 = load i32, i32* %number, align 4
  %div = sdiv i32 %9, 2
  store i32 %div, i32* %number, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 93
  %11 = load i32, i32* %buf_cycle, align 4
  %div2 = sdiv i32 %11, 2
  store i32 %div2, i32* %buf_cycle, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 35
  store i32 0, i32* %mb_x, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 36
  store i32 0, i32* %mb_y, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 42
  store i32 0, i32* %pix_c_y, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 40
  store i32 0, i32* %pix_y, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 38
  store i32 0, i32* %block_y, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 41
  store i32 0, i32* %pix_c_x, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 30
  store i32 0, i32* %block_c_x, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 39
  store i32 0, i32* %pix_x, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 37
  store i32 0, i32* %block_x, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 76
  %22 = load i32, i32* %b_frame_to_code, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.else.130, label %if.then

if.then:                                          ; preds = %entry
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 0
  %24 = load i32, i32* %number3, align 4
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 5
  %26 = load i32, i32* %jumpd4, align 4
  %add = add nsw i32 %26, 2
  %mul5 = mul nsw i32 %24, %add
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 65
  %28 = load i32, i32* %fld_type, align 4
  %add6 = add nsw i32 %mul5, %28
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 64
  store i32 %add6, i32* %tr, align 4
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 65
  %31 = load i32, i32* %fld_type7, align 4
  %tobool8 = icmp ne i32 %31, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_next_P_fld = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 72
  %33 = load i32, i32* %imgtr_next_P_fld, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_last_P_fld = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 73
  store i32 %33, i32* %imgtr_last_P_fld, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 64
  %36 = load i32, i32* %tr10, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_next_P_fld11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 72
  store i32 %36, i32* %imgtr_next_P_fld11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 107
  %39 = load i32, i32* %last_frame, align 4
  %tobool12 = icmp ne i32 %39, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 0
  %41 = load i32, i32* %number13, align 4
  %add14 = add nsw i32 %41, 1
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 2
  %43 = load i32, i32* %no_frames, align 4
  %cmp = icmp eq i32 %add14, %43
  br i1 %cmp, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %land.lhs.true
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 107
  %45 = load i32, i32* %last_frame16, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 64
  store i32 %45, i32* %tr17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true, %if.end
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 0
  %48 = load i32, i32* %number19, align 4
  %cmp20 = icmp ne i32 %48, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.26

land.lhs.true.21:                                 ; preds = %if.end.18
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe22 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 40
  %50 = load i32, i32* %successive_Bframe22, align 4
  %cmp23 = icmp ne i32 %50, 0
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %land.lhs.true.21
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 64
  %52 = load i32, i32* %tr25, align 4
  store i32 %52, i32* @nextP_tr_fld, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %land.lhs.true.21, %if.end.18
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 157
  %54 = load i32, i32* %RCEnable, align 4
  %tobool27 = icmp ne i32 %54, 0
  br i1 %tobool27, label %if.end.120, label %if.then.28

if.then.28:                                       ; preds = %if.end.26
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 5
  %56 = load i32, i32* %type, align 4
  %cmp29 = icmp eq i32 %56, 2
  br i1 %cmp29, label %if.then.30, label %if.else.52

if.then.30:                                       ; preds = %if.then.28
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 110
  %58 = load i32, i32* %qp2start, align 4
  %cmp31 = icmp sgt i32 %58, 0
  br i1 %cmp31, label %land.lhs.true.32, label %lor.lhs.false

land.lhs.true.32:                                 ; preds = %if.then.30
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 64
  %60 = load i32, i32* %tr33, align 4
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 110
  %62 = load i32, i32* %qp2start34, align 4
  %cmp35 = icmp sge i32 %60, %62
  br i1 %cmp35, label %land.lhs.true.36, label %lor.lhs.false

land.lhs.true.36:                                 ; preds = %land.lhs.true.32
  %63 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %63, i32 0, i32 54
  %64 = load i32, i32* %sp2_frame_indicator, align 4
  %cmp37 = icmp eq i32 %64, 0
  br i1 %cmp37, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.36, %land.lhs.true.32, %if.then.30
  %65 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start38 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %65, i32 0, i32 110
  %66 = load i32, i32* %qp2start38, align 4
  %cmp39 = icmp sgt i32 %66, 0
  br i1 %cmp39, label %land.lhs.true.40, label %if.else

land.lhs.true.40:                                 ; preds = %lor.lhs.false
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 64
  %68 = load i32, i32* %tr41, align 4
  %69 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start42 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %69, i32 0, i32 110
  %70 = load i32, i32* %qp2start42, align 4
  %mul43 = mul nsw i32 2, %70
  %rem = srem i32 %68, %mul43
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 110
  %72 = load i32, i32* %qp2start44, align 4
  %cmp45 = icmp sge i32 %rem, %72
  br i1 %cmp45, label %land.lhs.true.46, label %if.else

land.lhs.true.46:                                 ; preds = %land.lhs.true.40
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 54
  %74 = load i32, i32* %sp2_frame_indicator47, align 4
  %cmp48 = icmp eq i32 %74, 1
  br i1 %cmp48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %land.lhs.true.46, %land.lhs.true.36
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp02 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 111
  %76 = load i32, i32* %qp02, align 4
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 9
  store i32 %76, i32* %qp, align 4
  br label %if.end.51

if.else:                                          ; preds = %land.lhs.true.46, %land.lhs.true.40, %lor.lhs.false
  %78 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %78, i32 0, i32 3
  %79 = load i32, i32* %qp0, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp50 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 9
  store i32 %79, i32* %qp50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.49
  br label %if.end.119

if.else.52:                                       ; preds = %if.then.28
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 110
  %82 = load i32, i32* %qp2start53, align 4
  %cmp54 = icmp sgt i32 %82, 0
  br i1 %cmp54, label %land.lhs.true.55, label %lor.lhs.false.62

land.lhs.true.55:                                 ; preds = %if.else.52
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 64
  %84 = load i32, i32* %tr56, align 4
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start57 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 110
  %86 = load i32, i32* %qp2start57, align 4
  %cmp58 = icmp sge i32 %84, %86
  br i1 %cmp58, label %land.lhs.true.59, label %lor.lhs.false.62

land.lhs.true.59:                                 ; preds = %land.lhs.true.55
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator60 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 54
  %88 = load i32, i32* %sp2_frame_indicator60, align 4
  %cmp61 = icmp eq i32 %88, 0
  br i1 %cmp61, label %if.then.75, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %land.lhs.true.59, %land.lhs.true.55, %if.else.52
  %89 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start63 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %89, i32 0, i32 110
  %90 = load i32, i32* %qp2start63, align 4
  %cmp64 = icmp sgt i32 %90, 0
  br i1 %cmp64, label %land.lhs.true.65, label %if.else.79

land.lhs.true.65:                                 ; preds = %lor.lhs.false.62
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 64
  %92 = load i32, i32* %tr66, align 4
  %93 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start67 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %93, i32 0, i32 110
  %94 = load i32, i32* %qp2start67, align 4
  %mul68 = mul nsw i32 2, %94
  %rem69 = srem i32 %92, %mul68
  %95 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start70 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %95, i32 0, i32 110
  %96 = load i32, i32* %qp2start70, align 4
  %cmp71 = icmp sge i32 %rem69, %96
  br i1 %cmp71, label %land.lhs.true.72, label %if.else.79

land.lhs.true.72:                                 ; preds = %land.lhs.true.65
  %97 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator73 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %97, i32 0, i32 54
  %98 = load i32, i32* %sp2_frame_indicator73, align 4
  %cmp74 = icmp eq i32 %98, 1
  br i1 %cmp74, label %if.then.75, label %if.else.79

if.then.75:                                       ; preds = %land.lhs.true.72, %land.lhs.true.59
  %99 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %99, i32 0, i32 108
  %100 = load i32, i32* %qpN2, align 4
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 122
  %102 = load i32, i32* %nal_reference_idc, align 4
  %tobool76 = icmp ne i32 %102, 0
  br i1 %tobool76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.75
  br label %cond.end

cond.false:                                       ; preds = %if.then.75
  %103 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %DispPQPOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %103, i32 0, i32 193
  %104 = load i32, i32* %DispPQPOffset, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %104, %cond.false ]
  %add77 = add nsw i32 %100, %cond
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp78 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 9
  store i32 %add77, i32* %qp78, align 4
  br label %if.end.89

if.else.79:                                       ; preds = %land.lhs.true.72, %land.lhs.true.65, %lor.lhs.false.62
  %106 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %106, i32 0, i32 4
  %107 = load i32, i32* %qpN, align 4
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 122
  %109 = load i32, i32* %nal_reference_idc80, align 4
  %tobool81 = icmp ne i32 %109, 0
  br i1 %tobool81, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %if.else.79
  br label %cond.end.85

cond.false.83:                                    ; preds = %if.else.79
  %110 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %DispPQPOffset84 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %110, i32 0, i32 193
  %111 = load i32, i32* %DispPQPOffset84, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.82
  %cond86 = phi i32 [ 0, %cond.true.82 ], [ %111, %cond.false.83 ]
  %add87 = add nsw i32 %107, %cond86
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 9
  store i32 %add87, i32* %qp88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %cond.end.85, %cond.end
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type90 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 5
  %114 = load i32, i32* %type90, align 4
  %cmp91 = icmp eq i32 %114, 3
  br i1 %cmp91, label %if.then.92, label %if.end.118

if.then.92:                                       ; preds = %if.end.89
  %115 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start93 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %115, i32 0, i32 110
  %116 = load i32, i32* %qp2start93, align 4
  %cmp94 = icmp sgt i32 %116, 0
  br i1 %cmp94, label %land.lhs.true.95, label %if.else.112

land.lhs.true.95:                                 ; preds = %if.then.92
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 64
  %118 = load i32, i32* %tr96, align 4
  %119 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start97 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %119, i32 0, i32 110
  %120 = load i32, i32* %qp2start97, align 4
  %mul98 = mul nsw i32 2, %120
  %rem99 = srem i32 %118, %mul98
  %121 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start100 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %121, i32 0, i32 110
  %122 = load i32, i32* %qp2start100, align 4
  %cmp101 = icmp sge i32 %rem99, %122
  br i1 %cmp101, label %if.then.102, label %if.else.112

if.then.102:                                      ; preds = %land.lhs.true.95
  %123 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN2103 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %123, i32 0, i32 108
  %124 = load i32, i32* %qpN2103, align 4
  %125 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN104 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %125, i32 0, i32 4
  %126 = load i32, i32* %qpN104, align 4
  %127 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %127, i32 0, i32 51
  %128 = load i32, i32* %qpsp, align 4
  %sub = sub nsw i32 %126, %128
  %sub105 = sub nsw i32 %124, %sub
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 9
  store i32 %sub105, i32* %qp106, align 4
  %130 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN2107 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %130, i32 0, i32 108
  %131 = load i32, i32* %qpN2107, align 4
  %132 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN108 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %132, i32 0, i32 4
  %133 = load i32, i32* %qpN108, align 4
  %134 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp_pred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %134, i32 0, i32 52
  %135 = load i32, i32* %qpsp_pred, align 4
  %sub109 = sub nsw i32 %133, %135
  %sub110 = sub nsw i32 %131, %sub109
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qpsp111 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 10
  store i32 %sub110, i32* %qpsp111, align 4
  br label %if.end.117

if.else.112:                                      ; preds = %land.lhs.true.95, %if.then.92
  %137 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp113 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %137, i32 0, i32 51
  %138 = load i32, i32* %qpsp113, align 4
  %139 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %139, i32 0, i32 9
  store i32 %138, i32* %qp114, align 4
  %140 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp_pred115 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %140, i32 0, i32 52
  %141 = load i32, i32* %qpsp_pred115, align 4
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qpsp116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 10
  store i32 %141, i32* %qpsp116, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.112, %if.then.102
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.89
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.51
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.26
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 28
  %144 = load i32, i32* %mb_y_upd, align 4
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_intra = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 29
  store i32 %144, i32* %mb_y_intra, align 4
  %146 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %146, i32 0, i32 17
  %147 = load i32, i32* %intra_upd, align 4
  %cmp121 = icmp sgt i32 %147, 0
  br i1 %cmp121, label %if.then.122, label %if.end.129

if.then.122:                                      ; preds = %if.end.120
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number123 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 0
  %149 = load i32, i32* %number123, align 4
  %150 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd124 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %150, i32 0, i32 17
  %151 = load i32, i32* %intra_upd124, align 4
  %div125 = sdiv i32 %149, %151
  %152 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %152, i32 0, i32 13
  %153 = load i32, i32* %width, align 4
  %div126 = sdiv i32 %153, 16
  %rem127 = srem i32 %div125, %div126
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd128 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 28
  store i32 %rem127, i32* %mb_y_upd128, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.122, %if.end.120
  br label %if.end.355

if.else.130:                                      ; preds = %entry
  %155 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd131 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %155, i32 0, i32 5
  %156 = load i32, i32* %jumpd131, align 4
  %add132 = add nsw i32 %156, 2
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 75
  store i32 %add132, i32* %p_interval, align 4
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 0
  %159 = load i32, i32* %number133, align 4
  %sub134 = sub nsw i32 %159, 1
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval135 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 75
  %161 = load i32, i32* %p_interval135, align 4
  %mul136 = mul nsw i32 %sub134, %161
  %162 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %162, i32 0, i32 65
  %163 = load i32, i32* %fld_type137, align 4
  %add138 = add nsw i32 %mul136, %163
  store i32 %add138, i32* %prevP_no, align 4
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 0
  %165 = load i32, i32* %number139, align 4
  %166 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval140 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %166, i32 0, i32 75
  %167 = load i32, i32* %p_interval140, align 4
  %mul141 = mul nsw i32 %165, %167
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type142 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 65
  %169 = load i32, i32* %fld_type142, align 4
  %add143 = add nsw i32 %mul141, %169
  store i32 %add143, i32* %nextP_no, align 4
  %170 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %170, i32 0, i32 65
  %171 = load i32, i32* %fld_type144, align 4
  %tobool145 = icmp ne i32 %171, 0
  br i1 %tobool145, label %if.else.169, label %if.then.146

if.then.146:                                      ; preds = %if.else.130
  %172 = load i32, i32* %prevP_no, align 4
  %add147 = add nsw i32 %172, 1
  %173 = load i32*, i32** @last_P_no, align 8
  %arrayidx = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %add147, i32* %arrayidx, align 4
  %174 = load i32, i32* %prevP_no, align 4
  %175 = load i32*, i32** @last_P_no, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %175, i64 1
  store i32 %174, i32* %arrayidx148, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.146
  %176 = load i32, i32* %i, align 4
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle149 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 93
  %178 = load i32, i32* %buf_cycle149, align 4
  %cmp150 = icmp sle i32 %176, %178
  br i1 %cmp150, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %179 = load i32, i32* %i, align 4
  %mul151 = mul nsw i32 2, %179
  %sub152 = sub nsw i32 %mul151, 2
  %idxprom = sext i32 %sub152 to i64
  %180 = load i32*, i32** @last_P_no, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %180, i64 %idxprom
  %181 = load i32, i32* %arrayidx153, align 4
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval154 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 75
  %183 = load i32, i32* %p_interval154, align 4
  %sub155 = sub nsw i32 %181, %183
  %184 = load i32, i32* %i, align 4
  %mul156 = mul nsw i32 2, %184
  %idxprom157 = sext i32 %mul156 to i64
  %185 = load i32*, i32** @last_P_no, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %185, i64 %idxprom157
  store i32 %sub155, i32* %arrayidx158, align 4
  %186 = load i32, i32* %i, align 4
  %mul159 = mul nsw i32 2, %186
  %sub160 = sub nsw i32 %mul159, 1
  %idxprom161 = sext i32 %sub160 to i64
  %187 = load i32*, i32** @last_P_no, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %187, i64 %idxprom161
  %188 = load i32, i32* %arrayidx162, align 4
  %189 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval163 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %189, i32 0, i32 75
  %190 = load i32, i32* %p_interval163, align 4
  %sub164 = sub nsw i32 %188, %190
  %191 = load i32, i32* %i, align 4
  %mul165 = mul nsw i32 2, %191
  %add166 = add nsw i32 %mul165, 1
  %idxprom167 = sext i32 %add166 to i64
  %192 = load i32*, i32** @last_P_no, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %192, i64 %idxprom167
  store i32 %sub164, i32* %arrayidx168, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %193 = load i32, i32* %i, align 4
  %inc = add nsw i32 %193, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.199

if.else.169:                                      ; preds = %if.else.130
  %194 = load i32, i32* %nextP_no, align 4
  %sub170 = sub nsw i32 %194, 1
  %195 = load i32*, i32** @last_P_no, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 %sub170, i32* %arrayidx171, align 4
  %196 = load i32, i32* %prevP_no, align 4
  %197 = load i32*, i32** @last_P_no, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %196, i32* %arrayidx172, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.196, %if.else.169
  %198 = load i32, i32* %i, align 4
  %199 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %199, i32 0, i32 93
  %200 = load i32, i32* %buf_cycle174, align 4
  %cmp175 = icmp sle i32 %198, %200
  br i1 %cmp175, label %for.body.176, label %for.end.198

for.body.176:                                     ; preds = %for.cond.173
  %201 = load i32, i32* %i, align 4
  %mul177 = mul nsw i32 2, %201
  %sub178 = sub nsw i32 %mul177, 2
  %idxprom179 = sext i32 %sub178 to i64
  %202 = load i32*, i32** @last_P_no, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %202, i64 %idxprom179
  %203 = load i32, i32* %arrayidx180, align 4
  %204 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %204, i32 0, i32 75
  %205 = load i32, i32* %p_interval181, align 4
  %sub182 = sub nsw i32 %203, %205
  %206 = load i32, i32* %i, align 4
  %mul183 = mul nsw i32 2, %206
  %idxprom184 = sext i32 %mul183 to i64
  %207 = load i32*, i32** @last_P_no, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %207, i64 %idxprom184
  store i32 %sub182, i32* %arrayidx185, align 4
  %208 = load i32, i32* %i, align 4
  %mul186 = mul nsw i32 2, %208
  %sub187 = sub nsw i32 %mul186, 1
  %idxprom188 = sext i32 %sub187 to i64
  %209 = load i32*, i32** @last_P_no, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %209, i64 %idxprom188
  %210 = load i32, i32* %arrayidx189, align 4
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval190 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 75
  %212 = load i32, i32* %p_interval190, align 4
  %sub191 = sub nsw i32 %210, %212
  %213 = load i32, i32* %i, align 4
  %mul192 = mul nsw i32 2, %213
  %add193 = add nsw i32 %mul192, 1
  %idxprom194 = sext i32 %add193 to i64
  %214 = load i32*, i32** @last_P_no, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %214, i64 %idxprom194
  store i32 %sub191, i32* %arrayidx195, align 4
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.176
  %215 = load i32, i32* %i, align 4
  %inc197 = add nsw i32 %215, 1
  store i32 %inc197, i32* %i, align 4
  br label %for.cond.173

for.end.198:                                      ; preds = %for.cond.173
  br label %if.end.199

if.end.199:                                       ; preds = %for.end.198, %for.end
  %216 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame200 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %216, i32 0, i32 107
  %217 = load i32, i32* %last_frame200, align 4
  %tobool201 = icmp ne i32 %217, 0
  br i1 %tobool201, label %land.lhs.true.202, label %if.end.211

land.lhs.true.202:                                ; preds = %if.end.199
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 0
  %219 = load i32, i32* %number203, align 4
  %add204 = add nsw i32 %219, 1
  %220 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames205 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %220, i32 0, i32 2
  %221 = load i32, i32* %no_frames205, align 4
  %cmp206 = icmp eq i32 %add204, %221
  br i1 %cmp206, label %if.then.207, label %if.end.211

if.then.207:                                      ; preds = %land.lhs.true.202
  %222 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame208 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %222, i32 0, i32 107
  %223 = load i32, i32* %last_frame208, align 4
  store i32 %223, i32* %nextP_no, align 4
  %224 = load i32, i32* %nextP_no, align 4
  %225 = load i32, i32* %prevP_no, align 4
  %sub209 = sub nsw i32 %224, %225
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval210 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 75
  store i32 %sub209, i32* %p_interval210, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.207, %land.lhs.true.202, %if.end.199
  %227 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd212 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %227, i32 0, i32 5
  %228 = load i32, i32* %jumpd212, align 4
  %add213 = add nsw i32 %228, 1
  %conv = sitofp i32 %add213 to double
  %229 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe214 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %229, i32 0, i32 40
  %230 = load i32, i32* %successive_Bframe214, align 4
  %conv215 = sitofp i32 %230 to double
  %add216 = fadd double %conv215, 1.000000e+00
  %div217 = fdiv double %conv, %add216
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 74
  store double %div217, double* %b_interval, align 8
  %232 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %232, i32 0, i32 69
  %233 = load i32, i32* %HierarchicalCoding, align 4
  %cmp218 = icmp eq i32 %233, 3
  br i1 %cmp218, label %if.then.220, label %if.end.222

if.then.220:                                      ; preds = %if.end.211
  %234 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval221 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %234, i32 0, i32 74
  store double 1.000000e+00, double* %b_interval221, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.220, %if.end.211
  %235 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding223 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %235, i32 0, i32 69
  %236 = load i32, i32* %HierarchicalCoding223, align 4
  %tobool224 = icmp ne i32 %236, 0
  br i1 %tobool224, label %if.then.225, label %if.else.238

if.then.225:                                      ; preds = %if.end.222
  %237 = load i32, i32* %prevP_no, align 4
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval226 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 74
  %239 = load double, double* %b_interval226, align 8
  %add227 = fadd double %239, 1.000000e+00
  %240 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code228 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %240, i32 0, i32 76
  %241 = load i32, i32* %b_frame_to_code228, align 4
  %sub229 = sub nsw i32 %241, 1
  %idxprom230 = sext i32 %sub229 to i64
  %242 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx231 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %242, i64 %idxprom230
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx231, i32 0, i32 1
  %243 = load i32, i32* %display_no, align 4
  %add232 = add nsw i32 1, %243
  %conv233 = sitofp i32 %add232 to double
  %mul234 = fmul double %add227, %conv233
  %conv235 = fptosi double %mul234 to i32
  %add236 = add nsw i32 %237, %conv235
  %244 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr237 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %244, i32 0, i32 64
  store i32 %add236, i32* %tr237, align 4
  br label %if.end.247

if.else.238:                                      ; preds = %if.end.222
  %245 = load i32, i32* %prevP_no, align 4
  %246 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval239 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %246, i32 0, i32 74
  %247 = load double, double* %b_interval239, align 8
  %add240 = fadd double %247, 1.000000e+00
  %248 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code241 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %248, i32 0, i32 76
  %249 = load i32, i32* %b_frame_to_code241, align 4
  %conv242 = sitofp i32 %249 to double
  %mul243 = fmul double %add240, %conv242
  %conv244 = fptosi double %mul243 to i32
  %add245 = add nsw i32 %245, %conv244
  %250 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr246 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %250, i32 0, i32 64
  store i32 %add245, i32* %tr246, align 4
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.238, %if.then.225
  %251 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr248 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %251, i32 0, i32 64
  %252 = load i32, i32* %tr248, align 4
  %253 = load i32, i32* %nextP_no, align 4
  %cmp249 = icmp sge i32 %252, %253
  br i1 %cmp249, label %if.then.251, label %if.end.254

if.then.251:                                      ; preds = %if.end.247
  %254 = load i32, i32* %nextP_no, align 4
  %sub252 = sub nsw i32 %254, 1
  %255 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr253 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %255, i32 0, i32 64
  store i32 %sub252, i32* %tr253, align 4
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.251, %if.end.247
  %256 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable255 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %256, i32 0, i32 157
  %257 = load i32, i32* %RCEnable255, align 4
  %tobool256 = icmp ne i32 %257, 0
  br i1 %tobool256, label %if.else.340, label %land.lhs.true.257

land.lhs.true.257:                                ; preds = %if.end.254
  %258 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding258 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %258, i32 0, i32 69
  %259 = load i32, i32* %HierarchicalCoding258, align 4
  %cmp259 = icmp eq i32 %259, 0
  br i1 %cmp259, label %if.then.261, label %if.else.340

if.then.261:                                      ; preds = %land.lhs.true.257
  %260 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start262 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %260, i32 0, i32 110
  %261 = load i32, i32* %qp2start262, align 4
  %cmp263 = icmp sgt i32 %261, 0
  br i1 %cmp263, label %land.lhs.true.265, label %lor.lhs.false.274

land.lhs.true.265:                                ; preds = %if.then.261
  %262 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr266 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %262, i32 0, i32 64
  %263 = load i32, i32* %tr266, align 4
  %264 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start267 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %264, i32 0, i32 110
  %265 = load i32, i32* %qp2start267, align 4
  %cmp268 = icmp sge i32 %263, %265
  br i1 %cmp268, label %land.lhs.true.270, label %lor.lhs.false.274

land.lhs.true.270:                                ; preds = %land.lhs.true.265
  %266 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator271 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %266, i32 0, i32 54
  %267 = load i32, i32* %sp2_frame_indicator271, align 4
  %cmp272 = icmp eq i32 %267, 0
  br i1 %cmp272, label %if.then.290, label %lor.lhs.false.274

lor.lhs.false.274:                                ; preds = %land.lhs.true.270, %land.lhs.true.265, %if.then.261
  %268 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start275 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %268, i32 0, i32 110
  %269 = load i32, i32* %qp2start275, align 4
  %cmp276 = icmp sgt i32 %269, 0
  br i1 %cmp276, label %land.lhs.true.278, label %if.else.292

land.lhs.true.278:                                ; preds = %lor.lhs.false.274
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr279 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 64
  %271 = load i32, i32* %tr279, align 4
  %272 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start280 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %272, i32 0, i32 110
  %273 = load i32, i32* %qp2start280, align 4
  %mul281 = mul nsw i32 2, %273
  %rem282 = srem i32 %271, %mul281
  %274 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start283 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %274, i32 0, i32 110
  %275 = load i32, i32* %qp2start283, align 4
  %cmp284 = icmp sge i32 %rem282, %275
  br i1 %cmp284, label %land.lhs.true.286, label %if.else.292

land.lhs.true.286:                                ; preds = %land.lhs.true.278
  %276 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator287 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %276, i32 0, i32 54
  %277 = load i32, i32* %sp2_frame_indicator287, align 4
  %cmp288 = icmp eq i32 %277, 1
  br i1 %cmp288, label %if.then.290, label %if.else.292

if.then.290:                                      ; preds = %land.lhs.true.286, %land.lhs.true.270
  %278 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %278, i32 0, i32 109
  %279 = load i32, i32* %qpB2, align 4
  %280 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %280, i32 0, i32 9
  store i32 %279, i32* %qp291, align 4
  br label %if.end.294

if.else.292:                                      ; preds = %land.lhs.true.286, %land.lhs.true.278, %lor.lhs.false.274
  %281 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %281, i32 0, i32 42
  %282 = load i32, i32* %qpB, align 4
  %283 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp293 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %283, i32 0, i32 9
  store i32 %282, i32* %qp293, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.292, %if.then.290
  %284 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc295 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %284, i32 0, i32 122
  %285 = load i32, i32* %nal_reference_idc295, align 4
  %tobool296 = icmp ne i32 %285, 0
  br i1 %tobool296, label %if.then.297, label %if.end.339

if.then.297:                                      ; preds = %if.end.294
  %286 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start298 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %286, i32 0, i32 110
  %287 = load i32, i32* %qp2start298, align 4
  %cmp299 = icmp sgt i32 %287, 0
  br i1 %cmp299, label %land.lhs.true.301, label %lor.lhs.false.310

land.lhs.true.301:                                ; preds = %if.then.297
  %288 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr302 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %288, i32 0, i32 64
  %289 = load i32, i32* %tr302, align 4
  %290 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start303 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %290, i32 0, i32 110
  %291 = load i32, i32* %qp2start303, align 4
  %cmp304 = icmp sge i32 %289, %291
  br i1 %cmp304, label %land.lhs.true.306, label %lor.lhs.false.310

land.lhs.true.306:                                ; preds = %land.lhs.true.301
  %292 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator307 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %292, i32 0, i32 54
  %293 = load i32, i32* %sp2_frame_indicator307, align 4
  %cmp308 = icmp eq i32 %293, 0
  br i1 %cmp308, label %if.then.326, label %lor.lhs.false.310

lor.lhs.false.310:                                ; preds = %land.lhs.true.306, %land.lhs.true.301, %if.then.297
  %294 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start311 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %294, i32 0, i32 110
  %295 = load i32, i32* %qp2start311, align 4
  %cmp312 = icmp sgt i32 %295, 0
  br i1 %cmp312, label %land.lhs.true.314, label %if.else.331

land.lhs.true.314:                                ; preds = %lor.lhs.false.310
  %296 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr315 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %296, i32 0, i32 64
  %297 = load i32, i32* %tr315, align 4
  %298 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start316 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %298, i32 0, i32 110
  %299 = load i32, i32* %qp2start316, align 4
  %mul317 = mul nsw i32 2, %299
  %rem318 = srem i32 %297, %mul317
  %300 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start319 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %300, i32 0, i32 110
  %301 = load i32, i32* %qp2start319, align 4
  %cmp320 = icmp sge i32 %rem318, %301
  br i1 %cmp320, label %land.lhs.true.322, label %if.else.331

land.lhs.true.322:                                ; preds = %land.lhs.true.314
  %302 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator323 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %302, i32 0, i32 54
  %303 = load i32, i32* %sp2_frame_indicator323, align 4
  %cmp324 = icmp eq i32 %303, 1
  br i1 %cmp324, label %if.then.326, label %if.else.331

if.then.326:                                      ; preds = %land.lhs.true.322, %land.lhs.true.306
  %304 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %304, i32 0, i32 144
  %305 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %sub327 = sub nsw i32 0, %305
  %306 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2328 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %306, i32 0, i32 109
  %307 = load i32, i32* %qpB2328, align 4
  %308 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRS2Offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %308, i32 0, i32 112
  %309 = load i32, i32* %qpBRS2Offset, align 4
  %add329 = add nsw i32 %307, %309
  %call = call i32 @iClip3(i32 %sub327, i32 51, i32 %add329)
  %310 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp330 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %310, i32 0, i32 9
  store i32 %call, i32* %qp330, align 4
  br label %if.end.338

if.else.331:                                      ; preds = %land.lhs.true.322, %land.lhs.true.314, %lor.lhs.false.310
  %311 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale332 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %311, i32 0, i32 144
  %312 = load i32, i32* %bitdepth_luma_qp_scale332, align 4
  %sub333 = sub nsw i32 0, %312
  %313 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB334 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %313, i32 0, i32 42
  %314 = load i32, i32* %qpB334, align 4
  %315 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %315, i32 0, i32 43
  %316 = load i32, i32* %qpBRSOffset, align 4
  %add335 = add nsw i32 %314, %316
  %call336 = call i32 @iClip3(i32 %sub333, i32 51, i32 %add335)
  %317 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp337 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %317, i32 0, i32 9
  store i32 %call336, i32* %qp337, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.else.331, %if.then.326
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %if.end.294
  br label %if.end.354

if.else.340:                                      ; preds = %land.lhs.true.257, %if.end.254
  %318 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable341 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %318, i32 0, i32 157
  %319 = load i32, i32* %RCEnable341, align 4
  %tobool342 = icmp ne i32 %319, 0
  br i1 %tobool342, label %if.end.353, label %land.lhs.true.343

land.lhs.true.343:                                ; preds = %if.else.340
  %320 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding344 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %320, i32 0, i32 69
  %321 = load i32, i32* %HierarchicalCoding344, align 4
  %cmp345 = icmp ne i32 %321, 0
  br i1 %cmp345, label %if.then.347, label %if.end.353

if.then.347:                                      ; preds = %land.lhs.true.343
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code348 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 76
  %323 = load i32, i32* %b_frame_to_code348, align 4
  %sub349 = sub nsw i32 %323, 1
  %idxprom350 = sext i32 %sub349 to i64
  %324 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx351 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %324, i64 %idxprom350
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx351, i32 0, i32 3
  %325 = load i32, i32* %slice_qp, align 4
  %326 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp352 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %326, i32 0, i32 9
  store i32 %325, i32* %qp352, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.347, %land.lhs.true.343, %if.else.340
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %if.end.339
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %if.end.129
  %327 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp356 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %327, i32 0, i32 9
  %328 = load i32, i32* %qp356, align 4
  %329 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale357 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %329, i32 0, i32 144
  %330 = load i32, i32* %bitdepth_luma_qp_scale357, align 4
  %add358 = add nsw i32 %328, %330
  %331 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp_scaled = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %331, i32 0, i32 11
  store i32 %add358, i32* %qp_scaled, align 4
  %332 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd359 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %332, i32 0, i32 5
  %333 = load i32, i32* %jumpd359, align 4
  %div360 = sdiv i32 %333, 2
  store i32 %div360, i32* %jumpd359, align 4
  %334 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe361 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %334, i32 0, i32 40
  %335 = load i32, i32* %successive_Bframe361, align 4
  %div362 = sdiv i32 %335, 2
  store i32 %div362, i32* %successive_Bframe361, align 4
  %336 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle363 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %336, i32 0, i32 93
  %337 = load i32, i32* %buf_cycle363, align 4
  %mul364 = mul nsw i32 %337, 2
  store i32 %mul364, i32* %buf_cycle363, align 4
  %338 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number365 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %338, i32 0, i32 0
  %339 = load i32, i32* %number365, align 4
  %mul366 = mul nsw i32 2, %339
  %340 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type367 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %340, i32 0, i32 65
  %341 = load i32, i32* %fld_type367, align 4
  %add368 = add nsw i32 %mul366, %341
  %342 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number369 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %342, i32 0, i32 0
  store i32 %add368, i32* %number369, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_buffer_bot() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 65
  store i32 1, i32* %fld_type, align 4
  %1 = load i16**, i16*** @imgY_org_bot, align 8
  store i16** %1, i16*** @imgY_org, align 8
  %2 = load i16***, i16**** @imgUV_org_bot, align 8
  store i16*** %2, i16**** @imgUV_org, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @distortion_fld(float* %dis_fld_y, float* %dis_fld_u, float* %dis_fld_v) #0 {
entry:
  %dis_fld_y.addr = alloca float*, align 8
  %dis_fld_u.addr = alloca float*, align 8
  %dis_fld_v.addr = alloca float*, align 8
  store float* %dis_fld_y, float** %dis_fld_y.addr, align 8
  store float* %dis_fld_u, float** %dis_fld_u.addr, align 8
  store float* %dis_fld_v, float** %dis_fld_v.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %number, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 93
  %3 = load i32, i32* %buf_cycle, align 4
  %div1 = sdiv i32 %3, 2
  store i32 %div1, i32* %buf_cycle, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 15
  %5 = load i32, i32* %img_height, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 167
  %7 = load i32, i32* %auto_crop_bottom, align 4
  %add = add nsw i32 %5, %7
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 17
  store i32 %add, i32* %height, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 21
  %10 = load i32, i32* %height_cr_frame, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 20
  store i32 %10, i32* %height_cr, align 4
  call void @combine_field()
  %12 = load i16**, i16*** @imgY_org_frm, align 8
  store i16** %12, i16*** @imgY_org, align 8
  %13 = load i16***, i16**** @imgUV_org_frm, align 8
  store i16*** %13, i16**** @imgUV_org, align 8
  call void @find_distortion()
  %14 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %14, i32 0, i32 0
  %15 = load float, float* %snr_y, align 4
  %16 = load float*, float** %dis_fld_y.addr, align 8
  store float %15, float* %16, align 4
  %17 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %17, i32 0, i32 1
  %18 = load float, float* %snr_u, align 4
  %19 = load float*, float** %dis_fld_u.addr, align 8
  store float %18, float* %19, align 4
  %20 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %20, i32 0, i32 2
  %21 = load float, float* %snr_v, align 4
  %22 = load float*, float** %dis_fld_v.addr, align 8
  store float %21, float* %22, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnifiedOneForthPix(%struct.storable_picture* %s) #0 {
entry:
  %s.addr = alloca %struct.storable_picture*, align 8
  %ypadded_size = alloca i32, align 4
  %xpadded_size = alloca i32, align 4
  store %struct.storable_picture* %s, %struct.storable_picture** %s.addr, align 8
  %0 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 19
  %1 = load i32, i32* %size_y, align 4
  %add = add nsw i32 %1, 40
  store i32 %add, i32* %ypadded_size, align 4
  %2 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 18
  %3 = load i32, i32* %size_x, align 4
  %add1 = add nsw i32 %3, 40
  store i32 %add1, i32* %xpadded_size, align 4
  %4 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 30
  %5 = load i16****, i16***** %imgY_sub, align 8
  %tobool = icmp ne i16**** %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.33

if.end:                                           ; preds = %entry
  %6 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 30
  %7 = load i32, i32* %ypadded_size, align 4
  %8 = load i32, i32* %xpadded_size, align 4
  %call = call i32 @get_mem4Dpel(i16***** %imgY_sub2, i32 4, i32 4, i32 %7, i32 %8)
  %9 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 30
  %10 = load i16****, i16***** %imgY_sub3, align 8
  %cmp = icmp eq i16**** null, %10
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMCBuffer = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 197
  %12 = load i32, i32* %ChromaMCBuffer, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.27

if.then.7:                                        ; preds = %if.end.5
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 160
  %14 = load i32, i32* %yuv_format, align 4
  %cmp8 = icmp ne i32 %14, 0
  br i1 %cmp8, label %if.then.9, label %if.end.26

if.then.9:                                        ; preds = %if.then.7
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 160
  %16 = load i32, i32* %yuv_format10, align 4
  %cmp11 = icmp eq i32 %16, 1
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %17 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %17, i32 0, i32 32
  %18 = load i32, i32* %ypadded_size, align 4
  %div = sdiv i32 %18, 2
  %19 = load i32, i32* %xpadded_size, align 4
  %div13 = sdiv i32 %19, 2
  %call14 = call i32 @get_mem5Dpel(i16****** %imgUV_sub, i32 2, i32 8, i32 8, i32 %div, i32 %div13)
  br label %if.end.25

if.else:                                          ; preds = %if.then.9
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 160
  %21 = load i32, i32* %yuv_format15, align 4
  %cmp16 = icmp eq i32 %21, 2
  br i1 %cmp16, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.else
  %22 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgUV_sub18 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 32
  %23 = load i32, i32* %ypadded_size, align 4
  %24 = load i32, i32* %xpadded_size, align 4
  %div19 = sdiv i32 %24, 2
  %call20 = call i32 @get_mem5Dpel(i16****** %imgUV_sub18, i32 2, i32 4, i32 8, i32 %23, i32 %div19)
  br label %if.end.24

if.else.21:                                       ; preds = %if.else
  %25 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgUV_sub22 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 32
  %26 = load i32, i32* %ypadded_size, align 4
  %27 = load i32, i32* %xpadded_size, align 4
  %call23 = call i32 @get_mem5Dpel(i16****** %imgUV_sub22, i32 2, i32 4, i32 4, i32 %26, i32 %27)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.12
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.7
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.5
  %28 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getSubImagesLuma(%struct.storable_picture* %28)
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 160
  %30 = load i32, i32* %yuv_format28, align 4
  %cmp29 = icmp ne i32 %30, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.27
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMCBuffer30 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 197
  %32 = load i32, i32* %ChromaMCBuffer30, align 4
  %tobool31 = icmp ne i32 %32, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true
  %33 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getSubImagesChroma(%struct.storable_picture* %33)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then, %if.then.32, %land.lhs.true, %if.end.27
  ret void
}

declare i32 @get_mem4Dpel(i16*****, i32, i32, i32, i32) #1

declare void @no_mem_exit(i8*) #1

declare i32 @get_mem5Dpel(i16******, i32, i32, i32, i32, i32) #1

declare void @getSubImagesLuma(%struct.storable_picture*) #1

declare void @getSubImagesChroma(%struct.storable_picture*) #1

; Function Attrs: nounwind uwtable
define i32 @dummy_slice_too_big(i32 %bits_slice) #0 {
entry:
  %bits_slice.addr = alloca i32, align 4
  store i32 %bits_slice, i32* %bits_slice.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @copy_rdopt_data(i32 %bot_block) #0 {
entry:
  %bot_block.addr = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %bframe = alloca i32, align 4
  %mode = alloca i32, align 4
  %b8mode = alloca i32, align 4
  %b8pdir = alloca i32, align 4
  %block_y = alloca i32, align 4
  %list_offset = alloca i32, align 4
  store i32 %bot_block, i32* %bot_block.addr, align 4
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
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 5
  %6 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %6, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %7 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %7, i32 0, i32 21
  %8 = load i32, i32* %list_offset1, align 4
  store i32 %8, i32* %list_offset, align 4
  %9 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %mode2 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %9, i32 0, i32 15
  %10 = load i32, i32* %mode2, align 4
  store i32 %10, i32* %mode, align 4
  %11 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %mb_type = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %11, i32 0, i32 6
  %12 = load i32, i32* %mb_type, align 4
  %13 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i32 0, i32 8
  store i32 %12, i32* %mb_type3, align 4
  %14 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %cbp = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %14, i32 0, i32 13
  %15 = load i32, i32* %cbp, align 4
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 12
  store i32 %15, i32* %cbp4, align 4
  %17 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %cbp_blk = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %17, i32 0, i32 14
  %18 = load i64, i64* %cbp_blk, align 8
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_blk5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 13
  store i64 %18, i64* %cbp_blk5, align 8
  %20 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %bi_pred_me = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %20, i32 0, i32 7
  %21 = load i16, i16* %bi_pred_me, align 2
  %22 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bi_pred_me6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 33
  store i16 %21, i16* %bi_pred_me6, align 2
  %23 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %i16offset = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %23, i32 0, i32 19
  %24 = load i32, i32* %i16offset, align 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %i16offset7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 94
  store i32 %24, i32* %i16offset7, align 4
  %26 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %prev_qp = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %26, i32 0, i32 24
  %27 = load i32, i32* %prev_qp, align 4
  %28 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %28, i32 0, i32 35
  store i32 %27, i32* %prev_qp8, align 4
  %29 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %prev_delta_qp = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %29, i32 0, i32 25
  %30 = load i32, i32* %prev_delta_qp, align 4
  %31 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_delta_qp9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 36
  store i32 %30, i32* %prev_delta_qp9, align 4
  %32 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %prev_cbp = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %32, i32 0, i32 27
  %33 = load i32, i32* %prev_cbp, align 4
  %34 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_cbp10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i32 0, i32 37
  store i32 %33, i32* %prev_cbp10, align 4
  %35 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %delta_qp = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %35, i32 0, i32 26
  %36 = load i32, i32* %delta_qp, align 4
  %37 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i32 0, i32 1
  store i32 %36, i32* %delta_qp11, align 4
  %38 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %qp = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %38, i32 0, i32 23
  %39 = load i32, i32* %qp, align 4
  %40 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %40, i32 0, i32 2
  store i32 %39, i32* %qp12, align 4
  %41 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @set_chroma_qp(%struct.macroblock* %41)
  %42 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %c_ipred_mode = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %42, i32 0, i32 20
  %43 = load i32, i32* %c_ipred_mode, align 4
  %44 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode13 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %44, i32 0, i32 17
  store i32 %43, i32* %c_ipred_mode13, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %entry
  %45 = load i32, i32* %i, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 158
  %47 = load i32, i32* %num_blk8x8_uv, align 4
  %add = add nsw i32 4, %47
  %cmp14 = icmp slt i32 %45, %add
  br i1 %cmp14, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.37, %for.body
  %48 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %48, 4
  br i1 %cmp17, label %for.body.19, label %for.end.39

for.body.19:                                      ; preds = %for.cond.16
  store i32 0, i32* %k, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %for.body.19
  %49 = load i32, i32* %k, align 4
  %cmp21 = icmp slt i32 %49, 2
  br i1 %cmp21, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.20
  %50 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %50 to i64
  %51 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %51 to i64
  %52 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %52 to i64
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 53
  %54 = load i32****, i32***** %cofAC, align 8
  %arrayidx27 = getelementptr inbounds i32***, i32**** %54, i64 %idxprom26
  %55 = load i32***, i32**** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32**, i32*** %55, i64 %idxprom25
  %56 = load i32**, i32*** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %56, i64 %idxprom24
  %57 = load i32*, i32** %arrayidx29, align 8
  %58 = bitcast i32* %57 to i8*
  %59 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %59 to i64
  %60 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %60 to i64
  %61 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %61 to i64
  %62 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %cofAC33 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %62, i32 0, i32 4
  %63 = load i32****, i32***** %cofAC33, align 8
  %arrayidx34 = getelementptr inbounds i32***, i32**** %63, i64 %idxprom32
  %64 = load i32***, i32**** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32**, i32*** %64, i64 %idxprom31
  %65 = load i32**, i32*** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %65, i64 %idxprom30
  %66 = load i32*, i32** %arrayidx36, align 8
  %67 = bitcast i32* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %67, i64 260, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %68 = load i32, i32* %k, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %69 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %69, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.16

for.end.39:                                       ; preds = %for.cond.16
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %70 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %70, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.63, %for.end.42
  %71 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %71, 3
  br i1 %cmp44, label %for.body.46, label %for.end.65

for.body.46:                                      ; preds = %for.cond.43
  store i32 0, i32* %k, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.60, %for.body.46
  %72 = load i32, i32* %k, align 4
  %cmp48 = icmp slt i32 %72, 2
  br i1 %cmp48, label %for.body.50, label %for.end.62

for.body.50:                                      ; preds = %for.cond.47
  %73 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %73 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %74 to i64
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 54
  %76 = load i32***, i32**** %cofDC, align 8
  %arrayidx53 = getelementptr inbounds i32**, i32*** %76, i64 %idxprom52
  %77 = load i32**, i32*** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32*, i32** %77, i64 %idxprom51
  %78 = load i32*, i32** %arrayidx54, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %80 to i64
  %81 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %81 to i64
  %82 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %cofDC57 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %82, i32 0, i32 5
  %83 = load i32***, i32**** %cofDC57, align 8
  %arrayidx58 = getelementptr inbounds i32**, i32*** %83, i64 %idxprom56
  %84 = load i32**, i32*** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i32*, i32** %84, i64 %idxprom55
  %85 = load i32*, i32** %arrayidx59, align 8
  %86 = bitcast i32* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %86, i64 72, i32 4, i1 false)
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.50
  %87 = load i32, i32* %k, align 4
  %inc61 = add nsw i32 %87, 1
  store i32 %inc61, i32* %k, align 4
  br label %for.cond.47

for.end.62:                                       ; preds = %for.cond.47
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %88 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %88, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.43

for.end.65:                                       ; preds = %for.cond.43
  store i32 0, i32* %j, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.108, %for.end.65
  %89 = load i32, i32* %j, align 4
  %cmp67 = icmp slt i32 %89, 4
  br i1 %cmp67, label %for.body.69, label %for.end.110

for.body.69:                                      ; preds = %for.cond.66
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 38
  %91 = load i32, i32* %block_y70, align 4
  %92 = load i32, i32* %j, align 4
  %add71 = add nsw i32 %91, %92
  store i32 %add71, i32* %block_y, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 37
  %94 = load i32, i32* %block_x, align 4
  %idxprom72 = sext i32 %94 to i64
  %95 = load i32, i32* %block_y, align 4
  %idxprom73 = sext i32 %95 to i64
  %96 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %96, i32 0, i32 35
  %97 = load i8***, i8**** %ref_idx, align 8
  %arrayidx74 = getelementptr inbounds i8**, i8*** %97, i64 0
  %98 = load i8**, i8*** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %98, i64 %idxprom73
  %99 = load i8*, i8** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %99, i64 %idxprom72
  %100 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %100 to i64
  %101 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %101, i32 0, i32 18
  %arrayidx78 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* %refar, i32 0, i64 0
  %arrayidx79 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx78, i32 0, i64 %idxprom77
  %102 = bitcast [4 x i8]* %arrayidx79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx76, i8* %102, i64 4, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.105, %for.body.69
  %103 = load i32, i32* %i, align 4
  %cmp81 = icmp slt i32 %103, 4
  br i1 %cmp81, label %for.body.83, label %for.end.107

for.body.83:                                      ; preds = %for.cond.80
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x84 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 37
  %105 = load i32, i32* %block_x84, align 4
  %106 = load i32, i32* %i, align 4
  %add85 = add nsw i32 %105, %106
  %idxprom86 = sext i32 %add85 to i64
  %107 = load i32, i32* %block_y, align 4
  %idxprom87 = sext i32 %107 to i64
  %108 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx88 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %108, i32 0, i32 35
  %109 = load i8***, i8**** %ref_idx88, align 8
  %arrayidx89 = getelementptr inbounds i8**, i8*** %109, i64 0
  %110 = load i8**, i8*** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %110, i64 %idxprom87
  %111 = load i8*, i8** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %111, i64 %idxprom86
  %112 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %112 to i16
  %idxprom93 = sext i16 %conv92 to i64
  %113 = load i32, i32* %list_offset, align 4
  %add94 = add nsw i32 0, %113
  %idxprom95 = sext i32 %add94 to i64
  %114 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %114, i32 0, i32 6
  %arrayidx96 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num, i32 0, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx96, i32 0, i64 %idxprom93
  %115 = load i64, i64* %arrayidx97, align 8
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x98 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 37
  %117 = load i32, i32* %block_x98, align 4
  %118 = load i32, i32* %i, align 4
  %add99 = add nsw i32 %117, %118
  %idxprom100 = sext i32 %add99 to i64
  %119 = load i32, i32* %block_y, align 4
  %idxprom101 = sext i32 %119 to i64
  %120 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_id = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %120, i32 0, i32 36
  %121 = load i64***, i64**** %ref_pic_id, align 8
  %arrayidx102 = getelementptr inbounds i64**, i64*** %121, i64 0
  %122 = load i64**, i64*** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i64*, i64** %122, i64 %idxprom101
  %123 = load i64*, i64** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i64, i64* %123, i64 %idxprom100
  store i64 %115, i64* %arrayidx104, align 8
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.83
  %124 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %124, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.80

for.end.107:                                      ; preds = %for.cond.80
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.107
  %125 = load i32, i32* %j, align 4
  %inc109 = add nsw i32 %125, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.66

for.end.110:                                      ; preds = %for.cond.66
  %126 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %126, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.110
  store i32 0, i32* %j, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.158, %if.then
  %127 = load i32, i32* %j, align 4
  %cmp112 = icmp slt i32 %127, 4
  br i1 %cmp112, label %for.body.114, label %for.end.160

for.body.114:                                     ; preds = %for.cond.111
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y115 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 38
  %129 = load i32, i32* %block_y115, align 4
  %130 = load i32, i32* %j, align 4
  %add116 = add nsw i32 %129, %130
  store i32 %add116, i32* %block_y, align 4
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x117 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 37
  %132 = load i32, i32* %block_x117, align 4
  %idxprom118 = sext i32 %132 to i64
  %133 = load i32, i32* %block_y, align 4
  %idxprom119 = sext i32 %133 to i64
  %134 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx120 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %134, i32 0, i32 35
  %135 = load i8***, i8**** %ref_idx120, align 8
  %arrayidx121 = getelementptr inbounds i8**, i8*** %135, i64 1
  %136 = load i8**, i8*** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %136, i64 %idxprom119
  %137 = load i8*, i8** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %137, i64 %idxprom118
  %138 = load i32, i32* %j, align 4
  %idxprom124 = sext i32 %138 to i64
  %139 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar125 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %139, i32 0, i32 18
  %arrayidx126 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* %refar125, i32 0, i64 1
  %arrayidx127 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx126, i32 0, i64 %idxprom124
  %140 = bitcast [4 x i8]* %arrayidx127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx123, i8* %140, i64 4, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.155, %for.body.114
  %141 = load i32, i32* %i, align 4
  %cmp129 = icmp slt i32 %141, 4
  br i1 %cmp129, label %for.body.131, label %for.end.157

for.body.131:                                     ; preds = %for.cond.128
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x132 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 37
  %143 = load i32, i32* %block_x132, align 4
  %144 = load i32, i32* %i, align 4
  %add133 = add nsw i32 %143, %144
  %idxprom134 = sext i32 %add133 to i64
  %145 = load i32, i32* %block_y, align 4
  %idxprom135 = sext i32 %145 to i64
  %146 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx136 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %146, i32 0, i32 35
  %147 = load i8***, i8**** %ref_idx136, align 8
  %arrayidx137 = getelementptr inbounds i8**, i8*** %147, i64 1
  %148 = load i8**, i8*** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %148, i64 %idxprom135
  %149 = load i8*, i8** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %149, i64 %idxprom134
  %150 = load i8, i8* %arrayidx139, align 1
  %conv140 = sext i8 %150 to i16
  %idxprom141 = sext i16 %conv140 to i64
  %151 = load i32, i32* %list_offset, align 4
  %add142 = add nsw i32 1, %151
  %idxprom143 = sext i32 %add142 to i64
  %152 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num144 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %152, i32 0, i32 6
  %arrayidx145 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num144, i32 0, i64 %idxprom143
  %arrayidx146 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx145, i32 0, i64 %idxprom141
  %153 = load i64, i64* %arrayidx146, align 8
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x147 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 37
  %155 = load i32, i32* %block_x147, align 4
  %156 = load i32, i32* %i, align 4
  %add148 = add nsw i32 %155, %156
  %idxprom149 = sext i32 %add148 to i64
  %157 = load i32, i32* %block_y, align 4
  %idxprom150 = sext i32 %157 to i64
  %158 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_id151 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %158, i32 0, i32 36
  %159 = load i64***, i64**** %ref_pic_id151, align 8
  %arrayidx152 = getelementptr inbounds i64**, i64*** %159, i64 1
  %160 = load i64**, i64*** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i64*, i64** %160, i64 %idxprom150
  %161 = load i64*, i64** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i64, i64* %161, i64 %idxprom149
  store i64 %153, i64* %arrayidx154, align 8
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.body.131
  %162 = load i32, i32* %i, align 4
  %inc156 = add nsw i32 %162, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond.128

for.end.157:                                      ; preds = %for.cond.128
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.end.157
  %163 = load i32, i32* %j, align 4
  %inc159 = add nsw i32 %163, 1
  store i32 %inc159, i32* %j, align 4
  br label %for.cond.111

for.end.160:                                      ; preds = %for.cond.111
  br label %if.end

if.end:                                           ; preds = %for.end.160, %for.end.110
  store i32 0, i32* %j, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.172, %if.end
  %164 = load i32, i32* %j, align 4
  %cmp162 = icmp slt i32 %164, 16
  br i1 %cmp162, label %for.body.164, label %for.end.174

for.body.164:                                     ; preds = %for.cond.161
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 39
  %166 = load i32, i32* %pix_x, align 4
  %idxprom165 = sext i32 %166 to i64
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 40
  %168 = load i32, i32* %pix_y, align 4
  %169 = load i32, i32* %j, align 4
  %add166 = add nsw i32 %168, %169
  %idxprom167 = sext i32 %add166 to i64
  %170 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %170, i32 0, i32 29
  %171 = load i16**, i16*** %imgY, align 8
  %arrayidx168 = getelementptr inbounds i16*, i16** %171, i64 %idxprom167
  %172 = load i16*, i16** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i16, i16* %172, i64 %idxprom165
  %173 = bitcast i16* %arrayidx169 to i8*
  %174 = load i32, i32* %j, align 4
  %idxprom170 = sext i32 %174 to i64
  %175 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %rec_mbY = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %175, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %rec_mbY, i32 0, i64 %idxprom170
  %176 = bitcast [16 x i16]* %arrayidx171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %173, i8* %176, i64 32, i32 2, i1 false)
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.164
  %177 = load i32, i32* %j, align 4
  %inc173 = add nsw i32 %177, 1
  store i32 %inc173, i32* %j, align 4
  br label %for.cond.161

for.end.174:                                      ; preds = %for.cond.161
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 160
  %179 = load i32, i32* %yuv_format, align 4
  %cmp175 = icmp ne i32 %179, 0
  br i1 %cmp175, label %if.then.177, label %if.end.208

if.then.177:                                      ; preds = %for.end.174
  store i32 0, i32* %j, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.205, %if.then.177
  %180 = load i32, i32* %j, align 4
  %181 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %181, i32 0, i32 163
  %182 = load i32, i32* %mb_cr_size_y, align 4
  %cmp179 = icmp slt i32 %180, %182
  br i1 %cmp179, label %for.body.181, label %for.end.207

for.body.181:                                     ; preds = %for.cond.178
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 41
  %184 = load i32, i32* %pix_c_x, align 4
  %idxprom182 = sext i32 %184 to i64
  %185 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %185, i32 0, i32 42
  %186 = load i32, i32* %pix_c_y, align 4
  %187 = load i32, i32* %j, align 4
  %add183 = add nsw i32 %186, %187
  %idxprom184 = sext i32 %add183 to i64
  %188 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %188, i32 0, i32 33
  %189 = load i16***, i16**** %imgUV, align 8
  %arrayidx185 = getelementptr inbounds i16**, i16*** %189, i64 0
  %190 = load i16**, i16*** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i16*, i16** %190, i64 %idxprom184
  %191 = load i16*, i16** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i16, i16* %191, i64 %idxprom182
  %192 = bitcast i16* %arrayidx187 to i8*
  %193 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %193 to i64
  %194 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %rec_mbU = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %194, i32 0, i32 2
  %arrayidx189 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %rec_mbU, i32 0, i64 %idxprom188
  %195 = bitcast [16 x i16]* %arrayidx189 to i8*
  %196 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %196, i32 0, i32 162
  %197 = load i32, i32* %mb_cr_size_x, align 4
  %conv190 = sext i32 %197 to i64
  %mul = mul i64 %conv190, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %195, i64 %mul, i32 2, i1 false)
  %198 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x191 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %198, i32 0, i32 41
  %199 = load i32, i32* %pix_c_x191, align 4
  %idxprom192 = sext i32 %199 to i64
  %200 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y193 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %200, i32 0, i32 42
  %201 = load i32, i32* %pix_c_y193, align 4
  %202 = load i32, i32* %j, align 4
  %add194 = add nsw i32 %201, %202
  %idxprom195 = sext i32 %add194 to i64
  %203 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV196 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %203, i32 0, i32 33
  %204 = load i16***, i16**** %imgUV196, align 8
  %arrayidx197 = getelementptr inbounds i16**, i16*** %204, i64 1
  %205 = load i16**, i16*** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds i16*, i16** %205, i64 %idxprom195
  %206 = load i16*, i16** %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds i16, i16* %206, i64 %idxprom192
  %207 = bitcast i16* %arrayidx199 to i8*
  %208 = load i32, i32* %j, align 4
  %idxprom200 = sext i32 %208 to i64
  %209 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %rec_mbV = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %209, i32 0, i32 3
  %arrayidx201 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %rec_mbV, i32 0, i64 %idxprom200
  %210 = bitcast [16 x i16]* %arrayidx201 to i8*
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x202 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 162
  %212 = load i32, i32* %mb_cr_size_x202, align 4
  %conv203 = sext i32 %212 to i64
  %mul204 = mul i64 %conv203, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %207, i8* %210, i64 %mul204, i32 2, i1 false)
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.body.181
  %213 = load i32, i32* %j, align 4
  %inc206 = add nsw i32 %213, 1
  store i32 %inc206, i32* %j, align 4
  br label %for.cond.178

for.end.207:                                      ; preds = %for.cond.178
  br label %if.end.208

if.end.208:                                       ; preds = %for.end.207, %for.end.174
  %214 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode209 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %214, i32 0, i32 14
  %215 = bitcast [4 x i32]* %b8mode209 to i8*
  %216 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %b8mode210 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %216, i32 0, i32 8
  %217 = bitcast [4 x i32]* %b8mode210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %215, i8* %217, i64 16, i32 8, i1 false)
  %218 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir211 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %218, i32 0, i32 15
  %219 = bitcast [4 x i32]* %b8pdir211 to i8*
  %220 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %b8pdir212 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %220, i32 0, i32 9
  %221 = bitcast [4 x i32]* %b8pdir212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %219, i8* %221, i64 16, i32 8, i1 false)
  %222 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %222, i32 0, i32 21
  %223 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  %224 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag213 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %224, i32 0, i32 31
  store i32 %223, i32* %luma_transform_size_8x8_flag213, align 4
  %225 = load i32, i32* %mode, align 4
  %cmp214 = icmp eq i32 %225, 8
  br i1 %cmp214, label %if.then.216, label %if.else

if.then.216:                                      ; preds = %if.end.208
  %226 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes = getelementptr inbounds %struct.macroblock, %struct.macroblock* %226, i32 0, i32 10
  %227 = bitcast [16 x i8]* %intra_pred_modes to i8*
  %228 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %intra_pred_modes217 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %228, i32 0, i32 11
  %229 = bitcast [16 x i8]* %intra_pred_modes217 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %227, i8* %229, i64 16, i32 4, i1 false)
  %230 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y218 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %230, i32 0, i32 38
  %231 = load i32, i32* %block_y218, align 4
  store i32 %231, i32* %j, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.236, %if.then.216
  %232 = load i32, i32* %j, align 4
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y220 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 38
  %234 = load i32, i32* %block_y220, align 4
  %add221 = add nsw i32 %234, 4
  %cmp222 = icmp slt i32 %232, %add221
  br i1 %cmp222, label %for.body.224, label %for.end.238

for.body.224:                                     ; preds = %for.cond.219
  %235 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x225 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %235, i32 0, i32 37
  %236 = load i32, i32* %block_x225, align 4
  %idxprom226 = sext i32 %236 to i64
  %237 = load i32, i32* %j, align 4
  %idxprom227 = sext i32 %237 to i64
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 31
  %239 = load i8**, i8*** %ipredmode, align 8
  %arrayidx228 = getelementptr inbounds i8*, i8** %239, i64 %idxprom227
  %240 = load i8*, i8** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %240, i64 %idxprom226
  %241 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x230 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %241, i32 0, i32 37
  %242 = load i32, i32* %block_x230, align 4
  %idxprom231 = sext i32 %242 to i64
  %243 = load i32, i32* %j, align 4
  %idxprom232 = sext i32 %243 to i64
  %244 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %ipredmode233 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %244, i32 0, i32 10
  %245 = load i8**, i8*** %ipredmode233, align 8
  %arrayidx234 = getelementptr inbounds i8*, i8** %245, i64 %idxprom232
  %246 = load i8*, i8** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %246, i64 %idxprom231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx229, i8* %arrayidx235, i64 4, i32 1, i1 false)
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.body.224
  %247 = load i32, i32* %j, align 4
  %inc237 = add nsw i32 %247, 1
  store i32 %inc237, i32* %j, align 4
  br label %for.cond.219

for.end.238:                                      ; preds = %for.cond.219
  br label %if.end.294

if.else:                                          ; preds = %if.end.208
  %248 = load i32, i32* %mode, align 4
  %cmp239 = icmp ne i32 %248, 9
  br i1 %cmp239, label %land.lhs.true, label %if.else.261

land.lhs.true:                                    ; preds = %if.else
  %249 = load i32, i32* %mode, align 4
  %cmp241 = icmp ne i32 %249, 13
  br i1 %cmp241, label %if.then.243, label %if.else.261

if.then.243:                                      ; preds = %land.lhs.true
  %250 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes244 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %250, i32 0, i32 10
  %251 = bitcast [16 x i8]* %intra_pred_modes244 to i8*
  call void @llvm.memset.p0i8.i64(i8* %251, i8 2, i64 16, i32 4, i1 false)
  %252 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y245 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %252, i32 0, i32 38
  %253 = load i32, i32* %block_y245, align 4
  store i32 %253, i32* %j, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.258, %if.then.243
  %254 = load i32, i32* %j, align 4
  %255 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y247 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %255, i32 0, i32 38
  %256 = load i32, i32* %block_y247, align 4
  %add248 = add nsw i32 %256, 4
  %cmp249 = icmp slt i32 %254, %add248
  br i1 %cmp249, label %for.body.251, label %for.end.260

for.body.251:                                     ; preds = %for.cond.246
  %257 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x252 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %257, i32 0, i32 37
  %258 = load i32, i32* %block_x252, align 4
  %idxprom253 = sext i32 %258 to i64
  %259 = load i32, i32* %j, align 4
  %idxprom254 = sext i32 %259 to i64
  %260 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode255 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %260, i32 0, i32 31
  %261 = load i8**, i8*** %ipredmode255, align 8
  %arrayidx256 = getelementptr inbounds i8*, i8** %261, i64 %idxprom254
  %262 = load i8*, i8** %arrayidx256, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %262, i64 %idxprom253
  call void @llvm.memset.p0i8.i64(i8* %arrayidx257, i8 2, i64 4, i32 1, i1 false)
  br label %for.inc.258

for.inc.258:                                      ; preds = %for.body.251
  %263 = load i32, i32* %j, align 4
  %inc259 = add nsw i32 %263, 1
  store i32 %inc259, i32* %j, align 4
  br label %for.cond.246

for.end.260:                                      ; preds = %for.cond.246
  br label %if.end.293

if.else.261:                                      ; preds = %land.lhs.true, %if.else
  %264 = load i32, i32* %mode, align 4
  %cmp262 = icmp eq i32 %264, 9
  br i1 %cmp262, label %if.then.266, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.261
  %265 = load i32, i32* %mode, align 4
  %cmp264 = icmp eq i32 %265, 13
  br i1 %cmp264, label %if.then.266, label %if.end.292

if.then.266:                                      ; preds = %lor.lhs.false, %if.else.261
  %266 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes267 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %266, i32 0, i32 10
  %267 = bitcast [16 x i8]* %intra_pred_modes267 to i8*
  %268 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %intra_pred_modes268 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %268, i32 0, i32 11
  %269 = bitcast [16 x i8]* %intra_pred_modes268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %267, i8* %269, i64 16, i32 4, i1 false)
  %270 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes8x8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %270, i32 0, i32 11
  %271 = bitcast [16 x i8]* %intra_pred_modes8x8 to i8*
  %272 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %intra_pred_modes8x8269 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %272, i32 0, i32 12
  %273 = bitcast [16 x i8]* %intra_pred_modes8x8269 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %271, i8* %273, i64 16, i32 4, i1 false)
  %274 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y270 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %274, i32 0, i32 38
  %275 = load i32, i32* %block_y270, align 4
  store i32 %275, i32* %j, align 4
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.289, %if.then.266
  %276 = load i32, i32* %j, align 4
  %277 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y272 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %277, i32 0, i32 38
  %278 = load i32, i32* %block_y272, align 4
  %add273 = add nsw i32 %278, 4
  %cmp274 = icmp slt i32 %276, %add273
  br i1 %cmp274, label %for.body.276, label %for.end.291

for.body.276:                                     ; preds = %for.cond.271
  %279 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x277 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %279, i32 0, i32 37
  %280 = load i32, i32* %block_x277, align 4
  %idxprom278 = sext i32 %280 to i64
  %281 = load i32, i32* %j, align 4
  %idxprom279 = sext i32 %281 to i64
  %282 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode280 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %282, i32 0, i32 31
  %283 = load i8**, i8*** %ipredmode280, align 8
  %arrayidx281 = getelementptr inbounds i8*, i8** %283, i64 %idxprom279
  %284 = load i8*, i8** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i8, i8* %284, i64 %idxprom278
  %285 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x283 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %285, i32 0, i32 37
  %286 = load i32, i32* %block_x283, align 4
  %idxprom284 = sext i32 %286 to i64
  %287 = load i32, i32* %j, align 4
  %idxprom285 = sext i32 %287 to i64
  %288 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %ipredmode286 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %288, i32 0, i32 10
  %289 = load i8**, i8*** %ipredmode286, align 8
  %arrayidx287 = getelementptr inbounds i8*, i8** %289, i64 %idxprom285
  %290 = load i8*, i8** %arrayidx287, align 8
  %arrayidx288 = getelementptr inbounds i8, i8* %290, i64 %idxprom284
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx282, i8* %arrayidx288, i64 4, i32 1, i1 false)
  br label %for.inc.289

for.inc.289:                                      ; preds = %for.body.276
  %291 = load i32, i32* %j, align 4
  %inc290 = add nsw i32 %291, 1
  store i32 %inc290, i32* %j, align 4
  br label %for.cond.271

for.end.291:                                      ; preds = %for.cond.271
  br label %if.end.292

if.end.292:                                       ; preds = %for.end.291, %lor.lhs.false
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %for.end.260
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %for.end.238
  %292 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %292, i32 0, i32 100
  %293 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool295 = icmp ne i32 %293, 0
  br i1 %tobool295, label %if.then.296, label %if.end.548

if.then.296:                                      ; preds = %if.end.294
  call void @copy_motion_vectors_MB()
  %294 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type297 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %294, i32 0, i32 8
  %295 = load i32, i32* %mb_type297, align 4
  %cmp298 = icmp eq i32 %295, 9
  br i1 %cmp298, label %if.else.511, label %lor.lhs.false.300

lor.lhs.false.300:                                ; preds = %if.then.296
  %296 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type301 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %296, i32 0, i32 8
  %297 = load i32, i32* %mb_type301, align 4
  %cmp302 = icmp eq i32 %297, 10
  br i1 %cmp302, label %if.else.511, label %lor.lhs.false.304

lor.lhs.false.304:                                ; preds = %lor.lhs.false.300
  %298 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type305 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %298, i32 0, i32 8
  %299 = load i32, i32* %mb_type305, align 4
  %cmp306 = icmp eq i32 %299, 13
  br i1 %cmp306, label %if.else.511, label %lor.lhs.false.308

lor.lhs.false.308:                                ; preds = %lor.lhs.false.304
  %300 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type309 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %300, i32 0, i32 8
  %301 = load i32, i32* %mb_type309, align 4
  %cmp310 = icmp eq i32 %301, 14
  br i1 %cmp310, label %if.else.511, label %if.then.312

if.then.312:                                      ; preds = %lor.lhs.false.308
  store i32 0, i32* %j, align 4
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc.508, %if.then.312
  %302 = load i32, i32* %j, align 4
  %cmp314 = icmp slt i32 %302, 4
  br i1 %cmp314, label %for.body.316, label %for.end.510

for.body.316:                                     ; preds = %for.cond.313
  store i32 0, i32* %i, align 4
  br label %for.cond.317

for.cond.317:                                     ; preds = %for.inc.505, %for.body.316
  %303 = load i32, i32* %i, align 4
  %cmp318 = icmp slt i32 %303, 4
  br i1 %cmp318, label %for.body.320, label %for.end.507

for.body.320:                                     ; preds = %for.cond.317
  %304 = load i32, i32* %i, align 4
  %div = sdiv i32 %304, 2
  %305 = load i32, i32* %j, align 4
  %div321 = sdiv i32 %305, 2
  %mul322 = mul nsw i32 2, %div321
  %add323 = add nsw i32 %div, %mul322
  %idxprom324 = sext i32 %add323 to i64
  %306 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode325 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %306, i32 0, i32 14
  %arrayidx326 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode325, i32 0, i64 %idxprom324
  %307 = load i32, i32* %arrayidx326, align 4
  store i32 %307, i32* %b8mode, align 4
  %308 = load i32, i32* %i, align 4
  %div327 = sdiv i32 %308, 2
  %309 = load i32, i32* %j, align 4
  %div328 = sdiv i32 %309, 2
  %mul329 = mul nsw i32 2, %div328
  %add330 = add nsw i32 %div327, %mul329
  %idxprom331 = sext i32 %add330 to i64
  %310 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir332 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %310, i32 0, i32 15
  %arrayidx333 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir332, i32 0, i64 %idxprom331
  %311 = load i32, i32* %arrayidx333, align 4
  store i32 %311, i32* %b8pdir, align 4
  %312 = load i32, i32* %b8pdir, align 4
  %cmp334 = icmp ne i32 %312, 1
  br i1 %cmp334, label %if.then.336, label %if.else.393

if.then.336:                                      ; preds = %for.body.320
  %313 = load i32, i32* %b8mode, align 4
  %idxprom337 = sext i32 %313 to i64
  %314 = load i32, i32* %i, align 4
  %idxprom338 = sext i32 %314 to i64
  %315 = load i32, i32* %j, align 4
  %idxprom339 = sext i32 %315 to i64
  %316 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar340 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %316, i32 0, i32 18
  %arrayidx341 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* %refar340, i32 0, i64 0
  %arrayidx342 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx341, i32 0, i64 %idxprom339
  %arrayidx343 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx342, i32 0, i64 %idxprom338
  %317 = load i8, i8* %arrayidx343, align 1
  %conv344 = sext i8 %317 to i16
  %idxprom345 = sext i16 %conv344 to i64
  %318 = load i32, i32* %i, align 4
  %idxprom346 = sext i32 %318 to i64
  %319 = load i32, i32* %j, align 4
  %idxprom347 = sext i32 %319 to i64
  %320 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %320, i32 0, i32 17
  %321 = load i16******, i16******* %all_mv, align 8
  %arrayidx348 = getelementptr inbounds i16*****, i16****** %321, i64 %idxprom347
  %322 = load i16*****, i16****** %arrayidx348, align 8
  %arrayidx349 = getelementptr inbounds i16****, i16***** %322, i64 %idxprom346
  %323 = load i16****, i16***** %arrayidx349, align 8
  %arrayidx350 = getelementptr inbounds i16***, i16**** %323, i64 0
  %324 = load i16***, i16**** %arrayidx350, align 8
  %arrayidx351 = getelementptr inbounds i16**, i16*** %324, i64 %idxprom345
  %325 = load i16**, i16*** %arrayidx351, align 8
  %arrayidx352 = getelementptr inbounds i16*, i16** %325, i64 %idxprom337
  %326 = load i16*, i16** %arrayidx352, align 8
  %arrayidx353 = getelementptr inbounds i16, i16* %326, i64 0
  %327 = load i16, i16* %arrayidx353, align 2
  %328 = load i32, i32* %i, align 4
  %329 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x354 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %329, i32 0, i32 37
  %330 = load i32, i32* %block_x354, align 4
  %add355 = add nsw i32 %328, %330
  %idxprom356 = sext i32 %add355 to i64
  %331 = load i32, i32* %j, align 4
  %332 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y357 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %332, i32 0, i32 38
  %333 = load i32, i32* %block_y357, align 4
  %add358 = add nsw i32 %331, %333
  %idxprom359 = sext i32 %add358 to i64
  %334 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %334, i32 0, i32 38
  %335 = load i16****, i16***** %mv, align 8
  %arrayidx360 = getelementptr inbounds i16***, i16**** %335, i64 0
  %336 = load i16***, i16**** %arrayidx360, align 8
  %arrayidx361 = getelementptr inbounds i16**, i16*** %336, i64 %idxprom359
  %337 = load i16**, i16*** %arrayidx361, align 8
  %arrayidx362 = getelementptr inbounds i16*, i16** %337, i64 %idxprom356
  %338 = load i16*, i16** %arrayidx362, align 8
  %arrayidx363 = getelementptr inbounds i16, i16* %338, i64 0
  store i16 %327, i16* %arrayidx363, align 2
  %339 = load i32, i32* %b8mode, align 4
  %idxprom364 = sext i32 %339 to i64
  %340 = load i32, i32* %i, align 4
  %idxprom365 = sext i32 %340 to i64
  %341 = load i32, i32* %j, align 4
  %idxprom366 = sext i32 %341 to i64
  %342 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar367 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %342, i32 0, i32 18
  %arrayidx368 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* %refar367, i32 0, i64 0
  %arrayidx369 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx368, i32 0, i64 %idxprom366
  %arrayidx370 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx369, i32 0, i64 %idxprom365
  %343 = load i8, i8* %arrayidx370, align 1
  %conv371 = sext i8 %343 to i16
  %idxprom372 = sext i16 %conv371 to i64
  %344 = load i32, i32* %i, align 4
  %idxprom373 = sext i32 %344 to i64
  %345 = load i32, i32* %j, align 4
  %idxprom374 = sext i32 %345 to i64
  %346 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv375 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %346, i32 0, i32 17
  %347 = load i16******, i16******* %all_mv375, align 8
  %arrayidx376 = getelementptr inbounds i16*****, i16****** %347, i64 %idxprom374
  %348 = load i16*****, i16****** %arrayidx376, align 8
  %arrayidx377 = getelementptr inbounds i16****, i16***** %348, i64 %idxprom373
  %349 = load i16****, i16***** %arrayidx377, align 8
  %arrayidx378 = getelementptr inbounds i16***, i16**** %349, i64 0
  %350 = load i16***, i16**** %arrayidx378, align 8
  %arrayidx379 = getelementptr inbounds i16**, i16*** %350, i64 %idxprom372
  %351 = load i16**, i16*** %arrayidx379, align 8
  %arrayidx380 = getelementptr inbounds i16*, i16** %351, i64 %idxprom364
  %352 = load i16*, i16** %arrayidx380, align 8
  %arrayidx381 = getelementptr inbounds i16, i16* %352, i64 1
  %353 = load i16, i16* %arrayidx381, align 2
  %354 = load i32, i32* %i, align 4
  %355 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x382 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %355, i32 0, i32 37
  %356 = load i32, i32* %block_x382, align 4
  %add383 = add nsw i32 %354, %356
  %idxprom384 = sext i32 %add383 to i64
  %357 = load i32, i32* %j, align 4
  %358 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y385 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %358, i32 0, i32 38
  %359 = load i32, i32* %block_y385, align 4
  %add386 = add nsw i32 %357, %359
  %idxprom387 = sext i32 %add386 to i64
  %360 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv388 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %360, i32 0, i32 38
  %361 = load i16****, i16***** %mv388, align 8
  %arrayidx389 = getelementptr inbounds i16***, i16**** %361, i64 0
  %362 = load i16***, i16**** %arrayidx389, align 8
  %arrayidx390 = getelementptr inbounds i16**, i16*** %362, i64 %idxprom387
  %363 = load i16**, i16*** %arrayidx390, align 8
  %arrayidx391 = getelementptr inbounds i16*, i16** %363, i64 %idxprom384
  %364 = load i16*, i16** %arrayidx391, align 8
  %arrayidx392 = getelementptr inbounds i16, i16* %364, i64 1
  store i16 %353, i16* %arrayidx392, align 2
  br label %if.end.416

if.else.393:                                      ; preds = %for.body.320
  %365 = load i32, i32* %i, align 4
  %366 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x394 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %366, i32 0, i32 37
  %367 = load i32, i32* %block_x394, align 4
  %add395 = add nsw i32 %365, %367
  %idxprom396 = sext i32 %add395 to i64
  %368 = load i32, i32* %j, align 4
  %369 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y397 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %369, i32 0, i32 38
  %370 = load i32, i32* %block_y397, align 4
  %add398 = add nsw i32 %368, %370
  %idxprom399 = sext i32 %add398 to i64
  %371 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv400 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %371, i32 0, i32 38
  %372 = load i16****, i16***** %mv400, align 8
  %arrayidx401 = getelementptr inbounds i16***, i16**** %372, i64 0
  %373 = load i16***, i16**** %arrayidx401, align 8
  %arrayidx402 = getelementptr inbounds i16**, i16*** %373, i64 %idxprom399
  %374 = load i16**, i16*** %arrayidx402, align 8
  %arrayidx403 = getelementptr inbounds i16*, i16** %374, i64 %idxprom396
  %375 = load i16*, i16** %arrayidx403, align 8
  %arrayidx404 = getelementptr inbounds i16, i16* %375, i64 0
  store i16 0, i16* %arrayidx404, align 2
  %376 = load i32, i32* %i, align 4
  %377 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x405 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %377, i32 0, i32 37
  %378 = load i32, i32* %block_x405, align 4
  %add406 = add nsw i32 %376, %378
  %idxprom407 = sext i32 %add406 to i64
  %379 = load i32, i32* %j, align 4
  %380 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y408 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %380, i32 0, i32 38
  %381 = load i32, i32* %block_y408, align 4
  %add409 = add nsw i32 %379, %381
  %idxprom410 = sext i32 %add409 to i64
  %382 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv411 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %382, i32 0, i32 38
  %383 = load i16****, i16***** %mv411, align 8
  %arrayidx412 = getelementptr inbounds i16***, i16**** %383, i64 0
  %384 = load i16***, i16**** %arrayidx412, align 8
  %arrayidx413 = getelementptr inbounds i16**, i16*** %384, i64 %idxprom410
  %385 = load i16**, i16*** %arrayidx413, align 8
  %arrayidx414 = getelementptr inbounds i16*, i16** %385, i64 %idxprom407
  %386 = load i16*, i16** %arrayidx414, align 8
  %arrayidx415 = getelementptr inbounds i16, i16* %386, i64 1
  store i16 0, i16* %arrayidx415, align 2
  br label %if.end.416

if.end.416:                                       ; preds = %if.else.393, %if.then.336
  %387 = load i32, i32* %bframe, align 4
  %tobool417 = icmp ne i32 %387, 0
  br i1 %tobool417, label %if.then.418, label %if.end.504

if.then.418:                                      ; preds = %if.end.416
  %388 = load i32, i32* %b8pdir, align 4
  %cmp419 = icmp ne i32 %388, 0
  br i1 %cmp419, label %if.then.421, label %if.else.480

if.then.421:                                      ; preds = %if.then.418
  %389 = load i32, i32* %b8mode, align 4
  %idxprom422 = sext i32 %389 to i64
  %390 = load i32, i32* %i, align 4
  %idxprom423 = sext i32 %390 to i64
  %391 = load i32, i32* %j, align 4
  %idxprom424 = sext i32 %391 to i64
  %392 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar425 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %392, i32 0, i32 18
  %arrayidx426 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* %refar425, i32 0, i64 1
  %arrayidx427 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx426, i32 0, i64 %idxprom424
  %arrayidx428 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx427, i32 0, i64 %idxprom423
  %393 = load i8, i8* %arrayidx428, align 1
  %conv429 = sext i8 %393 to i16
  %idxprom430 = sext i16 %conv429 to i64
  %394 = load i32, i32* %i, align 4
  %idxprom431 = sext i32 %394 to i64
  %395 = load i32, i32* %j, align 4
  %idxprom432 = sext i32 %395 to i64
  %396 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv433 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %396, i32 0, i32 17
  %397 = load i16******, i16******* %all_mv433, align 8
  %arrayidx434 = getelementptr inbounds i16*****, i16****** %397, i64 %idxprom432
  %398 = load i16*****, i16****** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds i16****, i16***** %398, i64 %idxprom431
  %399 = load i16****, i16***** %arrayidx435, align 8
  %arrayidx436 = getelementptr inbounds i16***, i16**** %399, i64 1
  %400 = load i16***, i16**** %arrayidx436, align 8
  %arrayidx437 = getelementptr inbounds i16**, i16*** %400, i64 %idxprom430
  %401 = load i16**, i16*** %arrayidx437, align 8
  %arrayidx438 = getelementptr inbounds i16*, i16** %401, i64 %idxprom422
  %402 = load i16*, i16** %arrayidx438, align 8
  %arrayidx439 = getelementptr inbounds i16, i16* %402, i64 0
  %403 = load i16, i16* %arrayidx439, align 2
  %404 = load i32, i32* %i, align 4
  %405 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x440 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %405, i32 0, i32 37
  %406 = load i32, i32* %block_x440, align 4
  %add441 = add nsw i32 %404, %406
  %idxprom442 = sext i32 %add441 to i64
  %407 = load i32, i32* %j, align 4
  %408 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y443 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %408, i32 0, i32 38
  %409 = load i32, i32* %block_y443, align 4
  %add444 = add nsw i32 %407, %409
  %idxprom445 = sext i32 %add444 to i64
  %410 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv446 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %410, i32 0, i32 38
  %411 = load i16****, i16***** %mv446, align 8
  %arrayidx447 = getelementptr inbounds i16***, i16**** %411, i64 1
  %412 = load i16***, i16**** %arrayidx447, align 8
  %arrayidx448 = getelementptr inbounds i16**, i16*** %412, i64 %idxprom445
  %413 = load i16**, i16*** %arrayidx448, align 8
  %arrayidx449 = getelementptr inbounds i16*, i16** %413, i64 %idxprom442
  %414 = load i16*, i16** %arrayidx449, align 8
  %arrayidx450 = getelementptr inbounds i16, i16* %414, i64 0
  store i16 %403, i16* %arrayidx450, align 2
  %415 = load i32, i32* %b8mode, align 4
  %idxprom451 = sext i32 %415 to i64
  %416 = load i32, i32* %i, align 4
  %idxprom452 = sext i32 %416 to i64
  %417 = load i32, i32* %j, align 4
  %idxprom453 = sext i32 %417 to i64
  %418 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar454 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %418, i32 0, i32 18
  %arrayidx455 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* %refar454, i32 0, i64 1
  %arrayidx456 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx455, i32 0, i64 %idxprom453
  %arrayidx457 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx456, i32 0, i64 %idxprom452
  %419 = load i8, i8* %arrayidx457, align 1
  %conv458 = sext i8 %419 to i16
  %idxprom459 = sext i16 %conv458 to i64
  %420 = load i32, i32* %i, align 4
  %idxprom460 = sext i32 %420 to i64
  %421 = load i32, i32* %j, align 4
  %idxprom461 = sext i32 %421 to i64
  %422 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv462 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %422, i32 0, i32 17
  %423 = load i16******, i16******* %all_mv462, align 8
  %arrayidx463 = getelementptr inbounds i16*****, i16****** %423, i64 %idxprom461
  %424 = load i16*****, i16****** %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds i16****, i16***** %424, i64 %idxprom460
  %425 = load i16****, i16***** %arrayidx464, align 8
  %arrayidx465 = getelementptr inbounds i16***, i16**** %425, i64 1
  %426 = load i16***, i16**** %arrayidx465, align 8
  %arrayidx466 = getelementptr inbounds i16**, i16*** %426, i64 %idxprom459
  %427 = load i16**, i16*** %arrayidx466, align 8
  %arrayidx467 = getelementptr inbounds i16*, i16** %427, i64 %idxprom451
  %428 = load i16*, i16** %arrayidx467, align 8
  %arrayidx468 = getelementptr inbounds i16, i16* %428, i64 1
  %429 = load i16, i16* %arrayidx468, align 2
  %430 = load i32, i32* %i, align 4
  %431 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x469 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %431, i32 0, i32 37
  %432 = load i32, i32* %block_x469, align 4
  %add470 = add nsw i32 %430, %432
  %idxprom471 = sext i32 %add470 to i64
  %433 = load i32, i32* %j, align 4
  %434 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y472 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %434, i32 0, i32 38
  %435 = load i32, i32* %block_y472, align 4
  %add473 = add nsw i32 %433, %435
  %idxprom474 = sext i32 %add473 to i64
  %436 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv475 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %436, i32 0, i32 38
  %437 = load i16****, i16***** %mv475, align 8
  %arrayidx476 = getelementptr inbounds i16***, i16**** %437, i64 1
  %438 = load i16***, i16**** %arrayidx476, align 8
  %arrayidx477 = getelementptr inbounds i16**, i16*** %438, i64 %idxprom474
  %439 = load i16**, i16*** %arrayidx477, align 8
  %arrayidx478 = getelementptr inbounds i16*, i16** %439, i64 %idxprom471
  %440 = load i16*, i16** %arrayidx478, align 8
  %arrayidx479 = getelementptr inbounds i16, i16* %440, i64 1
  store i16 %429, i16* %arrayidx479, align 2
  br label %if.end.503

if.else.480:                                      ; preds = %if.then.418
  %441 = load i32, i32* %i, align 4
  %442 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x481 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %442, i32 0, i32 37
  %443 = load i32, i32* %block_x481, align 4
  %add482 = add nsw i32 %441, %443
  %idxprom483 = sext i32 %add482 to i64
  %444 = load i32, i32* %j, align 4
  %445 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y484 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %445, i32 0, i32 38
  %446 = load i32, i32* %block_y484, align 4
  %add485 = add nsw i32 %444, %446
  %idxprom486 = sext i32 %add485 to i64
  %447 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv487 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %447, i32 0, i32 38
  %448 = load i16****, i16***** %mv487, align 8
  %arrayidx488 = getelementptr inbounds i16***, i16**** %448, i64 1
  %449 = load i16***, i16**** %arrayidx488, align 8
  %arrayidx489 = getelementptr inbounds i16**, i16*** %449, i64 %idxprom486
  %450 = load i16**, i16*** %arrayidx489, align 8
  %arrayidx490 = getelementptr inbounds i16*, i16** %450, i64 %idxprom483
  %451 = load i16*, i16** %arrayidx490, align 8
  %arrayidx491 = getelementptr inbounds i16, i16* %451, i64 0
  store i16 0, i16* %arrayidx491, align 2
  %452 = load i32, i32* %i, align 4
  %453 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x492 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %453, i32 0, i32 37
  %454 = load i32, i32* %block_x492, align 4
  %add493 = add nsw i32 %452, %454
  %idxprom494 = sext i32 %add493 to i64
  %455 = load i32, i32* %j, align 4
  %456 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y495 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %456, i32 0, i32 38
  %457 = load i32, i32* %block_y495, align 4
  %add496 = add nsw i32 %455, %457
  %idxprom497 = sext i32 %add496 to i64
  %458 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv498 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %458, i32 0, i32 38
  %459 = load i16****, i16***** %mv498, align 8
  %arrayidx499 = getelementptr inbounds i16***, i16**** %459, i64 1
  %460 = load i16***, i16**** %arrayidx499, align 8
  %arrayidx500 = getelementptr inbounds i16**, i16*** %460, i64 %idxprom497
  %461 = load i16**, i16*** %arrayidx500, align 8
  %arrayidx501 = getelementptr inbounds i16*, i16** %461, i64 %idxprom494
  %462 = load i16*, i16** %arrayidx501, align 8
  %arrayidx502 = getelementptr inbounds i16, i16* %462, i64 1
  store i16 0, i16* %arrayidx502, align 2
  br label %if.end.503

if.end.503:                                       ; preds = %if.else.480, %if.then.421
  br label %if.end.504

if.end.504:                                       ; preds = %if.end.503, %if.end.416
  br label %for.inc.505

for.inc.505:                                      ; preds = %if.end.504
  %463 = load i32, i32* %i, align 4
  %inc506 = add nsw i32 %463, 1
  store i32 %inc506, i32* %i, align 4
  br label %for.cond.317

for.end.507:                                      ; preds = %for.cond.317
  br label %for.inc.508

for.inc.508:                                      ; preds = %for.end.507
  %464 = load i32, i32* %j, align 4
  %inc509 = add nsw i32 %464, 1
  store i32 %inc509, i32* %j, align 4
  br label %for.cond.313

for.end.510:                                      ; preds = %for.cond.313
  br label %if.end.547

if.else.511:                                      ; preds = %lor.lhs.false.308, %lor.lhs.false.304, %lor.lhs.false.300, %if.then.296
  store i32 0, i32* %j, align 4
  br label %for.cond.512

for.cond.512:                                     ; preds = %for.inc.525, %if.else.511
  %465 = load i32, i32* %j, align 4
  %cmp513 = icmp slt i32 %465, 4
  br i1 %cmp513, label %for.body.515, label %for.end.527

for.body.515:                                     ; preds = %for.cond.512
  %466 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x516 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %466, i32 0, i32 37
  %467 = load i32, i32* %block_x516, align 4
  %idxprom517 = sext i32 %467 to i64
  %468 = load i32, i32* %j, align 4
  %469 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y518 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %469, i32 0, i32 38
  %470 = load i32, i32* %block_y518, align 4
  %add519 = add nsw i32 %468, %470
  %idxprom520 = sext i32 %add519 to i64
  %471 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv521 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %471, i32 0, i32 38
  %472 = load i16****, i16***** %mv521, align 8
  %arrayidx522 = getelementptr inbounds i16***, i16**** %472, i64 0
  %473 = load i16***, i16**** %arrayidx522, align 8
  %arrayidx523 = getelementptr inbounds i16**, i16*** %473, i64 %idxprom520
  %474 = load i16**, i16*** %arrayidx523, align 8
  %arrayidx524 = getelementptr inbounds i16*, i16** %474, i64 %idxprom517
  %475 = load i16*, i16** %arrayidx524, align 8
  %476 = bitcast i16* %475 to i8*
  call void @llvm.memset.p0i8.i64(i8* %476, i8 0, i64 16, i32 2, i1 false)
  br label %for.inc.525

for.inc.525:                                      ; preds = %for.body.515
  %477 = load i32, i32* %j, align 4
  %inc526 = add nsw i32 %477, 1
  store i32 %inc526, i32* %j, align 4
  br label %for.cond.512

for.end.527:                                      ; preds = %for.cond.512
  %478 = load i32, i32* %bframe, align 4
  %tobool528 = icmp ne i32 %478, 0
  br i1 %tobool528, label %if.then.529, label %if.end.546

if.then.529:                                      ; preds = %for.end.527
  store i32 0, i32* %j, align 4
  br label %for.cond.530

for.cond.530:                                     ; preds = %for.inc.543, %if.then.529
  %479 = load i32, i32* %j, align 4
  %cmp531 = icmp slt i32 %479, 4
  br i1 %cmp531, label %for.body.533, label %for.end.545

for.body.533:                                     ; preds = %for.cond.530
  %480 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x534 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %480, i32 0, i32 37
  %481 = load i32, i32* %block_x534, align 4
  %idxprom535 = sext i32 %481 to i64
  %482 = load i32, i32* %j, align 4
  %483 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y536 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %483, i32 0, i32 38
  %484 = load i32, i32* %block_y536, align 4
  %add537 = add nsw i32 %482, %484
  %idxprom538 = sext i32 %add537 to i64
  %485 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv539 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %485, i32 0, i32 38
  %486 = load i16****, i16***** %mv539, align 8
  %arrayidx540 = getelementptr inbounds i16***, i16**** %486, i64 1
  %487 = load i16***, i16**** %arrayidx540, align 8
  %arrayidx541 = getelementptr inbounds i16**, i16*** %487, i64 %idxprom538
  %488 = load i16**, i16*** %arrayidx541, align 8
  %arrayidx542 = getelementptr inbounds i16*, i16** %488, i64 %idxprom535
  %489 = load i16*, i16** %arrayidx542, align 8
  %490 = bitcast i16* %489 to i8*
  call void @llvm.memset.p0i8.i64(i8* %490, i8 0, i64 16, i32 2, i1 false)
  br label %for.inc.543

for.inc.543:                                      ; preds = %for.body.533
  %491 = load i32, i32* %j, align 4
  %inc544 = add nsw i32 %491, 1
  store i32 %inc544, i32* %j, align 4
  br label %for.cond.530

for.end.545:                                      ; preds = %for.cond.530
  br label %if.end.546

if.end.546:                                       ; preds = %for.end.545, %for.end.527
  br label %if.end.547

if.end.547:                                       ; preds = %if.end.546, %for.end.510
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.547, %if.end.294
  ret void
}

declare void @set_chroma_qp(%struct.macroblock*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @copy_motion_vectors_MB() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.188, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.190

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.185, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end.187

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.182, %for.body.3
  %2 = load i32, i32* %k, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 8
  %4 = load i32, i32* %max_num_references, align 4
  %cmp5 = icmp slt i32 %2, %4
  br i1 %cmp5, label %for.body.6, label %for.end.184

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %l, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %5 = load i32, i32* %l, align 4
  %cmp8 = icmp slt i32 %5, 9
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %6 = load i32, i32* %l, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %8 to i64
  %9 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %9 to i64
  %10 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %10, i32 0, i32 17
  %11 = load i16******, i16******* %all_mv, align 8
  %arrayidx = getelementptr inbounds i16*****, i16****** %11, i64 %idxprom12
  %12 = load i16*****, i16****** %arrayidx, align 8
  %arrayidx13 = getelementptr inbounds i16****, i16***** %12, i64 %idxprom11
  %13 = load i16****, i16***** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i16***, i16**** %13, i64 0
  %14 = load i16***, i16**** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i16**, i16*** %14, i64 %idxprom10
  %15 = load i16**, i16*** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i16*, i16** %15, i64 %idxprom
  %16 = load i16*, i16** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %16, i64 0
  %17 = load i16, i16* %arrayidx17, align 2
  %18 = load i32, i32* %l, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 80
  %23 = load i16******, i16******* %all_mv22, align 8
  %arrayidx23 = getelementptr inbounds i16*****, i16****** %23, i64 %idxprom21
  %24 = load i16*****, i16****** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i16****, i16***** %24, i64 %idxprom20
  %25 = load i16****, i16***** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i16***, i16**** %25, i64 0
  %26 = load i16***, i16**** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i16**, i16*** %26, i64 %idxprom19
  %27 = load i16**, i16*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i16*, i16** %27, i64 %idxprom18
  %28 = load i16*, i16** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %28, i64 0
  store i16 %17, i16* %arrayidx28, align 2
  %29 = load i32, i32* %l, align 4
  %idxprom29 = sext i32 %29 to i64
  %30 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv33 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %33, i32 0, i32 17
  %34 = load i16******, i16******* %all_mv33, align 8
  %arrayidx34 = getelementptr inbounds i16*****, i16****** %34, i64 %idxprom32
  %35 = load i16*****, i16****** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16****, i16***** %35, i64 %idxprom31
  %36 = load i16****, i16***** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16***, i16**** %36, i64 0
  %37 = load i16***, i16**** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16**, i16*** %37, i64 %idxprom30
  %38 = load i16**, i16*** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i16*, i16** %38, i64 %idxprom29
  %39 = load i16*, i16** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %39, i64 1
  %40 = load i16, i16* %arrayidx39, align 2
  %41 = load i32, i32* %l, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %44 to i64
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 80
  %46 = load i16******, i16******* %all_mv44, align 8
  %arrayidx45 = getelementptr inbounds i16*****, i16****** %46, i64 %idxprom43
  %47 = load i16*****, i16****** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16****, i16***** %47, i64 %idxprom42
  %48 = load i16****, i16***** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i16***, i16**** %48, i64 0
  %49 = load i16***, i16**** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16**, i16*** %49, i64 %idxprom41
  %50 = load i16**, i16*** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i16*, i16** %50, i64 %idxprom40
  %51 = load i16*, i16** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i16, i16* %51, i64 1
  store i16 %40, i16* %arrayidx50, align 2
  %52 = load i32, i32* %l, align 4
  %idxprom51 = sext i32 %52 to i64
  %53 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %53 to i64
  %54 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %55 to i64
  %56 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv55 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %56, i32 0, i32 17
  %57 = load i16******, i16******* %all_mv55, align 8
  %arrayidx56 = getelementptr inbounds i16*****, i16****** %57, i64 %idxprom54
  %58 = load i16*****, i16****** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i16****, i16***** %58, i64 %idxprom53
  %59 = load i16****, i16***** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i16***, i16**** %59, i64 1
  %60 = load i16***, i16**** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i16**, i16*** %60, i64 %idxprom52
  %61 = load i16**, i16*** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %61, i64 %idxprom51
  %62 = load i16*, i16** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %62, i64 0
  %63 = load i16, i16* %arrayidx61, align 2
  %64 = load i32, i32* %l, align 4
  %idxprom62 = sext i32 %64 to i64
  %65 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %65 to i64
  %66 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %66 to i64
  %67 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %67 to i64
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 80
  %69 = load i16******, i16******* %all_mv66, align 8
  %arrayidx67 = getelementptr inbounds i16*****, i16****** %69, i64 %idxprom65
  %70 = load i16*****, i16****** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i16****, i16***** %70, i64 %idxprom64
  %71 = load i16****, i16***** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i16***, i16**** %71, i64 1
  %72 = load i16***, i16**** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i16**, i16*** %72, i64 %idxprom63
  %73 = load i16**, i16*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i16*, i16** %73, i64 %idxprom62
  %74 = load i16*, i16** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %74, i64 0
  store i16 %63, i16* %arrayidx72, align 2
  %75 = load i32, i32* %l, align 4
  %idxprom73 = sext i32 %75 to i64
  %76 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %76 to i64
  %77 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %77 to i64
  %78 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %78 to i64
  %79 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv77 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %79, i32 0, i32 17
  %80 = load i16******, i16******* %all_mv77, align 8
  %arrayidx78 = getelementptr inbounds i16*****, i16****** %80, i64 %idxprom76
  %81 = load i16*****, i16****** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i16****, i16***** %81, i64 %idxprom75
  %82 = load i16****, i16***** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16***, i16**** %82, i64 1
  %83 = load i16***, i16**** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i16**, i16*** %83, i64 %idxprom74
  %84 = load i16**, i16*** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i16*, i16** %84, i64 %idxprom73
  %85 = load i16*, i16** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i16, i16* %85, i64 1
  %86 = load i16, i16* %arrayidx83, align 2
  %87 = load i32, i32* %l, align 4
  %idxprom84 = sext i32 %87 to i64
  %88 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %88 to i64
  %89 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %89 to i64
  %90 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %90 to i64
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 80
  %92 = load i16******, i16******* %all_mv88, align 8
  %arrayidx89 = getelementptr inbounds i16*****, i16****** %92, i64 %idxprom87
  %93 = load i16*****, i16****** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i16****, i16***** %93, i64 %idxprom86
  %94 = load i16****, i16***** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i16***, i16**** %94, i64 1
  %95 = load i16***, i16**** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i16**, i16*** %95, i64 %idxprom85
  %96 = load i16**, i16*** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16*, i16** %96, i64 %idxprom84
  %97 = load i16*, i16** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i16, i16* %97, i64 1
  store i16 %86, i16* %arrayidx94, align 2
  %98 = load i32, i32* %l, align 4
  %idxprom95 = sext i32 %98 to i64
  %99 = load i32, i32* %k, align 4
  %idxprom96 = sext i32 %99 to i64
  %100 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %100 to i64
  %101 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %101 to i64
  %102 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %pred_mv = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %102, i32 0, i32 16
  %103 = load i16******, i16******* %pred_mv, align 8
  %arrayidx99 = getelementptr inbounds i16*****, i16****** %103, i64 %idxprom98
  %104 = load i16*****, i16****** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i16****, i16***** %104, i64 %idxprom97
  %105 = load i16****, i16***** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i16***, i16**** %105, i64 0
  %106 = load i16***, i16**** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i16**, i16*** %106, i64 %idxprom96
  %107 = load i16**, i16*** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i16*, i16** %107, i64 %idxprom95
  %108 = load i16*, i16** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i16, i16* %108, i64 0
  %109 = load i16, i16* %arrayidx104, align 2
  %110 = load i32, i32* %l, align 4
  %idxprom105 = sext i32 %110 to i64
  %111 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %111 to i64
  %112 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %112 to i64
  %113 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %113 to i64
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 79
  %115 = load i16******, i16******* %pred_mv109, align 8
  %arrayidx110 = getelementptr inbounds i16*****, i16****** %115, i64 %idxprom108
  %116 = load i16*****, i16****** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i16****, i16***** %116, i64 %idxprom107
  %117 = load i16****, i16***** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i16***, i16**** %117, i64 0
  %118 = load i16***, i16**** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i16**, i16*** %118, i64 %idxprom106
  %119 = load i16**, i16*** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i16*, i16** %119, i64 %idxprom105
  %120 = load i16*, i16** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i16, i16* %120, i64 0
  store i16 %109, i16* %arrayidx115, align 2
  %121 = load i32, i32* %l, align 4
  %idxprom116 = sext i32 %121 to i64
  %122 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %122 to i64
  %123 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %123 to i64
  %124 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %124 to i64
  %125 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %pred_mv120 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %125, i32 0, i32 16
  %126 = load i16******, i16******* %pred_mv120, align 8
  %arrayidx121 = getelementptr inbounds i16*****, i16****** %126, i64 %idxprom119
  %127 = load i16*****, i16****** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i16****, i16***** %127, i64 %idxprom118
  %128 = load i16****, i16***** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i16***, i16**** %128, i64 0
  %129 = load i16***, i16**** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds i16**, i16*** %129, i64 %idxprom117
  %130 = load i16**, i16*** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i16*, i16** %130, i64 %idxprom116
  %131 = load i16*, i16** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i16, i16* %131, i64 1
  %132 = load i16, i16* %arrayidx126, align 2
  %133 = load i32, i32* %l, align 4
  %idxprom127 = sext i32 %133 to i64
  %134 = load i32, i32* %k, align 4
  %idxprom128 = sext i32 %134 to i64
  %135 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %135 to i64
  %136 = load i32, i32* %j, align 4
  %idxprom130 = sext i32 %136 to i64
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv131 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 79
  %138 = load i16******, i16******* %pred_mv131, align 8
  %arrayidx132 = getelementptr inbounds i16*****, i16****** %138, i64 %idxprom130
  %139 = load i16*****, i16****** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i16****, i16***** %139, i64 %idxprom129
  %140 = load i16****, i16***** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i16***, i16**** %140, i64 0
  %141 = load i16***, i16**** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i16**, i16*** %141, i64 %idxprom128
  %142 = load i16**, i16*** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i16*, i16** %142, i64 %idxprom127
  %143 = load i16*, i16** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i16, i16* %143, i64 1
  store i16 %132, i16* %arrayidx137, align 2
  %144 = load i32, i32* %l, align 4
  %idxprom138 = sext i32 %144 to i64
  %145 = load i32, i32* %k, align 4
  %idxprom139 = sext i32 %145 to i64
  %146 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %146 to i64
  %147 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %147 to i64
  %148 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %pred_mv142 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %148, i32 0, i32 16
  %149 = load i16******, i16******* %pred_mv142, align 8
  %arrayidx143 = getelementptr inbounds i16*****, i16****** %149, i64 %idxprom141
  %150 = load i16*****, i16****** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds i16****, i16***** %150, i64 %idxprom140
  %151 = load i16****, i16***** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i16***, i16**** %151, i64 1
  %152 = load i16***, i16**** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds i16**, i16*** %152, i64 %idxprom139
  %153 = load i16**, i16*** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i16*, i16** %153, i64 %idxprom138
  %154 = load i16*, i16** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i16, i16* %154, i64 0
  %155 = load i16, i16* %arrayidx148, align 2
  %156 = load i32, i32* %l, align 4
  %idxprom149 = sext i32 %156 to i64
  %157 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %157 to i64
  %158 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %158 to i64
  %159 = load i32, i32* %j, align 4
  %idxprom152 = sext i32 %159 to i64
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 79
  %161 = load i16******, i16******* %pred_mv153, align 8
  %arrayidx154 = getelementptr inbounds i16*****, i16****** %161, i64 %idxprom152
  %162 = load i16*****, i16****** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i16****, i16***** %162, i64 %idxprom151
  %163 = load i16****, i16***** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds i16***, i16**** %163, i64 1
  %164 = load i16***, i16**** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds i16**, i16*** %164, i64 %idxprom150
  %165 = load i16**, i16*** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i16*, i16** %165, i64 %idxprom149
  %166 = load i16*, i16** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i16, i16* %166, i64 0
  store i16 %155, i16* %arrayidx159, align 2
  %167 = load i32, i32* %l, align 4
  %idxprom160 = sext i32 %167 to i64
  %168 = load i32, i32* %k, align 4
  %idxprom161 = sext i32 %168 to i64
  %169 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %169 to i64
  %170 = load i32, i32* %j, align 4
  %idxprom163 = sext i32 %170 to i64
  %171 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %pred_mv164 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %171, i32 0, i32 16
  %172 = load i16******, i16******* %pred_mv164, align 8
  %arrayidx165 = getelementptr inbounds i16*****, i16****** %172, i64 %idxprom163
  %173 = load i16*****, i16****** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds i16****, i16***** %173, i64 %idxprom162
  %174 = load i16****, i16***** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i16***, i16**** %174, i64 1
  %175 = load i16***, i16**** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i16**, i16*** %175, i64 %idxprom161
  %176 = load i16**, i16*** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i16*, i16** %176, i64 %idxprom160
  %177 = load i16*, i16** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds i16, i16* %177, i64 1
  %178 = load i16, i16* %arrayidx170, align 2
  %179 = load i32, i32* %l, align 4
  %idxprom171 = sext i32 %179 to i64
  %180 = load i32, i32* %k, align 4
  %idxprom172 = sext i32 %180 to i64
  %181 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %181 to i64
  %182 = load i32, i32* %j, align 4
  %idxprom174 = sext i32 %182 to i64
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv175 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 79
  %184 = load i16******, i16******* %pred_mv175, align 8
  %arrayidx176 = getelementptr inbounds i16*****, i16****** %184, i64 %idxprom174
  %185 = load i16*****, i16****** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds i16****, i16***** %185, i64 %idxprom173
  %186 = load i16****, i16***** %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds i16***, i16**** %186, i64 1
  %187 = load i16***, i16**** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i16**, i16*** %187, i64 %idxprom172
  %188 = load i16**, i16*** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i16*, i16** %188, i64 %idxprom171
  %189 = load i16*, i16** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds i16, i16* %189, i64 1
  store i16 %178, i16* %arrayidx181, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %190 = load i32, i32* %l, align 4
  %inc = add nsw i32 %190, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.end
  %191 = load i32, i32* %k, align 4
  %inc183 = add nsw i32 %191, 1
  store i32 %inc183, i32* %k, align 4
  br label %for.cond.4

for.end.184:                                      ; preds = %for.cond.4
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end.184
  %192 = load i32, i32* %j, align 4
  %inc186 = add nsw i32 %192, 1
  store i32 %inc186, i32* %j, align 4
  br label %for.cond.1

for.end.187:                                      ; preds = %for.cond.1
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.end.187
  %193 = load i32, i32* %i, align 4
  %inc189 = add nsw i32 %193, 1
  store i32 %inc189, i32* %i, align 4
  br label %for.cond

for.end.190:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @buf2img(i16** %imgX, i8* %buf, i32 %size_x, i32 %size_y, i32 %symbol_size_in_bytes) #0 {
entry:
  %imgX.addr = alloca i16**, align 8
  %buf.addr = alloca i8*, align 8
  %size_x.addr = alloca i32, align 4
  %size_y.addr = alloca i32, align 4
  %symbol_size_in_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp16 = alloca i16, align 2
  %ui16 = alloca i16, align 2
  %tmp32 = alloca i64, align 8
  %ui32 = alloca i64, align 8
  store i16** %imgX, i16*** %imgX.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size_x, i32* %size_x.addr, align 4
  store i32 %size_y, i32* %size_y.addr, align 4
  store i32 %symbol_size_in_bytes, i32* %symbol_size_in_bytes.addr, align 4
  %0 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @testEndian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %1 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.17
    i32 4, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.then.2
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %sw.bb
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %size_y.addr, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %size_x.addr, align 4
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %size_x.addr, align 4
  %mul = mul nsw i32 %7, %8
  %add = add nsw i32 %6, %mul
  %idxprom = sext i32 %add to i64
  %9 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %10 to i16
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx12 = getelementptr inbounds i16*, i16** %13, i64 %idxprom11
  %14 = load i16*, i16** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %14, i64 %idxprom10
  store i16 %conv9, i16* %arrayidx13, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %16 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.2
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.39, %sw.bb.17
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %size_y.addr, align 4
  %cmp19 = icmp slt i32 %17, %18
  br i1 %cmp19, label %for.body.21, label %for.end.41

for.body.21:                                      ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.36, %for.body.21
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %size_x.addr, align 4
  %cmp23 = icmp slt i32 %19, %20
  br i1 %cmp23, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.22
  %21 = bitcast i16* %tmp16 to i8*
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %size_x.addr, align 4
  %mul26 = mul nsw i32 %24, %25
  %add27 = add nsw i32 %23, %mul26
  %mul28 = mul nsw i32 %add27, 2
  %idx.ext = sext i32 %mul28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %add.ptr, i64 2, i32 1, i1 false)
  %26 = load i16, i16* %tmp16, align 2
  %conv29 = zext i16 %26 to i32
  %shr = ashr i32 %conv29, 8
  %27 = load i16, i16* %tmp16, align 2
  %conv30 = zext i16 %27 to i32
  %and = and i32 %conv30, 255
  %shl = shl i32 %and, 8
  %or = or i32 %shr, %shl
  %conv31 = trunc i32 %or to i16
  store i16 %conv31, i16* %ui16, align 2
  %28 = load i16, i16* %ui16, align 2
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %30 to i64
  %31 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx34 = getelementptr inbounds i16*, i16** %31, i64 %idxprom33
  %32 = load i16*, i16** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %32, i64 %idxprom32
  store i16 %28, i16* %arrayidx35, align 2
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.25
  %33 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %33, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.22

for.end.38:                                       ; preds = %for.cond.22
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %34 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %34, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.18

for.end.41:                                       ; preds = %for.cond.18
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.then.2
  store i32 0, i32* %j, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.75, %sw.bb.42
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %size_y.addr, align 4
  %cmp44 = icmp slt i32 %35, %36
  br i1 %cmp44, label %for.body.46, label %for.end.77

for.body.46:                                      ; preds = %for.cond.43
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.72, %for.body.46
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %size_x.addr, align 4
  %cmp48 = icmp slt i32 %37, %38
  br i1 %cmp48, label %for.body.50, label %for.end.74

for.body.50:                                      ; preds = %for.cond.47
  %39 = bitcast i64* %tmp32 to i8*
  %40 = load i8*, i8** %buf.addr, align 8
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %size_x.addr, align 4
  %mul51 = mul nsw i32 %42, %43
  %add52 = add nsw i32 %41, %mul51
  %mul53 = mul nsw i32 %add52, 4
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %40, i64 %idx.ext54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %add.ptr55, i64 4, i32 1, i1 false)
  %44 = load i64, i64* %tmp32, align 8
  %and56 = and i64 %44, 65280
  %shl57 = shl i64 %and56, 8
  %45 = load i64, i64* %tmp32, align 8
  %and58 = and i64 %45, 255
  %shl59 = shl i64 %and58, 24
  %or60 = or i64 %shl57, %shl59
  %46 = load i64, i64* %tmp32, align 8
  %and61 = and i64 %46, 16711680
  %shr62 = lshr i64 %and61, 8
  %or63 = or i64 %or60, %shr62
  %47 = load i64, i64* %tmp32, align 8
  %and64 = and i64 %47, 4278190080
  %shr65 = lshr i64 %and64, 24
  %or66 = or i64 %or63, %shr65
  store i64 %or66, i64* %ui32, align 8
  %48 = load i64, i64* %ui32, align 8
  %conv67 = trunc i64 %48 to i16
  %49 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %49 to i64
  %50 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %50 to i64
  %51 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx70 = getelementptr inbounds i16*, i16** %51, i64 %idxprom69
  %52 = load i16*, i16** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %52, i64 %idxprom68
  store i16 %conv67, i16* %arrayidx71, align 2
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.50
  %53 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %53, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.47

for.end.74:                                       ; preds = %for.cond.47
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %54 = load i32, i32* %j, align 4
  %inc76 = add nsw i32 %54, 1
  store i32 %inc76, i32* %j, align 4
  br label %for.cond.43

for.end.77:                                       ; preds = %for.cond.43
  br label %sw.default

sw.default:                                       ; preds = %if.then.2, %for.end.77
  call void @error(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i32 0, i32 0), i32 500)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.41, %for.end.16
  br label %if.end.106

if.else:                                          ; preds = %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.103, %if.else
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %size_y.addr, align 4
  %cmp79 = icmp slt i32 %55, %56
  br i1 %cmp79, label %for.body.81, label %for.end.105

for.body.81:                                      ; preds = %for.cond.78
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.100, %for.body.81
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %size_x.addr, align 4
  %cmp83 = icmp slt i32 %57, %58
  br i1 %cmp83, label %for.body.85, label %for.end.102

for.body.85:                                      ; preds = %for.cond.82
  %59 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %59 to i64
  %60 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %60 to i64
  %61 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx88 = getelementptr inbounds i16*, i16** %61, i64 %idxprom87
  %62 = load i16*, i16** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %62, i64 %idxprom86
  store i16 0, i16* %arrayidx89, align 2
  %63 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %63 to i64
  %64 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %64 to i64
  %65 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx92 = getelementptr inbounds i16*, i16** %65, i64 %idxprom91
  %66 = load i16*, i16** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %66, i64 %idxprom90
  %67 = bitcast i16* %arrayidx93 to i8*
  %68 = load i8*, i8** %buf.addr, align 8
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* %size_x.addr, align 4
  %mul94 = mul nsw i32 %70, %71
  %add95 = add nsw i32 %69, %mul94
  %72 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %mul96 = mul nsw i32 %add95, %72
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %68, i64 %idx.ext97
  %73 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %conv99 = sext i32 %73 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %add.ptr98, i64 %conv99, i32 1, i1 false)
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.85
  %74 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %74, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond.82

for.end.102:                                      ; preds = %for.cond.82
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end.102
  %75 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %75, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond.78

for.end.105:                                      ; preds = %for.cond.78
  br label %if.end.106

if.end.106:                                       ; preds = %for.end.105, %sw.epilog
  ret void
}

declare i32 @testEndian() #1

declare %struct._IO_FILE* @fopen64(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @writeUnit(%struct.Bitstream* %currStream, i32 %partition) #0 {
entry:
  %currStream.addr = alloca %struct.Bitstream*, align 8
  %partition.addr = alloca i32, align 4
  %buffer_size = alloca i32, align 4
  %nalu = alloca %struct.NALU_t*, align 8
  store %struct.Bitstream* %currStream, %struct.Bitstream** %currStream.addr, align 8
  store i32 %partition, i32* %partition.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 120
  %1 = load i32, i32* %FrameSizeInMbs, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 142
  %3 = load i32, i32* %bitdepth_luma, align 4
  %mul = mul nsw i32 256, %3
  %add = add nsw i32 128, %mul
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 143
  %5 = load i32, i32* %bitdepth_chroma, align 4
  %mul1 = mul nsw i32 512, %5
  %add2 = add nsw i32 %add, %mul1
  %mul3 = mul i32 %1, %add2
  %add4 = add i32 500, %mul3
  store i32 %add4, i32* %buffer_size, align 4
  %6 = load i32, i32* %buffer_size, align 4
  %call = call %struct.NALU_t* @AllocNALU(i32 %6)
  store %struct.NALU_t* %call, %struct.NALU_t** %nalu, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %9 = load i32, i32* %partition.addr, align 4
  %cmp5 = icmp eq i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %cond = select i1 %10, i32 3, i32 2
  %add6 = add nsw i32 1, %cond
  %11 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %11, i32 0, i32 0
  store i32 %add6, i32* %startcodeprefix_len, align 4
  %12 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %12, i32 0, i32 0
  %13 = load i32, i32* %byte_pos, align 4
  %add7 = add nsw i32 %13, 1
  %14 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %14, i32 0, i32 1
  store i32 %add7, i32* %len, align 4
  %15 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %15, i32 0, i32 6
  %16 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 9
  %18 = load i8*, i8** %streamBuffer, align 8
  %19 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len8 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %19, i32 0, i32 1
  %20 = load i32, i32* %len8, align 4
  %sub = sub i32 %20, 1
  %conv = zext i32 %sub to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %18, i64 %conv, i32 1, i1 false)
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 59
  %22 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %22, i32 0, i32 1
  %23 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %24 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %24, i32 0, i32 3
  store i32 5, i32* %nal_unit_type, align 4
  %25 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %25, i32 0, i32 4
  store i32 3, i32* %nal_reference_idc, align 4
  br label %if.end.46

if.else:                                          ; preds = %land.end
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 5
  %27 = load i32, i32* %type, align 4
  %cmp9 = icmp eq i32 %27, 1
  br i1 %cmp9, label %if.then.11, label %if.else.27

if.then.11:                                       ; preds = %if.else
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 76
  %29 = load i32, i32* %partition_mode, align 4
  %cmp12 = icmp eq i32 %29, 0
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.then.11
  %30 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type15 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %30, i32 0, i32 3
  store i32 1, i32* %nal_unit_type15, align 4
  br label %if.end

if.else.16:                                       ; preds = %if.then.11
  %31 = load i32, i32* %partition.addr, align 4
  %add17 = add nsw i32 2, %31
  %32 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type18 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %32, i32 0, i32 3
  store i32 %add17, i32* %nal_unit_type18, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.14
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 122
  %34 = load i32, i32* %nal_reference_idc19, align 4
  %cmp20 = icmp ne i32 %34, 0
  br i1 %cmp20, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.end
  %35 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc23 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %35, i32 0, i32 4
  store i32 2, i32* %nal_reference_idc23, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %if.end
  %36 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc25 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %36, i32 0, i32 4
  store i32 0, i32* %nal_reference_idc25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.22
  br label %if.end.45

if.else.27:                                       ; preds = %if.else
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 76
  %38 = load i32, i32* %partition_mode28, align 4
  %cmp29 = icmp eq i32 %38, 0
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.27
  %39 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type32 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %39, i32 0, i32 3
  store i32 1, i32* %nal_unit_type32, align 4
  br label %if.end.36

if.else.33:                                       ; preds = %if.else.27
  %40 = load i32, i32* %partition.addr, align 4
  %add34 = add nsw i32 2, %40
  %41 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type35 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %41, i32 0, i32 3
  store i32 %add34, i32* %nal_unit_type35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.31
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 122
  %43 = load i32, i32* %nal_reference_idc37, align 4
  %cmp38 = icmp ne i32 %43, 0
  br i1 %cmp38, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.end.36
  %44 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc41 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %44, i32 0, i32 4
  store i32 2, i32* %nal_reference_idc41, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %if.end.36
  %45 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc43 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %45, i32 0, i32 4
  store i32 0, i32* %nal_reference_idc43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.26
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then
  %46 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %forbidden_bit = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %46, i32 0, i32 5
  store i32 0, i32* %forbidden_bit, align 4
  %47 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %48 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call47 = call i32 %47(%struct.NALU_t* %48)
  %conv48 = sext i32 %call47 to i64
  %49 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %49, i32 0, i32 4
  %50 = load i64, i64* %bit_ctr, align 8
  %add49 = add nsw i64 %50, %conv48
  store i64 %add49, i64* %bit_ctr, align 8
  %51 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %51)
  ret void
}

declare %struct.NALU_t* @AllocNALU(i32) #1

declare void @FreeNALU(%struct.NALU_t*) #1

declare void @combine_field() #1

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare i32 @decide_fld_frame(float, float, i32, i32, double) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #5 {
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

declare void @UpdateSubseqInfo(i32) #1

declare void @UpdateSceneInformation(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @init_dec_ref_pic_marking_buffer() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 126
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #5 {
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
define internal i32 @imin(i32 %a, i32 %b) #5 {
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

; Function Attrs: nounwind
declare double @log10(double) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i64 @read(i32, i8*, i64) #1

declare void @report_stats_on_error() #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @test_wp_P_slice(i32) #1

declare i32 @picture_coding_decision(%struct.Picture*, %struct.Picture*, i32) #1

declare i32 @test_wp_B_slice(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
