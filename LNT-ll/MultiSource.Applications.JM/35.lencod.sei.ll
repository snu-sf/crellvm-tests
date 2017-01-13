; ModuleID = './MultiSource.Applications.JM/35.lencod.sei.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sei_struct = type { i32, i32, i8, i8* }
%struct.spare_picture_struct = type { i32, i32, i32, %struct.Bitstream* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, i32***, i32***, i32****, i32****, %struct.Picture*, %struct.Slice*, %struct.macroblock*, i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double**, double***, i32***, double**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.subseq_information_struct = type { i32, i32, i32, i32, i32, %struct.Bitstream* }
%struct.subseq_layer_information_struct = type { [2 x i16], [2 x i16], [8 x i8], i32, i32 }
%struct.subseq_char_information_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], %struct.Bitstream*, i32 }
%struct.scene_information_struct = type { i32, i32, i32, %struct.Bitstream*, i32 }
%struct.panscanrect_information_struct = type { i32, i32, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.user_data_unregistered_information_struct = type { i8*, i32, %struct.Bitstream*, i32 }
%struct.user_data_registered_itu_t_t35_information_struct = type { i8*, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.recovery_point_information_struct = type { i32, i8, i8, i8, %struct.Bitstream*, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.bufferingperiod_information_struct = type { i32, [32 x i32], [32 x i32], %struct.Bitstream*, i32 }
%struct.pictiming_information_struct = type { i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)* }

@seiHasTemporal_reference = global i32 0, align 4
@seiHasClock_timestamp = global i32 0, align 4
@seiHasPanscan_rect = global i32 0, align 4
@seiHasBuffering_period = global i32 0, align 4
@seiHasHrd_picture = global i32 0, align 4
@seiHasFiller_payload = global i32 0, align 4
@seiHasUser_data_registered_itu_t_t35 = global i32 0, align 4
@seiHasUser_data_unregistered = global i32 0, align 4
@seiHasRandom_access_point = global i32 0, align 4
@seiHasRef_pic_buffer_management_repetition = global i32 0, align 4
@seiHasSpare_picture = global i32 0, align 4
@seiHasSceneInformation = global i32 0, align 4
@seiHasSubseq_information = global i32 0, align 4
@seiHasSubseq_layer_characteristics = global i32 0, align 4
@seiHasSubseq_characteristics = global i32 0, align 4
@sei_message = common global [2 x %struct.sei_struct] zeroinitializer, align 16
@.str = private unnamed_addr constant [37 x i8] c"InitSEIMessages: sei_message[i].data\00", align 1
@seiSparePicturePayload = common global %struct.spare_picture_struct zeroinitializer, align 8
@input = external global %struct.InputParameters*, align 8
@img = external global %struct.ImageParameters*, align 8
@seiHasSubseqInfo = global i32 0, align 4
@seiHasSubseqLayerInfo = global i32 0, align 4
@seiHasSubseqChar = global i32 0, align 4
@seiHasPanScanRectInfo = global i32 0, align 4
@seiHasUser_data_unregistered_info = common global i32 0, align 4
@seiHasUser_data_registered_itu_t_t35_info = common global i32 0, align 4
@seiHasRecoveryPoint_info = common global i32 0, align 4
@seiHasSparePicture = global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"InitSparePicture: seiSparePicturePayload.data\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"InitSparePicture: seiSparePicturePayload.data->streamBuffer\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"FinalizeSpareMBMap: dest\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"FinalizeSpareMBMap: dest->streamBuffer\00", align 1
@InitSubseqInfo.id = internal global i16 0, align 2
@seiSubseqInfo = common global [2 x %struct.subseq_information_struct] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [46 x i8] c"InitSubseqInfo: seiSubseqInfo[currLayer].data\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"InitSubseqInfo: seiSubseqInfo[currLayer].data->streamBuffer\00", align 1
@start_frame_no_in_this_IGOP = external global i32, align 4
@seiSubseqLayerInfo = common global %struct.subseq_layer_information_struct zeroinitializer, align 4
@seiSubseqChar = common global %struct.subseq_char_information_struct zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"InitSubseqChar: seiSubseqChar.data\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"InitSubseqChar: seiSubseqChar.data->streamBuffer\00", align 1
@seiSceneInformation = common global %struct.scene_information_struct zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [47 x i8] c"InitSceneInformation: seiSceneInformation.data\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"InitSceneInformation: seiSceneInformation.data->streamBuffer\00", align 1
@seiPanScanRectInfo = common global %struct.panscanrect_information_struct zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"InitPanScanRectInfo: seiPanScanRectInfo.data\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"InitPanScanRectInfo: seiPanScanRectInfo.data->streamBuffer\00", align 1
@seiUser_data_unregistered = common global %struct.user_data_unregistered_information_struct zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [59 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.data\00", align 1
@.str.14 = private unnamed_addr constant [73 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.data->streamBuffer\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.byte\00", align 1
@seiUser_data_registered_itu_t_t35 = common global %struct.user_data_registered_itu_t_t35_information_struct zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [67 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data\00", align 1
@.str.17 = private unnamed_addr constant [81 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data->streamBuffer\00", align 1
@.str.18 = private unnamed_addr constant [67 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.byte\00", align 1
@seiRecoveryPoint = common global %struct.recovery_point_information_struct zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [39 x i8] c"InitRandomAccess: seiRandomAccess.data\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"InitRandomAccess: seiRandomAccess.data->streamBuffer\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"SEI: recovery_frame_cnt\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"SEI: exact_match_flag\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"SEI: broken_link_flag\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"SEI: changing_slice_group_idc\00", align 1
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
@seiHasBufferingPeriod_info = common global i32 0, align 4
@seiBufferingPeriod = common global %struct.bufferingperiod_information_struct zeroinitializer, align 8
@seiHasPicTiming_info = common global i32 0, align 4
@seiPicTiming = common global %struct.pictiming_information_struct zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define void @InitSEIMessages() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias i8* @malloc(i64 65496) #3
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx, i32 0, i32 3
  store i8* %call, i8** %data, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom1
  %data3 = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx2, i32 0, i32 3
  %3 = load i8*, i8** %data3, align 8
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom5
  %subPacketType = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx6, i32 0, i32 2
  store i8 5, i8* %subPacketType, align 1
  %5 = load i32, i32* %i, align 4
  call void @clear_sei_message(i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  call void @InitSparePicture()
  call void @InitSubseqChar()
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 129
  %8 = load i32, i32* %NumFramesInELSubSeq, align 4
  %cmp7 = icmp ne i32 %8, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  call void @InitSubseqLayerInfo()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  call void @InitSceneInformation()
  call void @InitPanScanRectInfo()
  call void @InitUser_data_unregistered()
  call void @InitUser_data_registered_itu_t_t35()
  call void @InitRandomAccess()
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define void @clear_sei_message(i32 %id) #0 {
entry:
  %id.addr = alloca i32, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = load i32, i32* %id.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx, i32 0, i32 3
  %1 = load i8*, i8** %data, align 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load i32, i32* %id.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom1
  %payloadSize = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx2, i32 0, i32 1
  store i32 0, i32* %payloadSize, align 4
  %3 = load i32, i32* %id.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom3
  %available = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx4, i32 0, i32 0
  store i32 0, i32* %available, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @CloseSEIMessages() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 129
  %1 = load i32, i32* %NumFramesInELSubSeq, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @CloseSubseqLayerInfo()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @CloseSubseqChar()
  call void @CloseSparePicture()
  call void @CloseSceneInformation()
  call void @ClosePanScanRectInfo()
  call void @CloseUser_data_unregistered()
  call void @CloseUser_data_registered_itu_t_t35()
  call void @CloseRandomAccess()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx, i32 0, i32 3
  %4 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom3
  %data5 = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx4, i32 0, i32 3
  %6 = load i8*, i8** %data5, align 8
  call void @free(i8* %6) #3
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom7
  %data9 = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx8, i32 0, i32 3
  store i8* null, i8** %data9, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @HaveAggregationSEI() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds ([2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 1, i32 0), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 5
  %2 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* @seiHasSubseqInfo, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* @seiHasSubseqLayerInfo, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.8

land.lhs.true.5:                                  ; preds = %if.end.3
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 0
  %6 = load i32, i32* %number, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true.5
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true.5, %if.end.3
  %7 = load i32, i32* @seiHasSubseqChar, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.8
  %8 = load i32, i32* @seiHasSceneInformation, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %9 = load i32, i32* @seiHasPanScanRectInfo, align 4
  %tobool15 = icmp ne i32 %9, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %10 = load i32, i32* @seiHasUser_data_unregistered_info, align 4
  %tobool18 = icmp ne i32 %10, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.17
  %11 = load i32, i32* @seiHasUser_data_registered_itu_t_t35_info, align 4
  %tobool21 = icmp ne i32 %11, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  store i32 1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.20
  %12 = load i32, i32* @seiHasRecoveryPoint_info, align 4
  %tobool24 = icmp ne i32 %12, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.then.22, %if.then.19, %if.then.16, %if.then.13, %if.then.10, %if.then.7, %if.then.2, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @write_sei_message(i32 %id, i8* %payload, i32 %payload_size, i32 %payload_type) #0 {
entry:
  %id.addr = alloca i32, align 4
  %payload.addr = alloca i8*, align 8
  %payload_size.addr = alloca i32, align 4
  %payload_type.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %type = alloca i32, align 4
  %size = alloca i32, align 4
  store i32 %id, i32* %id.addr, align 4
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %payload_size, i32* %payload_size.addr, align 4
  store i32 %payload_type, i32* %payload_type.addr, align 4
  %0 = load i32, i32* %payload_type.addr, align 4
  store i32 %0, i32* %type, align 4
  %1 = load i32, i32* %payload_size.addr, align 4
  store i32 %1, i32* %size, align 4
  %2 = load i32, i32* %id.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom
  %payloadSize = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx, i32 0, i32 1
  %3 = load i32, i32* %payloadSize, align 4
  store i32 %3, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* %type, align 4
  %cmp = icmp sgt i32 %4, 255
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %offset, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32, i32* %id.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom2
  %data = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx3, i32 0, i32 3
  %7 = load i8*, i8** %data, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom1
  store i8 -1, i8* %arrayidx4, align 1
  %8 = load i32, i32* %type, align 4
  %sub = sub nsw i32 %8, 255
  store i32 %sub, i32* %type, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %type, align 4
  %conv = trunc i32 %9 to i8
  %10 = load i32, i32* %offset, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, i32* %offset, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32, i32* %id.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom7
  %data9 = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx8, i32 0, i32 3
  %12 = load i8*, i8** %data9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  store i8 %conv, i8* %arrayidx10, align 1
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.14, %while.end
  %13 = load i32, i32* %size, align 4
  %cmp12 = icmp sgt i32 %13, 255
  br i1 %cmp12, label %while.body.14, label %while.end.22

while.body.14:                                    ; preds = %while.cond.11
  %14 = load i32, i32* %offset, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %offset, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load i32, i32* %id.addr, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom17
  %data19 = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx18, i32 0, i32 3
  %16 = load i8*, i8** %data19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %16, i64 %idxprom16
  store i8 -1, i8* %arrayidx20, align 1
  %17 = load i32, i32* %size, align 4
  %sub21 = sub nsw i32 %17, 255
  store i32 %sub21, i32* %size, align 4
  br label %while.cond.11

while.end.22:                                     ; preds = %while.cond.11
  %18 = load i32, i32* %size, align 4
  %conv23 = trunc i32 %18 to i8
  %19 = load i32, i32* %offset, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, i32* %offset, align 4
  %idxprom25 = sext i32 %19 to i64
  %20 = load i32, i32* %id.addr, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom26
  %data28 = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx27, i32 0, i32 3
  %21 = load i8*, i8** %data28, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  store i8 %conv23, i8* %arrayidx29, align 1
  %22 = load i32, i32* %id.addr, align 4
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom30
  %data32 = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx31, i32 0, i32 3
  %23 = load i8*, i8** %data32, align 8
  %24 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  %25 = load i8*, i8** %payload.addr, align 8
  %26 = load i32, i32* %payload_size.addr, align 4
  %conv33 = sext i32 %26 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %25, i64 %conv33, i32 1, i1 false)
  %27 = load i32, i32* %payload_size.addr, align 4
  %28 = load i32, i32* %offset, align 4
  %add = add nsw i32 %28, %27
  store i32 %add, i32* %offset, align 4
  %29 = load i32, i32* %offset, align 4
  %30 = load i32, i32* %id.addr, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom34
  %payloadSize36 = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx35, i32 0, i32 1
  store i32 %29, i32* %payloadSize36, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @finalize_sei_message(i32 %id) #0 {
entry:
  %id.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = load i32, i32* %id.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom
  %payloadSize = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %payloadSize, align 4
  store i32 %1, i32* %offset, align 4
  %2 = load i32, i32* %offset, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load i32, i32* %id.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom2
  %data = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx3, i32 0, i32 3
  %4 = load i8*, i8** %data, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  store i8 -128, i8* %arrayidx4, align 1
  %5 = load i32, i32* %id.addr, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom5
  %payloadSize7 = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx6, i32 0, i32 1
  %6 = load i32, i32* %payloadSize7, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %payloadSize7, align 4
  %7 = load i32, i32* %id.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [2 x %struct.sei_struct], [2 x %struct.sei_struct]* @sei_message, i32 0, i64 %idxprom8
  %available = getelementptr inbounds %struct.sei_struct, %struct.sei_struct* %arrayidx9, i32 0, i32 0
  store i32 1, i32* %available, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @AppendTmpbits2Buf(%struct.Bitstream* %dest, %struct.Bitstream* %source) #0 {
entry:
  %dest.addr = alloca %struct.Bitstream*, align 8
  %source.addr = alloca %struct.Bitstream*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mask = alloca i8, align 1
  %bits_in_last_byte = alloca i32, align 4
  store %struct.Bitstream* %dest, %struct.Bitstream** %dest.addr, align 8
  store %struct.Bitstream* %source, %struct.Bitstream** %source.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Bitstream*, %struct.Bitstream** %source.addr, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %1, i32 0, i32 0
  %2 = load i32, i32* %byte_pos, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i8 -128, i8* %mask, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %3, 8
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 2
  %5 = load i8, i8* %byte_buf, align 1
  %conv = zext i8 %5 to i32
  %shl = shl i32 %conv, 1
  %conv4 = trunc i32 %shl to i8
  store i8 %conv4, i8* %byte_buf, align 1
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.Bitstream*, %struct.Bitstream** %source.addr, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %7, i32 0, i32 9
  %8 = load i8*, i8** %streamBuffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %9 to i32
  %10 = load i8, i8* %mask, align 1
  %conv6 = zext i8 %10 to i32
  %and = and i32 %conv5, %conv6
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %11 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %byte_buf7 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %11, i32 0, i32 2
  %12 = load i8, i8* %byte_buf7, align 1
  %conv8 = zext i8 %12 to i32
  %or = or i32 %conv8, 1
  %conv9 = trunc i32 %or to i8
  store i8 %conv9, i8* %byte_buf7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %13 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %13, i32 0, i32 1
  %14 = load i32, i32* %bits_to_go, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %bits_to_go, align 4
  %15 = load i8, i8* %mask, align 1
  %conv10 = zext i8 %15 to i32
  %shr = ashr i32 %conv10, 1
  %conv11 = trunc i32 %shr to i8
  store i8 %conv11, i8* %mask, align 1
  %16 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %bits_to_go12 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %16, i32 0, i32 1
  %17 = load i32, i32* %bits_to_go12, align 4
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end
  %18 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %bits_to_go16 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %18, i32 0, i32 1
  store i32 8, i32* %bits_to_go16, align 4
  %19 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %byte_buf17 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %19, i32 0, i32 2
  %20 = load i8, i8* %byte_buf17, align 1
  %21 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %byte_pos18 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %21, i32 0, i32 0
  %22 = load i32, i32* %byte_pos18, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %byte_pos18, align 4
  %idxprom19 = sext i32 %22 to i64
  %23 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %streamBuffer20 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %23, i32 0, i32 9
  %24 = load i8*, i8** %streamBuffer20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 %idxprom19
  store i8 %20, i8* %arrayidx21, align 1
  %25 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %byte_buf22 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %25, i32 0, i32 2
  store i8 0, i8* %byte_buf22, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.15, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %26 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  %28 = load %struct.Bitstream*, %struct.Bitstream** %source.addr, align 8
  %bits_to_go28 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %28, i32 0, i32 1
  %29 = load i32, i32* %bits_to_go28, align 4
  %sub = sub nsw i32 8, %29
  store i32 %sub, i32* %bits_in_last_byte, align 4
  %30 = load i32, i32* %bits_in_last_byte, align 4
  %cmp29 = icmp sgt i32 %30, 0
  br i1 %cmp29, label %if.then.31, label %if.end.75

if.then.31:                                       ; preds = %for.end.27
  %31 = load i32, i32* %bits_in_last_byte, align 4
  %sub32 = sub nsw i32 %31, 1
  %shl33 = shl i32 1, %sub32
  %conv34 = trunc i32 %shl33 to i8
  store i8 %conv34, i8* %mask, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.72, %if.then.31
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %bits_in_last_byte, align 4
  %cmp36 = icmp slt i32 %32, %33
  br i1 %cmp36, label %for.body.38, label %for.end.74

for.body.38:                                      ; preds = %for.cond.35
  %34 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %byte_buf39 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 2
  %35 = load i8, i8* %byte_buf39, align 1
  %conv40 = zext i8 %35 to i32
  %shl41 = shl i32 %conv40, 1
  %conv42 = trunc i32 %shl41 to i8
  store i8 %conv42, i8* %byte_buf39, align 1
  %36 = load %struct.Bitstream*, %struct.Bitstream** %source.addr, align 8
  %byte_buf43 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %36, i32 0, i32 2
  %37 = load i8, i8* %byte_buf43, align 1
  %conv44 = zext i8 %37 to i32
  %38 = load i8, i8* %mask, align 1
  %conv45 = zext i8 %38 to i32
  %and46 = and i32 %conv44, %conv45
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %for.body.38
  %39 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %byte_buf49 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %39, i32 0, i32 2
  %40 = load i8, i8* %byte_buf49, align 1
  %conv50 = zext i8 %40 to i32
  %or51 = or i32 %conv50, 1
  %conv52 = trunc i32 %or51 to i8
  store i8 %conv52, i8* %byte_buf49, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %for.body.38
  %41 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %bits_to_go54 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %41, i32 0, i32 1
  %42 = load i32, i32* %bits_to_go54, align 4
  %dec55 = add nsw i32 %42, -1
  store i32 %dec55, i32* %bits_to_go54, align 4
  %43 = load i8, i8* %mask, align 1
  %conv56 = zext i8 %43 to i32
  %shr57 = ashr i32 %conv56, 1
  %conv58 = trunc i32 %shr57 to i8
  store i8 %conv58, i8* %mask, align 1
  %44 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %bits_to_go59 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %44, i32 0, i32 1
  %45 = load i32, i32* %bits_to_go59, align 4
  %cmp60 = icmp eq i32 %45, 0
  br i1 %cmp60, label %if.then.62, label %if.end.71

if.then.62:                                       ; preds = %if.end.53
  %46 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %bits_to_go63 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %46, i32 0, i32 1
  store i32 8, i32* %bits_to_go63, align 4
  %47 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %byte_buf64 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %47, i32 0, i32 2
  %48 = load i8, i8* %byte_buf64, align 1
  %49 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %byte_pos65 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %49, i32 0, i32 0
  %50 = load i32, i32* %byte_pos65, align 4
  %inc66 = add nsw i32 %50, 1
  store i32 %inc66, i32* %byte_pos65, align 4
  %idxprom67 = sext i32 %50 to i64
  %51 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %streamBuffer68 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %51, i32 0, i32 9
  %52 = load i8*, i8** %streamBuffer68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %52, i64 %idxprom67
  store i8 %48, i8* %arrayidx69, align 1
  %53 = load %struct.Bitstream*, %struct.Bitstream** %dest.addr, align 8
  %byte_buf70 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %53, i32 0, i32 2
  store i8 0, i8* %byte_buf70, align 1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.62, %if.end.53
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %54 = load i32, i32* %j, align 4
  %inc73 = add nsw i32 %54, 1
  store i32 %inc73, i32* %j, align 4
  br label %for.cond.35

for.end.74:                                       ; preds = %for.cond.35
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.74, %for.end.27
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitSparePicture() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %cmp = icmp ne %struct.Bitstream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @CloseSparePicture()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call noalias i8* @malloc(i64 48) #3
  %1 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %1, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %cmp1 = icmp eq %struct.Bitstream* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %call4 = call noalias i8* @malloc(i64 65496) #3
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 9
  store i8* %call4, i8** %streamBuffer, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %streamBuffer5 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 9
  %5 = load i8*, i8** %streamBuffer5, align 8
  %cmp6 = icmp eq i8* %5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  call void @no_mem_exit(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.3
  %6 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %streamBuffer9 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 9
  %7 = load i8*, i8** %streamBuffer9, align 8
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 65496, i32 1, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 0), align 4
  %8 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %8, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %9 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %9, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %10 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %10, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @CloseSparePicture() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i32 0, i32 9
  %1 = load i8*, i8** %streamBuffer, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %streamBuffer1 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 9
  %3 = load i8*, i8** %streamBuffer1, align 8
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 9
  store i8* null, i8** %streamBuffer2, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %tobool3 = icmp ne %struct.Bitstream* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %7 = bitcast %struct.Bitstream* %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 0), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @CalculateSparePicture() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @ComposeSparePictureMessage(i32 %delta_spare_frame_num, i32 %ref_area_indicator, %struct.Bitstream* %tmpBitstream) #0 {
entry:
  %delta_spare_frame_num.addr = alloca i32, align 4
  %ref_area_indicator.addr = alloca i32, align 4
  %tmpBitstream.addr = alloca %struct.Bitstream*, align 8
  %bitstream = alloca %struct.Bitstream*, align 8
  %sym = alloca %struct.syntaxelement, align 8
  store i32 %delta_spare_frame_num, i32* %delta_spare_frame_num.addr, align 4
  store i32 %ref_area_indicator, i32* %ref_area_indicator.addr, align 4
  store %struct.Bitstream* %tmpBitstream, %struct.Bitstream** %tmpBitstream.addr, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  store %struct.Bitstream* %0, %struct.Bitstream** %bitstream, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 7
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8
  %1 = load i32, i32* %delta_spare_frame_num.addr, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %1, i32* %value1, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %2)
  %3 = load i32, i32* %ref_area_indicator.addr, align 4
  %value11 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %3, i32* %value11, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call2 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %4)
  %5 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %6 = load %struct.Bitstream*, %struct.Bitstream** %tmpBitstream.addr, align 8
  call void @AppendTmpbits2Buf(%struct.Bitstream* %5, %struct.Bitstream* %6)
  ret void
}

declare void @ue_linfo(i32, i32, i32*, i32*) #2

declare i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement*, %struct.Bitstream*) #2

; Function Attrs: nounwind uwtable
define i32 @CompressSpareMBMap(i8** %map_sp, %struct.Bitstream* %bitstream) #0 {
entry:
  %map_sp.addr = alloca i8**, align 8
  %bitstream.addr = alloca %struct.Bitstream*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %noc = alloca i32, align 4
  %bit0 = alloca i32, align 4
  %bit1 = alloca i32, align 4
  %bitc = alloca i32, align 4
  %sym = alloca %struct.syntaxelement, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %bottom = alloca i32, align 4
  %top = alloca i32, align 4
  %directx = alloca i32, align 4
  %directy = alloca i32, align 4
  %size_uncompressed = alloca i32, align 4
  %size_compressed = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8** %map_sp, i8*** %map_sp.addr, align 8
  store %struct.Bitstream* %bitstream, %struct.Bitstream** %bitstream.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 17
  %1 = load i32, i32* %height, align 4
  %div = sdiv i32 %1, 16
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4
  %div1 = sdiv i32 %3, 16
  %mul = mul nsw i32 %div, %div1
  store i32 %mul, i32* %size_uncompressed, align 4
  store i32 0, i32* %size_compressed, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 7
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8
  store i32 0, i32* %noc, align 4
  store i32 0, i32* %bit0, align 4
  store i32 1, i32* %bit1, align 4
  %4 = load i32, i32* %bit0, align 4
  store i32 %4, i32* %bitc, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 13
  %6 = load i32, i32* %width2, align 4
  %div3 = sdiv i32 %6, 16
  %sub = sub nsw i32 %div3, 1
  %div4 = sdiv i32 %sub, 2
  store i32 %div4, i32* %x, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 17
  %8 = load i32, i32* %height5, align 4
  %div6 = sdiv i32 %8, 16
  %sub7 = sub nsw i32 %div6, 1
  %div8 = sdiv i32 %sub7, 2
  store i32 %div8, i32* %y, align 4
  %9 = load i32, i32* %x, align 4
  store i32 %9, i32* %right, align 4
  store i32 %9, i32* %left, align 4
  %10 = load i32, i32* %y, align 4
  store i32 %10, i32* %bottom, align 4
  store i32 %10, i32* %top, align 4
  store i32 0, i32* %directx, align 4
  store i32 1, i32* %directy, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.132, %entry
  %11 = load i32, i32* %j, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 17
  %13 = load i32, i32* %height9, align 4
  %div10 = sdiv i32 %13, 16
  %cmp = icmp slt i32 %11, %div10
  br i1 %cmp, label %for.body, label %for.end.134

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %14 = load i32, i32* %k, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 13
  %16 = load i32, i32* %width12, align 4
  %div13 = sdiv i32 %16, 16
  %cmp14 = icmp slt i32 %14, %div13
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.11
  %17 = load i32, i32* %x, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32, i32* %y, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load i8**, i8*** %map_sp.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 %idxprom16
  %20 = load i8*, i8** %arrayidx, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %21 = load i8, i8* %arrayidx17, align 1
  %conv = zext i8 %21 to i32
  %22 = load i32, i32* %bitc, align 4
  %cmp18 = icmp eq i32 %conv, %22
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.15
  %23 = load i32, i32* %noc, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %noc, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.15
  %24 = load i32, i32* %noc, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %24, i32* %value1, align 4
  %25 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %25)
  %26 = load i32, i32* %size_compressed, align 4
  %add = add nsw i32 %26, %call
  store i32 %add, i32* %size_compressed, align 4
  store i32 0, i32* %noc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load i32, i32* %directx, align 4
  %cmp20 = icmp eq i32 %27, -1
  br i1 %cmp20, label %land.lhs.true, label %if.else.43

land.lhs.true:                                    ; preds = %if.end
  %28 = load i32, i32* %directy, align 4
  %cmp22 = icmp eq i32 %28, 0
  br i1 %cmp22, label %if.then.24, label %if.else.43

if.then.24:                                       ; preds = %land.lhs.true
  %29 = load i32, i32* %x, align 4
  %30 = load i32, i32* %left, align 4
  %cmp25 = icmp sgt i32 %29, %30
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.then.24
  %31 = load i32, i32* %x, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %x, align 4
  br label %if.end.42

if.else.28:                                       ; preds = %if.then.24
  %32 = load i32, i32* %x, align 4
  %cmp29 = icmp eq i32 %32, 0
  br i1 %cmp29, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else.28
  %33 = load i32, i32* %bottom, align 4
  %add32 = add nsw i32 %33, 1
  store i32 %add32, i32* %y, align 4
  %34 = load i32, i32* %bottom, align 4
  %inc33 = add nsw i32 %34, 1
  store i32 %inc33, i32* %bottom, align 4
  store i32 1, i32* %directx, align 4
  store i32 0, i32* %directy, align 4
  br label %if.end.41

if.else.34:                                       ; preds = %if.else.28
  %35 = load i32, i32* %x, align 4
  %36 = load i32, i32* %left, align 4
  %cmp35 = icmp eq i32 %35, %36
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.else.34
  %37 = load i32, i32* %x, align 4
  %dec38 = add nsw i32 %37, -1
  store i32 %dec38, i32* %x, align 4
  %38 = load i32, i32* %left, align 4
  %dec39 = add nsw i32 %38, -1
  store i32 %dec39, i32* %left, align 4
  store i32 0, i32* %directx, align 4
  store i32 1, i32* %directy, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.else.34
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.31
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.27
  br label %if.end.130

if.else.43:                                       ; preds = %land.lhs.true, %if.end
  %39 = load i32, i32* %directx, align 4
  %cmp44 = icmp eq i32 %39, 1
  br i1 %cmp44, label %land.lhs.true.46, label %if.else.72

land.lhs.true.46:                                 ; preds = %if.else.43
  %40 = load i32, i32* %directy, align 4
  %cmp47 = icmp eq i32 %40, 0
  br i1 %cmp47, label %if.then.49, label %if.else.72

if.then.49:                                       ; preds = %land.lhs.true.46
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* %right, align 4
  %cmp50 = icmp slt i32 %41, %42
  br i1 %cmp50, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.then.49
  %43 = load i32, i32* %x, align 4
  %inc53 = add nsw i32 %43, 1
  store i32 %inc53, i32* %x, align 4
  br label %if.end.71

if.else.54:                                       ; preds = %if.then.49
  %44 = load i32, i32* %x, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 13
  %46 = load i32, i32* %width55, align 4
  %div56 = sdiv i32 %46, 16
  %sub57 = sub nsw i32 %div56, 1
  %cmp58 = icmp eq i32 %44, %sub57
  br i1 %cmp58, label %if.then.60, label %if.else.63

if.then.60:                                       ; preds = %if.else.54
  %47 = load i32, i32* %top, align 4
  %sub61 = sub nsw i32 %47, 1
  store i32 %sub61, i32* %y, align 4
  %48 = load i32, i32* %top, align 4
  %dec62 = add nsw i32 %48, -1
  store i32 %dec62, i32* %top, align 4
  store i32 -1, i32* %directx, align 4
  store i32 0, i32* %directy, align 4
  br label %if.end.70

if.else.63:                                       ; preds = %if.else.54
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %right, align 4
  %cmp64 = icmp eq i32 %49, %50
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.else.63
  %51 = load i32, i32* %x, align 4
  %inc67 = add nsw i32 %51, 1
  store i32 %inc67, i32* %x, align 4
  %52 = load i32, i32* %right, align 4
  %inc68 = add nsw i32 %52, 1
  store i32 %inc68, i32* %right, align 4
  store i32 0, i32* %directx, align 4
  store i32 -1, i32* %directy, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.else.63
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.60
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.52
  br label %if.end.129

if.else.72:                                       ; preds = %land.lhs.true.46, %if.else.43
  %53 = load i32, i32* %directx, align 4
  %cmp73 = icmp eq i32 %53, 0
  br i1 %cmp73, label %land.lhs.true.75, label %if.else.98

land.lhs.true.75:                                 ; preds = %if.else.72
  %54 = load i32, i32* %directy, align 4
  %cmp76 = icmp eq i32 %54, -1
  br i1 %cmp76, label %if.then.78, label %if.else.98

if.then.78:                                       ; preds = %land.lhs.true.75
  %55 = load i32, i32* %y, align 4
  %56 = load i32, i32* %top, align 4
  %cmp79 = icmp sgt i32 %55, %56
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.then.78
  %57 = load i32, i32* %y, align 4
  %dec82 = add nsw i32 %57, -1
  store i32 %dec82, i32* %y, align 4
  br label %if.end.97

if.else.83:                                       ; preds = %if.then.78
  %58 = load i32, i32* %y, align 4
  %cmp84 = icmp eq i32 %58, 0
  br i1 %cmp84, label %if.then.86, label %if.else.89

if.then.86:                                       ; preds = %if.else.83
  %59 = load i32, i32* %left, align 4
  %sub87 = sub nsw i32 %59, 1
  store i32 %sub87, i32* %x, align 4
  %60 = load i32, i32* %left, align 4
  %dec88 = add nsw i32 %60, -1
  store i32 %dec88, i32* %left, align 4
  store i32 0, i32* %directx, align 4
  store i32 1, i32* %directy, align 4
  br label %if.end.96

if.else.89:                                       ; preds = %if.else.83
  %61 = load i32, i32* %y, align 4
  %62 = load i32, i32* %top, align 4
  %cmp90 = icmp eq i32 %61, %62
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.else.89
  %63 = load i32, i32* %y, align 4
  %dec93 = add nsw i32 %63, -1
  store i32 %dec93, i32* %y, align 4
  %64 = load i32, i32* %top, align 4
  %dec94 = add nsw i32 %64, -1
  store i32 %dec94, i32* %top, align 4
  store i32 -1, i32* %directx, align 4
  store i32 0, i32* %directy, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %if.else.89
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.86
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.81
  br label %if.end.128

if.else.98:                                       ; preds = %land.lhs.true.75, %if.else.72
  %65 = load i32, i32* %directx, align 4
  %cmp99 = icmp eq i32 %65, 0
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.127

land.lhs.true.101:                                ; preds = %if.else.98
  %66 = load i32, i32* %directy, align 4
  %cmp102 = icmp eq i32 %66, 1
  br i1 %cmp102, label %if.then.104, label %if.end.127

if.then.104:                                      ; preds = %land.lhs.true.101
  %67 = load i32, i32* %y, align 4
  %68 = load i32, i32* %bottom, align 4
  %cmp105 = icmp slt i32 %67, %68
  br i1 %cmp105, label %if.then.107, label %if.else.109

if.then.107:                                      ; preds = %if.then.104
  %69 = load i32, i32* %y, align 4
  %inc108 = add nsw i32 %69, 1
  store i32 %inc108, i32* %y, align 4
  br label %if.end.126

if.else.109:                                      ; preds = %if.then.104
  %70 = load i32, i32* %y, align 4
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 17
  %72 = load i32, i32* %height110, align 4
  %div111 = sdiv i32 %72, 16
  %sub112 = sub nsw i32 %div111, 1
  %cmp113 = icmp eq i32 %70, %sub112
  br i1 %cmp113, label %if.then.115, label %if.else.118

if.then.115:                                      ; preds = %if.else.109
  %73 = load i32, i32* %right, align 4
  %add116 = add nsw i32 %73, 1
  store i32 %add116, i32* %x, align 4
  %74 = load i32, i32* %right, align 4
  %inc117 = add nsw i32 %74, 1
  store i32 %inc117, i32* %right, align 4
  store i32 0, i32* %directx, align 4
  store i32 -1, i32* %directy, align 4
  br label %if.end.125

if.else.118:                                      ; preds = %if.else.109
  %75 = load i32, i32* %y, align 4
  %76 = load i32, i32* %bottom, align 4
  %cmp119 = icmp eq i32 %75, %76
  br i1 %cmp119, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.else.118
  %77 = load i32, i32* %y, align 4
  %inc122 = add nsw i32 %77, 1
  store i32 %inc122, i32* %y, align 4
  %78 = load i32, i32* %bottom, align 4
  %inc123 = add nsw i32 %78, 1
  store i32 %inc123, i32* %bottom, align 4
  store i32 1, i32* %directx, align 4
  store i32 0, i32* %directy, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.else.118
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.115
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.107
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %land.lhs.true.101, %if.else.98
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.97
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.71
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.130
  %79 = load i32, i32* %k, align 4
  %inc131 = add nsw i32 %79, 1
  store i32 %inc131, i32* %k, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.end
  %80 = load i32, i32* %j, align 4
  %inc133 = add nsw i32 %80, 1
  store i32 %inc133, i32* %j, align 4
  br label %for.cond

for.end.134:                                      ; preds = %for.cond
  %81 = load i32, i32* %noc, align 4
  %cmp135 = icmp ne i32 %81, 0
  br i1 %cmp135, label %if.then.137, label %if.end.141

if.then.137:                                      ; preds = %for.end.134
  %82 = load i32, i32* %noc, align 4
  %value1138 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %82, i32* %value1138, align 4
  %83 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call139 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %83)
  %84 = load i32, i32* %size_compressed, align 4
  %add140 = add nsw i32 %84, %call139
  store i32 %add140, i32* %size_compressed, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.137, %for.end.134
  %85 = load i32, i32* %size_compressed, align 4
  %86 = load i32, i32* %size_uncompressed, align 4
  %cmp142 = icmp slt i32 %85, %86
  %cond = select i1 %cmp142, i32 1, i32 0
  store i32 %cond, i32* %ret, align 4
  %87 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %87, 0
  br i1 %tobool, label %if.end.190, label %if.then.144

if.then.144:                                      ; preds = %if.end.141
  %88 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %88, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  %89 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %89, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %90 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %90, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.187, %if.then.144
  %91 = load i32, i32* %j, align 4
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height146 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 17
  %93 = load i32, i32* %height146, align 4
  %div147 = sdiv i32 %93, 16
  %cmp148 = icmp slt i32 %91, %div147
  br i1 %cmp148, label %for.body.150, label %for.end.189

for.body.150:                                     ; preds = %for.cond.145
  store i32 0, i32* %k, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.184, %for.body.150
  %94 = load i32, i32* %k, align 4
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width152 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 13
  %96 = load i32, i32* %width152, align 4
  %div153 = sdiv i32 %96, 16
  %cmp154 = icmp slt i32 %94, %div153
  br i1 %cmp154, label %for.body.156, label %for.end.186

for.body.156:                                     ; preds = %for.cond.151
  %97 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %byte_buf157 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %97, i32 0, i32 2
  %98 = load i8, i8* %byte_buf157, align 1
  %conv158 = zext i8 %98 to i32
  %shl = shl i32 %conv158, 1
  %conv159 = trunc i32 %shl to i8
  store i8 %conv159, i8* %byte_buf157, align 1
  %99 = load i32, i32* %k, align 4
  %idxprom160 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %100 to i64
  %101 = load i8**, i8*** %map_sp.addr, align 8
  %arrayidx162 = getelementptr inbounds i8*, i8** %101, i64 %idxprom161
  %102 = load i8*, i8** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %102, i64 %idxprom160
  %103 = load i8, i8* %arrayidx163, align 1
  %tobool164 = icmp ne i8 %103, 0
  br i1 %tobool164, label %if.then.165, label %if.end.169

if.then.165:                                      ; preds = %for.body.156
  %104 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %byte_buf166 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %104, i32 0, i32 2
  %105 = load i8, i8* %byte_buf166, align 1
  %conv167 = zext i8 %105 to i32
  %or = or i32 %conv167, 1
  %conv168 = trunc i32 %or to i8
  store i8 %conv168, i8* %byte_buf166, align 1
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.165, %for.body.156
  %106 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %bits_to_go170 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %106, i32 0, i32 1
  %107 = load i32, i32* %bits_to_go170, align 4
  %dec171 = add nsw i32 %107, -1
  store i32 %dec171, i32* %bits_to_go170, align 4
  %108 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %bits_to_go172 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %108, i32 0, i32 1
  %109 = load i32, i32* %bits_to_go172, align 4
  %cmp173 = icmp eq i32 %109, 0
  br i1 %cmp173, label %if.then.175, label %if.end.183

if.then.175:                                      ; preds = %if.end.169
  %110 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %bits_to_go176 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %110, i32 0, i32 1
  store i32 8, i32* %bits_to_go176, align 4
  %111 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %byte_buf177 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %111, i32 0, i32 2
  %112 = load i8, i8* %byte_buf177, align 1
  %113 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %byte_pos178 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %113, i32 0, i32 0
  %114 = load i32, i32* %byte_pos178, align 4
  %inc179 = add nsw i32 %114, 1
  store i32 %inc179, i32* %byte_pos178, align 4
  %idxprom180 = sext i32 %114 to i64
  %115 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %115, i32 0, i32 9
  %116 = load i8*, i8** %streamBuffer, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %116, i64 %idxprom180
  store i8 %112, i8* %arrayidx181, align 1
  %117 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %byte_buf182 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %117, i32 0, i32 2
  store i8 0, i8* %byte_buf182, align 1
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.175, %if.end.169
  br label %for.inc.184

for.inc.184:                                      ; preds = %if.end.183
  %118 = load i32, i32* %k, align 4
  %inc185 = add nsw i32 %118, 1
  store i32 %inc185, i32* %k, align 4
  br label %for.cond.151

for.end.186:                                      ; preds = %for.cond.151
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.end.186
  %119 = load i32, i32* %j, align 4
  %inc188 = add nsw i32 %119, 1
  store i32 %inc188, i32* %j, align 4
  br label %for.cond.145

for.end.189:                                      ; preds = %for.cond.145
  br label %if.end.190

if.end.190:                                       ; preds = %for.end.189, %if.end.141
  %120 = load i32, i32* %ret, align 4
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define void @FinalizeSpareMBMap() #0 {
entry:
  %CurrFrameNum = alloca i32, align 4
  %delta_frame_num = alloca i32, align 4
  %sym = alloca %struct.syntaxelement, align 8
  %dest = alloca %struct.Bitstream*, align 8
  %source = alloca %struct.Bitstream*, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %rem = srem i32 %1, 256
  store i32 %rem, i32* %CurrFrameNum, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 7
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  store %struct.Bitstream* %2, %struct.Bitstream** %source, align 8
  %call = call noalias i8* @malloc(i64 48) #3
  %3 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %3, %struct.Bitstream** %dest, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %cmp = icmp eq %struct.Bitstream* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 65496) #3
  %5 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8
  %6 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 9
  %7 = load i8*, i8** %streamBuffer2, align 8
  %cmp3 = icmp eq i8* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %8, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %9 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %9, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %10 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %10, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  %11 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %streamBuffer6 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %11, i32 0, i32 9
  %12 = load i8*, i8** %streamBuffer6, align 8
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 65496, i32 1, i1 false)
  %13 = load i32, i32* %CurrFrameNum, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 0), align 4
  %sub = sub nsw i32 %13, %14
  store i32 %sub, i32* %delta_frame_num, align 4
  %15 = load i32, i32* %delta_frame_num, align 4
  %cmp7 = icmp slt i32 %15, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %16 = load i32, i32* %delta_frame_num, align 4
  %add = add nsw i32 %16, 256
  store i32 %add, i32* %delta_frame_num, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %17 = load i32, i32* %delta_frame_num, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %17, i32* %value1, align 4
  %18 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call10 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %18)
  %19 = load i32, i32* getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 1), align 4
  %sub11 = sub nsw i32 %19, 1
  %value112 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %sub11, i32* %value112, align 4
  %20 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call13 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %20)
  %21 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %22 = load %struct.Bitstream*, %struct.Bitstream** %source, align 8
  call void @AppendTmpbits2Buf(%struct.Bitstream* %21, %struct.Bitstream* %22)
  %23 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go14 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %23, i32 0, i32 1
  %24 = load i32, i32* %bits_to_go14, align 4
  %cmp15 = icmp ne i32 %24, 8
  br i1 %cmp15, label %if.then.16, label %if.end.38

if.then.16:                                       ; preds = %if.end.9
  %25 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf17 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %25, i32 0, i32 2
  %26 = load i8, i8* %byte_buf17, align 1
  %conv = zext i8 %26 to i32
  %shl = shl i32 %conv, 1
  %conv18 = trunc i32 %shl to i8
  store i8 %conv18, i8* %byte_buf17, align 1
  %27 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf19 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %27, i32 0, i32 2
  %28 = load i8, i8* %byte_buf19, align 1
  %conv20 = zext i8 %28 to i32
  %or = or i32 %conv20, 1
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, i8* %byte_buf19, align 1
  %29 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go22 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %29, i32 0, i32 1
  %30 = load i32, i32* %bits_to_go22, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %bits_to_go22, align 4
  %31 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go23 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %31, i32 0, i32 1
  %32 = load i32, i32* %bits_to_go23, align 4
  %cmp24 = icmp ne i32 %32, 0
  br i1 %cmp24, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %if.then.16
  %33 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go27 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %33, i32 0, i32 1
  %34 = load i32, i32* %bits_to_go27, align 4
  %35 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf28 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %35, i32 0, i32 2
  %36 = load i8, i8* %byte_buf28, align 1
  %conv29 = zext i8 %36 to i32
  %shl30 = shl i32 %conv29, %34
  %conv31 = trunc i32 %shl30 to i8
  store i8 %conv31, i8* %byte_buf28, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.26, %if.then.16
  %37 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go33 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %37, i32 0, i32 1
  store i32 8, i32* %bits_to_go33, align 4
  %38 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf34 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %38, i32 0, i32 2
  %39 = load i8, i8* %byte_buf34, align 1
  %40 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos35 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %40, i32 0, i32 0
  %41 = load i32, i32* %byte_pos35, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %byte_pos35, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %streamBuffer36 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %42, i32 0, i32 9
  %43 = load i8*, i8** %streamBuffer36, align 8
  %arrayidx = getelementptr inbounds i8, i8* %43, i64 %idxprom
  store i8 %39, i8* %arrayidx, align 1
  %44 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf37 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %44, i32 0, i32 2
  store i8 0, i8* %byte_buf37, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.32, %if.end.9
  %45 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos39 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %45, i32 0, i32 0
  %46 = load i32, i32* %byte_pos39, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 2), align 4
  %47 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  store %struct.Bitstream* %47, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct, %struct.spare_picture_struct* @seiSparePicturePayload, i32 0, i32 3), align 8
  %48 = load %struct.Bitstream*, %struct.Bitstream** %source, align 8
  %streamBuffer40 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %48, i32 0, i32 9
  %49 = load i8*, i8** %streamBuffer40, align 8
  call void @free(i8* %49) #3
  %50 = load %struct.Bitstream*, %struct.Bitstream** %source, align 8
  %51 = bitcast %struct.Bitstream* %50 to i8*
  call void @free(i8* %51) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitSubseqInfo(i32 %currLayer) #0 {
entry:
  %currLayer.addr = alloca i32, align 4
  store i32 %currLayer, i32* %currLayer.addr, align 4
  store i32 1, i32* @seiHasSubseqInfo, align 4
  %0 = load i32, i32* %currLayer.addr, align 4
  %1 = load i32, i32* %currLayer.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom
  %subseq_layer_num = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx, i32 0, i32 0
  store i32 %0, i32* %subseq_layer_num, align 4
  %2 = load i16, i16* @InitSubseqInfo.id, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* @InitSubseqInfo.id, align 2
  %conv = zext i16 %2 to i32
  %3 = load i32, i32* %currLayer.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom1
  %subseq_id = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx2, i32 0, i32 1
  store i32 %conv, i32* %subseq_id, align 4
  %4 = load i32, i32* %currLayer.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom3
  %last_picture_flag = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx4, i32 0, i32 2
  store i32 0, i32* %last_picture_flag, align 4
  %5 = load i32, i32* %currLayer.addr, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom5
  %stored_frame_cnt = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx6, i32 0, i32 3
  store i32 -1, i32* %stored_frame_cnt, align 4
  %6 = load i32, i32* %currLayer.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom7
  %payloadSize = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx8, i32 0, i32 4
  store i32 0, i32* %payloadSize, align 4
  %call = call noalias i8* @malloc(i64 48) #3
  %7 = bitcast i8* %call to %struct.Bitstream*
  %8 = load i32, i32* %currLayer.addr, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom9
  %data = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx10, i32 0, i32 5
  store %struct.Bitstream* %7, %struct.Bitstream** %data, align 8
  %9 = load i32, i32* %currLayer.addr, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom11
  %data13 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx12, i32 0, i32 5
  %10 = load %struct.Bitstream*, %struct.Bitstream** %data13, align 8
  %cmp = icmp eq %struct.Bitstream* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call noalias i8* @malloc(i64 65496) #3
  %11 = load i32, i32* %currLayer.addr, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom16
  %data18 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx17, i32 0, i32 5
  %12 = load %struct.Bitstream*, %struct.Bitstream** %data18, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %12, i32 0, i32 9
  store i8* %call15, i8** %streamBuffer, align 8
  %13 = load i32, i32* %currLayer.addr, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom19
  %data21 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx20, i32 0, i32 5
  %14 = load %struct.Bitstream*, %struct.Bitstream** %data21, align 8
  %streamBuffer22 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 9
  %15 = load i8*, i8** %streamBuffer22, align 8
  %cmp23 = icmp eq i8* %15, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end
  %16 = load i32, i32* %currLayer.addr, align 4
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom27
  %data29 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx28, i32 0, i32 5
  %17 = load %struct.Bitstream*, %struct.Bitstream** %data29, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %18 = load i32, i32* %currLayer.addr, align 4
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom30
  %data32 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx31, i32 0, i32 5
  %19 = load %struct.Bitstream*, %struct.Bitstream** %data32, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %19, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %20 = load i32, i32* %currLayer.addr, align 4
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom33
  %data35 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx34, i32 0, i32 5
  %21 = load %struct.Bitstream*, %struct.Bitstream** %data35, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %21, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  %22 = load i32, i32* %currLayer.addr, align 4
  %idxprom36 = sext i32 %22 to i64
  %arrayidx37 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom36
  %data38 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx37, i32 0, i32 5
  %23 = load %struct.Bitstream*, %struct.Bitstream** %data38, align 8
  %streamBuffer39 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %23, i32 0, i32 9
  %24 = load i8*, i8** %streamBuffer39, align 8
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 65496, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @UpdateSubseqInfo(i32 %currLayer) #0 {
entry:
  %currLayer.addr = alloca i32, align 4
  store i32 %currLayer, i32* %currLayer.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %currLayer.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom
  %stored_frame_cnt = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx, i32 0, i32 3
  %3 = load i32, i32* %stored_frame_cnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %stored_frame_cnt, align 4
  %4 = load i32, i32* %currLayer.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom1
  %stored_frame_cnt3 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx2, i32 0, i32 3
  %5 = load i32, i32* %stored_frame_cnt3, align 4
  %rem = urem i32 %5, 256
  %6 = load i32, i32* %currLayer.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom4
  %stored_frame_cnt6 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx5, i32 0, i32 3
  store i32 %rem, i32* %stored_frame_cnt6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %currLayer.addr, align 4
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %if.end
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 0
  %9 = load i32, i32* %number, align 4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 2
  %11 = load i32, i32* %no_frames, align 4
  %sub = sub nsw i32 %11, 1
  %cmp9 = icmp eq i32 %9, %sub
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  %12 = load i32, i32* %currLayer.addr, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom11
  %last_picture_flag = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx12, i32 0, i32 2
  store i32 1, i32* %last_picture_flag, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.then.8
  %13 = load i32, i32* %currLayer.addr, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom13
  %last_picture_flag15 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx14, i32 0, i32 2
  store i32 0, i32* %last_picture_flag15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %14 = load i32, i32* %currLayer.addr, align 4
  %cmp18 = icmp eq i32 %14, 1
  br i1 %cmp18, label %if.then.19, label %if.end.48

if.then.19:                                       ; preds = %if.end.17
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 0
  %16 = load i32, i32* %number20, align 4
  %17 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub21 = sub nsw i32 %16, %17
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 129
  %19 = load i32, i32* %NumFramesInELSubSeq, align 4
  %add = add nsw i32 %19, 1
  %rem22 = srem i32 %sub21, %add
  %cmp23 = icmp eq i32 %rem22, 0
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.19
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 40
  %21 = load i32, i32* %successive_Bframe, align 4
  %cmp24 = icmp ne i32 %21, 0
  br i1 %cmp24, label %land.lhs.true.25, label %lor.lhs.false

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 0
  %23 = load i32, i32* %number26, align 4
  %24 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub27 = sub nsw i32 %23, %24
  %cmp28 = icmp sgt i32 %sub27, 0
  br i1 %cmp28, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.25, %land.lhs.true, %if.then.19
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 0
  %26 = load i32, i32* %number29, align 4
  %27 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub30 = sub nsw i32 %26, %27
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 129
  %29 = load i32, i32* %NumFramesInELSubSeq31, align 4
  %add32 = add nsw i32 %29, 1
  %rem33 = srem i32 %sub30, %add32
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 129
  %31 = load i32, i32* %NumFramesInELSubSeq34, align 4
  %cmp35 = icmp eq i32 %rem33, %31
  br i1 %cmp35, label %land.lhs.true.36, label %if.else.43

land.lhs.true.36:                                 ; preds = %lor.lhs.false
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe37 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 40
  %33 = load i32, i32* %successive_Bframe37, align 4
  %cmp38 = icmp eq i32 %33, 0
  br i1 %cmp38, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %land.lhs.true.36, %land.lhs.true.25
  %34 = load i32, i32* %currLayer.addr, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom40
  %last_picture_flag42 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx41, i32 0, i32 2
  store i32 1, i32* %last_picture_flag42, align 4
  br label %if.end.47

if.else.43:                                       ; preds = %land.lhs.true.36, %lor.lhs.false
  %35 = load i32, i32* %currLayer.addr, align 4
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom44
  %last_picture_flag46 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx45, i32 0, i32 2
  store i32 0, i32* %last_picture_flag46, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.43, %if.then.39
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.17
  ret void
}

; Function Attrs: nounwind uwtable
define void @FinalizeSubseqInfo(i32 %currLayer) #0 {
entry:
  %currLayer.addr = alloca i32, align 4
  %sym = alloca %struct.syntaxelement, align 8
  %dest = alloca %struct.Bitstream*, align 8
  store i32 %currLayer, i32* %currLayer.addr, align 4
  %0 = load i32, i32* %currLayer.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx, i32 0, i32 5
  %1 = load %struct.Bitstream*, %struct.Bitstream** %data, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %dest, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 7
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8
  %2 = load i32, i32* %currLayer.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom1
  %subseq_layer_num = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx2, i32 0, i32 0
  %3 = load i32, i32* %subseq_layer_num, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %3, i32* %value1, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %4)
  %5 = load i32, i32* %currLayer.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom3
  %subseq_id = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx4, i32 0, i32 1
  %6 = load i32, i32* %subseq_id, align 4
  %value15 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %6, i32* %value15, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call6 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %7)
  %8 = load i32, i32* %currLayer.addr, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom7
  %last_picture_flag = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx8, i32 0, i32 2
  %9 = load i32, i32* %last_picture_flag, align 4
  %bitpattern = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %9, i32* %bitpattern, align 4
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 1, i32* %len, align 4
  %10 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call9 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %10)
  %11 = load i32, i32* %currLayer.addr, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom10
  %stored_frame_cnt = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx11, i32 0, i32 3
  %12 = load i32, i32* %stored_frame_cnt, align 4
  %value112 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %12, i32* %value112, align 4
  %13 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call13 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %13)
  %14 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 1
  %15 = load i32, i32* %bits_to_go, align 4
  %cmp = icmp ne i32 %15, 8
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %16 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %16, i32 0, i32 2
  %17 = load i8, i8* %byte_buf, align 1
  %conv = zext i8 %17 to i32
  %shl = shl i32 %conv, 1
  %conv14 = trunc i32 %shl to i8
  store i8 %conv14, i8* %byte_buf, align 1
  %18 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf15 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %18, i32 0, i32 2
  %19 = load i8, i8* %byte_buf15, align 1
  %conv16 = zext i8 %19 to i32
  %or = or i32 %conv16, 1
  %conv17 = trunc i32 %or to i8
  store i8 %conv17, i8* %byte_buf15, align 1
  %20 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go18 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %20, i32 0, i32 1
  %21 = load i32, i32* %bits_to_go18, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %bits_to_go18, align 4
  %22 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go19 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %22, i32 0, i32 1
  %23 = load i32, i32* %bits_to_go19, align 4
  %cmp20 = icmp ne i32 %23, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  %24 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go23 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %24, i32 0, i32 1
  %25 = load i32, i32* %bits_to_go23, align 4
  %26 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf24 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %26, i32 0, i32 2
  %27 = load i8, i8* %byte_buf24, align 1
  %conv25 = zext i8 %27 to i32
  %shl26 = shl i32 %conv25, %25
  %conv27 = trunc i32 %shl26 to i8
  store i8 %conv27, i8* %byte_buf24, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then
  %28 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go28 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %28, i32 0, i32 1
  store i32 8, i32* %bits_to_go28, align 4
  %29 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf29 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %29, i32 0, i32 2
  %30 = load i8, i8* %byte_buf29, align 1
  %31 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %31, i32 0, i32 0
  %32 = load i32, i32* %byte_pos, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %byte_pos, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %33, i32 0, i32 9
  %34 = load i8*, i8** %streamBuffer, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %34, i64 %idxprom30
  store i8 %30, i8* %arrayidx31, align 1
  %35 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf32 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %35, i32 0, i32 2
  store i8 0, i8* %byte_buf32, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %entry
  %36 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos34 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %36, i32 0, i32 0
  %37 = load i32, i32* %byte_pos34, align 4
  %38 = load i32, i32* %currLayer.addr, align 4
  %idxprom35 = sext i32 %38 to i64
  %arrayidx36 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom35
  %payloadSize = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx36, i32 0, i32 4
  store i32 %37, i32* %payloadSize, align 4
  ret void
}

declare i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement*, %struct.Bitstream*) #2

; Function Attrs: nounwind uwtable
define void @ClearSubseqInfoPayload(i32 %currLayer) #0 {
entry:
  %currLayer.addr = alloca i32, align 4
  store i32 %currLayer, i32* %currLayer.addr, align 4
  %0 = load i32, i32* %currLayer.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx, i32 0, i32 5
  %1 = load %struct.Bitstream*, %struct.Bitstream** %data, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %1, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %2 = load i32, i32* %currLayer.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom1
  %data3 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx2, i32 0, i32 5
  %3 = load %struct.Bitstream*, %struct.Bitstream** %data3, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %4 = load i32, i32* %currLayer.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom4
  %data6 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx5, i32 0, i32 5
  %5 = load %struct.Bitstream*, %struct.Bitstream** %data6, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  %6 = load i32, i32* %currLayer.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom7
  %data9 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx8, i32 0, i32 5
  %7 = load %struct.Bitstream*, %struct.Bitstream** %data9, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %7, i32 0, i32 9
  %8 = load i8*, i8** %streamBuffer, align 8
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 65496, i32 1, i1 false)
  %9 = load i32, i32* %currLayer.addr, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom10
  %payloadSize = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx11, i32 0, i32 4
  store i32 0, i32* %payloadSize, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @CloseSubseqInfo(i32 %currLayer) #0 {
entry:
  %currLayer.addr = alloca i32, align 4
  store i32 %currLayer, i32* %currLayer.addr, align 4
  %0 = load i32, i32* %currLayer.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom
  %stored_frame_cnt = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx, i32 0, i32 3
  store i32 -1, i32* %stored_frame_cnt, align 4
  %1 = load i32, i32* %currLayer.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom1
  %payloadSize = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx2, i32 0, i32 4
  store i32 0, i32* %payloadSize, align 4
  %2 = load i32, i32* %currLayer.addr, align 4
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom3
  %data = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx4, i32 0, i32 5
  %3 = load %struct.Bitstream*, %struct.Bitstream** %data, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 9
  %4 = load i8*, i8** %streamBuffer, align 8
  call void @free(i8* %4) #3
  %5 = load i32, i32* %currLayer.addr, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom5
  %data7 = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx6, i32 0, i32 5
  %6 = load %struct.Bitstream*, %struct.Bitstream** %data7, align 8
  %7 = bitcast %struct.Bitstream* %6 to i8*
  call void @free(i8* %7) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitSubseqLayerInfo() #0 {
entry:
  %i = alloca i32, align 4
  store i32 1, i32* @seiHasSubseqLayerInfo, align 4
  store i32 0, i32* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 3), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 0), i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [2 x i16], [2 x i16]* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 1), i32 0, i64 %idxprom1
  store i16 0, i16* %arrayidx2, align 2
  %3 = load i32, i32* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 3), align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 3), align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %4, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @CloseSubseqLayerInfo() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @FinalizeSubseqLayerInfo() #0 {
entry:
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 0, i32* %pos, align 4
  store i32 0, i32* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 4), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 3), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 0), i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %4 = load i32, i32* %pos, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i8], [8 x i8]* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 2), i32 0, i64 %idxprom1
  %5 = bitcast i8* %arrayidx2 to i16*
  store i16 %3, i16* %5, align 2
  %6 = load i32, i32* %pos, align 4
  %add = add nsw i32 %6, 2
  store i32 %add, i32* %pos, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [2 x i16], [2 x i16]* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 1), i32 0, i64 %idxprom3
  %8 = load i16, i16* %arrayidx4, align 2
  %9 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [8 x i8], [8 x i8]* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 2), i32 0, i64 %idxprom5
  %10 = bitcast i8* %arrayidx6 to i16*
  store i16 %8, i16* %10, align 2
  %11 = load i32, i32* %pos, align 4
  %add7 = add nsw i32 %11, 2
  store i32 %add7, i32* %pos, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 4), align 4
  %add8 = add nsw i32 %12, 4
  store i32 %add8, i32* getelementptr inbounds (%struct.subseq_layer_information_struct, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i32 0, i32 4), align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitSubseqChar() #0 {
entry:
  %call = call noalias i8* @malloc(i64 48) #3
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %cmp = icmp eq %struct.Bitstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 65496) #3
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 9
  %4 = load i8*, i8** %streamBuffer2, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  call void @ClearSubseqCharPayload()
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 95
  %6 = load i32, i32* %layer, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 0), align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 95
  %8 = load i32, i32* %layer6, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom
  %subseq_id = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx, i32 0, i32 1
  %9 = load i32, i32* %subseq_id, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 7), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ClearSubseqCharPayload() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i32 0, i32 9
  %1 = load i8*, i8** %streamBuffer, align 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 11), align 4
  store i32 0, i32* @seiHasSubseqChar, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UpdateSubseqChar() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 95
  %1 = load i32, i32* %layer, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 0), align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 95
  %3 = load i32, i32* %layer1, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.subseq_information_struct], [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i32 0, i64 %idxprom
  %subseq_id = getelementptr inbounds %struct.subseq_information_struct, %struct.subseq_information_struct* %arrayidx, i32 0, i32 1
  %4 = load i32, i32* %subseq_id, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 4), align 4
  store i32 100, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 5), align 4
  store i32 30, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 6), align 4
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 7), align 4
  store i32 1, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 8, i64 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 9, i64 0), align 4
  store i32 3, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 8, i64 1), align 4
  store i32 4, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 9, i64 1), align 4
  store i32 1, i32* @seiHasSubseqChar, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @FinalizeSubseqChar() #0 {
entry:
  %i = alloca i32, align 4
  %sym = alloca %struct.syntaxelement, align 8
  %dest = alloca %struct.Bitstream*, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  store %struct.Bitstream* %0, %struct.Bitstream** %dest, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 7
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 0), align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %1, i32* %value1, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 1), align 4
  %value11 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %3, i32* %value11, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call2 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %4)
  %5 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 2), align 4
  %bitpattern = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %5, i32* %bitpattern, align 4
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 1, i32* %len, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call3 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %6)
  %7 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 2), align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 3), align 4
  %bitpattern4 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %8, i32* %bitpattern4, align 4
  %len5 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 32, i32* %len5, align 4
  %9 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call6 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 4), align 4
  %bitpattern7 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %10, i32* %bitpattern7, align 4
  %len8 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 1, i32* %len8, align 4
  %11 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call9 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %11)
  %12 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 4), align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.end
  %13 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 5), align 4
  %bitpattern12 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %13, i32* %bitpattern12, align 4
  %len13 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 16, i32* %len13, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call14 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %14)
  %15 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 6), align 4
  %bitpattern15 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %15, i32* %bitpattern15, align 4
  %len16 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 16, i32* %len16, align 4
  %16 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call17 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %if.end
  %17 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 7), align 4
  %value119 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %17, i32* %value119, align 4
  %18 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call20 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %18)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 7), align 4
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 8), i32 0, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %value121 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %22, i32* %value121, align 4
  %23 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call22 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %23)
  %24 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 9), i32 0, i64 %idxprom23
  %25 = load i32, i32* %arrayidx24, align 4
  %value125 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %25, i32* %value125, align 4
  %26 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call26 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %28, i32 0, i32 1
  %29 = load i32, i32* %bits_to_go, align 4
  %cmp27 = icmp ne i32 %29, 8
  br i1 %cmp27, label %if.then.28, label %if.end.50

if.then.28:                                       ; preds = %for.end
  %30 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %30, i32 0, i32 2
  %31 = load i8, i8* %byte_buf, align 1
  %conv = zext i8 %31 to i32
  %shl = shl i32 %conv, 1
  %conv29 = trunc i32 %shl to i8
  store i8 %conv29, i8* %byte_buf, align 1
  %32 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf30 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %32, i32 0, i32 2
  %33 = load i8, i8* %byte_buf30, align 1
  %conv31 = zext i8 %33 to i32
  %or = or i32 %conv31, 1
  %conv32 = trunc i32 %or to i8
  store i8 %conv32, i8* %byte_buf30, align 1
  %34 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go33 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 1
  %35 = load i32, i32* %bits_to_go33, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %bits_to_go33, align 4
  %36 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go34 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %36, i32 0, i32 1
  %37 = load i32, i32* %bits_to_go34, align 4
  %cmp35 = icmp ne i32 %37, 0
  br i1 %cmp35, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %if.then.28
  %38 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go38 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %38, i32 0, i32 1
  %39 = load i32, i32* %bits_to_go38, align 4
  %40 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf39 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %40, i32 0, i32 2
  %41 = load i8, i8* %byte_buf39, align 1
  %conv40 = zext i8 %41 to i32
  %shl41 = shl i32 %conv40, %39
  %conv42 = trunc i32 %shl41 to i8
  store i8 %conv42, i8* %byte_buf39, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %if.then.28
  %42 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go44 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %42, i32 0, i32 1
  store i32 8, i32* %bits_to_go44, align 4
  %43 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf45 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %43, i32 0, i32 2
  %44 = load i8, i8* %byte_buf45, align 1
  %45 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %45, i32 0, i32 0
  %46 = load i32, i32* %byte_pos, align 4
  %inc46 = add nsw i32 %46, 1
  store i32 %inc46, i32* %byte_pos, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %47, i32 0, i32 9
  %48 = load i8*, i8** %streamBuffer, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %48, i64 %idxprom47
  store i8 %44, i8* %arrayidx48, align 1
  %49 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf49 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %49, i32 0, i32 2
  store i8 0, i8* %byte_buf49, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.43, %for.end
  %50 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos51 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %50, i32 0, i32 0
  %51 = load i32, i32* %byte_pos51, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 11), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @CloseSubseqChar() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %tobool = icmp ne %struct.Bitstream* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %1, i32 0, i32 9
  %2 = load i8*, i8** %streamBuffer, align 8
  call void @free(i8* %2) #3
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  %4 = bitcast %struct.Bitstream* %3 to i8*
  call void @free(i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct, %struct.subseq_char_information_struct* @seiSubseqChar, i32 0, i32 10), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitSceneInformation() #0 {
entry:
  store i32 1, i32* @seiHasSceneInformation, align 4
  store i32 0, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 1), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 2), align 4
  %call = call noalias i8* @malloc(i64 48) #3
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %cmp = icmp eq %struct.Bitstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 65496) #3
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 9
  %4 = load i8*, i8** %streamBuffer2, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %5 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %7, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  %8 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %streamBuffer6 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %8, i32 0, i32 9
  %9 = load i8*, i8** %streamBuffer6, align 8
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 65496, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @CloseSceneInformation() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %tobool = icmp ne %struct.Bitstream* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %1, i32 0, i32 9
  %2 = load i8*, i8** %streamBuffer, align 8
  call void @free(i8* %2) #3
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  %4 = bitcast %struct.Bitstream* %3 to i8*
  call void @free(i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @FinalizeSceneInformation() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %dest = alloca %struct.Bitstream*, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 3), align 8
  store %struct.Bitstream* %0, %struct.Bitstream** %dest, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 7
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 0), align 4
  %bitpattern = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %1, i32* %bitpattern, align 4
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 8, i32* %len, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 1), align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %3, i32* %value1, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call1 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %4)
  %5 = load i32, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 1), align 4
  %cmp = icmp sgt i32 %5, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 2), align 4
  %bitpattern2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %6, i32* %bitpattern2, align 4
  %len3 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 8, i32* %len3, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call4 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %8, i32 0, i32 1
  %9 = load i32, i32* %bits_to_go, align 4
  %cmp5 = icmp ne i32 %9, 8
  br i1 %cmp5, label %if.then.6, label %if.end.25

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %10, i32 0, i32 2
  %11 = load i8, i8* %byte_buf, align 1
  %conv = zext i8 %11 to i32
  %shl = shl i32 %conv, 1
  %conv7 = trunc i32 %shl to i8
  store i8 %conv7, i8* %byte_buf, align 1
  %12 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf8 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %12, i32 0, i32 2
  %13 = load i8, i8* %byte_buf8, align 1
  %conv9 = zext i8 %13 to i32
  %or = or i32 %conv9, 1
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %byte_buf8, align 1
  %14 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go11 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 1
  %15 = load i32, i32* %bits_to_go11, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %bits_to_go11, align 4
  %16 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go12 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %16, i32 0, i32 1
  %17 = load i32, i32* %bits_to_go12, align 4
  %cmp13 = icmp ne i32 %17, 0
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.then.6
  %18 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go16 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %18, i32 0, i32 1
  %19 = load i32, i32* %bits_to_go16, align 4
  %20 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf17 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %20, i32 0, i32 2
  %21 = load i8, i8* %byte_buf17, align 1
  %conv18 = zext i8 %21 to i32
  %shl19 = shl i32 %conv18, %19
  %conv20 = trunc i32 %shl19 to i8
  store i8 %conv20, i8* %byte_buf17, align 1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %if.then.6
  %22 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go22 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %22, i32 0, i32 1
  store i32 8, i32* %bits_to_go22, align 4
  %23 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf23 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %23, i32 0, i32 2
  %24 = load i8, i8* %byte_buf23, align 1
  %25 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %25, i32 0, i32 0
  %26 = load i32, i32* %byte_pos, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %byte_pos, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %27, i32 0, i32 9
  %28 = load i8*, i8** %streamBuffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %idxprom
  store i8 %24, i8* %arrayidx, align 1
  %29 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf24 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %29, i32 0, i32 2
  store i8 0, i8* %byte_buf24, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.21, %if.end
  %30 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos26 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %30, i32 0, i32 0
  %31 = load i32, i32* %byte_pos26, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 4), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UpdateSceneInformation(i32 %HasSceneInformation, i32 %sceneID, i32 %sceneTransType, i32 %secondSceneID) #0 {
entry:
  %HasSceneInformation.addr = alloca i32, align 4
  %sceneID.addr = alloca i32, align 4
  %sceneTransType.addr = alloca i32, align 4
  %secondSceneID.addr = alloca i32, align 4
  store i32 %HasSceneInformation, i32* %HasSceneInformation.addr, align 4
  store i32 %sceneID, i32* %sceneID.addr, align 4
  store i32 %sceneTransType, i32* %sceneTransType.addr, align 4
  store i32 %secondSceneID, i32* %secondSceneID.addr, align 4
  %0 = load i32, i32* %HasSceneInformation.addr, align 4
  store i32 %0, i32* @seiHasSceneInformation, align 4
  %1 = load i32, i32* %sceneID.addr, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 0), align 4
  %2 = load i32, i32* %sceneTransType.addr, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 1), align 4
  %3 = load i32, i32* %sceneTransType.addr, align 4
  %cmp = icmp sgt i32 %3, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %secondSceneID.addr, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.scene_information_struct, %struct.scene_information_struct* @seiSceneInformation, i32 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitPanScanRectInfo() #0 {
entry:
  %call = call noalias i8* @malloc(i64 48) #3
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %cmp = icmp eq %struct.Bitstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 65496) #3
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 9
  %4 = load i8*, i8** %streamBuffer2, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  call void @ClearPanScanRectInfoPayload()
  store i32 0, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 4), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ClearPanScanRectInfoPayload() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i32 0, i32 9
  %1 = load i8*, i8** %streamBuffer, align 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  store i32 0, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 6), align 4
  store i32 1, i32* @seiHasPanScanRectInfo, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UpdatePanScanRectInfo() #0 {
entry:
  store i32 3, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 0), align 4
  store i32 10, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 1), align 4
  store i32 40, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 2), align 4
  store i32 20, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 3), align 4
  store i32 32, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 4), align 4
  store i32 1, i32* @seiHasPanScanRectInfo, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @FinalizePanScanRectInfo() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %dest = alloca %struct.Bitstream*, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  store %struct.Bitstream* %0, %struct.Bitstream** %dest, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 7
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 0), align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %1, i32* %value1, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 1), align 4
  %value11 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %3, i32* %value11, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call2 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %4)
  %5 = load i32, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 2), align 4
  %value13 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %5, i32* %value13, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call4 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %6)
  %7 = load i32, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 3), align 4
  %value15 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %7, i32* %value15, align 4
  %8 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call6 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %8)
  %9 = load i32, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 4), align 4
  %value17 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %9, i32* %value17, align 4
  %10 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call8 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %10)
  %11 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %11, i32 0, i32 1
  %12 = load i32, i32* %bits_to_go, align 4
  %cmp = icmp ne i32 %12, 8
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %13 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %13, i32 0, i32 2
  %14 = load i8, i8* %byte_buf, align 1
  %conv = zext i8 %14 to i32
  %shl = shl i32 %conv, 1
  %conv9 = trunc i32 %shl to i8
  store i8 %conv9, i8* %byte_buf, align 1
  %15 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf10 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %15, i32 0, i32 2
  %16 = load i8, i8* %byte_buf10, align 1
  %conv11 = zext i8 %16 to i32
  %or = or i32 %conv11, 1
  %conv12 = trunc i32 %or to i8
  store i8 %conv12, i8* %byte_buf10, align 1
  %17 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go13 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 1
  %18 = load i32, i32* %bits_to_go13, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %bits_to_go13, align 4
  %19 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go14 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %19, i32 0, i32 1
  %20 = load i32, i32* %bits_to_go14, align 4
  %cmp15 = icmp ne i32 %20, 0
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %21 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go18 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %21, i32 0, i32 1
  %22 = load i32, i32* %bits_to_go18, align 4
  %23 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf19 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %23, i32 0, i32 2
  %24 = load i8, i8* %byte_buf19, align 1
  %conv20 = zext i8 %24 to i32
  %shl21 = shl i32 %conv20, %22
  %conv22 = trunc i32 %shl21 to i8
  store i8 %conv22, i8* %byte_buf19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  %25 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go23 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %25, i32 0, i32 1
  store i32 8, i32* %bits_to_go23, align 4
  %26 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf24 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %26, i32 0, i32 2
  %27 = load i8, i8* %byte_buf24, align 1
  %28 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %28, i32 0, i32 0
  %29 = load i32, i32* %byte_pos, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %byte_pos, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %30, i32 0, i32 9
  %31 = load i8*, i8** %streamBuffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  store i8 %27, i8* %arrayidx, align 1
  %32 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf25 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %32, i32 0, i32 2
  store i8 0, i8* %byte_buf25, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %entry
  %33 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos27 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %33, i32 0, i32 0
  %34 = load i32, i32* %byte_pos27, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 6), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ClosePanScanRectInfo() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %tobool = icmp ne %struct.Bitstream* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %1, i32 0, i32 9
  %2 = load i8*, i8** %streamBuffer, align 8
  call void @free(i8* %2) #3
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  %4 = bitcast %struct.Bitstream* %3 to i8*
  call void @free(i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct, %struct.panscanrect_information_struct* @seiPanScanRectInfo, i32 0, i32 5), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitUser_data_unregistered() #0 {
entry:
  %call = call noalias i8* @malloc(i64 48) #3
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %cmp = icmp eq %struct.Bitstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 65496) #3
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 9
  %4 = load i8*, i8** %streamBuffer2, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %call6 = call noalias i8* @malloc(i64 65496) #3
  store i8* %call6, i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 0), align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 0), align 8
  %cmp7 = icmp eq i8* %5, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  call void @ClearUser_data_unregistered()
  ret void
}

; Function Attrs: nounwind uwtable
define void @ClearUser_data_unregistered() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i32 0, i32 9
  %1 = load i8*, i8** %streamBuffer, align 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  store i32 0, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 3), align 4
  %5 = load i8*, i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 0), align 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 65496, i32 1, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 1), align 4
  store i32 1, i32* @seiHasUser_data_unregistered_info, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UpdateUser_data_unregistered() #0 {
entry:
  %i = alloca i32, align 4
  %temp_data = alloca i32, align 4
  %total_byte = alloca i32, align 4
  store i32 7, i32* %total_byte, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %total_byte, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 4
  store i32 %mul, i32* %temp_data, align 4
  %3 = load i32, i32* %temp_data, align 4
  %call = call i32 @iClip3(i32 0, i32 255, i32 %3)
  %conv = trunc i32 %call to i8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %total_byte, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 1), align 4
  ret void
}

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

; Function Attrs: nounwind uwtable
define void @FinalizeUser_data_unregistered() #0 {
entry:
  %i = alloca i32, align 4
  %sym = alloca %struct.syntaxelement, align 8
  %dest = alloca %struct.Bitstream*, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  store %struct.Bitstream* %0, %struct.Bitstream** %dest, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 7
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %bitpattern = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %conv, i32* %bitpattern, align 4
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 8, i32* %len, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %8, i32 0, i32 1
  %9 = load i32, i32* %bits_to_go, align 4
  %cmp1 = icmp ne i32 %9, 8
  br i1 %cmp1, label %if.then, label %if.end.24

if.then:                                          ; preds = %for.end
  %10 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %10, i32 0, i32 2
  %11 = load i8, i8* %byte_buf, align 1
  %conv3 = zext i8 %11 to i32
  %shl = shl i32 %conv3, 1
  %conv4 = trunc i32 %shl to i8
  store i8 %conv4, i8* %byte_buf, align 1
  %12 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf5 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %12, i32 0, i32 2
  %13 = load i8, i8* %byte_buf5, align 1
  %conv6 = zext i8 %13 to i32
  %or = or i32 %conv6, 1
  %conv7 = trunc i32 %or to i8
  store i8 %conv7, i8* %byte_buf5, align 1
  %14 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go8 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 1
  %15 = load i32, i32* %bits_to_go8, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %bits_to_go8, align 4
  %16 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go9 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %16, i32 0, i32 1
  %17 = load i32, i32* %bits_to_go9, align 4
  %cmp10 = icmp ne i32 %17, 0
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %18 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go13 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %18, i32 0, i32 1
  %19 = load i32, i32* %bits_to_go13, align 4
  %20 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf14 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %20, i32 0, i32 2
  %21 = load i8, i8* %byte_buf14, align 1
  %conv15 = zext i8 %21 to i32
  %shl16 = shl i32 %conv15, %19
  %conv17 = trunc i32 %shl16 to i8
  store i8 %conv17, i8* %byte_buf14, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %22 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go18 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %22, i32 0, i32 1
  store i32 8, i32* %bits_to_go18, align 4
  %23 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf19 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %23, i32 0, i32 2
  %24 = load i8, i8* %byte_buf19, align 1
  %25 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %25, i32 0, i32 0
  %26 = load i32, i32* %byte_pos, align 4
  %inc20 = add nsw i32 %26, 1
  store i32 %inc20, i32* %byte_pos, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %27, i32 0, i32 9
  %28 = load i8*, i8** %streamBuffer, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %28, i64 %idxprom21
  store i8 %24, i8* %arrayidx22, align 1
  %29 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf23 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %29, i32 0, i32 2
  store i8 0, i8* %byte_buf23, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %for.end
  %30 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos25 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %30, i32 0, i32 0
  %31 = load i32, i32* %byte_pos25, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 3), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @CloseUser_data_unregistered() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %tobool = icmp ne %struct.Bitstream* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %1, i32 0, i32 9
  %2 = load i8*, i8** %streamBuffer, align 8
  call void @free(i8* %2) #3
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %4 = bitcast %struct.Bitstream* %3 to i8*
  call void @free(i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 2), align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 0), align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load i8*, i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i32 0, i32 0), align 8
  call void @free(i8* %6) #3
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitUser_data_registered_itu_t_t35() #0 {
entry:
  %call = call noalias i8* @malloc(i64 48) #3
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %cmp = icmp eq %struct.Bitstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 65496) #3
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 9
  %4 = load i8*, i8** %streamBuffer2, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %call6 = call noalias i8* @malloc(i64 65496) #3
  store i8* %call6, i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 0), align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %cmp7 = icmp eq %struct.Bitstream* %5, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  call void @no_mem_exit(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  call void @ClearUser_data_registered_itu_t_t35()
  ret void
}

; Function Attrs: nounwind uwtable
define void @ClearUser_data_registered_itu_t_t35() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i32 0, i32 9
  %1 = load i8*, i8** %streamBuffer, align 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 5), align 4
  %5 = load i8*, i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 0), align 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 65496, i32 1, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 3), align 4
  store i32 1, i32* @seiHasUser_data_registered_itu_t_t35_info, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UpdateUser_data_registered_itu_t_t35() #0 {
entry:
  %i = alloca i32, align 4
  %temp_data = alloca i32, align 4
  %total_byte = alloca i32, align 4
  %country_code = alloca i32, align 4
  store i32 82, i32* %country_code, align 4
  %0 = load i32, i32* %country_code, align 4
  %cmp = icmp slt i32 %0, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %country_code, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 2), align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 255, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 2), align 4
  %2 = load i32, i32* %country_code, align 4
  %sub = sub nsw i32 %2, 255
  store i32 %sub, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 3), align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 7, i32* %total_byte, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %total_byte, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %5, 3
  store i32 %mul, i32* %temp_data, align 4
  %6 = load i32, i32* %temp_data, align 4
  %call = call i32 @iClip3(i32 0, i32 255, i32 %6)
  %conv = trunc i32 %call to i8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8*, i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %total_byte, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @FinalizeUser_data_registered_itu_t_t35() #0 {
entry:
  %i = alloca i32, align 4
  %sym = alloca %struct.syntaxelement, align 8
  %dest = alloca %struct.Bitstream*, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  store %struct.Bitstream* %0, %struct.Bitstream** %dest, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 7
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 2), align 4
  %bitpattern = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %1, i32* %bitpattern, align 4
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 8, i32* %len, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %3, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 3), align 4
  %bitpattern1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %4, i32* %bitpattern1, align 4
  %len2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 8, i32* %len2, align 4
  %5 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call3 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 1), align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %bitpattern5 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 5
  store i32 %conv, i32* %bitpattern5, align 4
  %len6 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  store i32 8, i32* %len6, align 4
  %11 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %call7 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %13, i32 0, i32 1
  %14 = load i32, i32* %bits_to_go, align 4
  %cmp8 = icmp ne i32 %14, 8
  br i1 %cmp8, label %if.then.10, label %if.end.33

if.then.10:                                       ; preds = %for.end
  %15 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %15, i32 0, i32 2
  %16 = load i8, i8* %byte_buf, align 1
  %conv11 = zext i8 %16 to i32
  %shl = shl i32 %conv11, 1
  %conv12 = trunc i32 %shl to i8
  store i8 %conv12, i8* %byte_buf, align 1
  %17 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf13 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 2
  %18 = load i8, i8* %byte_buf13, align 1
  %conv14 = zext i8 %18 to i32
  %or = or i32 %conv14, 1
  %conv15 = trunc i32 %or to i8
  store i8 %conv15, i8* %byte_buf13, align 1
  %19 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go16 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %19, i32 0, i32 1
  %20 = load i32, i32* %bits_to_go16, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %bits_to_go16, align 4
  %21 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go17 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %21, i32 0, i32 1
  %22 = load i32, i32* %bits_to_go17, align 4
  %cmp18 = icmp ne i32 %22, 0
  br i1 %cmp18, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.then.10
  %23 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go21 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %23, i32 0, i32 1
  %24 = load i32, i32* %bits_to_go21, align 4
  %25 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf22 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %25, i32 0, i32 2
  %26 = load i8, i8* %byte_buf22, align 1
  %conv23 = zext i8 %26 to i32
  %shl24 = shl i32 %conv23, %24
  %conv25 = trunc i32 %shl24 to i8
  store i8 %conv25, i8* %byte_buf22, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.20, %if.then.10
  %27 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %bits_to_go27 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %27, i32 0, i32 1
  store i32 8, i32* %bits_to_go27, align 4
  %28 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf28 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %28, i32 0, i32 2
  %29 = load i8, i8* %byte_buf28, align 1
  %30 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %30, i32 0, i32 0
  %31 = load i32, i32* %byte_pos, align 4
  %inc29 = add nsw i32 %31, 1
  store i32 %inc29, i32* %byte_pos, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %32, i32 0, i32 9
  %33 = load i8*, i8** %streamBuffer, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %33, i64 %idxprom30
  store i8 %29, i8* %arrayidx31, align 1
  %34 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_buf32 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 2
  store i8 0, i8* %byte_buf32, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.26, %for.end
  %35 = load %struct.Bitstream*, %struct.Bitstream** %dest, align 8
  %byte_pos34 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %35, i32 0, i32 0
  %36 = load i32, i32* %byte_pos34, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 5), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @CloseUser_data_registered_itu_t_t35() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %tobool = icmp ne %struct.Bitstream* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %1, i32 0, i32 9
  %2 = load i8*, i8** %streamBuffer, align 8
  call void @free(i8* %2) #3
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %4 = bitcast %struct.Bitstream* %3 to i8*
  call void @free(i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 0), align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load i8*, i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i32 0, i32 0), align 8
  call void @free(i8* %6) #3
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitRandomAccess() #0 {
entry:
  %call = call noalias i8* @malloc(i64 48) #3
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %cmp = icmp eq %struct.Bitstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 65496) #3
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 9
  %4 = load i8*, i8** %streamBuffer2, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  call void @ClearRandomAccess()
  ret void
}

; Function Attrs: nounwind uwtable
define void @ClearRandomAccess() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i32 0, i32 9
  %1 = load i8*, i8** %streamBuffer, align 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  store i32 0, i32* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 5), align 4
  store i32 0, i32* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 0), align 4
  store i8 0, i8* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 2), align 1
  store i8 0, i8* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 1), align 1
  store i32 0, i32* @seiHasRecoveryPoint_info, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UpdateRandomAccess() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 0), align 4
  store i8 1, i8* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 1), align 1
  store i8 0, i8* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 2), align 1
  store i32 1, i32* @seiHasRecoveryPoint_info, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @seiHasRecoveryPoint_info, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @FinalizeRandomAccess() #0 {
entry:
  %bitstream = alloca %struct.Bitstream*, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  store %struct.Bitstream* %0, %struct.Bitstream** %bitstream, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 0), align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i32 %1, %struct.Bitstream* %2)
  %3 = load i8, i8* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 1), align 1
  %conv = zext i8 %3 to i32
  %4 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call1 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i32 %conv, %struct.Bitstream* %4)
  %5 = load i8, i8* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 2), align 1
  %conv2 = zext i8 %5 to i32
  %6 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call3 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i32 %conv2, %struct.Bitstream* %6)
  %7 = load i8, i8* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 3), align 1
  %conv4 = zext i8 %7 to i32
  %8 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call5 = call i32 @u_v(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i32 %conv4, %struct.Bitstream* %8)
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %9, i32 0, i32 1
  %10 = load i32, i32* %bits_to_go, align 4
  %cmp = icmp ne i32 %10, 8
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %11 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %11, i32 0, i32 2
  %12 = load i8, i8* %byte_buf, align 1
  %conv7 = zext i8 %12 to i32
  %shl = shl i32 %conv7, 1
  %conv8 = trunc i32 %shl to i8
  store i8 %conv8, i8* %byte_buf, align 1
  %13 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_buf9 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %13, i32 0, i32 2
  %14 = load i8, i8* %byte_buf9, align 1
  %conv10 = zext i8 %14 to i32
  %or = or i32 %conv10, 1
  %conv11 = trunc i32 %or to i8
  store i8 %conv11, i8* %byte_buf9, align 1
  %15 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %bits_to_go12 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %15, i32 0, i32 1
  %16 = load i32, i32* %bits_to_go12, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %bits_to_go12, align 4
  %17 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %bits_to_go13 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 1
  %18 = load i32, i32* %bits_to_go13, align 4
  %cmp14 = icmp ne i32 %18, 0
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then
  %19 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %bits_to_go17 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %19, i32 0, i32 1
  %20 = load i32, i32* %bits_to_go17, align 4
  %21 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_buf18 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %21, i32 0, i32 2
  %22 = load i8, i8* %byte_buf18, align 1
  %conv19 = zext i8 %22 to i32
  %shl20 = shl i32 %conv19, %20
  %conv21 = trunc i32 %shl20 to i8
  store i8 %conv21, i8* %byte_buf18, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then
  %23 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %bits_to_go22 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %23, i32 0, i32 1
  store i32 8, i32* %bits_to_go22, align 4
  %24 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_buf23 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %24, i32 0, i32 2
  %25 = load i8, i8* %byte_buf23, align 1
  %26 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %26, i32 0, i32 0
  %27 = load i32, i32* %byte_pos, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %byte_pos, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %28, i32 0, i32 9
  %29 = load i8*, i8** %streamBuffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 %idxprom
  store i8 %25, i8* %arrayidx, align 1
  %30 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_buf24 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %30, i32 0, i32 2
  store i8 0, i8* %byte_buf24, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  %31 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos26 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %31, i32 0, i32 0
  %32 = load i32, i32* %byte_pos26, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 5), align 4
  ret void
}

declare i32 @ue_v(i8*, i32, %struct.Bitstream*) #2

declare i32 @u_1(i8*, i32, %struct.Bitstream*) #2

declare i32 @u_v(i32, i8*, i32, %struct.Bitstream*) #2

; Function Attrs: nounwind uwtable
define void @CloseRandomAccess() #0 {
entry:
  %0 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %tobool = icmp ne %struct.Bitstream* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %1, i32 0, i32 9
  %2 = load i8*, i8** %streamBuffer, align 8
  call void @free(i8* %2) #3
  %3 = load %struct.Bitstream*, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  %4 = bitcast %struct.Bitstream* %3 to i8*
  call void @free(i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.recovery_point_information_struct, %struct.recovery_point_information_struct* @seiRecoveryPoint, i32 0, i32 4), align 8
  ret void
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
