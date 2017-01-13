; ModuleID = './MultiSource.Applications.JM/46.lencod.me_fullsearch.bc'
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SubImageContainer = type { i16****, [2 x i16****] }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@img = external global %struct.ImageParameters*, align 8
@listX = external global [6 x %struct.storable_picture**], align 16
@input = external global %struct.InputParameters*, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@ref_pic_sub = external global %struct.SubImageContainer, align 8
@img_width = external global i16, align 2
@img_height = external global i16, align 2
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
@ref_access_method = external global i32, align 4
@spiral_search_x = external global i16*, align 8
@spiral_search_y = external global i16*, align 8
@mvbits = external global i32*, align 8
@computeUniPred = external global [6 x i32 (i16*, i32, i32, i32, i32, i32)*], align 16
@ref_pic1_sub = external global %struct.SubImageContainer, align 8
@ref_pic2_sub = external global %struct.SubImageContainer, align 8
@wbp_weight = common global i32**** null, align 8
@weight1 = external global i16, align 2
@weight2 = external global i16, align 2
@offsetBi = external global i16, align 2
@computeBiPred2 = external global [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], align 16
@computeBiPred = external global i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, align 8
@luma_log_weight_denom = common global i32 0, align 4
@computeBiPred1 = external global [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], align 16
@weight1_cr = external global [2 x i16], align 2
@weight2_cr = external global [2 x i16], align 2
@offsetBi_cr = external global [2 x i16], align 2
@chroma_log_weight_denom = common global i32 0, align 4
@bipred2_access_method = external global i32, align 4
@bipred1_access_method = external global i32, align 4
@start_me_refinement_hp = common global i32 0, align 4
@spiral_hpel_search_x = external global i16*, align 8
@spiral_hpel_search_y = external global i16*, align 8
@start_me_refinement_qp = common global i32 0, align 4
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
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
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
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8

; Function Attrs: nounwind uwtable
define i32 @FullPelBlockMotionSearch(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i32 %search_range, i32 %min_mcost, i32 %lambda_factor) #0 {
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
  %cand_x = alloca i32, align 4
  %cand_y = alloca i32, align 4
  %mcost = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %ref_picture = alloca %struct.storable_picture*, align 8
  %best_pos = alloca i32, align 4
  %max_pos = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %pred_x = alloca i32, align 4
  %pred_y = alloca i32, align 4
  %center_x = alloca i32, align 4
  %center_y = alloca i32, align 4
  %check_for_00 = alloca i32, align 4
  %apply_weights = alloca i32, align 4
  %dist_method = alloca i32, align 4
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
  %5 = load i16, i16* %ref.addr, align 2
  %idxprom2 = sext i16 %5 to i64
  %6 = load i32, i32* %list.addr, align 4
  %7 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 %6, %7
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom3
  %8 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %8, i64 %idxprom2
  %9 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx5, align 8
  store %struct.storable_picture* %9, %struct.storable_picture** %ref_picture, align 8
  store i32 0, i32* %best_pos, align 4
  %10 = load i32, i32* %search_range.addr, align 4
  %mul = mul nsw i32 2, %10
  %add6 = add nsw i32 %mul, 1
  %11 = load i32, i32* %search_range.addr, align 4
  %mul7 = mul nsw i32 2, %11
  %add8 = add nsw i32 %mul7, 1
  %mul9 = mul nsw i32 %add6, %add8
  store i32 %mul9, i32* %max_pos, align 4
  %12 = load i32, i32* %blocktype.addr, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 18
  %arrayidx11 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx11, i32 0, i64 1
  %14 = load i32, i32* %arrayidx12, align 4
  store i32 %14, i32* %blocksize_y, align 4
  %15 = load i32, i32* %blocktype.addr, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 18
  %arrayidx15 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size14, i32 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx15, i32 0, i64 0
  %17 = load i32, i32* %arrayidx16, align 4
  store i32 %17, i32* %blocksize_x, align 4
  %18 = load i32, i32* %pic_pix_x.addr, align 4
  %shl = shl i32 %18, 2
  %19 = load i16, i16* %pred_mv_x.addr, align 2
  %conv = sext i16 %19 to i32
  %add17 = add nsw i32 %shl, %conv
  store i32 %add17, i32* %pred_x, align 4
  %20 = load i32, i32* %pic_pix_y.addr, align 4
  %shl18 = shl i32 %20, 2
  %21 = load i16, i16* %pred_mv_y.addr, align 2
  %conv19 = sext i16 %21 to i32
  %add20 = add nsw i32 %shl18, %conv19
  store i32 %add20, i32* %pred_y, align 4
  %22 = load i32, i32* %pic_pix_x.addr, align 4
  %23 = load i16*, i16** %mv_x.addr, align 8
  %24 = load i16, i16* %23, align 2
  %conv21 = sext i16 %24 to i32
  %add22 = add nsw i32 %22, %conv21
  store i32 %add22, i32* %center_x, align 4
  %25 = load i32, i32* %pic_pix_y.addr, align 4
  %26 = load i16*, i16** %mv_y.addr, align 8
  %27 = load i16, i16* %26, align 2
  %conv23 = sext i16 %27 to i32
  %add24 = add nsw i32 %25, %conv23
  store i32 %add24, i32* %center_y, align 4
  %28 = load i32, i32* %blocktype.addr, align 4
  %cmp = icmp eq i32 %28, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 113
  %30 = load i32, i32* %rdopt, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %land.end, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 5
  %32 = load i32, i32* %type, align 4
  %cmp27 = icmp ne i32 %32, 1
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.26
  %33 = load i16, i16* %ref.addr, align 2
  %conv29 = sext i16 %33 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.26, %land.lhs.true, %entry
  %34 = phi i1 [ false, %land.lhs.true.26 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp30, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  store i32 %land.ext, i32* %check_for_00, align 4
  %35 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %35, i32 0, i32 19
  %36 = load i32, i32* %weighted_pred_flag, align 4
  %tobool32 = icmp ne i32 %36, 0
  br i1 %tobool32, label %land.lhs.true.33, label %lor.lhs.false.40

land.lhs.true.33:                                 ; preds = %land.end
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 5
  %38 = load i32, i32* %type34, align 4
  %cmp35 = icmp eq i32 %38, 0
  br i1 %cmp35, label %land.rhs.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.33
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 5
  %40 = load i32, i32* %type37, align 4
  %cmp38 = icmp eq i32 %40, 3
  br i1 %cmp38, label %land.rhs.46, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false, %land.end
  %41 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %41, i32 0, i32 20
  %42 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool41 = icmp ne i32 %42, 0
  br i1 %tobool41, label %land.lhs.true.42, label %land.end.48

land.lhs.true.42:                                 ; preds = %lor.lhs.false.40
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 5
  %44 = load i32, i32* %type43, align 4
  %cmp44 = icmp eq i32 %44, 1
  br i1 %cmp44, label %land.rhs.46, label %land.end.48

land.rhs.46:                                      ; preds = %land.lhs.true.42, %lor.lhs.false, %land.lhs.true.33
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 61
  %46 = load i32, i32* %UseWeightedReferenceME, align 4
  %tobool47 = icmp ne i32 %46, 0
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.46, %land.lhs.true.42, %lor.lhs.false.40
  %47 = phi i1 [ false, %land.lhs.true.42 ], [ false, %lor.lhs.false.40 ], [ %tobool47, %land.rhs.46 ]
  %land.ext49 = zext i1 %47 to i32
  store i32 %land.ext49, i32* %apply_weights, align 4
  %48 = load i32, i32* %apply_weights, align 4
  %mul50 = mul nsw i32 3, %48
  %add51 = add nsw i32 0, %mul50
  store i32 %add51, i32* %dist_method, align 4
  %49 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 30
  %50 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %50, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %51 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 18
  %52 = load i32, i32* %size_x, align 4
  %conv52 = trunc i32 %52 to i16
  store i16 %conv52, i16* @img_width, align 2
  %53 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 19
  %54 = load i32, i32* %size_y, align 4
  %conv53 = trunc i32 %54 to i16
  store i16 %conv53, i16* @img_height, align 2
  %55 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %55, i32 0, i32 22
  %56 = load i32, i32* %size_x_pad, align 4
  store i32 %56, i32* @width_pad, align 4
  %57 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 23
  %58 = load i32, i32* %size_y_pad, align 4
  store i32 %58, i32* @height_pad, align 4
  %59 = load i32, i32* %apply_weights, align 4
  %tobool54 = icmp ne i32 %59, 0
  br i1 %tobool54, label %if.then, label %if.end

if.then:                                          ; preds = %land.end.48
  %60 = load i16, i16* %ref.addr, align 2
  %idxprom55 = sext i16 %60 to i64
  %61 = load i32, i32* %list.addr, align 4
  %62 = load i32, i32* %list_offset, align 4
  %add56 = add nsw i32 %61, %62
  %idxprom57 = sext i32 %add56 to i64
  %63 = load i32***, i32**** @wp_weight, align 8
  %arrayidx58 = getelementptr inbounds i32**, i32*** %63, i64 %idxprom57
  %64 = load i32**, i32*** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i32*, i32** %64, i64 %idxprom55
  %65 = load i32*, i32** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %65, i64 0
  %66 = load i32, i32* %arrayidx60, align 4
  store i32 %66, i32* @weight_luma, align 4
  %67 = load i16, i16* %ref.addr, align 2
  %idxprom61 = sext i16 %67 to i64
  %68 = load i32, i32* %list.addr, align 4
  %69 = load i32, i32* %list_offset, align 4
  %add62 = add nsw i32 %68, %69
  %idxprom63 = sext i32 %add62 to i64
  %70 = load i32***, i32**** @wp_offset, align 8
  %arrayidx64 = getelementptr inbounds i32**, i32*** %70, i64 %idxprom63
  %71 = load i32**, i32*** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i32*, i32** %71, i64 %idxprom61
  %72 = load i32*, i32** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx66, align 4
  store i32 %73, i32* @offset_luma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.48
  %74 = load i32, i32* @ChromaMEEnable, align 4
  %tobool67 = icmp ne i32 %74, 0
  br i1 %tobool67, label %if.then.68, label %if.end.99

if.then.68:                                       ; preds = %if.end
  %75 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 32
  %76 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx69 = getelementptr inbounds i16****, i16***** %76, i64 0
  %77 = load i16****, i16***** %arrayidx69, align 8
  store i16**** %77, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 0), align 8
  %78 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub70 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %78, i32 0, i32 32
  %79 = load i16*****, i16****** %imgUV_sub70, align 8
  %arrayidx71 = getelementptr inbounds i16****, i16***** %79, i64 1
  %80 = load i16****, i16***** %arrayidx71, align 8
  store i16**** %80, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 1), align 8
  %81 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %81, i32 0, i32 24
  %82 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %82, i32* @width_pad_cr, align 4
  %83 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %83, i32 0, i32 25
  %84 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %84, i32* @height_pad_cr, align 4
  %85 = load i32, i32* %apply_weights, align 4
  %tobool72 = icmp ne i32 %85, 0
  br i1 %tobool72, label %if.then.73, label %if.end.98

if.then.73:                                       ; preds = %if.then.68
  %86 = load i16, i16* %ref.addr, align 2
  %idxprom74 = sext i16 %86 to i64
  %87 = load i32, i32* %list.addr, align 4
  %88 = load i32, i32* %list_offset, align 4
  %add75 = add nsw i32 %87, %88
  %idxprom76 = sext i32 %add75 to i64
  %89 = load i32***, i32**** @wp_weight, align 8
  %arrayidx77 = getelementptr inbounds i32**, i32*** %89, i64 %idxprom76
  %90 = load i32**, i32*** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i32*, i32** %90, i64 %idxprom74
  %91 = load i32*, i32** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %91, i64 1
  %92 = load i32, i32* %arrayidx79, align 4
  store i32 %92, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 0), align 4
  %93 = load i16, i16* %ref.addr, align 2
  %idxprom80 = sext i16 %93 to i64
  %94 = load i32, i32* %list.addr, align 4
  %95 = load i32, i32* %list_offset, align 4
  %add81 = add nsw i32 %94, %95
  %idxprom82 = sext i32 %add81 to i64
  %96 = load i32***, i32**** @wp_weight, align 8
  %arrayidx83 = getelementptr inbounds i32**, i32*** %96, i64 %idxprom82
  %97 = load i32**, i32*** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32*, i32** %97, i64 %idxprom80
  %98 = load i32*, i32** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %98, i64 2
  %99 = load i32, i32* %arrayidx85, align 4
  store i32 %99, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 1), align 4
  %100 = load i16, i16* %ref.addr, align 2
  %idxprom86 = sext i16 %100 to i64
  %101 = load i32, i32* %list.addr, align 4
  %102 = load i32, i32* %list_offset, align 4
  %add87 = add nsw i32 %101, %102
  %idxprom88 = sext i32 %add87 to i64
  %103 = load i32***, i32**** @wp_offset, align 8
  %arrayidx89 = getelementptr inbounds i32**, i32*** %103, i64 %idxprom88
  %104 = load i32**, i32*** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32*, i32** %104, i64 %idxprom86
  %105 = load i32*, i32** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %105, i64 1
  %106 = load i32, i32* %arrayidx91, align 4
  store i32 %106, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 0), align 4
  %107 = load i16, i16* %ref.addr, align 2
  %idxprom92 = sext i16 %107 to i64
  %108 = load i32, i32* %list.addr, align 4
  %109 = load i32, i32* %list_offset, align 4
  %add93 = add nsw i32 %108, %109
  %idxprom94 = sext i32 %add93 to i64
  %110 = load i32***, i32**** @wp_offset, align 8
  %arrayidx95 = getelementptr inbounds i32**, i32*** %110, i64 %idxprom94
  %111 = load i32**, i32*** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %111, i64 %idxprom92
  %112 = load i32*, i32** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %112, i64 2
  %113 = load i32, i32* %arrayidx97, align 4
  store i32 %113, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 1), align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.73, %if.then.68
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end
  %114 = load i32, i32* %center_x, align 4
  %115 = load i32, i32* %search_range.addr, align 4
  %cmp100 = icmp sgt i32 %114, %115
  br i1 %cmp100, label %land.lhs.true.102, label %if.else

land.lhs.true.102:                                ; preds = %if.end.99
  %116 = load i32, i32* %center_x, align 4
  %117 = load i16, i16* @img_width, align 2
  %conv103 = sext i16 %117 to i32
  %sub = sub nsw i32 %conv103, 1
  %118 = load i32, i32* %search_range.addr, align 4
  %sub104 = sub nsw i32 %sub, %118
  %119 = load i32, i32* %blocksize_x, align 4
  %sub105 = sub nsw i32 %sub104, %119
  %cmp106 = icmp slt i32 %116, %sub105
  br i1 %cmp106, label %land.lhs.true.108, label %if.else

land.lhs.true.108:                                ; preds = %land.lhs.true.102
  %120 = load i32, i32* %center_y, align 4
  %121 = load i32, i32* %search_range.addr, align 4
  %cmp109 = icmp sgt i32 %120, %121
  br i1 %cmp109, label %land.lhs.true.111, label %if.else

land.lhs.true.111:                                ; preds = %land.lhs.true.108
  %122 = load i32, i32* %center_y, align 4
  %123 = load i16, i16* @img_height, align 2
  %conv112 = sext i16 %123 to i32
  %sub113 = sub nsw i32 %conv112, 1
  %124 = load i32, i32* %search_range.addr, align 4
  %sub114 = sub nsw i32 %sub113, %124
  %125 = load i32, i32* %blocksize_y, align 4
  %sub115 = sub nsw i32 %sub114, %125
  %cmp116 = icmp slt i32 %122, %sub115
  br i1 %cmp116, label %if.then.118, label %if.else

if.then.118:                                      ; preds = %land.lhs.true.111
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.119

if.else:                                          ; preds = %land.lhs.true.111, %land.lhs.true.108, %land.lhs.true.102, %if.end.99
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.else, %if.then.118
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.119
  %126 = load i32, i32* %pos, align 4
  %127 = load i32, i32* %max_pos, align 4
  %cmp120 = icmp slt i32 %126, %127
  br i1 %cmp120, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %128 = load i32, i32* %center_x, align 4
  %129 = load i32, i32* %pos, align 4
  %idxprom122 = sext i32 %129 to i64
  %130 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx123 = getelementptr inbounds i16, i16* %130, i64 %idxprom122
  %131 = load i16, i16* %arrayidx123, align 2
  %conv124 = sext i16 %131 to i32
  %add125 = add nsw i32 %128, %conv124
  %shl126 = shl i32 %add125, 2
  store i32 %shl126, i32* %cand_x, align 4
  %132 = load i32, i32* %center_y, align 4
  %133 = load i32, i32* %pos, align 4
  %idxprom127 = sext i32 %133 to i64
  %134 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx128 = getelementptr inbounds i16, i16* %134, i64 %idxprom127
  %135 = load i16, i16* %arrayidx128, align 2
  %conv129 = sext i16 %135 to i32
  %add130 = add nsw i32 %132, %conv129
  %shl131 = shl i32 %add130, 2
  store i32 %shl131, i32* %cand_y, align 4
  %136 = load i32, i32* %lambda_factor.addr, align 4
  %137 = load i32, i32* %cand_x, align 4
  %138 = load i32, i32* %pred_x, align 4
  %sub132 = sub nsw i32 %137, %138
  %idxprom133 = sext i32 %sub132 to i64
  %139 = load i32*, i32** @mvbits, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %139, i64 %idxprom133
  %140 = load i32, i32* %arrayidx134, align 4
  %141 = load i32, i32* %cand_y, align 4
  %142 = load i32, i32* %pred_y, align 4
  %sub135 = sub nsw i32 %141, %142
  %idxprom136 = sext i32 %sub135 to i64
  %143 = load i32*, i32** @mvbits, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %143, i64 %idxprom136
  %144 = load i32, i32* %arrayidx137, align 4
  %add138 = add nsw i32 %140, %144
  %mul139 = mul nsw i32 %136, %add138
  %shr = ashr i32 %mul139, 16
  store i32 %shr, i32* %mcost, align 4
  %145 = load i32, i32* %check_for_00, align 4
  %tobool140 = icmp ne i32 %145, 0
  br i1 %tobool140, label %land.lhs.true.141, label %if.end.151

land.lhs.true.141:                                ; preds = %for.body
  %146 = load i32, i32* %cand_x, align 4
  %147 = load i32, i32* %pic_pix_x.addr, align 4
  %cmp142 = icmp eq i32 %146, %147
  br i1 %cmp142, label %land.lhs.true.144, label %if.end.151

land.lhs.true.144:                                ; preds = %land.lhs.true.141
  %148 = load i32, i32* %cand_y, align 4
  %149 = load i32, i32* %pic_pix_y.addr, align 4
  %cmp145 = icmp eq i32 %148, %149
  br i1 %cmp145, label %if.then.147, label %if.end.151

if.then.147:                                      ; preds = %land.lhs.true.144
  %150 = load i32, i32* %lambda_factor.addr, align 4
  %mul148 = mul nsw i32 %150, 16
  %shr149 = ashr i32 %mul148, 16
  %151 = load i32, i32* %mcost, align 4
  %sub150 = sub nsw i32 %151, %shr149
  store i32 %sub150, i32* %mcost, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.147, %land.lhs.true.144, %land.lhs.true.141, %for.body
  %152 = load i32, i32* %mcost, align 4
  %153 = load i32, i32* %min_mcost.addr, align 4
  %cmp152 = icmp sge i32 %152, %153
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.151
  br label %for.inc

if.end.155:                                       ; preds = %if.end.151
  %154 = load i32, i32* %dist_method, align 4
  %idxprom156 = sext i32 %154 to i64
  %arrayidx157 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom156
  %155 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx157, align 8
  %156 = load i16*, i16** %orig_pic.addr, align 8
  %157 = load i32, i32* %blocksize_y, align 4
  %158 = load i32, i32* %blocksize_x, align 4
  %159 = load i32, i32* %min_mcost.addr, align 4
  %160 = load i32, i32* %mcost, align 4
  %sub158 = sub nsw i32 %159, %160
  %161 = load i32, i32* %cand_x, align 4
  %add159 = add nsw i32 %161, 80
  %162 = load i32, i32* %cand_y, align 4
  %add160 = add nsw i32 %162, 80
  %call = call i32 %155(i16* %156, i32 %157, i32 %158, i32 %sub158, i32 %add159, i32 %add160)
  %163 = load i32, i32* %mcost, align 4
  %add161 = add nsw i32 %163, %call
  store i32 %add161, i32* %mcost, align 4
  %164 = load i32, i32* %mcost, align 4
  %165 = load i32, i32* %min_mcost.addr, align 4
  %cmp162 = icmp slt i32 %164, %165
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.155
  %166 = load i32, i32* %pos, align 4
  store i32 %166, i32* %best_pos, align 4
  %167 = load i32, i32* %mcost, align 4
  store i32 %167, i32* %min_mcost.addr, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %if.end.155
  br label %for.inc

for.inc:                                          ; preds = %if.end.165, %if.then.154
  %168 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %168, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %169 = load i32, i32* %best_pos, align 4
  %tobool166 = icmp ne i32 %169, 0
  br i1 %tobool166, label %if.then.167, label %if.end.180

if.then.167:                                      ; preds = %for.end
  %170 = load i32, i32* %best_pos, align 4
  %idxprom168 = sext i32 %170 to i64
  %171 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx169 = getelementptr inbounds i16, i16* %171, i64 %idxprom168
  %172 = load i16, i16* %arrayidx169, align 2
  %conv170 = sext i16 %172 to i32
  %173 = load i16*, i16** %mv_x.addr, align 8
  %174 = load i16, i16* %173, align 2
  %conv171 = sext i16 %174 to i32
  %add172 = add nsw i32 %conv171, %conv170
  %conv173 = trunc i32 %add172 to i16
  store i16 %conv173, i16* %173, align 2
  %175 = load i32, i32* %best_pos, align 4
  %idxprom174 = sext i32 %175 to i64
  %176 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx175 = getelementptr inbounds i16, i16* %176, i64 %idxprom174
  %177 = load i16, i16* %arrayidx175, align 2
  %conv176 = sext i16 %177 to i32
  %178 = load i16*, i16** %mv_y.addr, align 8
  %179 = load i16, i16* %178, align 2
  %conv177 = sext i16 %179 to i32
  %add178 = add nsw i32 %conv177, %conv176
  %conv179 = trunc i32 %add178 to i16
  store i16 %conv179, i16* %178, align 2
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.167, %for.end
  %180 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %180
}

; Function Attrs: nounwind uwtable
define i32 @FullPelBlockMotionBiPred(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x1, i16 signext %pred_mv_y1, i16 signext %pred_mv_x2, i16 signext %pred_mv_y2, i16* %mv_x, i16* %mv_y, i16* %s_mv_x, i16* %s_mv_y, i32 %search_range, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %orig_pic.addr = alloca i16*, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv_x1.addr = alloca i16, align 2
  %pred_mv_y1.addr = alloca i16, align 2
  %pred_mv_x2.addr = alloca i16, align 2
  %pred_mv_y2.addr = alloca i16, align 2
  %mv_x.addr = alloca i16*, align 8
  %mv_y.addr = alloca i16*, align 8
  %s_mv_x.addr = alloca i16*, align 8
  %s_mv_y.addr = alloca i16*, align 8
  %search_range.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda_factor.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %cand_x = alloca i32, align 4
  %cand_y = alloca i32, align 4
  %mcost = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %best_pos = alloca i32, align 4
  %max_pos = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %pred_x1 = alloca i32, align 4
  %pred_y1 = alloca i32, align 4
  %pred_x2 = alloca i32, align 4
  %pred_y2 = alloca i32, align 4
  %center_x = alloca i16, align 2
  %center_y = alloca i16, align 2
  %ref1_center_x = alloca i16, align 2
  %ref1_center_y = alloca i16, align 2
  %apply_weights = alloca i16, align 2
  %offset1 = alloca i16, align 2
  %offset2 = alloca i16, align 2
  %ref_picture1 = alloca %struct.storable_picture*, align 8
  %ref_picture2 = alloca %struct.storable_picture*, align 8
  store i16* %orig_pic, i16** %orig_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16 %pred_mv_x1, i16* %pred_mv_x1.addr, align 2
  store i16 %pred_mv_y1, i16* %pred_mv_y1.addr, align 2
  store i16 %pred_mv_x2, i16* %pred_mv_x2.addr, align 2
  store i16 %pred_mv_y2, i16* %pred_mv_y2.addr, align 2
  store i16* %mv_x, i16** %mv_x.addr, align 8
  store i16* %mv_y, i16** %mv_y.addr, align 8
  store i16* %s_mv_x, i16** %s_mv_x.addr, align 8
  store i16* %s_mv_y, i16** %s_mv_y.addr, align 8
  store i32 %search_range, i32* %search_range.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
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
  store i32 0, i32* %best_pos, align 4
  %5 = load i32, i32* %search_range.addr, align 4
  %mul = mul nsw i32 2, %5
  %add = add nsw i32 %mul, 1
  %6 = load i32, i32* %search_range.addr, align 4
  %mul2 = mul nsw i32 2, %6
  %add3 = add nsw i32 %mul2, 1
  %mul4 = mul nsw i32 %add, %add3
  store i32 %mul4, i32* %max_pos, align 4
  %7 = load i32, i32* %blocktype.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 18
  %arrayidx6 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 1
  %9 = load i32, i32* %arrayidx7, align 4
  store i32 %9, i32* %blocksize_y, align 4
  %10 = load i32, i32* %blocktype.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 18
  %arrayidx10 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size9, i32 0, i64 %idxprom8
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  %12 = load i32, i32* %arrayidx11, align 4
  store i32 %12, i32* %blocksize_x, align 4
  %13 = load i32, i32* %pic_pix_x.addr, align 4
  %shl = shl i32 %13, 2
  %14 = load i16, i16* %pred_mv_x1.addr, align 2
  %conv = sext i16 %14 to i32
  %add12 = add nsw i32 %shl, %conv
  store i32 %add12, i32* %pred_x1, align 4
  %15 = load i32, i32* %pic_pix_y.addr, align 4
  %shl13 = shl i32 %15, 2
  %16 = load i16, i16* %pred_mv_y1.addr, align 2
  %conv14 = sext i16 %16 to i32
  %add15 = add nsw i32 %shl13, %conv14
  store i32 %add15, i32* %pred_y1, align 4
  %17 = load i32, i32* %pic_pix_x.addr, align 4
  %shl16 = shl i32 %17, 2
  %18 = load i16, i16* %pred_mv_x2.addr, align 2
  %conv17 = sext i16 %18 to i32
  %add18 = add nsw i32 %shl16, %conv17
  store i32 %add18, i32* %pred_x2, align 4
  %19 = load i32, i32* %pic_pix_y.addr, align 4
  %shl19 = shl i32 %19, 2
  %20 = load i16, i16* %pred_mv_y2.addr, align 2
  %conv20 = sext i16 %20 to i32
  %add21 = add nsw i32 %shl19, %conv20
  store i32 %add21, i32* %pred_y2, align 4
  %21 = load i32, i32* %pic_pix_x.addr, align 4
  %22 = load i16*, i16** %mv_x.addr, align 8
  %23 = load i16, i16* %22, align 2
  %conv22 = sext i16 %23 to i32
  %add23 = add nsw i32 %21, %conv22
  %conv24 = trunc i32 %add23 to i16
  store i16 %conv24, i16* %center_x, align 2
  %24 = load i32, i32* %pic_pix_y.addr, align 4
  %25 = load i16*, i16** %mv_y.addr, align 8
  %26 = load i16, i16* %25, align 2
  %conv25 = sext i16 %26 to i32
  %add26 = add nsw i32 %24, %conv25
  %conv27 = trunc i32 %add26 to i16
  store i16 %conv27, i16* %center_y, align 2
  %27 = load i32, i32* %pic_pix_x.addr, align 4
  %28 = load i16*, i16** %s_mv_x.addr, align 8
  %29 = load i16, i16* %28, align 2
  %conv28 = sext i16 %29 to i32
  %add29 = add nsw i32 %27, %conv28
  %conv30 = trunc i32 %add29 to i16
  store i16 %conv30, i16* %ref1_center_x, align 2
  %30 = load i32, i32* %pic_pix_y.addr, align 4
  %31 = load i16*, i16** %s_mv_y.addr, align 8
  %32 = load i16, i16* %31, align 2
  %conv31 = sext i16 %32 to i32
  %add32 = add nsw i32 %30, %conv31
  %conv33 = trunc i32 %add32 to i16
  store i16 %conv33, i16* %ref1_center_y, align 2
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %33, i32 0, i32 20
  %34 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp = icmp ugt i32 %34, 0
  %conv34 = zext i1 %cmp to i32
  %conv35 = trunc i32 %conv34 to i16
  store i16 %conv35, i16* %apply_weights, align 2
  %35 = load i16, i16* %apply_weights, align 2
  %conv36 = sext i16 %35 to i32
  %tobool = icmp ne i32 %conv36, 0
  br i1 %tobool, label %cond.true, label %cond.false.51

cond.true:                                        ; preds = %entry
  %36 = load i32, i32* %list.addr, align 4
  %cmp37 = icmp eq i32 %36, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false

cond.true.39:                                     ; preds = %cond.true
  %37 = load i16, i16* %ref.addr, align 2
  %idxprom40 = sext i16 %37 to i64
  %38 = load i32, i32* %list_offset, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i32***, i32**** @wp_offset, align 8
  %arrayidx42 = getelementptr inbounds i32**, i32*** %39, i64 %idxprom41
  %40 = load i32**, i32*** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %40, i64 %idxprom40
  %41 = load i32*, i32** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %41, i64 0
  %42 = load i32, i32* %arrayidx44, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %43 = load i16, i16* %ref.addr, align 2
  %idxprom45 = sext i16 %43 to i64
  %44 = load i32, i32* %list_offset, align 4
  %add46 = add nsw i32 %44, 1
  %idxprom47 = sext i32 %add46 to i64
  %45 = load i32***, i32**** @wp_offset, align 8
  %arrayidx48 = getelementptr inbounds i32**, i32*** %45, i64 %idxprom47
  %46 = load i32**, i32*** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %46, i64 0
  %47 = load i32*, i32** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %47, i64 %idxprom45
  %48 = load i32, i32* %arrayidx50, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.39
  %cond = phi i32 [ %42, %cond.true.39 ], [ %48, %cond.false ]
  br label %cond.end.52

cond.false.51:                                    ; preds = %entry
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.end
  %cond53 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false.51 ]
  %conv54 = trunc i32 %cond53 to i16
  store i16 %conv54, i16* %offset1, align 2
  %49 = load i16, i16* %apply_weights, align 2
  %conv55 = sext i16 %49 to i32
  %tobool56 = icmp ne i32 %conv55, 0
  br i1 %tobool56, label %cond.true.57, label %cond.false.75

cond.true.57:                                     ; preds = %cond.end.52
  %50 = load i32, i32* %list.addr, align 4
  %cmp58 = icmp eq i32 %50, 0
  br i1 %cmp58, label %cond.true.60, label %cond.false.67

cond.true.60:                                     ; preds = %cond.true.57
  %51 = load i16, i16* %ref.addr, align 2
  %idxprom61 = sext i16 %51 to i64
  %52 = load i32, i32* %list_offset, align 4
  %add62 = add nsw i32 %52, 1
  %idxprom63 = sext i32 %add62 to i64
  %53 = load i32***, i32**** @wp_offset, align 8
  %arrayidx64 = getelementptr inbounds i32**, i32*** %53, i64 %idxprom63
  %54 = load i32**, i32*** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i32*, i32** %54, i64 %idxprom61
  %55 = load i32*, i32** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %55, i64 0
  %56 = load i32, i32* %arrayidx66, align 4
  br label %cond.end.73

cond.false.67:                                    ; preds = %cond.true.57
  %57 = load i16, i16* %ref.addr, align 2
  %idxprom68 = sext i16 %57 to i64
  %58 = load i32, i32* %list_offset, align 4
  %idxprom69 = sext i32 %58 to i64
  %59 = load i32***, i32**** @wp_offset, align 8
  %arrayidx70 = getelementptr inbounds i32**, i32*** %59, i64 %idxprom69
  %60 = load i32**, i32*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %60, i64 0
  %61 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %61, i64 %idxprom68
  %62 = load i32, i32* %arrayidx72, align 4
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.67, %cond.true.60
  %cond74 = phi i32 [ %56, %cond.true.60 ], [ %62, %cond.false.67 ]
  br label %cond.end.76

cond.false.75:                                    ; preds = %cond.end.52
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.end.73
  %cond77 = phi i32 [ %cond74, %cond.end.73 ], [ 0, %cond.false.75 ]
  %conv78 = trunc i32 %cond77 to i16
  store i16 %conv78, i16* %offset2, align 2
  %63 = load i16, i16* %ref.addr, align 2
  %idxprom79 = sext i16 %63 to i64
  %64 = load i32, i32* %list.addr, align 4
  %65 = load i32, i32* %list_offset, align 4
  %add80 = add nsw i32 %64, %65
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom81
  %66 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %66, i64 %idxprom79
  %67 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx83, align 8
  store %struct.storable_picture* %67, %struct.storable_picture** %ref_picture1, align 8
  %68 = load i32, i32* %list.addr, align 4
  %xor = xor i32 %68, 1
  %69 = load i32, i32* %list_offset, align 4
  %add84 = add nsw i32 %xor, %69
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom85
  %70 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %70, i64 0
  %71 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx87, align 8
  store %struct.storable_picture* %71, %struct.storable_picture** %ref_picture2, align 8
  %72 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 30
  %73 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %73, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %74 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgY_sub88 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %74, i32 0, i32 30
  %75 = load i16****, i16***** %imgY_sub88, align 8
  store i16**** %75, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %76 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %76, i32 0, i32 18
  %77 = load i32, i32* %size_x, align 4
  %conv89 = trunc i32 %77 to i16
  store i16 %conv89, i16* @img_width, align 2
  %78 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %78, i32 0, i32 19
  %79 = load i32, i32* %size_y, align 4
  %conv90 = trunc i32 %79 to i16
  store i16 %conv90, i16* @img_height, align 2
  %80 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %80, i32 0, i32 22
  %81 = load i32, i32* %size_x_pad, align 4
  store i32 %81, i32* @width_pad, align 4
  %82 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %82, i32 0, i32 23
  %83 = load i32, i32* %size_y_pad, align 4
  store i32 %83, i32* @height_pad, align 4
  %84 = load i16, i16* %apply_weights, align 2
  %tobool91 = icmp ne i16 %84, 0
  br i1 %tobool91, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.76
  %85 = load i32, i32* %list.addr, align 4
  %cmp92 = icmp eq i32 %85, 0
  br i1 %cmp92, label %cond.true.94, label %cond.false.101

cond.true.94:                                     ; preds = %if.then
  %86 = load i16, i16* %ref.addr, align 2
  %idxprom95 = sext i16 %86 to i64
  %87 = load i32, i32* %list_offset, align 4
  %idxprom96 = sext i32 %87 to i64
  %88 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx97 = getelementptr inbounds i32***, i32**** %88, i64 %idxprom96
  %89 = load i32***, i32**** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32**, i32*** %89, i64 %idxprom95
  %90 = load i32**, i32*** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %90, i64 0
  %91 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %91, i64 0
  %92 = load i32, i32* %arrayidx100, align 4
  br label %cond.end.109

cond.false.101:                                   ; preds = %if.then
  %93 = load i16, i16* %ref.addr, align 2
  %idxprom102 = sext i16 %93 to i64
  %94 = load i32, i32* %list_offset, align 4
  %add103 = add nsw i32 %94, 1
  %idxprom104 = sext i32 %add103 to i64
  %95 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx105 = getelementptr inbounds i32***, i32**** %95, i64 %idxprom104
  %96 = load i32***, i32**** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i32**, i32*** %96, i64 0
  %97 = load i32**, i32*** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32*, i32** %97, i64 %idxprom102
  %98 = load i32*, i32** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %98, i64 0
  %99 = load i32, i32* %arrayidx108, align 4
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.101, %cond.true.94
  %cond110 = phi i32 [ %92, %cond.true.94 ], [ %99, %cond.false.101 ]
  %conv111 = trunc i32 %cond110 to i16
  store i16 %conv111, i16* @weight1, align 2
  %100 = load i32, i32* %list.addr, align 4
  %cmp112 = icmp eq i32 %100, 0
  br i1 %cmp112, label %cond.true.114, label %cond.false.122

cond.true.114:                                    ; preds = %cond.end.109
  %101 = load i16, i16* %ref.addr, align 2
  %idxprom115 = sext i16 %101 to i64
  %102 = load i32, i32* %list_offset, align 4
  %add116 = add nsw i32 %102, 1
  %idxprom117 = sext i32 %add116 to i64
  %103 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx118 = getelementptr inbounds i32***, i32**** %103, i64 %idxprom117
  %104 = load i32***, i32**** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i32**, i32*** %104, i64 %idxprom115
  %105 = load i32**, i32*** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %105, i64 0
  %106 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %106, i64 0
  %107 = load i32, i32* %arrayidx121, align 4
  br label %cond.end.129

cond.false.122:                                   ; preds = %cond.end.109
  %108 = load i16, i16* %ref.addr, align 2
  %idxprom123 = sext i16 %108 to i64
  %109 = load i32, i32* %list_offset, align 4
  %idxprom124 = sext i32 %109 to i64
  %110 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx125 = getelementptr inbounds i32***, i32**** %110, i64 %idxprom124
  %111 = load i32***, i32**** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i32**, i32*** %111, i64 0
  %112 = load i32**, i32*** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i32*, i32** %112, i64 %idxprom123
  %113 = load i32*, i32** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %113, i64 0
  %114 = load i32, i32* %arrayidx128, align 4
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.122, %cond.true.114
  %cond130 = phi i32 [ %107, %cond.true.114 ], [ %114, %cond.false.122 ]
  %conv131 = trunc i32 %cond130 to i16
  store i16 %conv131, i16* @weight2, align 2
  %115 = load i16, i16* %offset1, align 2
  %conv132 = sext i16 %115 to i32
  %116 = load i16, i16* %offset2, align 2
  %conv133 = sext i16 %116 to i32
  %add134 = add nsw i32 %conv132, %conv133
  %add135 = add nsw i32 %add134, 1
  %shr = ashr i32 %add135, 1
  %conv136 = trunc i32 %shr to i16
  store i16 %conv136, i16* @offsetBi, align 2
  %117 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred2, i32 0, i64 0), align 8
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* %117, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.76
  %118 = load i32, i32* @luma_log_weight_denom, align 4
  %shl137 = shl i32 1, %118
  %conv138 = trunc i32 %shl137 to i16
  store i16 %conv138, i16* @weight1, align 2
  %119 = load i32, i32* @luma_log_weight_denom, align 4
  %shl139 = shl i32 1, %119
  %conv140 = trunc i32 %shl139 to i16
  store i16 %conv140, i16* @weight2, align 2
  store i16 0, i16* @offsetBi, align 2
  %120 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred1, i32 0, i64 0), align 8
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* %120, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.129
  %121 = load i32, i32* @ChromaMEEnable, align 4
  %tobool141 = icmp ne i32 %121, 0
  br i1 %tobool141, label %if.then.142, label %if.end.308

if.then.142:                                      ; preds = %if.end
  %122 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %122, i32 0, i32 32
  %123 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx143 = getelementptr inbounds i16****, i16***** %123, i64 0
  %124 = load i16****, i16***** %arrayidx143, align 8
  store i16**** %124, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 0), align 8
  %125 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgUV_sub144 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %125, i32 0, i32 32
  %126 = load i16*****, i16****** %imgUV_sub144, align 8
  %arrayidx145 = getelementptr inbounds i16****, i16***** %126, i64 1
  %127 = load i16****, i16***** %arrayidx145, align 8
  store i16**** %127, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 1), align 8
  %128 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgUV_sub146 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %128, i32 0, i32 32
  %129 = load i16*****, i16****** %imgUV_sub146, align 8
  %arrayidx147 = getelementptr inbounds i16****, i16***** %129, i64 0
  %130 = load i16****, i16***** %arrayidx147, align 8
  store i16**** %130, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 0), align 8
  %131 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgUV_sub148 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %131, i32 0, i32 32
  %132 = load i16*****, i16****** %imgUV_sub148, align 8
  %arrayidx149 = getelementptr inbounds i16****, i16***** %132, i64 1
  %133 = load i16****, i16***** %arrayidx149, align 8
  store i16**** %133, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 1), align 8
  %134 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %134, i32 0, i32 24
  %135 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %135, i32* @width_pad_cr, align 4
  %136 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %136, i32 0, i32 25
  %137 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %137, i32* @height_pad_cr, align 4
  %138 = load i16, i16* %apply_weights, align 2
  %tobool150 = icmp ne i16 %138, 0
  br i1 %tobool150, label %if.then.151, label %if.else.298

if.then.151:                                      ; preds = %if.then.142
  %139 = load i32, i32* %list.addr, align 4
  %cmp152 = icmp eq i32 %139, 0
  br i1 %cmp152, label %cond.true.154, label %cond.false.161

cond.true.154:                                    ; preds = %if.then.151
  %140 = load i16, i16* %ref.addr, align 2
  %idxprom155 = sext i16 %140 to i64
  %141 = load i32, i32* %list_offset, align 4
  %idxprom156 = sext i32 %141 to i64
  %142 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx157 = getelementptr inbounds i32***, i32**** %142, i64 %idxprom156
  %143 = load i32***, i32**** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i32**, i32*** %143, i64 %idxprom155
  %144 = load i32**, i32*** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i32*, i32** %144, i64 0
  %145 = load i32*, i32** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %145, i64 1
  %146 = load i32, i32* %arrayidx160, align 4
  br label %cond.end.169

cond.false.161:                                   ; preds = %if.then.151
  %147 = load i16, i16* %ref.addr, align 2
  %idxprom162 = sext i16 %147 to i64
  %148 = load i32, i32* %list_offset, align 4
  %add163 = add nsw i32 %148, 1
  %idxprom164 = sext i32 %add163 to i64
  %149 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx165 = getelementptr inbounds i32***, i32**** %149, i64 %idxprom164
  %150 = load i32***, i32**** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds i32**, i32*** %150, i64 0
  %151 = load i32**, i32*** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i32*, i32** %151, i64 %idxprom162
  %152 = load i32*, i32** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %152, i64 1
  %153 = load i32, i32* %arrayidx168, align 4
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.161, %cond.true.154
  %cond170 = phi i32 [ %146, %cond.true.154 ], [ %153, %cond.false.161 ]
  %conv171 = trunc i32 %cond170 to i16
  store i16 %conv171, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %154 = load i32, i32* %list.addr, align 4
  %cmp172 = icmp eq i32 %154, 0
  br i1 %cmp172, label %cond.true.174, label %cond.false.181

cond.true.174:                                    ; preds = %cond.end.169
  %155 = load i16, i16* %ref.addr, align 2
  %idxprom175 = sext i16 %155 to i64
  %156 = load i32, i32* %list_offset, align 4
  %idxprom176 = sext i32 %156 to i64
  %157 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx177 = getelementptr inbounds i32***, i32**** %157, i64 %idxprom176
  %158 = load i32***, i32**** %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds i32**, i32*** %158, i64 %idxprom175
  %159 = load i32**, i32*** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i32*, i32** %159, i64 0
  %160 = load i32*, i32** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %160, i64 2
  %161 = load i32, i32* %arrayidx180, align 4
  br label %cond.end.189

cond.false.181:                                   ; preds = %cond.end.169
  %162 = load i16, i16* %ref.addr, align 2
  %idxprom182 = sext i16 %162 to i64
  %163 = load i32, i32* %list_offset, align 4
  %add183 = add nsw i32 %163, 1
  %idxprom184 = sext i32 %add183 to i64
  %164 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx185 = getelementptr inbounds i32***, i32**** %164, i64 %idxprom184
  %165 = load i32***, i32**** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i32**, i32*** %165, i64 0
  %166 = load i32**, i32*** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32*, i32** %166, i64 %idxprom182
  %167 = load i32*, i32** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %167, i64 2
  %168 = load i32, i32* %arrayidx188, align 4
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.181, %cond.true.174
  %cond190 = phi i32 [ %161, %cond.true.174 ], [ %168, %cond.false.181 ]
  %conv191 = trunc i32 %cond190 to i16
  store i16 %conv191, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %169 = load i32, i32* %list.addr, align 4
  %cmp192 = icmp eq i32 %169, 0
  br i1 %cmp192, label %cond.true.194, label %cond.false.202

cond.true.194:                                    ; preds = %cond.end.189
  %170 = load i16, i16* %ref.addr, align 2
  %idxprom195 = sext i16 %170 to i64
  %171 = load i32, i32* %list_offset, align 4
  %add196 = add nsw i32 %171, 1
  %idxprom197 = sext i32 %add196 to i64
  %172 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx198 = getelementptr inbounds i32***, i32**** %172, i64 %idxprom197
  %173 = load i32***, i32**** %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds i32**, i32*** %173, i64 %idxprom195
  %174 = load i32**, i32*** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i32*, i32** %174, i64 0
  %175 = load i32*, i32** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %175, i64 1
  %176 = load i32, i32* %arrayidx201, align 4
  br label %cond.end.209

cond.false.202:                                   ; preds = %cond.end.189
  %177 = load i16, i16* %ref.addr, align 2
  %idxprom203 = sext i16 %177 to i64
  %178 = load i32, i32* %list_offset, align 4
  %idxprom204 = sext i32 %178 to i64
  %179 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx205 = getelementptr inbounds i32***, i32**** %179, i64 %idxprom204
  %180 = load i32***, i32**** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds i32**, i32*** %180, i64 0
  %181 = load i32**, i32*** %arrayidx206, align 8
  %arrayidx207 = getelementptr inbounds i32*, i32** %181, i64 %idxprom203
  %182 = load i32*, i32** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %182, i64 1
  %183 = load i32, i32* %arrayidx208, align 4
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.202, %cond.true.194
  %cond210 = phi i32 [ %176, %cond.true.194 ], [ %183, %cond.false.202 ]
  %conv211 = trunc i32 %cond210 to i16
  store i16 %conv211, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %184 = load i32, i32* %list.addr, align 4
  %cmp212 = icmp eq i32 %184, 0
  br i1 %cmp212, label %cond.true.214, label %cond.false.222

cond.true.214:                                    ; preds = %cond.end.209
  %185 = load i16, i16* %ref.addr, align 2
  %idxprom215 = sext i16 %185 to i64
  %186 = load i32, i32* %list_offset, align 4
  %add216 = add nsw i32 %186, 1
  %idxprom217 = sext i32 %add216 to i64
  %187 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx218 = getelementptr inbounds i32***, i32**** %187, i64 %idxprom217
  %188 = load i32***, i32**** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i32**, i32*** %188, i64 %idxprom215
  %189 = load i32**, i32*** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds i32*, i32** %189, i64 0
  %190 = load i32*, i32** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %190, i64 2
  %191 = load i32, i32* %arrayidx221, align 4
  br label %cond.end.229

cond.false.222:                                   ; preds = %cond.end.209
  %192 = load i16, i16* %ref.addr, align 2
  %idxprom223 = sext i16 %192 to i64
  %193 = load i32, i32* %list_offset, align 4
  %idxprom224 = sext i32 %193 to i64
  %194 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx225 = getelementptr inbounds i32***, i32**** %194, i64 %idxprom224
  %195 = load i32***, i32**** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i32**, i32*** %195, i64 0
  %196 = load i32**, i32*** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds i32*, i32** %196, i64 %idxprom223
  %197 = load i32*, i32** %arrayidx227, align 8
  %arrayidx228 = getelementptr inbounds i32, i32* %197, i64 2
  %198 = load i32, i32* %arrayidx228, align 4
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.222, %cond.true.214
  %cond230 = phi i32 [ %191, %cond.true.214 ], [ %198, %cond.false.222 ]
  %conv231 = trunc i32 %cond230 to i16
  store i16 %conv231, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  %199 = load i32, i32* %list.addr, align 4
  %cmp232 = icmp eq i32 %199, 0
  br i1 %cmp232, label %cond.true.234, label %cond.false.249

cond.true.234:                                    ; preds = %cond.end.229
  %200 = load i16, i16* %ref.addr, align 2
  %idxprom235 = sext i16 %200 to i64
  %201 = load i32, i32* %list_offset, align 4
  %idxprom236 = sext i32 %201 to i64
  %202 = load i32***, i32**** @wp_offset, align 8
  %arrayidx237 = getelementptr inbounds i32**, i32*** %202, i64 %idxprom236
  %203 = load i32**, i32*** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i32*, i32** %203, i64 %idxprom235
  %204 = load i32*, i32** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %204, i64 1
  %205 = load i32, i32* %arrayidx239, align 4
  %206 = load i16, i16* %ref.addr, align 2
  %idxprom240 = sext i16 %206 to i64
  %207 = load i32, i32* %list_offset, align 4
  %add241 = add nsw i32 %207, 1
  %idxprom242 = sext i32 %add241 to i64
  %208 = load i32***, i32**** @wp_offset, align 8
  %arrayidx243 = getelementptr inbounds i32**, i32*** %208, i64 %idxprom242
  %209 = load i32**, i32*** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds i32*, i32** %209, i64 %idxprom240
  %210 = load i32*, i32** %arrayidx244, align 8
  %arrayidx245 = getelementptr inbounds i32, i32* %210, i64 1
  %211 = load i32, i32* %arrayidx245, align 4
  %add246 = add nsw i32 %205, %211
  %add247 = add nsw i32 %add246, 1
  %shr248 = ashr i32 %add247, 1
  br label %cond.end.262

cond.false.249:                                   ; preds = %cond.end.229
  %212 = load i32, i32* %list_offset, align 4
  %add250 = add nsw i32 %212, 1
  %idxprom251 = sext i32 %add250 to i64
  %213 = load i32***, i32**** @wp_offset, align 8
  %arrayidx252 = getelementptr inbounds i32**, i32*** %213, i64 %idxprom251
  %214 = load i32**, i32*** %arrayidx252, align 8
  %arrayidx253 = getelementptr inbounds i32*, i32** %214, i64 0
  %215 = load i32*, i32** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %215, i64 1
  %216 = load i32, i32* %arrayidx254, align 4
  %217 = load i32, i32* %list_offset, align 4
  %idxprom255 = sext i32 %217 to i64
  %218 = load i32***, i32**** @wp_offset, align 8
  %arrayidx256 = getelementptr inbounds i32**, i32*** %218, i64 %idxprom255
  %219 = load i32**, i32*** %arrayidx256, align 8
  %arrayidx257 = getelementptr inbounds i32*, i32** %219, i64 0
  %220 = load i32*, i32** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %220, i64 1
  %221 = load i32, i32* %arrayidx258, align 4
  %add259 = add nsw i32 %216, %221
  %add260 = add nsw i32 %add259, 1
  %shr261 = ashr i32 %add260, 1
  br label %cond.end.262

cond.end.262:                                     ; preds = %cond.false.249, %cond.true.234
  %cond263 = phi i32 [ %shr248, %cond.true.234 ], [ %shr261, %cond.false.249 ]
  %conv264 = trunc i32 %cond263 to i16
  store i16 %conv264, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  %222 = load i32, i32* %list.addr, align 4
  %cmp265 = icmp eq i32 %222, 0
  br i1 %cmp265, label %cond.true.267, label %cond.false.282

cond.true.267:                                    ; preds = %cond.end.262
  %223 = load i16, i16* %ref.addr, align 2
  %idxprom268 = sext i16 %223 to i64
  %224 = load i32, i32* %list_offset, align 4
  %idxprom269 = sext i32 %224 to i64
  %225 = load i32***, i32**** @wp_offset, align 8
  %arrayidx270 = getelementptr inbounds i32**, i32*** %225, i64 %idxprom269
  %226 = load i32**, i32*** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i32*, i32** %226, i64 %idxprom268
  %227 = load i32*, i32** %arrayidx271, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %227, i64 2
  %228 = load i32, i32* %arrayidx272, align 4
  %229 = load i16, i16* %ref.addr, align 2
  %idxprom273 = sext i16 %229 to i64
  %230 = load i32, i32* %list_offset, align 4
  %add274 = add nsw i32 %230, 1
  %idxprom275 = sext i32 %add274 to i64
  %231 = load i32***, i32**** @wp_offset, align 8
  %arrayidx276 = getelementptr inbounds i32**, i32*** %231, i64 %idxprom275
  %232 = load i32**, i32*** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i32*, i32** %232, i64 %idxprom273
  %233 = load i32*, i32** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %233, i64 2
  %234 = load i32, i32* %arrayidx278, align 4
  %add279 = add nsw i32 %228, %234
  %add280 = add nsw i32 %add279, 1
  %shr281 = ashr i32 %add280, 1
  br label %cond.end.295

cond.false.282:                                   ; preds = %cond.end.262
  %235 = load i32, i32* %list_offset, align 4
  %add283 = add nsw i32 %235, 1
  %idxprom284 = sext i32 %add283 to i64
  %236 = load i32***, i32**** @wp_offset, align 8
  %arrayidx285 = getelementptr inbounds i32**, i32*** %236, i64 %idxprom284
  %237 = load i32**, i32*** %arrayidx285, align 8
  %arrayidx286 = getelementptr inbounds i32*, i32** %237, i64 0
  %238 = load i32*, i32** %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %238, i64 2
  %239 = load i32, i32* %arrayidx287, align 4
  %240 = load i32, i32* %list_offset, align 4
  %idxprom288 = sext i32 %240 to i64
  %241 = load i32***, i32**** @wp_offset, align 8
  %arrayidx289 = getelementptr inbounds i32**, i32*** %241, i64 %idxprom288
  %242 = load i32**, i32*** %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds i32*, i32** %242, i64 0
  %243 = load i32*, i32** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds i32, i32* %243, i64 2
  %244 = load i32, i32* %arrayidx291, align 4
  %add292 = add nsw i32 %239, %244
  %add293 = add nsw i32 %add292, 1
  %shr294 = ashr i32 %add293, 1
  br label %cond.end.295

cond.end.295:                                     ; preds = %cond.false.282, %cond.true.267
  %cond296 = phi i32 [ %shr281, %cond.true.267 ], [ %shr294, %cond.false.282 ]
  %conv297 = trunc i32 %cond296 to i16
  store i16 %conv297, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.307

if.else.298:                                      ; preds = %if.then.142
  %245 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl299 = shl i32 1, %245
  %conv300 = trunc i32 %shl299 to i16
  store i16 %conv300, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %246 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl301 = shl i32 1, %246
  %conv302 = trunc i32 %shl301 to i16
  store i16 %conv302, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %247 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl303 = shl i32 1, %247
  %conv304 = trunc i32 %shl303 to i16
  store i16 %conv304, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %248 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl305 = shl i32 1, %248
  %conv306 = trunc i32 %shl305 to i16
  store i16 %conv306, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.298, %cond.end.295
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.end
  %249 = load i16, i16* %center_x, align 2
  %conv309 = sext i16 %249 to i32
  %250 = load i32, i32* %search_range.addr, align 4
  %cmp310 = icmp sgt i32 %conv309, %250
  br i1 %cmp310, label %land.lhs.true, label %if.else.331

land.lhs.true:                                    ; preds = %if.end.308
  %251 = load i16, i16* %center_x, align 2
  %conv312 = sext i16 %251 to i32
  %252 = load i16, i16* @img_width, align 2
  %conv313 = sext i16 %252 to i32
  %sub = sub nsw i32 %conv313, 1
  %253 = load i32, i32* %search_range.addr, align 4
  %sub314 = sub nsw i32 %sub, %253
  %254 = load i32, i32* %blocksize_x, align 4
  %sub315 = sub nsw i32 %sub314, %254
  %cmp316 = icmp slt i32 %conv312, %sub315
  br i1 %cmp316, label %land.lhs.true.318, label %if.else.331

land.lhs.true.318:                                ; preds = %land.lhs.true
  %255 = load i16, i16* %center_y, align 2
  %conv319 = sext i16 %255 to i32
  %256 = load i32, i32* %search_range.addr, align 4
  %cmp320 = icmp sgt i32 %conv319, %256
  br i1 %cmp320, label %land.lhs.true.322, label %if.else.331

land.lhs.true.322:                                ; preds = %land.lhs.true.318
  %257 = load i16, i16* %center_y, align 2
  %conv323 = sext i16 %257 to i32
  %258 = load i16, i16* @img_height, align 2
  %conv324 = sext i16 %258 to i32
  %sub325 = sub nsw i32 %conv324, 1
  %259 = load i32, i32* %search_range.addr, align 4
  %sub326 = sub nsw i32 %sub325, %259
  %260 = load i32, i32* %blocksize_y, align 4
  %sub327 = sub nsw i32 %sub326, %260
  %cmp328 = icmp slt i32 %conv323, %sub327
  br i1 %cmp328, label %if.then.330, label %if.else.331

if.then.330:                                      ; preds = %land.lhs.true.322
  store i32 0, i32* @bipred2_access_method, align 4
  br label %if.end.332

if.else.331:                                      ; preds = %land.lhs.true.322, %land.lhs.true.318, %land.lhs.true, %if.end.308
  store i32 1, i32* @bipred2_access_method, align 4
  br label %if.end.332

if.end.332:                                       ; preds = %if.else.331, %if.then.330
  %261 = load i16, i16* %ref1_center_x, align 2
  %conv333 = sext i16 %261 to i32
  %262 = load i32, i32* %search_range.addr, align 4
  %cmp334 = icmp sgt i32 %conv333, %262
  br i1 %cmp334, label %land.lhs.true.336, label %if.else.357

land.lhs.true.336:                                ; preds = %if.end.332
  %263 = load i16, i16* %ref1_center_x, align 2
  %conv337 = sext i16 %263 to i32
  %264 = load i16, i16* @img_width, align 2
  %conv338 = sext i16 %264 to i32
  %sub339 = sub nsw i32 %conv338, 1
  %265 = load i32, i32* %search_range.addr, align 4
  %sub340 = sub nsw i32 %sub339, %265
  %266 = load i32, i32* %blocksize_x, align 4
  %sub341 = sub nsw i32 %sub340, %266
  %cmp342 = icmp slt i32 %conv337, %sub341
  br i1 %cmp342, label %land.lhs.true.344, label %if.else.357

land.lhs.true.344:                                ; preds = %land.lhs.true.336
  %267 = load i16, i16* %ref1_center_y, align 2
  %conv345 = sext i16 %267 to i32
  %268 = load i32, i32* %search_range.addr, align 4
  %cmp346 = icmp sgt i32 %conv345, %268
  br i1 %cmp346, label %land.lhs.true.348, label %if.else.357

land.lhs.true.348:                                ; preds = %land.lhs.true.344
  %269 = load i16, i16* %ref1_center_y, align 2
  %conv349 = sext i16 %269 to i32
  %270 = load i16, i16* @img_height, align 2
  %conv350 = sext i16 %270 to i32
  %sub351 = sub nsw i32 %conv350, 1
  %271 = load i32, i32* %search_range.addr, align 4
  %sub352 = sub nsw i32 %sub351, %271
  %272 = load i32, i32* %blocksize_y, align 4
  %sub353 = sub nsw i32 %sub352, %272
  %cmp354 = icmp slt i32 %conv349, %sub353
  br i1 %cmp354, label %if.then.356, label %if.else.357

if.then.356:                                      ; preds = %land.lhs.true.348
  store i32 0, i32* @bipred1_access_method, align 4
  br label %if.end.358

if.else.357:                                      ; preds = %land.lhs.true.348, %land.lhs.true.344, %land.lhs.true.336, %if.end.332
  store i32 1, i32* @bipred1_access_method, align 4
  br label %if.end.358

if.end.358:                                       ; preds = %if.else.357, %if.then.356
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.358
  %273 = load i32, i32* %pos, align 4
  %274 = load i32, i32* %max_pos, align 4
  %cmp359 = icmp slt i32 %273, %274
  br i1 %cmp359, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %275 = load i16, i16* %center_x, align 2
  %conv361 = sext i16 %275 to i32
  %276 = load i32, i32* %pos, align 4
  %idxprom362 = sext i32 %276 to i64
  %277 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx363 = getelementptr inbounds i16, i16* %277, i64 %idxprom362
  %278 = load i16, i16* %arrayidx363, align 2
  %conv364 = sext i16 %278 to i32
  %add365 = add nsw i32 %conv361, %conv364
  %shl366 = shl i32 %add365, 2
  store i32 %shl366, i32* %cand_x, align 4
  %279 = load i16, i16* %center_y, align 2
  %conv367 = sext i16 %279 to i32
  %280 = load i32, i32* %pos, align 4
  %idxprom368 = sext i32 %280 to i64
  %281 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx369 = getelementptr inbounds i16, i16* %281, i64 %idxprom368
  %282 = load i16, i16* %arrayidx369, align 2
  %conv370 = sext i16 %282 to i32
  %add371 = add nsw i32 %conv367, %conv370
  %shl372 = shl i32 %add371, 2
  store i32 %shl372, i32* %cand_y, align 4
  %283 = load i32, i32* %lambda_factor.addr, align 4
  %284 = load i16, i16* %ref1_center_x, align 2
  %conv373 = sext i16 %284 to i32
  %shl374 = shl i32 %conv373, 2
  %285 = load i32, i32* %pred_x1, align 4
  %sub375 = sub nsw i32 %shl374, %285
  %idxprom376 = sext i32 %sub375 to i64
  %286 = load i32*, i32** @mvbits, align 8
  %arrayidx377 = getelementptr inbounds i32, i32* %286, i64 %idxprom376
  %287 = load i32, i32* %arrayidx377, align 4
  %288 = load i16, i16* %ref1_center_y, align 2
  %conv378 = sext i16 %288 to i32
  %shl379 = shl i32 %conv378, 2
  %289 = load i32, i32* %pred_y1, align 4
  %sub380 = sub nsw i32 %shl379, %289
  %idxprom381 = sext i32 %sub380 to i64
  %290 = load i32*, i32** @mvbits, align 8
  %arrayidx382 = getelementptr inbounds i32, i32* %290, i64 %idxprom381
  %291 = load i32, i32* %arrayidx382, align 4
  %add383 = add nsw i32 %287, %291
  %mul384 = mul nsw i32 %283, %add383
  %shr385 = ashr i32 %mul384, 16
  store i32 %shr385, i32* %mcost, align 4
  %292 = load i32, i32* %lambda_factor.addr, align 4
  %293 = load i32, i32* %cand_x, align 4
  %294 = load i32, i32* %pred_x2, align 4
  %sub386 = sub nsw i32 %293, %294
  %idxprom387 = sext i32 %sub386 to i64
  %295 = load i32*, i32** @mvbits, align 8
  %arrayidx388 = getelementptr inbounds i32, i32* %295, i64 %idxprom387
  %296 = load i32, i32* %arrayidx388, align 4
  %297 = load i32, i32* %cand_y, align 4
  %298 = load i32, i32* %pred_y2, align 4
  %sub389 = sub nsw i32 %297, %298
  %idxprom390 = sext i32 %sub389 to i64
  %299 = load i32*, i32** @mvbits, align 8
  %arrayidx391 = getelementptr inbounds i32, i32* %299, i64 %idxprom390
  %300 = load i32, i32* %arrayidx391, align 4
  %add392 = add nsw i32 %296, %300
  %mul393 = mul nsw i32 %292, %add392
  %shr394 = ashr i32 %mul393, 16
  %301 = load i32, i32* %mcost, align 4
  %add395 = add nsw i32 %301, %shr394
  store i32 %add395, i32* %mcost, align 4
  %302 = load i32, i32* %mcost, align 4
  %303 = load i32, i32* %min_mcost.addr, align 4
  %cmp396 = icmp sge i32 %302, %303
  br i1 %cmp396, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %for.body
  br label %for.inc

if.end.399:                                       ; preds = %for.body
  %304 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %305 = load i16*, i16** %orig_pic.addr, align 8
  %306 = load i32, i32* %blocksize_y, align 4
  %307 = load i32, i32* %blocksize_x, align 4
  %308 = load i32, i32* %min_mcost.addr, align 4
  %309 = load i32, i32* %mcost, align 4
  %sub400 = sub nsw i32 %308, %309
  %310 = load i16, i16* %ref1_center_x, align 2
  %conv401 = sext i16 %310 to i32
  %shl402 = shl i32 %conv401, 2
  %add403 = add nsw i32 %shl402, 80
  %311 = load i16, i16* %ref1_center_y, align 2
  %conv404 = sext i16 %311 to i32
  %shl405 = shl i32 %conv404, 2
  %add406 = add nsw i32 %shl405, 80
  %312 = load i32, i32* %cand_x, align 4
  %add407 = add nsw i32 %312, 80
  %313 = load i32, i32* %cand_y, align 4
  %add408 = add nsw i32 %313, 80
  %call = call i32 %304(i16* %305, i32 %306, i32 %307, i32 %sub400, i32 %add403, i32 %add406, i32 %add407, i32 %add408)
  %314 = load i32, i32* %mcost, align 4
  %add409 = add nsw i32 %314, %call
  store i32 %add409, i32* %mcost, align 4
  %315 = load i32, i32* %mcost, align 4
  %316 = load i32, i32* %min_mcost.addr, align 4
  %cmp410 = icmp slt i32 %315, %316
  br i1 %cmp410, label %if.then.412, label %if.end.413

if.then.412:                                      ; preds = %if.end.399
  %317 = load i32, i32* %pos, align 4
  store i32 %317, i32* %best_pos, align 4
  %318 = load i32, i32* %mcost, align 4
  store i32 %318, i32* %min_mcost.addr, align 4
  br label %if.end.413

if.end.413:                                       ; preds = %if.then.412, %if.end.399
  br label %for.inc

for.inc:                                          ; preds = %if.end.413, %if.then.398
  %319 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %319, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %320 = load i32, i32* %best_pos, align 4
  %tobool414 = icmp ne i32 %320, 0
  br i1 %tobool414, label %if.then.415, label %if.end.428

if.then.415:                                      ; preds = %for.end
  %321 = load i32, i32* %best_pos, align 4
  %idxprom416 = sext i32 %321 to i64
  %322 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx417 = getelementptr inbounds i16, i16* %322, i64 %idxprom416
  %323 = load i16, i16* %arrayidx417, align 2
  %conv418 = sext i16 %323 to i32
  %324 = load i16*, i16** %mv_x.addr, align 8
  %325 = load i16, i16* %324, align 2
  %conv419 = sext i16 %325 to i32
  %add420 = add nsw i32 %conv419, %conv418
  %conv421 = trunc i32 %add420 to i16
  store i16 %conv421, i16* %324, align 2
  %326 = load i32, i32* %best_pos, align 4
  %idxprom422 = sext i32 %326 to i64
  %327 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx423 = getelementptr inbounds i16, i16* %327, i64 %idxprom422
  %328 = load i16, i16* %arrayidx423, align 2
  %conv424 = sext i16 %328 to i32
  %329 = load i16*, i16** %mv_y.addr, align 8
  %330 = load i16, i16* %329, align 2
  %conv425 = sext i16 %330 to i32
  %add426 = add nsw i32 %conv425, %conv424
  %conv427 = trunc i32 %add426 to i16
  store i16 %conv427, i16* %329, align 2
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.415, %for.end
  %331 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %331
}

; Function Attrs: nounwind uwtable
define i32 @SubPelBlockMotionSearch(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, i32* %lambda) #0 {
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
  %search_pos2.addr = alloca i32, align 4
  %search_pos4.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda.addr = alloca i32*, align 8
  %pos = alloca i32, align 4
  %best_pos = alloca i32, align 4
  %mcost = alloca i32, align 4
  %cand_mv_x = alloca i32, align 4
  %cand_mv_y = alloca i32, align 4
  %check_position0 = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %pic4_pix_x = alloca i32, align 4
  %pic4_pix_y = alloca i32, align 4
  %max_pos2 = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %apply_weights = alloca i32, align 4
  %cmv_x = alloca i32, align 4
  %cmv_y = alloca i32, align 4
  %dist_method = alloca i32, align 4
  %ref_picture = alloca %struct.storable_picture*, align 8
  %max_pos_x4 = alloca i32, align 4
  %max_pos_y4 = alloca i32, align 4
  %lambda_factor = alloca i32, align 4
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
  store i32 %search_pos2, i32* %search_pos2.addr, align 4
  store i32 %search_pos4, i32* %search_pos4.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32* %lambda, i32** %lambda.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 113
  %1 = load i32, i32* %rdopt, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 5
  %3 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %land.lhs.true.1, label %land.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load i16, i16* %ref.addr, align 2
  %conv = sext i16 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.1
  %5 = load i32, i32* %blocktype.addr, align 4
  %cmp5 = icmp eq i32 %5, 1
  br i1 %cmp5, label %land.lhs.true.7, label %land.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %6 = load i16*, i16** %mv_x.addr, align 8
  %7 = load i16, i16* %6, align 2
  %conv8 = sext i16 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.7
  %8 = load i16*, i16** %mv_y.addr, align 8
  %9 = load i16, i16* %8, align 2
  %conv11 = sext i16 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true.1, %land.lhs.true, %entry
  %10 = phi i1 [ false, %land.lhs.true.7 ], [ false, %land.lhs.true.4 ], [ false, %land.lhs.true.1 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %check_position0, align 4
  %11 = load i32, i32* %blocktype.addr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 18
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %13 = load i32, i32* %arrayidx14, align 4
  store i32 %13, i32* %blocksize_x, align 4
  %14 = load i32, i32* %blocktype.addr, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 18
  %arrayidx17 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size16, i32 0, i64 %idxprom15
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx17, i32 0, i64 1
  %16 = load i32, i32* %arrayidx18, align 4
  store i32 %16, i32* %blocksize_y, align 4
  %17 = load i32, i32* %pic_pix_x.addr, align 4
  %add = add nsw i32 %17, 20
  %shl = shl i32 %add, 2
  store i32 %shl, i32* %pic4_pix_x, align 4
  %18 = load i32, i32* %pic_pix_y.addr, align 4
  %add19 = add nsw i32 %18, 20
  %shl20 = shl i32 %add19, 2
  store i32 %shl20, i32* %pic4_pix_y, align 4
  %19 = load i32, i32* @start_me_refinement_hp, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.end
  %20 = load i32, i32* %search_pos2.addr, align 4
  %call = call i32 @imax(i32 1, i32 %20)
  br label %cond.end

cond.false:                                       ; preds = %land.end
  %21 = load i32, i32* %search_pos2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %max_pos2, align 4
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 3
  %23 = load i32, i32* %current_mb_nr, align 4
  %idxprom22 = sext i32 %23 to i64
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 61
  %25 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i64 %idxprom22
  %list_offset24 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx23, i32 0, i32 21
  %26 = load i32, i32* %list_offset24, align 4
  store i32 %26, i32* %list_offset, align 4
  %27 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %27, i32 0, i32 19
  %28 = load i32, i32* %weighted_pred_flag, align 4
  %tobool25 = icmp ne i32 %28, 0
  br i1 %tobool25, label %land.lhs.true.26, label %lor.lhs.false.33

land.lhs.true.26:                                 ; preds = %cond.end
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 5
  %30 = load i32, i32* %type27, align 4
  %cmp28 = icmp eq i32 %30, 0
  br i1 %cmp28, label %land.rhs.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.26
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 5
  %32 = load i32, i32* %type30, align 4
  %cmp31 = icmp eq i32 %32, 3
  br i1 %cmp31, label %land.rhs.39, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false, %cond.end
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %33, i32 0, i32 20
  %34 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool34 = icmp ne i32 %34, 0
  br i1 %tobool34, label %land.lhs.true.35, label %land.end.41

land.lhs.true.35:                                 ; preds = %lor.lhs.false.33
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 5
  %36 = load i32, i32* %type36, align 4
  %cmp37 = icmp eq i32 %36, 1
  br i1 %cmp37, label %land.rhs.39, label %land.end.41

land.rhs.39:                                      ; preds = %land.lhs.true.35, %lor.lhs.false, %land.lhs.true.26
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 61
  %38 = load i32, i32* %UseWeightedReferenceME, align 4
  %tobool40 = icmp ne i32 %38, 0
  br label %land.end.41

land.end.41:                                      ; preds = %land.rhs.39, %land.lhs.true.35, %lor.lhs.false.33
  %39 = phi i1 [ false, %land.lhs.true.35 ], [ false, %lor.lhs.false.33 ], [ %tobool40, %land.rhs.39 ]
  %land.ext42 = zext i1 %39 to i32
  store i32 %land.ext42, i32* %apply_weights, align 4
  %40 = load i32, i32* %apply_weights, align 4
  %mul = mul nsw i32 3, %40
  %add43 = add nsw i32 1, %mul
  store i32 %add43, i32* %dist_method, align 4
  %41 = load i16, i16* %ref.addr, align 2
  %idxprom44 = sext i16 %41 to i64
  %42 = load i32, i32* %list.addr, align 4
  %43 = load i32, i32* %list_offset, align 4
  %add45 = add nsw i32 %42, %43
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom46
  %44 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %44, i64 %idxprom44
  %45 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx48, align 8
  store %struct.storable_picture* %45, %struct.storable_picture** %ref_picture, align 8
  %46 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %46, i32 0, i32 18
  %47 = load i32, i32* %size_x, align 4
  %48 = load i32, i32* %blocksize_x, align 4
  %sub = sub nsw i32 %47, %48
  %add49 = add nsw i32 %sub, 40
  %shl50 = shl i32 %add49, 2
  store i32 %shl50, i32* %max_pos_x4, align 4
  %49 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 19
  %50 = load i32, i32* %size_y, align 4
  %51 = load i32, i32* %blocksize_y, align 4
  %sub51 = sub nsw i32 %50, %51
  %add52 = add nsw i32 %sub51, 40
  %shl53 = shl i32 %add52, 2
  store i32 %shl53, i32* %max_pos_y4, align 4
  %52 = load i32*, i32** %lambda.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %52, i64 1
  %53 = load i32, i32* %arrayidx54, align 4
  store i32 %53, i32* %lambda_factor, align 4
  %54 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %54, i32 0, i32 30
  %55 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %55, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %56 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 22
  %57 = load i32, i32* %size_x_pad, align 4
  store i32 %57, i32* @width_pad, align 4
  %58 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 23
  %59 = load i32, i32* %size_y_pad, align 4
  store i32 %59, i32* @height_pad, align 4
  %60 = load i32, i32* %apply_weights, align 4
  %tobool55 = icmp ne i32 %60, 0
  br i1 %tobool55, label %if.then, label %if.end

if.then:                                          ; preds = %land.end.41
  %61 = load i16, i16* %ref.addr, align 2
  %idxprom56 = sext i16 %61 to i64
  %62 = load i32, i32* %list.addr, align 4
  %63 = load i32, i32* %list_offset, align 4
  %add57 = add nsw i32 %62, %63
  %idxprom58 = sext i32 %add57 to i64
  %64 = load i32***, i32**** @wp_weight, align 8
  %arrayidx59 = getelementptr inbounds i32**, i32*** %64, i64 %idxprom58
  %65 = load i32**, i32*** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i32*, i32** %65, i64 %idxprom56
  %66 = load i32*, i32** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %66, i64 0
  %67 = load i32, i32* %arrayidx61, align 4
  store i32 %67, i32* @weight_luma, align 4
  %68 = load i16, i16* %ref.addr, align 2
  %idxprom62 = sext i16 %68 to i64
  %69 = load i32, i32* %list.addr, align 4
  %70 = load i32, i32* %list_offset, align 4
  %add63 = add nsw i32 %69, %70
  %idxprom64 = sext i32 %add63 to i64
  %71 = load i32***, i32**** @wp_offset, align 8
  %arrayidx65 = getelementptr inbounds i32**, i32*** %71, i64 %idxprom64
  %72 = load i32**, i32*** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %72, i64 %idxprom62
  %73 = load i32*, i32** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %73, i64 0
  %74 = load i32, i32* %arrayidx67, align 4
  store i32 %74, i32* @offset_luma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.41
  %75 = load i32, i32* @ChromaMEEnable, align 4
  %tobool68 = icmp ne i32 %75, 0
  br i1 %tobool68, label %if.then.69, label %if.end.100

if.then.69:                                       ; preds = %if.end
  %76 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %76, i32 0, i32 32
  %77 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx70 = getelementptr inbounds i16****, i16***** %77, i64 0
  %78 = load i16****, i16***** %arrayidx70, align 8
  store i16**** %78, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 0), align 8
  %79 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub71 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %79, i32 0, i32 32
  %80 = load i16*****, i16****** %imgUV_sub71, align 8
  %arrayidx72 = getelementptr inbounds i16****, i16***** %80, i64 1
  %81 = load i16****, i16***** %arrayidx72, align 8
  store i16**** %81, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 1), align 8
  %82 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %82, i32 0, i32 24
  %83 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %83, i32* @width_pad_cr, align 4
  %84 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %84, i32 0, i32 25
  %85 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %85, i32* @height_pad_cr, align 4
  %86 = load i32, i32* %apply_weights, align 4
  %tobool73 = icmp ne i32 %86, 0
  br i1 %tobool73, label %if.then.74, label %if.end.99

if.then.74:                                       ; preds = %if.then.69
  %87 = load i16, i16* %ref.addr, align 2
  %idxprom75 = sext i16 %87 to i64
  %88 = load i32, i32* %list.addr, align 4
  %89 = load i32, i32* %list_offset, align 4
  %add76 = add nsw i32 %88, %89
  %idxprom77 = sext i32 %add76 to i64
  %90 = load i32***, i32**** @wp_weight, align 8
  %arrayidx78 = getelementptr inbounds i32**, i32*** %90, i64 %idxprom77
  %91 = load i32**, i32*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %91, i64 %idxprom75
  %92 = load i32*, i32** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %92, i64 1
  %93 = load i32, i32* %arrayidx80, align 4
  store i32 %93, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 0), align 4
  %94 = load i16, i16* %ref.addr, align 2
  %idxprom81 = sext i16 %94 to i64
  %95 = load i32, i32* %list.addr, align 4
  %96 = load i32, i32* %list_offset, align 4
  %add82 = add nsw i32 %95, %96
  %idxprom83 = sext i32 %add82 to i64
  %97 = load i32***, i32**** @wp_weight, align 8
  %arrayidx84 = getelementptr inbounds i32**, i32*** %97, i64 %idxprom83
  %98 = load i32**, i32*** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %98, i64 %idxprom81
  %99 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %99, i64 2
  %100 = load i32, i32* %arrayidx86, align 4
  store i32 %100, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 1), align 4
  %101 = load i16, i16* %ref.addr, align 2
  %idxprom87 = sext i16 %101 to i64
  %102 = load i32, i32* %list.addr, align 4
  %103 = load i32, i32* %list_offset, align 4
  %add88 = add nsw i32 %102, %103
  %idxprom89 = sext i32 %add88 to i64
  %104 = load i32***, i32**** @wp_offset, align 8
  %arrayidx90 = getelementptr inbounds i32**, i32*** %104, i64 %idxprom89
  %105 = load i32**, i32*** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i32*, i32** %105, i64 %idxprom87
  %106 = load i32*, i32** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %106, i64 1
  %107 = load i32, i32* %arrayidx92, align 4
  store i32 %107, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 0), align 4
  %108 = load i16, i16* %ref.addr, align 2
  %idxprom93 = sext i16 %108 to i64
  %109 = load i32, i32* %list.addr, align 4
  %110 = load i32, i32* %list_offset, align 4
  %add94 = add nsw i32 %109, %110
  %idxprom95 = sext i32 %add94 to i64
  %111 = load i32***, i32**** @wp_offset, align 8
  %arrayidx96 = getelementptr inbounds i32**, i32*** %111, i64 %idxprom95
  %112 = load i32**, i32*** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i32*, i32** %112, i64 %idxprom93
  %113 = load i32*, i32** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %113, i64 2
  %114 = load i32, i32* %arrayidx98, align 4
  store i32 %114, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 1), align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.74, %if.then.69
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end
  %115 = load i32, i32* %pic4_pix_x, align 4
  %116 = load i16*, i16** %mv_x.addr, align 8
  %117 = load i16, i16* %116, align 2
  %conv101 = sext i16 %117 to i32
  %add102 = add nsw i32 %115, %conv101
  %cmp103 = icmp sgt i32 %add102, 1
  br i1 %cmp103, label %land.lhs.true.105, label %if.else

land.lhs.true.105:                                ; preds = %if.end.100
  %118 = load i32, i32* %pic4_pix_x, align 4
  %119 = load i16*, i16** %mv_x.addr, align 8
  %120 = load i16, i16* %119, align 2
  %conv106 = sext i16 %120 to i32
  %add107 = add nsw i32 %118, %conv106
  %121 = load i32, i32* %max_pos_x4, align 4
  %sub108 = sub nsw i32 %121, 1
  %cmp109 = icmp slt i32 %add107, %sub108
  br i1 %cmp109, label %land.lhs.true.111, label %if.else

land.lhs.true.111:                                ; preds = %land.lhs.true.105
  %122 = load i32, i32* %pic4_pix_y, align 4
  %123 = load i16*, i16** %mv_y.addr, align 8
  %124 = load i16, i16* %123, align 2
  %conv112 = sext i16 %124 to i32
  %add113 = add nsw i32 %122, %conv112
  %cmp114 = icmp sgt i32 %add113, 1
  br i1 %cmp114, label %land.lhs.true.116, label %if.else

land.lhs.true.116:                                ; preds = %land.lhs.true.111
  %125 = load i32, i32* %pic4_pix_y, align 4
  %126 = load i16*, i16** %mv_y.addr, align 8
  %127 = load i16, i16* %126, align 2
  %conv117 = sext i16 %127 to i32
  %add118 = add nsw i32 %125, %conv117
  %128 = load i32, i32* %max_pos_y4, align 4
  %sub119 = sub nsw i32 %128, 1
  %cmp120 = icmp slt i32 %add118, %sub119
  br i1 %cmp120, label %if.then.122, label %if.else

if.then.122:                                      ; preds = %land.lhs.true.116
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.123

if.else:                                          ; preds = %land.lhs.true.116, %land.lhs.true.111, %land.lhs.true.105, %if.end.100
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else, %if.then.122
  store i32 0, i32* %best_pos, align 4
  %129 = load i32, i32* @start_me_refinement_hp, align 4
  store i32 %129, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.123
  %130 = load i32, i32* %pos, align 4
  %131 = load i32, i32* %max_pos2, align 4
  %cmp124 = icmp slt i32 %130, %131
  br i1 %cmp124, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %132 = load i16*, i16** %mv_x.addr, align 8
  %133 = load i16, i16* %132, align 2
  %conv126 = sext i16 %133 to i32
  %134 = load i32, i32* %pos, align 4
  %idxprom127 = sext i32 %134 to i64
  %135 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx128 = getelementptr inbounds i16, i16* %135, i64 %idxprom127
  %136 = load i16, i16* %arrayidx128, align 2
  %conv129 = sext i16 %136 to i32
  %add130 = add nsw i32 %conv126, %conv129
  store i32 %add130, i32* %cand_mv_x, align 4
  %137 = load i16*, i16** %mv_y.addr, align 8
  %138 = load i16, i16* %137, align 2
  %conv131 = sext i16 %138 to i32
  %139 = load i32, i32* %pos, align 4
  %idxprom132 = sext i32 %139 to i64
  %140 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx133 = getelementptr inbounds i16, i16* %140, i64 %idxprom132
  %141 = load i16, i16* %arrayidx133, align 2
  %conv134 = sext i16 %141 to i32
  %add135 = add nsw i32 %conv131, %conv134
  store i32 %add135, i32* %cand_mv_y, align 4
  %142 = load i32, i32* %lambda_factor, align 4
  %143 = load i32, i32* %cand_mv_x, align 4
  %144 = load i16, i16* %pred_mv_x.addr, align 2
  %conv136 = sext i16 %144 to i32
  %sub137 = sub nsw i32 %143, %conv136
  %idxprom138 = sext i32 %sub137 to i64
  %145 = load i32*, i32** @mvbits, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %145, i64 %idxprom138
  %146 = load i32, i32* %arrayidx139, align 4
  %147 = load i32, i32* %cand_mv_y, align 4
  %148 = load i16, i16* %pred_mv_y.addr, align 2
  %conv140 = sext i16 %148 to i32
  %sub141 = sub nsw i32 %147, %conv140
  %idxprom142 = sext i32 %sub141 to i64
  %149 = load i32*, i32** @mvbits, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %149, i64 %idxprom142
  %150 = load i32, i32* %arrayidx143, align 4
  %add144 = add nsw i32 %146, %150
  %mul145 = mul nsw i32 %142, %add144
  %shr = ashr i32 %mul145, 16
  store i32 %shr, i32* %mcost, align 4
  %151 = load i32, i32* %mcost, align 4
  %152 = load i32, i32* %min_mcost.addr, align 4
  %cmp146 = icmp sge i32 %151, %152
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %for.body
  br label %for.inc

if.end.149:                                       ; preds = %for.body
  %153 = load i32, i32* %cand_mv_x, align 4
  %154 = load i32, i32* %pic4_pix_x, align 4
  %add150 = add nsw i32 %153, %154
  store i32 %add150, i32* %cmv_x, align 4
  %155 = load i32, i32* %cand_mv_y, align 4
  %156 = load i32, i32* %pic4_pix_y, align 4
  %add151 = add nsw i32 %155, %156
  store i32 %add151, i32* %cmv_y, align 4
  %157 = load i32, i32* %dist_method, align 4
  %idxprom152 = sext i32 %157 to i64
  %arrayidx153 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom152
  %158 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx153, align 8
  %159 = load i16*, i16** %orig_pic.addr, align 8
  %160 = load i32, i32* %blocksize_y, align 4
  %161 = load i32, i32* %blocksize_x, align 4
  %162 = load i32, i32* %min_mcost.addr, align 4
  %163 = load i32, i32* %mcost, align 4
  %sub154 = sub nsw i32 %162, %163
  %164 = load i32, i32* %cmv_x, align 4
  %165 = load i32, i32* %cmv_y, align 4
  %call155 = call i32 %158(i16* %159, i32 %160, i32 %161, i32 %sub154, i32 %164, i32 %165)
  %166 = load i32, i32* %mcost, align 4
  %add156 = add nsw i32 %166, %call155
  store i32 %add156, i32* %mcost, align 4
  %167 = load i32, i32* %pos, align 4
  %cmp157 = icmp eq i32 %167, 0
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.165

land.lhs.true.159:                                ; preds = %if.end.149
  %168 = load i32, i32* %check_position0, align 4
  %tobool160 = icmp ne i32 %168, 0
  br i1 %tobool160, label %if.then.161, label %if.end.165

if.then.161:                                      ; preds = %land.lhs.true.159
  %169 = load i32, i32* %lambda_factor, align 4
  %mul162 = mul nsw i32 %169, 16
  %shr163 = ashr i32 %mul162, 16
  %170 = load i32, i32* %mcost, align 4
  %sub164 = sub nsw i32 %170, %shr163
  store i32 %sub164, i32* %mcost, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.161, %land.lhs.true.159, %if.end.149
  %171 = load i32, i32* %mcost, align 4
  %172 = load i32, i32* %min_mcost.addr, align 4
  %cmp166 = icmp slt i32 %171, %172
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.165
  %173 = load i32, i32* %mcost, align 4
  store i32 %173, i32* %min_mcost.addr, align 4
  %174 = load i32, i32* %pos, align 4
  store i32 %174, i32* %best_pos, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.end.165
  br label %for.inc

for.inc:                                          ; preds = %if.end.169, %if.then.148
  %175 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %175, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %176 = load i32, i32* %best_pos, align 4
  %tobool170 = icmp ne i32 %176, 0
  br i1 %tobool170, label %if.then.171, label %if.end.184

if.then.171:                                      ; preds = %for.end
  %177 = load i32, i32* %best_pos, align 4
  %idxprom172 = sext i32 %177 to i64
  %178 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx173 = getelementptr inbounds i16, i16* %178, i64 %idxprom172
  %179 = load i16, i16* %arrayidx173, align 2
  %conv174 = sext i16 %179 to i32
  %180 = load i16*, i16** %mv_x.addr, align 8
  %181 = load i16, i16* %180, align 2
  %conv175 = sext i16 %181 to i32
  %add176 = add nsw i32 %conv175, %conv174
  %conv177 = trunc i32 %add176 to i16
  store i16 %conv177, i16* %180, align 2
  %182 = load i32, i32* %best_pos, align 4
  %idxprom178 = sext i32 %182 to i64
  %183 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx179 = getelementptr inbounds i16, i16* %183, i64 %idxprom178
  %184 = load i16, i16* %arrayidx179, align 2
  %conv180 = sext i16 %184 to i32
  %185 = load i16*, i16** %mv_y.addr, align 8
  %186 = load i16, i16* %185, align 2
  %conv181 = sext i16 %186 to i32
  %add182 = add nsw i32 %conv181, %conv180
  %conv183 = trunc i32 %add182 to i16
  store i16 %conv183, i16* %185, align 2
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.171, %for.end
  %187 = load i32, i32* @start_me_refinement_qp, align 4
  %tobool185 = icmp ne i32 %187, 0
  br i1 %tobool185, label %if.end.187, label %if.then.186

if.then.186:                                      ; preds = %if.end.184
  store i32 2147483647, i32* %min_mcost.addr, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %if.end.184
  %188 = load i32, i32* %pic4_pix_x, align 4
  %189 = load i16*, i16** %mv_x.addr, align 8
  %190 = load i16, i16* %189, align 2
  %conv188 = sext i16 %190 to i32
  %add189 = add nsw i32 %188, %conv188
  %cmp190 = icmp sgt i32 %add189, 0
  br i1 %cmp190, label %land.lhs.true.192, label %if.else.208

land.lhs.true.192:                                ; preds = %if.end.187
  %191 = load i32, i32* %pic4_pix_x, align 4
  %192 = load i16*, i16** %mv_x.addr, align 8
  %193 = load i16, i16* %192, align 2
  %conv193 = sext i16 %193 to i32
  %add194 = add nsw i32 %191, %conv193
  %194 = load i32, i32* %max_pos_x4, align 4
  %cmp195 = icmp slt i32 %add194, %194
  br i1 %cmp195, label %land.lhs.true.197, label %if.else.208

land.lhs.true.197:                                ; preds = %land.lhs.true.192
  %195 = load i32, i32* %pic4_pix_y, align 4
  %196 = load i16*, i16** %mv_y.addr, align 8
  %197 = load i16, i16* %196, align 2
  %conv198 = sext i16 %197 to i32
  %add199 = add nsw i32 %195, %conv198
  %cmp200 = icmp sgt i32 %add199, 0
  br i1 %cmp200, label %land.lhs.true.202, label %if.else.208

land.lhs.true.202:                                ; preds = %land.lhs.true.197
  %198 = load i32, i32* %pic4_pix_y, align 4
  %199 = load i16*, i16** %mv_y.addr, align 8
  %200 = load i16, i16* %199, align 2
  %conv203 = sext i16 %200 to i32
  %add204 = add nsw i32 %198, %conv203
  %201 = load i32, i32* %max_pos_y4, align 4
  %cmp205 = icmp slt i32 %add204, %201
  br i1 %cmp205, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %land.lhs.true.202
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.209

if.else.208:                                      ; preds = %land.lhs.true.202, %land.lhs.true.197, %land.lhs.true.192, %if.end.187
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.208, %if.then.207
  %202 = load i32, i32* %apply_weights, align 4
  %mul210 = mul nsw i32 3, %202
  %add211 = add nsw i32 2, %mul210
  store i32 %add211, i32* %dist_method, align 4
  %203 = load i32*, i32** %lambda.addr, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %203, i64 2
  %204 = load i32, i32* %arrayidx212, align 4
  store i32 %204, i32* %lambda_factor, align 4
  store i32 0, i32* %best_pos, align 4
  %205 = load i32, i32* @start_me_refinement_qp, align 4
  store i32 %205, i32* %pos, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.253, %if.end.209
  %206 = load i32, i32* %pos, align 4
  %207 = load i32, i32* %search_pos4.addr, align 4
  %cmp214 = icmp slt i32 %206, %207
  br i1 %cmp214, label %for.body.216, label %for.end.255

for.body.216:                                     ; preds = %for.cond.213
  %208 = load i16*, i16** %mv_x.addr, align 8
  %209 = load i16, i16* %208, align 2
  %conv217 = sext i16 %209 to i32
  %210 = load i32, i32* %pos, align 4
  %idxprom218 = sext i32 %210 to i64
  %211 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx219 = getelementptr inbounds i16, i16* %211, i64 %idxprom218
  %212 = load i16, i16* %arrayidx219, align 2
  %conv220 = sext i16 %212 to i32
  %add221 = add nsw i32 %conv217, %conv220
  store i32 %add221, i32* %cand_mv_x, align 4
  %213 = load i16*, i16** %mv_y.addr, align 8
  %214 = load i16, i16* %213, align 2
  %conv222 = sext i16 %214 to i32
  %215 = load i32, i32* %pos, align 4
  %idxprom223 = sext i32 %215 to i64
  %216 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx224 = getelementptr inbounds i16, i16* %216, i64 %idxprom223
  %217 = load i16, i16* %arrayidx224, align 2
  %conv225 = sext i16 %217 to i32
  %add226 = add nsw i32 %conv222, %conv225
  store i32 %add226, i32* %cand_mv_y, align 4
  %218 = load i32, i32* %lambda_factor, align 4
  %219 = load i32, i32* %cand_mv_x, align 4
  %220 = load i16, i16* %pred_mv_x.addr, align 2
  %conv227 = sext i16 %220 to i32
  %sub228 = sub nsw i32 %219, %conv227
  %idxprom229 = sext i32 %sub228 to i64
  %221 = load i32*, i32** @mvbits, align 8
  %arrayidx230 = getelementptr inbounds i32, i32* %221, i64 %idxprom229
  %222 = load i32, i32* %arrayidx230, align 4
  %223 = load i32, i32* %cand_mv_y, align 4
  %224 = load i16, i16* %pred_mv_y.addr, align 2
  %conv231 = sext i16 %224 to i32
  %sub232 = sub nsw i32 %223, %conv231
  %idxprom233 = sext i32 %sub232 to i64
  %225 = load i32*, i32** @mvbits, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %225, i64 %idxprom233
  %226 = load i32, i32* %arrayidx234, align 4
  %add235 = add nsw i32 %222, %226
  %mul236 = mul nsw i32 %218, %add235
  %shr237 = ashr i32 %mul236, 16
  store i32 %shr237, i32* %mcost, align 4
  %227 = load i32, i32* %mcost, align 4
  %228 = load i32, i32* %min_mcost.addr, align 4
  %cmp238 = icmp sge i32 %227, %228
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %for.body.216
  br label %for.inc.253

if.end.241:                                       ; preds = %for.body.216
  %229 = load i32, i32* %cand_mv_x, align 4
  %230 = load i32, i32* %pic4_pix_x, align 4
  %add242 = add nsw i32 %229, %230
  store i32 %add242, i32* %cmv_x, align 4
  %231 = load i32, i32* %cand_mv_y, align 4
  %232 = load i32, i32* %pic4_pix_y, align 4
  %add243 = add nsw i32 %231, %232
  store i32 %add243, i32* %cmv_y, align 4
  %233 = load i32, i32* %dist_method, align 4
  %idxprom244 = sext i32 %233 to i64
  %arrayidx245 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom244
  %234 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx245, align 8
  %235 = load i16*, i16** %orig_pic.addr, align 8
  %236 = load i32, i32* %blocksize_y, align 4
  %237 = load i32, i32* %blocksize_x, align 4
  %238 = load i32, i32* %min_mcost.addr, align 4
  %239 = load i32, i32* %mcost, align 4
  %sub246 = sub nsw i32 %238, %239
  %240 = load i32, i32* %cmv_x, align 4
  %241 = load i32, i32* %cmv_y, align 4
  %call247 = call i32 %234(i16* %235, i32 %236, i32 %237, i32 %sub246, i32 %240, i32 %241)
  %242 = load i32, i32* %mcost, align 4
  %add248 = add nsw i32 %242, %call247
  store i32 %add248, i32* %mcost, align 4
  %243 = load i32, i32* %mcost, align 4
  %244 = load i32, i32* %min_mcost.addr, align 4
  %cmp249 = icmp slt i32 %243, %244
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.end.241
  %245 = load i32, i32* %mcost, align 4
  store i32 %245, i32* %min_mcost.addr, align 4
  %246 = load i32, i32* %pos, align 4
  store i32 %246, i32* %best_pos, align 4
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.251, %if.end.241
  br label %for.inc.253

for.inc.253:                                      ; preds = %if.end.252, %if.then.240
  %247 = load i32, i32* %pos, align 4
  %inc254 = add nsw i32 %247, 1
  store i32 %inc254, i32* %pos, align 4
  br label %for.cond.213

for.end.255:                                      ; preds = %for.cond.213
  %248 = load i32, i32* %best_pos, align 4
  %tobool256 = icmp ne i32 %248, 0
  br i1 %tobool256, label %if.then.257, label %if.end.270

if.then.257:                                      ; preds = %for.end.255
  %249 = load i32, i32* %best_pos, align 4
  %idxprom258 = sext i32 %249 to i64
  %250 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx259 = getelementptr inbounds i16, i16* %250, i64 %idxprom258
  %251 = load i16, i16* %arrayidx259, align 2
  %conv260 = sext i16 %251 to i32
  %252 = load i16*, i16** %mv_x.addr, align 8
  %253 = load i16, i16* %252, align 2
  %conv261 = sext i16 %253 to i32
  %add262 = add nsw i32 %conv261, %conv260
  %conv263 = trunc i32 %add262 to i16
  store i16 %conv263, i16* %252, align 2
  %254 = load i32, i32* %best_pos, align 4
  %idxprom264 = sext i32 %254 to i64
  %255 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx265 = getelementptr inbounds i16, i16* %255, i64 %idxprom264
  %256 = load i16, i16* %arrayidx265, align 2
  %conv266 = sext i16 %256 to i32
  %257 = load i16*, i16** %mv_y.addr, align 8
  %258 = load i16, i16* %257, align 2
  %conv267 = sext i16 %258 to i32
  %add268 = add nsw i32 %conv267, %conv266
  %conv269 = trunc i32 %add268 to i16
  store i16 %conv269, i16* %257, align 2
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.257, %for.end.255
  %259 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %259
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

; Function Attrs: nounwind uwtable
define i32 @SubPelBlockSearchBiPred(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i16* %s_mv_x, i16* %s_mv_y, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, i32* %lambda) #0 {
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
  %s_mv_x.addr = alloca i16*, align 8
  %s_mv_y.addr = alloca i16*, align 8
  %search_pos2.addr = alloca i32, align 4
  %search_pos4.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda.addr = alloca i32*, align 8
  %apply_weights = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %offset1 = alloca i16, align 2
  %offset2 = alloca i16, align 2
  %pos = alloca i32, align 4
  %best_pos = alloca i32, align 4
  %mcost = alloca i32, align 4
  %cand_mv_x = alloca i32, align 4
  %cand_mv_y = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %pic4_pix_x = alloca i32, align 4
  %pic4_pix_y = alloca i32, align 4
  %max_pos2 = alloca i32, align 4
  %cmv_x = alloca i32, align 4
  %cmv_y = alloca i32, align 4
  %smv_x = alloca i32, align 4
  %smv_y = alloca i32, align 4
  %ref_picture1 = alloca %struct.storable_picture*, align 8
  %ref_picture2 = alloca %struct.storable_picture*, align 8
  %max_pos_x4 = alloca i32, align 4
  %max_pos_y4 = alloca i32, align 4
  %lambda_factor = alloca i32, align 4
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
  store i16* %s_mv_x, i16** %s_mv_x.addr, align 8
  store i16* %s_mv_y, i16** %s_mv_y.addr, align 8
  store i32 %search_pos2, i32* %search_pos2.addr, align 4
  store i32 %search_pos4, i32* %search_pos4.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32* %lambda, i32** %lambda.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 20
  %1 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp = icmp ugt i32 %1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %apply_weights, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 61
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %list_offset1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 21
  %6 = load i32, i32* %list_offset1, align 4
  store i32 %6, i32* %list_offset, align 4
  %7 = load i32, i32* %apply_weights, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false.14

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %list.addr, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %cond.true.4, label %cond.false

cond.true.4:                                      ; preds = %cond.true
  %9 = load i16, i16* %ref.addr, align 2
  %idxprom5 = sext i16 %9 to i64
  %10 = load i32, i32* %list_offset, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32***, i32**** @wp_offset, align 8
  %arrayidx7 = getelementptr inbounds i32**, i32*** %11, i64 %idxprom6
  %12 = load i32**, i32*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %12, i64 %idxprom5
  %13 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx9, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %15 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 %15, 1
  %idxprom10 = sext i32 %add to i64
  %16 = load i32***, i32**** @wp_offset, align 8
  %arrayidx11 = getelementptr inbounds i32**, i32*** %16, i64 %idxprom10
  %17 = load i32**, i32*** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %17, i64 0
  %18 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx13, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.4
  %cond = phi i32 [ %14, %cond.true.4 ], [ %19, %cond.false ]
  br label %cond.end.15

cond.false.14:                                    ; preds = %entry
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.end
  %cond16 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false.14 ]
  %conv17 = trunc i32 %cond16 to i16
  store i16 %conv17, i16* %offset1, align 2
  %20 = load i32, i32* %apply_weights, align 4
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.36

cond.true.19:                                     ; preds = %cond.end.15
  %21 = load i32, i32* %list.addr, align 4
  %cmp20 = icmp eq i32 %21, 0
  br i1 %cmp20, label %cond.true.22, label %cond.false.29

cond.true.22:                                     ; preds = %cond.true.19
  %22 = load i16, i16* %ref.addr, align 2
  %idxprom23 = sext i16 %22 to i64
  %23 = load i32, i32* %list_offset, align 4
  %add24 = add nsw i32 %23, 1
  %idxprom25 = sext i32 %add24 to i64
  %24 = load i32***, i32**** @wp_offset, align 8
  %arrayidx26 = getelementptr inbounds i32**, i32*** %24, i64 %idxprom25
  %25 = load i32**, i32*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32*, i32** %25, i64 %idxprom23
  %26 = load i32*, i32** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx28, align 4
  br label %cond.end.34

cond.false.29:                                    ; preds = %cond.true.19
  %28 = load i32, i32* %list_offset, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load i32***, i32**** @wp_offset, align 8
  %arrayidx31 = getelementptr inbounds i32**, i32*** %29, i64 %idxprom30
  %30 = load i32**, i32*** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %30, i64 0
  %31 = load i32*, i32** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx33, align 4
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.29, %cond.true.22
  %cond35 = phi i32 [ %27, %cond.true.22 ], [ %32, %cond.false.29 ]
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end.15
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.end.34
  %cond38 = phi i32 [ %cond35, %cond.end.34 ], [ 0, %cond.false.36 ]
  %conv39 = trunc i32 %cond38 to i16
  store i16 %conv39, i16* %offset2, align 2
  %33 = load i32, i32* %blocktype.addr, align 4
  %idxprom40 = sext i32 %33 to i64
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 18
  %arrayidx41 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx41, i32 0, i64 0
  %35 = load i32, i32* %arrayidx42, align 4
  store i32 %35, i32* %blocksize_x, align 4
  %36 = load i32, i32* %blocktype.addr, align 4
  %idxprom43 = sext i32 %36 to i64
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 18
  %arrayidx45 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size44, i32 0, i64 %idxprom43
  %arrayidx46 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx45, i32 0, i64 1
  %38 = load i32, i32* %arrayidx46, align 4
  store i32 %38, i32* %blocksize_y, align 4
  %39 = load i32, i32* %pic_pix_x.addr, align 4
  %add47 = add nsw i32 %39, 20
  %shl = shl i32 %add47, 2
  store i32 %shl, i32* %pic4_pix_x, align 4
  %40 = load i32, i32* %pic_pix_y.addr, align 4
  %add48 = add nsw i32 %40, 20
  %shl49 = shl i32 %add48, 2
  store i32 %shl49, i32* %pic4_pix_y, align 4
  %41 = load i32, i32* @start_me_refinement_hp, align 4
  %tobool50 = icmp ne i32 %41, 0
  br i1 %tobool50, label %cond.false.52, label %cond.true.51

cond.true.51:                                     ; preds = %cond.end.37
  %42 = load i32, i32* %search_pos2.addr, align 4
  %call = call i32 @imax(i32 1, i32 %42)
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end.37
  %43 = load i32, i32* %search_pos2.addr, align 4
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.51
  %cond54 = phi i32 [ %call, %cond.true.51 ], [ %43, %cond.false.52 ]
  store i32 %cond54, i32* %max_pos2, align 4
  %44 = load i16*, i16** %s_mv_x.addr, align 8
  %45 = load i16, i16* %44, align 2
  %conv55 = sext i16 %45 to i32
  %46 = load i32, i32* %pic4_pix_x, align 4
  %add56 = add nsw i32 %conv55, %46
  store i32 %add56, i32* %smv_x, align 4
  %47 = load i16*, i16** %s_mv_y.addr, align 8
  %48 = load i16, i16* %47, align 2
  %conv57 = sext i16 %48 to i32
  %49 = load i32, i32* %pic4_pix_y, align 4
  %add58 = add nsw i32 %conv57, %49
  store i32 %add58, i32* %smv_y, align 4
  %50 = load i16, i16* %ref.addr, align 2
  %idxprom59 = sext i16 %50 to i64
  %51 = load i32, i32* %list.addr, align 4
  %52 = load i32, i32* %list_offset, align 4
  %add60 = add nsw i32 %51, %52
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom61
  %53 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %53, i64 %idxprom59
  %54 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx63, align 8
  store %struct.storable_picture* %54, %struct.storable_picture** %ref_picture1, align 8
  %55 = load i32, i32* %list.addr, align 4
  %xor = xor i32 %55, 1
  %56 = load i32, i32* %list_offset, align 4
  %add64 = add nsw i32 %xor, %56
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom65
  %57 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %57, i64 0
  %58 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx67, align 8
  store %struct.storable_picture* %58, %struct.storable_picture** %ref_picture2, align 8
  %59 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 18
  %60 = load i32, i32* %size_x, align 4
  %61 = load i32, i32* %blocksize_x, align 4
  %sub = sub nsw i32 %60, %61
  %add68 = add nsw i32 %sub, 40
  %shl69 = shl i32 %add68, 2
  store i32 %shl69, i32* %max_pos_x4, align 4
  %62 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %62, i32 0, i32 19
  %63 = load i32, i32* %size_y, align 4
  %64 = load i32, i32* %blocksize_y, align 4
  %sub70 = sub nsw i32 %63, %64
  %add71 = add nsw i32 %sub70, 40
  %shl72 = shl i32 %add71, 2
  store i32 %shl72, i32* %max_pos_y4, align 4
  %65 = load i32*, i32** %lambda.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %65, i64 1
  %66 = load i32, i32* %arrayidx73, align 4
  store i32 %66, i32* %lambda_factor, align 4
  %67 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 30
  %68 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %68, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %69 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgY_sub74 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %69, i32 0, i32 30
  %70 = load i16****, i16***** %imgY_sub74, align 8
  store i16**** %70, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %71 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x75 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 18
  %72 = load i32, i32* %size_x75, align 4
  %conv76 = trunc i32 %72 to i16
  store i16 %conv76, i16* @img_width, align 2
  %73 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y77 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %73, i32 0, i32 19
  %74 = load i32, i32* %size_y77, align 4
  %conv78 = trunc i32 %74 to i16
  store i16 %conv78, i16* @img_height, align 2
  %75 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 22
  %76 = load i32, i32* %size_x_pad, align 4
  store i32 %76, i32* @width_pad, align 4
  %77 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 23
  %78 = load i32, i32* %size_y_pad, align 4
  store i32 %78, i32* @height_pad, align 4
  %79 = load i32, i32* %apply_weights, align 4
  %tobool79 = icmp ne i32 %79, 0
  br i1 %tobool79, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.53
  %80 = load i32, i32* %list.addr, align 4
  %cmp80 = icmp eq i32 %80, 0
  br i1 %cmp80, label %cond.true.82, label %cond.false.89

cond.true.82:                                     ; preds = %if.then
  %81 = load i16, i16* %ref.addr, align 2
  %idxprom83 = sext i16 %81 to i64
  %82 = load i32, i32* %list_offset, align 4
  %idxprom84 = sext i32 %82 to i64
  %83 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx85 = getelementptr inbounds i32***, i32**** %83, i64 %idxprom84
  %84 = load i32***, i32**** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32**, i32*** %84, i64 %idxprom83
  %85 = load i32**, i32*** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i32*, i32** %85, i64 0
  %86 = load i32*, i32** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %86, i64 0
  %87 = load i32, i32* %arrayidx88, align 4
  br label %cond.end.97

cond.false.89:                                    ; preds = %if.then
  %88 = load i16, i16* %ref.addr, align 2
  %idxprom90 = sext i16 %88 to i64
  %89 = load i32, i32* %list_offset, align 4
  %add91 = add nsw i32 %89, 1
  %idxprom92 = sext i32 %add91 to i64
  %90 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx93 = getelementptr inbounds i32***, i32**** %90, i64 %idxprom92
  %91 = load i32***, i32**** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32**, i32*** %91, i64 0
  %92 = load i32**, i32*** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i32*, i32** %92, i64 %idxprom90
  %93 = load i32*, i32** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %93, i64 0
  %94 = load i32, i32* %arrayidx96, align 4
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.89, %cond.true.82
  %cond98 = phi i32 [ %87, %cond.true.82 ], [ %94, %cond.false.89 ]
  %conv99 = trunc i32 %cond98 to i16
  store i16 %conv99, i16* @weight1, align 2
  %95 = load i32, i32* %list.addr, align 4
  %cmp100 = icmp eq i32 %95, 0
  br i1 %cmp100, label %cond.true.102, label %cond.false.110

cond.true.102:                                    ; preds = %cond.end.97
  %96 = load i16, i16* %ref.addr, align 2
  %idxprom103 = sext i16 %96 to i64
  %97 = load i32, i32* %list_offset, align 4
  %add104 = add nsw i32 %97, 1
  %idxprom105 = sext i32 %add104 to i64
  %98 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx106 = getelementptr inbounds i32***, i32**** %98, i64 %idxprom105
  %99 = load i32***, i32**** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32**, i32*** %99, i64 %idxprom103
  %100 = load i32**, i32*** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32*, i32** %100, i64 0
  %101 = load i32*, i32** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %101, i64 0
  %102 = load i32, i32* %arrayidx109, align 4
  br label %cond.end.117

cond.false.110:                                   ; preds = %cond.end.97
  %103 = load i16, i16* %ref.addr, align 2
  %idxprom111 = sext i16 %103 to i64
  %104 = load i32, i32* %list_offset, align 4
  %idxprom112 = sext i32 %104 to i64
  %105 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx113 = getelementptr inbounds i32***, i32**** %105, i64 %idxprom112
  %106 = load i32***, i32**** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i32**, i32*** %106, i64 0
  %107 = load i32**, i32*** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i32*, i32** %107, i64 %idxprom111
  %108 = load i32*, i32** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %108, i64 0
  %109 = load i32, i32* %arrayidx116, align 4
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.110, %cond.true.102
  %cond118 = phi i32 [ %102, %cond.true.102 ], [ %109, %cond.false.110 ]
  %conv119 = trunc i32 %cond118 to i16
  store i16 %conv119, i16* @weight2, align 2
  %110 = load i16, i16* %offset1, align 2
  %conv120 = sext i16 %110 to i32
  %111 = load i16, i16* %offset2, align 2
  %conv121 = sext i16 %111 to i32
  %add122 = add nsw i32 %conv120, %conv121
  %add123 = add nsw i32 %add122, 1
  %shr = ashr i32 %add123, 1
  %conv124 = trunc i32 %shr to i16
  store i16 %conv124, i16* @offsetBi, align 2
  %112 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred2, i32 0, i64 1), align 8
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* %112, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.53
  %113 = load i32, i32* @luma_log_weight_denom, align 4
  %shl125 = shl i32 1, %113
  %conv126 = trunc i32 %shl125 to i16
  store i16 %conv126, i16* @weight1, align 2
  %114 = load i32, i32* @luma_log_weight_denom, align 4
  %shl127 = shl i32 1, %114
  %conv128 = trunc i32 %shl127 to i16
  store i16 %conv128, i16* @weight2, align 2
  store i16 0, i16* @offsetBi, align 2
  %115 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred1, i32 0, i64 1), align 8
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* %115, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.117
  %116 = load i32, i32* @ChromaMEEnable, align 4
  %tobool129 = icmp ne i32 %116, 0
  br i1 %tobool129, label %if.then.130, label %if.end.296

if.then.130:                                      ; preds = %if.end
  %117 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %117, i32 0, i32 32
  %118 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx131 = getelementptr inbounds i16****, i16***** %118, i64 0
  %119 = load i16****, i16***** %arrayidx131, align 8
  store i16**** %119, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 0), align 8
  %120 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgUV_sub132 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %120, i32 0, i32 32
  %121 = load i16*****, i16****** %imgUV_sub132, align 8
  %arrayidx133 = getelementptr inbounds i16****, i16***** %121, i64 1
  %122 = load i16****, i16***** %arrayidx133, align 8
  store i16**** %122, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 1), align 8
  %123 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgUV_sub134 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %123, i32 0, i32 32
  %124 = load i16*****, i16****** %imgUV_sub134, align 8
  %arrayidx135 = getelementptr inbounds i16****, i16***** %124, i64 0
  %125 = load i16****, i16***** %arrayidx135, align 8
  store i16**** %125, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 0), align 8
  %126 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgUV_sub136 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %126, i32 0, i32 32
  %127 = load i16*****, i16****** %imgUV_sub136, align 8
  %arrayidx137 = getelementptr inbounds i16****, i16***** %127, i64 1
  %128 = load i16****, i16***** %arrayidx137, align 8
  store i16**** %128, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 1), align 8
  %129 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %129, i32 0, i32 24
  %130 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %130, i32* @width_pad_cr, align 4
  %131 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %131, i32 0, i32 25
  %132 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %132, i32* @height_pad_cr, align 4
  %133 = load i32, i32* %apply_weights, align 4
  %tobool138 = icmp ne i32 %133, 0
  br i1 %tobool138, label %if.then.139, label %if.else.286

if.then.139:                                      ; preds = %if.then.130
  %134 = load i32, i32* %list.addr, align 4
  %cmp140 = icmp eq i32 %134, 0
  br i1 %cmp140, label %cond.true.142, label %cond.false.149

cond.true.142:                                    ; preds = %if.then.139
  %135 = load i16, i16* %ref.addr, align 2
  %idxprom143 = sext i16 %135 to i64
  %136 = load i32, i32* %list_offset, align 4
  %idxprom144 = sext i32 %136 to i64
  %137 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx145 = getelementptr inbounds i32***, i32**** %137, i64 %idxprom144
  %138 = load i32***, i32**** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds i32**, i32*** %138, i64 %idxprom143
  %139 = load i32**, i32*** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i32*, i32** %139, i64 0
  %140 = load i32*, i32** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %140, i64 1
  %141 = load i32, i32* %arrayidx148, align 4
  br label %cond.end.157

cond.false.149:                                   ; preds = %if.then.139
  %142 = load i16, i16* %ref.addr, align 2
  %idxprom150 = sext i16 %142 to i64
  %143 = load i32, i32* %list_offset, align 4
  %add151 = add nsw i32 %143, 1
  %idxprom152 = sext i32 %add151 to i64
  %144 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx153 = getelementptr inbounds i32***, i32**** %144, i64 %idxprom152
  %145 = load i32***, i32**** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32**, i32*** %145, i64 0
  %146 = load i32**, i32*** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i32*, i32** %146, i64 %idxprom150
  %147 = load i32*, i32** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %147, i64 1
  %148 = load i32, i32* %arrayidx156, align 4
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.149, %cond.true.142
  %cond158 = phi i32 [ %141, %cond.true.142 ], [ %148, %cond.false.149 ]
  %conv159 = trunc i32 %cond158 to i16
  store i16 %conv159, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %149 = load i32, i32* %list.addr, align 4
  %cmp160 = icmp eq i32 %149, 0
  br i1 %cmp160, label %cond.true.162, label %cond.false.169

cond.true.162:                                    ; preds = %cond.end.157
  %150 = load i16, i16* %ref.addr, align 2
  %idxprom163 = sext i16 %150 to i64
  %151 = load i32, i32* %list_offset, align 4
  %idxprom164 = sext i32 %151 to i64
  %152 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx165 = getelementptr inbounds i32***, i32**** %152, i64 %idxprom164
  %153 = load i32***, i32**** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds i32**, i32*** %153, i64 %idxprom163
  %154 = load i32**, i32*** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i32*, i32** %154, i64 0
  %155 = load i32*, i32** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %155, i64 2
  %156 = load i32, i32* %arrayidx168, align 4
  br label %cond.end.177

cond.false.169:                                   ; preds = %cond.end.157
  %157 = load i16, i16* %ref.addr, align 2
  %idxprom170 = sext i16 %157 to i64
  %158 = load i32, i32* %list_offset, align 4
  %add171 = add nsw i32 %158, 1
  %idxprom172 = sext i32 %add171 to i64
  %159 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx173 = getelementptr inbounds i32***, i32**** %159, i64 %idxprom172
  %160 = load i32***, i32**** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds i32**, i32*** %160, i64 0
  %161 = load i32**, i32*** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i32*, i32** %161, i64 %idxprom170
  %162 = load i32*, i32** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %162, i64 2
  %163 = load i32, i32* %arrayidx176, align 4
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.169, %cond.true.162
  %cond178 = phi i32 [ %156, %cond.true.162 ], [ %163, %cond.false.169 ]
  %conv179 = trunc i32 %cond178 to i16
  store i16 %conv179, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %164 = load i32, i32* %list.addr, align 4
  %cmp180 = icmp eq i32 %164, 0
  br i1 %cmp180, label %cond.true.182, label %cond.false.190

cond.true.182:                                    ; preds = %cond.end.177
  %165 = load i16, i16* %ref.addr, align 2
  %idxprom183 = sext i16 %165 to i64
  %166 = load i32, i32* %list_offset, align 4
  %add184 = add nsw i32 %166, 1
  %idxprom185 = sext i32 %add184 to i64
  %167 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx186 = getelementptr inbounds i32***, i32**** %167, i64 %idxprom185
  %168 = load i32***, i32**** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32**, i32*** %168, i64 %idxprom183
  %169 = load i32**, i32*** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i32*, i32** %169, i64 0
  %170 = load i32*, i32** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %170, i64 1
  %171 = load i32, i32* %arrayidx189, align 4
  br label %cond.end.197

cond.false.190:                                   ; preds = %cond.end.177
  %172 = load i16, i16* %ref.addr, align 2
  %idxprom191 = sext i16 %172 to i64
  %173 = load i32, i32* %list_offset, align 4
  %idxprom192 = sext i32 %173 to i64
  %174 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx193 = getelementptr inbounds i32***, i32**** %174, i64 %idxprom192
  %175 = load i32***, i32**** %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds i32**, i32*** %175, i64 0
  %176 = load i32**, i32*** %arrayidx194, align 8
  %arrayidx195 = getelementptr inbounds i32*, i32** %176, i64 %idxprom191
  %177 = load i32*, i32** %arrayidx195, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %177, i64 1
  %178 = load i32, i32* %arrayidx196, align 4
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.190, %cond.true.182
  %cond198 = phi i32 [ %171, %cond.true.182 ], [ %178, %cond.false.190 ]
  %conv199 = trunc i32 %cond198 to i16
  store i16 %conv199, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %179 = load i32, i32* %list.addr, align 4
  %cmp200 = icmp eq i32 %179, 0
  br i1 %cmp200, label %cond.true.202, label %cond.false.210

cond.true.202:                                    ; preds = %cond.end.197
  %180 = load i16, i16* %ref.addr, align 2
  %idxprom203 = sext i16 %180 to i64
  %181 = load i32, i32* %list_offset, align 4
  %add204 = add nsw i32 %181, 1
  %idxprom205 = sext i32 %add204 to i64
  %182 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx206 = getelementptr inbounds i32***, i32**** %182, i64 %idxprom205
  %183 = load i32***, i32**** %arrayidx206, align 8
  %arrayidx207 = getelementptr inbounds i32**, i32*** %183, i64 %idxprom203
  %184 = load i32**, i32*** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i32*, i32** %184, i64 0
  %185 = load i32*, i32** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %185, i64 2
  %186 = load i32, i32* %arrayidx209, align 4
  br label %cond.end.217

cond.false.210:                                   ; preds = %cond.end.197
  %187 = load i16, i16* %ref.addr, align 2
  %idxprom211 = sext i16 %187 to i64
  %188 = load i32, i32* %list_offset, align 4
  %idxprom212 = sext i32 %188 to i64
  %189 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx213 = getelementptr inbounds i32***, i32**** %189, i64 %idxprom212
  %190 = load i32***, i32**** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i32**, i32*** %190, i64 0
  %191 = load i32**, i32*** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i32*, i32** %191, i64 %idxprom211
  %192 = load i32*, i32** %arrayidx215, align 8
  %arrayidx216 = getelementptr inbounds i32, i32* %192, i64 2
  %193 = load i32, i32* %arrayidx216, align 4
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.210, %cond.true.202
  %cond218 = phi i32 [ %186, %cond.true.202 ], [ %193, %cond.false.210 ]
  %conv219 = trunc i32 %cond218 to i16
  store i16 %conv219, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  %194 = load i32, i32* %list.addr, align 4
  %cmp220 = icmp eq i32 %194, 0
  br i1 %cmp220, label %cond.true.222, label %cond.false.237

cond.true.222:                                    ; preds = %cond.end.217
  %195 = load i16, i16* %ref.addr, align 2
  %idxprom223 = sext i16 %195 to i64
  %196 = load i32, i32* %list_offset, align 4
  %idxprom224 = sext i32 %196 to i64
  %197 = load i32***, i32**** @wp_offset, align 8
  %arrayidx225 = getelementptr inbounds i32**, i32*** %197, i64 %idxprom224
  %198 = load i32**, i32*** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i32*, i32** %198, i64 %idxprom223
  %199 = load i32*, i32** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %199, i64 1
  %200 = load i32, i32* %arrayidx227, align 4
  %201 = load i16, i16* %ref.addr, align 2
  %idxprom228 = sext i16 %201 to i64
  %202 = load i32, i32* %list_offset, align 4
  %add229 = add nsw i32 %202, 1
  %idxprom230 = sext i32 %add229 to i64
  %203 = load i32***, i32**** @wp_offset, align 8
  %arrayidx231 = getelementptr inbounds i32**, i32*** %203, i64 %idxprom230
  %204 = load i32**, i32*** %arrayidx231, align 8
  %arrayidx232 = getelementptr inbounds i32*, i32** %204, i64 %idxprom228
  %205 = load i32*, i32** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %205, i64 1
  %206 = load i32, i32* %arrayidx233, align 4
  %add234 = add nsw i32 %200, %206
  %add235 = add nsw i32 %add234, 1
  %shr236 = ashr i32 %add235, 1
  br label %cond.end.250

cond.false.237:                                   ; preds = %cond.end.217
  %207 = load i32, i32* %list_offset, align 4
  %add238 = add nsw i32 %207, 1
  %idxprom239 = sext i32 %add238 to i64
  %208 = load i32***, i32**** @wp_offset, align 8
  %arrayidx240 = getelementptr inbounds i32**, i32*** %208, i64 %idxprom239
  %209 = load i32**, i32*** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds i32*, i32** %209, i64 0
  %210 = load i32*, i32** %arrayidx241, align 8
  %arrayidx242 = getelementptr inbounds i32, i32* %210, i64 1
  %211 = load i32, i32* %arrayidx242, align 4
  %212 = load i32, i32* %list_offset, align 4
  %idxprom243 = sext i32 %212 to i64
  %213 = load i32***, i32**** @wp_offset, align 8
  %arrayidx244 = getelementptr inbounds i32**, i32*** %213, i64 %idxprom243
  %214 = load i32**, i32*** %arrayidx244, align 8
  %arrayidx245 = getelementptr inbounds i32*, i32** %214, i64 0
  %215 = load i32*, i32** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds i32, i32* %215, i64 1
  %216 = load i32, i32* %arrayidx246, align 4
  %add247 = add nsw i32 %211, %216
  %add248 = add nsw i32 %add247, 1
  %shr249 = ashr i32 %add248, 1
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.237, %cond.true.222
  %cond251 = phi i32 [ %shr236, %cond.true.222 ], [ %shr249, %cond.false.237 ]
  %conv252 = trunc i32 %cond251 to i16
  store i16 %conv252, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  %217 = load i32, i32* %list.addr, align 4
  %cmp253 = icmp eq i32 %217, 0
  br i1 %cmp253, label %cond.true.255, label %cond.false.270

cond.true.255:                                    ; preds = %cond.end.250
  %218 = load i16, i16* %ref.addr, align 2
  %idxprom256 = sext i16 %218 to i64
  %219 = load i32, i32* %list_offset, align 4
  %idxprom257 = sext i32 %219 to i64
  %220 = load i32***, i32**** @wp_offset, align 8
  %arrayidx258 = getelementptr inbounds i32**, i32*** %220, i64 %idxprom257
  %221 = load i32**, i32*** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i32*, i32** %221, i64 %idxprom256
  %222 = load i32*, i32** %arrayidx259, align 8
  %arrayidx260 = getelementptr inbounds i32, i32* %222, i64 2
  %223 = load i32, i32* %arrayidx260, align 4
  %224 = load i16, i16* %ref.addr, align 2
  %idxprom261 = sext i16 %224 to i64
  %225 = load i32, i32* %list_offset, align 4
  %add262 = add nsw i32 %225, 1
  %idxprom263 = sext i32 %add262 to i64
  %226 = load i32***, i32**** @wp_offset, align 8
  %arrayidx264 = getelementptr inbounds i32**, i32*** %226, i64 %idxprom263
  %227 = load i32**, i32*** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i32*, i32** %227, i64 %idxprom261
  %228 = load i32*, i32** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %228, i64 2
  %229 = load i32, i32* %arrayidx266, align 4
  %add267 = add nsw i32 %223, %229
  %add268 = add nsw i32 %add267, 1
  %shr269 = ashr i32 %add268, 1
  br label %cond.end.283

cond.false.270:                                   ; preds = %cond.end.250
  %230 = load i32, i32* %list_offset, align 4
  %add271 = add nsw i32 %230, 1
  %idxprom272 = sext i32 %add271 to i64
  %231 = load i32***, i32**** @wp_offset, align 8
  %arrayidx273 = getelementptr inbounds i32**, i32*** %231, i64 %idxprom272
  %232 = load i32**, i32*** %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds i32*, i32** %232, i64 0
  %233 = load i32*, i32** %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds i32, i32* %233, i64 2
  %234 = load i32, i32* %arrayidx275, align 4
  %235 = load i32, i32* %list_offset, align 4
  %idxprom276 = sext i32 %235 to i64
  %236 = load i32***, i32**** @wp_offset, align 8
  %arrayidx277 = getelementptr inbounds i32**, i32*** %236, i64 %idxprom276
  %237 = load i32**, i32*** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i32*, i32** %237, i64 0
  %238 = load i32*, i32** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i32, i32* %238, i64 2
  %239 = load i32, i32* %arrayidx279, align 4
  %add280 = add nsw i32 %234, %239
  %add281 = add nsw i32 %add280, 1
  %shr282 = ashr i32 %add281, 1
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.270, %cond.true.255
  %cond284 = phi i32 [ %shr269, %cond.true.255 ], [ %shr282, %cond.false.270 ]
  %conv285 = trunc i32 %cond284 to i16
  store i16 %conv285, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.295

if.else.286:                                      ; preds = %if.then.130
  %240 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl287 = shl i32 1, %240
  %conv288 = trunc i32 %shl287 to i16
  store i16 %conv288, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %241 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl289 = shl i32 1, %241
  %conv290 = trunc i32 %shl289 to i16
  store i16 %conv290, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %242 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl291 = shl i32 1, %242
  %conv292 = trunc i32 %shl291 to i16
  store i16 %conv292, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %243 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl293 = shl i32 1, %243
  %conv294 = trunc i32 %shl293 to i16
  store i16 %conv294, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.295

if.end.295:                                       ; preds = %if.else.286, %cond.end.283
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.end
  %244 = load i32, i32* %pic4_pix_x, align 4
  %245 = load i16*, i16** %mv_x.addr, align 8
  %246 = load i16, i16* %245, align 2
  %conv297 = sext i16 %246 to i32
  %add298 = add nsw i32 %244, %conv297
  %cmp299 = icmp sgt i32 %add298, 1
  br i1 %cmp299, label %land.lhs.true, label %if.else.318

land.lhs.true:                                    ; preds = %if.end.296
  %247 = load i32, i32* %pic4_pix_x, align 4
  %248 = load i16*, i16** %mv_x.addr, align 8
  %249 = load i16, i16* %248, align 2
  %conv301 = sext i16 %249 to i32
  %add302 = add nsw i32 %247, %conv301
  %250 = load i32, i32* %max_pos_x4, align 4
  %sub303 = sub nsw i32 %250, 1
  %cmp304 = icmp slt i32 %add302, %sub303
  br i1 %cmp304, label %land.lhs.true.306, label %if.else.318

land.lhs.true.306:                                ; preds = %land.lhs.true
  %251 = load i32, i32* %pic4_pix_y, align 4
  %252 = load i16*, i16** %mv_y.addr, align 8
  %253 = load i16, i16* %252, align 2
  %conv307 = sext i16 %253 to i32
  %add308 = add nsw i32 %251, %conv307
  %cmp309 = icmp sgt i32 %add308, 1
  br i1 %cmp309, label %land.lhs.true.311, label %if.else.318

land.lhs.true.311:                                ; preds = %land.lhs.true.306
  %254 = load i32, i32* %pic4_pix_y, align 4
  %255 = load i16*, i16** %mv_y.addr, align 8
  %256 = load i16, i16* %255, align 2
  %conv312 = sext i16 %256 to i32
  %add313 = add nsw i32 %254, %conv312
  %257 = load i32, i32* %max_pos_y4, align 4
  %sub314 = sub nsw i32 %257, 1
  %cmp315 = icmp slt i32 %add313, %sub314
  br i1 %cmp315, label %if.then.317, label %if.else.318

if.then.317:                                      ; preds = %land.lhs.true.311
  store i32 0, i32* @bipred2_access_method, align 4
  br label %if.end.319

if.else.318:                                      ; preds = %land.lhs.true.311, %land.lhs.true.306, %land.lhs.true, %if.end.296
  store i32 1, i32* @bipred2_access_method, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.else.318, %if.then.317
  %258 = load i32, i32* %pic4_pix_x, align 4
  %259 = load i16*, i16** %s_mv_x.addr, align 8
  %260 = load i16, i16* %259, align 2
  %conv320 = sext i16 %260 to i32
  %add321 = add nsw i32 %258, %conv320
  %cmp322 = icmp sgt i32 %add321, 1
  br i1 %cmp322, label %land.lhs.true.324, label %if.else.342

land.lhs.true.324:                                ; preds = %if.end.319
  %261 = load i32, i32* %pic4_pix_x, align 4
  %262 = load i16*, i16** %s_mv_x.addr, align 8
  %263 = load i16, i16* %262, align 2
  %conv325 = sext i16 %263 to i32
  %add326 = add nsw i32 %261, %conv325
  %264 = load i32, i32* %max_pos_x4, align 4
  %sub327 = sub nsw i32 %264, 1
  %cmp328 = icmp slt i32 %add326, %sub327
  br i1 %cmp328, label %land.lhs.true.330, label %if.else.342

land.lhs.true.330:                                ; preds = %land.lhs.true.324
  %265 = load i32, i32* %pic4_pix_y, align 4
  %266 = load i16*, i16** %s_mv_y.addr, align 8
  %267 = load i16, i16* %266, align 2
  %conv331 = sext i16 %267 to i32
  %add332 = add nsw i32 %265, %conv331
  %cmp333 = icmp sgt i32 %add332, 1
  br i1 %cmp333, label %land.lhs.true.335, label %if.else.342

land.lhs.true.335:                                ; preds = %land.lhs.true.330
  %268 = load i32, i32* %pic4_pix_y, align 4
  %269 = load i16*, i16** %s_mv_y.addr, align 8
  %270 = load i16, i16* %269, align 2
  %conv336 = sext i16 %270 to i32
  %add337 = add nsw i32 %268, %conv336
  %271 = load i32, i32* %max_pos_y4, align 4
  %sub338 = sub nsw i32 %271, 1
  %cmp339 = icmp slt i32 %add337, %sub338
  br i1 %cmp339, label %if.then.341, label %if.else.342

if.then.341:                                      ; preds = %land.lhs.true.335
  store i32 0, i32* @bipred1_access_method, align 4
  br label %if.end.343

if.else.342:                                      ; preds = %land.lhs.true.335, %land.lhs.true.330, %land.lhs.true.324, %if.end.319
  store i32 1, i32* @bipred1_access_method, align 4
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.342, %if.then.341
  store i32 0, i32* %best_pos, align 4
  %272 = load i32, i32* @start_me_refinement_hp, align 4
  store i32 %272, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.343
  %273 = load i32, i32* %pos, align 4
  %274 = load i32, i32* %max_pos2, align 4
  %cmp344 = icmp slt i32 %273, %274
  br i1 %cmp344, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %275 = load i16*, i16** %mv_x.addr, align 8
  %276 = load i16, i16* %275, align 2
  %conv346 = sext i16 %276 to i32
  %277 = load i32, i32* %pos, align 4
  %idxprom347 = sext i32 %277 to i64
  %278 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx348 = getelementptr inbounds i16, i16* %278, i64 %idxprom347
  %279 = load i16, i16* %arrayidx348, align 2
  %conv349 = sext i16 %279 to i32
  %add350 = add nsw i32 %conv346, %conv349
  store i32 %add350, i32* %cand_mv_x, align 4
  %280 = load i16*, i16** %mv_y.addr, align 8
  %281 = load i16, i16* %280, align 2
  %conv351 = sext i16 %281 to i32
  %282 = load i32, i32* %pos, align 4
  %idxprom352 = sext i32 %282 to i64
  %283 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx353 = getelementptr inbounds i16, i16* %283, i64 %idxprom352
  %284 = load i16, i16* %arrayidx353, align 2
  %conv354 = sext i16 %284 to i32
  %add355 = add nsw i32 %conv351, %conv354
  store i32 %add355, i32* %cand_mv_y, align 4
  %285 = load i32, i32* %lambda_factor, align 4
  %286 = load i32, i32* %cand_mv_x, align 4
  %287 = load i16, i16* %pred_mv_x.addr, align 2
  %conv356 = sext i16 %287 to i32
  %sub357 = sub nsw i32 %286, %conv356
  %idxprom358 = sext i32 %sub357 to i64
  %288 = load i32*, i32** @mvbits, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %288, i64 %idxprom358
  %289 = load i32, i32* %arrayidx359, align 4
  %290 = load i32, i32* %cand_mv_y, align 4
  %291 = load i16, i16* %pred_mv_y.addr, align 2
  %conv360 = sext i16 %291 to i32
  %sub361 = sub nsw i32 %290, %conv360
  %idxprom362 = sext i32 %sub361 to i64
  %292 = load i32*, i32** @mvbits, align 8
  %arrayidx363 = getelementptr inbounds i32, i32* %292, i64 %idxprom362
  %293 = load i32, i32* %arrayidx363, align 4
  %add364 = add nsw i32 %289, %293
  %mul = mul nsw i32 %285, %add364
  %shr365 = ashr i32 %mul, 16
  store i32 %shr365, i32* %mcost, align 4
  %294 = load i32, i32* %mcost, align 4
  %295 = load i32, i32* %min_mcost.addr, align 4
  %cmp366 = icmp sge i32 %294, %295
  br i1 %cmp366, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %for.body
  br label %for.inc

if.end.369:                                       ; preds = %for.body
  %296 = load i32, i32* %cand_mv_x, align 4
  %297 = load i32, i32* %pic4_pix_x, align 4
  %add370 = add nsw i32 %296, %297
  store i32 %add370, i32* %cmv_x, align 4
  %298 = load i32, i32* %cand_mv_y, align 4
  %299 = load i32, i32* %pic4_pix_y, align 4
  %add371 = add nsw i32 %298, %299
  store i32 %add371, i32* %cmv_y, align 4
  %300 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %301 = load i16*, i16** %orig_pic.addr, align 8
  %302 = load i32, i32* %blocksize_y, align 4
  %303 = load i32, i32* %blocksize_x, align 4
  %304 = load i32, i32* %min_mcost.addr, align 4
  %305 = load i32, i32* %mcost, align 4
  %sub372 = sub nsw i32 %304, %305
  %306 = load i32, i32* %smv_x, align 4
  %307 = load i32, i32* %smv_y, align 4
  %308 = load i32, i32* %cmv_x, align 4
  %309 = load i32, i32* %cmv_y, align 4
  %call373 = call i32 %300(i16* %301, i32 %302, i32 %303, i32 %sub372, i32 %306, i32 %307, i32 %308, i32 %309)
  %310 = load i32, i32* %mcost, align 4
  %add374 = add nsw i32 %310, %call373
  store i32 %add374, i32* %mcost, align 4
  %311 = load i32, i32* %mcost, align 4
  %312 = load i32, i32* %min_mcost.addr, align 4
  %cmp375 = icmp slt i32 %311, %312
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %if.end.369
  %313 = load i32, i32* %mcost, align 4
  store i32 %313, i32* %min_mcost.addr, align 4
  %314 = load i32, i32* %pos, align 4
  store i32 %314, i32* %best_pos, align 4
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.377, %if.end.369
  br label %for.inc

for.inc:                                          ; preds = %if.end.378, %if.then.368
  %315 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %315, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %316 = load i32, i32* %best_pos, align 4
  %tobool379 = icmp ne i32 %316, 0
  br i1 %tobool379, label %if.then.380, label %if.end.393

if.then.380:                                      ; preds = %for.end
  %317 = load i32, i32* %best_pos, align 4
  %idxprom381 = sext i32 %317 to i64
  %318 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx382 = getelementptr inbounds i16, i16* %318, i64 %idxprom381
  %319 = load i16, i16* %arrayidx382, align 2
  %conv383 = sext i16 %319 to i32
  %320 = load i16*, i16** %mv_x.addr, align 8
  %321 = load i16, i16* %320, align 2
  %conv384 = sext i16 %321 to i32
  %add385 = add nsw i32 %conv384, %conv383
  %conv386 = trunc i32 %add385 to i16
  store i16 %conv386, i16* %320, align 2
  %322 = load i32, i32* %best_pos, align 4
  %idxprom387 = sext i32 %322 to i64
  %323 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx388 = getelementptr inbounds i16, i16* %323, i64 %idxprom387
  %324 = load i16, i16* %arrayidx388, align 2
  %conv389 = sext i16 %324 to i32
  %325 = load i16*, i16** %mv_y.addr, align 8
  %326 = load i16, i16* %325, align 2
  %conv390 = sext i16 %326 to i32
  %add391 = add nsw i32 %conv390, %conv389
  %conv392 = trunc i32 %add391 to i16
  store i16 %conv392, i16* %325, align 2
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.380, %for.end
  %327 = load i32, i32* %apply_weights, align 4
  %tobool394 = icmp ne i32 %327, 0
  br i1 %tobool394, label %cond.true.395, label %cond.false.396

cond.true.395:                                    ; preds = %if.end.393
  %328 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred2, i32 0, i64 2), align 8
  br label %cond.end.397

cond.false.396:                                   ; preds = %if.end.393
  %329 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred1, i32 0, i64 2), align 8
  br label %cond.end.397

cond.end.397:                                     ; preds = %cond.false.396, %cond.true.395
  %cond398 = phi i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* [ %328, %cond.true.395 ], [ %329, %cond.false.396 ]
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* %cond398, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %330 = load i32, i32* %pic4_pix_x, align 4
  %331 = load i16*, i16** %mv_x.addr, align 8
  %332 = load i16, i16* %331, align 2
  %conv399 = sext i16 %332 to i32
  %add400 = add nsw i32 %330, %conv399
  %cmp401 = icmp sgt i32 %add400, 0
  br i1 %cmp401, label %land.lhs.true.403, label %if.else.419

land.lhs.true.403:                                ; preds = %cond.end.397
  %333 = load i32, i32* %pic4_pix_x, align 4
  %334 = load i16*, i16** %mv_x.addr, align 8
  %335 = load i16, i16* %334, align 2
  %conv404 = sext i16 %335 to i32
  %add405 = add nsw i32 %333, %conv404
  %336 = load i32, i32* %max_pos_x4, align 4
  %cmp406 = icmp slt i32 %add405, %336
  br i1 %cmp406, label %land.lhs.true.408, label %if.else.419

land.lhs.true.408:                                ; preds = %land.lhs.true.403
  %337 = load i32, i32* %pic4_pix_y, align 4
  %338 = load i16*, i16** %mv_y.addr, align 8
  %339 = load i16, i16* %338, align 2
  %conv409 = sext i16 %339 to i32
  %add410 = add nsw i32 %337, %conv409
  %cmp411 = icmp sgt i32 %add410, 0
  br i1 %cmp411, label %land.lhs.true.413, label %if.else.419

land.lhs.true.413:                                ; preds = %land.lhs.true.408
  %340 = load i32, i32* %pic4_pix_y, align 4
  %341 = load i16*, i16** %mv_y.addr, align 8
  %342 = load i16, i16* %341, align 2
  %conv414 = sext i16 %342 to i32
  %add415 = add nsw i32 %340, %conv414
  %343 = load i32, i32* %max_pos_y4, align 4
  %cmp416 = icmp slt i32 %add415, %343
  br i1 %cmp416, label %if.then.418, label %if.else.419

if.then.418:                                      ; preds = %land.lhs.true.413
  store i32 0, i32* @bipred2_access_method, align 4
  br label %if.end.420

if.else.419:                                      ; preds = %land.lhs.true.413, %land.lhs.true.408, %land.lhs.true.403, %cond.end.397
  store i32 1, i32* @bipred2_access_method, align 4
  br label %if.end.420

if.end.420:                                       ; preds = %if.else.419, %if.then.418
  %344 = load i32, i32* %pic4_pix_x, align 4
  %345 = load i16*, i16** %s_mv_x.addr, align 8
  %346 = load i16, i16* %345, align 2
  %conv421 = sext i16 %346 to i32
  %add422 = add nsw i32 %344, %conv421
  %cmp423 = icmp sgt i32 %add422, 0
  br i1 %cmp423, label %land.lhs.true.425, label %if.else.441

land.lhs.true.425:                                ; preds = %if.end.420
  %347 = load i32, i32* %pic4_pix_x, align 4
  %348 = load i16*, i16** %s_mv_x.addr, align 8
  %349 = load i16, i16* %348, align 2
  %conv426 = sext i16 %349 to i32
  %add427 = add nsw i32 %347, %conv426
  %350 = load i32, i32* %max_pos_x4, align 4
  %cmp428 = icmp slt i32 %add427, %350
  br i1 %cmp428, label %land.lhs.true.430, label %if.else.441

land.lhs.true.430:                                ; preds = %land.lhs.true.425
  %351 = load i32, i32* %pic4_pix_y, align 4
  %352 = load i16*, i16** %s_mv_y.addr, align 8
  %353 = load i16, i16* %352, align 2
  %conv431 = sext i16 %353 to i32
  %add432 = add nsw i32 %351, %conv431
  %cmp433 = icmp sgt i32 %add432, 0
  br i1 %cmp433, label %land.lhs.true.435, label %if.else.441

land.lhs.true.435:                                ; preds = %land.lhs.true.430
  %354 = load i32, i32* %pic4_pix_y, align 4
  %355 = load i16*, i16** %s_mv_y.addr, align 8
  %356 = load i16, i16* %355, align 2
  %conv436 = sext i16 %356 to i32
  %add437 = add nsw i32 %354, %conv436
  %357 = load i32, i32* %max_pos_y4, align 4
  %cmp438 = icmp slt i32 %add437, %357
  br i1 %cmp438, label %if.then.440, label %if.else.441

if.then.440:                                      ; preds = %land.lhs.true.435
  store i32 0, i32* @bipred1_access_method, align 4
  br label %if.end.442

if.else.441:                                      ; preds = %land.lhs.true.435, %land.lhs.true.430, %land.lhs.true.425, %if.end.420
  store i32 1, i32* @bipred1_access_method, align 4
  br label %if.end.442

if.end.442:                                       ; preds = %if.else.441, %if.then.440
  %358 = load i32, i32* @start_me_refinement_qp, align 4
  %tobool443 = icmp ne i32 %358, 0
  br i1 %tobool443, label %if.end.445, label %if.then.444

if.then.444:                                      ; preds = %if.end.442
  store i32 2147483647, i32* %min_mcost.addr, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.444, %if.end.442
  %359 = load i32*, i32** %lambda.addr, align 8
  %arrayidx446 = getelementptr inbounds i32, i32* %359, i64 2
  %360 = load i32, i32* %arrayidx446, align 4
  store i32 %360, i32* %lambda_factor, align 4
  store i32 0, i32* %best_pos, align 4
  %361 = load i32, i32* @start_me_refinement_qp, align 4
  store i32 %361, i32* %pos, align 4
  br label %for.cond.447

for.cond.447:                                     ; preds = %for.inc.485, %if.end.445
  %362 = load i32, i32* %pos, align 4
  %363 = load i32, i32* %search_pos4.addr, align 4
  %cmp448 = icmp slt i32 %362, %363
  br i1 %cmp448, label %for.body.450, label %for.end.487

for.body.450:                                     ; preds = %for.cond.447
  %364 = load i16*, i16** %mv_x.addr, align 8
  %365 = load i16, i16* %364, align 2
  %conv451 = sext i16 %365 to i32
  %366 = load i32, i32* %pos, align 4
  %idxprom452 = sext i32 %366 to i64
  %367 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx453 = getelementptr inbounds i16, i16* %367, i64 %idxprom452
  %368 = load i16, i16* %arrayidx453, align 2
  %conv454 = sext i16 %368 to i32
  %add455 = add nsw i32 %conv451, %conv454
  store i32 %add455, i32* %cand_mv_x, align 4
  %369 = load i16*, i16** %mv_y.addr, align 8
  %370 = load i16, i16* %369, align 2
  %conv456 = sext i16 %370 to i32
  %371 = load i32, i32* %pos, align 4
  %idxprom457 = sext i32 %371 to i64
  %372 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx458 = getelementptr inbounds i16, i16* %372, i64 %idxprom457
  %373 = load i16, i16* %arrayidx458, align 2
  %conv459 = sext i16 %373 to i32
  %add460 = add nsw i32 %conv456, %conv459
  store i32 %add460, i32* %cand_mv_y, align 4
  %374 = load i32, i32* %lambda_factor, align 4
  %375 = load i32, i32* %cand_mv_x, align 4
  %376 = load i16, i16* %pred_mv_x.addr, align 2
  %conv461 = sext i16 %376 to i32
  %sub462 = sub nsw i32 %375, %conv461
  %idxprom463 = sext i32 %sub462 to i64
  %377 = load i32*, i32** @mvbits, align 8
  %arrayidx464 = getelementptr inbounds i32, i32* %377, i64 %idxprom463
  %378 = load i32, i32* %arrayidx464, align 4
  %379 = load i32, i32* %cand_mv_y, align 4
  %380 = load i16, i16* %pred_mv_y.addr, align 2
  %conv465 = sext i16 %380 to i32
  %sub466 = sub nsw i32 %379, %conv465
  %idxprom467 = sext i32 %sub466 to i64
  %381 = load i32*, i32** @mvbits, align 8
  %arrayidx468 = getelementptr inbounds i32, i32* %381, i64 %idxprom467
  %382 = load i32, i32* %arrayidx468, align 4
  %add469 = add nsw i32 %378, %382
  %mul470 = mul nsw i32 %374, %add469
  %shr471 = ashr i32 %mul470, 16
  store i32 %shr471, i32* %mcost, align 4
  %383 = load i32, i32* %mcost, align 4
  %384 = load i32, i32* %min_mcost.addr, align 4
  %cmp472 = icmp sge i32 %383, %384
  br i1 %cmp472, label %if.then.474, label %if.end.475

if.then.474:                                      ; preds = %for.body.450
  br label %for.inc.485

if.end.475:                                       ; preds = %for.body.450
  %385 = load i32, i32* %cand_mv_x, align 4
  %386 = load i32, i32* %pic4_pix_x, align 4
  %add476 = add nsw i32 %385, %386
  store i32 %add476, i32* %cmv_x, align 4
  %387 = load i32, i32* %cand_mv_y, align 4
  %388 = load i32, i32* %pic4_pix_y, align 4
  %add477 = add nsw i32 %387, %388
  store i32 %add477, i32* %cmv_y, align 4
  %389 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %390 = load i16*, i16** %orig_pic.addr, align 8
  %391 = load i32, i32* %blocksize_y, align 4
  %392 = load i32, i32* %blocksize_x, align 4
  %393 = load i32, i32* %min_mcost.addr, align 4
  %394 = load i32, i32* %mcost, align 4
  %sub478 = sub nsw i32 %393, %394
  %395 = load i32, i32* %smv_x, align 4
  %396 = load i32, i32* %smv_y, align 4
  %397 = load i32, i32* %cmv_x, align 4
  %398 = load i32, i32* %cmv_y, align 4
  %call479 = call i32 %389(i16* %390, i32 %391, i32 %392, i32 %sub478, i32 %395, i32 %396, i32 %397, i32 %398)
  %399 = load i32, i32* %mcost, align 4
  %add480 = add nsw i32 %399, %call479
  store i32 %add480, i32* %mcost, align 4
  %400 = load i32, i32* %mcost, align 4
  %401 = load i32, i32* %min_mcost.addr, align 4
  %cmp481 = icmp slt i32 %400, %401
  br i1 %cmp481, label %if.then.483, label %if.end.484

if.then.483:                                      ; preds = %if.end.475
  %402 = load i32, i32* %mcost, align 4
  store i32 %402, i32* %min_mcost.addr, align 4
  %403 = load i32, i32* %pos, align 4
  store i32 %403, i32* %best_pos, align 4
  br label %if.end.484

if.end.484:                                       ; preds = %if.then.483, %if.end.475
  br label %for.inc.485

for.inc.485:                                      ; preds = %if.end.484, %if.then.474
  %404 = load i32, i32* %pos, align 4
  %inc486 = add nsw i32 %404, 1
  store i32 %inc486, i32* %pos, align 4
  br label %for.cond.447

for.end.487:                                      ; preds = %for.cond.447
  %405 = load i32, i32* %best_pos, align 4
  %tobool488 = icmp ne i32 %405, 0
  br i1 %tobool488, label %if.then.489, label %if.end.502

if.then.489:                                      ; preds = %for.end.487
  %406 = load i32, i32* %best_pos, align 4
  %idxprom490 = sext i32 %406 to i64
  %407 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx491 = getelementptr inbounds i16, i16* %407, i64 %idxprom490
  %408 = load i16, i16* %arrayidx491, align 2
  %conv492 = sext i16 %408 to i32
  %409 = load i16*, i16** %mv_x.addr, align 8
  %410 = load i16, i16* %409, align 2
  %conv493 = sext i16 %410 to i32
  %add494 = add nsw i32 %conv493, %conv492
  %conv495 = trunc i32 %add494 to i16
  store i16 %conv495, i16* %409, align 2
  %411 = load i32, i32* %best_pos, align 4
  %idxprom496 = sext i32 %411 to i64
  %412 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx497 = getelementptr inbounds i16, i16* %412, i64 %idxprom496
  %413 = load i16, i16* %arrayidx497, align 2
  %conv498 = sext i16 %413 to i32
  %414 = load i16*, i16** %mv_y.addr, align 8
  %415 = load i16, i16* %414, align 2
  %conv499 = sext i16 %415 to i32
  %add500 = add nsw i32 %conv499, %conv498
  %conv501 = trunc i32 %add500 to i16
  store i16 %conv501, i16* %414, align 2
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.489, %for.end.487
  %416 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %416
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
