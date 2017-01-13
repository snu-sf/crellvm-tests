; ModuleID = './MultiSource.Applications.JM/70.lencod.cabac.bc'
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
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)* }

@last_dquant = global i32 0, align 4
@img = external global %struct.ImageParameters*, align 8
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"create_contexts_MotionInfo: enco_ctx\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"create_contexts_TextureInfo: enco_ctx\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Unsupported MB-MODE in writeMB_typeInfo_CABAC!\0A\00", align 1
@enc_picture = external global %struct.storable_picture*, align 8
@giRDOpt_B8OnlyFlag = common global i32 0, align 4
@type2ctx_bcbp = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@maxpos = internal constant [10 x i32] [i32 16, i32 15, i32 64, i32 32, i32 32, i32 16, i32 4, i32 15, i32 8, i32 16], align 16
@type2ctx_map = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 6, i32 6], align 16
@type2ctx_last = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 6, i32 6], align 16
@c1isdc = internal constant [10 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1], align 16
@pos2ctx_map = internal global [10 x i32*] [i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @pos2ctx_map8x8, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map8x4, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map8x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4c, i32 0, i32 0)], align 16
@pos2ctx_last = internal global [10 x i32*] [i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @pos2ctx_last8x8, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_last8x4, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_last8x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4c, i32 0, i32 0)], align 16
@pos2ctx_map_int = internal global [10 x i32*] [i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @pos2ctx_map8x8i, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map8x4i, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map4x8i, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4c, i32 0, i32 0)], align 16
@type2ctx_one = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@max_c2 = internal constant [10 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 4, i32 3, i32 3], align 16
@type2ctx_abs = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@writeRunLevel_CABAC.coeff = internal global [64 x i32] zeroinitializer, align 16
@writeRunLevel_CABAC.coeff_ctr = internal global i32 0, align 4
@writeRunLevel_CABAC.pos = internal global i32 0, align 4
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
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@pos2ctx_map4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 14], align 16
@pos2ctx_map8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 5, i32 4, i32 4, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 6, i32 7, i32 7, i32 7, i32 8, i32 9, i32 10, i32 9, i32 8, i32 7, i32 7, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 7, i32 8, i32 9, i32 14, i32 10, i32 9, i32 8, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 9, i32 14, i32 10, i32 9, i32 11, i32 12, i32 13, i32 11, i32 14, i32 10, i32 12, i32 14], align 16
@pos2ctx_map8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 12, i32 8, i32 9, i32 10, i32 11, i32 9, i32 13, i32 13, i32 14, i32 14], align 16
@pos2ctx_map2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_last4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@pos2ctx_last8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 8], align 16
@pos2ctx_last8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8], align 16
@pos2ctx_last2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_last4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map8x8i = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 8, i32 4, i32 5, i32 6, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14], align 16
@pos2ctx_map8x4i = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 7, i32 6, i32 8, i32 9, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 12, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 14], align 16
@pos2ctx_map4x8i = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 6, i32 2, i32 7, i32 7, i32 8, i32 8, i32 8, i32 5, i32 6, i32 9, i32 10, i32 10, i32 11, i32 11, i32 11, i32 12, i32 13, i32 13, i32 14, i32 14, i32 14], align 16

; Function Attrs: nounwind uwtable
define void @cabac_new_slice() #0 {
entry:
  store i32 0, i32* @last_dquant, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @CheckAvailabilityOfNeighborsCABAC() #0 {
entry:
  %mb_nr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %up = alloca %struct.pix_pos, align 4
  %left = alloca %struct.pix_pos, align 4
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
  %5 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %6 = load i32, i32* %mb_nr, align 4
  call void %5(i32 %6, i32 -1, i32 0, i32 0, %struct.pix_pos* %left)
  %7 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %8 = load i32, i32* %mb_nr, align 4
  call void %7(i32 %8, i32 0, i32 -1, i32 0, %struct.pix_pos* %up)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %9 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 1
  %10 = load i32, i32* %mb_addr, align 4
  %idxprom1 = sext i32 %10 to i64
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 61
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_data2, align 8
  %arrayidx3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i64 %idxprom1
  %13 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i32 0, i32 6
  store %struct.macroblock* %arrayidx3, %struct.macroblock** %mb_available_up, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 6
  store %struct.macroblock* null, %struct.macroblock** %mb_available_up4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %available5 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left, i32 0, i32 0
  %15 = load i32, i32* %available5, align 4
  %tobool6 = icmp ne i32 %15, 0
  br i1 %tobool6, label %if.then.7, label %if.else.12

if.then.7:                                        ; preds = %if.end
  %mb_addr8 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left, i32 0, i32 1
  %16 = load i32, i32* %mb_addr8, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 61
  %18 = load %struct.macroblock*, %struct.macroblock** %mb_data10, align 8
  %arrayidx11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i64 %idxprom9
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 7
  store %struct.macroblock* %arrayidx11, %struct.macroblock** %mb_available_left, align 8
  br label %if.end.14

if.else.12:                                       ; preds = %if.end
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left13 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 7
  store %struct.macroblock* null, %struct.macroblock** %mb_available_left13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.7
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.MotionInfoContexts* @create_contexts_MotionInfo() #0 {
entry:
  %enco_ctx = alloca %struct.MotionInfoContexts*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 1504) #5
  %0 = bitcast i8* %call to %struct.MotionInfoContexts*
  store %struct.MotionInfoContexts* %0, %struct.MotionInfoContexts** %enco_ctx, align 8
  %1 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %enco_ctx, align 8
  %cmp = icmp eq %struct.MotionInfoContexts* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %enco_ctx, align 8
  ret %struct.MotionInfoContexts* %2
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.TextureInfoContexts* @create_contexts_TextureInfo() #0 {
entry:
  %enco_ctx = alloca %struct.TextureInfoContexts*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 12128) #5
  %0 = bitcast i8* %call to %struct.TextureInfoContexts*
  store %struct.TextureInfoContexts* %0, %struct.TextureInfoContexts** %enco_ctx, align 8
  %1 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %enco_ctx, align 8
  %cmp = icmp eq %struct.TextureInfoContexts* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %enco_ctx, align 8
  ret %struct.TextureInfoContexts* %2
}

; Function Attrs: nounwind uwtable
define void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %enco_ctx) #0 {
entry:
  %enco_ctx.addr = alloca %struct.MotionInfoContexts*, align 8
  store %struct.MotionInfoContexts* %enco_ctx, %struct.MotionInfoContexts** %enco_ctx.addr, align 8
  %0 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %enco_ctx.addr, align 8
  %cmp = icmp eq %struct.MotionInfoContexts* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %enco_ctx.addr, align 8
  %2 = bitcast %struct.MotionInfoContexts* %1 to i8*
  call void @free(i8* %2) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %enco_ctx) #0 {
entry:
  %enco_ctx.addr = alloca %struct.TextureInfoContexts*, align 8
  store %struct.TextureInfoContexts* %enco_ctx, %struct.TextureInfoContexts** %enco_ctx.addr, align 8
  %0 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %enco_ctx.addr, align 8
  %cmp = icmp eq %struct.TextureInfoContexts* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %enco_ctx.addr, align 8
  %2 = bitcast %struct.TextureInfoContexts* %1 to i8*
  call void @free(i8* %2) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeFieldModeInfo_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %mb_field = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 60
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 7
  %4 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %4, %struct.MotionInfoContexts** %ctx, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 3
  %6 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 61
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %9 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %9, i32 0, i32 1
  %10 = load i32, i32* %value1, align 4
  store i32 %10, i32* %mb_field, align 4
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 26
  %12 = load i32, i32* %mbAvailA, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i32 0, i32 22
  %14 = load i32, i32* %mbAddrA, align 4
  %idxprom1 = sext i32 %14 to i64
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 61
  %16 = load %struct.macroblock*, %struct.macroblock** %mb_data2, align 8
  %arrayidx3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i64 %idxprom1
  %mb_field4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx3, i32 0, i32 19
  %17 = load i32, i32* %mb_field4, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %a, align 4
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 27
  %19 = load i32, i32* %mbAvailB, align 4
  %tobool5 = icmp ne i32 %19, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.11

cond.true.6:                                      ; preds = %cond.end
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 23
  %21 = load i32, i32* %mbAddrB, align 4
  %idxprom7 = sext i32 %21 to i64
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 61
  %23 = load %struct.macroblock*, %struct.macroblock** %mb_data8, align 8
  %arrayidx9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i64 %idxprom7
  %mb_field10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx9, i32 0, i32 19
  %24 = load i32, i32* %mb_field10, align 4
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.6
  %cond13 = phi i32 [ %24, %cond.true.6 ], [ 0, %cond.false.11 ]
  store i32 %cond13, i32* %b, align 4
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %b, align 4
  %add = add nsw i32 %25, %26
  store i32 %add, i32* %act_ctx, align 4
  %27 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %28 = load i32, i32* %mb_field, align 4
  %cmp = icmp ne i32 %28, 0
  %conv = zext i1 %cmp to i32
  %conv14 = trunc i32 %conv to i16
  %29 = load i32, i32* %act_ctx, align 4
  %idxprom15 = sext i32 %29 to i64
  %30 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_aff_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %30, i32 0, i32 5
  %arrayidx16 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %mb_aff_contexts, i32 0, i64 %idxprom15
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %27, i16 signext %conv14, %struct.BiContextType* %arrayidx16)
  %31 = load i32, i32* %act_ctx, align 4
  %32 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %32, i32 0, i32 6
  store i32 %31, i32* %context, align 4
  %33 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %33, i32 0, i32 0
  %34 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call17 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %35)
  %36 = load i32, i32* %curr_len, align 4
  %sub = sub nsw i32 %call17, %36
  %37 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %37, i32 0, i32 3
  store i32 %sub, i32* %len, align 4
  ret void
}

declare i32 @arienco_bits_written(%struct.EncodingEnvironment*) #2

declare void @biari_encode_symbol(%struct.EncodingEnvironment*, i16 signext, %struct.BiContextType*) #2

; Function Attrs: nounwind uwtable
define void @writeMB_skip_flagInfo_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %bframe = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %curr_mb_type = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 5
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 60
  %5 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %5, i32 0, i32 7
  %6 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %6, %struct.MotionInfoContexts** %ctx, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 61
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %11 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %11, i32 0, i32 1
  %12 = load i32, i32* %value1, align 4
  store i32 %12, i32* %curr_mb_type, align 4
  %13 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else.41

if.then:                                          ; preds = %entry
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 6
  %15 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp1 = icmp eq %struct.macroblock* %15, null
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 6
  %17 = load %struct.macroblock*, %struct.macroblock** %mb_available_up4, align 8
  %skip_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 43
  %18 = load i32, i32* %skip_flag, align 4
  %cmp5 = icmp eq i32 %18, 0
  %cond = select i1 %cmp5, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 7
  %20 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp7 = icmp eq %struct.macroblock* %20, null
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %a, align 4
  br label %if.end.16

if.else.10:                                       ; preds = %if.end
  %21 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 7
  %22 = load %struct.macroblock*, %struct.macroblock** %mb_available_left11, align 8
  %skip_flag12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 43
  %23 = load i32, i32* %skip_flag12, align 4
  %cmp13 = icmp eq i32 %23, 0
  %cond15 = select i1 %cmp13, i32 1, i32 0
  store i32 %cond15, i32* %a, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.10, %if.then.9
  %24 = load i32, i32* %a, align 4
  %add = add nsw i32 7, %24
  %25 = load i32, i32* %b, align 4
  %add17 = add nsw i32 %add, %25
  store i32 %add17, i32* %act_ctx, align 4
  %26 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value118 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %26, i32 0, i32 1
  %27 = load i32, i32* %value118, align 4
  %cmp19 = icmp eq i32 %27, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else.27

land.lhs.true:                                    ; preds = %if.end.16
  %28 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %28, i32 0, i32 2
  %29 = load i32, i32* %value2, align 4
  %cmp21 = icmp eq i32 %29, 0
  br i1 %cmp21, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %land.lhs.true
  %30 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %31 = load i32, i32* %act_ctx, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %32, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts, i32 0, i64 2
  %arrayidx26 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx25, i32 0, i64 %idxprom24
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %30, i16 signext 1, %struct.BiContextType* %arrayidx26)
  br label %if.end.32

if.else.27:                                       ; preds = %land.lhs.true, %if.end.16
  %33 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %34 = load i32, i32* %act_ctx, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts29 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %35, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts29, i32 0, i64 2
  %arrayidx31 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx30, i32 0, i64 %idxprom28
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %33, i16 signext 0, %struct.BiContextType* %arrayidx31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.27, %if.then.23
  %36 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value133 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %36, i32 0, i32 1
  %37 = load i32, i32* %value133, align 4
  %cmp34 = icmp eq i32 %37, 0
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.32
  %38 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value236 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %38, i32 0, i32 2
  %39 = load i32, i32* %value236, align 4
  %cmp37 = icmp eq i32 %39, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.32
  %40 = phi i1 [ false, %if.end.32 ], [ %cmp37, %land.rhs ]
  %cond39 = select i1 %40, i32 1, i32 0
  %41 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %skip_flag40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %41, i32 0, i32 43
  store i32 %cond39, i32* %skip_flag40, align 4
  br label %if.end.82

if.else.41:                                       ; preds = %entry
  %42 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up42 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i32 0, i32 6
  %43 = load %struct.macroblock*, %struct.macroblock** %mb_available_up42, align 8
  %cmp43 = icmp eq %struct.macroblock* %43, null
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.41
  store i32 0, i32* %b, align 4
  br label %if.end.52

if.else.46:                                       ; preds = %if.else.41
  %44 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up47 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %44, i32 0, i32 6
  %45 = load %struct.macroblock*, %struct.macroblock** %mb_available_up47, align 8
  %skip_flag48 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %45, i32 0, i32 43
  %46 = load i32, i32* %skip_flag48, align 4
  %cmp49 = icmp eq i32 %46, 0
  %cond51 = select i1 %cmp49, i32 1, i32 0
  store i32 %cond51, i32* %b, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.46, %if.then.45
  %47 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left53 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 7
  %48 = load %struct.macroblock*, %struct.macroblock** %mb_available_left53, align 8
  %cmp54 = icmp eq %struct.macroblock* %48, null
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.52
  store i32 0, i32* %a, align 4
  br label %if.end.63

if.else.57:                                       ; preds = %if.end.52
  %49 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left58 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i32 0, i32 7
  %50 = load %struct.macroblock*, %struct.macroblock** %mb_available_left58, align 8
  %skip_flag59 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %50, i32 0, i32 43
  %51 = load i32, i32* %skip_flag59, align 4
  %cmp60 = icmp eq i32 %51, 0
  %cond62 = select i1 %cmp60, i32 1, i32 0
  store i32 %cond62, i32* %a, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.57, %if.then.56
  %52 = load i32, i32* %a, align 4
  %53 = load i32, i32* %b, align 4
  %add64 = add nsw i32 %52, %53
  store i32 %add64, i32* %act_ctx, align 4
  %54 = load i32, i32* %curr_mb_type, align 4
  %cmp65 = icmp eq i32 %54, 0
  br i1 %cmp65, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.end.63
  %55 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %56 = load i32, i32* %act_ctx, align 4
  %idxprom68 = sext i32 %56 to i64
  %57 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts69 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %57, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts69, i32 0, i64 1
  %arrayidx71 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx70, i32 0, i64 %idxprom68
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %55, i16 signext 1, %struct.BiContextType* %arrayidx71)
  br label %if.end.77

if.else.72:                                       ; preds = %if.end.63
  %58 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %59 = load i32, i32* %act_ctx, align 4
  %idxprom73 = sext i32 %59 to i64
  %60 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts74 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %60, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts74, i32 0, i64 1
  %arrayidx76 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx75, i32 0, i64 %idxprom73
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %58, i16 signext 0, %struct.BiContextType* %arrayidx76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.72, %if.then.67
  %61 = load i32, i32* %curr_mb_type, align 4
  %cmp78 = icmp eq i32 %61, 0
  %cond80 = select i1 %cmp78, i32 1, i32 0
  %62 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %skip_flag81 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %62, i32 0, i32 43
  store i32 %cond80, i32* %skip_flag81, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.77, %land.end
  %63 = load i32, i32* %act_ctx, align 4
  %64 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %64, i32 0, i32 6
  store i32 %63, i32* %context, align 4
  %65 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %65, i32 0, i32 0
  %66 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %66, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %67 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call83 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %67)
  %68 = load i32, i32* %curr_len, align 4
  %sub = sub nsw i32 %call83, %68
  %69 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %69, i32 0, i32 3
  store i32 %sub, i32* %len, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeMB_transform_size_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  store i32 0, i32* %act_ctx, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 60
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 7
  %4 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %4, %struct.MotionInfoContexts** %ctx, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 3
  %6 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 61
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 6
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp = icmp eq %struct.macroblock* %10, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 6
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_available_up1, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 31
  %13 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, i32* %b, align 4
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 7
  %15 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp2 = icmp eq %struct.macroblock* %15, null
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  br label %cond.end.7

cond.false.4:                                     ; preds = %cond.end
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 7
  %17 = load %struct.macroblock*, %struct.macroblock** %mb_available_left5, align 8
  %luma_transform_size_8x8_flag6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 31
  %18 = load i32, i32* %luma_transform_size_8x8_flag6, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.4, %cond.true.3
  %cond8 = phi i32 [ 0, %cond.true.3 ], [ %18, %cond.false.4 ]
  store i32 %cond8, i32* %a, align 4
  %19 = load i32, i32* %a, align 4
  %20 = load i32, i32* %b, align 4
  %add = add nsw i32 %19, %20
  store i32 %add, i32* %act_ctx, align 4
  %21 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 31
  %22 = load i32, i32* %luma_transform_size_8x8_flag9, align 4
  store i32 %22, i32* %act_sym, align 4
  %23 = load i32, i32* %act_ctx, align 4
  %24 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %24, i32 0, i32 6
  store i32 %23, i32* %context, align 4
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %26 = load i32, i32* %act_sym, align 4
  %cmp10 = icmp ne i32 %26, 0
  %conv = zext i1 %cmp10 to i32
  %conv11 = trunc i32 %conv to i16
  %27 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %transform_size_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %27, i32 0, i32 6
  %arraydecay = getelementptr inbounds [3 x %struct.BiContextType], [3 x %struct.BiContextType]* %transform_size_contexts, i32 0, i32 0
  %28 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %25, i16 signext %conv11, %struct.BiContextType* %add.ptr)
  %29 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %29, i32 0, i32 0
  %30 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %30, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call12 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %31)
  %32 = load i32, i32* %curr_len, align 4
  %sub = sub nsw i32 %call12, %32
  %33 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %33, i32 0, i32 3
  store i32 %sub, i32* %len, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeMB_typeInfo_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %csym = alloca i16, align 2
  %bframe = alloca i32, align 4
  %mode_sym = alloca i32, align 4
  %mode16x16 = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %curr_mb_type = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  store i32 0, i32* %act_ctx, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 5
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  store i32 0, i32* %mode_sym, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 60
  %5 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %5, i32 0, i32 7
  %6 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %6, %struct.MotionInfoContexts** %ctx, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 61
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %11 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %11, i32 0, i32 1
  %12 = load i32, i32* %value1, align 4
  store i32 %12, i32* %curr_mb_type, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 5
  %14 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %14, 2
  br i1 %cmp2, label %if.then, label %if.else.94

if.then:                                          ; preds = %entry
  %15 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 6
  %16 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp4 = icmp eq %struct.macroblock* %16, null
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 6
  %18 = load %struct.macroblock*, %struct.macroblock** %mb_available_up7, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 8
  %19 = load i32, i32* %mb_type, align 4
  %cmp8 = icmp ne i32 %19, 9
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 6
  %21 = load %struct.macroblock*, %struct.macroblock** %mb_available_up10, align 8
  %mb_type11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 8
  %22 = load i32, i32* %mb_type11, align 4
  %cmp12 = icmp ne i32 %22, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %23 = phi i1 [ false, %if.else ], [ %cmp12, %land.rhs ]
  %cond = select i1 %23, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then.6
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 7
  %25 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp14 = icmp eq %struct.macroblock* %25, null
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end
  store i32 0, i32* %a, align 4
  br label %if.end.29

if.else.17:                                       ; preds = %if.end
  %26 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i32 0, i32 7
  %27 = load %struct.macroblock*, %struct.macroblock** %mb_available_left18, align 8
  %mb_type19 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 8
  %28 = load i32, i32* %mb_type19, align 4
  %cmp20 = icmp ne i32 %28, 9
  br i1 %cmp20, label %land.rhs.22, label %land.end.27

land.rhs.22:                                      ; preds = %if.else.17
  %29 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 7
  %30 = load %struct.macroblock*, %struct.macroblock** %mb_available_left23, align 8
  %mb_type24 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i32 0, i32 8
  %31 = load i32, i32* %mb_type24, align 4
  %cmp25 = icmp ne i32 %31, 13
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.22, %if.else.17
  %32 = phi i1 [ false, %if.else.17 ], [ %cmp25, %land.rhs.22 ]
  %cond28 = select i1 %32, i32 1, i32 0
  store i32 %cond28, i32* %a, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %land.end.27, %if.then.16
  %33 = load i32, i32* %a, align 4
  %34 = load i32, i32* %b, align 4
  %add = add nsw i32 %33, %34
  store i32 %add, i32* %act_ctx, align 4
  %35 = load i32, i32* %curr_mb_type, align 4
  store i32 %35, i32* %act_sym, align 4
  %36 = load i32, i32* %act_ctx, align 4
  %37 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %37, i32 0, i32 6
  store i32 %36, i32* %context, align 4
  %38 = load i32, i32* %act_sym, align 4
  %cmp30 = icmp eq i32 %38, 0
  br i1 %cmp30, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.end.29
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %40 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %40, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts, i32 0, i64 0
  %arraydecay = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx33, i32 0, i32 0
  %41 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %41 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %39, i16 signext 0, %struct.BiContextType* %add.ptr)
  br label %if.end.93

if.else.34:                                       ; preds = %if.end.29
  %42 = load i32, i32* %act_sym, align 4
  %cmp35 = icmp eq i32 %42, 25
  br i1 %cmp35, label %if.then.37, label %if.else.43

if.then.37:                                       ; preds = %if.else.34
  %43 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %44 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts38 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %44, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts38, i32 0, i64 0
  %arraydecay40 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx39, i32 0, i32 0
  %45 = load i32, i32* %act_ctx, align 4
  %idx.ext41 = sext i32 %45 to i64
  %add.ptr42 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay40, i64 %idx.ext41
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %43, i16 signext 1, %struct.BiContextType* %add.ptr42)
  %46 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %46, i16 signext 1)
  br label %if.end.92

if.else.43:                                       ; preds = %if.else.34
  %47 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %48 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts44 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %48, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts44, i32 0, i64 0
  %arraydecay46 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx45, i32 0, i32 0
  %49 = load i32, i32* %act_ctx, align 4
  %idx.ext47 = sext i32 %49 to i64
  %add.ptr48 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay46, i64 %idx.ext47
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %47, i16 signext 1, %struct.BiContextType* %add.ptr48)
  %50 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %50, i16 signext 0)
  %51 = load i32, i32* %act_sym, align 4
  %sub = sub nsw i32 %51, 1
  store i32 %sub, i32* %mode_sym, align 4
  store i32 4, i32* %act_ctx, align 4
  %52 = load i32, i32* %mode_sym, align 4
  %div = sdiv i32 %52, 12
  store i32 %div, i32* %act_sym, align 4
  %53 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %54 = load i32, i32* %act_sym, align 4
  %conv49 = trunc i32 %54 to i16
  %55 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts50 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %55, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts50, i32 0, i64 0
  %arraydecay52 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx51, i32 0, i32 0
  %56 = load i32, i32* %act_ctx, align 4
  %idx.ext53 = sext i32 %56 to i64
  %add.ptr54 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay52, i64 %idx.ext53
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %53, i16 signext %conv49, %struct.BiContextType* %add.ptr54)
  %57 = load i32, i32* %mode_sym, align 4
  %rem = srem i32 %57, 12
  store i32 %rem, i32* %mode_sym, align 4
  %58 = load i32, i32* %mode_sym, align 4
  %div55 = sdiv i32 %58, 4
  store i32 %div55, i32* %act_sym, align 4
  store i32 5, i32* %act_ctx, align 4
  %59 = load i32, i32* %act_sym, align 4
  %cmp56 = icmp eq i32 %59, 0
  br i1 %cmp56, label %if.then.58, label %if.else.64

if.then.58:                                       ; preds = %if.else.43
  %60 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %61 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts59 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %61, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts59, i32 0, i64 0
  %arraydecay61 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx60, i32 0, i32 0
  %62 = load i32, i32* %act_ctx, align 4
  %idx.ext62 = sext i32 %62 to i64
  %add.ptr63 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay61, i64 %idx.ext62
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %60, i16 signext 0, %struct.BiContextType* %add.ptr63)
  br label %if.end.78

if.else.64:                                       ; preds = %if.else.43
  %63 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %64 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts65 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %64, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts65, i32 0, i64 0
  %arraydecay67 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx66, i32 0, i32 0
  %65 = load i32, i32* %act_ctx, align 4
  %idx.ext68 = sext i32 %65 to i64
  %add.ptr69 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay67, i64 %idx.ext68
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %63, i16 signext 1, %struct.BiContextType* %add.ptr69)
  store i32 6, i32* %act_ctx, align 4
  %66 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %67 = load i32, i32* %act_sym, align 4
  %cmp70 = icmp ne i32 %67, 1
  %conv71 = zext i1 %cmp70 to i32
  %conv72 = trunc i32 %conv71 to i16
  %68 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts73 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %68, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts73, i32 0, i64 0
  %arraydecay75 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx74, i32 0, i32 0
  %69 = load i32, i32* %act_ctx, align 4
  %idx.ext76 = sext i32 %69 to i64
  %add.ptr77 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay75, i64 %idx.ext76
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %66, i16 signext %conv72, %struct.BiContextType* %add.ptr77)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.64, %if.then.58
  %70 = load i32, i32* %mode_sym, align 4
  %and = and i32 %70, 3
  store i32 %and, i32* %mode_sym, align 4
  %71 = load i32, i32* %mode_sym, align 4
  %shr = ashr i32 %71, 1
  store i32 %shr, i32* %act_sym, align 4
  store i32 7, i32* %act_ctx, align 4
  %72 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %73 = load i32, i32* %act_sym, align 4
  %conv79 = trunc i32 %73 to i16
  %74 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts80 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %74, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts80, i32 0, i64 0
  %arraydecay82 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx81, i32 0, i32 0
  %75 = load i32, i32* %act_ctx, align 4
  %idx.ext83 = sext i32 %75 to i64
  %add.ptr84 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay82, i64 %idx.ext83
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %72, i16 signext %conv79, %struct.BiContextType* %add.ptr84)
  store i32 8, i32* %act_ctx, align 4
  %76 = load i32, i32* %mode_sym, align 4
  %and85 = and i32 %76, 1
  store i32 %and85, i32* %act_sym, align 4
  %77 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %78 = load i32, i32* %act_sym, align 4
  %conv86 = trunc i32 %78 to i16
  %79 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts87 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %79, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts87, i32 0, i64 0
  %arraydecay89 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx88, i32 0, i32 0
  %80 = load i32, i32* %act_ctx, align 4
  %idx.ext90 = sext i32 %80 to i64
  %add.ptr91 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay89, i64 %idx.ext90
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %77, i16 signext %conv86, %struct.BiContextType* %add.ptr91)
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.78, %if.then.37
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.32
  br label %if.end.395

if.else.94:                                       ; preds = %entry
  %81 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %81, 0
  br i1 %tobool, label %if.then.95, label %if.end.120

if.then.95:                                       ; preds = %if.else.94
  %82 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up96 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 6
  %83 = load %struct.macroblock*, %struct.macroblock** %mb_available_up96, align 8
  %cmp97 = icmp eq %struct.macroblock* %83, null
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.then.95
  store i32 0, i32* %b, align 4
  br label %if.end.106

if.else.100:                                      ; preds = %if.then.95
  %84 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up101 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i32 0, i32 6
  %85 = load %struct.macroblock*, %struct.macroblock** %mb_available_up101, align 8
  %mb_type102 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %85, i32 0, i32 8
  %86 = load i32, i32* %mb_type102, align 4
  %cmp103 = icmp ne i32 %86, 0
  %cond105 = select i1 %cmp103, i32 1, i32 0
  store i32 %cond105, i32* %b, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.100, %if.then.99
  %87 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left107 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %87, i32 0, i32 7
  %88 = load %struct.macroblock*, %struct.macroblock** %mb_available_left107, align 8
  %cmp108 = icmp eq %struct.macroblock* %88, null
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %if.end.106
  store i32 0, i32* %a, align 4
  br label %if.end.117

if.else.111:                                      ; preds = %if.end.106
  %89 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left112 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %89, i32 0, i32 7
  %90 = load %struct.macroblock*, %struct.macroblock** %mb_available_left112, align 8
  %mb_type113 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %90, i32 0, i32 8
  %91 = load i32, i32* %mb_type113, align 4
  %cmp114 = icmp ne i32 %91, 0
  %cond116 = select i1 %cmp114, i32 1, i32 0
  store i32 %cond116, i32* %a, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.111, %if.then.110
  %92 = load i32, i32* %a, align 4
  %93 = load i32, i32* %b, align 4
  %add118 = add nsw i32 %92, %93
  store i32 %add118, i32* %act_ctx, align 4
  %94 = load i32, i32* %act_ctx, align 4
  %95 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context119 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %95, i32 0, i32 6
  store i32 %94, i32* %context119, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.117, %if.else.94
  %96 = load i32, i32* %curr_mb_type, align 4
  store i32 %96, i32* %act_sym, align 4
  %97 = load i32, i32* %act_sym, align 4
  %98 = load i32, i32* %bframe, align 4
  %tobool121 = icmp ne i32 %98, 0
  %cond122 = select i1 %tobool121, i32 24, i32 7
  store i32 %cond122, i32* %mode16x16, align 4
  %cmp123 = icmp sge i32 %97, %cond122
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.end.120
  %99 = load i32, i32* %act_sym, align 4
  %100 = load i32, i32* %mode16x16, align 4
  %sub126 = sub nsw i32 %99, %100
  store i32 %sub126, i32* %mode_sym, align 4
  %101 = load i32, i32* %mode16x16, align 4
  store i32 %101, i32* %act_sym, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.end.120
  %102 = load i32, i32* %bframe, align 4
  %tobool128 = icmp ne i32 %102, 0
  br i1 %tobool128, label %if.else.185, label %if.then.129

if.then.129:                                      ; preds = %if.end.127
  %103 = load i32, i32* %act_sym, align 4
  switch i32 %103, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.130
    i32 2, label %sw.bb.140
    i32 3, label %sw.bb.150
    i32 4, label %sw.bb.160
    i32 5, label %sw.bb.160
    i32 6, label %sw.bb.170
    i32 7, label %sw.bb.177
  ]

sw.bb:                                            ; preds = %if.then.129
  br label %sw.epilog

sw.bb.130:                                        ; preds = %if.then.129
  %104 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %105 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts131 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %105, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts131, i32 0, i64 1
  %arrayidx133 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx132, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %104, i16 signext 0, %struct.BiContextType* %arrayidx133)
  %106 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %107 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts134 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %107, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts134, i32 0, i64 1
  %arrayidx136 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx135, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %106, i16 signext 0, %struct.BiContextType* %arrayidx136)
  %108 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %109 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts137 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %109, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts137, i32 0, i64 1
  %arrayidx139 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx138, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %108, i16 signext 0, %struct.BiContextType* %arrayidx139)
  br label %sw.epilog

sw.bb.140:                                        ; preds = %if.then.129
  %110 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %111 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts141 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %111, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts141, i32 0, i64 1
  %arrayidx143 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx142, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %110, i16 signext 0, %struct.BiContextType* %arrayidx143)
  %112 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %113 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts144 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %113, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts144, i32 0, i64 1
  %arrayidx146 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx145, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %112, i16 signext 1, %struct.BiContextType* %arrayidx146)
  %114 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %115 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts147 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %115, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts147, i32 0, i64 1
  %arrayidx149 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx148, i32 0, i64 7
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %114, i16 signext 1, %struct.BiContextType* %arrayidx149)
  br label %sw.epilog

sw.bb.150:                                        ; preds = %if.then.129
  %116 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %117 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts151 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %117, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts151, i32 0, i64 1
  %arrayidx153 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx152, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %116, i16 signext 0, %struct.BiContextType* %arrayidx153)
  %118 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %119 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts154 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %119, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts154, i32 0, i64 1
  %arrayidx156 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx155, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %118, i16 signext 1, %struct.BiContextType* %arrayidx156)
  %120 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %121 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts157 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %121, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts157, i32 0, i64 1
  %arrayidx159 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx158, i32 0, i64 7
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %120, i16 signext 0, %struct.BiContextType* %arrayidx159)
  br label %sw.epilog

sw.bb.160:                                        ; preds = %if.then.129, %if.then.129
  %122 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %123 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts161 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %123, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts161, i32 0, i64 1
  %arrayidx163 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx162, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %122, i16 signext 0, %struct.BiContextType* %arrayidx163)
  %124 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %125 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts164 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %125, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts164, i32 0, i64 1
  %arrayidx166 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx165, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %124, i16 signext 0, %struct.BiContextType* %arrayidx166)
  %126 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %127 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts167 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %127, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts167, i32 0, i64 1
  %arrayidx169 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx168, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %126, i16 signext 1, %struct.BiContextType* %arrayidx169)
  br label %sw.epilog

sw.bb.170:                                        ; preds = %if.then.129
  %128 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %129 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts171 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %129, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts171, i32 0, i64 1
  %arrayidx173 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx172, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %128, i16 signext 1, %struct.BiContextType* %arrayidx173)
  %130 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %131 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts174 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %131, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts174, i32 0, i64 1
  %arrayidx176 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx175, i32 0, i64 7
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %130, i16 signext 0, %struct.BiContextType* %arrayidx176)
  br label %sw.epilog

sw.bb.177:                                        ; preds = %if.then.129
  %132 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %133 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts178 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %133, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts178, i32 0, i64 1
  %arrayidx180 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx179, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %132, i16 signext 1, %struct.BiContextType* %arrayidx180)
  %134 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %135 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts181 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %135, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts181, i32 0, i64 1
  %arrayidx183 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx182, i32 0, i64 7
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %134, i16 signext 1, %struct.BiContextType* %arrayidx183)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.129
  %call184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.177, %sw.bb.170, %sw.bb.160, %sw.bb.150, %sw.bb.140, %sw.bb.130, %sw.bb
  br label %if.end.337

if.else.185:                                      ; preds = %if.end.127
  %136 = load i32, i32* %act_sym, align 4
  %cmp186 = icmp eq i32 %136, 0
  br i1 %cmp186, label %if.then.188, label %if.else.193

if.then.188:                                      ; preds = %if.else.185
  %137 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %138 = load i32, i32* %act_ctx, align 4
  %idxprom189 = sext i32 %138 to i64
  %139 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts190 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %139, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts190, i32 0, i64 2
  %arrayidx192 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx191, i32 0, i64 %idxprom189
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %137, i16 signext 0, %struct.BiContextType* %arrayidx192)
  br label %if.end.336

if.else.193:                                      ; preds = %if.else.185
  %140 = load i32, i32* %act_sym, align 4
  %cmp194 = icmp sle i32 %140, 2
  br i1 %cmp194, label %if.then.196, label %if.else.211

if.then.196:                                      ; preds = %if.else.193
  %141 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %142 = load i32, i32* %act_ctx, align 4
  %idxprom197 = sext i32 %142 to i64
  %143 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts198 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %143, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts198, i32 0, i64 2
  %arrayidx200 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx199, i32 0, i64 %idxprom197
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %141, i16 signext 1, %struct.BiContextType* %arrayidx200)
  %144 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %145 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts201 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %145, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts201, i32 0, i64 2
  %arrayidx203 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx202, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %144, i16 signext 0, %struct.BiContextType* %arrayidx203)
  %146 = load i32, i32* %act_sym, align 4
  %sub204 = sub nsw i32 %146, 1
  %cmp205 = icmp ne i32 %sub204, 0
  %conv206 = zext i1 %cmp205 to i32
  %conv207 = trunc i32 %conv206 to i16
  store i16 %conv207, i16* %csym, align 2
  %147 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %148 = load i16, i16* %csym, align 2
  %149 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts208 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %149, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts208, i32 0, i64 2
  %arrayidx210 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx209, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %147, i16 signext %148, %struct.BiContextType* %arrayidx210)
  br label %if.end.335

if.else.211:                                      ; preds = %if.else.193
  %150 = load i32, i32* %act_sym, align 4
  %cmp212 = icmp sle i32 %150, 10
  br i1 %cmp212, label %if.then.214, label %if.else.251

if.then.214:                                      ; preds = %if.else.211
  %151 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %152 = load i32, i32* %act_ctx, align 4
  %idxprom215 = sext i32 %152 to i64
  %153 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts216 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %153, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts216, i32 0, i64 2
  %arrayidx218 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx217, i32 0, i64 %idxprom215
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %151, i16 signext 1, %struct.BiContextType* %arrayidx218)
  %154 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %155 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts219 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %155, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts219, i32 0, i64 2
  %arrayidx221 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx220, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %154, i16 signext 1, %struct.BiContextType* %arrayidx221)
  %156 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %157 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts222 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %157, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts222, i32 0, i64 2
  %arrayidx224 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx223, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %156, i16 signext 0, %struct.BiContextType* %arrayidx224)
  %158 = load i32, i32* %act_sym, align 4
  %sub225 = sub nsw i32 %158, 3
  %shr226 = ashr i32 %sub225, 2
  %and227 = and i32 %shr226, 1
  %cmp228 = icmp ne i32 %and227, 0
  %conv229 = zext i1 %cmp228 to i32
  %conv230 = trunc i32 %conv229 to i16
  store i16 %conv230, i16* %csym, align 2
  %159 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %160 = load i16, i16* %csym, align 2
  %161 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts231 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %161, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts231, i32 0, i64 2
  %arrayidx233 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx232, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %159, i16 signext %160, %struct.BiContextType* %arrayidx233)
  %162 = load i32, i32* %act_sym, align 4
  %sub234 = sub nsw i32 %162, 3
  %shr235 = ashr i32 %sub234, 1
  %and236 = and i32 %shr235, 1
  %cmp237 = icmp ne i32 %and236, 0
  %conv238 = zext i1 %cmp237 to i32
  %conv239 = trunc i32 %conv238 to i16
  store i16 %conv239, i16* %csym, align 2
  %163 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %164 = load i16, i16* %csym, align 2
  %165 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts240 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %165, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts240, i32 0, i64 2
  %arrayidx242 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx241, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %163, i16 signext %164, %struct.BiContextType* %arrayidx242)
  %166 = load i32, i32* %act_sym, align 4
  %sub243 = sub nsw i32 %166, 3
  %and244 = and i32 %sub243, 1
  %cmp245 = icmp ne i32 %and244, 0
  %conv246 = zext i1 %cmp245 to i32
  %conv247 = trunc i32 %conv246 to i16
  store i16 %conv247, i16* %csym, align 2
  %167 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %168 = load i16, i16* %csym, align 2
  %169 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts248 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %169, i32 0, i32 0
  %arrayidx249 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts248, i32 0, i64 2
  %arrayidx250 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx249, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %167, i16 signext %168, %struct.BiContextType* %arrayidx250)
  br label %if.end.334

if.else.251:                                      ; preds = %if.else.211
  %170 = load i32, i32* %act_sym, align 4
  %cmp252 = icmp eq i32 %170, 11
  br i1 %cmp252, label %if.then.256, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.251
  %171 = load i32, i32* %act_sym, align 4
  %cmp254 = icmp eq i32 %171, 22
  br i1 %cmp254, label %if.then.256, label %if.else.279

if.then.256:                                      ; preds = %lor.lhs.false, %if.else.251
  %172 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %173 = load i32, i32* %act_ctx, align 4
  %idxprom257 = sext i32 %173 to i64
  %174 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts258 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %174, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts258, i32 0, i64 2
  %arrayidx260 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx259, i32 0, i64 %idxprom257
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %172, i16 signext 1, %struct.BiContextType* %arrayidx260)
  %175 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %176 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts261 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %176, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts261, i32 0, i64 2
  %arrayidx263 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx262, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %175, i16 signext 1, %struct.BiContextType* %arrayidx263)
  %177 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %178 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts264 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %178, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts264, i32 0, i64 2
  %arrayidx266 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx265, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %177, i16 signext 1, %struct.BiContextType* %arrayidx266)
  %179 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %180 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts267 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %180, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts267, i32 0, i64 2
  %arrayidx269 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx268, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %179, i16 signext 1, %struct.BiContextType* %arrayidx269)
  %181 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %182 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts270 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %182, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts270, i32 0, i64 2
  %arrayidx272 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx271, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %181, i16 signext 1, %struct.BiContextType* %arrayidx272)
  %183 = load i32, i32* %act_sym, align 4
  %cmp273 = icmp ne i32 %183, 11
  %conv274 = zext i1 %cmp273 to i32
  %conv275 = trunc i32 %conv274 to i16
  store i16 %conv275, i16* %csym, align 2
  %184 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %185 = load i16, i16* %csym, align 2
  %186 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts276 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %186, i32 0, i32 0
  %arrayidx277 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts276, i32 0, i64 2
  %arrayidx278 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx277, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %184, i16 signext %185, %struct.BiContextType* %arrayidx278)
  br label %if.end.333

if.else.279:                                      ; preds = %lor.lhs.false
  %187 = load i32, i32* %act_sym, align 4
  %cmp280 = icmp sgt i32 %187, 22
  br i1 %cmp280, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %if.else.279
  %188 = load i32, i32* %act_sym, align 4
  %dec = add nsw i32 %188, -1
  store i32 %dec, i32* %act_sym, align 4
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.282, %if.else.279
  %189 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %190 = load i32, i32* %act_ctx, align 4
  %idxprom284 = sext i32 %190 to i64
  %191 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts285 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %191, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts285, i32 0, i64 2
  %arrayidx287 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx286, i32 0, i64 %idxprom284
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %189, i16 signext 1, %struct.BiContextType* %arrayidx287)
  %192 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %193 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts288 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %193, i32 0, i32 0
  %arrayidx289 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts288, i32 0, i64 2
  %arrayidx290 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx289, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %192, i16 signext 1, %struct.BiContextType* %arrayidx290)
  %194 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %195 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts291 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %195, i32 0, i32 0
  %arrayidx292 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts291, i32 0, i64 2
  %arrayidx293 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx292, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %194, i16 signext 1, %struct.BiContextType* %arrayidx293)
  %196 = load i32, i32* %act_sym, align 4
  %sub294 = sub nsw i32 %196, 12
  %shr295 = ashr i32 %sub294, 3
  %and296 = and i32 %shr295, 1
  %cmp297 = icmp ne i32 %and296, 0
  %conv298 = zext i1 %cmp297 to i32
  %conv299 = trunc i32 %conv298 to i16
  store i16 %conv299, i16* %csym, align 2
  %197 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %198 = load i16, i16* %csym, align 2
  %199 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts300 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %199, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts300, i32 0, i64 2
  %arrayidx302 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx301, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %197, i16 signext %198, %struct.BiContextType* %arrayidx302)
  %200 = load i32, i32* %act_sym, align 4
  %sub303 = sub nsw i32 %200, 12
  %shr304 = ashr i32 %sub303, 2
  %and305 = and i32 %shr304, 1
  %cmp306 = icmp ne i32 %and305, 0
  %conv307 = zext i1 %cmp306 to i32
  %conv308 = trunc i32 %conv307 to i16
  store i16 %conv308, i16* %csym, align 2
  %201 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %202 = load i16, i16* %csym, align 2
  %203 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts309 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %203, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts309, i32 0, i64 2
  %arrayidx311 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx310, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %201, i16 signext %202, %struct.BiContextType* %arrayidx311)
  %204 = load i32, i32* %act_sym, align 4
  %sub312 = sub nsw i32 %204, 12
  %shr313 = ashr i32 %sub312, 1
  %and314 = and i32 %shr313, 1
  %cmp315 = icmp ne i32 %and314, 0
  %conv316 = zext i1 %cmp315 to i32
  %conv317 = trunc i32 %conv316 to i16
  store i16 %conv317, i16* %csym, align 2
  %205 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %206 = load i16, i16* %csym, align 2
  %207 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts318 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %207, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts318, i32 0, i64 2
  %arrayidx320 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx319, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %205, i16 signext %206, %struct.BiContextType* %arrayidx320)
  %208 = load i32, i32* %act_sym, align 4
  %sub321 = sub nsw i32 %208, 12
  %and322 = and i32 %sub321, 1
  %cmp323 = icmp ne i32 %and322, 0
  %conv324 = zext i1 %cmp323 to i32
  %conv325 = trunc i32 %conv324 to i16
  store i16 %conv325, i16* %csym, align 2
  %209 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %210 = load i16, i16* %csym, align 2
  %211 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts326 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %211, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts326, i32 0, i64 2
  %arrayidx328 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx327, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %209, i16 signext %210, %struct.BiContextType* %arrayidx328)
  %212 = load i32, i32* %act_sym, align 4
  %cmp329 = icmp sge i32 %212, 22
  br i1 %cmp329, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %if.end.283
  %213 = load i32, i32* %act_sym, align 4
  %inc = add nsw i32 %213, 1
  store i32 %inc, i32* %act_sym, align 4
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.331, %if.end.283
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.then.256
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.then.214
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %if.then.196
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.then.188
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %sw.epilog
  %214 = load i32, i32* %act_sym, align 4
  %215 = load i32, i32* %mode16x16, align 4
  %cmp338 = icmp eq i32 %214, %215
  br i1 %cmp338, label %if.then.340, label %if.end.394

if.then.340:                                      ; preds = %if.end.337
  %216 = load i32, i32* %mode_sym, align 4
  %cmp341 = icmp eq i32 %216, 25
  br i1 %cmp341, label %if.then.343, label %if.end.346

if.then.343:                                      ; preds = %if.then.340
  %217 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %217, i16 signext 1)
  %218 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %218, i32 0, i32 0
  %219 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %219, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %220 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call344 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %220)
  %221 = load i32, i32* %curr_len, align 4
  %sub345 = sub nsw i32 %call344, %221
  %222 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %222, i32 0, i32 3
  store i32 %sub345, i32* %len, align 4
  br label %return

if.end.346:                                       ; preds = %if.then.340
  %223 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %223, i16 signext 0)
  store i32 8, i32* %act_ctx, align 4
  %224 = load i32, i32* %mode_sym, align 4
  %div347 = sdiv i32 %224, 12
  store i32 %div347, i32* %act_sym, align 4
  %225 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %226 = load i32, i32* %act_sym, align 4
  %conv348 = trunc i32 %226 to i16
  %227 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts349 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %227, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts349, i32 0, i64 1
  %arraydecay351 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx350, i32 0, i32 0
  %228 = load i32, i32* %act_ctx, align 4
  %idx.ext352 = sext i32 %228 to i64
  %add.ptr353 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay351, i64 %idx.ext352
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %225, i16 signext %conv348, %struct.BiContextType* %add.ptr353)
  %229 = load i32, i32* %mode_sym, align 4
  %rem354 = srem i32 %229, 12
  store i32 %rem354, i32* %mode_sym, align 4
  %230 = load i32, i32* %mode_sym, align 4
  %div355 = sdiv i32 %230, 4
  store i32 %div355, i32* %act_sym, align 4
  store i32 9, i32* %act_ctx, align 4
  %231 = load i32, i32* %act_sym, align 4
  %cmp356 = icmp eq i32 %231, 0
  br i1 %cmp356, label %if.then.358, label %if.else.364

if.then.358:                                      ; preds = %if.end.346
  %232 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %233 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts359 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %233, i32 0, i32 0
  %arrayidx360 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts359, i32 0, i64 1
  %arraydecay361 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx360, i32 0, i32 0
  %234 = load i32, i32* %act_ctx, align 4
  %idx.ext362 = sext i32 %234 to i64
  %add.ptr363 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay361, i64 %idx.ext362
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %232, i16 signext 0, %struct.BiContextType* %add.ptr363)
  br label %if.end.378

if.else.364:                                      ; preds = %if.end.346
  %235 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %236 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts365 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %236, i32 0, i32 0
  %arrayidx366 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts365, i32 0, i64 1
  %arraydecay367 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx366, i32 0, i32 0
  %237 = load i32, i32* %act_ctx, align 4
  %idx.ext368 = sext i32 %237 to i64
  %add.ptr369 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay367, i64 %idx.ext368
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %235, i16 signext 1, %struct.BiContextType* %add.ptr369)
  %238 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %239 = load i32, i32* %act_sym, align 4
  %cmp370 = icmp ne i32 %239, 1
  %conv371 = zext i1 %cmp370 to i32
  %conv372 = trunc i32 %conv371 to i16
  %240 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts373 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %240, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts373, i32 0, i64 1
  %arraydecay375 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx374, i32 0, i32 0
  %241 = load i32, i32* %act_ctx, align 4
  %idx.ext376 = sext i32 %241 to i64
  %add.ptr377 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay375, i64 %idx.ext376
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %238, i16 signext %conv372, %struct.BiContextType* %add.ptr377)
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.364, %if.then.358
  %242 = load i32, i32* %mode_sym, align 4
  %rem379 = srem i32 %242, 4
  store i32 %rem379, i32* %mode_sym, align 4
  store i32 10, i32* %act_ctx, align 4
  %243 = load i32, i32* %mode_sym, align 4
  %div380 = sdiv i32 %243, 2
  store i32 %div380, i32* %act_sym, align 4
  %244 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %245 = load i32, i32* %act_sym, align 4
  %conv381 = trunc i32 %245 to i16
  %246 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts382 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %246, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts382, i32 0, i64 1
  %arraydecay384 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx383, i32 0, i32 0
  %247 = load i32, i32* %act_ctx, align 4
  %idx.ext385 = sext i32 %247 to i64
  %add.ptr386 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay384, i64 %idx.ext385
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %244, i16 signext %conv381, %struct.BiContextType* %add.ptr386)
  %248 = load i32, i32* %mode_sym, align 4
  %rem387 = srem i32 %248, 2
  store i32 %rem387, i32* %act_sym, align 4
  %249 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %250 = load i32, i32* %act_sym, align 4
  %conv388 = trunc i32 %250 to i16
  %251 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts389 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %251, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts389, i32 0, i64 1
  %arraydecay391 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx390, i32 0, i32 0
  %252 = load i32, i32* %act_ctx, align 4
  %idx.ext392 = sext i32 %252 to i64
  %add.ptr393 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay391, i64 %idx.ext392
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %249, i16 signext %conv388, %struct.BiContextType* %add.ptr393)
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.378, %if.end.337
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394, %if.end.93
  %253 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream396 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %253, i32 0, i32 0
  %254 = load %struct.Bitstream*, %struct.Bitstream** %bitstream396, align 8
  %write_flag397 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %254, i32 0, i32 10
  store i32 1, i32* %write_flag397, align 4
  %255 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call398 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %255)
  %256 = load i32, i32* %curr_len, align 4
  %sub399 = sub nsw i32 %call398, %256
  %257 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len400 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %257, i32 0, i32 3
  store i32 %sub399, i32* %len400, align 4
  br label %return

return:                                           ; preds = %if.end.395, %if.then.343
  ret void
}

declare void @biari_encode_symbol_final(%struct.EncodingEnvironment*, i16 signext) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @writeB8_typeInfo_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %csym = alloca i16, align 2
  %bframe = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 5
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 60
  %5 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %5, i32 0, i32 7
  %6 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %6, %struct.MotionInfoContexts** %ctx, align 8
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 1
  %8 = load i32, i32* %value1, align 4
  store i32 %8, i32* %act_sym, align 4
  store i32 0, i32* %act_ctx, align 4
  %9 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %act_sym, align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.then
  %11 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %12 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %12, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %11, i16 signext 1, %struct.BiContextType* %arrayidx1)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %14 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts3 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %14, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx4, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %13, i16 signext 0, %struct.BiContextType* %arrayidx5)
  %15 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %16 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts6 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %16, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx7, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %15, i16 signext 0, %struct.BiContextType* %arrayidx8)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  %17 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %18 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts10 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %18, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx11, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %17, i16 signext 0, %struct.BiContextType* %arrayidx12)
  %19 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %20 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts13 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %20, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts13, i32 0, i64 0
  %arrayidx15 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx14, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %19, i16 signext 1, %struct.BiContextType* %arrayidx15)
  %21 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %22 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts16 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %22, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts16, i32 0, i64 0
  %arrayidx18 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx17, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %21, i16 signext 1, %struct.BiContextType* %arrayidx18)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then
  %23 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %24 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts20 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %24, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts20, i32 0, i64 0
  %arrayidx22 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx21, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %23, i16 signext 0, %struct.BiContextType* %arrayidx22)
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %26 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts23 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %26, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts23, i32 0, i64 0
  %arrayidx25 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx24, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %25, i16 signext 1, %struct.BiContextType* %arrayidx25)
  %27 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %28 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts26 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %28, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts26, i32 0, i64 0
  %arrayidx28 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx27, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %27, i16 signext 0, %struct.BiContextType* %arrayidx28)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.19, %sw.bb.9, %sw.bb.2, %sw.bb
  br label %if.end.125

if.else:                                          ; preds = %entry
  %29 = load i32, i32* %act_sym, align 4
  %cmp29 = icmp eq i32 %29, 0
  br i1 %cmp29, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %if.else
  %30 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %31 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts32 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %31, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts32, i32 0, i64 1
  %arrayidx34 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx33, i32 0, i64 0
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %30, i16 signext 0, %struct.BiContextType* %arrayidx34)
  %32 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %32, i32 0, i32 0
  %33 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %33, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %34 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call35 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %34)
  %35 = load i32, i32* %curr_len, align 4
  %sub = sub nsw i32 %call35, %35
  %36 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %36, i32 0, i32 3
  store i32 %sub, i32* %len, align 4
  br label %return

if.else.36:                                       ; preds = %if.else
  %37 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %38 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts37 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %38, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts37, i32 0, i64 1
  %arrayidx39 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx38, i32 0, i64 0
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %37, i16 signext 1, %struct.BiContextType* %arrayidx39)
  %39 = load i32, i32* %act_sym, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %act_sym, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.36
  %40 = load i32, i32* %act_sym, align 4
  %cmp40 = icmp slt i32 %40, 2
  br i1 %cmp40, label %if.then.42, label %if.else.52

if.then.42:                                       ; preds = %if.end
  %41 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %42 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts43 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts43, i32 0, i64 1
  %arrayidx45 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx44, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %41, i16 signext 0, %struct.BiContextType* %arrayidx45)
  %43 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %44 = load i32, i32* %act_sym, align 4
  %cmp46 = icmp ne i32 %44, 0
  %conv47 = zext i1 %cmp46 to i32
  %conv48 = trunc i32 %conv47 to i16
  %45 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts49 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %45, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts49, i32 0, i64 1
  %arrayidx51 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx50, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %43, i16 signext %conv48, %struct.BiContextType* %arrayidx51)
  br label %if.end.124

if.else.52:                                       ; preds = %if.end
  %46 = load i32, i32* %act_sym, align 4
  %cmp53 = icmp slt i32 %46, 6
  br i1 %cmp53, label %if.then.55, label %if.else.77

if.then.55:                                       ; preds = %if.else.52
  %47 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %48 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts56 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %48, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts56, i32 0, i64 1
  %arrayidx58 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx57, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %47, i16 signext 1, %struct.BiContextType* %arrayidx58)
  %49 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %50 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts59 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %50, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts59, i32 0, i64 1
  %arrayidx61 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx60, i32 0, i64 2
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %49, i16 signext 0, %struct.BiContextType* %arrayidx61)
  %51 = load i32, i32* %act_sym, align 4
  %sub62 = sub nsw i32 %51, 2
  %shr = ashr i32 %sub62, 1
  %and = and i32 %shr, 1
  %cmp63 = icmp ne i32 %and, 0
  %conv64 = zext i1 %cmp63 to i32
  %conv65 = trunc i32 %conv64 to i16
  store i16 %conv65, i16* %csym, align 2
  %52 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %53 = load i16, i16* %csym, align 2
  %54 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts66 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %54, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts66, i32 0, i64 1
  %arrayidx68 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx67, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %52, i16 signext %53, %struct.BiContextType* %arrayidx68)
  %55 = load i32, i32* %act_sym, align 4
  %sub69 = sub nsw i32 %55, 2
  %and70 = and i32 %sub69, 1
  %cmp71 = icmp ne i32 %and70, 0
  %conv72 = zext i1 %cmp71 to i32
  %conv73 = trunc i32 %conv72 to i16
  store i16 %conv73, i16* %csym, align 2
  %56 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %57 = load i16, i16* %csym, align 2
  %58 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts74 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %58, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts74, i32 0, i64 1
  %arrayidx76 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx75, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %56, i16 signext %57, %struct.BiContextType* %arrayidx76)
  br label %if.end.123

if.else.77:                                       ; preds = %if.else.52
  %59 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %60 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts78 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %60, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts78, i32 0, i64 1
  %arrayidx80 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx79, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %59, i16 signext 1, %struct.BiContextType* %arrayidx80)
  %61 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %62 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts81 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %62, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts81, i32 0, i64 1
  %arrayidx83 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx82, i32 0, i64 2
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %61, i16 signext 1, %struct.BiContextType* %arrayidx83)
  %63 = load i32, i32* %act_sym, align 4
  %sub84 = sub nsw i32 %63, 6
  %shr85 = ashr i32 %sub84, 2
  %and86 = and i32 %shr85, 1
  %conv87 = trunc i32 %and86 to i16
  store i16 %conv87, i16* %csym, align 2
  %64 = load i16, i16* %csym, align 2
  %tobool88 = icmp ne i16 %64, 0
  br i1 %tobool88, label %if.then.89, label %if.else.101

if.then.89:                                       ; preds = %if.else.77
  %65 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %66 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts90 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %66, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts90, i32 0, i64 1
  %arrayidx92 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx91, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %65, i16 signext 1, %struct.BiContextType* %arrayidx92)
  %67 = load i32, i32* %act_sym, align 4
  %sub93 = sub nsw i32 %67, 6
  %and94 = and i32 %sub93, 1
  %cmp95 = icmp ne i32 %and94, 0
  %conv96 = zext i1 %cmp95 to i32
  %conv97 = trunc i32 %conv96 to i16
  store i16 %conv97, i16* %csym, align 2
  %68 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %69 = load i16, i16* %csym, align 2
  %70 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts98 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %70, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts98, i32 0, i64 1
  %arrayidx100 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx99, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %68, i16 signext %69, %struct.BiContextType* %arrayidx100)
  br label %if.end.122

if.else.101:                                      ; preds = %if.else.77
  %71 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %72 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts102 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %72, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts102, i32 0, i64 1
  %arrayidx104 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx103, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %71, i16 signext 0, %struct.BiContextType* %arrayidx104)
  %73 = load i32, i32* %act_sym, align 4
  %sub105 = sub nsw i32 %73, 6
  %shr106 = ashr i32 %sub105, 1
  %and107 = and i32 %shr106, 1
  %cmp108 = icmp ne i32 %and107, 0
  %conv109 = zext i1 %cmp108 to i32
  %conv110 = trunc i32 %conv109 to i16
  store i16 %conv110, i16* %csym, align 2
  %74 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %75 = load i16, i16* %csym, align 2
  %76 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts111 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %76, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts111, i32 0, i64 1
  %arrayidx113 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx112, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %74, i16 signext %75, %struct.BiContextType* %arrayidx113)
  %77 = load i32, i32* %act_sym, align 4
  %sub114 = sub nsw i32 %77, 6
  %and115 = and i32 %sub114, 1
  %cmp116 = icmp ne i32 %and115, 0
  %conv117 = zext i1 %cmp116 to i32
  %conv118 = trunc i32 %conv117 to i16
  store i16 %conv118, i16* %csym, align 2
  %78 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %79 = load i16, i16* %csym, align 2
  %80 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts119 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %80, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts119, i32 0, i64 1
  %arrayidx121 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx120, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %78, i16 signext %79, %struct.BiContextType* %arrayidx121)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.101, %if.then.89
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.55
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.42
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %sw.epilog
  %81 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream126 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %81, i32 0, i32 0
  %82 = load %struct.Bitstream*, %struct.Bitstream** %bitstream126, align 8
  %write_flag127 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %82, i32 0, i32 10
  store i32 1, i32* %write_flag127, align 4
  %83 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call128 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %83)
  %84 = load i32, i32* %curr_len, align 4
  %sub129 = sub nsw i32 %call128, %84
  %85 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len130 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %85, i32 0, i32 3
  store i32 %sub129, i32* %len130, align 4
  br label %return

return:                                           ; preds = %if.end.125, %if.then.31
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeIntraPredMode_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %ctx = alloca %struct.TextureInfoContexts*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 60
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 8
  %4 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %4, %struct.TextureInfoContexts** %ctx, align 8
  %5 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %5, i32 0, i32 1
  %6 = load i32, i32* %value1, align 4
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %8 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %8, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts, i32 0, i32 0
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %7, i16 signext 1, %struct.BiContextType* %arraydecay)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %10 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts1 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %10, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts1, i32 0, i32 0
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %9, i16 signext 0, %struct.BiContextType* %arraydecay2)
  %11 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %12 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value13 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %12, i32 0, i32 1
  %13 = load i32, i32* %value13, align 4
  %and = and i32 %13, 1
  %conv = trunc i32 %and to i16
  %14 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts4 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %14, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts4, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay5, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %11, i16 signext %conv, %struct.BiContextType* %add.ptr)
  %15 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %16 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value16 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %16, i32 0, i32 1
  %17 = load i32, i32* %value16, align 4
  %and7 = and i32 %17, 2
  %shr = ashr i32 %and7, 1
  %conv8 = trunc i32 %shr to i16
  %18 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts9 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %18, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts9, i32 0, i32 0
  %add.ptr11 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay10, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %15, i16 signext %conv8, %struct.BiContextType* %add.ptr11)
  %19 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %20 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value112 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %20, i32 0, i32 1
  %21 = load i32, i32* %value112, align 4
  %and13 = and i32 %21, 4
  %shr14 = ashr i32 %and13, 2
  %conv15 = trunc i32 %shr14 to i16
  %22 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts16 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %22, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts16, i32 0, i32 0
  %add.ptr18 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay17, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %19, i16 signext %conv15, %struct.BiContextType* %add.ptr18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %23, i32 0, i32 0
  %24 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %24, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call19 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %25)
  %26 = load i32, i32* %curr_len, align 4
  %sub = sub nsw i32 %call19, %26
  %27 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %27, i32 0, i32 3
  store i32 %sub, i32* %len, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeRefFrame_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %addctx = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %refframe_array = alloca i8**, align 8
  %bslice = alloca i32, align 4
  %b8a = alloca i32, align 4
  %b8b = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  store i32 %3, i32* %mb_nr, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 60
  %5 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %5, i32 0, i32 7
  %6 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %6, %struct.MotionInfoContexts** %ctx, align 8
  %7 = load i32, i32* %mb_nr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 61
  %9 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  store i32 0, i32* %addctx, align 4
  %10 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %10, i32 0, i32 2
  %11 = load i32, i32* %value2, align 4
  %idxprom1 = sext i32 %11 to i64
  %12 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 35
  %13 = load i8***, i8**** %ref_idx, align 8
  %arrayidx2 = getelementptr inbounds i8**, i8*** %13, i64 %idxprom1
  %14 = load i8**, i8*** %arrayidx2, align 8
  store i8** %14, i8*** %refframe_array, align 8
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 5
  %16 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %16, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bslice, align 4
  %17 = load i32, i32* %mb_nr, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 24
  %19 = load i32, i32* %subblock_x, align 4
  %shl = shl i32 %19, 2
  %sub = sub nsw i32 %shl, 1
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 25
  %21 = load i32, i32* %subblock_y, align 4
  %shl3 = shl i32 %21, 2
  call void @getLuma4x4Neighbour(i32 %17, i32 %sub, i32 %shl3, %struct.pix_pos* %block_a)
  %22 = load i32, i32* %mb_nr, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 24
  %24 = load i32, i32* %subblock_x4, align 4
  %shl5 = shl i32 %24, 2
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 25
  %26 = load i32, i32* %subblock_y6, align 4
  %shl7 = shl i32 %26, 2
  %sub8 = sub nsw i32 %shl7, 1
  call void @getLuma4x4Neighbour(i32 %22, i32 %shl5, i32 %sub8, %struct.pix_pos* %block_b)
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %27 = load i32, i32* %x, align 4
  %shr = ashr i32 %27, 1
  %and = and i32 %shr, 1
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %28 = load i32, i32* %y, align 4
  %shr9 = ashr i32 %28, 1
  %and10 = and i32 %shr9, 1
  %mul = mul nsw i32 2, %and10
  %add = add nsw i32 %and, %mul
  store i32 %add, i32* %b8a, align 4
  %x11 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %29 = load i32, i32* %x11, align 4
  %shr12 = ashr i32 %29, 1
  %and13 = and i32 %shr12, 1
  %y14 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %30 = load i32, i32* %y14, align 4
  %shr15 = ashr i32 %30, 1
  %and16 = and i32 %shr15, 1
  %mul17 = mul nsw i32 2, %and16
  %add18 = add nsw i32 %and13, %mul17
  store i32 %add18, i32* %b8b, align 4
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %31 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end.73

if.else:                                          ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %32 = load i32, i32* %mb_addr, align 4
  %idxprom19 = sext i32 %32 to i64
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 61
  %34 = load %struct.macroblock*, %struct.macroblock** %mb_data20, align 8
  %arrayidx21 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i64 %idxprom19
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx21, i32 0, i32 8
  %35 = load i32, i32* %mb_type, align 4
  %cmp22 = icmp eq i32 %35, 0
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 5
  %37 = load i32, i32* %type24, align 4
  %cmp25 = icmp eq i32 %37, 1
  br i1 %cmp25, label %land.lhs.true.27, label %lor.lhs.false

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %38 = load i32, i32* @giRDOpt_B8OnlyFlag, align 4
  %tobool28 = icmp ne i32 %38, 0
  br i1 %tobool28, label %lor.lhs.false, label %if.then.39

lor.lhs.false:                                    ; preds = %land.lhs.true.27, %land.lhs.true, %if.else
  %39 = load i32, i32* %b8b, align 4
  %idxprom29 = sext i32 %39 to i64
  %mb_addr30 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %40 = load i32, i32* %mb_addr30, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 61
  %42 = load %struct.macroblock*, %struct.macroblock** %mb_data32, align 8
  %arrayidx33 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i64 %idxprom31
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx33, i32 0, i32 14
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 %idxprom29
  %43 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp eq i32 %43, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.40

land.lhs.true.37:                                 ; preds = %lor.lhs.false
  %44 = load i32, i32* %bslice, align 4
  %tobool38 = icmp ne i32 %44, 0
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %land.lhs.true.37, %land.lhs.true.27
  store i32 0, i32* %b, align 4
  br label %if.end.72

if.else.40:                                       ; preds = %land.lhs.true.37, %lor.lhs.false
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 100
  %46 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool41 = icmp ne i32 %46, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.else.61

land.lhs.true.42:                                 ; preds = %if.else.40
  %47 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 19
  %48 = load i32, i32* %mb_field, align 4
  %cmp43 = icmp eq i32 %48, 0
  br i1 %cmp43, label %land.lhs.true.45, label %if.else.61

land.lhs.true.45:                                 ; preds = %land.lhs.true.42
  %mb_addr46 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %49 = load i32, i32* %mb_addr46, align 4
  %idxprom47 = sext i32 %49 to i64
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 61
  %51 = load %struct.macroblock*, %struct.macroblock** %mb_data48, align 8
  %arrayidx49 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i64 %idxprom47
  %mb_field50 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx49, i32 0, i32 19
  %52 = load i32, i32* %mb_field50, align 4
  %cmp51 = icmp eq i32 %52, 1
  br i1 %cmp51, label %if.then.53, label %if.else.61

if.then.53:                                       ; preds = %land.lhs.true.45
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %53 = load i32, i32* %pos_x, align 4
  %idxprom54 = sext i32 %53 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %54 = load i32, i32* %pos_y, align 4
  %idxprom55 = sext i32 %54 to i64
  %55 = load i8**, i8*** %refframe_array, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %55, i64 %idxprom55
  %56 = load i8*, i8** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %56, i64 %idxprom54
  %57 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %57 to i32
  %cmp59 = icmp sgt i32 %conv58, 1
  %cond = select i1 %cmp59, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.else.61:                                       ; preds = %land.lhs.true.45, %land.lhs.true.42, %if.else.40
  %pos_x62 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %58 = load i32, i32* %pos_x62, align 4
  %idxprom63 = sext i32 %58 to i64
  %pos_y64 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %59 = load i32, i32* %pos_y64, align 4
  %idxprom65 = sext i32 %59 to i64
  %60 = load i8**, i8*** %refframe_array, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %60, i64 %idxprom65
  %61 = load i8*, i8** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %61, i64 %idxprom63
  %62 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %62 to i32
  %cmp69 = icmp sgt i32 %conv68, 0
  %cond71 = select i1 %cmp69, i32 1, i32 0
  store i32 %cond71, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.61, %if.then.53
  br label %if.end.72

if.end.72:                                        ; preds = %if.end, %if.then.39
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then
  %available74 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %63 = load i32, i32* %available74, align 4
  %tobool75 = icmp ne i32 %63, 0
  br i1 %tobool75, label %if.else.77, label %if.then.76

if.then.76:                                       ; preds = %if.end.73
  store i32 0, i32* %a, align 4
  br label %if.end.143

if.else.77:                                       ; preds = %if.end.73
  %mb_addr78 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %64 = load i32, i32* %mb_addr78, align 4
  %idxprom79 = sext i32 %64 to i64
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 61
  %66 = load %struct.macroblock*, %struct.macroblock** %mb_data80, align 8
  %arrayidx81 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %66, i64 %idxprom79
  %mb_type82 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx81, i32 0, i32 8
  %67 = load i32, i32* %mb_type82, align 4
  %cmp83 = icmp eq i32 %67, 0
  br i1 %cmp83, label %land.lhs.true.85, label %lor.lhs.false.91

land.lhs.true.85:                                 ; preds = %if.else.77
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 5
  %69 = load i32, i32* %type86, align 4
  %cmp87 = icmp eq i32 %69, 1
  br i1 %cmp87, label %land.lhs.true.89, label %lor.lhs.false.91

land.lhs.true.89:                                 ; preds = %land.lhs.true.85
  %70 = load i32, i32* @giRDOpt_B8OnlyFlag, align 4
  %tobool90 = icmp ne i32 %70, 0
  br i1 %tobool90, label %lor.lhs.false.91, label %if.then.103

lor.lhs.false.91:                                 ; preds = %land.lhs.true.89, %land.lhs.true.85, %if.else.77
  %71 = load i32, i32* %b8a, align 4
  %idxprom92 = sext i32 %71 to i64
  %mb_addr93 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %72 = load i32, i32* %mb_addr93, align 4
  %idxprom94 = sext i32 %72 to i64
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data95 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 61
  %74 = load %struct.macroblock*, %struct.macroblock** %mb_data95, align 8
  %arrayidx96 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %74, i64 %idxprom94
  %b8mode97 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx96, i32 0, i32 14
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode97, i32 0, i64 %idxprom92
  %75 = load i32, i32* %arrayidx98, align 4
  %cmp99 = icmp eq i32 %75, 0
  br i1 %cmp99, label %land.lhs.true.101, label %if.else.104

land.lhs.true.101:                                ; preds = %lor.lhs.false.91
  %76 = load i32, i32* %bslice, align 4
  %tobool102 = icmp ne i32 %76, 0
  br i1 %tobool102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %land.lhs.true.101, %land.lhs.true.89
  store i32 0, i32* %a, align 4
  br label %if.end.142

if.else.104:                                      ; preds = %land.lhs.true.101, %lor.lhs.false.91
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 100
  %78 = load i32, i32* %MbaffFrameFlag105, align 4
  %tobool106 = icmp ne i32 %78, 0
  br i1 %tobool106, label %land.lhs.true.107, label %if.else.130

land.lhs.true.107:                                ; preds = %if.else.104
  %79 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field108 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %79, i32 0, i32 19
  %80 = load i32, i32* %mb_field108, align 4
  %cmp109 = icmp eq i32 %80, 0
  br i1 %cmp109, label %land.lhs.true.111, label %if.else.130

land.lhs.true.111:                                ; preds = %land.lhs.true.107
  %mb_addr112 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %81 = load i32, i32* %mb_addr112, align 4
  %idxprom113 = sext i32 %81 to i64
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 61
  %83 = load %struct.macroblock*, %struct.macroblock** %mb_data114, align 8
  %arrayidx115 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %83, i64 %idxprom113
  %mb_field116 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx115, i32 0, i32 19
  %84 = load i32, i32* %mb_field116, align 4
  %cmp117 = icmp eq i32 %84, 1
  br i1 %cmp117, label %if.then.119, label %if.else.130

if.then.119:                                      ; preds = %land.lhs.true.111
  %pos_x120 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %85 = load i32, i32* %pos_x120, align 4
  %idxprom121 = sext i32 %85 to i64
  %pos_y122 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %86 = load i32, i32* %pos_y122, align 4
  %idxprom123 = sext i32 %86 to i64
  %87 = load i8**, i8*** %refframe_array, align 8
  %arrayidx124 = getelementptr inbounds i8*, i8** %87, i64 %idxprom123
  %88 = load i8*, i8** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %88, i64 %idxprom121
  %89 = load i8, i8* %arrayidx125, align 1
  %conv126 = sext i8 %89 to i32
  %cmp127 = icmp sgt i32 %conv126, 1
  %cond129 = select i1 %cmp127, i32 1, i32 0
  store i32 %cond129, i32* %a, align 4
  br label %if.end.141

if.else.130:                                      ; preds = %land.lhs.true.111, %land.lhs.true.107, %if.else.104
  %pos_x131 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %90 = load i32, i32* %pos_x131, align 4
  %idxprom132 = sext i32 %90 to i64
  %pos_y133 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %91 = load i32, i32* %pos_y133, align 4
  %idxprom134 = sext i32 %91 to i64
  %92 = load i8**, i8*** %refframe_array, align 8
  %arrayidx135 = getelementptr inbounds i8*, i8** %92, i64 %idxprom134
  %93 = load i8*, i8** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %93, i64 %idxprom132
  %94 = load i8, i8* %arrayidx136, align 1
  %conv137 = sext i8 %94 to i32
  %cmp138 = icmp sgt i32 %conv137, 0
  %cond140 = select i1 %cmp138, i32 1, i32 0
  store i32 %cond140, i32* %a, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.130, %if.then.119
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.103
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.76
  %95 = load i32, i32* %a, align 4
  %96 = load i32, i32* %b, align 4
  %mul144 = mul nsw i32 2, %96
  %add145 = add nsw i32 %95, %mul144
  store i32 %add145, i32* %act_ctx, align 4
  %97 = load i32, i32* %act_ctx, align 4
  %98 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %98, i32 0, i32 6
  store i32 %97, i32* %context, align 4
  %99 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %99, i32 0, i32 1
  %100 = load i32, i32* %value1, align 4
  store i32 %100, i32* %act_sym, align 4
  %101 = load i32, i32* %act_sym, align 4
  %cmp146 = icmp eq i32 %101, 0
  br i1 %cmp146, label %if.then.148, label %if.else.151

if.then.148:                                      ; preds = %if.end.143
  %102 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %103 = load i32, i32* %addctx, align 4
  %idxprom149 = sext i32 %103 to i64
  %104 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %ref_no_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %104, i32 0, i32 3
  %arrayidx150 = getelementptr inbounds [2 x [6 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]]* %ref_no_contexts, i32 0, i64 %idxprom149
  %arraydecay = getelementptr inbounds [6 x %struct.BiContextType], [6 x %struct.BiContextType]* %arrayidx150, i32 0, i32 0
  %105 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %105 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %102, i16 signext 0, %struct.BiContextType* %add.ptr)
  br label %if.end.164

if.else.151:                                      ; preds = %if.end.143
  %106 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %107 = load i32, i32* %addctx, align 4
  %idxprom152 = sext i32 %107 to i64
  %108 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %ref_no_contexts153 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %108, i32 0, i32 3
  %arrayidx154 = getelementptr inbounds [2 x [6 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]]* %ref_no_contexts153, i32 0, i64 %idxprom152
  %arraydecay155 = getelementptr inbounds [6 x %struct.BiContextType], [6 x %struct.BiContextType]* %arrayidx154, i32 0, i32 0
  %109 = load i32, i32* %act_ctx, align 4
  %idx.ext156 = sext i32 %109 to i64
  %add.ptr157 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay155, i64 %idx.ext156
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %106, i16 signext 1, %struct.BiContextType* %add.ptr157)
  %110 = load i32, i32* %act_sym, align 4
  %dec = add nsw i32 %110, -1
  store i32 %dec, i32* %act_sym, align 4
  store i32 4, i32* %act_ctx, align 4
  %111 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %112 = load i32, i32* %act_sym, align 4
  %113 = load i32, i32* %addctx, align 4
  %idxprom158 = sext i32 %113 to i64
  %114 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %ref_no_contexts159 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %114, i32 0, i32 3
  %arrayidx160 = getelementptr inbounds [2 x [6 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]]* %ref_no_contexts159, i32 0, i64 %idxprom158
  %arraydecay161 = getelementptr inbounds [6 x %struct.BiContextType], [6 x %struct.BiContextType]* %arrayidx160, i32 0, i32 0
  %115 = load i32, i32* %act_ctx, align 4
  %idx.ext162 = sext i32 %115 to i64
  %add.ptr163 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay161, i64 %idx.ext162
  call void @unary_bin_encode(%struct.EncodingEnvironment* %111, i32 %112, %struct.BiContextType* %add.ptr163, i32 1)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.151, %if.then.148
  %116 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %116, i32 0, i32 0
  %117 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %117, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %118 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call165 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %118)
  %119 = load i32, i32* %curr_len, align 4
  %sub166 = sub nsw i32 %call165, %119
  %120 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %120, i32 0, i32 3
  store i32 %sub166, i32* %len, align 4
  ret void
}

declare void @getLuma4x4Neighbour(i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind uwtable
define void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %ctx_offset) #0 {
entry:
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %ctx_offset.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %ictx = alloca %struct.BiContextType*, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 %ctx_offset, i32* %ctx_offset.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %2 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %1, i16 signext 0, %struct.BiContextType* %2)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %4 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %3, i16 signext 1, %struct.BiContextType* %4)
  %5 = load i32, i32* %symbol.addr, align 4
  store i32 %5, i32* %l, align 4
  %6 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %7 = load i32, i32* %ctx_offset.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %6, i64 %idx.ext
  store %struct.BiContextType* %add.ptr, %struct.BiContextType** %ictx, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %8 = load i32, i32* %l, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %l, align 4
  %cmp1 = icmp ugt i32 %dec, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %10 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %9, i16 signext 1, %struct.BiContextType* %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %12 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %11, i16 signext 0, %struct.BiContextType* %12)
  br label %if.end

if.end:                                           ; preds = %while.end
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeDquant_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %dquant = alloca i32, align 4
  %sign = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 60
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 7
  %4 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %4, %struct.MotionInfoContexts** %ctx, align 8
  %5 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %5, i32 0, i32 1
  %6 = load i32, i32* %value1, align 4
  store i32 %6, i32* %dquant, align 4
  store i32 0, i32* %sign, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 61
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_delta_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 36
  %12 = load i32, i32* %prev_delta_qp, align 4
  store i32 %12, i32* @last_dquant, align 4
  %13 = load i32, i32* %dquant, align 4
  %cmp = icmp sle i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %dquant, align 4
  %call1 = call i32 @iabs(i32 %14)
  %shl = shl i32 %call1, 1
  store i32 %shl, i32* %act_sym, align 4
  %15 = load i32, i32* %sign, align 4
  %16 = load i32, i32* %act_sym, align 4
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %act_sym, align 4
  %17 = load i32, i32* %act_sym, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %act_sym, align 4
  %18 = load i32, i32* @last_dquant, align 4
  %cmp2 = icmp ne i32 %18, 0
  %cond = select i1 %cmp2, i32 1, i32 0
  store i32 %cond, i32* %act_ctx, align 4
  %19 = load i32, i32* %act_sym, align 4
  %cmp3 = icmp eq i32 %19, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %20 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %21 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %delta_qp_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %21, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %delta_qp_contexts, i32 0, i32 0
  %22 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %20, i16 signext 0, %struct.BiContextType* %add.ptr)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %23 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %24 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %delta_qp_contexts5 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %24, i32 0, i32 4
  %arraydecay6 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %delta_qp_contexts5, i32 0, i32 0
  %25 = load i32, i32* %act_ctx, align 4
  %idx.ext7 = sext i32 %25 to i64
  %add.ptr8 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay6, i64 %idx.ext7
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %23, i16 signext 1, %struct.BiContextType* %add.ptr8)
  store i32 2, i32* %act_ctx, align 4
  %26 = load i32, i32* %act_sym, align 4
  %dec9 = add nsw i32 %26, -1
  store i32 %dec9, i32* %act_sym, align 4
  %27 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %28 = load i32, i32* %act_sym, align 4
  %29 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %delta_qp_contexts10 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %29, i32 0, i32 4
  %arraydecay11 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %delta_qp_contexts10, i32 0, i32 0
  %30 = load i32, i32* %act_ctx, align 4
  %idx.ext12 = sext i32 %30 to i64
  %add.ptr13 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay11, i64 %idx.ext12
  call void @unary_bin_encode(%struct.EncodingEnvironment* %27, i32 %28, %struct.BiContextType* %add.ptr13, i32 1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.4
  %31 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %31, i32 0, i32 0
  %32 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %32, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %33 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call15 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %33)
  %34 = load i32, i32* %curr_len, align 4
  %sub = sub nsw i32 %call15, %34
  %35 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %35, i32 0, i32 3
  store i32 %sub, i32* %len, align 4
  ret void
}

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

; Function Attrs: nounwind uwtable
define void @writeMVD_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %mv_pred_res = alloca i32, align 4
  %mv_local_err = alloca i32, align 4
  %mv_sign = alloca i32, align 4
  %list_idx = alloca i32, align 4
  %k = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 24
  %3 = load i32, i32* %subblock_x, align 4
  %shl = shl i32 %3, 2
  store i32 %shl, i32* %i, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 25
  %5 = load i32, i32* %subblock_y, align 4
  %shl1 = shl i32 %5, 2
  store i32 %shl1, i32* %j, align 4
  %6 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %6, i32 0, i32 2
  %7 = load i32, i32* %value2, align 4
  %and = and i32 %7, 1
  store i32 %and, i32* %list_idx, align 4
  %8 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value22 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %8, i32 0, i32 2
  %9 = load i32, i32* %value22, align 4
  %shr = ashr i32 %9, 1
  store i32 %shr, i32* %k, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 3
  %11 = load i32, i32* %current_mb_nr, align 4
  store i32 %11, i32* %mb_nr, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 60
  %13 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %13, i32 0, i32 7
  %14 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %14, %struct.MotionInfoContexts** %ctx, align 8
  %15 = load i32, i32* %mb_nr, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 61
  %17 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %18 = load i32, i32* %mb_nr, align 4
  %19 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %19, 1
  %20 = load i32, i32* %j, align 4
  call void @getLuma4x4Neighbour(i32 %18, i32 %sub, i32 %20, %struct.pix_pos* %block_a)
  %21 = load i32, i32* %mb_nr, align 4
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %sub3 = sub nsw i32 %23, 1
  call void @getLuma4x4Neighbour(i32 %21, i32 %22, i32 %sub3, %struct.pix_pos* %block_b)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %24 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then, label %if.else.39

if.then:                                          ; preds = %entry
  %25 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %25 to i64
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %26 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %26 to i64
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %27 = load i32, i32* %y, align 4
  %idxprom6 = sext i32 %27 to i64
  %28 = load i32, i32* %list_idx, align 4
  %idxprom7 = sext i32 %28 to i64
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %29 = load i32, i32* %mb_addr, align 4
  %idxprom8 = sext i32 %29 to i64
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 61
  %31 = load %struct.macroblock*, %struct.macroblock** %mb_data9, align 8
  %arrayidx10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i64 %idxprom8
  %mvd = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx10, i32 0, i32 9
  %arrayidx11 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd, i32 0, i64 %idxprom7
  %arrayidx12 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx11, i32 0, i64 %idxprom6
  %arrayidx13 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx12, i32 0, i64 %idxprom5
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 %idxprom4
  %32 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 @iabs(i32 %32)
  store i32 %call15, i32* %b, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 100
  %34 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool16 = icmp ne i32 %34, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.then
  %35 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %35, 1
  br i1 %cmp, label %if.then.17, label %if.end.38

if.then.17:                                       ; preds = %land.lhs.true
  %36 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %36, i32 0, i32 19
  %37 = load i32, i32* %mb_field, align 4
  %cmp18 = icmp eq i32 %37, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %if.then.17
  %mb_addr20 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %38 = load i32, i32* %mb_addr20, align 4
  %idxprom21 = sext i32 %38 to i64
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 61
  %40 = load %struct.macroblock*, %struct.macroblock** %mb_data22, align 8
  %arrayidx23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %40, i64 %idxprom21
  %mb_field24 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx23, i32 0, i32 19
  %41 = load i32, i32* %mb_field24, align 4
  %cmp25 = icmp eq i32 %41, 1
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %land.lhs.true.19
  %42 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %42, 2
  store i32 %mul, i32* %b, align 4
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true.19, %if.then.17
  %43 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field27 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 19
  %44 = load i32, i32* %mb_field27, align 4
  %cmp28 = icmp eq i32 %44, 1
  br i1 %cmp28, label %land.lhs.true.29, label %if.end

land.lhs.true.29:                                 ; preds = %if.else
  %mb_addr30 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %45 = load i32, i32* %mb_addr30, align 4
  %idxprom31 = sext i32 %45 to i64
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 61
  %47 = load %struct.macroblock*, %struct.macroblock** %mb_data32, align 8
  %arrayidx33 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i64 %idxprom31
  %mb_field34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx33, i32 0, i32 19
  %48 = load i32, i32* %mb_field34, align 4
  %cmp35 = icmp eq i32 %48, 0
  br i1 %cmp35, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %land.lhs.true.29
  %49 = load i32, i32* %b, align 4
  %div = sdiv i32 %49, 2
  store i32 %div, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.36, %land.lhs.true.29, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then.26
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true, %if.then
  br label %if.end.40

if.else.39:                                       ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.end.38
  %available41 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %50 = load i32, i32* %available41, align 4
  %tobool42 = icmp ne i32 %50, 0
  br i1 %tobool42, label %if.then.43, label %if.else.91

if.then.43:                                       ; preds = %if.end.40
  %51 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %51 to i64
  %x45 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %52 = load i32, i32* %x45, align 4
  %idxprom46 = sext i32 %52 to i64
  %y47 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %53 = load i32, i32* %y47, align 4
  %idxprom48 = sext i32 %53 to i64
  %54 = load i32, i32* %list_idx, align 4
  %idxprom49 = sext i32 %54 to i64
  %mb_addr50 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %55 = load i32, i32* %mb_addr50, align 4
  %idxprom51 = sext i32 %55 to i64
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 61
  %57 = load %struct.macroblock*, %struct.macroblock** %mb_data52, align 8
  %arrayidx53 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %57, i64 %idxprom51
  %mvd54 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx53, i32 0, i32 9
  %arrayidx55 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd54, i32 0, i64 %idxprom49
  %arrayidx56 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx55, i32 0, i64 %idxprom48
  %arrayidx57 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx56, i32 0, i64 %idxprom46
  %arrayidx58 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx57, i32 0, i64 %idxprom44
  %58 = load i32, i32* %arrayidx58, align 4
  %call59 = call i32 @iabs(i32 %58)
  store i32 %call59, i32* %a, align 4
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 100
  %60 = load i32, i32* %MbaffFrameFlag60, align 4
  %tobool61 = icmp ne i32 %60, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.90

land.lhs.true.62:                                 ; preds = %if.then.43
  %61 = load i32, i32* %k, align 4
  %cmp63 = icmp eq i32 %61, 1
  br i1 %cmp63, label %if.then.64, label %if.end.90

if.then.64:                                       ; preds = %land.lhs.true.62
  %62 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %62, i32 0, i32 19
  %63 = load i32, i32* %mb_field65, align 4
  %cmp66 = icmp eq i32 %63, 0
  br i1 %cmp66, label %land.lhs.true.67, label %if.else.76

land.lhs.true.67:                                 ; preds = %if.then.64
  %mb_addr68 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %64 = load i32, i32* %mb_addr68, align 4
  %idxprom69 = sext i32 %64 to i64
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 61
  %66 = load %struct.macroblock*, %struct.macroblock** %mb_data70, align 8
  %arrayidx71 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %66, i64 %idxprom69
  %mb_field72 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx71, i32 0, i32 19
  %67 = load i32, i32* %mb_field72, align 4
  %cmp73 = icmp eq i32 %67, 1
  br i1 %cmp73, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %land.lhs.true.67
  %68 = load i32, i32* %a, align 4
  %mul75 = mul nsw i32 %68, 2
  store i32 %mul75, i32* %a, align 4
  br label %if.end.89

if.else.76:                                       ; preds = %land.lhs.true.67, %if.then.64
  %69 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %69, i32 0, i32 19
  %70 = load i32, i32* %mb_field77, align 4
  %cmp78 = icmp eq i32 %70, 1
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.88

land.lhs.true.79:                                 ; preds = %if.else.76
  %mb_addr80 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %71 = load i32, i32* %mb_addr80, align 4
  %idxprom81 = sext i32 %71 to i64
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 61
  %73 = load %struct.macroblock*, %struct.macroblock** %mb_data82, align 8
  %arrayidx83 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %73, i64 %idxprom81
  %mb_field84 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx83, i32 0, i32 19
  %74 = load i32, i32* %mb_field84, align 4
  %cmp85 = icmp eq i32 %74, 0
  br i1 %cmp85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %land.lhs.true.79
  %75 = load i32, i32* %a, align 4
  %div87 = sdiv i32 %75, 2
  store i32 %div87, i32* %a, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %land.lhs.true.79, %if.else.76
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.74
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %land.lhs.true.62, %if.then.43
  br label %if.end.92

if.else.91:                                       ; preds = %if.end.40
  store i32 0, i32* %a, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.91, %if.end.90
  %76 = load i32, i32* %a, align 4
  %77 = load i32, i32* %b, align 4
  %add = add nsw i32 %76, %77
  store i32 %add, i32* %mv_local_err, align 4
  %cmp93 = icmp slt i32 %add, 3
  br i1 %cmp93, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.end.92
  %78 = load i32, i32* %k, align 4
  %mul95 = mul nsw i32 5, %78
  store i32 %mul95, i32* %act_ctx, align 4
  br label %if.end.105

if.else.96:                                       ; preds = %if.end.92
  %79 = load i32, i32* %mv_local_err, align 4
  %cmp97 = icmp sgt i32 %79, 32
  br i1 %cmp97, label %if.then.98, label %if.else.101

if.then.98:                                       ; preds = %if.else.96
  %80 = load i32, i32* %k, align 4
  %mul99 = mul nsw i32 5, %80
  %add100 = add nsw i32 %mul99, 3
  store i32 %add100, i32* %act_ctx, align 4
  br label %if.end.104

if.else.101:                                      ; preds = %if.else.96
  %81 = load i32, i32* %k, align 4
  %mul102 = mul nsw i32 5, %81
  %add103 = add nsw i32 %mul102, 2
  store i32 %add103, i32* %act_ctx, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.98
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.94
  %82 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %82, i32 0, i32 1
  %83 = load i32, i32* %value1, align 4
  store i32 %83, i32* %mv_pred_res, align 4
  %84 = load i32, i32* %act_ctx, align 4
  %85 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %85, i32 0, i32 6
  store i32 %84, i32* %context, align 4
  %86 = load i32, i32* %mv_pred_res, align 4
  %call106 = call i32 @iabs(i32 %86)
  store i32 %call106, i32* %act_sym, align 4
  %87 = load i32, i32* %act_sym, align 4
  %cmp107 = icmp eq i32 %87, 0
  br i1 %cmp107, label %if.then.108, label %if.else.112

if.then.108:                                      ; preds = %if.end.105
  %88 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %89 = load i32, i32* %act_ctx, align 4
  %idxprom109 = sext i32 %89 to i64
  %90 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mv_res_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %90, i32 0, i32 2
  %arrayidx110 = getelementptr inbounds [2 x [10 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]]* %mv_res_contexts, i32 0, i64 0
  %arrayidx111 = getelementptr inbounds [10 x %struct.BiContextType], [10 x %struct.BiContextType]* %arrayidx110, i32 0, i64 %idxprom109
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %88, i16 signext 0, %struct.BiContextType* %arrayidx111)
  br label %if.end.121

if.else.112:                                      ; preds = %if.end.105
  %91 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %92 = load i32, i32* %act_ctx, align 4
  %idxprom113 = sext i32 %92 to i64
  %93 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mv_res_contexts114 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %93, i32 0, i32 2
  %arrayidx115 = getelementptr inbounds [2 x [10 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]]* %mv_res_contexts114, i32 0, i64 0
  %arrayidx116 = getelementptr inbounds [10 x %struct.BiContextType], [10 x %struct.BiContextType]* %arrayidx115, i32 0, i64 %idxprom113
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %91, i16 signext 1, %struct.BiContextType* %arrayidx116)
  %94 = load i32, i32* %act_sym, align 4
  %dec = add nsw i32 %94, -1
  store i32 %dec, i32* %act_sym, align 4
  %95 = load i32, i32* %k, align 4
  %mul117 = mul nsw i32 5, %95
  store i32 %mul117, i32* %act_ctx, align 4
  %96 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %97 = load i32, i32* %act_sym, align 4
  %98 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mv_res_contexts118 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %98, i32 0, i32 2
  %arrayidx119 = getelementptr inbounds [2 x [10 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]]* %mv_res_contexts118, i32 0, i64 1
  %arraydecay = getelementptr inbounds [10 x %struct.BiContextType], [10 x %struct.BiContextType]* %arrayidx119, i32 0, i32 0
  %99 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %99 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @unary_exp_golomb_mv_encode(%struct.EncodingEnvironment* %96, i32 %97, %struct.BiContextType* %add.ptr, i32 3)
  %100 = load i32, i32* %mv_pred_res, align 4
  %cmp120 = icmp slt i32 %100, 0
  %cond = select i1 %cmp120, i32 1, i32 0
  store i32 %cond, i32* %mv_sign, align 4
  %101 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %102 = load i32, i32* %mv_sign, align 4
  %conv = trunc i32 %102 to i16
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %101, i16 signext %conv)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.112, %if.then.108
  %103 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %103, i32 0, i32 0
  %104 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %104, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %105 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call122 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %105)
  %106 = load i32, i32* %curr_len, align 4
  %sub123 = sub nsw i32 %call122, %106
  %107 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %107, i32 0, i32 3
  store i32 %sub123, i32* %len, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @unary_exp_golomb_mv_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %max_bin) #0 {
entry:
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %max_bin.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %bin = alloca i32, align 4
  %ictx = alloca %struct.BiContextType*, align 8
  %exp_start = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 %max_bin, i32* %max_bin.addr, align 4
  store i32 1, i32* %bin, align 4
  %0 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  store %struct.BiContextType* %0, %struct.BiContextType** %ictx, align 8
  store i32 8, i32* %exp_start, align 4
  %1 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %3 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %2, i16 signext 0, %struct.BiContextType* %3)
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %5 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %4, i16 signext 1, %struct.BiContextType* %5)
  %6 = load i32, i32* %symbol.addr, align 4
  store i32 %6, i32* %l, align 4
  store i32 1, i32* %k, align 4
  %7 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %incdec.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %7, i32 1
  store %struct.BiContextType* %incdec.ptr, %struct.BiContextType** %ictx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.else
  %8 = load i32, i32* %l, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %l, align 4
  %cmp1 = icmp ugt i32 %dec, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %k, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %k, align 4
  %10 = load i32, i32* %exp_start, align 4
  %cmp2 = icmp ule i32 %inc, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %13 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %12, i16 signext 1, %struct.BiContextType* %13)
  %14 = load i32, i32* %bin, align 4
  %inc3 = add i32 %14, 1
  store i32 %inc3, i32* %bin, align 4
  %cmp4 = icmp eq i32 %inc3, 2
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body
  %15 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %15, i32 1
  store %struct.BiContextType* %incdec.ptr6, %struct.BiContextType** %ictx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %while.body
  %16 = load i32, i32* %bin, align 4
  %17 = load i32, i32* %max_bin.addr, align 4
  %cmp7 = icmp eq i32 %16, %17
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %18 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %18, i32 1
  store %struct.BiContextType* %incdec.ptr9, %struct.BiContextType** %ictx, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load i32, i32* %symbol.addr, align 4
  %20 = load i32, i32* %exp_start, align 4
  %cmp11 = icmp ult i32 %19, %20
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %while.end
  %21 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %22 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %21, i16 signext 0, %struct.BiContextType* %22)
  br label %if.end.14

if.else.13:                                       ; preds = %while.end
  %23 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %24 = load i32, i32* %symbol.addr, align 4
  %25 = load i32, i32* %exp_start, align 4
  %sub = sub i32 %24, %25
  call void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %23, i32 %sub, i32 3)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  ret void
}

declare void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment*, i16 signext) #2

; Function Attrs: nounwind uwtable
define void @writeCIPredMode_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %ctx = alloca %struct.TextureInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %act_ctx = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_sym = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 60
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 8
  %4 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %4, %struct.TextureInfoContexts** %ctx, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 3
  %6 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 61
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %9 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %9, i32 0, i32 1
  %10 = load i32, i32* %value1, align 4
  store i32 %10, i32* %act_sym, align 4
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 6
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp = icmp eq %struct.macroblock* %12, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i32 0, i32 6
  %14 = load %struct.macroblock*, %struct.macroblock** %mb_available_up1, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 17
  %15 = load i32, i32* %c_ipred_mode, align 4
  %cmp2 = icmp ne i32 %15, 0
  %cond = select i1 %cmp2, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 7
  %17 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp3 = icmp eq %struct.macroblock* %17, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %a, align 4
  br label %if.end.10

if.else.5:                                        ; preds = %if.end
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 7
  %19 = load %struct.macroblock*, %struct.macroblock** %mb_available_left6, align 8
  %c_ipred_mode7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 17
  %20 = load i32, i32* %c_ipred_mode7, align 4
  %cmp8 = icmp ne i32 %20, 0
  %cond9 = select i1 %cmp8, i32 1, i32 0
  store i32 %cond9, i32* %a, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.5, %if.then.4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %add = add nsw i32 %21, %22
  store i32 %add, i32* %act_ctx, align 4
  %23 = load i32, i32* %act_sym, align 4
  %cmp11 = icmp eq i32 %23, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.10
  %24 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %25 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cipr_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %25, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %cipr_contexts, i32 0, i32 0
  %26 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %24, i16 signext 0, %struct.BiContextType* %add.ptr)
  br label %if.end.21

if.else.13:                                       ; preds = %if.end.10
  %27 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %28 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cipr_contexts14 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %28, i32 0, i32 1
  %arraydecay15 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %cipr_contexts14, i32 0, i32 0
  %29 = load i32, i32* %act_ctx, align 4
  %idx.ext16 = sext i32 %29 to i64
  %add.ptr17 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay15, i64 %idx.ext16
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %27, i16 signext 1, %struct.BiContextType* %add.ptr17)
  %30 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %31 = load i32, i32* %act_sym, align 4
  %sub = sub nsw i32 %31, 1
  %32 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cipr_contexts18 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %32, i32 0, i32 1
  %arraydecay19 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %cipr_contexts18, i32 0, i32 0
  %add.ptr20 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay19, i64 3
  call void @unary_bin_max_encode(%struct.EncodingEnvironment* %30, i32 %sub, %struct.BiContextType* %add.ptr20, i32 0, i32 2)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.13, %if.then.12
  %33 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %33, i32 0, i32 0
  %34 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call22 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %35)
  %36 = load i32, i32* %curr_len, align 4
  %sub23 = sub nsw i32 %call22, %36
  %37 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %37, i32 0, i32 3
  store i32 %sub23, i32* %len, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @unary_bin_max_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %ctx_offset, i32 %max_symbol) #0 {
entry:
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %ctx_offset.addr = alloca i32, align 4
  %max_symbol.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %ictx = alloca %struct.BiContextType*, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 %ctx_offset, i32* %ctx_offset.addr, align 4
  store i32 %max_symbol, i32* %max_symbol.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %2 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %1, i16 signext 0, %struct.BiContextType* %2)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %4 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %3, i16 signext 1, %struct.BiContextType* %4)
  %5 = load i32, i32* %symbol.addr, align 4
  store i32 %5, i32* %l, align 4
  %6 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %7 = load i32, i32* %ctx_offset.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %6, i64 %idx.ext
  store %struct.BiContextType* %add.ptr, %struct.BiContextType** %ictx, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %8 = load i32, i32* %l, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %l, align 4
  %cmp1 = icmp ugt i32 %dec, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %10 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %9, i16 signext 1, %struct.BiContextType* %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %symbol.addr, align 4
  %12 = load i32, i32* %max_symbol.addr, align 4
  %cmp2 = icmp ult i32 %11, %12
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.end
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %14 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %13, i16 signext 0, %struct.BiContextType* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.end
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeCBP_BIT_CABAC(i32 %b8, i32 %bit, i32 %cbp, %struct.macroblock* %currMB, i32 %inter, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %b8.addr = alloca i32, align 4
  %bit.addr = alloca i32, align 4
  %cbp.addr = alloca i32, align 4
  %currMB.addr = alloca %struct.macroblock*, align 8
  %inter.addr = alloca i32, align 4
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %block_a = alloca %struct.pix_pos, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  store i32 %b8, i32* %b8.addr, align 4
  store i32 %bit, i32* %bit.addr, align 4
  store i32 %cbp, i32* %cbp.addr, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store i32 %inter, i32* %inter.addr, align 4
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load i32, i32* %b8.addr, align 4
  %and = and i32 %0, 1
  %shl = shl i32 %and, 1
  store i32 %shl, i32* %mb_x, align 4
  %1 = load i32, i32* %b8.addr, align 4
  %shr = ashr i32 %1, 1
  %shl1 = shl i32 %shr, 1
  store i32 %shl1, i32* %mb_y, align 4
  %2 = load i32, i32* %mb_y, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else.15

if.then:                                          ; preds = %entry
  %3 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i32 0, i32 6
  %4 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp2 = icmp eq %struct.macroblock* %4, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %b, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then
  %5 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_available_up4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i32 0, i32 6
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_available_up4, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i32 0, i32 8
  %7 = load i32, i32* %mb_type, align 4
  %cmp5 = icmp eq i32 %7, 14
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %b, align 4
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %8 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_available_up8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i32 0, i32 6
  %9 = load %struct.macroblock*, %struct.macroblock** %mb_available_up8, align 8
  %cbp9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 12
  %10 = load i32, i32* %cbp9, align 4
  %11 = load i32, i32* %mb_x, align 4
  %shr10 = ashr i32 %11, 1
  %add = add nsw i32 2, %shr10
  %shl11 = shl i32 1, %add
  %and12 = and i32 %10, %shl11
  %cmp13 = icmp eq i32 %and12, 0
  %cond = select i1 %cmp13, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.3
  br label %if.end.20

if.else.15:                                       ; preds = %entry
  %12 = load i32, i32* %cbp.addr, align 4
  %13 = load i32, i32* %mb_x, align 4
  %div = sdiv i32 %13, 2
  %shl16 = shl i32 1, %div
  %and17 = and i32 %12, %shl16
  %cmp18 = icmp eq i32 %and17, 0
  %cond19 = select i1 %cmp18, i32 1, i32 0
  store i32 %cond19, i32* %b, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.15, %if.end.14
  %14 = load i32, i32* %mb_x, align 4
  %cmp21 = icmp eq i32 %14, 0
  br i1 %cmp21, label %if.then.22, label %if.else.44

if.then.22:                                       ; preds = %if.end.20
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 3
  %16 = load i32, i32* %current_mb_nr, align 4
  %17 = load i32, i32* %mb_x, align 4
  %shl23 = shl i32 %17, 2
  %sub = sub nsw i32 %shl23, 1
  %18 = load i32, i32* %mb_y, align 4
  %shl24 = shl i32 %18, 2
  call void @getLuma4x4Neighbour(i32 %16, i32 %sub, i32 %shl24, %struct.pix_pos* %block_a)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %19 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.25, label %if.else.42

if.then.25:                                       ; preds = %if.then.22
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %20 = load i32, i32* %mb_addr, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 61
  %22 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i64 %idxprom
  %mb_type26 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 8
  %23 = load i32, i32* %mb_type26, align 4
  %cmp27 = icmp eq i32 %23, 14
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.then.25
  store i32 0, i32* %a, align 4
  br label %if.end.41

if.else.29:                                       ; preds = %if.then.25
  %mb_addr30 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %24 = load i32, i32* %mb_addr30, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 61
  %26 = load %struct.macroblock*, %struct.macroblock** %mb_data32, align 8
  %arrayidx33 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i64 %idxprom31
  %cbp34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx33, i32 0, i32 12
  %27 = load i32, i32* %cbp34, align 4
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %28 = load i32, i32* %y, align 4
  %shr35 = ashr i32 %28, 1
  %mul = mul nsw i32 2, %shr35
  %add36 = add nsw i32 %mul, 1
  %shl37 = shl i32 1, %add36
  %and38 = and i32 %27, %shl37
  %cmp39 = icmp eq i32 %and38, 0
  %cond40 = select i1 %cmp39, i32 1, i32 0
  store i32 %cond40, i32* %a, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.43

if.else.42:                                       ; preds = %if.then.22
  store i32 0, i32* %a, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.end.41
  br label %if.end.49

if.else.44:                                       ; preds = %if.end.20
  %29 = load i32, i32* %cbp.addr, align 4
  %30 = load i32, i32* %mb_y, align 4
  %shl45 = shl i32 1, %30
  %and46 = and i32 %29, %shl45
  %cmp47 = icmp eq i32 %and46, 0
  %cond48 = select i1 %cmp47, i32 1, i32 0
  store i32 %cond48, i32* %a, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.44, %if.end.43
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %32 = load i32, i32* %bit.addr, align 4
  %conv = trunc i32 %32 to i16
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 60
  %34 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %34, i32 0, i32 8
  %35 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %cbp_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %35, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [3 x [4 x %struct.BiContextType]], [3 x [4 x %struct.BiContextType]]* %cbp_contexts, i32 0, i64 0
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx50, i32 0, i32 0
  %36 = load i32, i32* %a, align 4
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %37 = load i32, i32* %b, align 4
  %mul51 = mul nsw i32 2, %37
  %idx.ext52 = sext i32 %mul51 to i64
  %add.ptr53 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %add.ptr, i64 %idx.ext52
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %31, i16 signext %conv, %struct.BiContextType* %add.ptr53)
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeCBP_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %ctx = alloca %struct.TextureInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %curr_cbp_ctx = alloca i32, align 4
  %curr_cbp_idx = alloca i32, align 4
  %cbp = alloca i32, align 4
  %cbp_bit = alloca i32, align 4
  %b8 = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 60
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 8
  %4 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %4, %struct.TextureInfoContexts** %ctx, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 3
  %6 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 61
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %9 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %9, i32 0, i32 1
  %10 = load i32, i32* %value1, align 4
  store i32 %10, i32* %cbp, align 4
  store i32 0, i32* %b8, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %b8, align 4
  %cmp = icmp slt i32 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %b8, align 4
  %idxprom1 = sext i32 %12 to i64
  %13 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i32 0, i32 14
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 %idxprom1
  %14 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %14, 11
  %cond = select i1 %cmp3, i32 0, i32 1
  store i32 %cond, i32* %curr_cbp_idx, align 4
  %15 = load i32, i32* %b8, align 4
  %16 = load i32, i32* %cbp, align 4
  %17 = load i32, i32* %b8, align 4
  %shl = shl i32 1, %17
  %and = and i32 %16, %shl
  %18 = load i32, i32* %cbp, align 4
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %20 = load i32, i32* %curr_cbp_idx, align 4
  %21 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  call void @writeCBP_BIT_CABAC(i32 %15, i32 %and, i32 %18, %struct.macroblock* %19, i32 %20, %struct.EncodingEnvironment* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %b8, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %b8, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 160
  %24 = load i32, i32* %yuv_format, align 4
  %cmp4 = icmp ne i32 %24, 0
  br i1 %cmp4, label %if.then, label %if.end.94

if.then:                                          ; preds = %for.end
  store i32 0, i32* %b, align 4
  %25 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i32 0, i32 6
  %26 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp5 = icmp ne %struct.macroblock* %26, null
  br i1 %cmp5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.then
  %27 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 6
  %28 = load %struct.macroblock*, %struct.macroblock** %mb_available_up7, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %28, i32 0, i32 8
  %29 = load i32, i32* %mb_type, align 4
  %cmp8 = icmp eq i32 %29, 14
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  store i32 1, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.6
  %30 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i32 0, i32 6
  %31 = load %struct.macroblock*, %struct.macroblock** %mb_available_up10, align 8
  %cbp11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 12
  %32 = load i32, i32* %cbp11, align 4
  %cmp12 = icmp sgt i32 %32, 15
  %cond13 = select i1 %cmp12, i32 1, i32 0
  store i32 %cond13, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %a, align 4
  %33 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %33, i32 0, i32 7
  %34 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp15 = icmp ne %struct.macroblock* %34, null
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.end.14
  %35 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left17 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 7
  %36 = load %struct.macroblock*, %struct.macroblock** %mb_available_left17, align 8
  %mb_type18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %36, i32 0, i32 8
  %37 = load i32, i32* %mb_type18, align 4
  %cmp19 = icmp eq i32 %37, 14
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.then.16
  store i32 1, i32* %a, align 4
  br label %if.end.26

if.else.21:                                       ; preds = %if.then.16
  %38 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left22 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %38, i32 0, i32 7
  %39 = load %struct.macroblock*, %struct.macroblock** %mb_available_left22, align 8
  %cbp23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 12
  %40 = load i32, i32* %cbp23, align 4
  %cmp24 = icmp sgt i32 %40, 15
  %cond25 = select i1 %cmp24, i32 1, i32 0
  store i32 %cond25, i32* %a, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.21, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.14
  %41 = load i32, i32* %a, align 4
  %42 = load i32, i32* %b, align 4
  %mul = mul nsw i32 2, %42
  %add = add nsw i32 %41, %mul
  store i32 %add, i32* %curr_cbp_ctx, align 4
  %43 = load i32, i32* %cbp, align 4
  %cmp28 = icmp sgt i32 %43, 15
  %cond29 = select i1 %cmp28, i32 1, i32 0
  store i32 %cond29, i32* %cbp_bit, align 4
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %45 = load i32, i32* %cbp_bit, align 4
  %conv = trunc i32 %45 to i16
  %46 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cbp_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %46, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [3 x [4 x %struct.BiContextType]], [3 x [4 x %struct.BiContextType]]* %cbp_contexts, i32 0, i64 1
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx30, i32 0, i32 0
  %47 = load i32, i32* %curr_cbp_ctx, align 4
  %idx.ext = sext i32 %47 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %44, i16 signext %conv, %struct.BiContextType* %add.ptr)
  %48 = load i32, i32* %cbp, align 4
  %cmp31 = icmp sgt i32 %48, 15
  br i1 %cmp31, label %if.then.33, label %if.end.93

if.then.33:                                       ; preds = %if.end.27
  store i32 0, i32* %b, align 4
  %49 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i32 0, i32 6
  %50 = load %struct.macroblock*, %struct.macroblock** %mb_available_up34, align 8
  %cmp35 = icmp ne %struct.macroblock* %50, null
  br i1 %cmp35, label %if.then.37, label %if.end.56

if.then.37:                                       ; preds = %if.then.33
  %51 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up38 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 6
  %52 = load %struct.macroblock*, %struct.macroblock** %mb_available_up38, align 8
  %mb_type39 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %52, i32 0, i32 8
  %53 = load i32, i32* %mb_type39, align 4
  %cmp40 = icmp eq i32 %53, 14
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.then.37
  store i32 1, i32* %b, align 4
  br label %if.end.55

if.else.43:                                       ; preds = %if.then.37
  %54 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up44 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %54, i32 0, i32 6
  %55 = load %struct.macroblock*, %struct.macroblock** %mb_available_up44, align 8
  %cbp45 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %55, i32 0, i32 12
  %56 = load i32, i32* %cbp45, align 4
  %cmp46 = icmp sgt i32 %56, 15
  br i1 %cmp46, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.else.43
  %57 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up49 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %57, i32 0, i32 6
  %58 = load %struct.macroblock*, %struct.macroblock** %mb_available_up49, align 8
  %cbp50 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %58, i32 0, i32 12
  %59 = load i32, i32* %cbp50, align 4
  %shr = ashr i32 %59, 4
  %cmp51 = icmp eq i32 %shr, 2
  %cond53 = select i1 %cmp51, i32 1, i32 0
  store i32 %cond53, i32* %b, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.48, %if.else.43
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.42
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.33
  store i32 0, i32* %a, align 4
  %60 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left57 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 7
  %61 = load %struct.macroblock*, %struct.macroblock** %mb_available_left57, align 8
  %cmp58 = icmp ne %struct.macroblock* %61, null
  br i1 %cmp58, label %if.then.60, label %if.end.80

if.then.60:                                       ; preds = %if.end.56
  %62 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left61 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %62, i32 0, i32 7
  %63 = load %struct.macroblock*, %struct.macroblock** %mb_available_left61, align 8
  %mb_type62 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %63, i32 0, i32 8
  %64 = load i32, i32* %mb_type62, align 4
  %cmp63 = icmp eq i32 %64, 14
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.then.60
  store i32 1, i32* %a, align 4
  br label %if.end.79

if.else.66:                                       ; preds = %if.then.60
  %65 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left67 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i32 0, i32 7
  %66 = load %struct.macroblock*, %struct.macroblock** %mb_available_left67, align 8
  %cbp68 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %66, i32 0, i32 12
  %67 = load i32, i32* %cbp68, align 4
  %cmp69 = icmp sgt i32 %67, 15
  br i1 %cmp69, label %if.then.71, label %if.end.78

if.then.71:                                       ; preds = %if.else.66
  %68 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left72 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %68, i32 0, i32 7
  %69 = load %struct.macroblock*, %struct.macroblock** %mb_available_left72, align 8
  %cbp73 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %69, i32 0, i32 12
  %70 = load i32, i32* %cbp73, align 4
  %shr74 = ashr i32 %70, 4
  %cmp75 = icmp eq i32 %shr74, 2
  %cond77 = select i1 %cmp75, i32 1, i32 0
  store i32 %cond77, i32* %a, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.71, %if.else.66
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.65
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.56
  %71 = load i32, i32* %a, align 4
  %72 = load i32, i32* %b, align 4
  %mul81 = mul nsw i32 2, %72
  %add82 = add nsw i32 %71, %mul81
  store i32 %add82, i32* %curr_cbp_ctx, align 4
  %73 = load i32, i32* %cbp, align 4
  %shr83 = ashr i32 %73, 4
  %cmp84 = icmp eq i32 %shr83, 2
  %cond86 = select i1 %cmp84, i32 1, i32 0
  store i32 %cond86, i32* %cbp_bit, align 4
  %74 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %75 = load i32, i32* %cbp_bit, align 4
  %conv87 = trunc i32 %75 to i16
  %76 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cbp_contexts88 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %76, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [3 x [4 x %struct.BiContextType]], [3 x [4 x %struct.BiContextType]]* %cbp_contexts88, i32 0, i64 2
  %arraydecay90 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx89, i32 0, i32 0
  %77 = load i32, i32* %curr_cbp_ctx, align 4
  %idx.ext91 = sext i32 %77 to i64
  %add.ptr92 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay90, i64 %idx.ext91
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %74, i16 signext %conv87, %struct.BiContextType* %add.ptr92)
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.80, %if.end.27
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %for.end
  %78 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %78, i32 0, i32 0
  %79 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %79, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %80 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call95 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %80)
  %81 = load i32, i32* %curr_len, align 4
  %sub = sub nsw i32 %call95, %81
  %82 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %82, i32 0, i32 3
  store i32 %sub, i32* %len, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_and_store_CBP_block_bit(%struct.macroblock* %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32 %cbp_bit) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %type.addr = alloca i32, align 4
  %cbp_bit.addr = alloca i32, align 4
  %y_ac = alloca i32, align 4
  %y_dc = alloca i32, align 4
  %u_ac = alloca i32, align 4
  %v_ac = alloca i32, align 4
  %chroma_dc = alloca i32, align 4
  %u_dc = alloca i32, align 4
  %v_dc = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %bit = alloca i32, align 4
  %default_bit = alloca i32, align 4
  %upper_bit = alloca i32, align 4
  %left_bit = alloca i32, align 4
  %ctx = alloca i32, align 4
  %bit_pos_a = alloca i32, align 4
  %bit_pos_b = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %cbp_bit, i32* %cbp_bit.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %lor.end, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %type.addr, align 4
  %cmp3 = icmp eq i32 %2, 3
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %type.addr, align 4
  %cmp5 = icmp eq i32 %3, 4
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %4 = load i32, i32* %type.addr, align 4
  %cmp6 = icmp eq i32 %4, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false.2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp6, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, i32* %y_ac, align 4
  %6 = load i32, i32* %type.addr, align 4
  %cmp7 = icmp eq i32 %6, 0
  %conv = zext i1 %cmp7 to i32
  store i32 %conv, i32* %y_dc, align 4
  %7 = load i32, i32* %type.addr, align 4
  %cmp8 = icmp eq i32 %7, 7
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_v_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 27
  %9 = load i32, i32* %is_v_block, align 4
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %10 = phi i1 [ false, %lor.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %u_ac, align 4
  %11 = load i32, i32* %type.addr, align 4
  %cmp10 = icmp eq i32 %11, 7
  br i1 %cmp10, label %land.rhs.12, label %land.end.15

land.rhs.12:                                      ; preds = %land.end
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_v_block13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 27
  %13 = load i32, i32* %is_v_block13, align 4
  %tobool14 = icmp ne i32 %13, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.12, %land.end
  %14 = phi i1 [ false, %land.end ], [ %tobool14, %land.rhs.12 ]
  %land.ext16 = zext i1 %14 to i32
  store i32 %land.ext16, i32* %v_ac, align 4
  %15 = load i32, i32* %type.addr, align 4
  %cmp17 = icmp eq i32 %15, 6
  br i1 %cmp17, label %lor.end.25, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.end.15
  %16 = load i32, i32* %type.addr, align 4
  %cmp20 = icmp eq i32 %16, 8
  br i1 %cmp20, label %lor.end.25, label %lor.rhs.22

lor.rhs.22:                                       ; preds = %lor.lhs.false.19
  %17 = load i32, i32* %type.addr, align 4
  %cmp23 = icmp eq i32 %17, 9
  br label %lor.end.25

lor.end.25:                                       ; preds = %lor.rhs.22, %lor.lhs.false.19, %land.end.15
  %18 = phi i1 [ true, %lor.lhs.false.19 ], [ true, %land.end.15 ], [ %cmp23, %lor.rhs.22 ]
  %lor.ext26 = zext i1 %18 to i32
  store i32 %lor.ext26, i32* %chroma_dc, align 4
  %19 = load i32, i32* %chroma_dc, align 4
  %tobool27 = icmp ne i32 %19, 0
  br i1 %tobool27, label %land.rhs.28, label %land.end.32

land.rhs.28:                                      ; preds = %lor.end.25
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_v_block29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 27
  %21 = load i32, i32* %is_v_block29, align 4
  %tobool30 = icmp ne i32 %21, 0
  %lnot31 = xor i1 %tobool30, true
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.28, %lor.end.25
  %22 = phi i1 [ false, %lor.end.25 ], [ %lnot31, %land.rhs.28 ]
  %land.ext33 = zext i1 %22 to i32
  store i32 %land.ext33, i32* %u_dc, align 4
  %23 = load i32, i32* %chroma_dc, align 4
  %tobool34 = icmp ne i32 %23, 0
  br i1 %tobool34, label %land.rhs.35, label %land.end.38

land.rhs.35:                                      ; preds = %land.end.32
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_v_block36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 27
  %25 = load i32, i32* %is_v_block36, align 4
  %tobool37 = icmp ne i32 %25, 0
  br label %land.end.38

land.end.38:                                      ; preds = %land.rhs.35, %land.end.32
  %26 = phi i1 [ false, %land.end.32 ], [ %tobool37, %land.rhs.35 ]
  %land.ext39 = zext i1 %26 to i32
  store i32 %land.ext39, i32* %v_dc, align 4
  %27 = load i32, i32* %y_ac, align 4
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %cond.true, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %land.end.38
  %28 = load i32, i32* %u_ac, align 4
  %tobool42 = icmp ne i32 %28, 0
  br i1 %tobool42, label %cond.true, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.41
  %29 = load i32, i32* %v_ac, align 4
  %tobool44 = icmp ne i32 %29, 0
  br i1 %tobool44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.43, %lor.lhs.false.41, %land.end.38
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 25
  %31 = load i32, i32* %subblock_y, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %j, align 4
  %32 = load i32, i32* %y_ac, align 4
  %tobool45 = icmp ne i32 %32, 0
  br i1 %tobool45, label %cond.true.50, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %cond.end
  %33 = load i32, i32* %u_ac, align 4
  %tobool47 = icmp ne i32 %33, 0
  br i1 %tobool47, label %cond.true.50, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.46
  %34 = load i32, i32* %v_ac, align 4
  %tobool49 = icmp ne i32 %34, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %lor.lhs.false.48, %lor.lhs.false.46, %cond.end
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 24
  %36 = load i32, i32* %subblock_x, align 4
  br label %cond.end.52

cond.false.51:                                    ; preds = %lor.lhs.false.48
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ %36, %cond.true.50 ], [ 0, %cond.false.51 ]
  store i32 %cond53, i32* %i, align 4
  %37 = load i32, i32* %y_dc, align 4
  %tobool54 = icmp ne i32 %37, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.52
  br label %cond.end.74

cond.false.56:                                    ; preds = %cond.end.52
  %38 = load i32, i32* %y_ac, align 4
  %tobool57 = icmp ne i32 %38, 0
  br i1 %tobool57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.false.56
  br label %cond.end.72

cond.false.59:                                    ; preds = %cond.false.56
  %39 = load i32, i32* %u_dc, align 4
  %tobool60 = icmp ne i32 %39, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.false.59
  br label %cond.end.70

cond.false.62:                                    ; preds = %cond.false.59
  %40 = load i32, i32* %v_dc, align 4
  %tobool63 = icmp ne i32 %40, 0
  br i1 %tobool63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.false.62
  br label %cond.end.68

cond.false.65:                                    ; preds = %cond.false.62
  %41 = load i32, i32* %u_ac, align 4
  %tobool66 = icmp ne i32 %41, 0
  %cond67 = select i1 %tobool66, i32 19, i32 23
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.65, %cond.true.64
  %cond69 = phi i32 [ 18, %cond.true.64 ], [ %cond67, %cond.false.65 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %cond.true.61
  %cond71 = phi i32 [ 17, %cond.true.61 ], [ %cond69, %cond.end.68 ]
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.end.70, %cond.true.58
  %cond73 = phi i32 [ 1, %cond.true.58 ], [ %cond71, %cond.end.70 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.55
  %cond75 = phi i32 [ 0, %cond.true.55 ], [ %cond73, %cond.end.72 ]
  store i32 %cond75, i32* %bit, align 4
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 26
  %43 = load i32, i32* %is_intra_block, align 4
  %tobool76 = icmp ne i32 %43, 0
  %cond77 = select i1 %tobool76, i32 1, i32 0
  store i32 %cond77, i32* %default_bit, align 4
  %44 = load i32, i32* %default_bit, align 4
  store i32 %44, i32* %upper_bit, align 4
  %45 = load i32, i32* %default_bit, align 4
  store i32 %45, i32* %left_bit, align 4
  store i32 0, i32* %bit_pos_a, align 4
  store i32 0, i32* %bit_pos_b, align 4
  %46 = load i32, i32* %y_ac, align 4
  %tobool78 = icmp ne i32 %46, 0
  br i1 %tobool78, label %if.then, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %cond.end.74
  %47 = load i32, i32* %y_dc, align 4
  %tobool80 = icmp ne i32 %47, 0
  br i1 %tobool80, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.79, %cond.end.74
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 3
  %49 = load i32, i32* %current_mb_nr, align 4
  %50 = load i32, i32* %i, align 4
  %shl = shl i32 %50, 2
  %sub = sub nsw i32 %shl, 1
  %51 = load i32, i32* %j, align 4
  %shl81 = shl i32 %51, 2
  call void @getLuma4x4Neighbour(i32 %49, i32 %sub, i32 %shl81, %struct.pix_pos* %block_a)
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 3
  %53 = load i32, i32* %current_mb_nr82, align 4
  %54 = load i32, i32* %i, align 4
  %shl83 = shl i32 %54, 2
  %55 = load i32, i32* %j, align 4
  %shl84 = shl i32 %55, 2
  %sub85 = sub nsw i32 %shl84, 1
  call void @getLuma4x4Neighbour(i32 %53, i32 %shl83, i32 %sub85, %struct.pix_pos* %block_b)
  %56 = load i32, i32* %y_ac, align 4
  %tobool86 = icmp ne i32 %56, 0
  br i1 %tobool86, label %if.then.87, label %if.end.98

if.then.87:                                       ; preds = %if.then
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %57 = load i32, i32* %available, align 4
  %tobool88 = icmp ne i32 %57, 0
  br i1 %tobool88, label %if.then.89, label %if.end

if.then.89:                                       ; preds = %if.then.87
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %58 = load i32, i32* %y, align 4
  %mul = mul nsw i32 4, %58
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %59 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul, %59
  store i32 %add, i32* %bit_pos_a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.89, %if.then.87
  %available90 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %60 = load i32, i32* %available90, align 4
  %tobool91 = icmp ne i32 %60, 0
  br i1 %tobool91, label %if.then.92, label %if.end.97

if.then.92:                                       ; preds = %if.end
  %y93 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %61 = load i32, i32* %y93, align 4
  %mul94 = mul nsw i32 4, %61
  %x95 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %62 = load i32, i32* %x95, align 4
  %add96 = add nsw i32 %mul94, %62
  store i32 %add96, i32* %bit_pos_b, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.92, %if.end
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then
  br label %if.end.128

if.else:                                          ; preds = %lor.lhs.false.79
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 3
  %64 = load i32, i32* %current_mb_nr99, align 4
  %65 = load i32, i32* %i, align 4
  %shl100 = shl i32 %65, 2
  %sub101 = sub nsw i32 %shl100, 1
  %66 = load i32, i32* %j, align 4
  %shl102 = shl i32 %66, 2
  call void @getChroma4x4Neighbour(i32 %64, i32 %sub101, i32 %shl102, %struct.pix_pos* %block_a)
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 3
  %68 = load i32, i32* %current_mb_nr103, align 4
  %69 = load i32, i32* %i, align 4
  %shl104 = shl i32 %69, 2
  %70 = load i32, i32* %j, align 4
  %shl105 = shl i32 %70, 2
  %sub106 = sub nsw i32 %shl105, 1
  call void @getChroma4x4Neighbour(i32 %68, i32 %shl104, i32 %sub106, %struct.pix_pos* %block_b)
  %71 = load i32, i32* %u_ac, align 4
  %tobool107 = icmp ne i32 %71, 0
  br i1 %tobool107, label %if.then.110, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %if.else
  %72 = load i32, i32* %v_ac, align 4
  %tobool109 = icmp ne i32 %72, 0
  br i1 %tobool109, label %if.then.110, label %if.end.127

if.then.110:                                      ; preds = %lor.lhs.false.108, %if.else
  %available111 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %73 = load i32, i32* %available111, align 4
  %tobool112 = icmp ne i32 %73, 0
  br i1 %tobool112, label %if.then.113, label %if.end.118

if.then.113:                                      ; preds = %if.then.110
  %y114 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %74 = load i32, i32* %y114, align 4
  %mul115 = mul nsw i32 4, %74
  %x116 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %75 = load i32, i32* %x116, align 4
  %add117 = add nsw i32 %mul115, %75
  store i32 %add117, i32* %bit_pos_a, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.113, %if.then.110
  %available119 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %76 = load i32, i32* %available119, align 4
  %tobool120 = icmp ne i32 %76, 0
  br i1 %tobool120, label %if.then.121, label %if.end.126

if.then.121:                                      ; preds = %if.end.118
  %y122 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %77 = load i32, i32* %y122, align 4
  %mul123 = mul nsw i32 4, %77
  %x124 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %78 = load i32, i32* %x124, align 4
  %add125 = add nsw i32 %mul123, %78
  store i32 %add125, i32* %bit_pos_b, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.121, %if.end.118
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %lor.lhs.false.108
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.98
  %79 = load i32, i32* %y_dc, align 4
  %tobool129 = icmp ne i32 %79, 0
  br i1 %tobool129, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %if.end.128
  br label %cond.end.161

cond.false.131:                                   ; preds = %if.end.128
  %80 = load i32, i32* %y_ac, align 4
  %tobool132 = icmp ne i32 %80, 0
  br i1 %tobool132, label %cond.true.133, label %cond.false.137

cond.true.133:                                    ; preds = %cond.false.131
  %81 = load i32, i32* %j, align 4
  %mul134 = mul nsw i32 4, %81
  %add135 = add nsw i32 1, %mul134
  %82 = load i32, i32* %i, align 4
  %add136 = add nsw i32 %add135, %82
  br label %cond.end.159

cond.false.137:                                   ; preds = %cond.false.131
  %83 = load i32, i32* %u_dc, align 4
  %tobool138 = icmp ne i32 %83, 0
  br i1 %tobool138, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %cond.false.137
  br label %cond.end.157

cond.false.140:                                   ; preds = %cond.false.137
  %84 = load i32, i32* %v_dc, align 4
  %tobool141 = icmp ne i32 %84, 0
  br i1 %tobool141, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %cond.false.140
  br label %cond.end.155

cond.false.143:                                   ; preds = %cond.false.140
  %85 = load i32, i32* %u_ac, align 4
  %tobool144 = icmp ne i32 %85, 0
  br i1 %tobool144, label %cond.true.145, label %cond.false.149

cond.true.145:                                    ; preds = %cond.false.143
  %86 = load i32, i32* %j, align 4
  %mul146 = mul nsw i32 4, %86
  %add147 = add nsw i32 19, %mul146
  %87 = load i32, i32* %i, align 4
  %add148 = add nsw i32 %add147, %87
  br label %cond.end.153

cond.false.149:                                   ; preds = %cond.false.143
  %88 = load i32, i32* %j, align 4
  %mul150 = mul nsw i32 4, %88
  %add151 = add nsw i32 35, %mul150
  %89 = load i32, i32* %i, align 4
  %add152 = add nsw i32 %add151, %89
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.149, %cond.true.145
  %cond154 = phi i32 [ %add148, %cond.true.145 ], [ %add152, %cond.false.149 ]
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.end.153, %cond.true.142
  %cond156 = phi i32 [ 18, %cond.true.142 ], [ %cond154, %cond.end.153 ]
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.end.155, %cond.true.139
  %cond158 = phi i32 [ 17, %cond.true.139 ], [ %cond156, %cond.end.155 ]
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.end.157, %cond.true.133
  %cond160 = phi i32 [ %add136, %cond.true.133 ], [ %cond158, %cond.end.157 ]
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.end.159, %cond.true.130
  %cond162 = phi i32 [ 0, %cond.true.130 ], [ %cond160, %cond.end.159 ]
  store i32 %cond162, i32* %bit, align 4
  %90 = load i32, i32* %cbp_bit.addr, align 4
  %tobool163 = icmp ne i32 %90, 0
  br i1 %tobool163, label %if.then.164, label %if.end.218

if.then.164:                                      ; preds = %cond.end.161
  %91 = load i32, i32* %type.addr, align 4
  %cmp165 = icmp eq i32 %91, 2
  br i1 %cmp165, label %if.then.167, label %if.else.184

if.then.167:                                      ; preds = %if.then.164
  %92 = load i32, i32* %bit, align 4
  %sh_prom = zext i32 %92 to i64
  %shl168 = shl i64 1, %sh_prom
  %93 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits = getelementptr inbounds %struct.macroblock, %struct.macroblock* %93, i32 0, i32 16
  %94 = load i64, i64* %cbp_bits, align 8
  %or = or i64 %94, %shl168
  store i64 %or, i64* %cbp_bits, align 8
  %95 = load i32, i32* %bit, align 4
  %add169 = add nsw i32 %95, 1
  %sh_prom170 = zext i32 %add169 to i64
  %shl171 = shl i64 1, %sh_prom170
  %96 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits172 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %96, i32 0, i32 16
  %97 = load i64, i64* %cbp_bits172, align 8
  %or173 = or i64 %97, %shl171
  store i64 %or173, i64* %cbp_bits172, align 8
  %98 = load i32, i32* %bit, align 4
  %add174 = add nsw i32 %98, 4
  %sh_prom175 = zext i32 %add174 to i64
  %shl176 = shl i64 1, %sh_prom175
  %99 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits177 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 16
  %100 = load i64, i64* %cbp_bits177, align 8
  %or178 = or i64 %100, %shl176
  store i64 %or178, i64* %cbp_bits177, align 8
  %101 = load i32, i32* %bit, align 4
  %add179 = add nsw i32 %101, 5
  %sh_prom180 = zext i32 %add179 to i64
  %shl181 = shl i64 1, %sh_prom180
  %102 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits182 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %102, i32 0, i32 16
  %103 = load i64, i64* %cbp_bits182, align 8
  %or183 = or i64 %103, %shl181
  store i64 %or183, i64* %cbp_bits182, align 8
  br label %if.end.217

if.else.184:                                      ; preds = %if.then.164
  %104 = load i32, i32* %type.addr, align 4
  %cmp185 = icmp eq i32 %104, 3
  br i1 %cmp185, label %if.then.187, label %if.else.197

if.then.187:                                      ; preds = %if.else.184
  %105 = load i32, i32* %bit, align 4
  %sh_prom188 = zext i32 %105 to i64
  %shl189 = shl i64 1, %sh_prom188
  %106 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits190 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %106, i32 0, i32 16
  %107 = load i64, i64* %cbp_bits190, align 8
  %or191 = or i64 %107, %shl189
  store i64 %or191, i64* %cbp_bits190, align 8
  %108 = load i32, i32* %bit, align 4
  %add192 = add nsw i32 %108, 1
  %sh_prom193 = zext i32 %add192 to i64
  %shl194 = shl i64 1, %sh_prom193
  %109 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits195 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %109, i32 0, i32 16
  %110 = load i64, i64* %cbp_bits195, align 8
  %or196 = or i64 %110, %shl194
  store i64 %or196, i64* %cbp_bits195, align 8
  br label %if.end.216

if.else.197:                                      ; preds = %if.else.184
  %111 = load i32, i32* %type.addr, align 4
  %cmp198 = icmp eq i32 %111, 4
  br i1 %cmp198, label %if.then.200, label %if.else.210

if.then.200:                                      ; preds = %if.else.197
  %112 = load i32, i32* %bit, align 4
  %sh_prom201 = zext i32 %112 to i64
  %shl202 = shl i64 1, %sh_prom201
  %113 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits203 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %113, i32 0, i32 16
  %114 = load i64, i64* %cbp_bits203, align 8
  %or204 = or i64 %114, %shl202
  store i64 %or204, i64* %cbp_bits203, align 8
  %115 = load i32, i32* %bit, align 4
  %add205 = add nsw i32 %115, 4
  %sh_prom206 = zext i32 %add205 to i64
  %shl207 = shl i64 1, %sh_prom206
  %116 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits208 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %116, i32 0, i32 16
  %117 = load i64, i64* %cbp_bits208, align 8
  %or209 = or i64 %117, %shl207
  store i64 %or209, i64* %cbp_bits208, align 8
  br label %if.end.215

if.else.210:                                      ; preds = %if.else.197
  %118 = load i32, i32* %bit, align 4
  %sh_prom211 = zext i32 %118 to i64
  %shl212 = shl i64 1, %sh_prom211
  %119 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits213 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %119, i32 0, i32 16
  %120 = load i64, i64* %cbp_bits213, align 8
  %or214 = or i64 %120, %shl212
  store i64 %or214, i64* %cbp_bits213, align 8
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.210, %if.then.200
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.187
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.167
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %cond.end.161
  %121 = load i32, i32* %y_dc, align 4
  %tobool219 = icmp ne i32 %121, 0
  br i1 %tobool219, label %cond.true.220, label %cond.false.221

cond.true.220:                                    ; preds = %if.end.218
  br label %cond.end.239

cond.false.221:                                   ; preds = %if.end.218
  %122 = load i32, i32* %y_ac, align 4
  %tobool222 = icmp ne i32 %122, 0
  br i1 %tobool222, label %cond.true.223, label %cond.false.224

cond.true.223:                                    ; preds = %cond.false.221
  br label %cond.end.237

cond.false.224:                                   ; preds = %cond.false.221
  %123 = load i32, i32* %u_dc, align 4
  %tobool225 = icmp ne i32 %123, 0
  br i1 %tobool225, label %cond.true.226, label %cond.false.227

cond.true.226:                                    ; preds = %cond.false.224
  br label %cond.end.235

cond.false.227:                                   ; preds = %cond.false.224
  %124 = load i32, i32* %v_dc, align 4
  %tobool228 = icmp ne i32 %124, 0
  br i1 %tobool228, label %cond.true.229, label %cond.false.230

cond.true.229:                                    ; preds = %cond.false.227
  br label %cond.end.233

cond.false.230:                                   ; preds = %cond.false.227
  %125 = load i32, i32* %u_ac, align 4
  %tobool231 = icmp ne i32 %125, 0
  %cond232 = select i1 %tobool231, i32 19, i32 35
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.230, %cond.true.229
  %cond234 = phi i32 [ 18, %cond.true.229 ], [ %cond232, %cond.false.230 ]
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.end.233, %cond.true.226
  %cond236 = phi i32 [ 17, %cond.true.226 ], [ %cond234, %cond.end.233 ]
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.end.235, %cond.true.223
  %cond238 = phi i32 [ 1, %cond.true.223 ], [ %cond236, %cond.end.235 ]
  br label %cond.end.239

cond.end.239:                                     ; preds = %cond.end.237, %cond.true.220
  %cond240 = phi i32 [ 0, %cond.true.220 ], [ %cond238, %cond.end.237 ]
  store i32 %cond240, i32* %bit, align 4
  %126 = load i32, i32* %type.addr, align 4
  %cmp241 = icmp ne i32 %126, 2
  br i1 %cmp241, label %if.then.243, label %if.end.298

if.then.243:                                      ; preds = %cond.end.239
  %available244 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %127 = load i32, i32* %available244, align 4
  %tobool245 = icmp ne i32 %127, 0
  br i1 %tobool245, label %if.then.246, label %if.end.263

if.then.246:                                      ; preds = %if.then.243
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %128 = load i32, i32* %mb_addr, align 4
  %idxprom = sext i32 %128 to i64
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 61
  %130 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %130, i64 %idxprom
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 8
  %131 = load i32, i32* %mb_type, align 4
  %cmp247 = icmp eq i32 %131, 14
  br i1 %cmp247, label %if.then.249, label %if.else.250

if.then.249:                                      ; preds = %if.then.246
  store i32 1, i32* %upper_bit, align 4
  br label %if.end.262

if.else.250:                                      ; preds = %if.then.246
  %mb_addr251 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %132 = load i32, i32* %mb_addr251, align 4
  %idxprom252 = sext i32 %132 to i64
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data253 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 61
  %134 = load %struct.macroblock*, %struct.macroblock** %mb_data253, align 8
  %arrayidx254 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %134, i64 %idxprom252
  %cbp_bits255 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx254, i32 0, i32 16
  %135 = load i64, i64* %cbp_bits255, align 8
  %136 = load i32, i32* %bit, align 4
  %137 = load i32, i32* %bit_pos_b, align 4
  %add256 = add nsw i32 %136, %137
  %sh_prom257 = zext i32 %add256 to i64
  %shl258 = shl i64 1, %sh_prom257
  %and = and i64 %135, %shl258
  %138 = load i32, i32* %bit, align 4
  %139 = load i32, i32* %bit_pos_b, align 4
  %add259 = add nsw i32 %138, %139
  %sh_prom260 = zext i32 %add259 to i64
  %shr = ashr i64 %and, %sh_prom260
  %conv261 = trunc i64 %shr to i32
  store i32 %conv261, i32* %upper_bit, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.else.250, %if.then.249
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.then.243
  %available264 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %140 = load i32, i32* %available264, align 4
  %tobool265 = icmp ne i32 %140, 0
  br i1 %tobool265, label %if.then.266, label %if.end.290

if.then.266:                                      ; preds = %if.end.263
  %mb_addr267 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %141 = load i32, i32* %mb_addr267, align 4
  %idxprom268 = sext i32 %141 to i64
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data269 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 61
  %143 = load %struct.macroblock*, %struct.macroblock** %mb_data269, align 8
  %arrayidx270 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %143, i64 %idxprom268
  %mb_type271 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx270, i32 0, i32 8
  %144 = load i32, i32* %mb_type271, align 4
  %cmp272 = icmp eq i32 %144, 14
  br i1 %cmp272, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %if.then.266
  store i32 1, i32* %left_bit, align 4
  br label %if.end.289

if.else.275:                                      ; preds = %if.then.266
  %mb_addr276 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %145 = load i32, i32* %mb_addr276, align 4
  %idxprom277 = sext i32 %145 to i64
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data278 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 61
  %147 = load %struct.macroblock*, %struct.macroblock** %mb_data278, align 8
  %arrayidx279 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %147, i64 %idxprom277
  %cbp_bits280 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx279, i32 0, i32 16
  %148 = load i64, i64* %cbp_bits280, align 8
  %149 = load i32, i32* %bit, align 4
  %150 = load i32, i32* %bit_pos_a, align 4
  %add281 = add nsw i32 %149, %150
  %sh_prom282 = zext i32 %add281 to i64
  %shl283 = shl i64 1, %sh_prom282
  %and284 = and i64 %148, %shl283
  %151 = load i32, i32* %bit, align 4
  %152 = load i32, i32* %bit_pos_a, align 4
  %add285 = add nsw i32 %151, %152
  %sh_prom286 = zext i32 %add285 to i64
  %shr287 = ashr i64 %and284, %sh_prom286
  %conv288 = trunc i64 %shr287 to i32
  store i32 %conv288, i32* %left_bit, align 4
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.275, %if.then.274
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.end.263
  %153 = load i32, i32* %upper_bit, align 4
  %mul291 = mul nsw i32 2, %153
  %154 = load i32, i32* %left_bit, align 4
  %add292 = add nsw i32 %mul291, %154
  store i32 %add292, i32* %ctx, align 4
  %155 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %156 = load i32, i32* %cbp_bit.addr, align 4
  %conv293 = trunc i32 %156 to i16
  %157 = load i32, i32* %type.addr, align 4
  %idxprom294 = sext i32 %157 to i64
  %arrayidx295 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_bcbp, i32 0, i64 %idxprom294
  %158 = load i32, i32* %arrayidx295, align 4
  %idxprom296 = sext i32 %158 to i64
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 60
  %160 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %160, i32 0, i32 8
  %161 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %bcbp_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %161, i32 0, i32 3
  %arrayidx297 = getelementptr inbounds [10 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]]* %bcbp_contexts, i32 0, i64 %idxprom296
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx297, i32 0, i32 0
  %162 = load i32, i32* %ctx, align 4
  %idx.ext = sext i32 %162 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %155, i16 signext %conv293, %struct.BiContextType* %add.ptr)
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.290, %cond.end.239
  ret void
}

declare void @getChroma4x4Neighbour(i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind uwtable
define void @write_significance_map(%struct.macroblock* %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32* %coeff, i32 %coeff_ctr) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %type.addr = alloca i32, align 4
  %coeff.addr = alloca i32*, align 8
  %coeff_ctr.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %sig = alloca i16, align 2
  %last = alloca i16, align 2
  %k0 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %tex_ctx = alloca %struct.TextureInfoContexts*, align 8
  %fld = alloca i32, align 4
  %map_ctx = alloca %struct.BiContextType*, align 8
  %last_ctx = alloca %struct.BiContextType*, align 8
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32* %coeff, i32** %coeff.addr, align 8
  store i32 %coeff_ctr, i32* %coeff_ctr.addr, align 4
  store i32 0, i32* %k0, align 4
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @maxpos, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %k1, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 60
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx1 = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 8
  %4 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx1, align 8
  store %struct.TextureInfoContexts* %4, %struct.TextureInfoContexts** %tex_ctx, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 6
  %6 = load i32, i32* %structure, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %7 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %7, i32 0, i32 19
  %8 = load i32, i32* %mb_field, align 4
  %tobool = icmp ne i32 %8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %9 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32
  store i32 %lor.ext, i32* %fld, align 4
  %10 = load i32, i32* %fld, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  %11 = load i32, i32* %type.addr, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_map, i32 0, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %fld_map_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %13, i32 0, i32 8
  %arrayidx6 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %fld_map_contexts, i32 0, i64 %idxprom5
  %arraydecay = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx6, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %14 = load i32, i32* %type.addr, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_map, i32 0, i64 %idxprom7
  %15 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %map_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %16, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %map_contexts, i32 0, i64 %idxprom9
  %arraydecay11 = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx10, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.BiContextType* [ %arraydecay, %cond.true ], [ %arraydecay11, %cond.false ]
  store %struct.BiContextType* %cond, %struct.BiContextType** %map_ctx, align 8
  %17 = load i32, i32* %fld, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %cond.true.13, label %cond.false.19

cond.true.13:                                     ; preds = %cond.end
  %18 = load i32, i32* %type.addr, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_last, i32 0, i64 %idxprom14
  %19 = load i32, i32* %arrayidx15, align 4
  %idxprom16 = sext i32 %19 to i64
  %20 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %fld_last_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %20, i32 0, i32 9
  %arrayidx17 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %fld_last_contexts, i32 0, i64 %idxprom16
  %arraydecay18 = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx17, i32 0, i32 0
  br label %cond.end.25

cond.false.19:                                    ; preds = %cond.end
  %21 = load i32, i32* %type.addr, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_last, i32 0, i64 %idxprom20
  %22 = load i32, i32* %arrayidx21, align 4
  %idxprom22 = sext i32 %22 to i64
  %23 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %last_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %23, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %last_contexts, i32 0, i64 %idxprom22
  %arraydecay24 = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx23, i32 0, i32 0
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.19, %cond.true.13
  %cond26 = phi %struct.BiContextType* [ %arraydecay18, %cond.true.13 ], [ %arraydecay24, %cond.false.19 ]
  store %struct.BiContextType* %cond26, %struct.BiContextType** %last_ctx, align 8
  %24 = load i32, i32* %type.addr, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* @c1isdc, i32 0, i64 %idxprom27
  %25 = load i32, i32* %arrayidx28, align 4
  %tobool29 = icmp ne i32 %25, 0
  br i1 %tobool29, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.25
  %26 = load i32, i32* %k0, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k0, align 4
  %27 = load i32, i32* %k1, align 4
  %inc30 = add nsw i32 %27, 1
  store i32 %inc30, i32* %k1, align 4
  %28 = load i32*, i32** %coeff.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %28, i32 -1
  store i32* %incdec.ptr, i32** %coeff.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.25
  %29 = load i32, i32* %fld, align 4
  %tobool31 = icmp ne i32 %29, 0
  br i1 %tobool31, label %if.else, label %if.then.32

if.then.32:                                       ; preds = %if.end
  %30 = load i32, i32* %k0, align 4
  store i32 %30, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.32
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %k1, align 4
  %cmp33 = icmp slt i32 %31, %32
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %33 to i64
  %34 = load i32*, i32** %coeff.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %34, i64 %idxprom34
  %35 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp ne i32 %35, 0
  %conv = zext i1 %cmp36 to i32
  %conv37 = trunc i32 %conv to i16
  store i16 %conv37, i16* %sig, align 2
  %36 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %37 = load i16, i16* %sig, align 2
  %38 = load %struct.BiContextType*, %struct.BiContextType** %map_ctx, align 8
  %39 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %39 to i64
  %40 = load i32, i32* %type.addr, align 4
  %idxprom39 = sext i32 %40 to i64
  %arrayidx40 = getelementptr inbounds [10 x i32*], [10 x i32*]* @pos2ctx_map, i32 0, i64 %idxprom39
  %41 = load i32*, i32** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %41, i64 %idxprom38
  %42 = load i32, i32* %arrayidx41, align 4
  %idx.ext = sext i32 %42 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %38, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %36, i16 signext %37, %struct.BiContextType* %add.ptr)
  %43 = load i16, i16* %sig, align 2
  %tobool42 = icmp ne i16 %43, 0
  br i1 %tobool42, label %if.then.43, label %if.end.56

if.then.43:                                       ; preds = %for.body
  %44 = load i32, i32* %coeff_ctr.addr, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %coeff_ctr.addr, align 4
  %cmp44 = icmp eq i32 %dec, 0
  %conv45 = zext i1 %cmp44 to i32
  %conv46 = trunc i32 %conv45 to i16
  store i16 %conv46, i16* %last, align 2
  %45 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %46 = load i16, i16* %last, align 2
  %47 = load %struct.BiContextType*, %struct.BiContextType** %last_ctx, align 8
  %48 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %48 to i64
  %49 = load i32, i32* %type.addr, align 4
  %idxprom48 = sext i32 %49 to i64
  %arrayidx49 = getelementptr inbounds [10 x i32*], [10 x i32*]* @pos2ctx_last, i32 0, i64 %idxprom48
  %50 = load i32*, i32** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %50, i64 %idxprom47
  %51 = load i32, i32* %arrayidx50, align 4
  %idx.ext51 = sext i32 %51 to i64
  %add.ptr52 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %47, i64 %idx.ext51
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %45, i16 signext %46, %struct.BiContextType* %add.ptr52)
  %52 = load i16, i16* %last, align 2
  %tobool53 = icmp ne i16 %52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.43
  br label %if.end.92

if.end.55:                                        ; preds = %if.then.43
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %53 = load i32, i32* %k, align 4
  %inc57 = add nsw i32 %53, 1
  store i32 %inc57, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.92

if.else:                                          ; preds = %if.end
  %54 = load i32, i32* %k0, align 4
  store i32 %54, i32* %k, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.89, %if.else
  %55 = load i32, i32* %k, align 4
  %56 = load i32, i32* %k1, align 4
  %cmp59 = icmp slt i32 %55, %56
  br i1 %cmp59, label %for.body.61, label %for.end.91

for.body.61:                                      ; preds = %for.cond.58
  %57 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %57 to i64
  %58 = load i32*, i32** %coeff.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %58, i64 %idxprom62
  %59 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp ne i32 %59, 0
  %conv65 = zext i1 %cmp64 to i32
  %conv66 = trunc i32 %conv65 to i16
  store i16 %conv66, i16* %sig, align 2
  %60 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %61 = load i16, i16* %sig, align 2
  %62 = load %struct.BiContextType*, %struct.BiContextType** %map_ctx, align 8
  %63 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %63 to i64
  %64 = load i32, i32* %type.addr, align 4
  %idxprom68 = sext i32 %64 to i64
  %arrayidx69 = getelementptr inbounds [10 x i32*], [10 x i32*]* @pos2ctx_map_int, i32 0, i64 %idxprom68
  %65 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %65, i64 %idxprom67
  %66 = load i32, i32* %arrayidx70, align 4
  %idx.ext71 = sext i32 %66 to i64
  %add.ptr72 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %62, i64 %idx.ext71
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %60, i16 signext %61, %struct.BiContextType* %add.ptr72)
  %67 = load i16, i16* %sig, align 2
  %tobool73 = icmp ne i16 %67, 0
  br i1 %tobool73, label %if.then.74, label %if.end.88

if.then.74:                                       ; preds = %for.body.61
  %68 = load i32, i32* %coeff_ctr.addr, align 4
  %dec75 = add nsw i32 %68, -1
  store i32 %dec75, i32* %coeff_ctr.addr, align 4
  %cmp76 = icmp eq i32 %dec75, 0
  %conv77 = zext i1 %cmp76 to i32
  %conv78 = trunc i32 %conv77 to i16
  store i16 %conv78, i16* %last, align 2
  %69 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %70 = load i16, i16* %last, align 2
  %71 = load %struct.BiContextType*, %struct.BiContextType** %last_ctx, align 8
  %72 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %72 to i64
  %73 = load i32, i32* %type.addr, align 4
  %idxprom80 = sext i32 %73 to i64
  %arrayidx81 = getelementptr inbounds [10 x i32*], [10 x i32*]* @pos2ctx_last, i32 0, i64 %idxprom80
  %74 = load i32*, i32** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %74, i64 %idxprom79
  %75 = load i32, i32* %arrayidx82, align 4
  %idx.ext83 = sext i32 %75 to i64
  %add.ptr84 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %71, i64 %idx.ext83
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %69, i16 signext %70, %struct.BiContextType* %add.ptr84)
  %76 = load i16, i16* %last, align 2
  %tobool85 = icmp ne i16 %76, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.74
  br label %if.end.92

if.end.87:                                        ; preds = %if.then.74
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %for.body.61
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %77 = load i32, i32* %k, align 4
  %inc90 = add nsw i32 %77, 1
  store i32 %inc90, i32* %k, align 4
  br label %for.cond.58

for.end.91:                                       ; preds = %for.cond.58
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.54, %for.end, %if.then.86, %for.end.91
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_significant_coefficients(%struct.macroblock* %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32* %coeff) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %type.addr = alloca i32, align 4
  %coeff.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %absLevel = alloca i32, align 4
  %ctx = alloca i32, align 4
  %sign = alloca i16, align 2
  %greater_one = alloca i16, align 2
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32* %coeff, i32** %coeff.addr, align 8
  store i32 1, i32* %c1, align 4
  store i32 0, i32* %c2, align 4
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @maxpos, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32*, i32** %coeff.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.end.39

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32*, i32** %coeff.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32*, i32** %coeff.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  store i32 %11, i32* %absLevel, align 4
  store i16 0, i16* %sign, align 2
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i32*, i32** %coeff.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 0, %14
  store i32 %sub12, i32* %absLevel, align 4
  store i16 1, i16* %sign, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %15 = load i32, i32* %absLevel, align 4
  %cmp13 = icmp sgt i32 %15, 1
  %conv = zext i1 %cmp13 to i32
  %conv14 = trunc i32 %conv to i16
  store i16 %conv14, i16* %greater_one, align 2
  %16 = load i32, i32* %c1, align 4
  %call = call i32 @imin(i32 %16, i32 4)
  store i32 %call, i32* %ctx, align 4
  %17 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %18 = load i16, i16* %greater_one, align 2
  %19 = load i32, i32* %type.addr, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_one, i32 0, i64 %idxprom15
  %20 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 60
  %22 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %22, i32 0, i32 8
  %23 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %one_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %23, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]]* %one_contexts, i32 0, i64 %idxprom17
  %arraydecay = getelementptr inbounds [5 x %struct.BiContextType], [5 x %struct.BiContextType]* %arrayidx18, i32 0, i32 0
  %24 = load i32, i32* %ctx, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %17, i16 signext %18, %struct.BiContextType* %add.ptr)
  %25 = load i16, i16* %greater_one, align 2
  %tobool = icmp ne i16 %25, 0
  br i1 %tobool, label %if.then.19, label %if.else.33

if.then.19:                                       ; preds = %if.end
  %26 = load i32, i32* %c2, align 4
  %27 = load i32, i32* %type.addr, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* @max_c2, i32 0, i64 %idxprom20
  %28 = load i32, i32* %arrayidx21, align 4
  %call22 = call i32 @imin(i32 %26, i32 %28)
  store i32 %call22, i32* %ctx, align 4
  %29 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %30 = load i32, i32* %absLevel, align 4
  %sub23 = sub nsw i32 %30, 2
  %31 = load i32, i32* %type.addr, align 4
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_abs, i32 0, i64 %idxprom24
  %32 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %32 to i64
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 60
  %34 = load %struct.Slice*, %struct.Slice** %currentSlice27, align 8
  %tex_ctx28 = getelementptr inbounds %struct.Slice, %struct.Slice* %34, i32 0, i32 8
  %35 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx28, align 8
  %abs_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %35, i32 0, i32 7
  %arrayidx29 = getelementptr inbounds [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]]* %abs_contexts, i32 0, i64 %idxprom26
  %arraydecay30 = getelementptr inbounds [5 x %struct.BiContextType], [5 x %struct.BiContextType]* %arrayidx29, i32 0, i32 0
  %36 = load i32, i32* %ctx, align 4
  %idx.ext31 = sext i32 %36 to i64
  %add.ptr32 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay30, i64 %idx.ext31
  call void @unary_exp_golomb_level_encode(%struct.EncodingEnvironment* %29, i32 %sub23, %struct.BiContextType* %add.ptr32)
  store i32 0, i32* %c1, align 4
  %37 = load i32, i32* %c2, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %c2, align 4
  br label %if.end.38

if.else.33:                                       ; preds = %if.end
  %38 = load i32, i32* %c1, align 4
  %tobool34 = icmp ne i32 %38, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.else.33
  %39 = load i32, i32* %c1, align 4
  %inc36 = add nsw i32 %39, 1
  store i32 %inc36, i32* %c1, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.else.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.19
  %40 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %41 = load i16, i16* %sign, align 2
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %40, i16 signext %41)
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %42 = load i32, i32* %i, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
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
define void @unary_exp_golomb_level_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx) #0 {
entry:
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %exp_start = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 13, i32* %exp_start, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %2 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %1, i16 signext 0, %struct.BiContextType* %2)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %4 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %3, i16 signext 1, %struct.BiContextType* %4)
  %5 = load i32, i32* %symbol.addr, align 4
  store i32 %5, i32* %l, align 4
  store i32 1, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %6 = load i32, i32* %l, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %l, align 4
  %cmp1 = icmp ugt i32 %dec, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %k, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %k, align 4
  %8 = load i32, i32* %exp_start, align 4
  %cmp2 = icmp ule i32 %inc, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %11 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %10, i16 signext 1, %struct.BiContextType* %11)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %symbol.addr, align 4
  %13 = load i32, i32* %exp_start, align 4
  %cmp3 = icmp ult i32 %12, %13
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %while.end
  %14 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %15 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %14, i16 signext 0, %struct.BiContextType* %15)
  br label %if.end

if.else.5:                                        ; preds = %while.end
  %16 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %17 = load i32, i32* %symbol.addr, align 4
  %18 = load i32, i32* %exp_start, align 4
  %sub = sub i32 %17, %18
  call void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %16, i32 %sub, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeRunLevel_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %dp.addr = alloca %struct.datapartition*, align 8
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  %curr_len = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %2, i32 0, i32 1
  %3 = load i32, i32* %value1, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %4, i32 0, i32 2
  %5 = load i32, i32* %value2, align 4
  %6 = load i32, i32* @writeRunLevel_CABAC.pos, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* @writeRunLevel_CABAC.pos, align 4
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value11 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 1
  %8 = load i32, i32* %value11, align 4
  %9 = load i32, i32* @writeRunLevel_CABAC.pos, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @writeRunLevel_CABAC.pos, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* @writeRunLevel_CABAC.coeff, i32 0, i64 %idxprom
  store i32 %8, i32* %arrayidx, align 4
  %10 = load i32, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  %inc2 = add nsw i32 %10, 1
  store i32 %inc2, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  br label %if.end.11

if.else:                                          ; preds = %entry
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 3
  %12 = load i32, i32* %current_mb_nr, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 61
  %14 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i64 %idxprom3
  store %struct.macroblock* %arrayidx4, %struct.macroblock** %currMB, align 8
  %15 = load i32, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  %cmp5 = icmp sgt i32 %15, 0
  br i1 %cmp5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.else
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %17 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %18 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %18, i32 0, i32 6
  %19 = load i32, i32* %context, align 4
  call void @write_and_store_CBP_block_bit(%struct.macroblock* %16, %struct.EncodingEnvironment* %17, i32 %19, i32 1)
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %21 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %22 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context7 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %22, i32 0, i32 6
  %23 = load i32, i32* %context7, align 4
  %24 = load i32, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  call void @write_significance_map(%struct.macroblock* %20, %struct.EncodingEnvironment* %21, i32 %23, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @writeRunLevel_CABAC.coeff, i32 0, i32 0), i32 %24)
  %25 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %26 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %27 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context8 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %27, i32 0, i32 6
  %28 = load i32, i32* %context8, align 4
  call void @write_significant_coefficients(%struct.macroblock* %25, %struct.EncodingEnvironment* %26, i32 %28, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @writeRunLevel_CABAC.coeff, i32 0, i32 0))
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %29 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %30 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %31 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context10 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %31, i32 0, i32 6
  %32 = load i32, i32* %context10, align 4
  call void @write_and_store_CBP_block_bit(%struct.macroblock* %29, %struct.EncodingEnvironment* %30, i32 %32, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.6
  store i32 0, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  store i32 0, i32* @writeRunLevel_CABAC.pos, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([64 x i32]* @writeRunLevel_CABAC.coeff to i8*), i8 0, i64 256, i32 16, i1 false)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %33 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %33, i32 0, i32 0
  %34 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call12 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %35)
  %36 = load i32, i32* %curr_len, align 4
  %sub = sub nsw i32 %call12, %36
  %37 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %37, i32 0, i32 3
  store i32 %sub, i32* %len, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, i32 %k) #0 {
entry:
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %0 = load i32, i32* %symbol.addr, align 4
  %1 = load i32, i32* %k.addr, align 4
  %shl = shl i32 1, %1
  %cmp = icmp uge i32 %0, %shl
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %2, i16 signext 1)
  %3 = load i32, i32* %symbol.addr, align 4
  %4 = load i32, i32* %k.addr, align 4
  %shl1 = shl i32 1, %4
  %sub = sub i32 %3, %shl1
  store i32 %sub, i32* %symbol.addr, align 4
  %5 = load i32, i32* %k.addr, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %k.addr, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %6, i16 signext 0)
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.3, %if.else
  %7 = load i32, i32* %k.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %k.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.2
  %8 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %9 = load i32, i32* %symbol.addr, align 4
  %10 = load i32, i32* %k.addr, align 4
  %shr = lshr i32 %9, %10
  %and = and i32 %shr, 1
  %conv = trunc i32 %and to i16
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %8, i16 signext %conv)
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  br label %while.end.4

if.end:                                           ; preds = %if.then
  br label %while.body

while.end.4:                                      ; preds = %while.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
