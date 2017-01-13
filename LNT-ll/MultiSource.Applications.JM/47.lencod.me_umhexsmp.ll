; ModuleID = './MultiSource.Applications.JM/47.lencod.me_umhexsmp.bc'
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.SubImageContainer = type { i16****, [2 x i16****] }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@block_type_shift_factor = constant [8 x i16] [i16 0, i16 0, i16 1, i16 1, i16 2, i16 3, i16 3, i16 1], align 16
@SymmetricalCrossSearchThreshold1 = common global i16 0, align 2
@SymmetricalCrossSearchThreshold2 = common global i16 0, align 2
@ConvergeThreshold = common global i16 0, align 2
@SubPelThreshold1 = common global i16 0, align 2
@SubPelThreshold3 = common global i16 0, align 2
@img = external global %struct.ImageParameters*, align 8
@smpUMHEX_flag_intra = common global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"smpUMHEX_get_mem: smpUMHEX_flag_intra\00", align 1
@smpUMHEX_l0_cost = common global i32*** null, align 8
@smpUMHEX_l1_cost = common global i32*** null, align 8
@smpUMHEX_SearchState = common global i8** null, align 8
@input = external global %struct.InputParameters*, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@dist_method = internal global i32 0, align 4
@listX = external global [6 x %struct.storable_picture**], align 16
@ref_pic_ptr = internal global %struct.storable_picture* null, align 8
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
@mvbits = external global i32*, align 8
@computeUniPred = external global [6 x i32 (i16*, i32, i32, i32, i32, i32)*], align 16
@Diamond_X = internal constant [4 x i16] [i16 -1, i16 1, i16 0, i16 0], align 2
@Diamond_Y = internal constant [4 x i16] [i16 0, i16 0, i16 -1, i16 1], align 2
@Hexagon_X = internal constant [6 x i16] [i16 -2, i16 2, i16 -1, i16 1, i16 -1, i16 1], align 2
@Hexagon_Y = internal constant [6 x i16] [i16 0, i16 0, i16 -2, i16 2, i16 2, i16 -2], align 2
@Big_Hexagon_X = internal constant [16 x i16] [i16 -4, i16 4, i16 0, i16 0, i16 -4, i16 4, i16 -4, i16 4, i16 -4, i16 4, i16 -4, i16 4, i16 -2, i16 2, i16 -2, i16 2], align 16
@Big_Hexagon_Y = internal constant [16 x i16] [i16 0, i16 0, i16 -4, i16 4, i16 -1, i16 1, i16 1, i16 -1, i16 -2, i16 2, i16 2, i16 -2, i16 -3, i16 3, i16 3, i16 -3], align 16
@smpUMHEX_pred_MV_uplayer_X = common global i16 0, align 2
@smpUMHEX_pred_MV_uplayer_Y = common global i16 0, align 2
@start_me_refinement_hp = common global i32 0, align 4
@spiral_hpel_search_x = external global i16*, align 8
@spiral_hpel_search_y = external global i16*, align 8
@start_me_refinement_qp = common global i32 0, align 4
@spiral_search_x = external global i16*, align 8
@spiral_search_y = external global i16*, align 8
@ref_pic1_sub = external global %struct.SubImageContainer, align 8
@ref_pic2_sub = external global %struct.SubImageContainer, align 8
@wbp_weight = common global i32**** null, align 8
@weight1 = external global i16, align 2
@weight2 = external global i16, align 2
@offsetBi = external global i16, align 2
@computeBiPred = external global i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, align 8
@luma_log_weight_denom = common global i32 0, align 4
@weight1_cr = external global [2 x i16], align 2
@weight2_cr = external global [2 x i16], align 2
@offsetBi_cr = external global [2 x i16], align 2
@chroma_log_weight_denom = common global i32 0, align 4
@bipred2_access_method = external global i32, align 4
@bipred1_access_method = external global i32, align 4
@smpUMHEX_flag_intra_SAD = common global i32 0, align 4
@smpUMHEX_pred_SAD_uplayer = common global i32 0, align 4
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

; Function Attrs: nounwind uwtable
define void @smpUMHEX_init() #0 {
entry:
  store i16 800, i16* @SymmetricalCrossSearchThreshold1, align 2
  store i16 7000, i16* @SymmetricalCrossSearchThreshold2, align 2
  store i16 1000, i16* @ConvergeThreshold, align 2
  store i16 1000, i16* @SubPelThreshold1, align 2
  store i16 400, i16* @SubPelThreshold3, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @smpUMHEX_get_mem() #0 {
entry:
  %memory_size = alloca i32, align 4
  store i32 0, i32* %memory_size, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 13
  %1 = load i32, i32* %width, align 4
  %shr = ashr i32 %1, 4
  %add = add nsw i32 %shr, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 1) #4
  store i8* %call, i8** @smpUMHEX_flag_intra, align 8
  %cmp = icmp eq i8* null, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 17
  %3 = load i32, i32* %height, align 4
  %div = sdiv i32 %3, 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 13
  %5 = load i32, i32* %width2, align 4
  %div3 = sdiv i32 %5, 4
  %call4 = call i32 @get_mem3Dint(i32**** @smpUMHEX_l0_cost, i32 9, i32 %div, i32 %div3)
  %6 = load i32, i32* %memory_size, align 4
  %add5 = add nsw i32 %6, %call4
  store i32 %add5, i32* %memory_size, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 17
  %8 = load i32, i32* %height6, align 4
  %div7 = sdiv i32 %8, 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 13
  %10 = load i32, i32* %width8, align 4
  %div9 = sdiv i32 %10, 4
  %call10 = call i32 @get_mem3Dint(i32**** @smpUMHEX_l1_cost, i32 9, i32 %div7, i32 %div9)
  %11 = load i32, i32* %memory_size, align 4
  %add11 = add nsw i32 %11, %call10
  store i32 %add11, i32* %memory_size, align 4
  %call12 = call i32 @get_mem2D(i8*** @smpUMHEX_SearchState, i32 7, i32 7)
  %12 = load i32, i32* %memory_size, align 4
  %add13 = add nsw i32 %12, %call12
  store i32 %add13, i32* %memory_size, align 4
  %13 = load i32, i32* %memory_size, align 4
  ret i32 %13
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

declare i32 @get_mem3Dint(i32****, i32, i32, i32) #2

declare i32 @get_mem2D(i8***, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @smpUMHEX_free_mem() #0 {
entry:
  %0 = load i32***, i32**** @smpUMHEX_l0_cost, align 8
  call void @free_mem3Dint(i32*** %0, i32 9)
  %1 = load i32***, i32**** @smpUMHEX_l1_cost, align 8
  call void @free_mem3Dint(i32*** %1, i32 9)
  %2 = load i8**, i8*** @smpUMHEX_SearchState, align 8
  call void @free_mem2D(i8** %2)
  %3 = load i8*, i8** @smpUMHEX_flag_intra, align 8
  call void @free(i8* %3) #4
  ret void
}

declare void @free_mem3Dint(i32***, i32) #2

declare void @free_mem2D(i8**) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @smpUMHEXIntegerPelBlockMotionSearch(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i32 %search_range, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %retval = alloca i32, align 4
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
  %list_offset = alloca i32, align 4
  %mvshift = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %pred_x = alloca i32, align 4
  %pred_y = alloca i32, align 4
  %center_x = alloca i32, align 4
  %center_y = alloca i32, align 4
  %best_x = alloca i32, align 4
  %best_y = alloca i32, align 4
  %search_step = alloca i32, align 4
  %iYMinNow = alloca i32, align 4
  %iXMinNow = alloca i32, align 4
  %cand_x = alloca i32, align 4
  %cand_y = alloca i32, align 4
  %mcost = alloca i32, align 4
  %i = alloca i16, align 2
  %m = alloca i16, align 2
  %apply_weights = alloca i32, align 4
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
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 100
  %1 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 61
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 19
  %6 = load i32, i32* %mb_field, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr2, align 4
  %rem = srem i32 %8, 2
  %tobool3 = icmp ne i32 %rem, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  store i32 2, i32* %mvshift, align 4
  %9 = load i32, i32* %blocktype.addr, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 18
  %arrayidx6 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 1
  %11 = load i32, i32* %arrayidx7, align 4
  store i32 %11, i32* %blocksize_y, align 4
  %12 = load i32, i32* %blocktype.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 18
  %arrayidx10 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size9, i32 0, i64 %idxprom8
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  %14 = load i32, i32* %arrayidx11, align 4
  store i32 %14, i32* %blocksize_x, align 4
  %15 = load i32, i32* %pic_pix_x.addr, align 4
  %16 = load i32, i32* %mvshift, align 4
  %shl = shl i32 %15, %16
  %17 = load i16, i16* %pred_mv_x.addr, align 2
  %conv = sext i16 %17 to i32
  %add = add nsw i32 %shl, %conv
  store i32 %add, i32* %pred_x, align 4
  %18 = load i32, i32* %pic_pix_y.addr, align 4
  %19 = load i32, i32* %mvshift, align 4
  %shl12 = shl i32 %18, %19
  %20 = load i16, i16* %pred_mv_y.addr, align 2
  %conv13 = sext i16 %20 to i32
  %add14 = add nsw i32 %shl12, %conv13
  store i32 %add14, i32* %pred_y, align 4
  %21 = load i32, i32* %pic_pix_x.addr, align 4
  %22 = load i16*, i16** %mv_x.addr, align 8
  %23 = load i16, i16* %22, align 2
  %conv15 = sext i16 %23 to i32
  %add16 = add nsw i32 %21, %conv15
  store i32 %add16, i32* %center_x, align 4
  %24 = load i32, i32* %pic_pix_y.addr, align 4
  %25 = load i16*, i16** %mv_y.addr, align 8
  %26 = load i16, i16* %25, align 2
  %conv17 = sext i16 %26 to i32
  %add18 = add nsw i32 %24, %conv17
  store i32 %add18, i32* %center_y, align 4
  store i32 0, i32* %best_x, align 4
  store i32 0, i32* %best_y, align 4
  %27 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %27, i32 0, i32 19
  %28 = load i32, i32* %weighted_pred_flag, align 4
  %tobool19 = icmp ne i32 %28, 0
  br i1 %tobool19, label %land.lhs.true.20, label %lor.lhs.false.25

land.lhs.true.20:                                 ; preds = %cond.end
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 5
  %30 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.20
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 5
  %32 = load i32, i32* %type22, align 4
  %cmp23 = icmp eq i32 %32, 3
  br i1 %cmp23, label %land.rhs, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false, %cond.end
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %33, i32 0, i32 20
  %34 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %land.lhs.true.27, label %land.end

land.lhs.true.27:                                 ; preds = %lor.lhs.false.25
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 5
  %36 = load i32, i32* %type28, align 4
  %cmp29 = icmp eq i32 %36, 1
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.27, %lor.lhs.false, %land.lhs.true.20
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 61
  %38 = load i32, i32* %UseWeightedReferenceME, align 4
  %tobool31 = icmp ne i32 %38, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.27, %lor.lhs.false.25
  %39 = phi i1 [ false, %land.lhs.true.27 ], [ false, %lor.lhs.false.25 ], [ %tobool31, %land.rhs ]
  %land.ext = zext i1 %39 to i32
  store i32 %land.ext, i32* %apply_weights, align 4
  %40 = load i32, i32* %apply_weights, align 4
  %mul = mul nsw i32 3, %40
  %add32 = add nsw i32 0, %mul
  store i32 %add32, i32* @dist_method, align 4
  %41 = load i16, i16* %ref.addr, align 2
  %idxprom33 = sext i16 %41 to i64
  %42 = load i32, i32* %list.addr, align 4
  %43 = load i32, i32* %list_offset, align 4
  %add34 = add nsw i32 %42, %43
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom35
  %44 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %44, i64 %idxprom33
  %45 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx37, align 8
  store %struct.storable_picture* %45, %struct.storable_picture** @ref_pic_ptr, align 8
  %46 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %46, i32 0, i32 30
  %47 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %47, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %48 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %48, i32 0, i32 18
  %49 = load i32, i32* %size_x, align 4
  %conv38 = trunc i32 %49 to i16
  store i16 %conv38, i16* @img_width, align 2
  %50 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 19
  %51 = load i32, i32* %size_y, align 4
  %conv39 = trunc i32 %51 to i16
  store i16 %conv39, i16* @img_height, align 2
  %52 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %52, i32 0, i32 22
  %53 = load i32, i32* %size_x_pad, align 4
  store i32 %53, i32* @width_pad, align 4
  %54 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %54, i32 0, i32 23
  %55 = load i32, i32* %size_y_pad, align 4
  store i32 %55, i32* @height_pad, align 4
  %56 = load i32, i32* %apply_weights, align 4
  %tobool40 = icmp ne i32 %56, 0
  br i1 %tobool40, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %57 = load i16, i16* %ref.addr, align 2
  %idxprom41 = sext i16 %57 to i64
  %58 = load i32, i32* %list.addr, align 4
  %59 = load i32, i32* %list_offset, align 4
  %add42 = add nsw i32 %58, %59
  %idxprom43 = sext i32 %add42 to i64
  %60 = load i32***, i32**** @wp_weight, align 8
  %arrayidx44 = getelementptr inbounds i32**, i32*** %60, i64 %idxprom43
  %61 = load i32**, i32*** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i32*, i32** %61, i64 %idxprom41
  %62 = load i32*, i32** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %62, i64 0
  %63 = load i32, i32* %arrayidx46, align 4
  store i32 %63, i32* @weight_luma, align 4
  %64 = load i16, i16* %ref.addr, align 2
  %idxprom47 = sext i16 %64 to i64
  %65 = load i32, i32* %list.addr, align 4
  %66 = load i32, i32* %list_offset, align 4
  %add48 = add nsw i32 %65, %66
  %idxprom49 = sext i32 %add48 to i64
  %67 = load i32***, i32**** @wp_offset, align 8
  %arrayidx50 = getelementptr inbounds i32**, i32*** %67, i64 %idxprom49
  %68 = load i32**, i32*** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %68, i64 %idxprom47
  %69 = load i32*, i32** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx52, align 4
  store i32 %70, i32* @offset_luma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %71 = load i32, i32* @ChromaMEEnable, align 4
  %tobool53 = icmp ne i32 %71, 0
  br i1 %tobool53, label %if.then.54, label %if.end.85

if.then.54:                                       ; preds = %if.end
  %72 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 32
  %73 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx55 = getelementptr inbounds i16****, i16***** %73, i64 0
  %74 = load i16****, i16***** %arrayidx55, align 8
  store i16**** %74, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 0), align 8
  %75 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %imgUV_sub56 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 32
  %76 = load i16*****, i16****** %imgUV_sub56, align 8
  %arrayidx57 = getelementptr inbounds i16****, i16***** %76, i64 1
  %77 = load i16****, i16***** %arrayidx57, align 8
  store i16**** %77, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 1), align 8
  %78 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %78, i32 0, i32 24
  %79 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %79, i32* @width_pad_cr, align 4
  %80 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %80, i32 0, i32 25
  %81 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %81, i32* @height_pad_cr, align 4
  %82 = load i32, i32* %apply_weights, align 4
  %tobool58 = icmp ne i32 %82, 0
  br i1 %tobool58, label %if.then.59, label %if.end.84

if.then.59:                                       ; preds = %if.then.54
  %83 = load i16, i16* %ref.addr, align 2
  %idxprom60 = sext i16 %83 to i64
  %84 = load i32, i32* %list.addr, align 4
  %85 = load i32, i32* %list_offset, align 4
  %add61 = add nsw i32 %84, %85
  %idxprom62 = sext i32 %add61 to i64
  %86 = load i32***, i32**** @wp_weight, align 8
  %arrayidx63 = getelementptr inbounds i32**, i32*** %86, i64 %idxprom62
  %87 = load i32**, i32*** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i32*, i32** %87, i64 %idxprom60
  %88 = load i32*, i32** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %88, i64 1
  %89 = load i32, i32* %arrayidx65, align 4
  store i32 %89, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 0), align 4
  %90 = load i16, i16* %ref.addr, align 2
  %idxprom66 = sext i16 %90 to i64
  %91 = load i32, i32* %list.addr, align 4
  %92 = load i32, i32* %list_offset, align 4
  %add67 = add nsw i32 %91, %92
  %idxprom68 = sext i32 %add67 to i64
  %93 = load i32***, i32**** @wp_weight, align 8
  %arrayidx69 = getelementptr inbounds i32**, i32*** %93, i64 %idxprom68
  %94 = load i32**, i32*** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32*, i32** %94, i64 %idxprom66
  %95 = load i32*, i32** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %95, i64 2
  %96 = load i32, i32* %arrayidx71, align 4
  store i32 %96, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 1), align 4
  %97 = load i16, i16* %ref.addr, align 2
  %idxprom72 = sext i16 %97 to i64
  %98 = load i32, i32* %list.addr, align 4
  %99 = load i32, i32* %list_offset, align 4
  %add73 = add nsw i32 %98, %99
  %idxprom74 = sext i32 %add73 to i64
  %100 = load i32***, i32**** @wp_offset, align 8
  %arrayidx75 = getelementptr inbounds i32**, i32*** %100, i64 %idxprom74
  %101 = load i32**, i32*** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i32*, i32** %101, i64 %idxprom72
  %102 = load i32*, i32** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %102, i64 1
  %103 = load i32, i32* %arrayidx77, align 4
  store i32 %103, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 0), align 4
  %104 = load i16, i16* %ref.addr, align 2
  %idxprom78 = sext i16 %104 to i64
  %105 = load i32, i32* %list.addr, align 4
  %106 = load i32, i32* %list_offset, align 4
  %add79 = add nsw i32 %105, %106
  %idxprom80 = sext i32 %add79 to i64
  %107 = load i32***, i32**** @wp_offset, align 8
  %arrayidx81 = getelementptr inbounds i32**, i32*** %107, i64 %idxprom80
  %108 = load i32**, i32*** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i32*, i32** %108, i64 %idxprom78
  %109 = load i32*, i32** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %109, i64 2
  %110 = load i32, i32* %arrayidx83, align 4
  store i32 %110, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 1), align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.59, %if.then.54
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end
  %111 = load i32, i32* %center_x, align 4
  %112 = load i32, i32* %search_range.addr, align 4
  %cmp86 = icmp sgt i32 %111, %112
  br i1 %cmp86, label %land.lhs.true.88, label %if.else

land.lhs.true.88:                                 ; preds = %if.end.85
  %113 = load i32, i32* %center_x, align 4
  %114 = load i16, i16* @img_width, align 2
  %conv89 = sext i16 %114 to i32
  %sub = sub nsw i32 %conv89, 1
  %115 = load i32, i32* %search_range.addr, align 4
  %sub90 = sub nsw i32 %sub, %115
  %116 = load i32, i32* %blocksize_x, align 4
  %sub91 = sub nsw i32 %sub90, %116
  %cmp92 = icmp slt i32 %113, %sub91
  br i1 %cmp92, label %land.lhs.true.94, label %if.else

land.lhs.true.94:                                 ; preds = %land.lhs.true.88
  %117 = load i32, i32* %center_y, align 4
  %118 = load i32, i32* %search_range.addr, align 4
  %cmp95 = icmp sgt i32 %117, %118
  br i1 %cmp95, label %land.lhs.true.97, label %if.else

land.lhs.true.97:                                 ; preds = %land.lhs.true.94
  %119 = load i32, i32* %center_y, align 4
  %120 = load i16, i16* @img_height, align 2
  %conv98 = sext i16 %120 to i32
  %sub99 = sub nsw i32 %conv98, 1
  %121 = load i32, i32* %search_range.addr, align 4
  %sub100 = sub nsw i32 %sub99, %121
  %122 = load i32, i32* %blocksize_y, align 4
  %sub101 = sub nsw i32 %sub100, %122
  %cmp102 = icmp slt i32 %119, %sub101
  br i1 %cmp102, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %land.lhs.true.97
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.105

if.else:                                          ; preds = %land.lhs.true.97, %land.lhs.true.94, %land.lhs.true.88, %if.end.85
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else, %if.then.104
  %123 = load i32, i32* %center_x, align 4
  store i32 %123, i32* %cand_x, align 4
  %124 = load i32, i32* %center_y, align 4
  store i32 %124, i32* %cand_y, align 4
  %125 = load i32, i32* %lambda_factor.addr, align 4
  %126 = load i32, i32* %cand_x, align 4
  %127 = load i32, i32* %mvshift, align 4
  %shl106 = shl i32 %126, %127
  %128 = load i32, i32* %pred_x, align 4
  %sub107 = sub nsw i32 %shl106, %128
  %idxprom108 = sext i32 %sub107 to i64
  %129 = load i32*, i32** @mvbits, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %129, i64 %idxprom108
  %130 = load i32, i32* %arrayidx109, align 4
  %131 = load i32, i32* %cand_y, align 4
  %132 = load i32, i32* %mvshift, align 4
  %shl110 = shl i32 %131, %132
  %133 = load i32, i32* %pred_y, align 4
  %sub111 = sub nsw i32 %shl110, %133
  %idxprom112 = sext i32 %sub111 to i64
  %134 = load i32*, i32** @mvbits, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %134, i64 %idxprom112
  %135 = load i32, i32* %arrayidx113, align 4
  %add114 = add nsw i32 %130, %135
  %mul115 = mul nsw i32 %125, %add114
  %shr = ashr i32 %mul115, 16
  store i32 %shr, i32* %mcost, align 4
  %136 = load i32, i32* @dist_method, align 4
  %idxprom116 = sext i32 %136 to i64
  %arrayidx117 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom116
  %137 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx117, align 8
  %138 = load i16*, i16** %orig_pic.addr, align 8
  %139 = load i32, i32* %blocksize_y, align 4
  %140 = load i32, i32* %blocksize_x, align 4
  %141 = load i32, i32* %min_mcost.addr, align 4
  %142 = load i32, i32* %mcost, align 4
  %sub118 = sub nsw i32 %141, %142
  %143 = load i32, i32* %cand_x, align 4
  %shl119 = shl i32 %143, 2
  %add120 = add nsw i32 %shl119, 80
  %144 = load i32, i32* %cand_y, align 4
  %shl121 = shl i32 %144, 2
  %add122 = add nsw i32 %shl121, 80
  %call = call i32 %137(i16* %138, i32 %139, i32 %140, i32 %sub118, i32 %add120, i32 %add122)
  %145 = load i32, i32* %mcost, align 4
  %add123 = add nsw i32 %145, %call
  store i32 %add123, i32* %mcost, align 4
  %146 = load i32, i32* %mcost, align 4
  %147 = load i32, i32* %min_mcost.addr, align 4
  %cmp124 = icmp slt i32 %146, %147
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.105
  %148 = load i32, i32* %mcost, align 4
  store i32 %148, i32* %min_mcost.addr, align 4
  %149 = load i32, i32* %cand_x, align 4
  store i32 %149, i32* %best_x, align 4
  %150 = load i32, i32* %cand_y, align 4
  store i32 %150, i32* %best_y, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.end.105
  %151 = load i32, i32* %best_x, align 4
  store i32 %151, i32* %iXMinNow, align 4
  %152 = load i32, i32* %best_y, align 4
  store i32 %152, i32* %iYMinNow, align 4
  %153 = load i16, i16* %pred_mv_x.addr, align 2
  %conv128 = sext i16 %153 to i32
  %cmp129 = icmp ne i32 0, %conv128
  br i1 %cmp129, label %if.then.135, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %if.end.127
  %154 = load i16, i16* %pred_mv_y.addr, align 2
  %conv132 = sext i16 %154 to i32
  %cmp133 = icmp ne i32 0, %conv132
  br i1 %cmp133, label %if.then.135, label %if.end.171

if.then.135:                                      ; preds = %lor.lhs.false.131, %if.end.127
  %155 = load i32, i32* %pic_pix_x.addr, align 4
  store i32 %155, i32* %cand_x, align 4
  %156 = load i32, i32* %pic_pix_y.addr, align 4
  store i32 %156, i32* %cand_y, align 4
  %157 = load i32, i32* %cand_x, align 4
  %158 = load i32, i32* %center_x, align 4
  %sub136 = sub nsw i32 %157, %158
  %call137 = call i32 @iabs(i32 %sub136)
  %159 = load i32, i32* %search_range.addr, align 4
  %cmp138 = icmp sle i32 %call137, %159
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.170

land.lhs.true.140:                                ; preds = %if.then.135
  %160 = load i32, i32* %cand_y, align 4
  %161 = load i32, i32* %center_y, align 4
  %sub141 = sub nsw i32 %160, %161
  %call142 = call i32 @iabs(i32 %sub141)
  %162 = load i32, i32* %search_range.addr, align 4
  %cmp143 = icmp sle i32 %call142, %162
  br i1 %cmp143, label %if.then.145, label %if.end.170

if.then.145:                                      ; preds = %land.lhs.true.140
  %163 = load i32, i32* %lambda_factor.addr, align 4
  %164 = load i32, i32* %cand_x, align 4
  %165 = load i32, i32* %mvshift, align 4
  %shl146 = shl i32 %164, %165
  %166 = load i32, i32* %pred_x, align 4
  %sub147 = sub nsw i32 %shl146, %166
  %idxprom148 = sext i32 %sub147 to i64
  %167 = load i32*, i32** @mvbits, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %167, i64 %idxprom148
  %168 = load i32, i32* %arrayidx149, align 4
  %169 = load i32, i32* %cand_y, align 4
  %170 = load i32, i32* %mvshift, align 4
  %shl150 = shl i32 %169, %170
  %171 = load i32, i32* %pred_y, align 4
  %sub151 = sub nsw i32 %shl150, %171
  %idxprom152 = sext i32 %sub151 to i64
  %172 = load i32*, i32** @mvbits, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %172, i64 %idxprom152
  %173 = load i32, i32* %arrayidx153, align 4
  %add154 = add nsw i32 %168, %173
  %mul155 = mul nsw i32 %163, %add154
  %shr156 = ashr i32 %mul155, 16
  store i32 %shr156, i32* %mcost, align 4
  %174 = load i32, i32* @dist_method, align 4
  %idxprom157 = sext i32 %174 to i64
  %arrayidx158 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom157
  %175 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx158, align 8
  %176 = load i16*, i16** %orig_pic.addr, align 8
  %177 = load i32, i32* %blocksize_y, align 4
  %178 = load i32, i32* %blocksize_x, align 4
  %179 = load i32, i32* %min_mcost.addr, align 4
  %180 = load i32, i32* %mcost, align 4
  %sub159 = sub nsw i32 %179, %180
  %181 = load i32, i32* %cand_x, align 4
  %add160 = add nsw i32 %181, 20
  %shl161 = shl i32 %add160, 2
  %182 = load i32, i32* %cand_y, align 4
  %add162 = add nsw i32 %182, 20
  %shl163 = shl i32 %add162, 2
  %call164 = call i32 %175(i16* %176, i32 %177, i32 %178, i32 %sub159, i32 %shl161, i32 %shl163)
  %183 = load i32, i32* %mcost, align 4
  %add165 = add nsw i32 %183, %call164
  store i32 %add165, i32* %mcost, align 4
  %184 = load i32, i32* %mcost, align 4
  %185 = load i32, i32* %min_mcost.addr, align 4
  %cmp166 = icmp slt i32 %184, %185
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.then.145
  %186 = load i32, i32* %cand_x, align 4
  store i32 %186, i32* %best_x, align 4
  %187 = load i32, i32* %cand_y, align 4
  store i32 %187, i32* %best_y, align 4
  %188 = load i32, i32* %mcost, align 4
  store i32 %188, i32* %min_mcost.addr, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.then.145
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %land.lhs.true.140, %if.then.135
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %lor.lhs.false.131
  %189 = load i32, i32* %min_mcost.addr, align 4
  %190 = load i16, i16* @ConvergeThreshold, align 2
  %conv172 = zext i16 %190 to i32
  %191 = load i32, i32* %blocktype.addr, align 4
  %idxprom173 = sext i32 %191 to i64
  %arrayidx174 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom173
  %192 = load i16, i16* %arrayidx174, align 2
  %conv175 = sext i16 %192 to i32
  %shr176 = ashr i32 %conv172, %conv175
  %cmp177 = icmp slt i32 %189, %shr176
  br i1 %cmp177, label %if.then.179, label %if.end.230

if.then.179:                                      ; preds = %if.end.171
  store i16 0, i16* %m, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.179
  %193 = load i16, i16* %m, align 2
  %conv180 = zext i16 %193 to i32
  %cmp181 = icmp slt i32 %conv180, 4
  br i1 %cmp181, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %194 = load i32, i32* %iXMinNow, align 4
  %195 = load i16, i16* %m, align 2
  %idxprom183 = zext i16 %195 to i64
  %arrayidx184 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom183
  %196 = load i16, i16* %arrayidx184, align 2
  %conv185 = sext i16 %196 to i32
  %add186 = add nsw i32 %194, %conv185
  store i32 %add186, i32* %cand_x, align 4
  %197 = load i32, i32* %iYMinNow, align 4
  %198 = load i16, i16* %m, align 2
  %idxprom187 = zext i16 %198 to i64
  %arrayidx188 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom187
  %199 = load i16, i16* %arrayidx188, align 2
  %conv189 = sext i16 %199 to i32
  %add190 = add nsw i32 %197, %conv189
  store i32 %add190, i32* %cand_y, align 4
  %200 = load i32, i32* %cand_x, align 4
  %201 = load i32, i32* %center_x, align 4
  %sub191 = sub nsw i32 %200, %201
  %call192 = call i32 @iabs(i32 %sub191)
  %202 = load i32, i32* %search_range.addr, align 4
  %cmp193 = icmp sle i32 %call192, %202
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.225

land.lhs.true.195:                                ; preds = %for.body
  %203 = load i32, i32* %cand_y, align 4
  %204 = load i32, i32* %center_y, align 4
  %sub196 = sub nsw i32 %203, %204
  %call197 = call i32 @iabs(i32 %sub196)
  %205 = load i32, i32* %search_range.addr, align 4
  %cmp198 = icmp sle i32 %call197, %205
  br i1 %cmp198, label %if.then.200, label %if.end.225

if.then.200:                                      ; preds = %land.lhs.true.195
  %206 = load i32, i32* %lambda_factor.addr, align 4
  %207 = load i32, i32* %cand_x, align 4
  %208 = load i32, i32* %mvshift, align 4
  %shl201 = shl i32 %207, %208
  %209 = load i32, i32* %pred_x, align 4
  %sub202 = sub nsw i32 %shl201, %209
  %idxprom203 = sext i32 %sub202 to i64
  %210 = load i32*, i32** @mvbits, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %210, i64 %idxprom203
  %211 = load i32, i32* %arrayidx204, align 4
  %212 = load i32, i32* %cand_y, align 4
  %213 = load i32, i32* %mvshift, align 4
  %shl205 = shl i32 %212, %213
  %214 = load i32, i32* %pred_y, align 4
  %sub206 = sub nsw i32 %shl205, %214
  %idxprom207 = sext i32 %sub206 to i64
  %215 = load i32*, i32** @mvbits, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %215, i64 %idxprom207
  %216 = load i32, i32* %arrayidx208, align 4
  %add209 = add nsw i32 %211, %216
  %mul210 = mul nsw i32 %206, %add209
  %shr211 = ashr i32 %mul210, 16
  store i32 %shr211, i32* %mcost, align 4
  %217 = load i32, i32* @dist_method, align 4
  %idxprom212 = sext i32 %217 to i64
  %arrayidx213 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom212
  %218 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx213, align 8
  %219 = load i16*, i16** %orig_pic.addr, align 8
  %220 = load i32, i32* %blocksize_y, align 4
  %221 = load i32, i32* %blocksize_x, align 4
  %222 = load i32, i32* %min_mcost.addr, align 4
  %223 = load i32, i32* %mcost, align 4
  %sub214 = sub nsw i32 %222, %223
  %224 = load i32, i32* %cand_x, align 4
  %add215 = add nsw i32 %224, 20
  %shl216 = shl i32 %add215, 2
  %225 = load i32, i32* %cand_y, align 4
  %add217 = add nsw i32 %225, 20
  %shl218 = shl i32 %add217, 2
  %call219 = call i32 %218(i16* %219, i32 %220, i32 %221, i32 %sub214, i32 %shl216, i32 %shl218)
  %226 = load i32, i32* %mcost, align 4
  %add220 = add nsw i32 %226, %call219
  store i32 %add220, i32* %mcost, align 4
  %227 = load i32, i32* %mcost, align 4
  %228 = load i32, i32* %min_mcost.addr, align 4
  %cmp221 = icmp slt i32 %227, %228
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.then.200
  %229 = load i32, i32* %cand_x, align 4
  store i32 %229, i32* %best_x, align 4
  %230 = load i32, i32* %cand_y, align 4
  store i32 %230, i32* %best_y, align 4
  %231 = load i32, i32* %mcost, align 4
  store i32 %231, i32* %min_mcost.addr, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.223, %if.then.200
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %land.lhs.true.195, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.225
  %232 = load i16, i16* %m, align 2
  %inc = add i16 %232, 1
  store i16 %inc, i16* %m, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %233 = load i32, i32* %best_x, align 4
  %234 = load i32, i32* %pic_pix_x.addr, align 4
  %sub226 = sub nsw i32 %233, %234
  %conv227 = trunc i32 %sub226 to i16
  %235 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv227, i16* %235, align 2
  %236 = load i32, i32* %best_y, align 4
  %237 = load i32, i32* %pic_pix_y.addr, align 4
  %sub228 = sub nsw i32 %236, %237
  %conv229 = trunc i32 %sub228 to i16
  %238 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv229, i16* %238, align 2
  %239 = load i32, i32* %min_mcost.addr, align 4
  store i32 %239, i32* %retval
  br label %return

if.end.230:                                       ; preds = %if.end.171
  store i16 0, i16* %m, align 2
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.279, %if.end.230
  %240 = load i16, i16* %m, align 2
  %conv232 = zext i16 %240 to i32
  %cmp233 = icmp slt i32 %conv232, 4
  br i1 %cmp233, label %for.body.235, label %for.end.281

for.body.235:                                     ; preds = %for.cond.231
  %241 = load i32, i32* %iXMinNow, align 4
  %242 = load i16, i16* %m, align 2
  %idxprom236 = zext i16 %242 to i64
  %arrayidx237 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom236
  %243 = load i16, i16* %arrayidx237, align 2
  %conv238 = sext i16 %243 to i32
  %add239 = add nsw i32 %241, %conv238
  store i32 %add239, i32* %cand_x, align 4
  %244 = load i32, i32* %iYMinNow, align 4
  %245 = load i16, i16* %m, align 2
  %idxprom240 = zext i16 %245 to i64
  %arrayidx241 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom240
  %246 = load i16, i16* %arrayidx241, align 2
  %conv242 = sext i16 %246 to i32
  %add243 = add nsw i32 %244, %conv242
  store i32 %add243, i32* %cand_y, align 4
  %247 = load i32, i32* %cand_x, align 4
  %248 = load i32, i32* %center_x, align 4
  %sub244 = sub nsw i32 %247, %248
  %call245 = call i32 @iabs(i32 %sub244)
  %249 = load i32, i32* %search_range.addr, align 4
  %cmp246 = icmp sle i32 %call245, %249
  br i1 %cmp246, label %land.lhs.true.248, label %if.end.278

land.lhs.true.248:                                ; preds = %for.body.235
  %250 = load i32, i32* %cand_y, align 4
  %251 = load i32, i32* %center_y, align 4
  %sub249 = sub nsw i32 %250, %251
  %call250 = call i32 @iabs(i32 %sub249)
  %252 = load i32, i32* %search_range.addr, align 4
  %cmp251 = icmp sle i32 %call250, %252
  br i1 %cmp251, label %if.then.253, label %if.end.278

if.then.253:                                      ; preds = %land.lhs.true.248
  %253 = load i32, i32* %lambda_factor.addr, align 4
  %254 = load i32, i32* %cand_x, align 4
  %255 = load i32, i32* %mvshift, align 4
  %shl254 = shl i32 %254, %255
  %256 = load i32, i32* %pred_x, align 4
  %sub255 = sub nsw i32 %shl254, %256
  %idxprom256 = sext i32 %sub255 to i64
  %257 = load i32*, i32** @mvbits, align 8
  %arrayidx257 = getelementptr inbounds i32, i32* %257, i64 %idxprom256
  %258 = load i32, i32* %arrayidx257, align 4
  %259 = load i32, i32* %cand_y, align 4
  %260 = load i32, i32* %mvshift, align 4
  %shl258 = shl i32 %259, %260
  %261 = load i32, i32* %pred_y, align 4
  %sub259 = sub nsw i32 %shl258, %261
  %idxprom260 = sext i32 %sub259 to i64
  %262 = load i32*, i32** @mvbits, align 8
  %arrayidx261 = getelementptr inbounds i32, i32* %262, i64 %idxprom260
  %263 = load i32, i32* %arrayidx261, align 4
  %add262 = add nsw i32 %258, %263
  %mul263 = mul nsw i32 %253, %add262
  %shr264 = ashr i32 %mul263, 16
  store i32 %shr264, i32* %mcost, align 4
  %264 = load i32, i32* @dist_method, align 4
  %idxprom265 = sext i32 %264 to i64
  %arrayidx266 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom265
  %265 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx266, align 8
  %266 = load i16*, i16** %orig_pic.addr, align 8
  %267 = load i32, i32* %blocksize_y, align 4
  %268 = load i32, i32* %blocksize_x, align 4
  %269 = load i32, i32* %min_mcost.addr, align 4
  %270 = load i32, i32* %mcost, align 4
  %sub267 = sub nsw i32 %269, %270
  %271 = load i32, i32* %cand_x, align 4
  %add268 = add nsw i32 %271, 20
  %shl269 = shl i32 %add268, 2
  %272 = load i32, i32* %cand_y, align 4
  %add270 = add nsw i32 %272, 20
  %shl271 = shl i32 %add270, 2
  %call272 = call i32 %265(i16* %266, i32 %267, i32 %268, i32 %sub267, i32 %shl269, i32 %shl271)
  %273 = load i32, i32* %mcost, align 4
  %add273 = add nsw i32 %273, %call272
  store i32 %add273, i32* %mcost, align 4
  %274 = load i32, i32* %mcost, align 4
  %275 = load i32, i32* %min_mcost.addr, align 4
  %cmp274 = icmp slt i32 %274, %275
  br i1 %cmp274, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %if.then.253
  %276 = load i32, i32* %cand_x, align 4
  store i32 %276, i32* %best_x, align 4
  %277 = load i32, i32* %cand_y, align 4
  store i32 %277, i32* %best_y, align 4
  %278 = load i32, i32* %mcost, align 4
  store i32 %278, i32* %min_mcost.addr, align 4
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.276, %if.then.253
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %land.lhs.true.248, %for.body.235
  br label %for.inc.279

for.inc.279:                                      ; preds = %if.end.278
  %279 = load i16, i16* %m, align 2
  %inc280 = add i16 %279, 1
  store i16 %inc280, i16* %m, align 2
  br label %for.cond.231

for.end.281:                                      ; preds = %for.cond.231
  %280 = load i32, i32* %blocktype.addr, align 4
  %cmp282 = icmp eq i32 %280, 1
  br i1 %cmp282, label %land.lhs.true.284, label %lor.lhs.false.292

land.lhs.true.284:                                ; preds = %for.end.281
  %281 = load i32, i32* %min_mcost.addr, align 4
  %282 = load i16, i16* @SymmetricalCrossSearchThreshold1, align 2
  %conv285 = zext i16 %282 to i32
  %283 = load i32, i32* %blocktype.addr, align 4
  %idxprom286 = sext i32 %283 to i64
  %arrayidx287 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom286
  %284 = load i16, i16* %arrayidx287, align 2
  %conv288 = sext i16 %284 to i32
  %shr289 = ashr i32 %conv285, %conv288
  %cmp290 = icmp sgt i32 %281, %shr289
  br i1 %cmp290, label %if.then.300, label %lor.lhs.false.292

lor.lhs.false.292:                                ; preds = %land.lhs.true.284, %for.end.281
  %285 = load i32, i32* %min_mcost.addr, align 4
  %286 = load i16, i16* @SymmetricalCrossSearchThreshold2, align 2
  %conv293 = zext i16 %286 to i32
  %287 = load i32, i32* %blocktype.addr, align 4
  %idxprom294 = sext i32 %287 to i64
  %arrayidx295 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom294
  %288 = load i16, i16* %arrayidx295, align 2
  %conv296 = sext i16 %288 to i32
  %shr297 = ashr i32 %conv293, %conv296
  %cmp298 = icmp sgt i32 %285, %shr297
  br i1 %cmp298, label %if.then.300, label %if.end.571

if.then.300:                                      ; preds = %lor.lhs.false.292, %land.lhs.true.284
  %289 = load i32, i32* %best_x, align 4
  store i32 %289, i32* %iXMinNow, align 4
  %290 = load i32, i32* %best_y, align 4
  store i32 %290, i32* %iYMinNow, align 4
  store i16 1, i16* %i, align 2
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.453, %if.then.300
  %291 = load i16, i16* %i, align 2
  %conv302 = zext i16 %291 to i32
  %292 = load i32, i32* %search_range.addr, align 4
  %div = sdiv i32 %292, 2
  %cmp303 = icmp sle i32 %conv302, %div
  br i1 %cmp303, label %for.body.305, label %for.end.455

for.body.305:                                     ; preds = %for.cond.301
  %293 = load i16, i16* %i, align 2
  %conv306 = zext i16 %293 to i32
  %shl307 = shl i32 %conv306, 1
  %sub308 = sub nsw i32 %shl307, 1
  store i32 %sub308, i32* %search_step, align 4
  %294 = load i32, i32* %iXMinNow, align 4
  %295 = load i32, i32* %search_step, align 4
  %add309 = add nsw i32 %294, %295
  store i32 %add309, i32* %cand_x, align 4
  %296 = load i32, i32* %iYMinNow, align 4
  store i32 %296, i32* %cand_y, align 4
  %297 = load i32, i32* %cand_x, align 4
  %298 = load i32, i32* %center_x, align 4
  %sub310 = sub nsw i32 %297, %298
  %call311 = call i32 @iabs(i32 %sub310)
  %299 = load i32, i32* %search_range.addr, align 4
  %cmp312 = icmp sle i32 %call311, %299
  br i1 %cmp312, label %land.lhs.true.314, label %if.end.344

land.lhs.true.314:                                ; preds = %for.body.305
  %300 = load i32, i32* %cand_y, align 4
  %301 = load i32, i32* %center_y, align 4
  %sub315 = sub nsw i32 %300, %301
  %call316 = call i32 @iabs(i32 %sub315)
  %302 = load i32, i32* %search_range.addr, align 4
  %cmp317 = icmp sle i32 %call316, %302
  br i1 %cmp317, label %if.then.319, label %if.end.344

if.then.319:                                      ; preds = %land.lhs.true.314
  %303 = load i32, i32* %lambda_factor.addr, align 4
  %304 = load i32, i32* %cand_x, align 4
  %305 = load i32, i32* %mvshift, align 4
  %shl320 = shl i32 %304, %305
  %306 = load i32, i32* %pred_x, align 4
  %sub321 = sub nsw i32 %shl320, %306
  %idxprom322 = sext i32 %sub321 to i64
  %307 = load i32*, i32** @mvbits, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %307, i64 %idxprom322
  %308 = load i32, i32* %arrayidx323, align 4
  %309 = load i32, i32* %cand_y, align 4
  %310 = load i32, i32* %mvshift, align 4
  %shl324 = shl i32 %309, %310
  %311 = load i32, i32* %pred_y, align 4
  %sub325 = sub nsw i32 %shl324, %311
  %idxprom326 = sext i32 %sub325 to i64
  %312 = load i32*, i32** @mvbits, align 8
  %arrayidx327 = getelementptr inbounds i32, i32* %312, i64 %idxprom326
  %313 = load i32, i32* %arrayidx327, align 4
  %add328 = add nsw i32 %308, %313
  %mul329 = mul nsw i32 %303, %add328
  %shr330 = ashr i32 %mul329, 16
  store i32 %shr330, i32* %mcost, align 4
  %314 = load i32, i32* @dist_method, align 4
  %idxprom331 = sext i32 %314 to i64
  %arrayidx332 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom331
  %315 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx332, align 8
  %316 = load i16*, i16** %orig_pic.addr, align 8
  %317 = load i32, i32* %blocksize_y, align 4
  %318 = load i32, i32* %blocksize_x, align 4
  %319 = load i32, i32* %min_mcost.addr, align 4
  %320 = load i32, i32* %mcost, align 4
  %sub333 = sub nsw i32 %319, %320
  %321 = load i32, i32* %cand_x, align 4
  %add334 = add nsw i32 %321, 20
  %shl335 = shl i32 %add334, 2
  %322 = load i32, i32* %cand_y, align 4
  %add336 = add nsw i32 %322, 20
  %shl337 = shl i32 %add336, 2
  %call338 = call i32 %315(i16* %316, i32 %317, i32 %318, i32 %sub333, i32 %shl335, i32 %shl337)
  %323 = load i32, i32* %mcost, align 4
  %add339 = add nsw i32 %323, %call338
  store i32 %add339, i32* %mcost, align 4
  %324 = load i32, i32* %mcost, align 4
  %325 = load i32, i32* %min_mcost.addr, align 4
  %cmp340 = icmp slt i32 %324, %325
  br i1 %cmp340, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %if.then.319
  %326 = load i32, i32* %cand_x, align 4
  store i32 %326, i32* %best_x, align 4
  %327 = load i32, i32* %cand_y, align 4
  store i32 %327, i32* %best_y, align 4
  %328 = load i32, i32* %mcost, align 4
  store i32 %328, i32* %min_mcost.addr, align 4
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.342, %if.then.319
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %land.lhs.true.314, %for.body.305
  %329 = load i32, i32* %iXMinNow, align 4
  %330 = load i32, i32* %search_step, align 4
  %sub345 = sub nsw i32 %329, %330
  store i32 %sub345, i32* %cand_x, align 4
  %331 = load i32, i32* %cand_x, align 4
  %332 = load i32, i32* %center_x, align 4
  %sub346 = sub nsw i32 %331, %332
  %call347 = call i32 @iabs(i32 %sub346)
  %333 = load i32, i32* %search_range.addr, align 4
  %cmp348 = icmp sle i32 %call347, %333
  br i1 %cmp348, label %land.lhs.true.350, label %if.end.380

land.lhs.true.350:                                ; preds = %if.end.344
  %334 = load i32, i32* %cand_y, align 4
  %335 = load i32, i32* %center_y, align 4
  %sub351 = sub nsw i32 %334, %335
  %call352 = call i32 @iabs(i32 %sub351)
  %336 = load i32, i32* %search_range.addr, align 4
  %cmp353 = icmp sle i32 %call352, %336
  br i1 %cmp353, label %if.then.355, label %if.end.380

if.then.355:                                      ; preds = %land.lhs.true.350
  %337 = load i32, i32* %lambda_factor.addr, align 4
  %338 = load i32, i32* %cand_x, align 4
  %339 = load i32, i32* %mvshift, align 4
  %shl356 = shl i32 %338, %339
  %340 = load i32, i32* %pred_x, align 4
  %sub357 = sub nsw i32 %shl356, %340
  %idxprom358 = sext i32 %sub357 to i64
  %341 = load i32*, i32** @mvbits, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %341, i64 %idxprom358
  %342 = load i32, i32* %arrayidx359, align 4
  %343 = load i32, i32* %cand_y, align 4
  %344 = load i32, i32* %mvshift, align 4
  %shl360 = shl i32 %343, %344
  %345 = load i32, i32* %pred_y, align 4
  %sub361 = sub nsw i32 %shl360, %345
  %idxprom362 = sext i32 %sub361 to i64
  %346 = load i32*, i32** @mvbits, align 8
  %arrayidx363 = getelementptr inbounds i32, i32* %346, i64 %idxprom362
  %347 = load i32, i32* %arrayidx363, align 4
  %add364 = add nsw i32 %342, %347
  %mul365 = mul nsw i32 %337, %add364
  %shr366 = ashr i32 %mul365, 16
  store i32 %shr366, i32* %mcost, align 4
  %348 = load i32, i32* @dist_method, align 4
  %idxprom367 = sext i32 %348 to i64
  %arrayidx368 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom367
  %349 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx368, align 8
  %350 = load i16*, i16** %orig_pic.addr, align 8
  %351 = load i32, i32* %blocksize_y, align 4
  %352 = load i32, i32* %blocksize_x, align 4
  %353 = load i32, i32* %min_mcost.addr, align 4
  %354 = load i32, i32* %mcost, align 4
  %sub369 = sub nsw i32 %353, %354
  %355 = load i32, i32* %cand_x, align 4
  %add370 = add nsw i32 %355, 20
  %shl371 = shl i32 %add370, 2
  %356 = load i32, i32* %cand_y, align 4
  %add372 = add nsw i32 %356, 20
  %shl373 = shl i32 %add372, 2
  %call374 = call i32 %349(i16* %350, i32 %351, i32 %352, i32 %sub369, i32 %shl371, i32 %shl373)
  %357 = load i32, i32* %mcost, align 4
  %add375 = add nsw i32 %357, %call374
  store i32 %add375, i32* %mcost, align 4
  %358 = load i32, i32* %mcost, align 4
  %359 = load i32, i32* %min_mcost.addr, align 4
  %cmp376 = icmp slt i32 %358, %359
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.then.355
  %360 = load i32, i32* %cand_x, align 4
  store i32 %360, i32* %best_x, align 4
  %361 = load i32, i32* %cand_y, align 4
  store i32 %361, i32* %best_y, align 4
  %362 = load i32, i32* %mcost, align 4
  store i32 %362, i32* %min_mcost.addr, align 4
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.378, %if.then.355
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %land.lhs.true.350, %if.end.344
  %363 = load i32, i32* %iXMinNow, align 4
  store i32 %363, i32* %cand_x, align 4
  %364 = load i32, i32* %iYMinNow, align 4
  %365 = load i32, i32* %search_step, align 4
  %add381 = add nsw i32 %364, %365
  store i32 %add381, i32* %cand_y, align 4
  %366 = load i32, i32* %cand_x, align 4
  %367 = load i32, i32* %center_x, align 4
  %sub382 = sub nsw i32 %366, %367
  %call383 = call i32 @iabs(i32 %sub382)
  %368 = load i32, i32* %search_range.addr, align 4
  %cmp384 = icmp sle i32 %call383, %368
  br i1 %cmp384, label %land.lhs.true.386, label %if.end.416

land.lhs.true.386:                                ; preds = %if.end.380
  %369 = load i32, i32* %cand_y, align 4
  %370 = load i32, i32* %center_y, align 4
  %sub387 = sub nsw i32 %369, %370
  %call388 = call i32 @iabs(i32 %sub387)
  %371 = load i32, i32* %search_range.addr, align 4
  %cmp389 = icmp sle i32 %call388, %371
  br i1 %cmp389, label %if.then.391, label %if.end.416

if.then.391:                                      ; preds = %land.lhs.true.386
  %372 = load i32, i32* %lambda_factor.addr, align 4
  %373 = load i32, i32* %cand_x, align 4
  %374 = load i32, i32* %mvshift, align 4
  %shl392 = shl i32 %373, %374
  %375 = load i32, i32* %pred_x, align 4
  %sub393 = sub nsw i32 %shl392, %375
  %idxprom394 = sext i32 %sub393 to i64
  %376 = load i32*, i32** @mvbits, align 8
  %arrayidx395 = getelementptr inbounds i32, i32* %376, i64 %idxprom394
  %377 = load i32, i32* %arrayidx395, align 4
  %378 = load i32, i32* %cand_y, align 4
  %379 = load i32, i32* %mvshift, align 4
  %shl396 = shl i32 %378, %379
  %380 = load i32, i32* %pred_y, align 4
  %sub397 = sub nsw i32 %shl396, %380
  %idxprom398 = sext i32 %sub397 to i64
  %381 = load i32*, i32** @mvbits, align 8
  %arrayidx399 = getelementptr inbounds i32, i32* %381, i64 %idxprom398
  %382 = load i32, i32* %arrayidx399, align 4
  %add400 = add nsw i32 %377, %382
  %mul401 = mul nsw i32 %372, %add400
  %shr402 = ashr i32 %mul401, 16
  store i32 %shr402, i32* %mcost, align 4
  %383 = load i32, i32* @dist_method, align 4
  %idxprom403 = sext i32 %383 to i64
  %arrayidx404 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom403
  %384 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx404, align 8
  %385 = load i16*, i16** %orig_pic.addr, align 8
  %386 = load i32, i32* %blocksize_y, align 4
  %387 = load i32, i32* %blocksize_x, align 4
  %388 = load i32, i32* %min_mcost.addr, align 4
  %389 = load i32, i32* %mcost, align 4
  %sub405 = sub nsw i32 %388, %389
  %390 = load i32, i32* %cand_x, align 4
  %add406 = add nsw i32 %390, 20
  %shl407 = shl i32 %add406, 2
  %391 = load i32, i32* %cand_y, align 4
  %add408 = add nsw i32 %391, 20
  %shl409 = shl i32 %add408, 2
  %call410 = call i32 %384(i16* %385, i32 %386, i32 %387, i32 %sub405, i32 %shl407, i32 %shl409)
  %392 = load i32, i32* %mcost, align 4
  %add411 = add nsw i32 %392, %call410
  store i32 %add411, i32* %mcost, align 4
  %393 = load i32, i32* %mcost, align 4
  %394 = load i32, i32* %min_mcost.addr, align 4
  %cmp412 = icmp slt i32 %393, %394
  br i1 %cmp412, label %if.then.414, label %if.end.415

if.then.414:                                      ; preds = %if.then.391
  %395 = load i32, i32* %cand_x, align 4
  store i32 %395, i32* %best_x, align 4
  %396 = load i32, i32* %cand_y, align 4
  store i32 %396, i32* %best_y, align 4
  %397 = load i32, i32* %mcost, align 4
  store i32 %397, i32* %min_mcost.addr, align 4
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.414, %if.then.391
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %land.lhs.true.386, %if.end.380
  %398 = load i32, i32* %iYMinNow, align 4
  %399 = load i32, i32* %search_step, align 4
  %sub417 = sub nsw i32 %398, %399
  store i32 %sub417, i32* %cand_y, align 4
  %400 = load i32, i32* %cand_x, align 4
  %401 = load i32, i32* %center_x, align 4
  %sub418 = sub nsw i32 %400, %401
  %call419 = call i32 @iabs(i32 %sub418)
  %402 = load i32, i32* %search_range.addr, align 4
  %cmp420 = icmp sle i32 %call419, %402
  br i1 %cmp420, label %land.lhs.true.422, label %if.end.452

land.lhs.true.422:                                ; preds = %if.end.416
  %403 = load i32, i32* %cand_y, align 4
  %404 = load i32, i32* %center_y, align 4
  %sub423 = sub nsw i32 %403, %404
  %call424 = call i32 @iabs(i32 %sub423)
  %405 = load i32, i32* %search_range.addr, align 4
  %cmp425 = icmp sle i32 %call424, %405
  br i1 %cmp425, label %if.then.427, label %if.end.452

if.then.427:                                      ; preds = %land.lhs.true.422
  %406 = load i32, i32* %lambda_factor.addr, align 4
  %407 = load i32, i32* %cand_x, align 4
  %408 = load i32, i32* %mvshift, align 4
  %shl428 = shl i32 %407, %408
  %409 = load i32, i32* %pred_x, align 4
  %sub429 = sub nsw i32 %shl428, %409
  %idxprom430 = sext i32 %sub429 to i64
  %410 = load i32*, i32** @mvbits, align 8
  %arrayidx431 = getelementptr inbounds i32, i32* %410, i64 %idxprom430
  %411 = load i32, i32* %arrayidx431, align 4
  %412 = load i32, i32* %cand_y, align 4
  %413 = load i32, i32* %mvshift, align 4
  %shl432 = shl i32 %412, %413
  %414 = load i32, i32* %pred_y, align 4
  %sub433 = sub nsw i32 %shl432, %414
  %idxprom434 = sext i32 %sub433 to i64
  %415 = load i32*, i32** @mvbits, align 8
  %arrayidx435 = getelementptr inbounds i32, i32* %415, i64 %idxprom434
  %416 = load i32, i32* %arrayidx435, align 4
  %add436 = add nsw i32 %411, %416
  %mul437 = mul nsw i32 %406, %add436
  %shr438 = ashr i32 %mul437, 16
  store i32 %shr438, i32* %mcost, align 4
  %417 = load i32, i32* @dist_method, align 4
  %idxprom439 = sext i32 %417 to i64
  %arrayidx440 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom439
  %418 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx440, align 8
  %419 = load i16*, i16** %orig_pic.addr, align 8
  %420 = load i32, i32* %blocksize_y, align 4
  %421 = load i32, i32* %blocksize_x, align 4
  %422 = load i32, i32* %min_mcost.addr, align 4
  %423 = load i32, i32* %mcost, align 4
  %sub441 = sub nsw i32 %422, %423
  %424 = load i32, i32* %cand_x, align 4
  %add442 = add nsw i32 %424, 20
  %shl443 = shl i32 %add442, 2
  %425 = load i32, i32* %cand_y, align 4
  %add444 = add nsw i32 %425, 20
  %shl445 = shl i32 %add444, 2
  %call446 = call i32 %418(i16* %419, i32 %420, i32 %421, i32 %sub441, i32 %shl443, i32 %shl445)
  %426 = load i32, i32* %mcost, align 4
  %add447 = add nsw i32 %426, %call446
  store i32 %add447, i32* %mcost, align 4
  %427 = load i32, i32* %mcost, align 4
  %428 = load i32, i32* %min_mcost.addr, align 4
  %cmp448 = icmp slt i32 %427, %428
  br i1 %cmp448, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %if.then.427
  %429 = load i32, i32* %cand_x, align 4
  store i32 %429, i32* %best_x, align 4
  %430 = load i32, i32* %cand_y, align 4
  store i32 %430, i32* %best_y, align 4
  %431 = load i32, i32* %mcost, align 4
  store i32 %431, i32* %min_mcost.addr, align 4
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.450, %if.then.427
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %land.lhs.true.422, %if.end.416
  br label %for.inc.453

for.inc.453:                                      ; preds = %if.end.452
  %432 = load i16, i16* %i, align 2
  %inc454 = add i16 %432, 1
  store i16 %inc454, i16* %i, align 2
  br label %for.cond.301

for.end.455:                                      ; preds = %for.cond.301
  %433 = load i32, i32* %best_x, align 4
  store i32 %433, i32* %iXMinNow, align 4
  %434 = load i32, i32* %best_y, align 4
  store i32 %434, i32* %iYMinNow, align 4
  store i16 0, i16* %m, align 2
  br label %for.cond.456

for.cond.456:                                     ; preds = %for.inc.504, %for.end.455
  %435 = load i16, i16* %m, align 2
  %conv457 = zext i16 %435 to i32
  %cmp458 = icmp slt i32 %conv457, 6
  br i1 %cmp458, label %for.body.460, label %for.end.506

for.body.460:                                     ; preds = %for.cond.456
  %436 = load i32, i32* %iXMinNow, align 4
  %437 = load i16, i16* %m, align 2
  %idxprom461 = zext i16 %437 to i64
  %arrayidx462 = getelementptr inbounds [6 x i16], [6 x i16]* @Hexagon_X, i32 0, i64 %idxprom461
  %438 = load i16, i16* %arrayidx462, align 2
  %conv463 = sext i16 %438 to i32
  %add464 = add nsw i32 %436, %conv463
  store i32 %add464, i32* %cand_x, align 4
  %439 = load i32, i32* %iYMinNow, align 4
  %440 = load i16, i16* %m, align 2
  %idxprom465 = zext i16 %440 to i64
  %arrayidx466 = getelementptr inbounds [6 x i16], [6 x i16]* @Hexagon_Y, i32 0, i64 %idxprom465
  %441 = load i16, i16* %arrayidx466, align 2
  %conv467 = sext i16 %441 to i32
  %add468 = add nsw i32 %439, %conv467
  store i32 %add468, i32* %cand_y, align 4
  %442 = load i32, i32* %cand_x, align 4
  %443 = load i32, i32* %center_x, align 4
  %sub469 = sub nsw i32 %442, %443
  %call470 = call i32 @iabs(i32 %sub469)
  %444 = load i32, i32* %search_range.addr, align 4
  %cmp471 = icmp sle i32 %call470, %444
  br i1 %cmp471, label %land.lhs.true.473, label %if.end.503

land.lhs.true.473:                                ; preds = %for.body.460
  %445 = load i32, i32* %cand_y, align 4
  %446 = load i32, i32* %center_y, align 4
  %sub474 = sub nsw i32 %445, %446
  %call475 = call i32 @iabs(i32 %sub474)
  %447 = load i32, i32* %search_range.addr, align 4
  %cmp476 = icmp sle i32 %call475, %447
  br i1 %cmp476, label %if.then.478, label %if.end.503

if.then.478:                                      ; preds = %land.lhs.true.473
  %448 = load i32, i32* %lambda_factor.addr, align 4
  %449 = load i32, i32* %cand_x, align 4
  %450 = load i32, i32* %mvshift, align 4
  %shl479 = shl i32 %449, %450
  %451 = load i32, i32* %pred_x, align 4
  %sub480 = sub nsw i32 %shl479, %451
  %idxprom481 = sext i32 %sub480 to i64
  %452 = load i32*, i32** @mvbits, align 8
  %arrayidx482 = getelementptr inbounds i32, i32* %452, i64 %idxprom481
  %453 = load i32, i32* %arrayidx482, align 4
  %454 = load i32, i32* %cand_y, align 4
  %455 = load i32, i32* %mvshift, align 4
  %shl483 = shl i32 %454, %455
  %456 = load i32, i32* %pred_y, align 4
  %sub484 = sub nsw i32 %shl483, %456
  %idxprom485 = sext i32 %sub484 to i64
  %457 = load i32*, i32** @mvbits, align 8
  %arrayidx486 = getelementptr inbounds i32, i32* %457, i64 %idxprom485
  %458 = load i32, i32* %arrayidx486, align 4
  %add487 = add nsw i32 %453, %458
  %mul488 = mul nsw i32 %448, %add487
  %shr489 = ashr i32 %mul488, 16
  store i32 %shr489, i32* %mcost, align 4
  %459 = load i32, i32* @dist_method, align 4
  %idxprom490 = sext i32 %459 to i64
  %arrayidx491 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom490
  %460 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx491, align 8
  %461 = load i16*, i16** %orig_pic.addr, align 8
  %462 = load i32, i32* %blocksize_y, align 4
  %463 = load i32, i32* %blocksize_x, align 4
  %464 = load i32, i32* %min_mcost.addr, align 4
  %465 = load i32, i32* %mcost, align 4
  %sub492 = sub nsw i32 %464, %465
  %466 = load i32, i32* %cand_x, align 4
  %add493 = add nsw i32 %466, 20
  %shl494 = shl i32 %add493, 2
  %467 = load i32, i32* %cand_y, align 4
  %add495 = add nsw i32 %467, 20
  %shl496 = shl i32 %add495, 2
  %call497 = call i32 %460(i16* %461, i32 %462, i32 %463, i32 %sub492, i32 %shl494, i32 %shl496)
  %468 = load i32, i32* %mcost, align 4
  %add498 = add nsw i32 %468, %call497
  store i32 %add498, i32* %mcost, align 4
  %469 = load i32, i32* %mcost, align 4
  %470 = load i32, i32* %min_mcost.addr, align 4
  %cmp499 = icmp slt i32 %469, %470
  br i1 %cmp499, label %if.then.501, label %if.end.502

if.then.501:                                      ; preds = %if.then.478
  %471 = load i32, i32* %cand_x, align 4
  store i32 %471, i32* %best_x, align 4
  %472 = load i32, i32* %cand_y, align 4
  store i32 %472, i32* %best_y, align 4
  %473 = load i32, i32* %mcost, align 4
  store i32 %473, i32* %min_mcost.addr, align 4
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.501, %if.then.478
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %land.lhs.true.473, %for.body.460
  br label %for.inc.504

for.inc.504:                                      ; preds = %if.end.503
  %474 = load i16, i16* %m, align 2
  %inc505 = add i16 %474, 1
  store i16 %inc505, i16* %m, align 2
  br label %for.cond.456

for.end.506:                                      ; preds = %for.cond.456
  %475 = load i32, i32* %best_x, align 4
  store i32 %475, i32* %iXMinNow, align 4
  %476 = load i32, i32* %best_y, align 4
  store i32 %476, i32* %iYMinNow, align 4
  store i16 1, i16* %i, align 2
  br label %for.cond.507

for.cond.507:                                     ; preds = %for.inc.568, %for.end.506
  %477 = load i16, i16* %i, align 2
  %conv508 = zext i16 %477 to i32
  %478 = load i32, i32* %search_range.addr, align 4
  %div509 = sdiv i32 %478, 4
  %cmp510 = icmp sle i32 %conv508, %div509
  br i1 %cmp510, label %for.body.512, label %for.end.570

for.body.512:                                     ; preds = %for.cond.507
  store i16 0, i16* %m, align 2
  br label %for.cond.513

for.cond.513:                                     ; preds = %for.inc.565, %for.body.512
  %479 = load i16, i16* %m, align 2
  %conv514 = zext i16 %479 to i32
  %cmp515 = icmp slt i32 %conv514, 16
  br i1 %cmp515, label %for.body.517, label %for.end.567

for.body.517:                                     ; preds = %for.cond.513
  %480 = load i32, i32* %iXMinNow, align 4
  %481 = load i16, i16* %m, align 2
  %idxprom518 = zext i16 %481 to i64
  %arrayidx519 = getelementptr inbounds [16 x i16], [16 x i16]* @Big_Hexagon_X, i32 0, i64 %idxprom518
  %482 = load i16, i16* %arrayidx519, align 2
  %conv520 = sext i16 %482 to i32
  %483 = load i16, i16* %i, align 2
  %conv521 = zext i16 %483 to i32
  %mul522 = mul nsw i32 %conv520, %conv521
  %add523 = add nsw i32 %480, %mul522
  store i32 %add523, i32* %cand_x, align 4
  %484 = load i32, i32* %iYMinNow, align 4
  %485 = load i16, i16* %m, align 2
  %idxprom524 = zext i16 %485 to i64
  %arrayidx525 = getelementptr inbounds [16 x i16], [16 x i16]* @Big_Hexagon_Y, i32 0, i64 %idxprom524
  %486 = load i16, i16* %arrayidx525, align 2
  %conv526 = sext i16 %486 to i32
  %487 = load i16, i16* %i, align 2
  %conv527 = zext i16 %487 to i32
  %mul528 = mul nsw i32 %conv526, %conv527
  %add529 = add nsw i32 %484, %mul528
  store i32 %add529, i32* %cand_y, align 4
  %488 = load i32, i32* %cand_x, align 4
  %489 = load i32, i32* %center_x, align 4
  %sub530 = sub nsw i32 %488, %489
  %call531 = call i32 @iabs(i32 %sub530)
  %490 = load i32, i32* %search_range.addr, align 4
  %cmp532 = icmp sle i32 %call531, %490
  br i1 %cmp532, label %land.lhs.true.534, label %if.end.564

land.lhs.true.534:                                ; preds = %for.body.517
  %491 = load i32, i32* %cand_y, align 4
  %492 = load i32, i32* %center_y, align 4
  %sub535 = sub nsw i32 %491, %492
  %call536 = call i32 @iabs(i32 %sub535)
  %493 = load i32, i32* %search_range.addr, align 4
  %cmp537 = icmp sle i32 %call536, %493
  br i1 %cmp537, label %if.then.539, label %if.end.564

if.then.539:                                      ; preds = %land.lhs.true.534
  %494 = load i32, i32* %lambda_factor.addr, align 4
  %495 = load i32, i32* %cand_x, align 4
  %496 = load i32, i32* %mvshift, align 4
  %shl540 = shl i32 %495, %496
  %497 = load i32, i32* %pred_x, align 4
  %sub541 = sub nsw i32 %shl540, %497
  %idxprom542 = sext i32 %sub541 to i64
  %498 = load i32*, i32** @mvbits, align 8
  %arrayidx543 = getelementptr inbounds i32, i32* %498, i64 %idxprom542
  %499 = load i32, i32* %arrayidx543, align 4
  %500 = load i32, i32* %cand_y, align 4
  %501 = load i32, i32* %mvshift, align 4
  %shl544 = shl i32 %500, %501
  %502 = load i32, i32* %pred_y, align 4
  %sub545 = sub nsw i32 %shl544, %502
  %idxprom546 = sext i32 %sub545 to i64
  %503 = load i32*, i32** @mvbits, align 8
  %arrayidx547 = getelementptr inbounds i32, i32* %503, i64 %idxprom546
  %504 = load i32, i32* %arrayidx547, align 4
  %add548 = add nsw i32 %499, %504
  %mul549 = mul nsw i32 %494, %add548
  %shr550 = ashr i32 %mul549, 16
  store i32 %shr550, i32* %mcost, align 4
  %505 = load i32, i32* @dist_method, align 4
  %idxprom551 = sext i32 %505 to i64
  %arrayidx552 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom551
  %506 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx552, align 8
  %507 = load i16*, i16** %orig_pic.addr, align 8
  %508 = load i32, i32* %blocksize_y, align 4
  %509 = load i32, i32* %blocksize_x, align 4
  %510 = load i32, i32* %min_mcost.addr, align 4
  %511 = load i32, i32* %mcost, align 4
  %sub553 = sub nsw i32 %510, %511
  %512 = load i32, i32* %cand_x, align 4
  %add554 = add nsw i32 %512, 20
  %shl555 = shl i32 %add554, 2
  %513 = load i32, i32* %cand_y, align 4
  %add556 = add nsw i32 %513, 20
  %shl557 = shl i32 %add556, 2
  %call558 = call i32 %506(i16* %507, i32 %508, i32 %509, i32 %sub553, i32 %shl555, i32 %shl557)
  %514 = load i32, i32* %mcost, align 4
  %add559 = add nsw i32 %514, %call558
  store i32 %add559, i32* %mcost, align 4
  %515 = load i32, i32* %mcost, align 4
  %516 = load i32, i32* %min_mcost.addr, align 4
  %cmp560 = icmp slt i32 %515, %516
  br i1 %cmp560, label %if.then.562, label %if.end.563

if.then.562:                                      ; preds = %if.then.539
  %517 = load i32, i32* %cand_x, align 4
  store i32 %517, i32* %best_x, align 4
  %518 = load i32, i32* %cand_y, align 4
  store i32 %518, i32* %best_y, align 4
  %519 = load i32, i32* %mcost, align 4
  store i32 %519, i32* %min_mcost.addr, align 4
  br label %if.end.563

if.end.563:                                       ; preds = %if.then.562, %if.then.539
  br label %if.end.564

if.end.564:                                       ; preds = %if.end.563, %land.lhs.true.534, %for.body.517
  br label %for.inc.565

for.inc.565:                                      ; preds = %if.end.564
  %520 = load i16, i16* %m, align 2
  %inc566 = add i16 %520, 1
  store i16 %inc566, i16* %m, align 2
  br label %for.cond.513

for.end.567:                                      ; preds = %for.cond.513
  br label %for.inc.568

for.inc.568:                                      ; preds = %for.end.567
  %521 = load i16, i16* %i, align 2
  %inc569 = add i16 %521, 1
  store i16 %inc569, i16* %i, align 2
  br label %for.cond.507

for.end.570:                                      ; preds = %for.cond.507
  br label %if.end.571

if.end.571:                                       ; preds = %for.end.570, %lor.lhs.false.292
  %522 = load i32, i32* %blocktype.addr, align 4
  %cmp572 = icmp sgt i32 %522, 1
  br i1 %cmp572, label %if.then.574, label %if.end.616

if.then.574:                                      ; preds = %if.end.571
  %523 = load i32, i32* %pic_pix_x.addr, align 4
  %524 = load i16, i16* @smpUMHEX_pred_MV_uplayer_X, align 2
  %conv575 = sext i16 %524 to i32
  %div576 = sdiv i32 %conv575, 4
  %add577 = add nsw i32 %523, %div576
  store i32 %add577, i32* %cand_x, align 4
  %525 = load i32, i32* %pic_pix_y.addr, align 4
  %526 = load i16, i16* @smpUMHEX_pred_MV_uplayer_Y, align 2
  %conv578 = sext i16 %526 to i32
  %div579 = sdiv i32 %conv578, 4
  %add580 = add nsw i32 %525, %div579
  store i32 %add580, i32* %cand_y, align 4
  %527 = load i32, i32* %cand_x, align 4
  %528 = load i32, i32* %center_x, align 4
  %sub581 = sub nsw i32 %527, %528
  %call582 = call i32 @iabs(i32 %sub581)
  %529 = load i32, i32* %search_range.addr, align 4
  %cmp583 = icmp sle i32 %call582, %529
  br i1 %cmp583, label %land.lhs.true.585, label %if.end.615

land.lhs.true.585:                                ; preds = %if.then.574
  %530 = load i32, i32* %cand_y, align 4
  %531 = load i32, i32* %center_y, align 4
  %sub586 = sub nsw i32 %530, %531
  %call587 = call i32 @iabs(i32 %sub586)
  %532 = load i32, i32* %search_range.addr, align 4
  %cmp588 = icmp sle i32 %call587, %532
  br i1 %cmp588, label %if.then.590, label %if.end.615

if.then.590:                                      ; preds = %land.lhs.true.585
  %533 = load i32, i32* %lambda_factor.addr, align 4
  %534 = load i32, i32* %cand_x, align 4
  %535 = load i32, i32* %mvshift, align 4
  %shl591 = shl i32 %534, %535
  %536 = load i32, i32* %pred_x, align 4
  %sub592 = sub nsw i32 %shl591, %536
  %idxprom593 = sext i32 %sub592 to i64
  %537 = load i32*, i32** @mvbits, align 8
  %arrayidx594 = getelementptr inbounds i32, i32* %537, i64 %idxprom593
  %538 = load i32, i32* %arrayidx594, align 4
  %539 = load i32, i32* %cand_y, align 4
  %540 = load i32, i32* %mvshift, align 4
  %shl595 = shl i32 %539, %540
  %541 = load i32, i32* %pred_y, align 4
  %sub596 = sub nsw i32 %shl595, %541
  %idxprom597 = sext i32 %sub596 to i64
  %542 = load i32*, i32** @mvbits, align 8
  %arrayidx598 = getelementptr inbounds i32, i32* %542, i64 %idxprom597
  %543 = load i32, i32* %arrayidx598, align 4
  %add599 = add nsw i32 %538, %543
  %mul600 = mul nsw i32 %533, %add599
  %shr601 = ashr i32 %mul600, 16
  store i32 %shr601, i32* %mcost, align 4
  %544 = load i32, i32* @dist_method, align 4
  %idxprom602 = sext i32 %544 to i64
  %arrayidx603 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom602
  %545 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx603, align 8
  %546 = load i16*, i16** %orig_pic.addr, align 8
  %547 = load i32, i32* %blocksize_y, align 4
  %548 = load i32, i32* %blocksize_x, align 4
  %549 = load i32, i32* %min_mcost.addr, align 4
  %550 = load i32, i32* %mcost, align 4
  %sub604 = sub nsw i32 %549, %550
  %551 = load i32, i32* %cand_x, align 4
  %add605 = add nsw i32 %551, 20
  %shl606 = shl i32 %add605, 2
  %552 = load i32, i32* %cand_y, align 4
  %add607 = add nsw i32 %552, 20
  %shl608 = shl i32 %add607, 2
  %call609 = call i32 %545(i16* %546, i32 %547, i32 %548, i32 %sub604, i32 %shl606, i32 %shl608)
  %553 = load i32, i32* %mcost, align 4
  %add610 = add nsw i32 %553, %call609
  store i32 %add610, i32* %mcost, align 4
  %554 = load i32, i32* %mcost, align 4
  %555 = load i32, i32* %min_mcost.addr, align 4
  %cmp611 = icmp slt i32 %554, %555
  br i1 %cmp611, label %if.then.613, label %if.end.614

if.then.613:                                      ; preds = %if.then.590
  %556 = load i32, i32* %cand_x, align 4
  store i32 %556, i32* %best_x, align 4
  %557 = load i32, i32* %cand_y, align 4
  store i32 %557, i32* %best_y, align 4
  %558 = load i32, i32* %mcost, align 4
  store i32 %558, i32* %min_mcost.addr, align 4
  br label %if.end.614

if.end.614:                                       ; preds = %if.then.613, %if.then.590
  br label %if.end.615

if.end.615:                                       ; preds = %if.end.614, %land.lhs.true.585, %if.then.574
  br label %if.end.616

if.end.616:                                       ; preds = %if.end.615, %if.end.571
  %559 = load i32, i32* %center_x, align 4
  %560 = load i32, i32* %pic_pix_x.addr, align 4
  %cmp617 = icmp ne i32 %559, %560
  br i1 %cmp617, label %if.then.622, label %lor.lhs.false.619

lor.lhs.false.619:                                ; preds = %if.end.616
  %561 = load i32, i32* %center_y, align 4
  %562 = load i32, i32* %pic_pix_y.addr, align 4
  %cmp620 = icmp ne i32 %561, %562
  br i1 %cmp620, label %if.then.622, label %if.end.709

if.then.622:                                      ; preds = %lor.lhs.false.619, %if.end.616
  %563 = load i32, i32* %pic_pix_x.addr, align 4
  store i32 %563, i32* %cand_x, align 4
  %564 = load i32, i32* %pic_pix_y.addr, align 4
  store i32 %564, i32* %cand_y, align 4
  %565 = load i32, i32* %cand_x, align 4
  %566 = load i32, i32* %center_x, align 4
  %sub623 = sub nsw i32 %565, %566
  %call624 = call i32 @iabs(i32 %sub623)
  %567 = load i32, i32* %search_range.addr, align 4
  %cmp625 = icmp sle i32 %call624, %567
  br i1 %cmp625, label %land.lhs.true.627, label %if.end.657

land.lhs.true.627:                                ; preds = %if.then.622
  %568 = load i32, i32* %cand_y, align 4
  %569 = load i32, i32* %center_y, align 4
  %sub628 = sub nsw i32 %568, %569
  %call629 = call i32 @iabs(i32 %sub628)
  %570 = load i32, i32* %search_range.addr, align 4
  %cmp630 = icmp sle i32 %call629, %570
  br i1 %cmp630, label %if.then.632, label %if.end.657

if.then.632:                                      ; preds = %land.lhs.true.627
  %571 = load i32, i32* %lambda_factor.addr, align 4
  %572 = load i32, i32* %cand_x, align 4
  %573 = load i32, i32* %mvshift, align 4
  %shl633 = shl i32 %572, %573
  %574 = load i32, i32* %pred_x, align 4
  %sub634 = sub nsw i32 %shl633, %574
  %idxprom635 = sext i32 %sub634 to i64
  %575 = load i32*, i32** @mvbits, align 8
  %arrayidx636 = getelementptr inbounds i32, i32* %575, i64 %idxprom635
  %576 = load i32, i32* %arrayidx636, align 4
  %577 = load i32, i32* %cand_y, align 4
  %578 = load i32, i32* %mvshift, align 4
  %shl637 = shl i32 %577, %578
  %579 = load i32, i32* %pred_y, align 4
  %sub638 = sub nsw i32 %shl637, %579
  %idxprom639 = sext i32 %sub638 to i64
  %580 = load i32*, i32** @mvbits, align 8
  %arrayidx640 = getelementptr inbounds i32, i32* %580, i64 %idxprom639
  %581 = load i32, i32* %arrayidx640, align 4
  %add641 = add nsw i32 %576, %581
  %mul642 = mul nsw i32 %571, %add641
  %shr643 = ashr i32 %mul642, 16
  store i32 %shr643, i32* %mcost, align 4
  %582 = load i32, i32* @dist_method, align 4
  %idxprom644 = sext i32 %582 to i64
  %arrayidx645 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom644
  %583 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx645, align 8
  %584 = load i16*, i16** %orig_pic.addr, align 8
  %585 = load i32, i32* %blocksize_y, align 4
  %586 = load i32, i32* %blocksize_x, align 4
  %587 = load i32, i32* %min_mcost.addr, align 4
  %588 = load i32, i32* %mcost, align 4
  %sub646 = sub nsw i32 %587, %588
  %589 = load i32, i32* %cand_x, align 4
  %add647 = add nsw i32 %589, 20
  %shl648 = shl i32 %add647, 2
  %590 = load i32, i32* %cand_y, align 4
  %add649 = add nsw i32 %590, 20
  %shl650 = shl i32 %add649, 2
  %call651 = call i32 %583(i16* %584, i32 %585, i32 %586, i32 %sub646, i32 %shl648, i32 %shl650)
  %591 = load i32, i32* %mcost, align 4
  %add652 = add nsw i32 %591, %call651
  store i32 %add652, i32* %mcost, align 4
  %592 = load i32, i32* %mcost, align 4
  %593 = load i32, i32* %min_mcost.addr, align 4
  %cmp653 = icmp slt i32 %592, %593
  br i1 %cmp653, label %if.then.655, label %if.end.656

if.then.655:                                      ; preds = %if.then.632
  %594 = load i32, i32* %cand_x, align 4
  store i32 %594, i32* %best_x, align 4
  %595 = load i32, i32* %cand_y, align 4
  store i32 %595, i32* %best_y, align 4
  %596 = load i32, i32* %mcost, align 4
  store i32 %596, i32* %min_mcost.addr, align 4
  br label %if.end.656

if.end.656:                                       ; preds = %if.then.655, %if.then.632
  br label %if.end.657

if.end.657:                                       ; preds = %if.end.656, %land.lhs.true.627, %if.then.622
  %597 = load i32, i32* %best_x, align 4
  store i32 %597, i32* %iXMinNow, align 4
  %598 = load i32, i32* %best_y, align 4
  store i32 %598, i32* %iYMinNow, align 4
  store i16 0, i16* %m, align 2
  br label %for.cond.658

for.cond.658:                                     ; preds = %for.inc.706, %if.end.657
  %599 = load i16, i16* %m, align 2
  %conv659 = zext i16 %599 to i32
  %cmp660 = icmp slt i32 %conv659, 4
  br i1 %cmp660, label %for.body.662, label %for.end.708

for.body.662:                                     ; preds = %for.cond.658
  %600 = load i32, i32* %iXMinNow, align 4
  %601 = load i16, i16* %m, align 2
  %idxprom663 = zext i16 %601 to i64
  %arrayidx664 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom663
  %602 = load i16, i16* %arrayidx664, align 2
  %conv665 = sext i16 %602 to i32
  %add666 = add nsw i32 %600, %conv665
  store i32 %add666, i32* %cand_x, align 4
  %603 = load i32, i32* %iYMinNow, align 4
  %604 = load i16, i16* %m, align 2
  %idxprom667 = zext i16 %604 to i64
  %arrayidx668 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom667
  %605 = load i16, i16* %arrayidx668, align 2
  %conv669 = sext i16 %605 to i32
  %add670 = add nsw i32 %603, %conv669
  store i32 %add670, i32* %cand_y, align 4
  %606 = load i32, i32* %cand_x, align 4
  %607 = load i32, i32* %center_x, align 4
  %sub671 = sub nsw i32 %606, %607
  %call672 = call i32 @iabs(i32 %sub671)
  %608 = load i32, i32* %search_range.addr, align 4
  %cmp673 = icmp sle i32 %call672, %608
  br i1 %cmp673, label %land.lhs.true.675, label %if.end.705

land.lhs.true.675:                                ; preds = %for.body.662
  %609 = load i32, i32* %cand_y, align 4
  %610 = load i32, i32* %center_y, align 4
  %sub676 = sub nsw i32 %609, %610
  %call677 = call i32 @iabs(i32 %sub676)
  %611 = load i32, i32* %search_range.addr, align 4
  %cmp678 = icmp sle i32 %call677, %611
  br i1 %cmp678, label %if.then.680, label %if.end.705

if.then.680:                                      ; preds = %land.lhs.true.675
  %612 = load i32, i32* %lambda_factor.addr, align 4
  %613 = load i32, i32* %cand_x, align 4
  %614 = load i32, i32* %mvshift, align 4
  %shl681 = shl i32 %613, %614
  %615 = load i32, i32* %pred_x, align 4
  %sub682 = sub nsw i32 %shl681, %615
  %idxprom683 = sext i32 %sub682 to i64
  %616 = load i32*, i32** @mvbits, align 8
  %arrayidx684 = getelementptr inbounds i32, i32* %616, i64 %idxprom683
  %617 = load i32, i32* %arrayidx684, align 4
  %618 = load i32, i32* %cand_y, align 4
  %619 = load i32, i32* %mvshift, align 4
  %shl685 = shl i32 %618, %619
  %620 = load i32, i32* %pred_y, align 4
  %sub686 = sub nsw i32 %shl685, %620
  %idxprom687 = sext i32 %sub686 to i64
  %621 = load i32*, i32** @mvbits, align 8
  %arrayidx688 = getelementptr inbounds i32, i32* %621, i64 %idxprom687
  %622 = load i32, i32* %arrayidx688, align 4
  %add689 = add nsw i32 %617, %622
  %mul690 = mul nsw i32 %612, %add689
  %shr691 = ashr i32 %mul690, 16
  store i32 %shr691, i32* %mcost, align 4
  %623 = load i32, i32* @dist_method, align 4
  %idxprom692 = sext i32 %623 to i64
  %arrayidx693 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom692
  %624 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx693, align 8
  %625 = load i16*, i16** %orig_pic.addr, align 8
  %626 = load i32, i32* %blocksize_y, align 4
  %627 = load i32, i32* %blocksize_x, align 4
  %628 = load i32, i32* %min_mcost.addr, align 4
  %629 = load i32, i32* %mcost, align 4
  %sub694 = sub nsw i32 %628, %629
  %630 = load i32, i32* %cand_x, align 4
  %add695 = add nsw i32 %630, 20
  %shl696 = shl i32 %add695, 2
  %631 = load i32, i32* %cand_y, align 4
  %add697 = add nsw i32 %631, 20
  %shl698 = shl i32 %add697, 2
  %call699 = call i32 %624(i16* %625, i32 %626, i32 %627, i32 %sub694, i32 %shl696, i32 %shl698)
  %632 = load i32, i32* %mcost, align 4
  %add700 = add nsw i32 %632, %call699
  store i32 %add700, i32* %mcost, align 4
  %633 = load i32, i32* %mcost, align 4
  %634 = load i32, i32* %min_mcost.addr, align 4
  %cmp701 = icmp slt i32 %633, %634
  br i1 %cmp701, label %if.then.703, label %if.end.704

if.then.703:                                      ; preds = %if.then.680
  %635 = load i32, i32* %cand_x, align 4
  store i32 %635, i32* %best_x, align 4
  %636 = load i32, i32* %cand_y, align 4
  store i32 %636, i32* %best_y, align 4
  %637 = load i32, i32* %mcost, align 4
  store i32 %637, i32* %min_mcost.addr, align 4
  br label %if.end.704

if.end.704:                                       ; preds = %if.then.703, %if.then.680
  br label %if.end.705

if.end.705:                                       ; preds = %if.end.704, %land.lhs.true.675, %for.body.662
  br label %for.inc.706

for.inc.706:                                      ; preds = %if.end.705
  %638 = load i16, i16* %m, align 2
  %inc707 = add i16 %638, 1
  store i16 %inc707, i16* %m, align 2
  br label %for.cond.658

for.end.708:                                      ; preds = %for.cond.658
  br label %if.end.709

if.end.709:                                       ; preds = %for.end.708, %lor.lhs.false.619
  %639 = load i32, i32* %min_mcost.addr, align 4
  %640 = load i16, i16* @ConvergeThreshold, align 2
  %conv710 = zext i16 %640 to i32
  %641 = load i32, i32* %blocktype.addr, align 4
  %idxprom711 = sext i32 %641 to i64
  %arrayidx712 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom711
  %642 = load i16, i16* %arrayidx712, align 2
  %conv713 = sext i16 %642 to i32
  %shr714 = ashr i32 %conv710, %conv713
  %cmp715 = icmp slt i32 %639, %shr714
  br i1 %cmp715, label %if.then.717, label %if.end.773

if.then.717:                                      ; preds = %if.end.709
  %643 = load i32, i32* %best_x, align 4
  store i32 %643, i32* %iXMinNow, align 4
  %644 = load i32, i32* %best_y, align 4
  store i32 %644, i32* %iYMinNow, align 4
  store i16 0, i16* %m, align 2
  br label %for.cond.718

for.cond.718:                                     ; preds = %for.inc.766, %if.then.717
  %645 = load i16, i16* %m, align 2
  %conv719 = zext i16 %645 to i32
  %cmp720 = icmp slt i32 %conv719, 4
  br i1 %cmp720, label %for.body.722, label %for.end.768

for.body.722:                                     ; preds = %for.cond.718
  %646 = load i32, i32* %iXMinNow, align 4
  %647 = load i16, i16* %m, align 2
  %idxprom723 = zext i16 %647 to i64
  %arrayidx724 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom723
  %648 = load i16, i16* %arrayidx724, align 2
  %conv725 = sext i16 %648 to i32
  %add726 = add nsw i32 %646, %conv725
  store i32 %add726, i32* %cand_x, align 4
  %649 = load i32, i32* %iYMinNow, align 4
  %650 = load i16, i16* %m, align 2
  %idxprom727 = zext i16 %650 to i64
  %arrayidx728 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom727
  %651 = load i16, i16* %arrayidx728, align 2
  %conv729 = sext i16 %651 to i32
  %add730 = add nsw i32 %649, %conv729
  store i32 %add730, i32* %cand_y, align 4
  %652 = load i32, i32* %cand_x, align 4
  %653 = load i32, i32* %center_x, align 4
  %sub731 = sub nsw i32 %652, %653
  %call732 = call i32 @iabs(i32 %sub731)
  %654 = load i32, i32* %search_range.addr, align 4
  %cmp733 = icmp sle i32 %call732, %654
  br i1 %cmp733, label %land.lhs.true.735, label %if.end.765

land.lhs.true.735:                                ; preds = %for.body.722
  %655 = load i32, i32* %cand_y, align 4
  %656 = load i32, i32* %center_y, align 4
  %sub736 = sub nsw i32 %655, %656
  %call737 = call i32 @iabs(i32 %sub736)
  %657 = load i32, i32* %search_range.addr, align 4
  %cmp738 = icmp sle i32 %call737, %657
  br i1 %cmp738, label %if.then.740, label %if.end.765

if.then.740:                                      ; preds = %land.lhs.true.735
  %658 = load i32, i32* %lambda_factor.addr, align 4
  %659 = load i32, i32* %cand_x, align 4
  %660 = load i32, i32* %mvshift, align 4
  %shl741 = shl i32 %659, %660
  %661 = load i32, i32* %pred_x, align 4
  %sub742 = sub nsw i32 %shl741, %661
  %idxprom743 = sext i32 %sub742 to i64
  %662 = load i32*, i32** @mvbits, align 8
  %arrayidx744 = getelementptr inbounds i32, i32* %662, i64 %idxprom743
  %663 = load i32, i32* %arrayidx744, align 4
  %664 = load i32, i32* %cand_y, align 4
  %665 = load i32, i32* %mvshift, align 4
  %shl745 = shl i32 %664, %665
  %666 = load i32, i32* %pred_y, align 4
  %sub746 = sub nsw i32 %shl745, %666
  %idxprom747 = sext i32 %sub746 to i64
  %667 = load i32*, i32** @mvbits, align 8
  %arrayidx748 = getelementptr inbounds i32, i32* %667, i64 %idxprom747
  %668 = load i32, i32* %arrayidx748, align 4
  %add749 = add nsw i32 %663, %668
  %mul750 = mul nsw i32 %658, %add749
  %shr751 = ashr i32 %mul750, 16
  store i32 %shr751, i32* %mcost, align 4
  %669 = load i32, i32* @dist_method, align 4
  %idxprom752 = sext i32 %669 to i64
  %arrayidx753 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom752
  %670 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx753, align 8
  %671 = load i16*, i16** %orig_pic.addr, align 8
  %672 = load i32, i32* %blocksize_y, align 4
  %673 = load i32, i32* %blocksize_x, align 4
  %674 = load i32, i32* %min_mcost.addr, align 4
  %675 = load i32, i32* %mcost, align 4
  %sub754 = sub nsw i32 %674, %675
  %676 = load i32, i32* %cand_x, align 4
  %add755 = add nsw i32 %676, 20
  %shl756 = shl i32 %add755, 2
  %677 = load i32, i32* %cand_y, align 4
  %add757 = add nsw i32 %677, 20
  %shl758 = shl i32 %add757, 2
  %call759 = call i32 %670(i16* %671, i32 %672, i32 %673, i32 %sub754, i32 %shl756, i32 %shl758)
  %678 = load i32, i32* %mcost, align 4
  %add760 = add nsw i32 %678, %call759
  store i32 %add760, i32* %mcost, align 4
  %679 = load i32, i32* %mcost, align 4
  %680 = load i32, i32* %min_mcost.addr, align 4
  %cmp761 = icmp slt i32 %679, %680
  br i1 %cmp761, label %if.then.763, label %if.end.764

if.then.763:                                      ; preds = %if.then.740
  %681 = load i32, i32* %cand_x, align 4
  store i32 %681, i32* %best_x, align 4
  %682 = load i32, i32* %cand_y, align 4
  store i32 %682, i32* %best_y, align 4
  %683 = load i32, i32* %mcost, align 4
  store i32 %683, i32* %min_mcost.addr, align 4
  br label %if.end.764

if.end.764:                                       ; preds = %if.then.763, %if.then.740
  br label %if.end.765

if.end.765:                                       ; preds = %if.end.764, %land.lhs.true.735, %for.body.722
  br label %for.inc.766

for.inc.766:                                      ; preds = %if.end.765
  %684 = load i16, i16* %m, align 2
  %inc767 = add i16 %684, 1
  store i16 %inc767, i16* %m, align 2
  br label %for.cond.718

for.end.768:                                      ; preds = %for.cond.718
  %685 = load i32, i32* %best_x, align 4
  %686 = load i32, i32* %pic_pix_x.addr, align 4
  %sub769 = sub nsw i32 %685, %686
  %conv770 = trunc i32 %sub769 to i16
  %687 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv770, i16* %687, align 2
  %688 = load i32, i32* %best_y, align 4
  %689 = load i32, i32* %pic_pix_y.addr, align 4
  %sub771 = sub nsw i32 %688, %689
  %conv772 = trunc i32 %sub771 to i16
  %690 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv772, i16* %690, align 2
  %691 = load i32, i32* %min_mcost.addr, align 4
  store i32 %691, i32* %retval
  br label %return

if.end.773:                                       ; preds = %if.end.709
  store i16 0, i16* %i, align 2
  br label %for.cond.774

for.cond.774:                                     ; preds = %for.inc.837, %if.end.773
  %692 = load i16, i16* %i, align 2
  %conv775 = zext i16 %692 to i32
  %693 = load i32, i32* %search_range.addr, align 4
  %cmp776 = icmp slt i32 %conv775, %693
  br i1 %cmp776, label %for.body.778, label %for.end.839

for.body.778:                                     ; preds = %for.cond.774
  %694 = load i32, i32* %best_x, align 4
  store i32 %694, i32* %iXMinNow, align 4
  %695 = load i32, i32* %best_y, align 4
  store i32 %695, i32* %iYMinNow, align 4
  store i16 0, i16* %m, align 2
  br label %for.cond.779

for.cond.779:                                     ; preds = %for.inc.827, %for.body.778
  %696 = load i16, i16* %m, align 2
  %conv780 = zext i16 %696 to i32
  %cmp781 = icmp slt i32 %conv780, 6
  br i1 %cmp781, label %for.body.783, label %for.end.829

for.body.783:                                     ; preds = %for.cond.779
  %697 = load i32, i32* %iXMinNow, align 4
  %698 = load i16, i16* %m, align 2
  %idxprom784 = zext i16 %698 to i64
  %arrayidx785 = getelementptr inbounds [6 x i16], [6 x i16]* @Hexagon_X, i32 0, i64 %idxprom784
  %699 = load i16, i16* %arrayidx785, align 2
  %conv786 = sext i16 %699 to i32
  %add787 = add nsw i32 %697, %conv786
  store i32 %add787, i32* %cand_x, align 4
  %700 = load i32, i32* %iYMinNow, align 4
  %701 = load i16, i16* %m, align 2
  %idxprom788 = zext i16 %701 to i64
  %arrayidx789 = getelementptr inbounds [6 x i16], [6 x i16]* @Hexagon_Y, i32 0, i64 %idxprom788
  %702 = load i16, i16* %arrayidx789, align 2
  %conv790 = sext i16 %702 to i32
  %add791 = add nsw i32 %700, %conv790
  store i32 %add791, i32* %cand_y, align 4
  %703 = load i32, i32* %cand_x, align 4
  %704 = load i32, i32* %center_x, align 4
  %sub792 = sub nsw i32 %703, %704
  %call793 = call i32 @iabs(i32 %sub792)
  %705 = load i32, i32* %search_range.addr, align 4
  %cmp794 = icmp sle i32 %call793, %705
  br i1 %cmp794, label %land.lhs.true.796, label %if.end.826

land.lhs.true.796:                                ; preds = %for.body.783
  %706 = load i32, i32* %cand_y, align 4
  %707 = load i32, i32* %center_y, align 4
  %sub797 = sub nsw i32 %706, %707
  %call798 = call i32 @iabs(i32 %sub797)
  %708 = load i32, i32* %search_range.addr, align 4
  %cmp799 = icmp sle i32 %call798, %708
  br i1 %cmp799, label %if.then.801, label %if.end.826

if.then.801:                                      ; preds = %land.lhs.true.796
  %709 = load i32, i32* %lambda_factor.addr, align 4
  %710 = load i32, i32* %cand_x, align 4
  %711 = load i32, i32* %mvshift, align 4
  %shl802 = shl i32 %710, %711
  %712 = load i32, i32* %pred_x, align 4
  %sub803 = sub nsw i32 %shl802, %712
  %idxprom804 = sext i32 %sub803 to i64
  %713 = load i32*, i32** @mvbits, align 8
  %arrayidx805 = getelementptr inbounds i32, i32* %713, i64 %idxprom804
  %714 = load i32, i32* %arrayidx805, align 4
  %715 = load i32, i32* %cand_y, align 4
  %716 = load i32, i32* %mvshift, align 4
  %shl806 = shl i32 %715, %716
  %717 = load i32, i32* %pred_y, align 4
  %sub807 = sub nsw i32 %shl806, %717
  %idxprom808 = sext i32 %sub807 to i64
  %718 = load i32*, i32** @mvbits, align 8
  %arrayidx809 = getelementptr inbounds i32, i32* %718, i64 %idxprom808
  %719 = load i32, i32* %arrayidx809, align 4
  %add810 = add nsw i32 %714, %719
  %mul811 = mul nsw i32 %709, %add810
  %shr812 = ashr i32 %mul811, 16
  store i32 %shr812, i32* %mcost, align 4
  %720 = load i32, i32* @dist_method, align 4
  %idxprom813 = sext i32 %720 to i64
  %arrayidx814 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom813
  %721 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx814, align 8
  %722 = load i16*, i16** %orig_pic.addr, align 8
  %723 = load i32, i32* %blocksize_y, align 4
  %724 = load i32, i32* %blocksize_x, align 4
  %725 = load i32, i32* %min_mcost.addr, align 4
  %726 = load i32, i32* %mcost, align 4
  %sub815 = sub nsw i32 %725, %726
  %727 = load i32, i32* %cand_x, align 4
  %add816 = add nsw i32 %727, 20
  %shl817 = shl i32 %add816, 2
  %728 = load i32, i32* %cand_y, align 4
  %add818 = add nsw i32 %728, 20
  %shl819 = shl i32 %add818, 2
  %call820 = call i32 %721(i16* %722, i32 %723, i32 %724, i32 %sub815, i32 %shl817, i32 %shl819)
  %729 = load i32, i32* %mcost, align 4
  %add821 = add nsw i32 %729, %call820
  store i32 %add821, i32* %mcost, align 4
  %730 = load i32, i32* %mcost, align 4
  %731 = load i32, i32* %min_mcost.addr, align 4
  %cmp822 = icmp slt i32 %730, %731
  br i1 %cmp822, label %if.then.824, label %if.end.825

if.then.824:                                      ; preds = %if.then.801
  %732 = load i32, i32* %cand_x, align 4
  store i32 %732, i32* %best_x, align 4
  %733 = load i32, i32* %cand_y, align 4
  store i32 %733, i32* %best_y, align 4
  %734 = load i32, i32* %mcost, align 4
  store i32 %734, i32* %min_mcost.addr, align 4
  br label %if.end.825

if.end.825:                                       ; preds = %if.then.824, %if.then.801
  br label %if.end.826

if.end.826:                                       ; preds = %if.end.825, %land.lhs.true.796, %for.body.783
  br label %for.inc.827

for.inc.827:                                      ; preds = %if.end.826
  %735 = load i16, i16* %m, align 2
  %inc828 = add i16 %735, 1
  store i16 %inc828, i16* %m, align 2
  br label %for.cond.779

for.end.829:                                      ; preds = %for.cond.779
  %736 = load i32, i32* %best_x, align 4
  %737 = load i32, i32* %iXMinNow, align 4
  %cmp830 = icmp eq i32 %736, %737
  br i1 %cmp830, label %land.lhs.true.832, label %if.end.836

land.lhs.true.832:                                ; preds = %for.end.829
  %738 = load i32, i32* %best_y, align 4
  %739 = load i32, i32* %iYMinNow, align 4
  %cmp833 = icmp eq i32 %738, %739
  br i1 %cmp833, label %if.then.835, label %if.end.836

if.then.835:                                      ; preds = %land.lhs.true.832
  br label %for.end.839

if.end.836:                                       ; preds = %land.lhs.true.832, %for.end.829
  br label %for.inc.837

for.inc.837:                                      ; preds = %if.end.836
  %740 = load i16, i16* %i, align 2
  %inc838 = add i16 %740, 1
  store i16 %inc838, i16* %i, align 2
  br label %for.cond.774

for.end.839:                                      ; preds = %if.then.835, %for.cond.774
  store i16 0, i16* %i, align 2
  br label %for.cond.840

for.cond.840:                                     ; preds = %for.inc.903, %for.end.839
  %741 = load i16, i16* %i, align 2
  %conv841 = zext i16 %741 to i32
  %742 = load i32, i32* %search_range.addr, align 4
  %cmp842 = icmp slt i32 %conv841, %742
  br i1 %cmp842, label %for.body.844, label %for.end.905

for.body.844:                                     ; preds = %for.cond.840
  %743 = load i32, i32* %best_x, align 4
  store i32 %743, i32* %iXMinNow, align 4
  %744 = load i32, i32* %best_y, align 4
  store i32 %744, i32* %iYMinNow, align 4
  store i16 0, i16* %m, align 2
  br label %for.cond.845

for.cond.845:                                     ; preds = %for.inc.893, %for.body.844
  %745 = load i16, i16* %m, align 2
  %conv846 = zext i16 %745 to i32
  %cmp847 = icmp slt i32 %conv846, 4
  br i1 %cmp847, label %for.body.849, label %for.end.895

for.body.849:                                     ; preds = %for.cond.845
  %746 = load i32, i32* %iXMinNow, align 4
  %747 = load i16, i16* %m, align 2
  %idxprom850 = zext i16 %747 to i64
  %arrayidx851 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom850
  %748 = load i16, i16* %arrayidx851, align 2
  %conv852 = sext i16 %748 to i32
  %add853 = add nsw i32 %746, %conv852
  store i32 %add853, i32* %cand_x, align 4
  %749 = load i32, i32* %iYMinNow, align 4
  %750 = load i16, i16* %m, align 2
  %idxprom854 = zext i16 %750 to i64
  %arrayidx855 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom854
  %751 = load i16, i16* %arrayidx855, align 2
  %conv856 = sext i16 %751 to i32
  %add857 = add nsw i32 %749, %conv856
  store i32 %add857, i32* %cand_y, align 4
  %752 = load i32, i32* %cand_x, align 4
  %753 = load i32, i32* %center_x, align 4
  %sub858 = sub nsw i32 %752, %753
  %call859 = call i32 @iabs(i32 %sub858)
  %754 = load i32, i32* %search_range.addr, align 4
  %cmp860 = icmp sle i32 %call859, %754
  br i1 %cmp860, label %land.lhs.true.862, label %if.end.892

land.lhs.true.862:                                ; preds = %for.body.849
  %755 = load i32, i32* %cand_y, align 4
  %756 = load i32, i32* %center_y, align 4
  %sub863 = sub nsw i32 %755, %756
  %call864 = call i32 @iabs(i32 %sub863)
  %757 = load i32, i32* %search_range.addr, align 4
  %cmp865 = icmp sle i32 %call864, %757
  br i1 %cmp865, label %if.then.867, label %if.end.892

if.then.867:                                      ; preds = %land.lhs.true.862
  %758 = load i32, i32* %lambda_factor.addr, align 4
  %759 = load i32, i32* %cand_x, align 4
  %760 = load i32, i32* %mvshift, align 4
  %shl868 = shl i32 %759, %760
  %761 = load i32, i32* %pred_x, align 4
  %sub869 = sub nsw i32 %shl868, %761
  %idxprom870 = sext i32 %sub869 to i64
  %762 = load i32*, i32** @mvbits, align 8
  %arrayidx871 = getelementptr inbounds i32, i32* %762, i64 %idxprom870
  %763 = load i32, i32* %arrayidx871, align 4
  %764 = load i32, i32* %cand_y, align 4
  %765 = load i32, i32* %mvshift, align 4
  %shl872 = shl i32 %764, %765
  %766 = load i32, i32* %pred_y, align 4
  %sub873 = sub nsw i32 %shl872, %766
  %idxprom874 = sext i32 %sub873 to i64
  %767 = load i32*, i32** @mvbits, align 8
  %arrayidx875 = getelementptr inbounds i32, i32* %767, i64 %idxprom874
  %768 = load i32, i32* %arrayidx875, align 4
  %add876 = add nsw i32 %763, %768
  %mul877 = mul nsw i32 %758, %add876
  %shr878 = ashr i32 %mul877, 16
  store i32 %shr878, i32* %mcost, align 4
  %769 = load i32, i32* @dist_method, align 4
  %idxprom879 = sext i32 %769 to i64
  %arrayidx880 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom879
  %770 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx880, align 8
  %771 = load i16*, i16** %orig_pic.addr, align 8
  %772 = load i32, i32* %blocksize_y, align 4
  %773 = load i32, i32* %blocksize_x, align 4
  %774 = load i32, i32* %min_mcost.addr, align 4
  %775 = load i32, i32* %mcost, align 4
  %sub881 = sub nsw i32 %774, %775
  %776 = load i32, i32* %cand_x, align 4
  %add882 = add nsw i32 %776, 20
  %shl883 = shl i32 %add882, 2
  %777 = load i32, i32* %cand_y, align 4
  %add884 = add nsw i32 %777, 20
  %shl885 = shl i32 %add884, 2
  %call886 = call i32 %770(i16* %771, i32 %772, i32 %773, i32 %sub881, i32 %shl883, i32 %shl885)
  %778 = load i32, i32* %mcost, align 4
  %add887 = add nsw i32 %778, %call886
  store i32 %add887, i32* %mcost, align 4
  %779 = load i32, i32* %mcost, align 4
  %780 = load i32, i32* %min_mcost.addr, align 4
  %cmp888 = icmp slt i32 %779, %780
  br i1 %cmp888, label %if.then.890, label %if.end.891

if.then.890:                                      ; preds = %if.then.867
  %781 = load i32, i32* %cand_x, align 4
  store i32 %781, i32* %best_x, align 4
  %782 = load i32, i32* %cand_y, align 4
  store i32 %782, i32* %best_y, align 4
  %783 = load i32, i32* %mcost, align 4
  store i32 %783, i32* %min_mcost.addr, align 4
  br label %if.end.891

if.end.891:                                       ; preds = %if.then.890, %if.then.867
  br label %if.end.892

if.end.892:                                       ; preds = %if.end.891, %land.lhs.true.862, %for.body.849
  br label %for.inc.893

for.inc.893:                                      ; preds = %if.end.892
  %784 = load i16, i16* %m, align 2
  %inc894 = add i16 %784, 1
  store i16 %inc894, i16* %m, align 2
  br label %for.cond.845

for.end.895:                                      ; preds = %for.cond.845
  %785 = load i32, i32* %best_x, align 4
  %786 = load i32, i32* %iXMinNow, align 4
  %cmp896 = icmp eq i32 %785, %786
  br i1 %cmp896, label %land.lhs.true.898, label %if.end.902

land.lhs.true.898:                                ; preds = %for.end.895
  %787 = load i32, i32* %best_y, align 4
  %788 = load i32, i32* %iYMinNow, align 4
  %cmp899 = icmp eq i32 %787, %788
  br i1 %cmp899, label %if.then.901, label %if.end.902

if.then.901:                                      ; preds = %land.lhs.true.898
  br label %for.end.905

if.end.902:                                       ; preds = %land.lhs.true.898, %for.end.895
  br label %for.inc.903

for.inc.903:                                      ; preds = %if.end.902
  %789 = load i16, i16* %i, align 2
  %inc904 = add i16 %789, 1
  store i16 %inc904, i16* %i, align 2
  br label %for.cond.840

for.end.905:                                      ; preds = %if.then.901, %for.cond.840
  %790 = load i32, i32* %best_x, align 4
  %791 = load i32, i32* %pic_pix_x.addr, align 4
  %sub906 = sub nsw i32 %790, %791
  %conv907 = trunc i32 %sub906 to i16
  %792 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv907, i16* %792, align 2
  %793 = load i32, i32* %best_y, align 4
  %794 = load i32, i32* %pic_pix_y.addr, align 4
  %sub908 = sub nsw i32 %793, %794
  %conv909 = trunc i32 %sub908 to i16
  %795 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv909, i16* %795, align 2
  %796 = load i32, i32* %min_mcost.addr, align 4
  store i32 %796, i32* %retval
  br label %return

return:                                           ; preds = %for.end.905, %for.end.768, %for.end
  %797 = load i32, i32* %retval
  ret i32 %797
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
define i32 @smpUMHEXFullSubPelBlockMotionSearch(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %retval = alloca i32, align 4
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
  %lambda_factor.addr = alloca i32, align 4
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
  %ref_picture = alloca %struct.storable_picture*, align 8
  %max_pos_x4 = alloca i32, align 4
  %max_pos_y4 = alloca i32, align 4
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
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
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
  %40 = load i16, i16* %ref.addr, align 2
  %idxprom43 = sext i16 %40 to i64
  %41 = load i32, i32* %list.addr, align 4
  %42 = load i32, i32* %list_offset, align 4
  %add44 = add nsw i32 %41, %42
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom45
  %43 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %43, i64 %idxprom43
  %44 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx47, align 8
  store %struct.storable_picture* %44, %struct.storable_picture** %ref_picture, align 8
  %45 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 18
  %46 = load i32, i32* %size_x, align 4
  %47 = load i32, i32* %blocksize_x, align 4
  %sub = sub nsw i32 %46, %47
  %add48 = add nsw i32 %sub, 40
  %shl49 = shl i32 %add48, 2
  store i32 %shl49, i32* %max_pos_x4, align 4
  %48 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %48, i32 0, i32 19
  %49 = load i32, i32* %size_y, align 4
  %50 = load i32, i32* %blocksize_y, align 4
  %sub50 = sub nsw i32 %49, %50
  %add51 = add nsw i32 %sub50, 40
  %shl52 = shl i32 %add51, 2
  store i32 %shl52, i32* %max_pos_y4, align 4
  %51 = load i32, i32* %apply_weights, align 4
  %mul = mul nsw i32 3, %51
  %add53 = add nsw i32 2, %mul
  store i32 %add53, i32* @dist_method, align 4
  %52 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %52, i32 0, i32 30
  %53 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %53, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %54 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x54 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %54, i32 0, i32 18
  %55 = load i32, i32* %size_x54, align 4
  %conv55 = trunc i32 %55 to i16
  store i16 %conv55, i16* @img_width, align 2
  %56 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y56 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 19
  %57 = load i32, i32* %size_y56, align 4
  %conv57 = trunc i32 %57 to i16
  store i16 %conv57, i16* @img_height, align 2
  %58 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 22
  %59 = load i32, i32* %size_x_pad, align 4
  store i32 %59, i32* @width_pad, align 4
  %60 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %60, i32 0, i32 23
  %61 = load i32, i32* %size_y_pad, align 4
  store i32 %61, i32* @height_pad, align 4
  %62 = load i32, i32* %apply_weights, align 4
  %tobool58 = icmp ne i32 %62, 0
  br i1 %tobool58, label %if.then, label %if.end

if.then:                                          ; preds = %land.end.41
  %63 = load i16, i16* %ref.addr, align 2
  %idxprom59 = sext i16 %63 to i64
  %64 = load i32, i32* %list.addr, align 4
  %65 = load i32, i32* %list_offset, align 4
  %add60 = add nsw i32 %64, %65
  %idxprom61 = sext i32 %add60 to i64
  %66 = load i32***, i32**** @wp_weight, align 8
  %arrayidx62 = getelementptr inbounds i32**, i32*** %66, i64 %idxprom61
  %67 = load i32**, i32*** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i32*, i32** %67, i64 %idxprom59
  %68 = load i32*, i32** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %68, i64 0
  %69 = load i32, i32* %arrayidx64, align 4
  store i32 %69, i32* @weight_luma, align 4
  %70 = load i16, i16* %ref.addr, align 2
  %idxprom65 = sext i16 %70 to i64
  %71 = load i32, i32* %list.addr, align 4
  %72 = load i32, i32* %list_offset, align 4
  %add66 = add nsw i32 %71, %72
  %idxprom67 = sext i32 %add66 to i64
  %73 = load i32***, i32**** @wp_offset, align 8
  %arrayidx68 = getelementptr inbounds i32**, i32*** %73, i64 %idxprom67
  %74 = load i32**, i32*** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %74, i64 %idxprom65
  %75 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %75, i64 0
  %76 = load i32, i32* %arrayidx70, align 4
  store i32 %76, i32* @offset_luma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.41
  %77 = load i32, i32* @ChromaMEEnable, align 4
  %tobool71 = icmp ne i32 %77, 0
  br i1 %tobool71, label %if.then.72, label %if.end.103

if.then.72:                                       ; preds = %if.end
  %78 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %78, i32 0, i32 32
  %79 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx73 = getelementptr inbounds i16****, i16***** %79, i64 0
  %80 = load i16****, i16***** %arrayidx73, align 8
  store i16**** %80, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 0), align 8
  %81 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub74 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %81, i32 0, i32 32
  %82 = load i16*****, i16****** %imgUV_sub74, align 8
  %arrayidx75 = getelementptr inbounds i16****, i16***** %82, i64 1
  %83 = load i16****, i16***** %arrayidx75, align 8
  store i16**** %83, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 1), align 8
  %84 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %84, i32 0, i32 24
  %85 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %85, i32* @width_pad_cr, align 4
  %86 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %86, i32 0, i32 25
  %87 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %87, i32* @height_pad_cr, align 4
  %88 = load i32, i32* %apply_weights, align 4
  %tobool76 = icmp ne i32 %88, 0
  br i1 %tobool76, label %if.then.77, label %if.end.102

if.then.77:                                       ; preds = %if.then.72
  %89 = load i16, i16* %ref.addr, align 2
  %idxprom78 = sext i16 %89 to i64
  %90 = load i32, i32* %list.addr, align 4
  %91 = load i32, i32* %list_offset, align 4
  %add79 = add nsw i32 %90, %91
  %idxprom80 = sext i32 %add79 to i64
  %92 = load i32***, i32**** @wp_weight, align 8
  %arrayidx81 = getelementptr inbounds i32**, i32*** %92, i64 %idxprom80
  %93 = load i32**, i32*** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i32*, i32** %93, i64 %idxprom78
  %94 = load i32*, i32** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %94, i64 1
  %95 = load i32, i32* %arrayidx83, align 4
  store i32 %95, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 0), align 4
  %96 = load i16, i16* %ref.addr, align 2
  %idxprom84 = sext i16 %96 to i64
  %97 = load i32, i32* %list.addr, align 4
  %98 = load i32, i32* %list_offset, align 4
  %add85 = add nsw i32 %97, %98
  %idxprom86 = sext i32 %add85 to i64
  %99 = load i32***, i32**** @wp_weight, align 8
  %arrayidx87 = getelementptr inbounds i32**, i32*** %99, i64 %idxprom86
  %100 = load i32**, i32*** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i32*, i32** %100, i64 %idxprom84
  %101 = load i32*, i32** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %101, i64 2
  %102 = load i32, i32* %arrayidx89, align 4
  store i32 %102, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 1), align 4
  %103 = load i16, i16* %ref.addr, align 2
  %idxprom90 = sext i16 %103 to i64
  %104 = load i32, i32* %list.addr, align 4
  %105 = load i32, i32* %list_offset, align 4
  %add91 = add nsw i32 %104, %105
  %idxprom92 = sext i32 %add91 to i64
  %106 = load i32***, i32**** @wp_offset, align 8
  %arrayidx93 = getelementptr inbounds i32**, i32*** %106, i64 %idxprom92
  %107 = load i32**, i32*** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32*, i32** %107, i64 %idxprom90
  %108 = load i32*, i32** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %108, i64 1
  %109 = load i32, i32* %arrayidx95, align 4
  store i32 %109, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 0), align 4
  %110 = load i16, i16* %ref.addr, align 2
  %idxprom96 = sext i16 %110 to i64
  %111 = load i32, i32* %list.addr, align 4
  %112 = load i32, i32* %list_offset, align 4
  %add97 = add nsw i32 %111, %112
  %idxprom98 = sext i32 %add97 to i64
  %113 = load i32***, i32**** @wp_offset, align 8
  %arrayidx99 = getelementptr inbounds i32**, i32*** %113, i64 %idxprom98
  %114 = load i32**, i32*** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32*, i32** %114, i64 %idxprom96
  %115 = load i32*, i32** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %115, i64 2
  %116 = load i32, i32* %arrayidx101, align 4
  store i32 %116, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 1), align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.77, %if.then.72
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end
  %117 = load i32, i32* %pic4_pix_x, align 4
  %118 = load i16*, i16** %mv_x.addr, align 8
  %119 = load i16, i16* %118, align 2
  %conv104 = sext i16 %119 to i32
  %add105 = add nsw i32 %117, %conv104
  %cmp106 = icmp sgt i32 %add105, 1
  br i1 %cmp106, label %land.lhs.true.108, label %if.else

land.lhs.true.108:                                ; preds = %if.end.103
  %120 = load i32, i32* %pic4_pix_x, align 4
  %121 = load i16*, i16** %mv_x.addr, align 8
  %122 = load i16, i16* %121, align 2
  %conv109 = sext i16 %122 to i32
  %add110 = add nsw i32 %120, %conv109
  %123 = load i32, i32* %max_pos_x4, align 4
  %sub111 = sub nsw i32 %123, 1
  %cmp112 = icmp slt i32 %add110, %sub111
  br i1 %cmp112, label %land.lhs.true.114, label %if.else

land.lhs.true.114:                                ; preds = %land.lhs.true.108
  %124 = load i32, i32* %pic4_pix_y, align 4
  %125 = load i16*, i16** %mv_y.addr, align 8
  %126 = load i16, i16* %125, align 2
  %conv115 = sext i16 %126 to i32
  %add116 = add nsw i32 %124, %conv115
  %cmp117 = icmp sgt i32 %add116, 1
  br i1 %cmp117, label %land.lhs.true.119, label %if.else

land.lhs.true.119:                                ; preds = %land.lhs.true.114
  %127 = load i32, i32* %pic4_pix_y, align 4
  %128 = load i16*, i16** %mv_y.addr, align 8
  %129 = load i16, i16* %128, align 2
  %conv120 = sext i16 %129 to i32
  %add121 = add nsw i32 %127, %conv120
  %130 = load i32, i32* %max_pos_y4, align 4
  %sub122 = sub nsw i32 %130, 1
  %cmp123 = icmp slt i32 %add121, %sub122
  br i1 %cmp123, label %if.then.125, label %if.else

if.then.125:                                      ; preds = %land.lhs.true.119
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.126

if.else:                                          ; preds = %land.lhs.true.119, %land.lhs.true.114, %land.lhs.true.108, %if.end.103
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.else, %if.then.125
  store i32 0, i32* %best_pos, align 4
  %131 = load i32, i32* @start_me_refinement_hp, align 4
  store i32 %131, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.126
  %132 = load i32, i32* %pos, align 4
  %133 = load i32, i32* %max_pos2, align 4
  %cmp127 = icmp slt i32 %132, %133
  br i1 %cmp127, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %134 = load i16*, i16** %mv_x.addr, align 8
  %135 = load i16, i16* %134, align 2
  %conv129 = sext i16 %135 to i32
  %136 = load i32, i32* %pos, align 4
  %idxprom130 = sext i32 %136 to i64
  %137 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx131 = getelementptr inbounds i16, i16* %137, i64 %idxprom130
  %138 = load i16, i16* %arrayidx131, align 2
  %conv132 = sext i16 %138 to i32
  %add133 = add nsw i32 %conv129, %conv132
  store i32 %add133, i32* %cand_mv_x, align 4
  %139 = load i16*, i16** %mv_y.addr, align 8
  %140 = load i16, i16* %139, align 2
  %conv134 = sext i16 %140 to i32
  %141 = load i32, i32* %pos, align 4
  %idxprom135 = sext i32 %141 to i64
  %142 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx136 = getelementptr inbounds i16, i16* %142, i64 %idxprom135
  %143 = load i16, i16* %arrayidx136, align 2
  %conv137 = sext i16 %143 to i32
  %add138 = add nsw i32 %conv134, %conv137
  store i32 %add138, i32* %cand_mv_y, align 4
  %144 = load i32, i32* %lambda_factor.addr, align 4
  %145 = load i32, i32* %cand_mv_x, align 4
  %146 = load i16, i16* %pred_mv_x.addr, align 2
  %conv139 = sext i16 %146 to i32
  %sub140 = sub nsw i32 %145, %conv139
  %idxprom141 = sext i32 %sub140 to i64
  %147 = load i32*, i32** @mvbits, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %147, i64 %idxprom141
  %148 = load i32, i32* %arrayidx142, align 4
  %149 = load i32, i32* %cand_mv_y, align 4
  %150 = load i16, i16* %pred_mv_y.addr, align 2
  %conv143 = sext i16 %150 to i32
  %sub144 = sub nsw i32 %149, %conv143
  %idxprom145 = sext i32 %sub144 to i64
  %151 = load i32*, i32** @mvbits, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %151, i64 %idxprom145
  %152 = load i32, i32* %arrayidx146, align 4
  %add147 = add nsw i32 %148, %152
  %mul148 = mul nsw i32 %144, %add147
  %shr = ashr i32 %mul148, 16
  store i32 %shr, i32* %mcost, align 4
  %153 = load i32, i32* %mcost, align 4
  %154 = load i32, i32* %min_mcost.addr, align 4
  %cmp149 = icmp sge i32 %153, %154
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %for.body
  br label %for.inc

if.end.152:                                       ; preds = %for.body
  %155 = load i32, i32* %cand_mv_x, align 4
  %156 = load i32, i32* %pic4_pix_x, align 4
  %add153 = add nsw i32 %155, %156
  store i32 %add153, i32* %cmv_x, align 4
  %157 = load i32, i32* %cand_mv_y, align 4
  %158 = load i32, i32* %pic4_pix_y, align 4
  %add154 = add nsw i32 %157, %158
  store i32 %add154, i32* %cmv_y, align 4
  %159 = load i32, i32* @dist_method, align 4
  %idxprom155 = sext i32 %159 to i64
  %arrayidx156 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom155
  %160 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx156, align 8
  %161 = load i16*, i16** %orig_pic.addr, align 8
  %162 = load i32, i32* %blocksize_y, align 4
  %163 = load i32, i32* %blocksize_x, align 4
  %164 = load i32, i32* %min_mcost.addr, align 4
  %165 = load i32, i32* %mcost, align 4
  %sub157 = sub nsw i32 %164, %165
  %166 = load i32, i32* %cmv_x, align 4
  %167 = load i32, i32* %cmv_y, align 4
  %call158 = call i32 %160(i16* %161, i32 %162, i32 %163, i32 %sub157, i32 %166, i32 %167)
  %168 = load i32, i32* %mcost, align 4
  %add159 = add nsw i32 %168, %call158
  store i32 %add159, i32* %mcost, align 4
  %169 = load i32, i32* %pos, align 4
  %cmp160 = icmp eq i32 %169, 0
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.168

land.lhs.true.162:                                ; preds = %if.end.152
  %170 = load i32, i32* %check_position0, align 4
  %tobool163 = icmp ne i32 %170, 0
  br i1 %tobool163, label %if.then.164, label %if.end.168

if.then.164:                                      ; preds = %land.lhs.true.162
  %171 = load i32, i32* %lambda_factor.addr, align 4
  %mul165 = mul nsw i32 %171, 16
  %shr166 = ashr i32 %mul165, 16
  %172 = load i32, i32* %mcost, align 4
  %sub167 = sub nsw i32 %172, %shr166
  store i32 %sub167, i32* %mcost, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.164, %land.lhs.true.162, %if.end.152
  %173 = load i32, i32* %mcost, align 4
  %174 = load i32, i32* %min_mcost.addr, align 4
  %cmp169 = icmp slt i32 %173, %174
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.end.168
  %175 = load i32, i32* %mcost, align 4
  store i32 %175, i32* %min_mcost.addr, align 4
  %176 = load i32, i32* %pos, align 4
  store i32 %176, i32* %best_pos, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.end.168
  %177 = load i32, i32* %min_mcost.addr, align 4
  %178 = load i16, i16* @SubPelThreshold3, align 2
  %conv173 = zext i16 %178 to i32
  %179 = load i32, i32* %blocktype.addr, align 4
  %idxprom174 = sext i32 %179 to i64
  %arrayidx175 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom174
  %180 = load i16, i16* %arrayidx175, align 2
  %conv176 = sext i16 %180 to i32
  %shr177 = ashr i32 %conv173, %conv176
  %cmp178 = icmp slt i32 %177, %shr177
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.end.172
  br label %for.end

if.end.181:                                       ; preds = %if.end.172
  br label %for.inc

for.inc:                                          ; preds = %if.end.181, %if.then.151
  %181 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %181, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.180, %for.cond
  %182 = load i32, i32* %best_pos, align 4
  %tobool182 = icmp ne i32 %182, 0
  br i1 %tobool182, label %if.then.183, label %if.end.196

if.then.183:                                      ; preds = %for.end
  %183 = load i32, i32* %best_pos, align 4
  %idxprom184 = sext i32 %183 to i64
  %184 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx185 = getelementptr inbounds i16, i16* %184, i64 %idxprom184
  %185 = load i16, i16* %arrayidx185, align 2
  %conv186 = sext i16 %185 to i32
  %186 = load i16*, i16** %mv_x.addr, align 8
  %187 = load i16, i16* %186, align 2
  %conv187 = sext i16 %187 to i32
  %add188 = add nsw i32 %conv187, %conv186
  %conv189 = trunc i32 %add188 to i16
  store i16 %conv189, i16* %186, align 2
  %188 = load i32, i32* %best_pos, align 4
  %idxprom190 = sext i32 %188 to i64
  %189 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx191 = getelementptr inbounds i16, i16* %189, i64 %idxprom190
  %190 = load i16, i16* %arrayidx191, align 2
  %conv192 = sext i16 %190 to i32
  %191 = load i16*, i16** %mv_y.addr, align 8
  %192 = load i16, i16* %191, align 2
  %conv193 = sext i16 %192 to i32
  %add194 = add nsw i32 %conv193, %conv192
  %conv195 = trunc i32 %add194 to i16
  store i16 %conv195, i16* %191, align 2
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.183, %for.end
  %193 = load i16*, i16** %mv_x.addr, align 8
  %194 = load i16, i16* %193, align 2
  %conv197 = sext i16 %194 to i32
  %cmp198 = icmp eq i32 %conv197, 0
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.221

land.lhs.true.200:                                ; preds = %if.end.196
  %195 = load i16*, i16** %mv_y.addr, align 8
  %196 = load i16, i16* %195, align 2
  %conv201 = sext i16 %196 to i32
  %cmp202 = icmp eq i32 %conv201, 0
  br i1 %cmp202, label %land.lhs.true.204, label %if.end.221

land.lhs.true.204:                                ; preds = %land.lhs.true.200
  %197 = load i16, i16* %pred_mv_x.addr, align 2
  %conv205 = sext i16 %197 to i32
  %cmp206 = icmp eq i32 %conv205, 0
  br i1 %cmp206, label %land.lhs.true.208, label %if.end.221

land.lhs.true.208:                                ; preds = %land.lhs.true.204
  %198 = load i16, i16* %pred_mv_y.addr, align 2
  %conv209 = sext i16 %198 to i32
  %cmp210 = icmp eq i32 %conv209, 0
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.221

land.lhs.true.212:                                ; preds = %land.lhs.true.208
  %199 = load i32, i32* %min_mcost.addr, align 4
  %200 = load i16, i16* @SubPelThreshold1, align 2
  %conv213 = zext i16 %200 to i32
  %201 = load i32, i32* %blocktype.addr, align 4
  %idxprom214 = sext i32 %201 to i64
  %arrayidx215 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom214
  %202 = load i16, i16* %arrayidx215, align 2
  %conv216 = sext i16 %202 to i32
  %shr217 = ashr i32 %conv213, %conv216
  %cmp218 = icmp slt i32 %199, %shr217
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %land.lhs.true.212
  store i32 0, i32* %best_pos, align 4
  %203 = load i32, i32* %min_mcost.addr, align 4
  store i32 %203, i32* %retval
  br label %return

if.end.221:                                       ; preds = %land.lhs.true.212, %land.lhs.true.208, %land.lhs.true.204, %land.lhs.true.200, %if.end.196
  %204 = load i32, i32* @start_me_refinement_qp, align 4
  %tobool222 = icmp ne i32 %204, 0
  br i1 %tobool222, label %if.end.224, label %if.then.223

if.then.223:                                      ; preds = %if.end.221
  store i32 2147483647, i32* %min_mcost.addr, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.223, %if.end.221
  %205 = load i32, i32* %pic4_pix_x, align 4
  %206 = load i16*, i16** %mv_x.addr, align 8
  %207 = load i16, i16* %206, align 2
  %conv225 = sext i16 %207 to i32
  %add226 = add nsw i32 %205, %conv225
  %cmp227 = icmp sgt i32 %add226, 0
  br i1 %cmp227, label %land.lhs.true.229, label %if.else.245

land.lhs.true.229:                                ; preds = %if.end.224
  %208 = load i32, i32* %pic4_pix_x, align 4
  %209 = load i16*, i16** %mv_x.addr, align 8
  %210 = load i16, i16* %209, align 2
  %conv230 = sext i16 %210 to i32
  %add231 = add nsw i32 %208, %conv230
  %211 = load i32, i32* %max_pos_x4, align 4
  %cmp232 = icmp slt i32 %add231, %211
  br i1 %cmp232, label %land.lhs.true.234, label %if.else.245

land.lhs.true.234:                                ; preds = %land.lhs.true.229
  %212 = load i32, i32* %pic4_pix_y, align 4
  %213 = load i16*, i16** %mv_y.addr, align 8
  %214 = load i16, i16* %213, align 2
  %conv235 = sext i16 %214 to i32
  %add236 = add nsw i32 %212, %conv235
  %cmp237 = icmp sgt i32 %add236, 0
  br i1 %cmp237, label %land.lhs.true.239, label %if.else.245

land.lhs.true.239:                                ; preds = %land.lhs.true.234
  %215 = load i32, i32* %pic4_pix_y, align 4
  %216 = load i16*, i16** %mv_y.addr, align 8
  %217 = load i16, i16* %216, align 2
  %conv240 = sext i16 %217 to i32
  %add241 = add nsw i32 %215, %conv240
  %218 = load i32, i32* %max_pos_y4, align 4
  %cmp242 = icmp slt i32 %add241, %218
  br i1 %cmp242, label %if.then.244, label %if.else.245

if.then.244:                                      ; preds = %land.lhs.true.239
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.246

if.else.245:                                      ; preds = %land.lhs.true.239, %land.lhs.true.234, %land.lhs.true.229, %if.end.224
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.245, %if.then.244
  store i32 0, i32* %best_pos, align 4
  %219 = load i32, i32* @start_me_refinement_qp, align 4
  store i32 %219, i32* %pos, align 4
  br label %for.cond.247

for.cond.247:                                     ; preds = %for.inc.296, %if.end.246
  %220 = load i32, i32* %pos, align 4
  %221 = load i32, i32* %search_pos4.addr, align 4
  %cmp248 = icmp slt i32 %220, %221
  br i1 %cmp248, label %for.body.250, label %for.end.298

for.body.250:                                     ; preds = %for.cond.247
  %222 = load i16*, i16** %mv_x.addr, align 8
  %223 = load i16, i16* %222, align 2
  %conv251 = sext i16 %223 to i32
  %224 = load i32, i32* %pos, align 4
  %idxprom252 = sext i32 %224 to i64
  %225 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx253 = getelementptr inbounds i16, i16* %225, i64 %idxprom252
  %226 = load i16, i16* %arrayidx253, align 2
  %conv254 = sext i16 %226 to i32
  %add255 = add nsw i32 %conv251, %conv254
  store i32 %add255, i32* %cand_mv_x, align 4
  %227 = load i16*, i16** %mv_y.addr, align 8
  %228 = load i16, i16* %227, align 2
  %conv256 = sext i16 %228 to i32
  %229 = load i32, i32* %pos, align 4
  %idxprom257 = sext i32 %229 to i64
  %230 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx258 = getelementptr inbounds i16, i16* %230, i64 %idxprom257
  %231 = load i16, i16* %arrayidx258, align 2
  %conv259 = sext i16 %231 to i32
  %add260 = add nsw i32 %conv256, %conv259
  store i32 %add260, i32* %cand_mv_y, align 4
  %232 = load i32, i32* %lambda_factor.addr, align 4
  %233 = load i32, i32* %cand_mv_x, align 4
  %234 = load i16, i16* %pred_mv_x.addr, align 2
  %conv261 = sext i16 %234 to i32
  %sub262 = sub nsw i32 %233, %conv261
  %idxprom263 = sext i32 %sub262 to i64
  %235 = load i32*, i32** @mvbits, align 8
  %arrayidx264 = getelementptr inbounds i32, i32* %235, i64 %idxprom263
  %236 = load i32, i32* %arrayidx264, align 4
  %237 = load i32, i32* %cand_mv_y, align 4
  %238 = load i16, i16* %pred_mv_y.addr, align 2
  %conv265 = sext i16 %238 to i32
  %sub266 = sub nsw i32 %237, %conv265
  %idxprom267 = sext i32 %sub266 to i64
  %239 = load i32*, i32** @mvbits, align 8
  %arrayidx268 = getelementptr inbounds i32, i32* %239, i64 %idxprom267
  %240 = load i32, i32* %arrayidx268, align 4
  %add269 = add nsw i32 %236, %240
  %mul270 = mul nsw i32 %232, %add269
  %shr271 = ashr i32 %mul270, 16
  store i32 %shr271, i32* %mcost, align 4
  %241 = load i32, i32* %mcost, align 4
  %242 = load i32, i32* %min_mcost.addr, align 4
  %cmp272 = icmp sge i32 %241, %242
  br i1 %cmp272, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %for.body.250
  br label %for.inc.296

if.end.275:                                       ; preds = %for.body.250
  %243 = load i32, i32* %cand_mv_x, align 4
  %244 = load i32, i32* %pic4_pix_x, align 4
  %add276 = add nsw i32 %243, %244
  store i32 %add276, i32* %cmv_x, align 4
  %245 = load i32, i32* %cand_mv_y, align 4
  %246 = load i32, i32* %pic4_pix_y, align 4
  %add277 = add nsw i32 %245, %246
  store i32 %add277, i32* %cmv_y, align 4
  %247 = load i32, i32* @dist_method, align 4
  %idxprom278 = sext i32 %247 to i64
  %arrayidx279 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom278
  %248 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx279, align 8
  %249 = load i16*, i16** %orig_pic.addr, align 8
  %250 = load i32, i32* %blocksize_y, align 4
  %251 = load i32, i32* %blocksize_x, align 4
  %252 = load i32, i32* %min_mcost.addr, align 4
  %253 = load i32, i32* %mcost, align 4
  %sub280 = sub nsw i32 %252, %253
  %254 = load i32, i32* %cmv_x, align 4
  %255 = load i32, i32* %cmv_y, align 4
  %call281 = call i32 %248(i16* %249, i32 %250, i32 %251, i32 %sub280, i32 %254, i32 %255)
  %256 = load i32, i32* %mcost, align 4
  %add282 = add nsw i32 %256, %call281
  store i32 %add282, i32* %mcost, align 4
  %257 = load i32, i32* %mcost, align 4
  %258 = load i32, i32* %min_mcost.addr, align 4
  %cmp283 = icmp slt i32 %257, %258
  br i1 %cmp283, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %if.end.275
  %259 = load i32, i32* %mcost, align 4
  store i32 %259, i32* %min_mcost.addr, align 4
  %260 = load i32, i32* %pos, align 4
  store i32 %260, i32* %best_pos, align 4
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.285, %if.end.275
  %261 = load i32, i32* %min_mcost.addr, align 4
  %262 = load i16, i16* @SubPelThreshold3, align 2
  %conv287 = zext i16 %262 to i32
  %263 = load i32, i32* %blocktype.addr, align 4
  %idxprom288 = sext i32 %263 to i64
  %arrayidx289 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom288
  %264 = load i16, i16* %arrayidx289, align 2
  %conv290 = sext i16 %264 to i32
  %shr291 = ashr i32 %conv287, %conv290
  %cmp292 = icmp slt i32 %261, %shr291
  br i1 %cmp292, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %if.end.286
  br label %for.end.298

if.end.295:                                       ; preds = %if.end.286
  br label %for.inc.296

for.inc.296:                                      ; preds = %if.end.295, %if.then.274
  %265 = load i32, i32* %pos, align 4
  %inc297 = add nsw i32 %265, 1
  store i32 %inc297, i32* %pos, align 4
  br label %for.cond.247

for.end.298:                                      ; preds = %if.then.294, %for.cond.247
  %266 = load i32, i32* %best_pos, align 4
  %tobool299 = icmp ne i32 %266, 0
  br i1 %tobool299, label %if.then.300, label %if.end.313

if.then.300:                                      ; preds = %for.end.298
  %267 = load i32, i32* %best_pos, align 4
  %idxprom301 = sext i32 %267 to i64
  %268 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx302 = getelementptr inbounds i16, i16* %268, i64 %idxprom301
  %269 = load i16, i16* %arrayidx302, align 2
  %conv303 = sext i16 %269 to i32
  %270 = load i16*, i16** %mv_x.addr, align 8
  %271 = load i16, i16* %270, align 2
  %conv304 = sext i16 %271 to i32
  %add305 = add nsw i32 %conv304, %conv303
  %conv306 = trunc i32 %add305 to i16
  store i16 %conv306, i16* %270, align 2
  %272 = load i32, i32* %best_pos, align 4
  %idxprom307 = sext i32 %272 to i64
  %273 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx308 = getelementptr inbounds i16, i16* %273, i64 %idxprom307
  %274 = load i16, i16* %arrayidx308, align 2
  %conv309 = sext i16 %274 to i32
  %275 = load i16*, i16** %mv_y.addr, align 8
  %276 = load i16, i16* %275, align 2
  %conv310 = sext i16 %276 to i32
  %add311 = add nsw i32 %conv310, %conv309
  %conv312 = trunc i32 %add311 to i16
  store i16 %conv312, i16* %275, align 2
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.300, %for.end.298
  %277 = load i32, i32* %min_mcost.addr, align 4
  store i32 %277, i32* %retval
  br label %return

return:                                           ; preds = %if.end.313, %if.then.220
  %278 = load i32, i32* %retval
  ret i32 %278
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

; Function Attrs: nounwind uwtable
define i32 @smpUMHEXSubPelBlockMotionSearch(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %retval = alloca i32, align 4
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
  %lambda_factor.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %cand_mv_x = alloca i32, align 4
  %cand_mv_y = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %ref_picture = alloca %struct.storable_picture*, align 8
  %mv_shift = alloca i16, align 2
  %blocksize_x = alloca i16, align 2
  %blocksize_y = alloca i16, align 2
  %pic4_pix_x = alloca i32, align 4
  %pic4_pix_y = alloca i32, align 4
  %max_pos_x4 = alloca i16, align 2
  %max_pos_y4 = alloca i16, align 2
  %iXMinNow = alloca i32, align 4
  %iYMinNow = alloca i32, align 4
  %dynamic_search_range = alloca i16, align 2
  %i = alloca i16, align 2
  %m = alloca i16, align 2
  %currmv_x = alloca i32, align 4
  %currmv_y = alloca i32, align 4
  %pred_frac_mv_x = alloca i32, align 4
  %pred_frac_mv_y = alloca i32, align 4
  %abort_search = alloca i32, align 4
  %pred_frac_up_mv_x = alloca i32, align 4
  %pred_frac_up_mv_y = alloca i32, align 4
  %apply_weights = alloca i32, align 4
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
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 100
  %1 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 61
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 19
  %6 = load i32, i32* %mb_field, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr2, align 4
  %rem = srem i32 %8, 2
  %tobool3 = icmp ne i32 %rem, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  %9 = load i16, i16* %ref.addr, align 2
  %idxprom5 = sext i16 %9 to i64
  %10 = load i32, i32* %list.addr, align 4
  %11 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 %10, %11
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom6
  %12 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %12, i64 %idxprom5
  %13 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx8, align 8
  store %struct.storable_picture* %13, %struct.storable_picture** %ref_picture, align 8
  store i16 0, i16* %mv_shift, align 2
  %14 = load i32, i32* %blocktype.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 18
  %arrayidx10 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  %16 = load i32, i32* %arrayidx11, align 4
  %conv = trunc i32 %16 to i16
  store i16 %conv, i16* %blocksize_x, align 2
  %17 = load i32, i32* %blocktype.addr, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 18
  %arrayidx14 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size13, i32 0, i64 %idxprom12
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx14, i32 0, i64 1
  %19 = load i32, i32* %arrayidx15, align 4
  %conv16 = trunc i32 %19 to i16
  store i16 %conv16, i16* %blocksize_y, align 2
  %20 = load i32, i32* %pic_pix_x.addr, align 4
  %add17 = add nsw i32 %20, 20
  %shl = shl i32 %add17, 2
  store i32 %shl, i32* %pic4_pix_x, align 4
  %21 = load i32, i32* %pic_pix_y.addr, align 4
  %add18 = add nsw i32 %21, 20
  %shl19 = shl i32 %add18, 2
  store i32 %shl19, i32* %pic4_pix_y, align 4
  %22 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 18
  %23 = load i32, i32* %size_x, align 4
  %24 = load i16, i16* %blocksize_x, align 2
  %conv20 = sext i16 %24 to i32
  %sub = sub nsw i32 %23, %conv20
  %add21 = add nsw i32 %sub, 40
  %shl22 = shl i32 %add21, 2
  %conv23 = trunc i32 %shl22 to i16
  store i16 %conv23, i16* %max_pos_x4, align 2
  %25 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 19
  %26 = load i32, i32* %size_y, align 4
  %27 = load i16, i16* %blocksize_y, align 2
  %conv24 = sext i16 %27 to i32
  %sub25 = sub nsw i32 %26, %conv24
  %add26 = add nsw i32 %sub25, 40
  %shl27 = shl i32 %add26, 2
  %conv28 = trunc i32 %shl27 to i16
  store i16 %conv28, i16* %max_pos_y4, align 2
  store i32 0, i32* %currmv_x, align 4
  store i32 0, i32* %currmv_y, align 4
  %28 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %28, i32 0, i32 19
  %29 = load i32, i32* %weighted_pred_flag, align 4
  %tobool29 = icmp ne i32 %29, 0
  br i1 %tobool29, label %land.lhs.true.30, label %lor.lhs.false.35

land.lhs.true.30:                                 ; preds = %cond.end
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 5
  %31 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %31, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.30
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 5
  %33 = load i32, i32* %type32, align 4
  %cmp33 = icmp eq i32 %33, 3
  br i1 %cmp33, label %land.rhs, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false, %cond.end
  %34 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %34, i32 0, i32 20
  %35 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool36 = icmp ne i32 %35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %land.end

land.lhs.true.37:                                 ; preds = %lor.lhs.false.35
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 5
  %37 = load i32, i32* %type38, align 4
  %cmp39 = icmp eq i32 %37, 1
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.37, %lor.lhs.false, %land.lhs.true.30
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 61
  %39 = load i32, i32* %UseWeightedReferenceME, align 4
  %tobool41 = icmp ne i32 %39, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.37, %lor.lhs.false.35
  %40 = phi i1 [ false, %land.lhs.true.37 ], [ false, %lor.lhs.false.35 ], [ %tobool41, %land.rhs ]
  %land.ext = zext i1 %40 to i32
  store i32 %land.ext, i32* %apply_weights, align 4
  %41 = load i32, i32* %apply_weights, align 4
  %mul = mul nsw i32 3, %41
  %add42 = add nsw i32 2, %mul
  store i32 %add42, i32* @dist_method, align 4
  %42 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %42, i32 0, i32 30
  %43 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %43, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %44 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_x43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %44, i32 0, i32 18
  %45 = load i32, i32* %size_x43, align 4
  %conv44 = trunc i32 %45 to i16
  store i16 %conv44, i16* @img_width, align 2
  %46 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_y45 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %46, i32 0, i32 19
  %47 = load i32, i32* %size_y45, align 4
  %conv46 = trunc i32 %47 to i16
  store i16 %conv46, i16* @img_height, align 2
  %48 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %48, i32 0, i32 22
  %49 = load i32, i32* %size_x_pad, align 4
  store i32 %49, i32* @width_pad, align 4
  %50 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 23
  %51 = load i32, i32* %size_y_pad, align 4
  store i32 %51, i32* @height_pad, align 4
  %52 = load i32, i32* %apply_weights, align 4
  %tobool47 = icmp ne i32 %52, 0
  br i1 %tobool47, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %53 = load i16, i16* %ref.addr, align 2
  %idxprom48 = sext i16 %53 to i64
  %54 = load i32, i32* %list.addr, align 4
  %55 = load i32, i32* %list_offset, align 4
  %add49 = add nsw i32 %54, %55
  %idxprom50 = sext i32 %add49 to i64
  %56 = load i32***, i32**** @wp_weight, align 8
  %arrayidx51 = getelementptr inbounds i32**, i32*** %56, i64 %idxprom50
  %57 = load i32**, i32*** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i32*, i32** %57, i64 %idxprom48
  %58 = load i32*, i32** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %58, i64 0
  %59 = load i32, i32* %arrayidx53, align 4
  store i32 %59, i32* @weight_luma, align 4
  %60 = load i16, i16* %ref.addr, align 2
  %idxprom54 = sext i16 %60 to i64
  %61 = load i32, i32* %list.addr, align 4
  %62 = load i32, i32* %list_offset, align 4
  %add55 = add nsw i32 %61, %62
  %idxprom56 = sext i32 %add55 to i64
  %63 = load i32***, i32**** @wp_offset, align 8
  %arrayidx57 = getelementptr inbounds i32**, i32*** %63, i64 %idxprom56
  %64 = load i32**, i32*** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32*, i32** %64, i64 %idxprom54
  %65 = load i32*, i32** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %65, i64 0
  %66 = load i32, i32* %arrayidx59, align 4
  store i32 %66, i32* @offset_luma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %67 = load i32, i32* @ChromaMEEnable, align 4
  %tobool60 = icmp ne i32 %67, 0
  br i1 %tobool60, label %if.then.61, label %if.end.92

if.then.61:                                       ; preds = %if.end
  %68 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %68, i32 0, i32 32
  %69 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx62 = getelementptr inbounds i16****, i16***** %69, i64 0
  %70 = load i16****, i16***** %arrayidx62, align 8
  store i16**** %70, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 0), align 8
  %71 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %imgUV_sub63 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 32
  %72 = load i16*****, i16****** %imgUV_sub63, align 8
  %arrayidx64 = getelementptr inbounds i16****, i16***** %72, i64 1
  %73 = load i16****, i16***** %arrayidx64, align 8
  store i16**** %73, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 1), align 8
  %74 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %74, i32 0, i32 24
  %75 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %75, i32* @width_pad_cr, align 4
  %76 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %76, i32 0, i32 25
  %77 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %77, i32* @height_pad_cr, align 4
  %78 = load i32, i32* %apply_weights, align 4
  %tobool65 = icmp ne i32 %78, 0
  br i1 %tobool65, label %if.then.66, label %if.end.91

if.then.66:                                       ; preds = %if.then.61
  %79 = load i16, i16* %ref.addr, align 2
  %idxprom67 = sext i16 %79 to i64
  %80 = load i32, i32* %list.addr, align 4
  %81 = load i32, i32* %list_offset, align 4
  %add68 = add nsw i32 %80, %81
  %idxprom69 = sext i32 %add68 to i64
  %82 = load i32***, i32**** @wp_weight, align 8
  %arrayidx70 = getelementptr inbounds i32**, i32*** %82, i64 %idxprom69
  %83 = load i32**, i32*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %83, i64 %idxprom67
  %84 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %84, i64 1
  %85 = load i32, i32* %arrayidx72, align 4
  store i32 %85, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 0), align 4
  %86 = load i16, i16* %ref.addr, align 2
  %idxprom73 = sext i16 %86 to i64
  %87 = load i32, i32* %list.addr, align 4
  %88 = load i32, i32* %list_offset, align 4
  %add74 = add nsw i32 %87, %88
  %idxprom75 = sext i32 %add74 to i64
  %89 = load i32***, i32**** @wp_weight, align 8
  %arrayidx76 = getelementptr inbounds i32**, i32*** %89, i64 %idxprom75
  %90 = load i32**, i32*** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i32*, i32** %90, i64 %idxprom73
  %91 = load i32*, i32** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %91, i64 2
  %92 = load i32, i32* %arrayidx78, align 4
  store i32 %92, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 1), align 4
  %93 = load i16, i16* %ref.addr, align 2
  %idxprom79 = sext i16 %93 to i64
  %94 = load i32, i32* %list.addr, align 4
  %95 = load i32, i32* %list_offset, align 4
  %add80 = add nsw i32 %94, %95
  %idxprom81 = sext i32 %add80 to i64
  %96 = load i32***, i32**** @wp_offset, align 8
  %arrayidx82 = getelementptr inbounds i32**, i32*** %96, i64 %idxprom81
  %97 = load i32**, i32*** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i32*, i32** %97, i64 %idxprom79
  %98 = load i32*, i32** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %98, i64 1
  %99 = load i32, i32* %arrayidx84, align 4
  store i32 %99, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 0), align 4
  %100 = load i16, i16* %ref.addr, align 2
  %idxprom85 = sext i16 %100 to i64
  %101 = load i32, i32* %list.addr, align 4
  %102 = load i32, i32* %list_offset, align 4
  %add86 = add nsw i32 %101, %102
  %idxprom87 = sext i32 %add86 to i64
  %103 = load i32***, i32**** @wp_offset, align 8
  %arrayidx88 = getelementptr inbounds i32**, i32*** %103, i64 %idxprom87
  %104 = load i32**, i32*** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i32*, i32** %104, i64 %idxprom85
  %105 = load i32*, i32** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %105, i64 2
  %106 = load i32, i32* %arrayidx90, align 4
  store i32 %106, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 1), align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.66, %if.then.61
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end
  %107 = load i32, i32* %pic4_pix_x, align 4
  %108 = load i16*, i16** %mv_x.addr, align 8
  %109 = load i16, i16* %108, align 2
  %conv93 = sext i16 %109 to i32
  %add94 = add nsw i32 %107, %conv93
  %cmp95 = icmp sgt i32 %add94, 1
  br i1 %cmp95, label %land.lhs.true.97, label %if.else

land.lhs.true.97:                                 ; preds = %if.end.92
  %110 = load i32, i32* %pic4_pix_x, align 4
  %111 = load i16*, i16** %mv_x.addr, align 8
  %112 = load i16, i16* %111, align 2
  %conv98 = sext i16 %112 to i32
  %add99 = add nsw i32 %110, %conv98
  %113 = load i16, i16* %max_pos_x4, align 2
  %conv100 = sext i16 %113 to i32
  %sub101 = sub nsw i32 %conv100, 1
  %cmp102 = icmp slt i32 %add99, %sub101
  br i1 %cmp102, label %land.lhs.true.104, label %if.else

land.lhs.true.104:                                ; preds = %land.lhs.true.97
  %114 = load i32, i32* %pic4_pix_y, align 4
  %115 = load i16*, i16** %mv_y.addr, align 8
  %116 = load i16, i16* %115, align 2
  %conv105 = sext i16 %116 to i32
  %add106 = add nsw i32 %114, %conv105
  %cmp107 = icmp sgt i32 %add106, 1
  br i1 %cmp107, label %land.lhs.true.109, label %if.else

land.lhs.true.109:                                ; preds = %land.lhs.true.104
  %117 = load i32, i32* %pic4_pix_y, align 4
  %118 = load i16*, i16** %mv_y.addr, align 8
  %119 = load i16, i16* %118, align 2
  %conv110 = sext i16 %119 to i32
  %add111 = add nsw i32 %117, %conv110
  %120 = load i16, i16* %max_pos_y4, align 2
  %conv112 = sext i16 %120 to i32
  %sub113 = sub nsw i32 %conv112, 1
  %cmp114 = icmp slt i32 %add111, %sub113
  br i1 %cmp114, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %land.lhs.true.109
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.117

if.else:                                          ; preds = %land.lhs.true.109, %land.lhs.true.104, %land.lhs.true.97, %if.end.92
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else, %if.then.116
  store i16 3, i16* %dynamic_search_range, align 2
  %121 = load i16, i16* %pred_mv_x.addr, align 2
  %conv118 = sext i16 %121 to i32
  %122 = load i16*, i16** %mv_x.addr, align 8
  %123 = load i16, i16* %122, align 2
  %conv119 = sext i16 %123 to i32
  %sub120 = sub nsw i32 %conv118, %conv119
  %rem121 = srem i32 %sub120, 4
  store i32 %rem121, i32* %pred_frac_mv_x, align 4
  %124 = load i16, i16* %pred_mv_y.addr, align 2
  %conv122 = sext i16 %124 to i32
  %125 = load i16*, i16** %mv_y.addr, align 8
  %126 = load i16, i16* %125, align 2
  %conv123 = sext i16 %126 to i32
  %sub124 = sub nsw i32 %conv122, %conv123
  %rem125 = srem i32 %sub124, 4
  store i32 %rem125, i32* %pred_frac_mv_y, align 4
  %127 = load i16, i16* @smpUMHEX_pred_MV_uplayer_X, align 2
  %conv126 = sext i16 %127 to i32
  %128 = load i16*, i16** %mv_x.addr, align 8
  %129 = load i16, i16* %128, align 2
  %conv127 = sext i16 %129 to i32
  %sub128 = sub nsw i32 %conv126, %conv127
  %rem129 = srem i32 %sub128, 4
  store i32 %rem129, i32* %pred_frac_up_mv_x, align 4
  %130 = load i16, i16* @smpUMHEX_pred_MV_uplayer_Y, align 2
  %conv130 = sext i16 %130 to i32
  %131 = load i16*, i16** %mv_y.addr, align 8
  %132 = load i16, i16* %131, align 2
  %conv131 = sext i16 %132 to i32
  %sub132 = sub nsw i32 %conv130, %conv131
  %rem133 = srem i32 %sub132, 4
  store i32 %rem133, i32* %pred_frac_up_mv_y, align 4
  %133 = load i8**, i8*** @smpUMHEX_SearchState, align 8
  %arrayidx134 = getelementptr inbounds i8*, i8** %133, i64 0
  %134 = load i8*, i8** %arrayidx134, align 8
  %135 = load i16, i16* %dynamic_search_range, align 2
  %conv135 = sext i16 %135 to i32
  %mul136 = mul nsw i32 2, %conv135
  %add137 = add nsw i32 %mul136, 1
  %136 = load i16, i16* %dynamic_search_range, align 2
  %conv138 = sext i16 %136 to i32
  %mul139 = mul nsw i32 2, %conv138
  %add140 = add nsw i32 %mul139, 1
  %mul141 = mul nsw i32 %add137, %add140
  %conv142 = sext i32 %mul141 to i64
  call void @llvm.memset.p0i8.i64(i8* %134, i8 0, i64 %conv142, i32 1, i1 false)
  %137 = load i16, i16* %dynamic_search_range, align 2
  %idxprom143 = sext i16 %137 to i64
  %138 = load i16, i16* %dynamic_search_range, align 2
  %idxprom144 = sext i16 %138 to i64
  %139 = load i8**, i8*** @smpUMHEX_SearchState, align 8
  %arrayidx145 = getelementptr inbounds i8*, i8** %139, i64 %idxprom144
  %140 = load i8*, i8** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %140, i64 %idxprom143
  store i8 1, i8* %arrayidx146, align 1
  %141 = load i32, i32* @start_me_refinement_hp, align 4
  %tobool147 = icmp ne i32 %141, 0
  br i1 %tobool147, label %if.else.177, label %if.then.148

if.then.148:                                      ; preds = %if.end.117
  %142 = load i16*, i16** %mv_x.addr, align 8
  %143 = load i16, i16* %142, align 2
  %conv149 = sext i16 %143 to i32
  store i32 %conv149, i32* %cand_mv_x, align 4
  %144 = load i16*, i16** %mv_y.addr, align 8
  %145 = load i16, i16* %144, align 2
  %conv150 = sext i16 %145 to i32
  store i32 %conv150, i32* %cand_mv_y, align 4
  %146 = load i32, i32* %lambda_factor.addr, align 4
  %147 = load i32, i32* %cand_mv_x, align 4
  %148 = load i16, i16* %mv_shift, align 2
  %conv151 = sext i16 %148 to i32
  %shl152 = shl i32 %147, %conv151
  %149 = load i16, i16* %pred_mv_x.addr, align 2
  %conv153 = sext i16 %149 to i32
  %sub154 = sub nsw i32 %shl152, %conv153
  %idxprom155 = sext i32 %sub154 to i64
  %150 = load i32*, i32** @mvbits, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %150, i64 %idxprom155
  %151 = load i32, i32* %arrayidx156, align 4
  %152 = load i32, i32* %cand_mv_y, align 4
  %153 = load i16, i16* %mv_shift, align 2
  %conv157 = sext i16 %153 to i32
  %shl158 = shl i32 %152, %conv157
  %154 = load i16, i16* %pred_mv_y.addr, align 2
  %conv159 = sext i16 %154 to i32
  %sub160 = sub nsw i32 %shl158, %conv159
  %idxprom161 = sext i32 %sub160 to i64
  %155 = load i32*, i32** @mvbits, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %155, i64 %idxprom161
  %156 = load i32, i32* %arrayidx162, align 4
  %add163 = add nsw i32 %151, %156
  %mul164 = mul nsw i32 %146, %add163
  %shr = ashr i32 %mul164, 16
  store i32 %shr, i32* %mcost, align 4
  %157 = load i32, i32* @dist_method, align 4
  %idxprom165 = sext i32 %157 to i64
  %arrayidx166 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom165
  %158 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx166, align 8
  %159 = load i16*, i16** %orig_pic.addr, align 8
  %160 = load i16, i16* %blocksize_y, align 2
  %conv167 = sext i16 %160 to i32
  %161 = load i16, i16* %blocksize_x, align 2
  %conv168 = sext i16 %161 to i32
  %162 = load i32, i32* %min_mcost.addr, align 4
  %163 = load i32, i32* %mcost, align 4
  %sub169 = sub nsw i32 %162, %163
  %164 = load i32, i32* %cand_mv_x, align 4
  %165 = load i32, i32* %pic4_pix_x, align 4
  %add170 = add nsw i32 %164, %165
  %166 = load i32, i32* %cand_mv_y, align 4
  %167 = load i32, i32* %pic4_pix_y, align 4
  %add171 = add nsw i32 %166, %167
  %call = call i32 %158(i16* %159, i32 %conv167, i32 %conv168, i32 %sub169, i32 %add170, i32 %add171)
  %168 = load i32, i32* %mcost, align 4
  %add172 = add nsw i32 %168, %call
  store i32 %add172, i32* %mcost, align 4
  %169 = load i32, i32* %mcost, align 4
  %170 = load i32, i32* %min_mcost.addr, align 4
  %cmp173 = icmp slt i32 %169, %170
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.then.148
  %171 = load i32, i32* %mcost, align 4
  store i32 %171, i32* %min_mcost.addr, align 4
  %172 = load i32, i32* %cand_mv_x, align 4
  store i32 %172, i32* %currmv_x, align 4
  %173 = load i32, i32* %cand_mv_y, align 4
  store i32 %173, i32* %currmv_y, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.175, %if.then.148
  br label %if.end.180

if.else.177:                                      ; preds = %if.end.117
  %174 = load i16*, i16** %mv_x.addr, align 8
  %175 = load i16, i16* %174, align 2
  %conv178 = sext i16 %175 to i32
  store i32 %conv178, i32* %currmv_x, align 4
  %176 = load i16*, i16** %mv_y.addr, align 8
  %177 = load i16, i16* %176, align 2
  %conv179 = sext i16 %177 to i32
  store i32 %conv179, i32* %currmv_y, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.177, %if.end.176
  %178 = load i16*, i16** %mv_x.addr, align 8
  %179 = load i16, i16* %178, align 2
  %conv181 = sext i16 %179 to i32
  %cmp182 = icmp eq i32 %conv181, 0
  br i1 %cmp182, label %land.lhs.true.184, label %if.end.211

land.lhs.true.184:                                ; preds = %if.end.180
  %180 = load i16*, i16** %mv_y.addr, align 8
  %181 = load i16, i16* %180, align 2
  %conv185 = sext i16 %181 to i32
  %cmp186 = icmp eq i32 %conv185, 0
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.211

land.lhs.true.188:                                ; preds = %land.lhs.true.184
  %182 = load i32, i32* %pred_frac_mv_x, align 4
  %cmp189 = icmp eq i32 %182, 0
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.211

land.lhs.true.191:                                ; preds = %land.lhs.true.188
  %183 = load i32, i32* %pred_frac_up_mv_x, align 4
  %cmp192 = icmp eq i32 %183, 0
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.211

land.lhs.true.194:                                ; preds = %land.lhs.true.191
  %184 = load i32, i32* %pred_frac_mv_y, align 4
  %cmp195 = icmp eq i32 %184, 0
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.211

land.lhs.true.197:                                ; preds = %land.lhs.true.194
  %185 = load i32, i32* %pred_frac_up_mv_y, align 4
  %cmp198 = icmp eq i32 %185, 0
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.211

land.lhs.true.200:                                ; preds = %land.lhs.true.197
  %186 = load i32, i32* %min_mcost.addr, align 4
  %187 = load i16, i16* @SubPelThreshold1, align 2
  %conv201 = zext i16 %187 to i32
  %188 = load i32, i32* %blocktype.addr, align 4
  %idxprom202 = sext i32 %188 to i64
  %arrayidx203 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom202
  %189 = load i16, i16* %arrayidx203, align 2
  %conv204 = sext i16 %189 to i32
  %shr205 = ashr i32 %conv201, %conv204
  %cmp206 = icmp slt i32 %186, %shr205
  br i1 %cmp206, label %if.then.208, label %if.end.211

if.then.208:                                      ; preds = %land.lhs.true.200
  %190 = load i32, i32* %currmv_x, align 4
  %conv209 = trunc i32 %190 to i16
  %191 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv209, i16* %191, align 2
  %192 = load i32, i32* %currmv_y, align 4
  %conv210 = trunc i32 %192 to i16
  %193 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv210, i16* %193, align 2
  %194 = load i32, i32* %min_mcost.addr, align 4
  store i32 %194, i32* %retval
  br label %return

if.end.211:                                       ; preds = %land.lhs.true.200, %land.lhs.true.197, %land.lhs.true.194, %land.lhs.true.191, %land.lhs.true.188, %land.lhs.true.184, %if.end.180
  %195 = load i32, i32* %pred_frac_mv_x, align 4
  %tobool212 = icmp ne i32 %195, 0
  br i1 %tobool212, label %if.then.215, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %if.end.211
  %196 = load i32, i32* %pred_frac_mv_y, align 4
  %tobool214 = icmp ne i32 %196, 0
  br i1 %tobool214, label %if.then.215, label %if.end.260

if.then.215:                                      ; preds = %lor.lhs.false.213, %if.end.211
  %197 = load i16*, i16** %mv_x.addr, align 8
  %198 = load i16, i16* %197, align 2
  %conv216 = sext i16 %198 to i32
  %199 = load i32, i32* %pred_frac_mv_x, align 4
  %add217 = add nsw i32 %conv216, %199
  store i32 %add217, i32* %cand_mv_x, align 4
  %200 = load i16*, i16** %mv_y.addr, align 8
  %201 = load i16, i16* %200, align 2
  %conv218 = sext i16 %201 to i32
  %202 = load i32, i32* %pred_frac_mv_y, align 4
  %add219 = add nsw i32 %conv218, %202
  store i32 %add219, i32* %cand_mv_y, align 4
  %203 = load i32, i32* %lambda_factor.addr, align 4
  %204 = load i32, i32* %cand_mv_x, align 4
  %205 = load i16, i16* %mv_shift, align 2
  %conv220 = sext i16 %205 to i32
  %shl221 = shl i32 %204, %conv220
  %206 = load i16, i16* %pred_mv_x.addr, align 2
  %conv222 = sext i16 %206 to i32
  %sub223 = sub nsw i32 %shl221, %conv222
  %idxprom224 = sext i32 %sub223 to i64
  %207 = load i32*, i32** @mvbits, align 8
  %arrayidx225 = getelementptr inbounds i32, i32* %207, i64 %idxprom224
  %208 = load i32, i32* %arrayidx225, align 4
  %209 = load i32, i32* %cand_mv_y, align 4
  %210 = load i16, i16* %mv_shift, align 2
  %conv226 = sext i16 %210 to i32
  %shl227 = shl i32 %209, %conv226
  %211 = load i16, i16* %pred_mv_y.addr, align 2
  %conv228 = sext i16 %211 to i32
  %sub229 = sub nsw i32 %shl227, %conv228
  %idxprom230 = sext i32 %sub229 to i64
  %212 = load i32*, i32** @mvbits, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %212, i64 %idxprom230
  %213 = load i32, i32* %arrayidx231, align 4
  %add232 = add nsw i32 %208, %213
  %mul233 = mul nsw i32 %203, %add232
  %shr234 = ashr i32 %mul233, 16
  store i32 %shr234, i32* %mcost, align 4
  %214 = load i32, i32* @dist_method, align 4
  %idxprom235 = sext i32 %214 to i64
  %arrayidx236 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom235
  %215 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx236, align 8
  %216 = load i16*, i16** %orig_pic.addr, align 8
  %217 = load i16, i16* %blocksize_y, align 2
  %conv237 = sext i16 %217 to i32
  %218 = load i16, i16* %blocksize_x, align 2
  %conv238 = sext i16 %218 to i32
  %219 = load i32, i32* %min_mcost.addr, align 4
  %220 = load i32, i32* %mcost, align 4
  %sub239 = sub nsw i32 %219, %220
  %221 = load i32, i32* %cand_mv_x, align 4
  %222 = load i32, i32* %pic4_pix_x, align 4
  %add240 = add nsw i32 %221, %222
  %223 = load i32, i32* %cand_mv_y, align 4
  %224 = load i32, i32* %pic4_pix_y, align 4
  %add241 = add nsw i32 %223, %224
  %call242 = call i32 %215(i16* %216, i32 %conv237, i32 %conv238, i32 %sub239, i32 %add240, i32 %add241)
  %225 = load i32, i32* %mcost, align 4
  %add243 = add nsw i32 %225, %call242
  store i32 %add243, i32* %mcost, align 4
  %226 = load i32, i32* %cand_mv_x, align 4
  %227 = load i16*, i16** %mv_x.addr, align 8
  %228 = load i16, i16* %227, align 2
  %conv244 = sext i16 %228 to i32
  %sub245 = sub nsw i32 %226, %conv244
  %229 = load i16, i16* %dynamic_search_range, align 2
  %conv246 = sext i16 %229 to i32
  %add247 = add nsw i32 %sub245, %conv246
  %idxprom248 = sext i32 %add247 to i64
  %230 = load i32, i32* %cand_mv_y, align 4
  %231 = load i16*, i16** %mv_y.addr, align 8
  %232 = load i16, i16* %231, align 2
  %conv249 = sext i16 %232 to i32
  %sub250 = sub nsw i32 %230, %conv249
  %233 = load i16, i16* %dynamic_search_range, align 2
  %conv251 = sext i16 %233 to i32
  %add252 = add nsw i32 %sub250, %conv251
  %idxprom253 = sext i32 %add252 to i64
  %234 = load i8**, i8*** @smpUMHEX_SearchState, align 8
  %arrayidx254 = getelementptr inbounds i8*, i8** %234, i64 %idxprom253
  %235 = load i8*, i8** %arrayidx254, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %235, i64 %idxprom248
  store i8 1, i8* %arrayidx255, align 1
  %236 = load i32, i32* %mcost, align 4
  %237 = load i32, i32* %min_mcost.addr, align 4
  %cmp256 = icmp slt i32 %236, %237
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.then.215
  %238 = load i32, i32* %mcost, align 4
  store i32 %238, i32* %min_mcost.addr, align 4
  %239 = load i32, i32* %cand_mv_x, align 4
  store i32 %239, i32* %currmv_x, align 4
  %240 = load i32, i32* %cand_mv_y, align 4
  store i32 %240, i32* %currmv_y, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %if.then.215
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %lor.lhs.false.213
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.362, %if.end.260
  %241 = load i16, i16* %i, align 2
  %conv261 = sext i16 %241 to i32
  %242 = load i16, i16* %dynamic_search_range, align 2
  %conv262 = sext i16 %242 to i32
  %cmp263 = icmp slt i32 %conv261, %conv262
  br i1 %cmp263, label %for.body, label %for.end.364

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %abort_search, align 4
  %243 = load i32, i32* %currmv_x, align 4
  store i32 %243, i32* %iXMinNow, align 4
  %244 = load i32, i32* %currmv_y, align 4
  store i32 %244, i32* %iYMinNow, align 4
  store i16 0, i16* %m, align 2
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc, %for.body
  %245 = load i16, i16* %m, align 2
  %conv266 = sext i16 %245 to i32
  %cmp267 = icmp slt i32 %conv266, 4
  br i1 %cmp267, label %for.body.269, label %for.end

for.body.269:                                     ; preds = %for.cond.265
  %246 = load i32, i32* %iXMinNow, align 4
  %247 = load i16, i16* %m, align 2
  %idxprom270 = sext i16 %247 to i64
  %arrayidx271 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom270
  %248 = load i16, i16* %arrayidx271, align 2
  %conv272 = sext i16 %248 to i32
  %add273 = add nsw i32 %246, %conv272
  store i32 %add273, i32* %cand_mv_x, align 4
  %249 = load i32, i32* %iYMinNow, align 4
  %250 = load i16, i16* %m, align 2
  %idxprom274 = sext i16 %250 to i64
  %arrayidx275 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom274
  %251 = load i16, i16* %arrayidx275, align 2
  %conv276 = sext i16 %251 to i32
  %add277 = add nsw i32 %249, %conv276
  store i32 %add277, i32* %cand_mv_y, align 4
  %252 = load i32, i32* %cand_mv_x, align 4
  %253 = load i16*, i16** %mv_x.addr, align 8
  %254 = load i16, i16* %253, align 2
  %conv278 = sext i16 %254 to i32
  %sub279 = sub nsw i32 %252, %conv278
  %call280 = call i32 @iabs(i32 %sub279)
  %255 = load i16, i16* %dynamic_search_range, align 2
  %conv281 = sext i16 %255 to i32
  %cmp282 = icmp sle i32 %call280, %conv281
  br i1 %cmp282, label %land.lhs.true.284, label %if.end.358

land.lhs.true.284:                                ; preds = %for.body.269
  %256 = load i32, i32* %cand_mv_y, align 4
  %257 = load i16*, i16** %mv_y.addr, align 8
  %258 = load i16, i16* %257, align 2
  %conv285 = sext i16 %258 to i32
  %sub286 = sub nsw i32 %256, %conv285
  %call287 = call i32 @iabs(i32 %sub286)
  %259 = load i16, i16* %dynamic_search_range, align 2
  %conv288 = sext i16 %259 to i32
  %cmp289 = icmp sle i32 %call287, %conv288
  br i1 %cmp289, label %if.then.291, label %if.end.358

if.then.291:                                      ; preds = %land.lhs.true.284
  %260 = load i32, i32* %cand_mv_x, align 4
  %261 = load i16*, i16** %mv_x.addr, align 8
  %262 = load i16, i16* %261, align 2
  %conv292 = sext i16 %262 to i32
  %sub293 = sub nsw i32 %260, %conv292
  %263 = load i16, i16* %dynamic_search_range, align 2
  %conv294 = sext i16 %263 to i32
  %add295 = add nsw i32 %sub293, %conv294
  %idxprom296 = sext i32 %add295 to i64
  %264 = load i32, i32* %cand_mv_y, align 4
  %265 = load i16*, i16** %mv_y.addr, align 8
  %266 = load i16, i16* %265, align 2
  %conv297 = sext i16 %266 to i32
  %sub298 = sub nsw i32 %264, %conv297
  %267 = load i16, i16* %dynamic_search_range, align 2
  %conv299 = sext i16 %267 to i32
  %add300 = add nsw i32 %sub298, %conv299
  %idxprom301 = sext i32 %add300 to i64
  %268 = load i8**, i8*** @smpUMHEX_SearchState, align 8
  %arrayidx302 = getelementptr inbounds i8*, i8** %268, i64 %idxprom301
  %269 = load i8*, i8** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i8, i8* %269, i64 %idxprom296
  %270 = load i8, i8* %arrayidx303, align 1
  %tobool304 = icmp ne i8 %270, 0
  br i1 %tobool304, label %if.end.357, label %if.then.305

if.then.305:                                      ; preds = %if.then.291
  %271 = load i32, i32* %lambda_factor.addr, align 4
  %272 = load i32, i32* %cand_mv_x, align 4
  %273 = load i16, i16* %mv_shift, align 2
  %conv306 = sext i16 %273 to i32
  %shl307 = shl i32 %272, %conv306
  %274 = load i16, i16* %pred_mv_x.addr, align 2
  %conv308 = sext i16 %274 to i32
  %sub309 = sub nsw i32 %shl307, %conv308
  %idxprom310 = sext i32 %sub309 to i64
  %275 = load i32*, i32** @mvbits, align 8
  %arrayidx311 = getelementptr inbounds i32, i32* %275, i64 %idxprom310
  %276 = load i32, i32* %arrayidx311, align 4
  %277 = load i32, i32* %cand_mv_y, align 4
  %278 = load i16, i16* %mv_shift, align 2
  %conv312 = sext i16 %278 to i32
  %shl313 = shl i32 %277, %conv312
  %279 = load i16, i16* %pred_mv_y.addr, align 2
  %conv314 = sext i16 %279 to i32
  %sub315 = sub nsw i32 %shl313, %conv314
  %idxprom316 = sext i32 %sub315 to i64
  %280 = load i32*, i32** @mvbits, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %280, i64 %idxprom316
  %281 = load i32, i32* %arrayidx317, align 4
  %add318 = add nsw i32 %276, %281
  %mul319 = mul nsw i32 %271, %add318
  %shr320 = ashr i32 %mul319, 16
  store i32 %shr320, i32* %mcost, align 4
  %282 = load i32, i32* @dist_method, align 4
  %idxprom321 = sext i32 %282 to i64
  %arrayidx322 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom321
  %283 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx322, align 8
  %284 = load i16*, i16** %orig_pic.addr, align 8
  %285 = load i16, i16* %blocksize_y, align 2
  %conv323 = sext i16 %285 to i32
  %286 = load i16, i16* %blocksize_x, align 2
  %conv324 = sext i16 %286 to i32
  %287 = load i32, i32* %min_mcost.addr, align 4
  %288 = load i32, i32* %mcost, align 4
  %sub325 = sub nsw i32 %287, %288
  %289 = load i32, i32* %cand_mv_x, align 4
  %290 = load i32, i32* %pic4_pix_x, align 4
  %add326 = add nsw i32 %289, %290
  %291 = load i32, i32* %cand_mv_y, align 4
  %292 = load i32, i32* %pic4_pix_y, align 4
  %add327 = add nsw i32 %291, %292
  %call328 = call i32 %283(i16* %284, i32 %conv323, i32 %conv324, i32 %sub325, i32 %add326, i32 %add327)
  %293 = load i32, i32* %mcost, align 4
  %add329 = add nsw i32 %293, %call328
  store i32 %add329, i32* %mcost, align 4
  %294 = load i32, i32* %cand_mv_x, align 4
  %295 = load i16*, i16** %mv_x.addr, align 8
  %296 = load i16, i16* %295, align 2
  %conv330 = sext i16 %296 to i32
  %sub331 = sub nsw i32 %294, %conv330
  %297 = load i16, i16* %dynamic_search_range, align 2
  %conv332 = sext i16 %297 to i32
  %add333 = add nsw i32 %sub331, %conv332
  %idxprom334 = sext i32 %add333 to i64
  %298 = load i32, i32* %cand_mv_y, align 4
  %299 = load i16*, i16** %mv_y.addr, align 8
  %300 = load i16, i16* %299, align 2
  %conv335 = sext i16 %300 to i32
  %sub336 = sub nsw i32 %298, %conv335
  %301 = load i16, i16* %dynamic_search_range, align 2
  %conv337 = sext i16 %301 to i32
  %add338 = add nsw i32 %sub336, %conv337
  %idxprom339 = sext i32 %add338 to i64
  %302 = load i8**, i8*** @smpUMHEX_SearchState, align 8
  %arrayidx340 = getelementptr inbounds i8*, i8** %302, i64 %idxprom339
  %303 = load i8*, i8** %arrayidx340, align 8
  %arrayidx341 = getelementptr inbounds i8, i8* %303, i64 %idxprom334
  store i8 1, i8* %arrayidx341, align 1
  %304 = load i32, i32* %mcost, align 4
  %305 = load i32, i32* %min_mcost.addr, align 4
  %cmp342 = icmp slt i32 %304, %305
  br i1 %cmp342, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %if.then.305
  %306 = load i32, i32* %mcost, align 4
  store i32 %306, i32* %min_mcost.addr, align 4
  %307 = load i32, i32* %cand_mv_x, align 4
  store i32 %307, i32* %currmv_x, align 4
  %308 = load i32, i32* %cand_mv_y, align 4
  store i32 %308, i32* %currmv_y, align 4
  store i32 0, i32* %abort_search, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.344, %if.then.305
  %309 = load i32, i32* %min_mcost.addr, align 4
  %310 = load i16, i16* @SubPelThreshold3, align 2
  %conv346 = zext i16 %310 to i32
  %311 = load i32, i32* %blocktype.addr, align 4
  %idxprom347 = sext i32 %311 to i64
  %arrayidx348 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom347
  %312 = load i16, i16* %arrayidx348, align 2
  %conv349 = sext i16 %312 to i32
  %shr350 = ashr i32 %conv346, %conv349
  %cmp351 = icmp slt i32 %309, %shr350
  br i1 %cmp351, label %if.then.353, label %if.end.356

if.then.353:                                      ; preds = %if.end.345
  %313 = load i32, i32* %currmv_x, align 4
  %conv354 = trunc i32 %313 to i16
  %314 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv354, i16* %314, align 2
  %315 = load i32, i32* %currmv_y, align 4
  %conv355 = trunc i32 %315 to i16
  %316 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv355, i16* %316, align 2
  %317 = load i32, i32* %min_mcost.addr, align 4
  store i32 %317, i32* %retval
  br label %return

if.end.356:                                       ; preds = %if.end.345
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %if.then.291
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %land.lhs.true.284, %for.body.269
  br label %for.inc

for.inc:                                          ; preds = %if.end.358
  %318 = load i16, i16* %m, align 2
  %inc = add i16 %318, 1
  store i16 %inc, i16* %m, align 2
  br label %for.cond.265

for.end:                                          ; preds = %for.cond.265
  %319 = load i32, i32* %abort_search, align 4
  %tobool359 = icmp ne i32 %319, 0
  br i1 %tobool359, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %for.end
  br label %for.end.364

if.end.361:                                       ; preds = %for.end
  br label %for.inc.362

for.inc.362:                                      ; preds = %if.end.361
  %320 = load i16, i16* %i, align 2
  %inc363 = add i16 %320, 1
  store i16 %inc363, i16* %i, align 2
  br label %for.cond

for.end.364:                                      ; preds = %if.then.360, %for.cond
  %321 = load i32, i32* %currmv_x, align 4
  %conv365 = trunc i32 %321 to i16
  %322 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv365, i16* %322, align 2
  %323 = load i32, i32* %currmv_y, align 4
  %conv366 = trunc i32 %323 to i16
  %324 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv366, i16* %324, align 2
  %325 = load i32, i32* %min_mcost.addr, align 4
  store i32 %325, i32* %retval
  br label %return

return:                                           ; preds = %for.end.364, %if.then.353, %if.then.208
  %326 = load i32, i32* %retval
  ret i32 %326
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @smpUMHEXBipredIntegerPelBlockMotionSearch(i16* %cur_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x1, i16 signext %pred_mv_y1, i16 signext %pred_mv_x2, i16 signext %pred_mv_y2, i16* %mv_x, i16* %mv_y, i16* %s_mv_x, i16* %s_mv_y, i32 %search_range, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %retval = alloca i32, align 4
  %cur_pic.addr = alloca i16*, align 8
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
  %mvshift = alloca i32, align 4
  %search_step = alloca i32, align 4
  %iYMinNow = alloca i32, align 4
  %iXMinNow = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %cand_x = alloca i32, align 4
  %cand_y = alloca i32, align 4
  %mcost = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %pred_x1 = alloca i32, align 4
  %pred_y1 = alloca i32, align 4
  %pred_x2 = alloca i32, align 4
  %pred_y2 = alloca i32, align 4
  %center2_x = alloca i16, align 2
  %center2_y = alloca i16, align 2
  %center1_x = alloca i16, align 2
  %center1_y = alloca i16, align 2
  %best_x = alloca i32, align 4
  %best_y = alloca i32, align 4
  %apply_weights = alloca i16, align 2
  %offset1 = alloca i16, align 2
  %offset2 = alloca i16, align 2
  store i16* %cur_pic, i16** %cur_pic.addr, align 8
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
  store i32 2, i32* %mvshift, align 4
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
  %5 = load i32, i32* %blocktype.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 18
  %arrayidx3 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 1
  %7 = load i32, i32* %arrayidx4, align 4
  store i32 %7, i32* %blocksize_y, align 4
  %8 = load i32, i32* %blocktype.addr, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 18
  %arrayidx7 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size6, i32 0, i64 %idxprom5
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx7, i32 0, i64 0
  %10 = load i32, i32* %arrayidx8, align 4
  store i32 %10, i32* %blocksize_x, align 4
  %11 = load i32, i32* %pic_pix_x.addr, align 4
  %shl = shl i32 %11, 2
  %12 = load i16, i16* %pred_mv_x1.addr, align 2
  %conv = sext i16 %12 to i32
  %add = add nsw i32 %shl, %conv
  store i32 %add, i32* %pred_x1, align 4
  %13 = load i32, i32* %pic_pix_y.addr, align 4
  %shl9 = shl i32 %13, 2
  %14 = load i16, i16* %pred_mv_y1.addr, align 2
  %conv10 = sext i16 %14 to i32
  %add11 = add nsw i32 %shl9, %conv10
  store i32 %add11, i32* %pred_y1, align 4
  %15 = load i32, i32* %pic_pix_x.addr, align 4
  %shl12 = shl i32 %15, 2
  %16 = load i16, i16* %pred_mv_x2.addr, align 2
  %conv13 = sext i16 %16 to i32
  %add14 = add nsw i32 %shl12, %conv13
  store i32 %add14, i32* %pred_x2, align 4
  %17 = load i32, i32* %pic_pix_y.addr, align 4
  %shl15 = shl i32 %17, 2
  %18 = load i16, i16* %pred_mv_y2.addr, align 2
  %conv16 = sext i16 %18 to i32
  %add17 = add nsw i32 %shl15, %conv16
  store i32 %add17, i32* %pred_y2, align 4
  %19 = load i32, i32* %pic_pix_x.addr, align 4
  %20 = load i16*, i16** %mv_x.addr, align 8
  %21 = load i16, i16* %20, align 2
  %conv18 = sext i16 %21 to i32
  %add19 = add nsw i32 %19, %conv18
  %conv20 = trunc i32 %add19 to i16
  store i16 %conv20, i16* %center2_x, align 2
  %22 = load i32, i32* %pic_pix_y.addr, align 4
  %23 = load i16*, i16** %mv_y.addr, align 8
  %24 = load i16, i16* %23, align 2
  %conv21 = sext i16 %24 to i32
  %add22 = add nsw i32 %22, %conv21
  %conv23 = trunc i32 %add22 to i16
  store i16 %conv23, i16* %center2_y, align 2
  %25 = load i32, i32* %pic_pix_x.addr, align 4
  %26 = load i16*, i16** %s_mv_x.addr, align 8
  %27 = load i16, i16* %26, align 2
  %conv24 = sext i16 %27 to i32
  %add25 = add nsw i32 %25, %conv24
  %conv26 = trunc i32 %add25 to i16
  store i16 %conv26, i16* %center1_x, align 2
  %28 = load i32, i32* %pic_pix_y.addr, align 4
  %29 = load i16*, i16** %s_mv_y.addr, align 8
  %30 = load i16, i16* %29, align 2
  %conv27 = sext i16 %30 to i32
  %add28 = add nsw i32 %28, %conv27
  %conv29 = trunc i32 %add28 to i16
  store i16 %conv29, i16* %center1_y, align 2
  %31 = load i16, i16* %center2_x, align 2
  %conv30 = sext i16 %31 to i32
  store i32 %conv30, i32* %best_x, align 4
  %32 = load i16, i16* %center2_y, align 2
  %conv31 = sext i16 %32 to i32
  store i32 %conv31, i32* %best_y, align 4
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %33, i32 0, i32 20
  %34 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp = icmp ugt i32 %34, 0
  %conv32 = zext i1 %cmp to i32
  %conv33 = trunc i32 %conv32 to i16
  store i16 %conv33, i16* %apply_weights, align 2
  %35 = load i16, i16* %apply_weights, align 2
  %conv34 = sext i16 %35 to i32
  %tobool = icmp ne i32 %conv34, 0
  br i1 %tobool, label %cond.true, label %cond.false.49

cond.true:                                        ; preds = %entry
  %36 = load i32, i32* %list.addr, align 4
  %cmp35 = icmp eq i32 %36, 0
  br i1 %cmp35, label %cond.true.37, label %cond.false

cond.true.37:                                     ; preds = %cond.true
  %37 = load i16, i16* %ref.addr, align 2
  %idxprom38 = sext i16 %37 to i64
  %38 = load i32, i32* %list_offset, align 4
  %idxprom39 = sext i32 %38 to i64
  %39 = load i32***, i32**** @wp_offset, align 8
  %arrayidx40 = getelementptr inbounds i32**, i32*** %39, i64 %idxprom39
  %40 = load i32**, i32*** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %40, i64 %idxprom38
  %41 = load i32*, i32** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %41, i64 0
  %42 = load i32, i32* %arrayidx42, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %43 = load i16, i16* %ref.addr, align 2
  %idxprom43 = sext i16 %43 to i64
  %44 = load i32, i32* %list_offset, align 4
  %add44 = add nsw i32 %44, 1
  %idxprom45 = sext i32 %add44 to i64
  %45 = load i32***, i32**** @wp_offset, align 8
  %arrayidx46 = getelementptr inbounds i32**, i32*** %45, i64 %idxprom45
  %46 = load i32**, i32*** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i32*, i32** %46, i64 0
  %47 = load i32*, i32** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %47, i64 %idxprom43
  %48 = load i32, i32* %arrayidx48, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.37
  %cond = phi i32 [ %42, %cond.true.37 ], [ %48, %cond.false ]
  br label %cond.end.50

cond.false.49:                                    ; preds = %entry
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.end
  %cond51 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false.49 ]
  %conv52 = trunc i32 %cond51 to i16
  store i16 %conv52, i16* %offset1, align 2
  %49 = load i16, i16* %apply_weights, align 2
  %conv53 = sext i16 %49 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.73

cond.true.55:                                     ; preds = %cond.end.50
  %50 = load i32, i32* %list.addr, align 4
  %cmp56 = icmp eq i32 %50, 0
  br i1 %cmp56, label %cond.true.58, label %cond.false.65

cond.true.58:                                     ; preds = %cond.true.55
  %51 = load i16, i16* %ref.addr, align 2
  %idxprom59 = sext i16 %51 to i64
  %52 = load i32, i32* %list_offset, align 4
  %add60 = add nsw i32 %52, 1
  %idxprom61 = sext i32 %add60 to i64
  %53 = load i32***, i32**** @wp_offset, align 8
  %arrayidx62 = getelementptr inbounds i32**, i32*** %53, i64 %idxprom61
  %54 = load i32**, i32*** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i32*, i32** %54, i64 %idxprom59
  %55 = load i32*, i32** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %55, i64 0
  %56 = load i32, i32* %arrayidx64, align 4
  br label %cond.end.71

cond.false.65:                                    ; preds = %cond.true.55
  %57 = load i16, i16* %ref.addr, align 2
  %idxprom66 = sext i16 %57 to i64
  %58 = load i32, i32* %list_offset, align 4
  %idxprom67 = sext i32 %58 to i64
  %59 = load i32***, i32**** @wp_offset, align 8
  %arrayidx68 = getelementptr inbounds i32**, i32*** %59, i64 %idxprom67
  %60 = load i32**, i32*** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %60, i64 0
  %61 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %61, i64 %idxprom66
  %62 = load i32, i32* %arrayidx70, align 4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.65, %cond.true.58
  %cond72 = phi i32 [ %56, %cond.true.58 ], [ %62, %cond.false.65 ]
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.end.50
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.end.71
  %cond75 = phi i32 [ %cond72, %cond.end.71 ], [ 0, %cond.false.73 ]
  %conv76 = trunc i32 %cond75 to i16
  store i16 %conv76, i16* %offset2, align 2
  %63 = load i16, i16* %ref.addr, align 2
  %idxprom77 = sext i16 %63 to i64
  %64 = load i32, i32* %list.addr, align 4
  %65 = load i32, i32* %list_offset, align 4
  %add78 = add nsw i32 %64, %65
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom79
  %66 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %66, i64 %idxprom77
  %67 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx81, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 30
  %68 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %68, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %69 = load i32, i32* %list.addr, align 4
  %cmp82 = icmp eq i32 %69, 0
  br i1 %cmp82, label %cond.true.84, label %cond.false.86

cond.true.84:                                     ; preds = %cond.end.74
  %70 = load i32, i32* %list_offset, align 4
  %add85 = add nsw i32 1, %70
  br label %cond.end.87

cond.false.86:                                    ; preds = %cond.end.74
  %71 = load i32, i32* %list_offset, align 4
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.86, %cond.true.84
  %cond88 = phi i32 [ %add85, %cond.true.84 ], [ %71, %cond.false.86 ]
  %idxprom89 = sext i32 %cond88 to i64
  %arrayidx90 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom89
  %72 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %72, i64 0
  %73 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx91, align 8
  %imgY_sub92 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %73, i32 0, i32 30
  %74 = load i16****, i16***** %imgY_sub92, align 8
  store i16**** %74, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %75 = load i16, i16* %ref.addr, align 2
  %idxprom93 = sext i16 %75 to i64
  %76 = load i32, i32* %list.addr, align 4
  %77 = load i32, i32* %list_offset, align 4
  %add94 = add nsw i32 %76, %77
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom95
  %78 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %78, i64 %idxprom93
  %79 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx97, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %79, i32 0, i32 18
  %80 = load i32, i32* %size_x, align 4
  %conv98 = trunc i32 %80 to i16
  store i16 %conv98, i16* @img_width, align 2
  %81 = load i16, i16* %ref.addr, align 2
  %idxprom99 = sext i16 %81 to i64
  %82 = load i32, i32* %list.addr, align 4
  %83 = load i32, i32* %list_offset, align 4
  %add100 = add nsw i32 %82, %83
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom101
  %84 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %84, i64 %idxprom99
  %85 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx103, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %85, i32 0, i32 19
  %86 = load i32, i32* %size_y, align 4
  %conv104 = trunc i32 %86 to i16
  store i16 %conv104, i16* @img_height, align 2
  %87 = load i16, i16* %ref.addr, align 2
  %idxprom105 = sext i16 %87 to i64
  %88 = load i32, i32* %list.addr, align 4
  %89 = load i32, i32* %list_offset, align 4
  %add106 = add nsw i32 %88, %89
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom107
  %90 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %90, i64 %idxprom105
  %91 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx109, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %91, i32 0, i32 22
  %92 = load i32, i32* %size_x_pad, align 4
  store i32 %92, i32* @width_pad, align 4
  %93 = load i16, i16* %ref.addr, align 2
  %idxprom110 = sext i16 %93 to i64
  %94 = load i32, i32* %list.addr, align 4
  %95 = load i32, i32* %list_offset, align 4
  %add111 = add nsw i32 %94, %95
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom112
  %96 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %96, i64 %idxprom110
  %97 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx114, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %97, i32 0, i32 23
  %98 = load i32, i32* %size_y_pad, align 4
  store i32 %98, i32* @height_pad, align 4
  %99 = load i16, i16* %apply_weights, align 2
  %tobool115 = icmp ne i16 %99, 0
  br i1 %tobool115, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.87
  %100 = load i32, i32* %list.addr, align 4
  %cmp116 = icmp eq i32 %100, 0
  br i1 %cmp116, label %cond.true.118, label %cond.false.125

cond.true.118:                                    ; preds = %if.then
  %101 = load i16, i16* %ref.addr, align 2
  %idxprom119 = sext i16 %101 to i64
  %102 = load i32, i32* %list_offset, align 4
  %idxprom120 = sext i32 %102 to i64
  %103 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx121 = getelementptr inbounds i32***, i32**** %103, i64 %idxprom120
  %104 = load i32***, i32**** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i32**, i32*** %104, i64 %idxprom119
  %105 = load i32**, i32*** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i32*, i32** %105, i64 0
  %106 = load i32*, i32** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %106, i64 0
  %107 = load i32, i32* %arrayidx124, align 4
  br label %cond.end.133

cond.false.125:                                   ; preds = %if.then
  %108 = load i16, i16* %ref.addr, align 2
  %idxprom126 = sext i16 %108 to i64
  %109 = load i32, i32* %list_offset, align 4
  %add127 = add nsw i32 %109, 1
  %idxprom128 = sext i32 %add127 to i64
  %110 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx129 = getelementptr inbounds i32***, i32**** %110, i64 %idxprom128
  %111 = load i32***, i32**** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i32**, i32*** %111, i64 0
  %112 = load i32**, i32*** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i32*, i32** %112, i64 %idxprom126
  %113 = load i32*, i32** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %113, i64 0
  %114 = load i32, i32* %arrayidx132, align 4
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.125, %cond.true.118
  %cond134 = phi i32 [ %107, %cond.true.118 ], [ %114, %cond.false.125 ]
  %conv135 = trunc i32 %cond134 to i16
  store i16 %conv135, i16* @weight1, align 2
  %115 = load i32, i32* %list.addr, align 4
  %cmp136 = icmp eq i32 %115, 0
  br i1 %cmp136, label %cond.true.138, label %cond.false.146

cond.true.138:                                    ; preds = %cond.end.133
  %116 = load i16, i16* %ref.addr, align 2
  %idxprom139 = sext i16 %116 to i64
  %117 = load i32, i32* %list_offset, align 4
  %add140 = add nsw i32 %117, 1
  %idxprom141 = sext i32 %add140 to i64
  %118 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx142 = getelementptr inbounds i32***, i32**** %118, i64 %idxprom141
  %119 = load i32***, i32**** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i32**, i32*** %119, i64 %idxprom139
  %120 = load i32**, i32*** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds i32*, i32** %120, i64 0
  %121 = load i32*, i32** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %121, i64 0
  %122 = load i32, i32* %arrayidx145, align 4
  br label %cond.end.153

cond.false.146:                                   ; preds = %cond.end.133
  %123 = load i16, i16* %ref.addr, align 2
  %idxprom147 = sext i16 %123 to i64
  %124 = load i32, i32* %list_offset, align 4
  %idxprom148 = sext i32 %124 to i64
  %125 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx149 = getelementptr inbounds i32***, i32**** %125, i64 %idxprom148
  %126 = load i32***, i32**** %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds i32**, i32*** %126, i64 0
  %127 = load i32**, i32*** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i32*, i32** %127, i64 %idxprom147
  %128 = load i32*, i32** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %128, i64 0
  %129 = load i32, i32* %arrayidx152, align 4
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.146, %cond.true.138
  %cond154 = phi i32 [ %122, %cond.true.138 ], [ %129, %cond.false.146 ]
  %conv155 = trunc i32 %cond154 to i16
  store i16 %conv155, i16* @weight2, align 2
  %130 = load i16, i16* %offset1, align 2
  %conv156 = sext i16 %130 to i32
  %131 = load i16, i16* %offset2, align 2
  %conv157 = sext i16 %131 to i32
  %add158 = add nsw i32 %conv156, %conv157
  %add159 = add nsw i32 %add158, 1
  %shr = ashr i32 %add159, 1
  %conv160 = trunc i32 %shr to i16
  store i16 %conv160, i16* @offsetBi, align 2
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* @computeBiPredSAD2, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.87
  %132 = load i32, i32* @luma_log_weight_denom, align 4
  %shl161 = shl i32 1, %132
  %conv162 = trunc i32 %shl161 to i16
  store i16 %conv162, i16* @weight1, align 2
  %133 = load i32, i32* @luma_log_weight_denom, align 4
  %shl163 = shl i32 1, %133
  %conv164 = trunc i32 %shl163 to i16
  store i16 %conv164, i16* @weight2, align 2
  store i16 0, i16* @offsetBi, align 2
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* @computeBiPredSAD1, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.153
  %134 = load i32, i32* @ChromaMEEnable, align 4
  %tobool165 = icmp ne i32 %134, 0
  br i1 %tobool165, label %if.then.166, label %if.end.372

if.then.166:                                      ; preds = %if.end
  %135 = load i16, i16* %ref.addr, align 2
  %idxprom167 = sext i16 %135 to i64
  %136 = load i32, i32* %list.addr, align 4
  %137 = load i32, i32* %list_offset, align 4
  %add168 = add nsw i32 %136, %137
  %idxprom169 = sext i32 %add168 to i64
  %arrayidx170 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom169
  %138 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx170, align 8
  %arrayidx171 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %138, i64 %idxprom167
  %139 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx171, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %139, i32 0, i32 32
  %140 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx172 = getelementptr inbounds i16****, i16***** %140, i64 0
  %141 = load i16****, i16***** %arrayidx172, align 8
  store i16**** %141, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 0), align 8
  %142 = load i16, i16* %ref.addr, align 2
  %idxprom173 = sext i16 %142 to i64
  %143 = load i32, i32* %list.addr, align 4
  %144 = load i32, i32* %list_offset, align 4
  %add174 = add nsw i32 %143, %144
  %idxprom175 = sext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom175
  %145 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %145, i64 %idxprom173
  %146 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx177, align 8
  %imgUV_sub178 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %146, i32 0, i32 32
  %147 = load i16*****, i16****** %imgUV_sub178, align 8
  %arrayidx179 = getelementptr inbounds i16****, i16***** %147, i64 1
  %148 = load i16****, i16***** %arrayidx179, align 8
  store i16**** %148, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 1), align 8
  %149 = load i32, i32* %list.addr, align 4
  %cmp180 = icmp eq i32 %149, 0
  br i1 %cmp180, label %cond.true.182, label %cond.false.184

cond.true.182:                                    ; preds = %if.then.166
  %150 = load i32, i32* %list_offset, align 4
  %add183 = add nsw i32 1, %150
  br label %cond.end.185

cond.false.184:                                   ; preds = %if.then.166
  %151 = load i32, i32* %list_offset, align 4
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.184, %cond.true.182
  %cond186 = phi i32 [ %add183, %cond.true.182 ], [ %151, %cond.false.184 ]
  %idxprom187 = sext i32 %cond186 to i64
  %arrayidx188 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom187
  %152 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %152, i64 0
  %153 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx189, align 8
  %imgUV_sub190 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %153, i32 0, i32 32
  %154 = load i16*****, i16****** %imgUV_sub190, align 8
  %arrayidx191 = getelementptr inbounds i16****, i16***** %154, i64 0
  %155 = load i16****, i16***** %arrayidx191, align 8
  store i16**** %155, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 0), align 8
  %156 = load i32, i32* %list.addr, align 4
  %cmp192 = icmp eq i32 %156, 0
  br i1 %cmp192, label %cond.true.194, label %cond.false.196

cond.true.194:                                    ; preds = %cond.end.185
  %157 = load i32, i32* %list_offset, align 4
  %add195 = add nsw i32 1, %157
  br label %cond.end.197

cond.false.196:                                   ; preds = %cond.end.185
  %158 = load i32, i32* %list_offset, align 4
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.196, %cond.true.194
  %cond198 = phi i32 [ %add195, %cond.true.194 ], [ %158, %cond.false.196 ]
  %idxprom199 = sext i32 %cond198 to i64
  %arrayidx200 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom199
  %159 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %159, i64 0
  %160 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx201, align 8
  %imgUV_sub202 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %160, i32 0, i32 32
  %161 = load i16*****, i16****** %imgUV_sub202, align 8
  %arrayidx203 = getelementptr inbounds i16****, i16***** %161, i64 1
  %162 = load i16****, i16***** %arrayidx203, align 8
  store i16**** %162, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 1), align 8
  %163 = load i16, i16* %ref.addr, align 2
  %idxprom204 = sext i16 %163 to i64
  %164 = load i32, i32* %list.addr, align 4
  %165 = load i32, i32* %list_offset, align 4
  %add205 = add nsw i32 %164, %165
  %idxprom206 = sext i32 %add205 to i64
  %arrayidx207 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom206
  %166 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %166, i64 %idxprom204
  %167 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx208, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %167, i32 0, i32 24
  %168 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %168, i32* @width_pad_cr, align 4
  %169 = load i16, i16* %ref.addr, align 2
  %idxprom209 = sext i16 %169 to i64
  %170 = load i32, i32* %list.addr, align 4
  %171 = load i32, i32* %list_offset, align 4
  %add210 = add nsw i32 %170, %171
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom211
  %172 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx212, align 8
  %arrayidx213 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %172, i64 %idxprom209
  %173 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx213, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %173, i32 0, i32 25
  %174 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %174, i32* @height_pad_cr, align 4
  %175 = load i16, i16* %apply_weights, align 2
  %tobool214 = icmp ne i16 %175, 0
  br i1 %tobool214, label %if.then.215, label %if.else.362

if.then.215:                                      ; preds = %cond.end.197
  %176 = load i32, i32* %list.addr, align 4
  %cmp216 = icmp eq i32 %176, 0
  br i1 %cmp216, label %cond.true.218, label %cond.false.225

cond.true.218:                                    ; preds = %if.then.215
  %177 = load i16, i16* %ref.addr, align 2
  %idxprom219 = sext i16 %177 to i64
  %178 = load i32, i32* %list_offset, align 4
  %idxprom220 = sext i32 %178 to i64
  %179 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx221 = getelementptr inbounds i32***, i32**** %179, i64 %idxprom220
  %180 = load i32***, i32**** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i32**, i32*** %180, i64 %idxprom219
  %181 = load i32**, i32*** %arrayidx222, align 8
  %arrayidx223 = getelementptr inbounds i32*, i32** %181, i64 0
  %182 = load i32*, i32** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %182, i64 1
  %183 = load i32, i32* %arrayidx224, align 4
  br label %cond.end.233

cond.false.225:                                   ; preds = %if.then.215
  %184 = load i16, i16* %ref.addr, align 2
  %idxprom226 = sext i16 %184 to i64
  %185 = load i32, i32* %list_offset, align 4
  %add227 = add nsw i32 %185, 1
  %idxprom228 = sext i32 %add227 to i64
  %186 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx229 = getelementptr inbounds i32***, i32**** %186, i64 %idxprom228
  %187 = load i32***, i32**** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds i32**, i32*** %187, i64 0
  %188 = load i32**, i32*** %arrayidx230, align 8
  %arrayidx231 = getelementptr inbounds i32*, i32** %188, i64 %idxprom226
  %189 = load i32*, i32** %arrayidx231, align 8
  %arrayidx232 = getelementptr inbounds i32, i32* %189, i64 1
  %190 = load i32, i32* %arrayidx232, align 4
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.225, %cond.true.218
  %cond234 = phi i32 [ %183, %cond.true.218 ], [ %190, %cond.false.225 ]
  %conv235 = trunc i32 %cond234 to i16
  store i16 %conv235, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %191 = load i32, i32* %list.addr, align 4
  %cmp236 = icmp eq i32 %191, 0
  br i1 %cmp236, label %cond.true.238, label %cond.false.245

cond.true.238:                                    ; preds = %cond.end.233
  %192 = load i16, i16* %ref.addr, align 2
  %idxprom239 = sext i16 %192 to i64
  %193 = load i32, i32* %list_offset, align 4
  %idxprom240 = sext i32 %193 to i64
  %194 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx241 = getelementptr inbounds i32***, i32**** %194, i64 %idxprom240
  %195 = load i32***, i32**** %arrayidx241, align 8
  %arrayidx242 = getelementptr inbounds i32**, i32*** %195, i64 %idxprom239
  %196 = load i32**, i32*** %arrayidx242, align 8
  %arrayidx243 = getelementptr inbounds i32*, i32** %196, i64 0
  %197 = load i32*, i32** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %197, i64 2
  %198 = load i32, i32* %arrayidx244, align 4
  br label %cond.end.253

cond.false.245:                                   ; preds = %cond.end.233
  %199 = load i16, i16* %ref.addr, align 2
  %idxprom246 = sext i16 %199 to i64
  %200 = load i32, i32* %list_offset, align 4
  %add247 = add nsw i32 %200, 1
  %idxprom248 = sext i32 %add247 to i64
  %201 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx249 = getelementptr inbounds i32***, i32**** %201, i64 %idxprom248
  %202 = load i32***, i32**** %arrayidx249, align 8
  %arrayidx250 = getelementptr inbounds i32**, i32*** %202, i64 0
  %203 = load i32**, i32*** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i32*, i32** %203, i64 %idxprom246
  %204 = load i32*, i32** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %204, i64 2
  %205 = load i32, i32* %arrayidx252, align 4
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.false.245, %cond.true.238
  %cond254 = phi i32 [ %198, %cond.true.238 ], [ %205, %cond.false.245 ]
  %conv255 = trunc i32 %cond254 to i16
  store i16 %conv255, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %206 = load i32, i32* %list.addr, align 4
  %cmp256 = icmp eq i32 %206, 0
  br i1 %cmp256, label %cond.true.258, label %cond.false.266

cond.true.258:                                    ; preds = %cond.end.253
  %207 = load i16, i16* %ref.addr, align 2
  %idxprom259 = sext i16 %207 to i64
  %208 = load i32, i32* %list_offset, align 4
  %add260 = add nsw i32 %208, 1
  %idxprom261 = sext i32 %add260 to i64
  %209 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx262 = getelementptr inbounds i32***, i32**** %209, i64 %idxprom261
  %210 = load i32***, i32**** %arrayidx262, align 8
  %arrayidx263 = getelementptr inbounds i32**, i32*** %210, i64 %idxprom259
  %211 = load i32**, i32*** %arrayidx263, align 8
  %arrayidx264 = getelementptr inbounds i32*, i32** %211, i64 0
  %212 = load i32*, i32** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %212, i64 1
  %213 = load i32, i32* %arrayidx265, align 4
  br label %cond.end.273

cond.false.266:                                   ; preds = %cond.end.253
  %214 = load i16, i16* %ref.addr, align 2
  %idxprom267 = sext i16 %214 to i64
  %215 = load i32, i32* %list_offset, align 4
  %idxprom268 = sext i32 %215 to i64
  %216 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx269 = getelementptr inbounds i32***, i32**** %216, i64 %idxprom268
  %217 = load i32***, i32**** %arrayidx269, align 8
  %arrayidx270 = getelementptr inbounds i32**, i32*** %217, i64 0
  %218 = load i32**, i32*** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i32*, i32** %218, i64 %idxprom267
  %219 = load i32*, i32** %arrayidx271, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %219, i64 1
  %220 = load i32, i32* %arrayidx272, align 4
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.266, %cond.true.258
  %cond274 = phi i32 [ %213, %cond.true.258 ], [ %220, %cond.false.266 ]
  %conv275 = trunc i32 %cond274 to i16
  store i16 %conv275, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %221 = load i32, i32* %list.addr, align 4
  %cmp276 = icmp eq i32 %221, 0
  br i1 %cmp276, label %cond.true.278, label %cond.false.286

cond.true.278:                                    ; preds = %cond.end.273
  %222 = load i16, i16* %ref.addr, align 2
  %idxprom279 = sext i16 %222 to i64
  %223 = load i32, i32* %list_offset, align 4
  %add280 = add nsw i32 %223, 1
  %idxprom281 = sext i32 %add280 to i64
  %224 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx282 = getelementptr inbounds i32***, i32**** %224, i64 %idxprom281
  %225 = load i32***, i32**** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i32**, i32*** %225, i64 %idxprom279
  %226 = load i32**, i32*** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i32*, i32** %226, i64 0
  %227 = load i32*, i32** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i32, i32* %227, i64 2
  %228 = load i32, i32* %arrayidx285, align 4
  br label %cond.end.293

cond.false.286:                                   ; preds = %cond.end.273
  %229 = load i16, i16* %ref.addr, align 2
  %idxprom287 = sext i16 %229 to i64
  %230 = load i32, i32* %list_offset, align 4
  %idxprom288 = sext i32 %230 to i64
  %231 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx289 = getelementptr inbounds i32***, i32**** %231, i64 %idxprom288
  %232 = load i32***, i32**** %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds i32**, i32*** %232, i64 0
  %233 = load i32**, i32*** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds i32*, i32** %233, i64 %idxprom287
  %234 = load i32*, i32** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i32, i32* %234, i64 2
  %235 = load i32, i32* %arrayidx292, align 4
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.false.286, %cond.true.278
  %cond294 = phi i32 [ %228, %cond.true.278 ], [ %235, %cond.false.286 ]
  %conv295 = trunc i32 %cond294 to i16
  store i16 %conv295, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  %236 = load i32, i32* %list.addr, align 4
  %cmp296 = icmp eq i32 %236, 0
  br i1 %cmp296, label %cond.true.298, label %cond.false.313

cond.true.298:                                    ; preds = %cond.end.293
  %237 = load i16, i16* %ref.addr, align 2
  %idxprom299 = sext i16 %237 to i64
  %238 = load i32, i32* %list_offset, align 4
  %idxprom300 = sext i32 %238 to i64
  %239 = load i32***, i32**** @wp_offset, align 8
  %arrayidx301 = getelementptr inbounds i32**, i32*** %239, i64 %idxprom300
  %240 = load i32**, i32*** %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds i32*, i32** %240, i64 %idxprom299
  %241 = load i32*, i32** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i32, i32* %241, i64 1
  %242 = load i32, i32* %arrayidx303, align 4
  %243 = load i16, i16* %ref.addr, align 2
  %idxprom304 = sext i16 %243 to i64
  %244 = load i32, i32* %list_offset, align 4
  %add305 = add nsw i32 %244, 1
  %idxprom306 = sext i32 %add305 to i64
  %245 = load i32***, i32**** @wp_offset, align 8
  %arrayidx307 = getelementptr inbounds i32**, i32*** %245, i64 %idxprom306
  %246 = load i32**, i32*** %arrayidx307, align 8
  %arrayidx308 = getelementptr inbounds i32*, i32** %246, i64 %idxprom304
  %247 = load i32*, i32** %arrayidx308, align 8
  %arrayidx309 = getelementptr inbounds i32, i32* %247, i64 1
  %248 = load i32, i32* %arrayidx309, align 4
  %add310 = add nsw i32 %242, %248
  %add311 = add nsw i32 %add310, 1
  %shr312 = ashr i32 %add311, 1
  br label %cond.end.326

cond.false.313:                                   ; preds = %cond.end.293
  %249 = load i32, i32* %list_offset, align 4
  %add314 = add nsw i32 %249, 1
  %idxprom315 = sext i32 %add314 to i64
  %250 = load i32***, i32**** @wp_offset, align 8
  %arrayidx316 = getelementptr inbounds i32**, i32*** %250, i64 %idxprom315
  %251 = load i32**, i32*** %arrayidx316, align 8
  %arrayidx317 = getelementptr inbounds i32*, i32** %251, i64 0
  %252 = load i32*, i32** %arrayidx317, align 8
  %arrayidx318 = getelementptr inbounds i32, i32* %252, i64 1
  %253 = load i32, i32* %arrayidx318, align 4
  %254 = load i32, i32* %list_offset, align 4
  %idxprom319 = sext i32 %254 to i64
  %255 = load i32***, i32**** @wp_offset, align 8
  %arrayidx320 = getelementptr inbounds i32**, i32*** %255, i64 %idxprom319
  %256 = load i32**, i32*** %arrayidx320, align 8
  %arrayidx321 = getelementptr inbounds i32*, i32** %256, i64 0
  %257 = load i32*, i32** %arrayidx321, align 8
  %arrayidx322 = getelementptr inbounds i32, i32* %257, i64 1
  %258 = load i32, i32* %arrayidx322, align 4
  %add323 = add nsw i32 %253, %258
  %add324 = add nsw i32 %add323, 1
  %shr325 = ashr i32 %add324, 1
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.false.313, %cond.true.298
  %cond327 = phi i32 [ %shr312, %cond.true.298 ], [ %shr325, %cond.false.313 ]
  %conv328 = trunc i32 %cond327 to i16
  store i16 %conv328, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  %259 = load i32, i32* %list.addr, align 4
  %cmp329 = icmp eq i32 %259, 0
  br i1 %cmp329, label %cond.true.331, label %cond.false.346

cond.true.331:                                    ; preds = %cond.end.326
  %260 = load i16, i16* %ref.addr, align 2
  %idxprom332 = sext i16 %260 to i64
  %261 = load i32, i32* %list_offset, align 4
  %idxprom333 = sext i32 %261 to i64
  %262 = load i32***, i32**** @wp_offset, align 8
  %arrayidx334 = getelementptr inbounds i32**, i32*** %262, i64 %idxprom333
  %263 = load i32**, i32*** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds i32*, i32** %263, i64 %idxprom332
  %264 = load i32*, i32** %arrayidx335, align 8
  %arrayidx336 = getelementptr inbounds i32, i32* %264, i64 2
  %265 = load i32, i32* %arrayidx336, align 4
  %266 = load i16, i16* %ref.addr, align 2
  %idxprom337 = sext i16 %266 to i64
  %267 = load i32, i32* %list_offset, align 4
  %add338 = add nsw i32 %267, 1
  %idxprom339 = sext i32 %add338 to i64
  %268 = load i32***, i32**** @wp_offset, align 8
  %arrayidx340 = getelementptr inbounds i32**, i32*** %268, i64 %idxprom339
  %269 = load i32**, i32*** %arrayidx340, align 8
  %arrayidx341 = getelementptr inbounds i32*, i32** %269, i64 %idxprom337
  %270 = load i32*, i32** %arrayidx341, align 8
  %arrayidx342 = getelementptr inbounds i32, i32* %270, i64 2
  %271 = load i32, i32* %arrayidx342, align 4
  %add343 = add nsw i32 %265, %271
  %add344 = add nsw i32 %add343, 1
  %shr345 = ashr i32 %add344, 1
  br label %cond.end.359

cond.false.346:                                   ; preds = %cond.end.326
  %272 = load i32, i32* %list_offset, align 4
  %add347 = add nsw i32 %272, 1
  %idxprom348 = sext i32 %add347 to i64
  %273 = load i32***, i32**** @wp_offset, align 8
  %arrayidx349 = getelementptr inbounds i32**, i32*** %273, i64 %idxprom348
  %274 = load i32**, i32*** %arrayidx349, align 8
  %arrayidx350 = getelementptr inbounds i32*, i32** %274, i64 0
  %275 = load i32*, i32** %arrayidx350, align 8
  %arrayidx351 = getelementptr inbounds i32, i32* %275, i64 2
  %276 = load i32, i32* %arrayidx351, align 4
  %277 = load i32, i32* %list_offset, align 4
  %idxprom352 = sext i32 %277 to i64
  %278 = load i32***, i32**** @wp_offset, align 8
  %arrayidx353 = getelementptr inbounds i32**, i32*** %278, i64 %idxprom352
  %279 = load i32**, i32*** %arrayidx353, align 8
  %arrayidx354 = getelementptr inbounds i32*, i32** %279, i64 0
  %280 = load i32*, i32** %arrayidx354, align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %280, i64 2
  %281 = load i32, i32* %arrayidx355, align 4
  %add356 = add nsw i32 %276, %281
  %add357 = add nsw i32 %add356, 1
  %shr358 = ashr i32 %add357, 1
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.false.346, %cond.true.331
  %cond360 = phi i32 [ %shr345, %cond.true.331 ], [ %shr358, %cond.false.346 ]
  %conv361 = trunc i32 %cond360 to i16
  store i16 %conv361, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.371

if.else.362:                                      ; preds = %cond.end.197
  %282 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl363 = shl i32 1, %282
  %conv364 = trunc i32 %shl363 to i16
  store i16 %conv364, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %283 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl365 = shl i32 1, %283
  %conv366 = trunc i32 %shl365 to i16
  store i16 %conv366, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %284 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl367 = shl i32 1, %284
  %conv368 = trunc i32 %shl367 to i16
  store i16 %conv368, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %285 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl369 = shl i32 1, %285
  %conv370 = trunc i32 %shl369 to i16
  store i16 %conv370, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.371

if.end.371:                                       ; preds = %if.else.362, %cond.end.359
  br label %if.end.372

if.end.372:                                       ; preds = %if.end.371, %if.end
  %286 = load i16, i16* %center2_x, align 2
  %conv373 = sext i16 %286 to i32
  %287 = load i32, i32* %search_range.addr, align 4
  %cmp374 = icmp sgt i32 %conv373, %287
  br i1 %cmp374, label %land.lhs.true, label %if.else.395

land.lhs.true:                                    ; preds = %if.end.372
  %288 = load i16, i16* %center2_x, align 2
  %conv376 = sext i16 %288 to i32
  %289 = load i16, i16* @img_width, align 2
  %conv377 = sext i16 %289 to i32
  %sub = sub nsw i32 %conv377, 1
  %290 = load i32, i32* %search_range.addr, align 4
  %sub378 = sub nsw i32 %sub, %290
  %291 = load i32, i32* %blocksize_x, align 4
  %sub379 = sub nsw i32 %sub378, %291
  %cmp380 = icmp slt i32 %conv376, %sub379
  br i1 %cmp380, label %land.lhs.true.382, label %if.else.395

land.lhs.true.382:                                ; preds = %land.lhs.true
  %292 = load i16, i16* %center2_y, align 2
  %conv383 = sext i16 %292 to i32
  %293 = load i32, i32* %search_range.addr, align 4
  %cmp384 = icmp sgt i32 %conv383, %293
  br i1 %cmp384, label %land.lhs.true.386, label %if.else.395

land.lhs.true.386:                                ; preds = %land.lhs.true.382
  %294 = load i16, i16* %center2_y, align 2
  %conv387 = sext i16 %294 to i32
  %295 = load i16, i16* @img_height, align 2
  %conv388 = sext i16 %295 to i32
  %sub389 = sub nsw i32 %conv388, 1
  %296 = load i32, i32* %search_range.addr, align 4
  %sub390 = sub nsw i32 %sub389, %296
  %297 = load i32, i32* %blocksize_y, align 4
  %sub391 = sub nsw i32 %sub390, %297
  %cmp392 = icmp slt i32 %conv387, %sub391
  br i1 %cmp392, label %if.then.394, label %if.else.395

if.then.394:                                      ; preds = %land.lhs.true.386
  store i32 0, i32* @bipred2_access_method, align 4
  br label %if.end.396

if.else.395:                                      ; preds = %land.lhs.true.386, %land.lhs.true.382, %land.lhs.true, %if.end.372
  store i32 1, i32* @bipred2_access_method, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.else.395, %if.then.394
  %298 = load i16, i16* %center1_y, align 2
  %conv397 = sext i16 %298 to i32
  %299 = load i32, i32* %search_range.addr, align 4
  %cmp398 = icmp sgt i32 %conv397, %299
  br i1 %cmp398, label %land.lhs.true.400, label %if.else.409

land.lhs.true.400:                                ; preds = %if.end.396
  %300 = load i16, i16* %center1_y, align 2
  %conv401 = sext i16 %300 to i32
  %301 = load i16, i16* @img_height, align 2
  %conv402 = sext i16 %301 to i32
  %sub403 = sub nsw i32 %conv402, 1
  %302 = load i32, i32* %search_range.addr, align 4
  %sub404 = sub nsw i32 %sub403, %302
  %303 = load i32, i32* %blocksize_y, align 4
  %sub405 = sub nsw i32 %sub404, %303
  %cmp406 = icmp slt i32 %conv401, %sub405
  br i1 %cmp406, label %if.then.408, label %if.else.409

if.then.408:                                      ; preds = %land.lhs.true.400
  store i32 0, i32* @bipred1_access_method, align 4
  br label %if.end.410

if.else.409:                                      ; preds = %land.lhs.true.400, %if.end.396
  store i32 1, i32* @bipred1_access_method, align 4
  br label %if.end.410

if.end.410:                                       ; preds = %if.else.409, %if.then.408
  %304 = load i16, i16* %center2_x, align 2
  %conv411 = sext i16 %304 to i32
  store i32 %conv411, i32* %cand_x, align 4
  %305 = load i16, i16* %center2_y, align 2
  %conv412 = sext i16 %305 to i32
  store i32 %conv412, i32* %cand_y, align 4
  %306 = load i32, i32* %lambda_factor.addr, align 4
  %307 = load i16, i16* %center1_x, align 2
  %conv413 = sext i16 %307 to i32
  %308 = load i32, i32* %mvshift, align 4
  %shl414 = shl i32 %conv413, %308
  %309 = load i32, i32* %pred_x1, align 4
  %sub415 = sub nsw i32 %shl414, %309
  %idxprom416 = sext i32 %sub415 to i64
  %310 = load i32*, i32** @mvbits, align 8
  %arrayidx417 = getelementptr inbounds i32, i32* %310, i64 %idxprom416
  %311 = load i32, i32* %arrayidx417, align 4
  %312 = load i16, i16* %center1_y, align 2
  %conv418 = sext i16 %312 to i32
  %313 = load i32, i32* %mvshift, align 4
  %shl419 = shl i32 %conv418, %313
  %314 = load i32, i32* %pred_y1, align 4
  %sub420 = sub nsw i32 %shl419, %314
  %idxprom421 = sext i32 %sub420 to i64
  %315 = load i32*, i32** @mvbits, align 8
  %arrayidx422 = getelementptr inbounds i32, i32* %315, i64 %idxprom421
  %316 = load i32, i32* %arrayidx422, align 4
  %add423 = add nsw i32 %311, %316
  %mul = mul nsw i32 %306, %add423
  %shr424 = ashr i32 %mul, 16
  store i32 %shr424, i32* %mcost, align 4
  %317 = load i32, i32* %lambda_factor.addr, align 4
  %318 = load i32, i32* %cand_x, align 4
  %319 = load i32, i32* %mvshift, align 4
  %shl425 = shl i32 %318, %319
  %320 = load i32, i32* %pred_x2, align 4
  %sub426 = sub nsw i32 %shl425, %320
  %idxprom427 = sext i32 %sub426 to i64
  %321 = load i32*, i32** @mvbits, align 8
  %arrayidx428 = getelementptr inbounds i32, i32* %321, i64 %idxprom427
  %322 = load i32, i32* %arrayidx428, align 4
  %323 = load i32, i32* %cand_y, align 4
  %324 = load i32, i32* %mvshift, align 4
  %shl429 = shl i32 %323, %324
  %325 = load i32, i32* %pred_y2, align 4
  %sub430 = sub nsw i32 %shl429, %325
  %idxprom431 = sext i32 %sub430 to i64
  %326 = load i32*, i32** @mvbits, align 8
  %arrayidx432 = getelementptr inbounds i32, i32* %326, i64 %idxprom431
  %327 = load i32, i32* %arrayidx432, align 4
  %add433 = add nsw i32 %322, %327
  %mul434 = mul nsw i32 %317, %add433
  %shr435 = ashr i32 %mul434, 16
  %328 = load i32, i32* %mcost, align 4
  %add436 = add nsw i32 %328, %shr435
  store i32 %add436, i32* %mcost, align 4
  %329 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %330 = load i16*, i16** %cur_pic.addr, align 8
  %331 = load i32, i32* %blocksize_y, align 4
  %332 = load i32, i32* %blocksize_x, align 4
  %333 = load i16, i16* %center1_x, align 2
  %conv437 = sext i16 %333 to i32
  %shl438 = shl i32 %conv437, 2
  %add439 = add nsw i32 %shl438, 80
  %334 = load i16, i16* %center1_y, align 2
  %conv440 = sext i16 %334 to i32
  %shl441 = shl i32 %conv440, 2
  %add442 = add nsw i32 %shl441, 80
  %335 = load i32, i32* %cand_x, align 4
  %shl443 = shl i32 %335, 2
  %add444 = add nsw i32 %shl443, 80
  %336 = load i32, i32* %cand_y, align 4
  %shl445 = shl i32 %336, 2
  %add446 = add nsw i32 %shl445, 80
  %call = call i32 %329(i16* %330, i32 %331, i32 %332, i32 2147483647, i32 %add439, i32 %add442, i32 %add444, i32 %add446)
  %337 = load i32, i32* %mcost, align 4
  %add447 = add nsw i32 %337, %call
  store i32 %add447, i32* %mcost, align 4
  %338 = load i32, i32* %mcost, align 4
  %339 = load i32, i32* %min_mcost.addr, align 4
  %cmp448 = icmp slt i32 %338, %339
  br i1 %cmp448, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %if.end.410
  %340 = load i32, i32* %mcost, align 4
  store i32 %340, i32* %min_mcost.addr, align 4
  %341 = load i32, i32* %cand_x, align 4
  store i32 %341, i32* %best_x, align 4
  %342 = load i32, i32* %cand_y, align 4
  store i32 %342, i32* %best_y, align 4
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.450, %if.end.410
  %343 = load i32, i32* %best_x, align 4
  store i32 %343, i32* %iXMinNow, align 4
  %344 = load i32, i32* %best_y, align 4
  store i32 %344, i32* %iYMinNow, align 4
  %345 = load i16, i16* %pred_mv_x1.addr, align 2
  %conv452 = sext i16 %345 to i32
  %cmp453 = icmp ne i32 0, %conv452
  br i1 %cmp453, label %if.then.466, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.451
  %346 = load i16, i16* %pred_mv_y1.addr, align 2
  %conv455 = sext i16 %346 to i32
  %cmp456 = icmp ne i32 0, %conv455
  br i1 %cmp456, label %if.then.466, label %lor.lhs.false.458

lor.lhs.false.458:                                ; preds = %lor.lhs.false
  %347 = load i16, i16* %pred_mv_x2.addr, align 2
  %conv459 = sext i16 %347 to i32
  %cmp460 = icmp ne i32 0, %conv459
  br i1 %cmp460, label %if.then.466, label %lor.lhs.false.462

lor.lhs.false.462:                                ; preds = %lor.lhs.false.458
  %348 = load i16, i16* %pred_mv_y2.addr, align 2
  %conv463 = sext i16 %348 to i32
  %cmp464 = icmp ne i32 0, %conv463
  br i1 %cmp464, label %if.then.466, label %if.end.526

if.then.466:                                      ; preds = %lor.lhs.false.462, %lor.lhs.false.458, %lor.lhs.false, %if.end.451
  %349 = load i32, i32* %pic_pix_x.addr, align 4
  store i32 %349, i32* %cand_x, align 4
  %350 = load i32, i32* %pic_pix_y.addr, align 4
  store i32 %350, i32* %cand_y, align 4
  %351 = load i32, i32* %cand_x, align 4
  %352 = load i16, i16* %center2_x, align 2
  %conv467 = sext i16 %352 to i32
  %sub468 = sub nsw i32 %351, %conv467
  %call469 = call i32 @iabs(i32 %sub468)
  %353 = load i32, i32* %search_range.addr, align 4
  %cmp470 = icmp sle i32 %call469, %353
  br i1 %cmp470, label %land.lhs.true.472, label %if.end.525

land.lhs.true.472:                                ; preds = %if.then.466
  %354 = load i32, i32* %cand_y, align 4
  %355 = load i16, i16* %center2_y, align 2
  %conv473 = sext i16 %355 to i32
  %sub474 = sub nsw i32 %354, %conv473
  %call475 = call i32 @iabs(i32 %sub474)
  %356 = load i32, i32* %search_range.addr, align 4
  %cmp476 = icmp sle i32 %call475, %356
  br i1 %cmp476, label %if.then.478, label %if.end.525

if.then.478:                                      ; preds = %land.lhs.true.472
  %357 = load i32, i32* %lambda_factor.addr, align 4
  %358 = load i16, i16* %center1_x, align 2
  %conv479 = sext i16 %358 to i32
  %359 = load i32, i32* %mvshift, align 4
  %shl480 = shl i32 %conv479, %359
  %360 = load i32, i32* %pred_x1, align 4
  %sub481 = sub nsw i32 %shl480, %360
  %idxprom482 = sext i32 %sub481 to i64
  %361 = load i32*, i32** @mvbits, align 8
  %arrayidx483 = getelementptr inbounds i32, i32* %361, i64 %idxprom482
  %362 = load i32, i32* %arrayidx483, align 4
  %363 = load i16, i16* %center1_y, align 2
  %conv484 = sext i16 %363 to i32
  %364 = load i32, i32* %mvshift, align 4
  %shl485 = shl i32 %conv484, %364
  %365 = load i32, i32* %pred_y1, align 4
  %sub486 = sub nsw i32 %shl485, %365
  %idxprom487 = sext i32 %sub486 to i64
  %366 = load i32*, i32** @mvbits, align 8
  %arrayidx488 = getelementptr inbounds i32, i32* %366, i64 %idxprom487
  %367 = load i32, i32* %arrayidx488, align 4
  %add489 = add nsw i32 %362, %367
  %mul490 = mul nsw i32 %357, %add489
  %shr491 = ashr i32 %mul490, 16
  store i32 %shr491, i32* %mcost, align 4
  %368 = load i32, i32* %lambda_factor.addr, align 4
  %369 = load i32, i32* %cand_x, align 4
  %370 = load i32, i32* %mvshift, align 4
  %shl492 = shl i32 %369, %370
  %371 = load i32, i32* %pred_x2, align 4
  %sub493 = sub nsw i32 %shl492, %371
  %idxprom494 = sext i32 %sub493 to i64
  %372 = load i32*, i32** @mvbits, align 8
  %arrayidx495 = getelementptr inbounds i32, i32* %372, i64 %idxprom494
  %373 = load i32, i32* %arrayidx495, align 4
  %374 = load i32, i32* %cand_y, align 4
  %375 = load i32, i32* %mvshift, align 4
  %shl496 = shl i32 %374, %375
  %376 = load i32, i32* %pred_y2, align 4
  %sub497 = sub nsw i32 %shl496, %376
  %idxprom498 = sext i32 %sub497 to i64
  %377 = load i32*, i32** @mvbits, align 8
  %arrayidx499 = getelementptr inbounds i32, i32* %377, i64 %idxprom498
  %378 = load i32, i32* %arrayidx499, align 4
  %add500 = add nsw i32 %373, %378
  %mul501 = mul nsw i32 %368, %add500
  %shr502 = ashr i32 %mul501, 16
  %379 = load i32, i32* %mcost, align 4
  %add503 = add nsw i32 %379, %shr502
  store i32 %add503, i32* %mcost, align 4
  %380 = load i32, i32* %mcost, align 4
  %381 = load i32, i32* %min_mcost.addr, align 4
  %cmp504 = icmp slt i32 %380, %381
  br i1 %cmp504, label %if.then.506, label %if.end.524

if.then.506:                                      ; preds = %if.then.478
  %382 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %383 = load i16*, i16** %cur_pic.addr, align 8
  %384 = load i32, i32* %blocksize_y, align 4
  %385 = load i32, i32* %blocksize_x, align 4
  %386 = load i32, i32* %min_mcost.addr, align 4
  %387 = load i32, i32* %mcost, align 4
  %sub507 = sub nsw i32 %386, %387
  %388 = load i16, i16* %center1_x, align 2
  %conv508 = sext i16 %388 to i32
  %shl509 = shl i32 %conv508, 2
  %add510 = add nsw i32 %shl509, 80
  %389 = load i16, i16* %center1_y, align 2
  %conv511 = sext i16 %389 to i32
  %shl512 = shl i32 %conv511, 2
  %add513 = add nsw i32 %shl512, 80
  %390 = load i32, i32* %cand_x, align 4
  %shl514 = shl i32 %390, 2
  %add515 = add nsw i32 %shl514, 80
  %391 = load i32, i32* %cand_y, align 4
  %shl516 = shl i32 %391, 2
  %add517 = add nsw i32 %shl516, 80
  %call518 = call i32 %382(i16* %383, i32 %384, i32 %385, i32 %sub507, i32 %add510, i32 %add513, i32 %add515, i32 %add517)
  %392 = load i32, i32* %mcost, align 4
  %add519 = add nsw i32 %392, %call518
  store i32 %add519, i32* %mcost, align 4
  %393 = load i32, i32* %mcost, align 4
  %394 = load i32, i32* %min_mcost.addr, align 4
  %cmp520 = icmp slt i32 %393, %394
  br i1 %cmp520, label %if.then.522, label %if.end.523

if.then.522:                                      ; preds = %if.then.506
  %395 = load i32, i32* %cand_x, align 4
  store i32 %395, i32* %best_x, align 4
  %396 = load i32, i32* %cand_y, align 4
  store i32 %396, i32* %best_y, align 4
  %397 = load i32, i32* %mcost, align 4
  store i32 %397, i32* %min_mcost.addr, align 4
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.522, %if.then.506
  br label %if.end.524

if.end.524:                                       ; preds = %if.end.523, %if.then.478
  br label %if.end.525

if.end.525:                                       ; preds = %if.end.524, %land.lhs.true.472, %if.then.466
  br label %if.end.526

if.end.526:                                       ; preds = %if.end.525, %lor.lhs.false.462
  %398 = load i32, i32* %min_mcost.addr, align 4
  %shl527 = shl i32 %398, 3
  %399 = load i16, i16* @ConvergeThreshold, align 2
  %conv528 = zext i16 %399 to i32
  %400 = load i32, i32* %blocktype.addr, align 4
  %idxprom529 = sext i32 %400 to i64
  %arrayidx530 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom529
  %401 = load i16, i16* %arrayidx530, align 2
  %conv531 = sext i16 %401 to i32
  %shr532 = ashr i32 %conv528, %conv531
  %cmp533 = icmp slt i32 %shl527, %shr532
  br i1 %cmp533, label %if.then.535, label %if.end.609

if.then.535:                                      ; preds = %if.end.526
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.535
  %402 = load i32, i32* %m, align 4
  %cmp536 = icmp slt i32 %402, 4
  br i1 %cmp536, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %403 = load i32, i32* %iXMinNow, align 4
  %404 = load i32, i32* %m, align 4
  %idxprom538 = sext i32 %404 to i64
  %arrayidx539 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom538
  %405 = load i16, i16* %arrayidx539, align 2
  %conv540 = sext i16 %405 to i32
  %add541 = add nsw i32 %403, %conv540
  store i32 %add541, i32* %cand_x, align 4
  %406 = load i32, i32* %iYMinNow, align 4
  %407 = load i32, i32* %m, align 4
  %idxprom542 = sext i32 %407 to i64
  %arrayidx543 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom542
  %408 = load i16, i16* %arrayidx543, align 2
  %conv544 = sext i16 %408 to i32
  %add545 = add nsw i32 %406, %conv544
  store i32 %add545, i32* %cand_y, align 4
  %409 = load i32, i32* %cand_x, align 4
  %410 = load i16, i16* %center2_x, align 2
  %conv546 = sext i16 %410 to i32
  %sub547 = sub nsw i32 %409, %conv546
  %call548 = call i32 @iabs(i32 %sub547)
  %411 = load i32, i32* %search_range.addr, align 4
  %cmp549 = icmp sle i32 %call548, %411
  br i1 %cmp549, label %land.lhs.true.551, label %if.end.604

land.lhs.true.551:                                ; preds = %for.body
  %412 = load i32, i32* %cand_y, align 4
  %413 = load i16, i16* %center2_y, align 2
  %conv552 = sext i16 %413 to i32
  %sub553 = sub nsw i32 %412, %conv552
  %call554 = call i32 @iabs(i32 %sub553)
  %414 = load i32, i32* %search_range.addr, align 4
  %cmp555 = icmp sle i32 %call554, %414
  br i1 %cmp555, label %if.then.557, label %if.end.604

if.then.557:                                      ; preds = %land.lhs.true.551
  %415 = load i32, i32* %lambda_factor.addr, align 4
  %416 = load i16, i16* %center1_x, align 2
  %conv558 = sext i16 %416 to i32
  %417 = load i32, i32* %mvshift, align 4
  %shl559 = shl i32 %conv558, %417
  %418 = load i32, i32* %pred_x1, align 4
  %sub560 = sub nsw i32 %shl559, %418
  %idxprom561 = sext i32 %sub560 to i64
  %419 = load i32*, i32** @mvbits, align 8
  %arrayidx562 = getelementptr inbounds i32, i32* %419, i64 %idxprom561
  %420 = load i32, i32* %arrayidx562, align 4
  %421 = load i16, i16* %center1_y, align 2
  %conv563 = sext i16 %421 to i32
  %422 = load i32, i32* %mvshift, align 4
  %shl564 = shl i32 %conv563, %422
  %423 = load i32, i32* %pred_y1, align 4
  %sub565 = sub nsw i32 %shl564, %423
  %idxprom566 = sext i32 %sub565 to i64
  %424 = load i32*, i32** @mvbits, align 8
  %arrayidx567 = getelementptr inbounds i32, i32* %424, i64 %idxprom566
  %425 = load i32, i32* %arrayidx567, align 4
  %add568 = add nsw i32 %420, %425
  %mul569 = mul nsw i32 %415, %add568
  %shr570 = ashr i32 %mul569, 16
  store i32 %shr570, i32* %mcost, align 4
  %426 = load i32, i32* %lambda_factor.addr, align 4
  %427 = load i32, i32* %cand_x, align 4
  %428 = load i32, i32* %mvshift, align 4
  %shl571 = shl i32 %427, %428
  %429 = load i32, i32* %pred_x2, align 4
  %sub572 = sub nsw i32 %shl571, %429
  %idxprom573 = sext i32 %sub572 to i64
  %430 = load i32*, i32** @mvbits, align 8
  %arrayidx574 = getelementptr inbounds i32, i32* %430, i64 %idxprom573
  %431 = load i32, i32* %arrayidx574, align 4
  %432 = load i32, i32* %cand_y, align 4
  %433 = load i32, i32* %mvshift, align 4
  %shl575 = shl i32 %432, %433
  %434 = load i32, i32* %pred_y2, align 4
  %sub576 = sub nsw i32 %shl575, %434
  %idxprom577 = sext i32 %sub576 to i64
  %435 = load i32*, i32** @mvbits, align 8
  %arrayidx578 = getelementptr inbounds i32, i32* %435, i64 %idxprom577
  %436 = load i32, i32* %arrayidx578, align 4
  %add579 = add nsw i32 %431, %436
  %mul580 = mul nsw i32 %426, %add579
  %shr581 = ashr i32 %mul580, 16
  %437 = load i32, i32* %mcost, align 4
  %add582 = add nsw i32 %437, %shr581
  store i32 %add582, i32* %mcost, align 4
  %438 = load i32, i32* %mcost, align 4
  %439 = load i32, i32* %min_mcost.addr, align 4
  %cmp583 = icmp slt i32 %438, %439
  br i1 %cmp583, label %if.then.585, label %if.end.603

if.then.585:                                      ; preds = %if.then.557
  %440 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %441 = load i16*, i16** %cur_pic.addr, align 8
  %442 = load i32, i32* %blocksize_y, align 4
  %443 = load i32, i32* %blocksize_x, align 4
  %444 = load i32, i32* %min_mcost.addr, align 4
  %445 = load i32, i32* %mcost, align 4
  %sub586 = sub nsw i32 %444, %445
  %446 = load i16, i16* %center1_x, align 2
  %conv587 = sext i16 %446 to i32
  %shl588 = shl i32 %conv587, 2
  %add589 = add nsw i32 %shl588, 80
  %447 = load i16, i16* %center1_y, align 2
  %conv590 = sext i16 %447 to i32
  %shl591 = shl i32 %conv590, 2
  %add592 = add nsw i32 %shl591, 80
  %448 = load i32, i32* %cand_x, align 4
  %shl593 = shl i32 %448, 2
  %add594 = add nsw i32 %shl593, 80
  %449 = load i32, i32* %cand_y, align 4
  %shl595 = shl i32 %449, 2
  %add596 = add nsw i32 %shl595, 80
  %call597 = call i32 %440(i16* %441, i32 %442, i32 %443, i32 %sub586, i32 %add589, i32 %add592, i32 %add594, i32 %add596)
  %450 = load i32, i32* %mcost, align 4
  %add598 = add nsw i32 %450, %call597
  store i32 %add598, i32* %mcost, align 4
  %451 = load i32, i32* %mcost, align 4
  %452 = load i32, i32* %min_mcost.addr, align 4
  %cmp599 = icmp slt i32 %451, %452
  br i1 %cmp599, label %if.then.601, label %if.end.602

if.then.601:                                      ; preds = %if.then.585
  %453 = load i32, i32* %cand_x, align 4
  store i32 %453, i32* %best_x, align 4
  %454 = load i32, i32* %cand_y, align 4
  store i32 %454, i32* %best_y, align 4
  %455 = load i32, i32* %mcost, align 4
  store i32 %455, i32* %min_mcost.addr, align 4
  br label %if.end.602

if.end.602:                                       ; preds = %if.then.601, %if.then.585
  br label %if.end.603

if.end.603:                                       ; preds = %if.end.602, %if.then.557
  br label %if.end.604

if.end.604:                                       ; preds = %if.end.603, %land.lhs.true.551, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.604
  %456 = load i32, i32* %m, align 4
  %inc = add nsw i32 %456, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %457 = load i32, i32* %best_x, align 4
  %458 = load i32, i32* %pic_pix_x.addr, align 4
  %sub605 = sub nsw i32 %457, %458
  %conv606 = trunc i32 %sub605 to i16
  %459 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv606, i16* %459, align 2
  %460 = load i32, i32* %best_y, align 4
  %461 = load i32, i32* %pic_pix_y.addr, align 4
  %sub607 = sub nsw i32 %460, %461
  %conv608 = trunc i32 %sub607 to i16
  %462 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv608, i16* %462, align 2
  %463 = load i32, i32* %min_mcost.addr, align 4
  store i32 %463, i32* %retval
  br label %return

if.end.609:                                       ; preds = %if.end.526
  store i32 0, i32* %m, align 4
  br label %for.cond.610

for.cond.610:                                     ; preds = %for.inc.681, %if.end.609
  %464 = load i32, i32* %m, align 4
  %cmp611 = icmp slt i32 %464, 4
  br i1 %cmp611, label %for.body.613, label %for.end.683

for.body.613:                                     ; preds = %for.cond.610
  %465 = load i32, i32* %iXMinNow, align 4
  %466 = load i32, i32* %m, align 4
  %idxprom614 = sext i32 %466 to i64
  %arrayidx615 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom614
  %467 = load i16, i16* %arrayidx615, align 2
  %conv616 = sext i16 %467 to i32
  %add617 = add nsw i32 %465, %conv616
  store i32 %add617, i32* %cand_x, align 4
  %468 = load i32, i32* %iYMinNow, align 4
  %469 = load i32, i32* %m, align 4
  %idxprom618 = sext i32 %469 to i64
  %arrayidx619 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom618
  %470 = load i16, i16* %arrayidx619, align 2
  %conv620 = sext i16 %470 to i32
  %add621 = add nsw i32 %468, %conv620
  store i32 %add621, i32* %cand_y, align 4
  %471 = load i32, i32* %cand_x, align 4
  %472 = load i16, i16* %center2_x, align 2
  %conv622 = sext i16 %472 to i32
  %sub623 = sub nsw i32 %471, %conv622
  %call624 = call i32 @iabs(i32 %sub623)
  %473 = load i32, i32* %search_range.addr, align 4
  %cmp625 = icmp sle i32 %call624, %473
  br i1 %cmp625, label %land.lhs.true.627, label %if.end.680

land.lhs.true.627:                                ; preds = %for.body.613
  %474 = load i32, i32* %cand_y, align 4
  %475 = load i16, i16* %center2_y, align 2
  %conv628 = sext i16 %475 to i32
  %sub629 = sub nsw i32 %474, %conv628
  %call630 = call i32 @iabs(i32 %sub629)
  %476 = load i32, i32* %search_range.addr, align 4
  %cmp631 = icmp sle i32 %call630, %476
  br i1 %cmp631, label %if.then.633, label %if.end.680

if.then.633:                                      ; preds = %land.lhs.true.627
  %477 = load i32, i32* %lambda_factor.addr, align 4
  %478 = load i16, i16* %center1_x, align 2
  %conv634 = sext i16 %478 to i32
  %479 = load i32, i32* %mvshift, align 4
  %shl635 = shl i32 %conv634, %479
  %480 = load i32, i32* %pred_x1, align 4
  %sub636 = sub nsw i32 %shl635, %480
  %idxprom637 = sext i32 %sub636 to i64
  %481 = load i32*, i32** @mvbits, align 8
  %arrayidx638 = getelementptr inbounds i32, i32* %481, i64 %idxprom637
  %482 = load i32, i32* %arrayidx638, align 4
  %483 = load i16, i16* %center1_y, align 2
  %conv639 = sext i16 %483 to i32
  %484 = load i32, i32* %mvshift, align 4
  %shl640 = shl i32 %conv639, %484
  %485 = load i32, i32* %pred_y1, align 4
  %sub641 = sub nsw i32 %shl640, %485
  %idxprom642 = sext i32 %sub641 to i64
  %486 = load i32*, i32** @mvbits, align 8
  %arrayidx643 = getelementptr inbounds i32, i32* %486, i64 %idxprom642
  %487 = load i32, i32* %arrayidx643, align 4
  %add644 = add nsw i32 %482, %487
  %mul645 = mul nsw i32 %477, %add644
  %shr646 = ashr i32 %mul645, 16
  store i32 %shr646, i32* %mcost, align 4
  %488 = load i32, i32* %lambda_factor.addr, align 4
  %489 = load i32, i32* %cand_x, align 4
  %490 = load i32, i32* %mvshift, align 4
  %shl647 = shl i32 %489, %490
  %491 = load i32, i32* %pred_x2, align 4
  %sub648 = sub nsw i32 %shl647, %491
  %idxprom649 = sext i32 %sub648 to i64
  %492 = load i32*, i32** @mvbits, align 8
  %arrayidx650 = getelementptr inbounds i32, i32* %492, i64 %idxprom649
  %493 = load i32, i32* %arrayidx650, align 4
  %494 = load i32, i32* %cand_y, align 4
  %495 = load i32, i32* %mvshift, align 4
  %shl651 = shl i32 %494, %495
  %496 = load i32, i32* %pred_y2, align 4
  %sub652 = sub nsw i32 %shl651, %496
  %idxprom653 = sext i32 %sub652 to i64
  %497 = load i32*, i32** @mvbits, align 8
  %arrayidx654 = getelementptr inbounds i32, i32* %497, i64 %idxprom653
  %498 = load i32, i32* %arrayidx654, align 4
  %add655 = add nsw i32 %493, %498
  %mul656 = mul nsw i32 %488, %add655
  %shr657 = ashr i32 %mul656, 16
  %499 = load i32, i32* %mcost, align 4
  %add658 = add nsw i32 %499, %shr657
  store i32 %add658, i32* %mcost, align 4
  %500 = load i32, i32* %mcost, align 4
  %501 = load i32, i32* %min_mcost.addr, align 4
  %cmp659 = icmp slt i32 %500, %501
  br i1 %cmp659, label %if.then.661, label %if.end.679

if.then.661:                                      ; preds = %if.then.633
  %502 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %503 = load i16*, i16** %cur_pic.addr, align 8
  %504 = load i32, i32* %blocksize_y, align 4
  %505 = load i32, i32* %blocksize_x, align 4
  %506 = load i32, i32* %min_mcost.addr, align 4
  %507 = load i32, i32* %mcost, align 4
  %sub662 = sub nsw i32 %506, %507
  %508 = load i16, i16* %center1_x, align 2
  %conv663 = sext i16 %508 to i32
  %shl664 = shl i32 %conv663, 2
  %add665 = add nsw i32 %shl664, 80
  %509 = load i16, i16* %center1_y, align 2
  %conv666 = sext i16 %509 to i32
  %shl667 = shl i32 %conv666, 2
  %add668 = add nsw i32 %shl667, 80
  %510 = load i32, i32* %cand_x, align 4
  %shl669 = shl i32 %510, 2
  %add670 = add nsw i32 %shl669, 80
  %511 = load i32, i32* %cand_y, align 4
  %shl671 = shl i32 %511, 2
  %add672 = add nsw i32 %shl671, 80
  %call673 = call i32 %502(i16* %503, i32 %504, i32 %505, i32 %sub662, i32 %add665, i32 %add668, i32 %add670, i32 %add672)
  %512 = load i32, i32* %mcost, align 4
  %add674 = add nsw i32 %512, %call673
  store i32 %add674, i32* %mcost, align 4
  %513 = load i32, i32* %mcost, align 4
  %514 = load i32, i32* %min_mcost.addr, align 4
  %cmp675 = icmp slt i32 %513, %514
  br i1 %cmp675, label %if.then.677, label %if.end.678

if.then.677:                                      ; preds = %if.then.661
  %515 = load i32, i32* %cand_x, align 4
  store i32 %515, i32* %best_x, align 4
  %516 = load i32, i32* %cand_y, align 4
  store i32 %516, i32* %best_y, align 4
  %517 = load i32, i32* %mcost, align 4
  store i32 %517, i32* %min_mcost.addr, align 4
  br label %if.end.678

if.end.678:                                       ; preds = %if.then.677, %if.then.661
  br label %if.end.679

if.end.679:                                       ; preds = %if.end.678, %if.then.633
  br label %if.end.680

if.end.680:                                       ; preds = %if.end.679, %land.lhs.true.627, %for.body.613
  br label %for.inc.681

for.inc.681:                                      ; preds = %if.end.680
  %518 = load i32, i32* %m, align 4
  %inc682 = add nsw i32 %518, 1
  store i32 %inc682, i32* %m, align 4
  br label %for.cond.610

for.end.683:                                      ; preds = %for.cond.610
  %519 = load i32, i32* %blocktype.addr, align 4
  %cmp684 = icmp eq i32 %519, 1
  br i1 %cmp684, label %land.lhs.true.686, label %lor.lhs.false.695

land.lhs.true.686:                                ; preds = %for.end.683
  %520 = load i32, i32* %min_mcost.addr, align 4
  %shl687 = shl i32 %520, 2
  %521 = load i16, i16* @SymmetricalCrossSearchThreshold1, align 2
  %conv688 = zext i16 %521 to i32
  %522 = load i32, i32* %blocktype.addr, align 4
  %idxprom689 = sext i32 %522 to i64
  %arrayidx690 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom689
  %523 = load i16, i16* %arrayidx690, align 2
  %conv691 = sext i16 %523 to i32
  %shr692 = ashr i32 %conv688, %conv691
  %cmp693 = icmp sgt i32 %shl687, %shr692
  br i1 %cmp693, label %if.then.704, label %lor.lhs.false.695

lor.lhs.false.695:                                ; preds = %land.lhs.true.686, %for.end.683
  %524 = load i32, i32* %min_mcost.addr, align 4
  %shl696 = shl i32 %524, 2
  %525 = load i16, i16* @SymmetricalCrossSearchThreshold2, align 2
  %conv697 = zext i16 %525 to i32
  %526 = load i32, i32* %blocktype.addr, align 4
  %idxprom698 = sext i32 %526 to i64
  %arrayidx699 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom698
  %527 = load i16, i16* %arrayidx699, align 2
  %conv700 = sext i16 %527 to i32
  %shr701 = ashr i32 %conv697, %conv700
  %cmp702 = icmp sgt i32 %shl696, %shr701
  br i1 %cmp702, label %if.then.704, label %if.end.1112

if.then.704:                                      ; preds = %lor.lhs.false.695, %land.lhs.true.686
  %528 = load i32, i32* %best_x, align 4
  store i32 %528, i32* %iXMinNow, align 4
  %529 = load i32, i32* %best_y, align 4
  store i32 %529, i32* %iYMinNow, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.705

for.cond.705:                                     ; preds = %for.inc.951, %if.then.704
  %530 = load i32, i32* %i, align 4
  %531 = load i32, i32* %search_range.addr, align 4
  %div = sdiv i32 %531, 2
  %cmp706 = icmp sle i32 %530, %div
  br i1 %cmp706, label %for.body.708, label %for.end.953

for.body.708:                                     ; preds = %for.cond.705
  %532 = load i32, i32* %i, align 4
  %shl709 = shl i32 %532, 1
  %sub710 = sub nsw i32 %shl709, 1
  store i32 %sub710, i32* %search_step, align 4
  %533 = load i32, i32* %iXMinNow, align 4
  %534 = load i32, i32* %search_step, align 4
  %add711 = add nsw i32 %533, %534
  store i32 %add711, i32* %cand_x, align 4
  %535 = load i32, i32* %iYMinNow, align 4
  store i32 %535, i32* %cand_y, align 4
  %536 = load i32, i32* %cand_x, align 4
  %537 = load i16, i16* %center2_x, align 2
  %conv712 = sext i16 %537 to i32
  %sub713 = sub nsw i32 %536, %conv712
  %call714 = call i32 @iabs(i32 %sub713)
  %538 = load i32, i32* %search_range.addr, align 4
  %cmp715 = icmp sle i32 %call714, %538
  br i1 %cmp715, label %land.lhs.true.717, label %if.end.770

land.lhs.true.717:                                ; preds = %for.body.708
  %539 = load i32, i32* %cand_y, align 4
  %540 = load i16, i16* %center2_y, align 2
  %conv718 = sext i16 %540 to i32
  %sub719 = sub nsw i32 %539, %conv718
  %call720 = call i32 @iabs(i32 %sub719)
  %541 = load i32, i32* %search_range.addr, align 4
  %cmp721 = icmp sle i32 %call720, %541
  br i1 %cmp721, label %if.then.723, label %if.end.770

if.then.723:                                      ; preds = %land.lhs.true.717
  %542 = load i32, i32* %lambda_factor.addr, align 4
  %543 = load i16, i16* %center1_x, align 2
  %conv724 = sext i16 %543 to i32
  %544 = load i32, i32* %mvshift, align 4
  %shl725 = shl i32 %conv724, %544
  %545 = load i32, i32* %pred_x1, align 4
  %sub726 = sub nsw i32 %shl725, %545
  %idxprom727 = sext i32 %sub726 to i64
  %546 = load i32*, i32** @mvbits, align 8
  %arrayidx728 = getelementptr inbounds i32, i32* %546, i64 %idxprom727
  %547 = load i32, i32* %arrayidx728, align 4
  %548 = load i16, i16* %center1_y, align 2
  %conv729 = sext i16 %548 to i32
  %549 = load i32, i32* %mvshift, align 4
  %shl730 = shl i32 %conv729, %549
  %550 = load i32, i32* %pred_y1, align 4
  %sub731 = sub nsw i32 %shl730, %550
  %idxprom732 = sext i32 %sub731 to i64
  %551 = load i32*, i32** @mvbits, align 8
  %arrayidx733 = getelementptr inbounds i32, i32* %551, i64 %idxprom732
  %552 = load i32, i32* %arrayidx733, align 4
  %add734 = add nsw i32 %547, %552
  %mul735 = mul nsw i32 %542, %add734
  %shr736 = ashr i32 %mul735, 16
  store i32 %shr736, i32* %mcost, align 4
  %553 = load i32, i32* %lambda_factor.addr, align 4
  %554 = load i32, i32* %cand_x, align 4
  %555 = load i32, i32* %mvshift, align 4
  %shl737 = shl i32 %554, %555
  %556 = load i32, i32* %pred_x2, align 4
  %sub738 = sub nsw i32 %shl737, %556
  %idxprom739 = sext i32 %sub738 to i64
  %557 = load i32*, i32** @mvbits, align 8
  %arrayidx740 = getelementptr inbounds i32, i32* %557, i64 %idxprom739
  %558 = load i32, i32* %arrayidx740, align 4
  %559 = load i32, i32* %cand_y, align 4
  %560 = load i32, i32* %mvshift, align 4
  %shl741 = shl i32 %559, %560
  %561 = load i32, i32* %pred_y2, align 4
  %sub742 = sub nsw i32 %shl741, %561
  %idxprom743 = sext i32 %sub742 to i64
  %562 = load i32*, i32** @mvbits, align 8
  %arrayidx744 = getelementptr inbounds i32, i32* %562, i64 %idxprom743
  %563 = load i32, i32* %arrayidx744, align 4
  %add745 = add nsw i32 %558, %563
  %mul746 = mul nsw i32 %553, %add745
  %shr747 = ashr i32 %mul746, 16
  %564 = load i32, i32* %mcost, align 4
  %add748 = add nsw i32 %564, %shr747
  store i32 %add748, i32* %mcost, align 4
  %565 = load i32, i32* %mcost, align 4
  %566 = load i32, i32* %min_mcost.addr, align 4
  %cmp749 = icmp slt i32 %565, %566
  br i1 %cmp749, label %if.then.751, label %if.end.769

if.then.751:                                      ; preds = %if.then.723
  %567 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %568 = load i16*, i16** %cur_pic.addr, align 8
  %569 = load i32, i32* %blocksize_y, align 4
  %570 = load i32, i32* %blocksize_x, align 4
  %571 = load i32, i32* %min_mcost.addr, align 4
  %572 = load i32, i32* %mcost, align 4
  %sub752 = sub nsw i32 %571, %572
  %573 = load i16, i16* %center1_x, align 2
  %conv753 = sext i16 %573 to i32
  %shl754 = shl i32 %conv753, 2
  %add755 = add nsw i32 %shl754, 80
  %574 = load i16, i16* %center1_y, align 2
  %conv756 = sext i16 %574 to i32
  %shl757 = shl i32 %conv756, 2
  %add758 = add nsw i32 %shl757, 80
  %575 = load i32, i32* %cand_x, align 4
  %shl759 = shl i32 %575, 2
  %add760 = add nsw i32 %shl759, 80
  %576 = load i32, i32* %cand_y, align 4
  %shl761 = shl i32 %576, 2
  %add762 = add nsw i32 %shl761, 80
  %call763 = call i32 %567(i16* %568, i32 %569, i32 %570, i32 %sub752, i32 %add755, i32 %add758, i32 %add760, i32 %add762)
  %577 = load i32, i32* %mcost, align 4
  %add764 = add nsw i32 %577, %call763
  store i32 %add764, i32* %mcost, align 4
  %578 = load i32, i32* %mcost, align 4
  %579 = load i32, i32* %min_mcost.addr, align 4
  %cmp765 = icmp slt i32 %578, %579
  br i1 %cmp765, label %if.then.767, label %if.end.768

if.then.767:                                      ; preds = %if.then.751
  %580 = load i32, i32* %cand_x, align 4
  store i32 %580, i32* %best_x, align 4
  %581 = load i32, i32* %cand_y, align 4
  store i32 %581, i32* %best_y, align 4
  %582 = load i32, i32* %mcost, align 4
  store i32 %582, i32* %min_mcost.addr, align 4
  br label %if.end.768

if.end.768:                                       ; preds = %if.then.767, %if.then.751
  br label %if.end.769

if.end.769:                                       ; preds = %if.end.768, %if.then.723
  br label %if.end.770

if.end.770:                                       ; preds = %if.end.769, %land.lhs.true.717, %for.body.708
  %583 = load i32, i32* %iXMinNow, align 4
  %584 = load i32, i32* %search_step, align 4
  %sub771 = sub nsw i32 %583, %584
  store i32 %sub771, i32* %cand_x, align 4
  %585 = load i32, i32* %cand_x, align 4
  %586 = load i16, i16* %center2_x, align 2
  %conv772 = sext i16 %586 to i32
  %sub773 = sub nsw i32 %585, %conv772
  %call774 = call i32 @iabs(i32 %sub773)
  %587 = load i32, i32* %search_range.addr, align 4
  %cmp775 = icmp sle i32 %call774, %587
  br i1 %cmp775, label %land.lhs.true.777, label %if.end.830

land.lhs.true.777:                                ; preds = %if.end.770
  %588 = load i32, i32* %cand_y, align 4
  %589 = load i16, i16* %center2_y, align 2
  %conv778 = sext i16 %589 to i32
  %sub779 = sub nsw i32 %588, %conv778
  %call780 = call i32 @iabs(i32 %sub779)
  %590 = load i32, i32* %search_range.addr, align 4
  %cmp781 = icmp sle i32 %call780, %590
  br i1 %cmp781, label %if.then.783, label %if.end.830

if.then.783:                                      ; preds = %land.lhs.true.777
  %591 = load i32, i32* %lambda_factor.addr, align 4
  %592 = load i16, i16* %center1_x, align 2
  %conv784 = sext i16 %592 to i32
  %593 = load i32, i32* %mvshift, align 4
  %shl785 = shl i32 %conv784, %593
  %594 = load i32, i32* %pred_x1, align 4
  %sub786 = sub nsw i32 %shl785, %594
  %idxprom787 = sext i32 %sub786 to i64
  %595 = load i32*, i32** @mvbits, align 8
  %arrayidx788 = getelementptr inbounds i32, i32* %595, i64 %idxprom787
  %596 = load i32, i32* %arrayidx788, align 4
  %597 = load i16, i16* %center1_y, align 2
  %conv789 = sext i16 %597 to i32
  %598 = load i32, i32* %mvshift, align 4
  %shl790 = shl i32 %conv789, %598
  %599 = load i32, i32* %pred_y1, align 4
  %sub791 = sub nsw i32 %shl790, %599
  %idxprom792 = sext i32 %sub791 to i64
  %600 = load i32*, i32** @mvbits, align 8
  %arrayidx793 = getelementptr inbounds i32, i32* %600, i64 %idxprom792
  %601 = load i32, i32* %arrayidx793, align 4
  %add794 = add nsw i32 %596, %601
  %mul795 = mul nsw i32 %591, %add794
  %shr796 = ashr i32 %mul795, 16
  store i32 %shr796, i32* %mcost, align 4
  %602 = load i32, i32* %lambda_factor.addr, align 4
  %603 = load i32, i32* %cand_x, align 4
  %604 = load i32, i32* %mvshift, align 4
  %shl797 = shl i32 %603, %604
  %605 = load i32, i32* %pred_x2, align 4
  %sub798 = sub nsw i32 %shl797, %605
  %idxprom799 = sext i32 %sub798 to i64
  %606 = load i32*, i32** @mvbits, align 8
  %arrayidx800 = getelementptr inbounds i32, i32* %606, i64 %idxprom799
  %607 = load i32, i32* %arrayidx800, align 4
  %608 = load i32, i32* %cand_y, align 4
  %609 = load i32, i32* %mvshift, align 4
  %shl801 = shl i32 %608, %609
  %610 = load i32, i32* %pred_y2, align 4
  %sub802 = sub nsw i32 %shl801, %610
  %idxprom803 = sext i32 %sub802 to i64
  %611 = load i32*, i32** @mvbits, align 8
  %arrayidx804 = getelementptr inbounds i32, i32* %611, i64 %idxprom803
  %612 = load i32, i32* %arrayidx804, align 4
  %add805 = add nsw i32 %607, %612
  %mul806 = mul nsw i32 %602, %add805
  %shr807 = ashr i32 %mul806, 16
  %613 = load i32, i32* %mcost, align 4
  %add808 = add nsw i32 %613, %shr807
  store i32 %add808, i32* %mcost, align 4
  %614 = load i32, i32* %mcost, align 4
  %615 = load i32, i32* %min_mcost.addr, align 4
  %cmp809 = icmp slt i32 %614, %615
  br i1 %cmp809, label %if.then.811, label %if.end.829

if.then.811:                                      ; preds = %if.then.783
  %616 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %617 = load i16*, i16** %cur_pic.addr, align 8
  %618 = load i32, i32* %blocksize_y, align 4
  %619 = load i32, i32* %blocksize_x, align 4
  %620 = load i32, i32* %min_mcost.addr, align 4
  %621 = load i32, i32* %mcost, align 4
  %sub812 = sub nsw i32 %620, %621
  %622 = load i16, i16* %center1_x, align 2
  %conv813 = sext i16 %622 to i32
  %shl814 = shl i32 %conv813, 2
  %add815 = add nsw i32 %shl814, 80
  %623 = load i16, i16* %center1_y, align 2
  %conv816 = sext i16 %623 to i32
  %shl817 = shl i32 %conv816, 2
  %add818 = add nsw i32 %shl817, 80
  %624 = load i32, i32* %cand_x, align 4
  %shl819 = shl i32 %624, 2
  %add820 = add nsw i32 %shl819, 80
  %625 = load i32, i32* %cand_y, align 4
  %shl821 = shl i32 %625, 2
  %add822 = add nsw i32 %shl821, 80
  %call823 = call i32 %616(i16* %617, i32 %618, i32 %619, i32 %sub812, i32 %add815, i32 %add818, i32 %add820, i32 %add822)
  %626 = load i32, i32* %mcost, align 4
  %add824 = add nsw i32 %626, %call823
  store i32 %add824, i32* %mcost, align 4
  %627 = load i32, i32* %mcost, align 4
  %628 = load i32, i32* %min_mcost.addr, align 4
  %cmp825 = icmp slt i32 %627, %628
  br i1 %cmp825, label %if.then.827, label %if.end.828

if.then.827:                                      ; preds = %if.then.811
  %629 = load i32, i32* %cand_x, align 4
  store i32 %629, i32* %best_x, align 4
  %630 = load i32, i32* %cand_y, align 4
  store i32 %630, i32* %best_y, align 4
  %631 = load i32, i32* %mcost, align 4
  store i32 %631, i32* %min_mcost.addr, align 4
  br label %if.end.828

if.end.828:                                       ; preds = %if.then.827, %if.then.811
  br label %if.end.829

if.end.829:                                       ; preds = %if.end.828, %if.then.783
  br label %if.end.830

if.end.830:                                       ; preds = %if.end.829, %land.lhs.true.777, %if.end.770
  %632 = load i32, i32* %iXMinNow, align 4
  store i32 %632, i32* %cand_x, align 4
  %633 = load i32, i32* %iYMinNow, align 4
  %634 = load i32, i32* %search_step, align 4
  %add831 = add nsw i32 %633, %634
  store i32 %add831, i32* %cand_y, align 4
  %635 = load i32, i32* %cand_x, align 4
  %636 = load i16, i16* %center2_x, align 2
  %conv832 = sext i16 %636 to i32
  %sub833 = sub nsw i32 %635, %conv832
  %call834 = call i32 @iabs(i32 %sub833)
  %637 = load i32, i32* %search_range.addr, align 4
  %cmp835 = icmp sle i32 %call834, %637
  br i1 %cmp835, label %land.lhs.true.837, label %if.end.890

land.lhs.true.837:                                ; preds = %if.end.830
  %638 = load i32, i32* %cand_y, align 4
  %639 = load i16, i16* %center2_y, align 2
  %conv838 = sext i16 %639 to i32
  %sub839 = sub nsw i32 %638, %conv838
  %call840 = call i32 @iabs(i32 %sub839)
  %640 = load i32, i32* %search_range.addr, align 4
  %cmp841 = icmp sle i32 %call840, %640
  br i1 %cmp841, label %if.then.843, label %if.end.890

if.then.843:                                      ; preds = %land.lhs.true.837
  %641 = load i32, i32* %lambda_factor.addr, align 4
  %642 = load i16, i16* %center1_x, align 2
  %conv844 = sext i16 %642 to i32
  %643 = load i32, i32* %mvshift, align 4
  %shl845 = shl i32 %conv844, %643
  %644 = load i32, i32* %pred_x1, align 4
  %sub846 = sub nsw i32 %shl845, %644
  %idxprom847 = sext i32 %sub846 to i64
  %645 = load i32*, i32** @mvbits, align 8
  %arrayidx848 = getelementptr inbounds i32, i32* %645, i64 %idxprom847
  %646 = load i32, i32* %arrayidx848, align 4
  %647 = load i16, i16* %center1_y, align 2
  %conv849 = sext i16 %647 to i32
  %648 = load i32, i32* %mvshift, align 4
  %shl850 = shl i32 %conv849, %648
  %649 = load i32, i32* %pred_y1, align 4
  %sub851 = sub nsw i32 %shl850, %649
  %idxprom852 = sext i32 %sub851 to i64
  %650 = load i32*, i32** @mvbits, align 8
  %arrayidx853 = getelementptr inbounds i32, i32* %650, i64 %idxprom852
  %651 = load i32, i32* %arrayidx853, align 4
  %add854 = add nsw i32 %646, %651
  %mul855 = mul nsw i32 %641, %add854
  %shr856 = ashr i32 %mul855, 16
  store i32 %shr856, i32* %mcost, align 4
  %652 = load i32, i32* %lambda_factor.addr, align 4
  %653 = load i32, i32* %cand_x, align 4
  %654 = load i32, i32* %mvshift, align 4
  %shl857 = shl i32 %653, %654
  %655 = load i32, i32* %pred_x2, align 4
  %sub858 = sub nsw i32 %shl857, %655
  %idxprom859 = sext i32 %sub858 to i64
  %656 = load i32*, i32** @mvbits, align 8
  %arrayidx860 = getelementptr inbounds i32, i32* %656, i64 %idxprom859
  %657 = load i32, i32* %arrayidx860, align 4
  %658 = load i32, i32* %cand_y, align 4
  %659 = load i32, i32* %mvshift, align 4
  %shl861 = shl i32 %658, %659
  %660 = load i32, i32* %pred_y2, align 4
  %sub862 = sub nsw i32 %shl861, %660
  %idxprom863 = sext i32 %sub862 to i64
  %661 = load i32*, i32** @mvbits, align 8
  %arrayidx864 = getelementptr inbounds i32, i32* %661, i64 %idxprom863
  %662 = load i32, i32* %arrayidx864, align 4
  %add865 = add nsw i32 %657, %662
  %mul866 = mul nsw i32 %652, %add865
  %shr867 = ashr i32 %mul866, 16
  %663 = load i32, i32* %mcost, align 4
  %add868 = add nsw i32 %663, %shr867
  store i32 %add868, i32* %mcost, align 4
  %664 = load i32, i32* %mcost, align 4
  %665 = load i32, i32* %min_mcost.addr, align 4
  %cmp869 = icmp slt i32 %664, %665
  br i1 %cmp869, label %if.then.871, label %if.end.889

if.then.871:                                      ; preds = %if.then.843
  %666 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %667 = load i16*, i16** %cur_pic.addr, align 8
  %668 = load i32, i32* %blocksize_y, align 4
  %669 = load i32, i32* %blocksize_x, align 4
  %670 = load i32, i32* %min_mcost.addr, align 4
  %671 = load i32, i32* %mcost, align 4
  %sub872 = sub nsw i32 %670, %671
  %672 = load i16, i16* %center1_x, align 2
  %conv873 = sext i16 %672 to i32
  %shl874 = shl i32 %conv873, 2
  %add875 = add nsw i32 %shl874, 80
  %673 = load i16, i16* %center1_y, align 2
  %conv876 = sext i16 %673 to i32
  %shl877 = shl i32 %conv876, 2
  %add878 = add nsw i32 %shl877, 80
  %674 = load i32, i32* %cand_x, align 4
  %shl879 = shl i32 %674, 2
  %add880 = add nsw i32 %shl879, 80
  %675 = load i32, i32* %cand_y, align 4
  %shl881 = shl i32 %675, 2
  %add882 = add nsw i32 %shl881, 80
  %call883 = call i32 %666(i16* %667, i32 %668, i32 %669, i32 %sub872, i32 %add875, i32 %add878, i32 %add880, i32 %add882)
  %676 = load i32, i32* %mcost, align 4
  %add884 = add nsw i32 %676, %call883
  store i32 %add884, i32* %mcost, align 4
  %677 = load i32, i32* %mcost, align 4
  %678 = load i32, i32* %min_mcost.addr, align 4
  %cmp885 = icmp slt i32 %677, %678
  br i1 %cmp885, label %if.then.887, label %if.end.888

if.then.887:                                      ; preds = %if.then.871
  %679 = load i32, i32* %cand_x, align 4
  store i32 %679, i32* %best_x, align 4
  %680 = load i32, i32* %cand_y, align 4
  store i32 %680, i32* %best_y, align 4
  %681 = load i32, i32* %mcost, align 4
  store i32 %681, i32* %min_mcost.addr, align 4
  br label %if.end.888

if.end.888:                                       ; preds = %if.then.887, %if.then.871
  br label %if.end.889

if.end.889:                                       ; preds = %if.end.888, %if.then.843
  br label %if.end.890

if.end.890:                                       ; preds = %if.end.889, %land.lhs.true.837, %if.end.830
  %682 = load i32, i32* %iYMinNow, align 4
  %683 = load i32, i32* %search_step, align 4
  %sub891 = sub nsw i32 %682, %683
  store i32 %sub891, i32* %cand_y, align 4
  %684 = load i32, i32* %cand_x, align 4
  %685 = load i16, i16* %center2_x, align 2
  %conv892 = sext i16 %685 to i32
  %sub893 = sub nsw i32 %684, %conv892
  %call894 = call i32 @iabs(i32 %sub893)
  %686 = load i32, i32* %search_range.addr, align 4
  %cmp895 = icmp sle i32 %call894, %686
  br i1 %cmp895, label %land.lhs.true.897, label %if.end.950

land.lhs.true.897:                                ; preds = %if.end.890
  %687 = load i32, i32* %cand_y, align 4
  %688 = load i16, i16* %center2_y, align 2
  %conv898 = sext i16 %688 to i32
  %sub899 = sub nsw i32 %687, %conv898
  %call900 = call i32 @iabs(i32 %sub899)
  %689 = load i32, i32* %search_range.addr, align 4
  %cmp901 = icmp sle i32 %call900, %689
  br i1 %cmp901, label %if.then.903, label %if.end.950

if.then.903:                                      ; preds = %land.lhs.true.897
  %690 = load i32, i32* %lambda_factor.addr, align 4
  %691 = load i16, i16* %center1_x, align 2
  %conv904 = sext i16 %691 to i32
  %692 = load i32, i32* %mvshift, align 4
  %shl905 = shl i32 %conv904, %692
  %693 = load i32, i32* %pred_x1, align 4
  %sub906 = sub nsw i32 %shl905, %693
  %idxprom907 = sext i32 %sub906 to i64
  %694 = load i32*, i32** @mvbits, align 8
  %arrayidx908 = getelementptr inbounds i32, i32* %694, i64 %idxprom907
  %695 = load i32, i32* %arrayidx908, align 4
  %696 = load i16, i16* %center1_y, align 2
  %conv909 = sext i16 %696 to i32
  %697 = load i32, i32* %mvshift, align 4
  %shl910 = shl i32 %conv909, %697
  %698 = load i32, i32* %pred_y1, align 4
  %sub911 = sub nsw i32 %shl910, %698
  %idxprom912 = sext i32 %sub911 to i64
  %699 = load i32*, i32** @mvbits, align 8
  %arrayidx913 = getelementptr inbounds i32, i32* %699, i64 %idxprom912
  %700 = load i32, i32* %arrayidx913, align 4
  %add914 = add nsw i32 %695, %700
  %mul915 = mul nsw i32 %690, %add914
  %shr916 = ashr i32 %mul915, 16
  store i32 %shr916, i32* %mcost, align 4
  %701 = load i32, i32* %lambda_factor.addr, align 4
  %702 = load i32, i32* %cand_x, align 4
  %703 = load i32, i32* %mvshift, align 4
  %shl917 = shl i32 %702, %703
  %704 = load i32, i32* %pred_x2, align 4
  %sub918 = sub nsw i32 %shl917, %704
  %idxprom919 = sext i32 %sub918 to i64
  %705 = load i32*, i32** @mvbits, align 8
  %arrayidx920 = getelementptr inbounds i32, i32* %705, i64 %idxprom919
  %706 = load i32, i32* %arrayidx920, align 4
  %707 = load i32, i32* %cand_y, align 4
  %708 = load i32, i32* %mvshift, align 4
  %shl921 = shl i32 %707, %708
  %709 = load i32, i32* %pred_y2, align 4
  %sub922 = sub nsw i32 %shl921, %709
  %idxprom923 = sext i32 %sub922 to i64
  %710 = load i32*, i32** @mvbits, align 8
  %arrayidx924 = getelementptr inbounds i32, i32* %710, i64 %idxprom923
  %711 = load i32, i32* %arrayidx924, align 4
  %add925 = add nsw i32 %706, %711
  %mul926 = mul nsw i32 %701, %add925
  %shr927 = ashr i32 %mul926, 16
  %712 = load i32, i32* %mcost, align 4
  %add928 = add nsw i32 %712, %shr927
  store i32 %add928, i32* %mcost, align 4
  %713 = load i32, i32* %mcost, align 4
  %714 = load i32, i32* %min_mcost.addr, align 4
  %cmp929 = icmp slt i32 %713, %714
  br i1 %cmp929, label %if.then.931, label %if.end.949

if.then.931:                                      ; preds = %if.then.903
  %715 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %716 = load i16*, i16** %cur_pic.addr, align 8
  %717 = load i32, i32* %blocksize_y, align 4
  %718 = load i32, i32* %blocksize_x, align 4
  %719 = load i32, i32* %min_mcost.addr, align 4
  %720 = load i32, i32* %mcost, align 4
  %sub932 = sub nsw i32 %719, %720
  %721 = load i16, i16* %center1_x, align 2
  %conv933 = sext i16 %721 to i32
  %shl934 = shl i32 %conv933, 2
  %add935 = add nsw i32 %shl934, 80
  %722 = load i16, i16* %center1_y, align 2
  %conv936 = sext i16 %722 to i32
  %shl937 = shl i32 %conv936, 2
  %add938 = add nsw i32 %shl937, 80
  %723 = load i32, i32* %cand_x, align 4
  %shl939 = shl i32 %723, 2
  %add940 = add nsw i32 %shl939, 80
  %724 = load i32, i32* %cand_y, align 4
  %shl941 = shl i32 %724, 2
  %add942 = add nsw i32 %shl941, 80
  %call943 = call i32 %715(i16* %716, i32 %717, i32 %718, i32 %sub932, i32 %add935, i32 %add938, i32 %add940, i32 %add942)
  %725 = load i32, i32* %mcost, align 4
  %add944 = add nsw i32 %725, %call943
  store i32 %add944, i32* %mcost, align 4
  %726 = load i32, i32* %mcost, align 4
  %727 = load i32, i32* %min_mcost.addr, align 4
  %cmp945 = icmp slt i32 %726, %727
  br i1 %cmp945, label %if.then.947, label %if.end.948

if.then.947:                                      ; preds = %if.then.931
  %728 = load i32, i32* %cand_x, align 4
  store i32 %728, i32* %best_x, align 4
  %729 = load i32, i32* %cand_y, align 4
  store i32 %729, i32* %best_y, align 4
  %730 = load i32, i32* %mcost, align 4
  store i32 %730, i32* %min_mcost.addr, align 4
  br label %if.end.948

if.end.948:                                       ; preds = %if.then.947, %if.then.931
  br label %if.end.949

if.end.949:                                       ; preds = %if.end.948, %if.then.903
  br label %if.end.950

if.end.950:                                       ; preds = %if.end.949, %land.lhs.true.897, %if.end.890
  br label %for.inc.951

for.inc.951:                                      ; preds = %if.end.950
  %731 = load i32, i32* %i, align 4
  %inc952 = add nsw i32 %731, 1
  store i32 %inc952, i32* %i, align 4
  br label %for.cond.705

for.end.953:                                      ; preds = %for.cond.705
  %732 = load i32, i32* %best_x, align 4
  store i32 %732, i32* %iXMinNow, align 4
  %733 = load i32, i32* %best_y, align 4
  store i32 %733, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.954

for.cond.954:                                     ; preds = %for.inc.1025, %for.end.953
  %734 = load i32, i32* %m, align 4
  %cmp955 = icmp slt i32 %734, 6
  br i1 %cmp955, label %for.body.957, label %for.end.1027

for.body.957:                                     ; preds = %for.cond.954
  %735 = load i32, i32* %iXMinNow, align 4
  %736 = load i32, i32* %m, align 4
  %idxprom958 = sext i32 %736 to i64
  %arrayidx959 = getelementptr inbounds [6 x i16], [6 x i16]* @Hexagon_X, i32 0, i64 %idxprom958
  %737 = load i16, i16* %arrayidx959, align 2
  %conv960 = sext i16 %737 to i32
  %add961 = add nsw i32 %735, %conv960
  store i32 %add961, i32* %cand_x, align 4
  %738 = load i32, i32* %iYMinNow, align 4
  %739 = load i32, i32* %m, align 4
  %idxprom962 = sext i32 %739 to i64
  %arrayidx963 = getelementptr inbounds [6 x i16], [6 x i16]* @Hexagon_Y, i32 0, i64 %idxprom962
  %740 = load i16, i16* %arrayidx963, align 2
  %conv964 = sext i16 %740 to i32
  %add965 = add nsw i32 %738, %conv964
  store i32 %add965, i32* %cand_y, align 4
  %741 = load i32, i32* %cand_x, align 4
  %742 = load i16, i16* %center2_x, align 2
  %conv966 = sext i16 %742 to i32
  %sub967 = sub nsw i32 %741, %conv966
  %call968 = call i32 @iabs(i32 %sub967)
  %743 = load i32, i32* %search_range.addr, align 4
  %cmp969 = icmp sle i32 %call968, %743
  br i1 %cmp969, label %land.lhs.true.971, label %if.end.1024

land.lhs.true.971:                                ; preds = %for.body.957
  %744 = load i32, i32* %cand_y, align 4
  %745 = load i16, i16* %center2_y, align 2
  %conv972 = sext i16 %745 to i32
  %sub973 = sub nsw i32 %744, %conv972
  %call974 = call i32 @iabs(i32 %sub973)
  %746 = load i32, i32* %search_range.addr, align 4
  %cmp975 = icmp sle i32 %call974, %746
  br i1 %cmp975, label %if.then.977, label %if.end.1024

if.then.977:                                      ; preds = %land.lhs.true.971
  %747 = load i32, i32* %lambda_factor.addr, align 4
  %748 = load i16, i16* %center1_x, align 2
  %conv978 = sext i16 %748 to i32
  %749 = load i32, i32* %mvshift, align 4
  %shl979 = shl i32 %conv978, %749
  %750 = load i32, i32* %pred_x1, align 4
  %sub980 = sub nsw i32 %shl979, %750
  %idxprom981 = sext i32 %sub980 to i64
  %751 = load i32*, i32** @mvbits, align 8
  %arrayidx982 = getelementptr inbounds i32, i32* %751, i64 %idxprom981
  %752 = load i32, i32* %arrayidx982, align 4
  %753 = load i16, i16* %center1_y, align 2
  %conv983 = sext i16 %753 to i32
  %754 = load i32, i32* %mvshift, align 4
  %shl984 = shl i32 %conv983, %754
  %755 = load i32, i32* %pred_y1, align 4
  %sub985 = sub nsw i32 %shl984, %755
  %idxprom986 = sext i32 %sub985 to i64
  %756 = load i32*, i32** @mvbits, align 8
  %arrayidx987 = getelementptr inbounds i32, i32* %756, i64 %idxprom986
  %757 = load i32, i32* %arrayidx987, align 4
  %add988 = add nsw i32 %752, %757
  %mul989 = mul nsw i32 %747, %add988
  %shr990 = ashr i32 %mul989, 16
  store i32 %shr990, i32* %mcost, align 4
  %758 = load i32, i32* %lambda_factor.addr, align 4
  %759 = load i32, i32* %cand_x, align 4
  %760 = load i32, i32* %mvshift, align 4
  %shl991 = shl i32 %759, %760
  %761 = load i32, i32* %pred_x2, align 4
  %sub992 = sub nsw i32 %shl991, %761
  %idxprom993 = sext i32 %sub992 to i64
  %762 = load i32*, i32** @mvbits, align 8
  %arrayidx994 = getelementptr inbounds i32, i32* %762, i64 %idxprom993
  %763 = load i32, i32* %arrayidx994, align 4
  %764 = load i32, i32* %cand_y, align 4
  %765 = load i32, i32* %mvshift, align 4
  %shl995 = shl i32 %764, %765
  %766 = load i32, i32* %pred_y2, align 4
  %sub996 = sub nsw i32 %shl995, %766
  %idxprom997 = sext i32 %sub996 to i64
  %767 = load i32*, i32** @mvbits, align 8
  %arrayidx998 = getelementptr inbounds i32, i32* %767, i64 %idxprom997
  %768 = load i32, i32* %arrayidx998, align 4
  %add999 = add nsw i32 %763, %768
  %mul1000 = mul nsw i32 %758, %add999
  %shr1001 = ashr i32 %mul1000, 16
  %769 = load i32, i32* %mcost, align 4
  %add1002 = add nsw i32 %769, %shr1001
  store i32 %add1002, i32* %mcost, align 4
  %770 = load i32, i32* %mcost, align 4
  %771 = load i32, i32* %min_mcost.addr, align 4
  %cmp1003 = icmp slt i32 %770, %771
  br i1 %cmp1003, label %if.then.1005, label %if.end.1023

if.then.1005:                                     ; preds = %if.then.977
  %772 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %773 = load i16*, i16** %cur_pic.addr, align 8
  %774 = load i32, i32* %blocksize_y, align 4
  %775 = load i32, i32* %blocksize_x, align 4
  %776 = load i32, i32* %min_mcost.addr, align 4
  %777 = load i32, i32* %mcost, align 4
  %sub1006 = sub nsw i32 %776, %777
  %778 = load i16, i16* %center1_x, align 2
  %conv1007 = sext i16 %778 to i32
  %shl1008 = shl i32 %conv1007, 2
  %add1009 = add nsw i32 %shl1008, 80
  %779 = load i16, i16* %center1_y, align 2
  %conv1010 = sext i16 %779 to i32
  %shl1011 = shl i32 %conv1010, 2
  %add1012 = add nsw i32 %shl1011, 80
  %780 = load i32, i32* %cand_x, align 4
  %shl1013 = shl i32 %780, 2
  %add1014 = add nsw i32 %shl1013, 80
  %781 = load i32, i32* %cand_y, align 4
  %shl1015 = shl i32 %781, 2
  %add1016 = add nsw i32 %shl1015, 80
  %call1017 = call i32 %772(i16* %773, i32 %774, i32 %775, i32 %sub1006, i32 %add1009, i32 %add1012, i32 %add1014, i32 %add1016)
  %782 = load i32, i32* %mcost, align 4
  %add1018 = add nsw i32 %782, %call1017
  store i32 %add1018, i32* %mcost, align 4
  %783 = load i32, i32* %mcost, align 4
  %784 = load i32, i32* %min_mcost.addr, align 4
  %cmp1019 = icmp slt i32 %783, %784
  br i1 %cmp1019, label %if.then.1021, label %if.end.1022

if.then.1021:                                     ; preds = %if.then.1005
  %785 = load i32, i32* %cand_x, align 4
  store i32 %785, i32* %best_x, align 4
  %786 = load i32, i32* %cand_y, align 4
  store i32 %786, i32* %best_y, align 4
  %787 = load i32, i32* %mcost, align 4
  store i32 %787, i32* %min_mcost.addr, align 4
  br label %if.end.1022

if.end.1022:                                      ; preds = %if.then.1021, %if.then.1005
  br label %if.end.1023

if.end.1023:                                      ; preds = %if.end.1022, %if.then.977
  br label %if.end.1024

if.end.1024:                                      ; preds = %if.end.1023, %land.lhs.true.971, %for.body.957
  br label %for.inc.1025

for.inc.1025:                                     ; preds = %if.end.1024
  %788 = load i32, i32* %m, align 4
  %inc1026 = add nsw i32 %788, 1
  store i32 %inc1026, i32* %m, align 4
  br label %for.cond.954

for.end.1027:                                     ; preds = %for.cond.954
  %789 = load i32, i32* %best_x, align 4
  store i32 %789, i32* %iXMinNow, align 4
  %790 = load i32, i32* %best_y, align 4
  store i32 %790, i32* %iYMinNow, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.1028

for.cond.1028:                                    ; preds = %for.inc.1109, %for.end.1027
  %791 = load i32, i32* %i, align 4
  %792 = load i32, i32* %search_range.addr, align 4
  %div1029 = sdiv i32 %792, 4
  %cmp1030 = icmp sle i32 %791, %div1029
  br i1 %cmp1030, label %for.body.1032, label %for.end.1111

for.body.1032:                                    ; preds = %for.cond.1028
  store i32 0, i32* %m, align 4
  br label %for.cond.1033

for.cond.1033:                                    ; preds = %for.inc.1106, %for.body.1032
  %793 = load i32, i32* %m, align 4
  %cmp1034 = icmp slt i32 %793, 16
  br i1 %cmp1034, label %for.body.1036, label %for.end.1108

for.body.1036:                                    ; preds = %for.cond.1033
  %794 = load i32, i32* %iXMinNow, align 4
  %795 = load i32, i32* %m, align 4
  %idxprom1037 = sext i32 %795 to i64
  %arrayidx1038 = getelementptr inbounds [16 x i16], [16 x i16]* @Big_Hexagon_X, i32 0, i64 %idxprom1037
  %796 = load i16, i16* %arrayidx1038, align 2
  %conv1039 = sext i16 %796 to i32
  %797 = load i32, i32* %i, align 4
  %mul1040 = mul nsw i32 %conv1039, %797
  %add1041 = add nsw i32 %794, %mul1040
  store i32 %add1041, i32* %cand_x, align 4
  %798 = load i32, i32* %iYMinNow, align 4
  %799 = load i32, i32* %m, align 4
  %idxprom1042 = sext i32 %799 to i64
  %arrayidx1043 = getelementptr inbounds [16 x i16], [16 x i16]* @Big_Hexagon_Y, i32 0, i64 %idxprom1042
  %800 = load i16, i16* %arrayidx1043, align 2
  %conv1044 = sext i16 %800 to i32
  %801 = load i32, i32* %i, align 4
  %mul1045 = mul nsw i32 %conv1044, %801
  %add1046 = add nsw i32 %798, %mul1045
  store i32 %add1046, i32* %cand_y, align 4
  %802 = load i32, i32* %cand_x, align 4
  %803 = load i16, i16* %center2_x, align 2
  %conv1047 = sext i16 %803 to i32
  %sub1048 = sub nsw i32 %802, %conv1047
  %call1049 = call i32 @iabs(i32 %sub1048)
  %804 = load i32, i32* %search_range.addr, align 4
  %cmp1050 = icmp sle i32 %call1049, %804
  br i1 %cmp1050, label %land.lhs.true.1052, label %if.end.1105

land.lhs.true.1052:                               ; preds = %for.body.1036
  %805 = load i32, i32* %cand_y, align 4
  %806 = load i16, i16* %center2_y, align 2
  %conv1053 = sext i16 %806 to i32
  %sub1054 = sub nsw i32 %805, %conv1053
  %call1055 = call i32 @iabs(i32 %sub1054)
  %807 = load i32, i32* %search_range.addr, align 4
  %cmp1056 = icmp sle i32 %call1055, %807
  br i1 %cmp1056, label %if.then.1058, label %if.end.1105

if.then.1058:                                     ; preds = %land.lhs.true.1052
  %808 = load i32, i32* %lambda_factor.addr, align 4
  %809 = load i16, i16* %center1_x, align 2
  %conv1059 = sext i16 %809 to i32
  %810 = load i32, i32* %mvshift, align 4
  %shl1060 = shl i32 %conv1059, %810
  %811 = load i32, i32* %pred_x1, align 4
  %sub1061 = sub nsw i32 %shl1060, %811
  %idxprom1062 = sext i32 %sub1061 to i64
  %812 = load i32*, i32** @mvbits, align 8
  %arrayidx1063 = getelementptr inbounds i32, i32* %812, i64 %idxprom1062
  %813 = load i32, i32* %arrayidx1063, align 4
  %814 = load i16, i16* %center1_y, align 2
  %conv1064 = sext i16 %814 to i32
  %815 = load i32, i32* %mvshift, align 4
  %shl1065 = shl i32 %conv1064, %815
  %816 = load i32, i32* %pred_y1, align 4
  %sub1066 = sub nsw i32 %shl1065, %816
  %idxprom1067 = sext i32 %sub1066 to i64
  %817 = load i32*, i32** @mvbits, align 8
  %arrayidx1068 = getelementptr inbounds i32, i32* %817, i64 %idxprom1067
  %818 = load i32, i32* %arrayidx1068, align 4
  %add1069 = add nsw i32 %813, %818
  %mul1070 = mul nsw i32 %808, %add1069
  %shr1071 = ashr i32 %mul1070, 16
  store i32 %shr1071, i32* %mcost, align 4
  %819 = load i32, i32* %lambda_factor.addr, align 4
  %820 = load i32, i32* %cand_x, align 4
  %821 = load i32, i32* %mvshift, align 4
  %shl1072 = shl i32 %820, %821
  %822 = load i32, i32* %pred_x2, align 4
  %sub1073 = sub nsw i32 %shl1072, %822
  %idxprom1074 = sext i32 %sub1073 to i64
  %823 = load i32*, i32** @mvbits, align 8
  %arrayidx1075 = getelementptr inbounds i32, i32* %823, i64 %idxprom1074
  %824 = load i32, i32* %arrayidx1075, align 4
  %825 = load i32, i32* %cand_y, align 4
  %826 = load i32, i32* %mvshift, align 4
  %shl1076 = shl i32 %825, %826
  %827 = load i32, i32* %pred_y2, align 4
  %sub1077 = sub nsw i32 %shl1076, %827
  %idxprom1078 = sext i32 %sub1077 to i64
  %828 = load i32*, i32** @mvbits, align 8
  %arrayidx1079 = getelementptr inbounds i32, i32* %828, i64 %idxprom1078
  %829 = load i32, i32* %arrayidx1079, align 4
  %add1080 = add nsw i32 %824, %829
  %mul1081 = mul nsw i32 %819, %add1080
  %shr1082 = ashr i32 %mul1081, 16
  %830 = load i32, i32* %mcost, align 4
  %add1083 = add nsw i32 %830, %shr1082
  store i32 %add1083, i32* %mcost, align 4
  %831 = load i32, i32* %mcost, align 4
  %832 = load i32, i32* %min_mcost.addr, align 4
  %cmp1084 = icmp slt i32 %831, %832
  br i1 %cmp1084, label %if.then.1086, label %if.end.1104

if.then.1086:                                     ; preds = %if.then.1058
  %833 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %834 = load i16*, i16** %cur_pic.addr, align 8
  %835 = load i32, i32* %blocksize_y, align 4
  %836 = load i32, i32* %blocksize_x, align 4
  %837 = load i32, i32* %min_mcost.addr, align 4
  %838 = load i32, i32* %mcost, align 4
  %sub1087 = sub nsw i32 %837, %838
  %839 = load i16, i16* %center1_x, align 2
  %conv1088 = sext i16 %839 to i32
  %shl1089 = shl i32 %conv1088, 2
  %add1090 = add nsw i32 %shl1089, 80
  %840 = load i16, i16* %center1_y, align 2
  %conv1091 = sext i16 %840 to i32
  %shl1092 = shl i32 %conv1091, 2
  %add1093 = add nsw i32 %shl1092, 80
  %841 = load i32, i32* %cand_x, align 4
  %shl1094 = shl i32 %841, 2
  %add1095 = add nsw i32 %shl1094, 80
  %842 = load i32, i32* %cand_y, align 4
  %shl1096 = shl i32 %842, 2
  %add1097 = add nsw i32 %shl1096, 80
  %call1098 = call i32 %833(i16* %834, i32 %835, i32 %836, i32 %sub1087, i32 %add1090, i32 %add1093, i32 %add1095, i32 %add1097)
  %843 = load i32, i32* %mcost, align 4
  %add1099 = add nsw i32 %843, %call1098
  store i32 %add1099, i32* %mcost, align 4
  %844 = load i32, i32* %mcost, align 4
  %845 = load i32, i32* %min_mcost.addr, align 4
  %cmp1100 = icmp slt i32 %844, %845
  br i1 %cmp1100, label %if.then.1102, label %if.end.1103

if.then.1102:                                     ; preds = %if.then.1086
  %846 = load i32, i32* %cand_x, align 4
  store i32 %846, i32* %best_x, align 4
  %847 = load i32, i32* %cand_y, align 4
  store i32 %847, i32* %best_y, align 4
  %848 = load i32, i32* %mcost, align 4
  store i32 %848, i32* %min_mcost.addr, align 4
  br label %if.end.1103

if.end.1103:                                      ; preds = %if.then.1102, %if.then.1086
  br label %if.end.1104

if.end.1104:                                      ; preds = %if.end.1103, %if.then.1058
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.end.1104, %land.lhs.true.1052, %for.body.1036
  br label %for.inc.1106

for.inc.1106:                                     ; preds = %if.end.1105
  %849 = load i32, i32* %m, align 4
  %inc1107 = add nsw i32 %849, 1
  store i32 %inc1107, i32* %m, align 4
  br label %for.cond.1033

for.end.1108:                                     ; preds = %for.cond.1033
  br label %for.inc.1109

for.inc.1109:                                     ; preds = %for.end.1108
  %850 = load i32, i32* %i, align 4
  %inc1110 = add nsw i32 %850, 1
  store i32 %inc1110, i32* %i, align 4
  br label %for.cond.1028

for.end.1111:                                     ; preds = %for.cond.1028
  br label %if.end.1112

if.end.1112:                                      ; preds = %for.end.1111, %lor.lhs.false.695
  %851 = load i32, i32* %blocktype.addr, align 4
  %cmp1113 = icmp sgt i32 %851, 1
  br i1 %cmp1113, label %if.then.1115, label %if.end.1181

if.then.1115:                                     ; preds = %if.end.1112
  %852 = load i32, i32* %pic_pix_x.addr, align 4
  %853 = load i16, i16* @smpUMHEX_pred_MV_uplayer_X, align 2
  %conv1116 = sext i16 %853 to i32
  %div1117 = sdiv i32 %conv1116, 4
  %add1118 = add nsw i32 %852, %div1117
  store i32 %add1118, i32* %cand_x, align 4
  %854 = load i32, i32* %pic_pix_y.addr, align 4
  %855 = load i16, i16* @smpUMHEX_pred_MV_uplayer_Y, align 2
  %conv1119 = sext i16 %855 to i32
  %div1120 = sdiv i32 %conv1119, 4
  %add1121 = add nsw i32 %854, %div1120
  store i32 %add1121, i32* %cand_y, align 4
  %856 = load i32, i32* %cand_x, align 4
  %857 = load i16, i16* %center2_x, align 2
  %conv1122 = sext i16 %857 to i32
  %sub1123 = sub nsw i32 %856, %conv1122
  %call1124 = call i32 @iabs(i32 %sub1123)
  %858 = load i32, i32* %search_range.addr, align 4
  %cmp1125 = icmp sle i32 %call1124, %858
  br i1 %cmp1125, label %land.lhs.true.1127, label %if.end.1180

land.lhs.true.1127:                               ; preds = %if.then.1115
  %859 = load i32, i32* %cand_y, align 4
  %860 = load i16, i16* %center2_y, align 2
  %conv1128 = sext i16 %860 to i32
  %sub1129 = sub nsw i32 %859, %conv1128
  %call1130 = call i32 @iabs(i32 %sub1129)
  %861 = load i32, i32* %search_range.addr, align 4
  %cmp1131 = icmp sle i32 %call1130, %861
  br i1 %cmp1131, label %if.then.1133, label %if.end.1180

if.then.1133:                                     ; preds = %land.lhs.true.1127
  %862 = load i32, i32* %lambda_factor.addr, align 4
  %863 = load i16, i16* %center1_x, align 2
  %conv1134 = sext i16 %863 to i32
  %864 = load i32, i32* %mvshift, align 4
  %shl1135 = shl i32 %conv1134, %864
  %865 = load i32, i32* %pred_x1, align 4
  %sub1136 = sub nsw i32 %shl1135, %865
  %idxprom1137 = sext i32 %sub1136 to i64
  %866 = load i32*, i32** @mvbits, align 8
  %arrayidx1138 = getelementptr inbounds i32, i32* %866, i64 %idxprom1137
  %867 = load i32, i32* %arrayidx1138, align 4
  %868 = load i16, i16* %center1_y, align 2
  %conv1139 = sext i16 %868 to i32
  %869 = load i32, i32* %mvshift, align 4
  %shl1140 = shl i32 %conv1139, %869
  %870 = load i32, i32* %pred_y1, align 4
  %sub1141 = sub nsw i32 %shl1140, %870
  %idxprom1142 = sext i32 %sub1141 to i64
  %871 = load i32*, i32** @mvbits, align 8
  %arrayidx1143 = getelementptr inbounds i32, i32* %871, i64 %idxprom1142
  %872 = load i32, i32* %arrayidx1143, align 4
  %add1144 = add nsw i32 %867, %872
  %mul1145 = mul nsw i32 %862, %add1144
  %shr1146 = ashr i32 %mul1145, 16
  store i32 %shr1146, i32* %mcost, align 4
  %873 = load i32, i32* %lambda_factor.addr, align 4
  %874 = load i32, i32* %cand_x, align 4
  %875 = load i32, i32* %mvshift, align 4
  %shl1147 = shl i32 %874, %875
  %876 = load i32, i32* %pred_x2, align 4
  %sub1148 = sub nsw i32 %shl1147, %876
  %idxprom1149 = sext i32 %sub1148 to i64
  %877 = load i32*, i32** @mvbits, align 8
  %arrayidx1150 = getelementptr inbounds i32, i32* %877, i64 %idxprom1149
  %878 = load i32, i32* %arrayidx1150, align 4
  %879 = load i32, i32* %cand_y, align 4
  %880 = load i32, i32* %mvshift, align 4
  %shl1151 = shl i32 %879, %880
  %881 = load i32, i32* %pred_y2, align 4
  %sub1152 = sub nsw i32 %shl1151, %881
  %idxprom1153 = sext i32 %sub1152 to i64
  %882 = load i32*, i32** @mvbits, align 8
  %arrayidx1154 = getelementptr inbounds i32, i32* %882, i64 %idxprom1153
  %883 = load i32, i32* %arrayidx1154, align 4
  %add1155 = add nsw i32 %878, %883
  %mul1156 = mul nsw i32 %873, %add1155
  %shr1157 = ashr i32 %mul1156, 16
  %884 = load i32, i32* %mcost, align 4
  %add1158 = add nsw i32 %884, %shr1157
  store i32 %add1158, i32* %mcost, align 4
  %885 = load i32, i32* %mcost, align 4
  %886 = load i32, i32* %min_mcost.addr, align 4
  %cmp1159 = icmp slt i32 %885, %886
  br i1 %cmp1159, label %if.then.1161, label %if.end.1179

if.then.1161:                                     ; preds = %if.then.1133
  %887 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %888 = load i16*, i16** %cur_pic.addr, align 8
  %889 = load i32, i32* %blocksize_y, align 4
  %890 = load i32, i32* %blocksize_x, align 4
  %891 = load i32, i32* %min_mcost.addr, align 4
  %892 = load i32, i32* %mcost, align 4
  %sub1162 = sub nsw i32 %891, %892
  %893 = load i16, i16* %center1_x, align 2
  %conv1163 = sext i16 %893 to i32
  %shl1164 = shl i32 %conv1163, 2
  %add1165 = add nsw i32 %shl1164, 80
  %894 = load i16, i16* %center1_y, align 2
  %conv1166 = sext i16 %894 to i32
  %shl1167 = shl i32 %conv1166, 2
  %add1168 = add nsw i32 %shl1167, 80
  %895 = load i32, i32* %cand_x, align 4
  %shl1169 = shl i32 %895, 2
  %add1170 = add nsw i32 %shl1169, 80
  %896 = load i32, i32* %cand_y, align 4
  %shl1171 = shl i32 %896, 2
  %add1172 = add nsw i32 %shl1171, 80
  %call1173 = call i32 %887(i16* %888, i32 %889, i32 %890, i32 %sub1162, i32 %add1165, i32 %add1168, i32 %add1170, i32 %add1172)
  %897 = load i32, i32* %mcost, align 4
  %add1174 = add nsw i32 %897, %call1173
  store i32 %add1174, i32* %mcost, align 4
  %898 = load i32, i32* %mcost, align 4
  %899 = load i32, i32* %min_mcost.addr, align 4
  %cmp1175 = icmp slt i32 %898, %899
  br i1 %cmp1175, label %if.then.1177, label %if.end.1178

if.then.1177:                                     ; preds = %if.then.1161
  %900 = load i32, i32* %cand_x, align 4
  store i32 %900, i32* %best_x, align 4
  %901 = load i32, i32* %cand_y, align 4
  store i32 %901, i32* %best_y, align 4
  %902 = load i32, i32* %mcost, align 4
  store i32 %902, i32* %min_mcost.addr, align 4
  br label %if.end.1178

if.end.1178:                                      ; preds = %if.then.1177, %if.then.1161
  br label %if.end.1179

if.end.1179:                                      ; preds = %if.end.1178, %if.then.1133
  br label %if.end.1180

if.end.1180:                                      ; preds = %if.end.1179, %land.lhs.true.1127, %if.then.1115
  br label %if.end.1181

if.end.1181:                                      ; preds = %if.end.1180, %if.end.1112
  %903 = load i16, i16* %center2_x, align 2
  %conv1182 = sext i16 %903 to i32
  %904 = load i32, i32* %pic_pix_x.addr, align 4
  %cmp1183 = icmp ne i32 %conv1182, %904
  br i1 %cmp1183, label %if.then.1189, label %lor.lhs.false.1185

lor.lhs.false.1185:                               ; preds = %if.end.1181
  %905 = load i16, i16* %center2_y, align 2
  %conv1186 = sext i16 %905 to i32
  %906 = load i32, i32* %pic_pix_y.addr, align 4
  %cmp1187 = icmp ne i32 %conv1186, %906
  br i1 %cmp1187, label %if.then.1189, label %if.end.1323

if.then.1189:                                     ; preds = %lor.lhs.false.1185, %if.end.1181
  %907 = load i32, i32* %pic_pix_x.addr, align 4
  store i32 %907, i32* %cand_x, align 4
  %908 = load i32, i32* %pic_pix_y.addr, align 4
  store i32 %908, i32* %cand_y, align 4
  %909 = load i32, i32* %cand_x, align 4
  %910 = load i16, i16* %center2_x, align 2
  %conv1190 = sext i16 %910 to i32
  %sub1191 = sub nsw i32 %909, %conv1190
  %call1192 = call i32 @iabs(i32 %sub1191)
  %911 = load i32, i32* %search_range.addr, align 4
  %cmp1193 = icmp sle i32 %call1192, %911
  br i1 %cmp1193, label %land.lhs.true.1195, label %if.end.1248

land.lhs.true.1195:                               ; preds = %if.then.1189
  %912 = load i32, i32* %cand_y, align 4
  %913 = load i16, i16* %center2_y, align 2
  %conv1196 = sext i16 %913 to i32
  %sub1197 = sub nsw i32 %912, %conv1196
  %call1198 = call i32 @iabs(i32 %sub1197)
  %914 = load i32, i32* %search_range.addr, align 4
  %cmp1199 = icmp sle i32 %call1198, %914
  br i1 %cmp1199, label %if.then.1201, label %if.end.1248

if.then.1201:                                     ; preds = %land.lhs.true.1195
  %915 = load i32, i32* %lambda_factor.addr, align 4
  %916 = load i16, i16* %center1_x, align 2
  %conv1202 = sext i16 %916 to i32
  %917 = load i32, i32* %mvshift, align 4
  %shl1203 = shl i32 %conv1202, %917
  %918 = load i32, i32* %pred_x1, align 4
  %sub1204 = sub nsw i32 %shl1203, %918
  %idxprom1205 = sext i32 %sub1204 to i64
  %919 = load i32*, i32** @mvbits, align 8
  %arrayidx1206 = getelementptr inbounds i32, i32* %919, i64 %idxprom1205
  %920 = load i32, i32* %arrayidx1206, align 4
  %921 = load i16, i16* %center1_y, align 2
  %conv1207 = sext i16 %921 to i32
  %922 = load i32, i32* %mvshift, align 4
  %shl1208 = shl i32 %conv1207, %922
  %923 = load i32, i32* %pred_y1, align 4
  %sub1209 = sub nsw i32 %shl1208, %923
  %idxprom1210 = sext i32 %sub1209 to i64
  %924 = load i32*, i32** @mvbits, align 8
  %arrayidx1211 = getelementptr inbounds i32, i32* %924, i64 %idxprom1210
  %925 = load i32, i32* %arrayidx1211, align 4
  %add1212 = add nsw i32 %920, %925
  %mul1213 = mul nsw i32 %915, %add1212
  %shr1214 = ashr i32 %mul1213, 16
  store i32 %shr1214, i32* %mcost, align 4
  %926 = load i32, i32* %lambda_factor.addr, align 4
  %927 = load i32, i32* %cand_x, align 4
  %928 = load i32, i32* %mvshift, align 4
  %shl1215 = shl i32 %927, %928
  %929 = load i32, i32* %pred_x2, align 4
  %sub1216 = sub nsw i32 %shl1215, %929
  %idxprom1217 = sext i32 %sub1216 to i64
  %930 = load i32*, i32** @mvbits, align 8
  %arrayidx1218 = getelementptr inbounds i32, i32* %930, i64 %idxprom1217
  %931 = load i32, i32* %arrayidx1218, align 4
  %932 = load i32, i32* %cand_y, align 4
  %933 = load i32, i32* %mvshift, align 4
  %shl1219 = shl i32 %932, %933
  %934 = load i32, i32* %pred_y2, align 4
  %sub1220 = sub nsw i32 %shl1219, %934
  %idxprom1221 = sext i32 %sub1220 to i64
  %935 = load i32*, i32** @mvbits, align 8
  %arrayidx1222 = getelementptr inbounds i32, i32* %935, i64 %idxprom1221
  %936 = load i32, i32* %arrayidx1222, align 4
  %add1223 = add nsw i32 %931, %936
  %mul1224 = mul nsw i32 %926, %add1223
  %shr1225 = ashr i32 %mul1224, 16
  %937 = load i32, i32* %mcost, align 4
  %add1226 = add nsw i32 %937, %shr1225
  store i32 %add1226, i32* %mcost, align 4
  %938 = load i32, i32* %mcost, align 4
  %939 = load i32, i32* %min_mcost.addr, align 4
  %cmp1227 = icmp slt i32 %938, %939
  br i1 %cmp1227, label %if.then.1229, label %if.end.1247

if.then.1229:                                     ; preds = %if.then.1201
  %940 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %941 = load i16*, i16** %cur_pic.addr, align 8
  %942 = load i32, i32* %blocksize_y, align 4
  %943 = load i32, i32* %blocksize_x, align 4
  %944 = load i32, i32* %min_mcost.addr, align 4
  %945 = load i32, i32* %mcost, align 4
  %sub1230 = sub nsw i32 %944, %945
  %946 = load i16, i16* %center1_x, align 2
  %conv1231 = sext i16 %946 to i32
  %shl1232 = shl i32 %conv1231, 2
  %add1233 = add nsw i32 %shl1232, 80
  %947 = load i16, i16* %center1_y, align 2
  %conv1234 = sext i16 %947 to i32
  %shl1235 = shl i32 %conv1234, 2
  %add1236 = add nsw i32 %shl1235, 80
  %948 = load i32, i32* %cand_x, align 4
  %shl1237 = shl i32 %948, 2
  %add1238 = add nsw i32 %shl1237, 80
  %949 = load i32, i32* %cand_y, align 4
  %shl1239 = shl i32 %949, 2
  %add1240 = add nsw i32 %shl1239, 80
  %call1241 = call i32 %940(i16* %941, i32 %942, i32 %943, i32 %sub1230, i32 %add1233, i32 %add1236, i32 %add1238, i32 %add1240)
  %950 = load i32, i32* %mcost, align 4
  %add1242 = add nsw i32 %950, %call1241
  store i32 %add1242, i32* %mcost, align 4
  %951 = load i32, i32* %mcost, align 4
  %952 = load i32, i32* %min_mcost.addr, align 4
  %cmp1243 = icmp slt i32 %951, %952
  br i1 %cmp1243, label %if.then.1245, label %if.end.1246

if.then.1245:                                     ; preds = %if.then.1229
  %953 = load i32, i32* %cand_x, align 4
  store i32 %953, i32* %best_x, align 4
  %954 = load i32, i32* %cand_y, align 4
  store i32 %954, i32* %best_y, align 4
  %955 = load i32, i32* %mcost, align 4
  store i32 %955, i32* %min_mcost.addr, align 4
  br label %if.end.1246

if.end.1246:                                      ; preds = %if.then.1245, %if.then.1229
  br label %if.end.1247

if.end.1247:                                      ; preds = %if.end.1246, %if.then.1201
  br label %if.end.1248

if.end.1248:                                      ; preds = %if.end.1247, %land.lhs.true.1195, %if.then.1189
  %956 = load i32, i32* %best_x, align 4
  store i32 %956, i32* %iXMinNow, align 4
  %957 = load i32, i32* %best_y, align 4
  store i32 %957, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1249

for.cond.1249:                                    ; preds = %for.inc.1320, %if.end.1248
  %958 = load i32, i32* %m, align 4
  %cmp1250 = icmp slt i32 %958, 4
  br i1 %cmp1250, label %for.body.1252, label %for.end.1322

for.body.1252:                                    ; preds = %for.cond.1249
  %959 = load i32, i32* %iXMinNow, align 4
  %960 = load i32, i32* %m, align 4
  %idxprom1253 = sext i32 %960 to i64
  %arrayidx1254 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom1253
  %961 = load i16, i16* %arrayidx1254, align 2
  %conv1255 = sext i16 %961 to i32
  %add1256 = add nsw i32 %959, %conv1255
  store i32 %add1256, i32* %cand_x, align 4
  %962 = load i32, i32* %iYMinNow, align 4
  %963 = load i32, i32* %m, align 4
  %idxprom1257 = sext i32 %963 to i64
  %arrayidx1258 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom1257
  %964 = load i16, i16* %arrayidx1258, align 2
  %conv1259 = sext i16 %964 to i32
  %add1260 = add nsw i32 %962, %conv1259
  store i32 %add1260, i32* %cand_y, align 4
  %965 = load i32, i32* %cand_x, align 4
  %966 = load i16, i16* %center2_x, align 2
  %conv1261 = sext i16 %966 to i32
  %sub1262 = sub nsw i32 %965, %conv1261
  %call1263 = call i32 @iabs(i32 %sub1262)
  %967 = load i32, i32* %search_range.addr, align 4
  %cmp1264 = icmp sle i32 %call1263, %967
  br i1 %cmp1264, label %land.lhs.true.1266, label %if.end.1319

land.lhs.true.1266:                               ; preds = %for.body.1252
  %968 = load i32, i32* %cand_y, align 4
  %969 = load i16, i16* %center2_y, align 2
  %conv1267 = sext i16 %969 to i32
  %sub1268 = sub nsw i32 %968, %conv1267
  %call1269 = call i32 @iabs(i32 %sub1268)
  %970 = load i32, i32* %search_range.addr, align 4
  %cmp1270 = icmp sle i32 %call1269, %970
  br i1 %cmp1270, label %if.then.1272, label %if.end.1319

if.then.1272:                                     ; preds = %land.lhs.true.1266
  %971 = load i32, i32* %lambda_factor.addr, align 4
  %972 = load i16, i16* %center1_x, align 2
  %conv1273 = sext i16 %972 to i32
  %973 = load i32, i32* %mvshift, align 4
  %shl1274 = shl i32 %conv1273, %973
  %974 = load i32, i32* %pred_x1, align 4
  %sub1275 = sub nsw i32 %shl1274, %974
  %idxprom1276 = sext i32 %sub1275 to i64
  %975 = load i32*, i32** @mvbits, align 8
  %arrayidx1277 = getelementptr inbounds i32, i32* %975, i64 %idxprom1276
  %976 = load i32, i32* %arrayidx1277, align 4
  %977 = load i16, i16* %center1_y, align 2
  %conv1278 = sext i16 %977 to i32
  %978 = load i32, i32* %mvshift, align 4
  %shl1279 = shl i32 %conv1278, %978
  %979 = load i32, i32* %pred_y1, align 4
  %sub1280 = sub nsw i32 %shl1279, %979
  %idxprom1281 = sext i32 %sub1280 to i64
  %980 = load i32*, i32** @mvbits, align 8
  %arrayidx1282 = getelementptr inbounds i32, i32* %980, i64 %idxprom1281
  %981 = load i32, i32* %arrayidx1282, align 4
  %add1283 = add nsw i32 %976, %981
  %mul1284 = mul nsw i32 %971, %add1283
  %shr1285 = ashr i32 %mul1284, 16
  store i32 %shr1285, i32* %mcost, align 4
  %982 = load i32, i32* %lambda_factor.addr, align 4
  %983 = load i32, i32* %cand_x, align 4
  %984 = load i32, i32* %mvshift, align 4
  %shl1286 = shl i32 %983, %984
  %985 = load i32, i32* %pred_x2, align 4
  %sub1287 = sub nsw i32 %shl1286, %985
  %idxprom1288 = sext i32 %sub1287 to i64
  %986 = load i32*, i32** @mvbits, align 8
  %arrayidx1289 = getelementptr inbounds i32, i32* %986, i64 %idxprom1288
  %987 = load i32, i32* %arrayidx1289, align 4
  %988 = load i32, i32* %cand_y, align 4
  %989 = load i32, i32* %mvshift, align 4
  %shl1290 = shl i32 %988, %989
  %990 = load i32, i32* %pred_y2, align 4
  %sub1291 = sub nsw i32 %shl1290, %990
  %idxprom1292 = sext i32 %sub1291 to i64
  %991 = load i32*, i32** @mvbits, align 8
  %arrayidx1293 = getelementptr inbounds i32, i32* %991, i64 %idxprom1292
  %992 = load i32, i32* %arrayidx1293, align 4
  %add1294 = add nsw i32 %987, %992
  %mul1295 = mul nsw i32 %982, %add1294
  %shr1296 = ashr i32 %mul1295, 16
  %993 = load i32, i32* %mcost, align 4
  %add1297 = add nsw i32 %993, %shr1296
  store i32 %add1297, i32* %mcost, align 4
  %994 = load i32, i32* %mcost, align 4
  %995 = load i32, i32* %min_mcost.addr, align 4
  %cmp1298 = icmp slt i32 %994, %995
  br i1 %cmp1298, label %if.then.1300, label %if.end.1318

if.then.1300:                                     ; preds = %if.then.1272
  %996 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %997 = load i16*, i16** %cur_pic.addr, align 8
  %998 = load i32, i32* %blocksize_y, align 4
  %999 = load i32, i32* %blocksize_x, align 4
  %1000 = load i32, i32* %min_mcost.addr, align 4
  %1001 = load i32, i32* %mcost, align 4
  %sub1301 = sub nsw i32 %1000, %1001
  %1002 = load i16, i16* %center1_x, align 2
  %conv1302 = sext i16 %1002 to i32
  %shl1303 = shl i32 %conv1302, 2
  %add1304 = add nsw i32 %shl1303, 80
  %1003 = load i16, i16* %center1_y, align 2
  %conv1305 = sext i16 %1003 to i32
  %shl1306 = shl i32 %conv1305, 2
  %add1307 = add nsw i32 %shl1306, 80
  %1004 = load i32, i32* %cand_x, align 4
  %shl1308 = shl i32 %1004, 2
  %add1309 = add nsw i32 %shl1308, 80
  %1005 = load i32, i32* %cand_y, align 4
  %shl1310 = shl i32 %1005, 2
  %add1311 = add nsw i32 %shl1310, 80
  %call1312 = call i32 %996(i16* %997, i32 %998, i32 %999, i32 %sub1301, i32 %add1304, i32 %add1307, i32 %add1309, i32 %add1311)
  %1006 = load i32, i32* %mcost, align 4
  %add1313 = add nsw i32 %1006, %call1312
  store i32 %add1313, i32* %mcost, align 4
  %1007 = load i32, i32* %mcost, align 4
  %1008 = load i32, i32* %min_mcost.addr, align 4
  %cmp1314 = icmp slt i32 %1007, %1008
  br i1 %cmp1314, label %if.then.1316, label %if.end.1317

if.then.1316:                                     ; preds = %if.then.1300
  %1009 = load i32, i32* %cand_x, align 4
  store i32 %1009, i32* %best_x, align 4
  %1010 = load i32, i32* %cand_y, align 4
  store i32 %1010, i32* %best_y, align 4
  %1011 = load i32, i32* %mcost, align 4
  store i32 %1011, i32* %min_mcost.addr, align 4
  br label %if.end.1317

if.end.1317:                                      ; preds = %if.then.1316, %if.then.1300
  br label %if.end.1318

if.end.1318:                                      ; preds = %if.end.1317, %if.then.1272
  br label %if.end.1319

if.end.1319:                                      ; preds = %if.end.1318, %land.lhs.true.1266, %for.body.1252
  br label %for.inc.1320

for.inc.1320:                                     ; preds = %if.end.1319
  %1012 = load i32, i32* %m, align 4
  %inc1321 = add nsw i32 %1012, 1
  store i32 %inc1321, i32* %m, align 4
  br label %for.cond.1249

for.end.1322:                                     ; preds = %for.cond.1249
  br label %if.end.1323

if.end.1323:                                      ; preds = %for.end.1322, %lor.lhs.false.1185
  %1013 = load i32, i32* %min_mcost.addr, align 4
  %shl1324 = shl i32 %1013, 2
  %1014 = load i16, i16* @ConvergeThreshold, align 2
  %conv1325 = zext i16 %1014 to i32
  %1015 = load i32, i32* %blocktype.addr, align 4
  %idxprom1326 = sext i32 %1015 to i64
  %arrayidx1327 = getelementptr inbounds [8 x i16], [8 x i16]* @block_type_shift_factor, i32 0, i64 %idxprom1326
  %1016 = load i16, i16* %arrayidx1327, align 2
  %conv1328 = sext i16 %1016 to i32
  %shr1329 = ashr i32 %conv1325, %conv1328
  %cmp1330 = icmp slt i32 %shl1324, %shr1329
  br i1 %cmp1330, label %if.then.1332, label %if.end.1411

if.then.1332:                                     ; preds = %if.end.1323
  %1017 = load i32, i32* %best_x, align 4
  store i32 %1017, i32* %iXMinNow, align 4
  %1018 = load i32, i32* %best_y, align 4
  store i32 %1018, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1333

for.cond.1333:                                    ; preds = %for.inc.1404, %if.then.1332
  %1019 = load i32, i32* %m, align 4
  %cmp1334 = icmp slt i32 %1019, 4
  br i1 %cmp1334, label %for.body.1336, label %for.end.1406

for.body.1336:                                    ; preds = %for.cond.1333
  %1020 = load i32, i32* %iXMinNow, align 4
  %1021 = load i32, i32* %m, align 4
  %idxprom1337 = sext i32 %1021 to i64
  %arrayidx1338 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom1337
  %1022 = load i16, i16* %arrayidx1338, align 2
  %conv1339 = sext i16 %1022 to i32
  %add1340 = add nsw i32 %1020, %conv1339
  store i32 %add1340, i32* %cand_x, align 4
  %1023 = load i32, i32* %iYMinNow, align 4
  %1024 = load i32, i32* %m, align 4
  %idxprom1341 = sext i32 %1024 to i64
  %arrayidx1342 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom1341
  %1025 = load i16, i16* %arrayidx1342, align 2
  %conv1343 = sext i16 %1025 to i32
  %add1344 = add nsw i32 %1023, %conv1343
  store i32 %add1344, i32* %cand_y, align 4
  %1026 = load i32, i32* %cand_x, align 4
  %1027 = load i16, i16* %center2_x, align 2
  %conv1345 = sext i16 %1027 to i32
  %sub1346 = sub nsw i32 %1026, %conv1345
  %call1347 = call i32 @iabs(i32 %sub1346)
  %1028 = load i32, i32* %search_range.addr, align 4
  %cmp1348 = icmp sle i32 %call1347, %1028
  br i1 %cmp1348, label %land.lhs.true.1350, label %if.end.1403

land.lhs.true.1350:                               ; preds = %for.body.1336
  %1029 = load i32, i32* %cand_y, align 4
  %1030 = load i16, i16* %center2_y, align 2
  %conv1351 = sext i16 %1030 to i32
  %sub1352 = sub nsw i32 %1029, %conv1351
  %call1353 = call i32 @iabs(i32 %sub1352)
  %1031 = load i32, i32* %search_range.addr, align 4
  %cmp1354 = icmp sle i32 %call1353, %1031
  br i1 %cmp1354, label %if.then.1356, label %if.end.1403

if.then.1356:                                     ; preds = %land.lhs.true.1350
  %1032 = load i32, i32* %lambda_factor.addr, align 4
  %1033 = load i16, i16* %center1_x, align 2
  %conv1357 = sext i16 %1033 to i32
  %1034 = load i32, i32* %mvshift, align 4
  %shl1358 = shl i32 %conv1357, %1034
  %1035 = load i32, i32* %pred_x1, align 4
  %sub1359 = sub nsw i32 %shl1358, %1035
  %idxprom1360 = sext i32 %sub1359 to i64
  %1036 = load i32*, i32** @mvbits, align 8
  %arrayidx1361 = getelementptr inbounds i32, i32* %1036, i64 %idxprom1360
  %1037 = load i32, i32* %arrayidx1361, align 4
  %1038 = load i16, i16* %center1_y, align 2
  %conv1362 = sext i16 %1038 to i32
  %1039 = load i32, i32* %mvshift, align 4
  %shl1363 = shl i32 %conv1362, %1039
  %1040 = load i32, i32* %pred_y1, align 4
  %sub1364 = sub nsw i32 %shl1363, %1040
  %idxprom1365 = sext i32 %sub1364 to i64
  %1041 = load i32*, i32** @mvbits, align 8
  %arrayidx1366 = getelementptr inbounds i32, i32* %1041, i64 %idxprom1365
  %1042 = load i32, i32* %arrayidx1366, align 4
  %add1367 = add nsw i32 %1037, %1042
  %mul1368 = mul nsw i32 %1032, %add1367
  %shr1369 = ashr i32 %mul1368, 16
  store i32 %shr1369, i32* %mcost, align 4
  %1043 = load i32, i32* %lambda_factor.addr, align 4
  %1044 = load i32, i32* %cand_x, align 4
  %1045 = load i32, i32* %mvshift, align 4
  %shl1370 = shl i32 %1044, %1045
  %1046 = load i32, i32* %pred_x2, align 4
  %sub1371 = sub nsw i32 %shl1370, %1046
  %idxprom1372 = sext i32 %sub1371 to i64
  %1047 = load i32*, i32** @mvbits, align 8
  %arrayidx1373 = getelementptr inbounds i32, i32* %1047, i64 %idxprom1372
  %1048 = load i32, i32* %arrayidx1373, align 4
  %1049 = load i32, i32* %cand_y, align 4
  %1050 = load i32, i32* %mvshift, align 4
  %shl1374 = shl i32 %1049, %1050
  %1051 = load i32, i32* %pred_y2, align 4
  %sub1375 = sub nsw i32 %shl1374, %1051
  %idxprom1376 = sext i32 %sub1375 to i64
  %1052 = load i32*, i32** @mvbits, align 8
  %arrayidx1377 = getelementptr inbounds i32, i32* %1052, i64 %idxprom1376
  %1053 = load i32, i32* %arrayidx1377, align 4
  %add1378 = add nsw i32 %1048, %1053
  %mul1379 = mul nsw i32 %1043, %add1378
  %shr1380 = ashr i32 %mul1379, 16
  %1054 = load i32, i32* %mcost, align 4
  %add1381 = add nsw i32 %1054, %shr1380
  store i32 %add1381, i32* %mcost, align 4
  %1055 = load i32, i32* %mcost, align 4
  %1056 = load i32, i32* %min_mcost.addr, align 4
  %cmp1382 = icmp slt i32 %1055, %1056
  br i1 %cmp1382, label %if.then.1384, label %if.end.1402

if.then.1384:                                     ; preds = %if.then.1356
  %1057 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %1058 = load i16*, i16** %cur_pic.addr, align 8
  %1059 = load i32, i32* %blocksize_y, align 4
  %1060 = load i32, i32* %blocksize_x, align 4
  %1061 = load i32, i32* %min_mcost.addr, align 4
  %1062 = load i32, i32* %mcost, align 4
  %sub1385 = sub nsw i32 %1061, %1062
  %1063 = load i16, i16* %center1_x, align 2
  %conv1386 = sext i16 %1063 to i32
  %shl1387 = shl i32 %conv1386, 2
  %add1388 = add nsw i32 %shl1387, 80
  %1064 = load i16, i16* %center1_y, align 2
  %conv1389 = sext i16 %1064 to i32
  %shl1390 = shl i32 %conv1389, 2
  %add1391 = add nsw i32 %shl1390, 80
  %1065 = load i32, i32* %cand_x, align 4
  %shl1392 = shl i32 %1065, 2
  %add1393 = add nsw i32 %shl1392, 80
  %1066 = load i32, i32* %cand_y, align 4
  %shl1394 = shl i32 %1066, 2
  %add1395 = add nsw i32 %shl1394, 80
  %call1396 = call i32 %1057(i16* %1058, i32 %1059, i32 %1060, i32 %sub1385, i32 %add1388, i32 %add1391, i32 %add1393, i32 %add1395)
  %1067 = load i32, i32* %mcost, align 4
  %add1397 = add nsw i32 %1067, %call1396
  store i32 %add1397, i32* %mcost, align 4
  %1068 = load i32, i32* %mcost, align 4
  %1069 = load i32, i32* %min_mcost.addr, align 4
  %cmp1398 = icmp slt i32 %1068, %1069
  br i1 %cmp1398, label %if.then.1400, label %if.end.1401

if.then.1400:                                     ; preds = %if.then.1384
  %1070 = load i32, i32* %cand_x, align 4
  store i32 %1070, i32* %best_x, align 4
  %1071 = load i32, i32* %cand_y, align 4
  store i32 %1071, i32* %best_y, align 4
  %1072 = load i32, i32* %mcost, align 4
  store i32 %1072, i32* %min_mcost.addr, align 4
  br label %if.end.1401

if.end.1401:                                      ; preds = %if.then.1400, %if.then.1384
  br label %if.end.1402

if.end.1402:                                      ; preds = %if.end.1401, %if.then.1356
  br label %if.end.1403

if.end.1403:                                      ; preds = %if.end.1402, %land.lhs.true.1350, %for.body.1336
  br label %for.inc.1404

for.inc.1404:                                     ; preds = %if.end.1403
  %1073 = load i32, i32* %m, align 4
  %inc1405 = add nsw i32 %1073, 1
  store i32 %inc1405, i32* %m, align 4
  br label %for.cond.1333

for.end.1406:                                     ; preds = %for.cond.1333
  %1074 = load i32, i32* %best_x, align 4
  %1075 = load i32, i32* %pic_pix_x.addr, align 4
  %sub1407 = sub nsw i32 %1074, %1075
  %conv1408 = trunc i32 %sub1407 to i16
  %1076 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv1408, i16* %1076, align 2
  %1077 = load i32, i32* %best_y, align 4
  %1078 = load i32, i32* %pic_pix_y.addr, align 4
  %sub1409 = sub nsw i32 %1077, %1078
  %conv1410 = trunc i32 %sub1409 to i16
  %1079 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv1410, i16* %1079, align 2
  %1080 = load i32, i32* %min_mcost.addr, align 4
  store i32 %1080, i32* %retval
  br label %return

if.end.1411:                                      ; preds = %if.end.1323
  store i32 0, i32* %i, align 4
  br label %for.cond.1412

for.cond.1412:                                    ; preds = %for.inc.1497, %if.end.1411
  %1081 = load i32, i32* %i, align 4
  %1082 = load i32, i32* %search_range.addr, align 4
  %cmp1413 = icmp slt i32 %1081, %1082
  br i1 %cmp1413, label %for.body.1415, label %for.end.1499

for.body.1415:                                    ; preds = %for.cond.1412
  %1083 = load i32, i32* %best_x, align 4
  store i32 %1083, i32* %iXMinNow, align 4
  %1084 = load i32, i32* %best_y, align 4
  store i32 %1084, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1416

for.cond.1416:                                    ; preds = %for.inc.1487, %for.body.1415
  %1085 = load i32, i32* %m, align 4
  %cmp1417 = icmp slt i32 %1085, 6
  br i1 %cmp1417, label %for.body.1419, label %for.end.1489

for.body.1419:                                    ; preds = %for.cond.1416
  %1086 = load i32, i32* %iXMinNow, align 4
  %1087 = load i32, i32* %m, align 4
  %idxprom1420 = sext i32 %1087 to i64
  %arrayidx1421 = getelementptr inbounds [6 x i16], [6 x i16]* @Hexagon_X, i32 0, i64 %idxprom1420
  %1088 = load i16, i16* %arrayidx1421, align 2
  %conv1422 = sext i16 %1088 to i32
  %add1423 = add nsw i32 %1086, %conv1422
  store i32 %add1423, i32* %cand_x, align 4
  %1089 = load i32, i32* %iYMinNow, align 4
  %1090 = load i32, i32* %m, align 4
  %idxprom1424 = sext i32 %1090 to i64
  %arrayidx1425 = getelementptr inbounds [6 x i16], [6 x i16]* @Hexagon_Y, i32 0, i64 %idxprom1424
  %1091 = load i16, i16* %arrayidx1425, align 2
  %conv1426 = sext i16 %1091 to i32
  %add1427 = add nsw i32 %1089, %conv1426
  store i32 %add1427, i32* %cand_y, align 4
  %1092 = load i32, i32* %cand_x, align 4
  %1093 = load i16, i16* %center2_x, align 2
  %conv1428 = sext i16 %1093 to i32
  %sub1429 = sub nsw i32 %1092, %conv1428
  %call1430 = call i32 @iabs(i32 %sub1429)
  %1094 = load i32, i32* %search_range.addr, align 4
  %cmp1431 = icmp sle i32 %call1430, %1094
  br i1 %cmp1431, label %land.lhs.true.1433, label %if.end.1486

land.lhs.true.1433:                               ; preds = %for.body.1419
  %1095 = load i32, i32* %cand_y, align 4
  %1096 = load i16, i16* %center2_y, align 2
  %conv1434 = sext i16 %1096 to i32
  %sub1435 = sub nsw i32 %1095, %conv1434
  %call1436 = call i32 @iabs(i32 %sub1435)
  %1097 = load i32, i32* %search_range.addr, align 4
  %cmp1437 = icmp sle i32 %call1436, %1097
  br i1 %cmp1437, label %if.then.1439, label %if.end.1486

if.then.1439:                                     ; preds = %land.lhs.true.1433
  %1098 = load i32, i32* %lambda_factor.addr, align 4
  %1099 = load i16, i16* %center1_x, align 2
  %conv1440 = sext i16 %1099 to i32
  %1100 = load i32, i32* %mvshift, align 4
  %shl1441 = shl i32 %conv1440, %1100
  %1101 = load i32, i32* %pred_x1, align 4
  %sub1442 = sub nsw i32 %shl1441, %1101
  %idxprom1443 = sext i32 %sub1442 to i64
  %1102 = load i32*, i32** @mvbits, align 8
  %arrayidx1444 = getelementptr inbounds i32, i32* %1102, i64 %idxprom1443
  %1103 = load i32, i32* %arrayidx1444, align 4
  %1104 = load i16, i16* %center1_y, align 2
  %conv1445 = sext i16 %1104 to i32
  %1105 = load i32, i32* %mvshift, align 4
  %shl1446 = shl i32 %conv1445, %1105
  %1106 = load i32, i32* %pred_y1, align 4
  %sub1447 = sub nsw i32 %shl1446, %1106
  %idxprom1448 = sext i32 %sub1447 to i64
  %1107 = load i32*, i32** @mvbits, align 8
  %arrayidx1449 = getelementptr inbounds i32, i32* %1107, i64 %idxprom1448
  %1108 = load i32, i32* %arrayidx1449, align 4
  %add1450 = add nsw i32 %1103, %1108
  %mul1451 = mul nsw i32 %1098, %add1450
  %shr1452 = ashr i32 %mul1451, 16
  store i32 %shr1452, i32* %mcost, align 4
  %1109 = load i32, i32* %lambda_factor.addr, align 4
  %1110 = load i32, i32* %cand_x, align 4
  %1111 = load i32, i32* %mvshift, align 4
  %shl1453 = shl i32 %1110, %1111
  %1112 = load i32, i32* %pred_x2, align 4
  %sub1454 = sub nsw i32 %shl1453, %1112
  %idxprom1455 = sext i32 %sub1454 to i64
  %1113 = load i32*, i32** @mvbits, align 8
  %arrayidx1456 = getelementptr inbounds i32, i32* %1113, i64 %idxprom1455
  %1114 = load i32, i32* %arrayidx1456, align 4
  %1115 = load i32, i32* %cand_y, align 4
  %1116 = load i32, i32* %mvshift, align 4
  %shl1457 = shl i32 %1115, %1116
  %1117 = load i32, i32* %pred_y2, align 4
  %sub1458 = sub nsw i32 %shl1457, %1117
  %idxprom1459 = sext i32 %sub1458 to i64
  %1118 = load i32*, i32** @mvbits, align 8
  %arrayidx1460 = getelementptr inbounds i32, i32* %1118, i64 %idxprom1459
  %1119 = load i32, i32* %arrayidx1460, align 4
  %add1461 = add nsw i32 %1114, %1119
  %mul1462 = mul nsw i32 %1109, %add1461
  %shr1463 = ashr i32 %mul1462, 16
  %1120 = load i32, i32* %mcost, align 4
  %add1464 = add nsw i32 %1120, %shr1463
  store i32 %add1464, i32* %mcost, align 4
  %1121 = load i32, i32* %mcost, align 4
  %1122 = load i32, i32* %min_mcost.addr, align 4
  %cmp1465 = icmp slt i32 %1121, %1122
  br i1 %cmp1465, label %if.then.1467, label %if.end.1485

if.then.1467:                                     ; preds = %if.then.1439
  %1123 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %1124 = load i16*, i16** %cur_pic.addr, align 8
  %1125 = load i32, i32* %blocksize_y, align 4
  %1126 = load i32, i32* %blocksize_x, align 4
  %1127 = load i32, i32* %min_mcost.addr, align 4
  %1128 = load i32, i32* %mcost, align 4
  %sub1468 = sub nsw i32 %1127, %1128
  %1129 = load i16, i16* %center1_x, align 2
  %conv1469 = sext i16 %1129 to i32
  %shl1470 = shl i32 %conv1469, 2
  %add1471 = add nsw i32 %shl1470, 80
  %1130 = load i16, i16* %center1_y, align 2
  %conv1472 = sext i16 %1130 to i32
  %shl1473 = shl i32 %conv1472, 2
  %add1474 = add nsw i32 %shl1473, 80
  %1131 = load i32, i32* %cand_x, align 4
  %shl1475 = shl i32 %1131, 2
  %add1476 = add nsw i32 %shl1475, 80
  %1132 = load i32, i32* %cand_y, align 4
  %shl1477 = shl i32 %1132, 2
  %add1478 = add nsw i32 %shl1477, 80
  %call1479 = call i32 %1123(i16* %1124, i32 %1125, i32 %1126, i32 %sub1468, i32 %add1471, i32 %add1474, i32 %add1476, i32 %add1478)
  %1133 = load i32, i32* %mcost, align 4
  %add1480 = add nsw i32 %1133, %call1479
  store i32 %add1480, i32* %mcost, align 4
  %1134 = load i32, i32* %mcost, align 4
  %1135 = load i32, i32* %min_mcost.addr, align 4
  %cmp1481 = icmp slt i32 %1134, %1135
  br i1 %cmp1481, label %if.then.1483, label %if.end.1484

if.then.1483:                                     ; preds = %if.then.1467
  %1136 = load i32, i32* %cand_x, align 4
  store i32 %1136, i32* %best_x, align 4
  %1137 = load i32, i32* %cand_y, align 4
  store i32 %1137, i32* %best_y, align 4
  %1138 = load i32, i32* %mcost, align 4
  store i32 %1138, i32* %min_mcost.addr, align 4
  br label %if.end.1484

if.end.1484:                                      ; preds = %if.then.1483, %if.then.1467
  br label %if.end.1485

if.end.1485:                                      ; preds = %if.end.1484, %if.then.1439
  br label %if.end.1486

if.end.1486:                                      ; preds = %if.end.1485, %land.lhs.true.1433, %for.body.1419
  br label %for.inc.1487

for.inc.1487:                                     ; preds = %if.end.1486
  %1139 = load i32, i32* %m, align 4
  %inc1488 = add nsw i32 %1139, 1
  store i32 %inc1488, i32* %m, align 4
  br label %for.cond.1416

for.end.1489:                                     ; preds = %for.cond.1416
  %1140 = load i32, i32* %best_x, align 4
  %1141 = load i32, i32* %iXMinNow, align 4
  %cmp1490 = icmp eq i32 %1140, %1141
  br i1 %cmp1490, label %land.lhs.true.1492, label %if.end.1496

land.lhs.true.1492:                               ; preds = %for.end.1489
  %1142 = load i32, i32* %best_y, align 4
  %1143 = load i32, i32* %iYMinNow, align 4
  %cmp1493 = icmp eq i32 %1142, %1143
  br i1 %cmp1493, label %if.then.1495, label %if.end.1496

if.then.1495:                                     ; preds = %land.lhs.true.1492
  br label %for.end.1499

if.end.1496:                                      ; preds = %land.lhs.true.1492, %for.end.1489
  br label %for.inc.1497

for.inc.1497:                                     ; preds = %if.end.1496
  %1144 = load i32, i32* %i, align 4
  %inc1498 = add nsw i32 %1144, 1
  store i32 %inc1498, i32* %i, align 4
  br label %for.cond.1412

for.end.1499:                                     ; preds = %if.then.1495, %for.cond.1412
  store i32 0, i32* %i, align 4
  br label %for.cond.1500

for.cond.1500:                                    ; preds = %for.inc.1585, %for.end.1499
  %1145 = load i32, i32* %i, align 4
  %1146 = load i32, i32* %search_range.addr, align 4
  %cmp1501 = icmp slt i32 %1145, %1146
  br i1 %cmp1501, label %for.body.1503, label %for.end.1587

for.body.1503:                                    ; preds = %for.cond.1500
  %1147 = load i32, i32* %best_x, align 4
  store i32 %1147, i32* %iXMinNow, align 4
  %1148 = load i32, i32* %best_y, align 4
  store i32 %1148, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1504

for.cond.1504:                                    ; preds = %for.inc.1575, %for.body.1503
  %1149 = load i32, i32* %m, align 4
  %cmp1505 = icmp slt i32 %1149, 4
  br i1 %cmp1505, label %for.body.1507, label %for.end.1577

for.body.1507:                                    ; preds = %for.cond.1504
  %1150 = load i32, i32* %iXMinNow, align 4
  %1151 = load i32, i32* %m, align 4
  %idxprom1508 = sext i32 %1151 to i64
  %arrayidx1509 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_X, i32 0, i64 %idxprom1508
  %1152 = load i16, i16* %arrayidx1509, align 2
  %conv1510 = sext i16 %1152 to i32
  %add1511 = add nsw i32 %1150, %conv1510
  store i32 %add1511, i32* %cand_x, align 4
  %1153 = load i32, i32* %iYMinNow, align 4
  %1154 = load i32, i32* %m, align 4
  %idxprom1512 = sext i32 %1154 to i64
  %arrayidx1513 = getelementptr inbounds [4 x i16], [4 x i16]* @Diamond_Y, i32 0, i64 %idxprom1512
  %1155 = load i16, i16* %arrayidx1513, align 2
  %conv1514 = sext i16 %1155 to i32
  %add1515 = add nsw i32 %1153, %conv1514
  store i32 %add1515, i32* %cand_y, align 4
  %1156 = load i32, i32* %cand_x, align 4
  %1157 = load i16, i16* %center2_x, align 2
  %conv1516 = sext i16 %1157 to i32
  %sub1517 = sub nsw i32 %1156, %conv1516
  %call1518 = call i32 @iabs(i32 %sub1517)
  %1158 = load i32, i32* %search_range.addr, align 4
  %cmp1519 = icmp sle i32 %call1518, %1158
  br i1 %cmp1519, label %land.lhs.true.1521, label %if.end.1574

land.lhs.true.1521:                               ; preds = %for.body.1507
  %1159 = load i32, i32* %cand_y, align 4
  %1160 = load i16, i16* %center2_y, align 2
  %conv1522 = sext i16 %1160 to i32
  %sub1523 = sub nsw i32 %1159, %conv1522
  %call1524 = call i32 @iabs(i32 %sub1523)
  %1161 = load i32, i32* %search_range.addr, align 4
  %cmp1525 = icmp sle i32 %call1524, %1161
  br i1 %cmp1525, label %if.then.1527, label %if.end.1574

if.then.1527:                                     ; preds = %land.lhs.true.1521
  %1162 = load i32, i32* %lambda_factor.addr, align 4
  %1163 = load i16, i16* %center1_x, align 2
  %conv1528 = sext i16 %1163 to i32
  %1164 = load i32, i32* %mvshift, align 4
  %shl1529 = shl i32 %conv1528, %1164
  %1165 = load i32, i32* %pred_x1, align 4
  %sub1530 = sub nsw i32 %shl1529, %1165
  %idxprom1531 = sext i32 %sub1530 to i64
  %1166 = load i32*, i32** @mvbits, align 8
  %arrayidx1532 = getelementptr inbounds i32, i32* %1166, i64 %idxprom1531
  %1167 = load i32, i32* %arrayidx1532, align 4
  %1168 = load i16, i16* %center1_y, align 2
  %conv1533 = sext i16 %1168 to i32
  %1169 = load i32, i32* %mvshift, align 4
  %shl1534 = shl i32 %conv1533, %1169
  %1170 = load i32, i32* %pred_y1, align 4
  %sub1535 = sub nsw i32 %shl1534, %1170
  %idxprom1536 = sext i32 %sub1535 to i64
  %1171 = load i32*, i32** @mvbits, align 8
  %arrayidx1537 = getelementptr inbounds i32, i32* %1171, i64 %idxprom1536
  %1172 = load i32, i32* %arrayidx1537, align 4
  %add1538 = add nsw i32 %1167, %1172
  %mul1539 = mul nsw i32 %1162, %add1538
  %shr1540 = ashr i32 %mul1539, 16
  store i32 %shr1540, i32* %mcost, align 4
  %1173 = load i32, i32* %lambda_factor.addr, align 4
  %1174 = load i32, i32* %cand_x, align 4
  %1175 = load i32, i32* %mvshift, align 4
  %shl1541 = shl i32 %1174, %1175
  %1176 = load i32, i32* %pred_x2, align 4
  %sub1542 = sub nsw i32 %shl1541, %1176
  %idxprom1543 = sext i32 %sub1542 to i64
  %1177 = load i32*, i32** @mvbits, align 8
  %arrayidx1544 = getelementptr inbounds i32, i32* %1177, i64 %idxprom1543
  %1178 = load i32, i32* %arrayidx1544, align 4
  %1179 = load i32, i32* %cand_y, align 4
  %1180 = load i32, i32* %mvshift, align 4
  %shl1545 = shl i32 %1179, %1180
  %1181 = load i32, i32* %pred_y2, align 4
  %sub1546 = sub nsw i32 %shl1545, %1181
  %idxprom1547 = sext i32 %sub1546 to i64
  %1182 = load i32*, i32** @mvbits, align 8
  %arrayidx1548 = getelementptr inbounds i32, i32* %1182, i64 %idxprom1547
  %1183 = load i32, i32* %arrayidx1548, align 4
  %add1549 = add nsw i32 %1178, %1183
  %mul1550 = mul nsw i32 %1173, %add1549
  %shr1551 = ashr i32 %mul1550, 16
  %1184 = load i32, i32* %mcost, align 4
  %add1552 = add nsw i32 %1184, %shr1551
  store i32 %add1552, i32* %mcost, align 4
  %1185 = load i32, i32* %mcost, align 4
  %1186 = load i32, i32* %min_mcost.addr, align 4
  %cmp1553 = icmp slt i32 %1185, %1186
  br i1 %cmp1553, label %if.then.1555, label %if.end.1573

if.then.1555:                                     ; preds = %if.then.1527
  %1187 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %1188 = load i16*, i16** %cur_pic.addr, align 8
  %1189 = load i32, i32* %blocksize_y, align 4
  %1190 = load i32, i32* %blocksize_x, align 4
  %1191 = load i32, i32* %min_mcost.addr, align 4
  %1192 = load i32, i32* %mcost, align 4
  %sub1556 = sub nsw i32 %1191, %1192
  %1193 = load i16, i16* %center1_x, align 2
  %conv1557 = sext i16 %1193 to i32
  %shl1558 = shl i32 %conv1557, 2
  %add1559 = add nsw i32 %shl1558, 80
  %1194 = load i16, i16* %center1_y, align 2
  %conv1560 = sext i16 %1194 to i32
  %shl1561 = shl i32 %conv1560, 2
  %add1562 = add nsw i32 %shl1561, 80
  %1195 = load i32, i32* %cand_x, align 4
  %shl1563 = shl i32 %1195, 2
  %add1564 = add nsw i32 %shl1563, 80
  %1196 = load i32, i32* %cand_y, align 4
  %shl1565 = shl i32 %1196, 2
  %add1566 = add nsw i32 %shl1565, 80
  %call1567 = call i32 %1187(i16* %1188, i32 %1189, i32 %1190, i32 %sub1556, i32 %add1559, i32 %add1562, i32 %add1564, i32 %add1566)
  %1197 = load i32, i32* %mcost, align 4
  %add1568 = add nsw i32 %1197, %call1567
  store i32 %add1568, i32* %mcost, align 4
  %1198 = load i32, i32* %mcost, align 4
  %1199 = load i32, i32* %min_mcost.addr, align 4
  %cmp1569 = icmp slt i32 %1198, %1199
  br i1 %cmp1569, label %if.then.1571, label %if.end.1572

if.then.1571:                                     ; preds = %if.then.1555
  %1200 = load i32, i32* %cand_x, align 4
  store i32 %1200, i32* %best_x, align 4
  %1201 = load i32, i32* %cand_y, align 4
  store i32 %1201, i32* %best_y, align 4
  %1202 = load i32, i32* %mcost, align 4
  store i32 %1202, i32* %min_mcost.addr, align 4
  br label %if.end.1572

if.end.1572:                                      ; preds = %if.then.1571, %if.then.1555
  br label %if.end.1573

if.end.1573:                                      ; preds = %if.end.1572, %if.then.1527
  br label %if.end.1574

if.end.1574:                                      ; preds = %if.end.1573, %land.lhs.true.1521, %for.body.1507
  br label %for.inc.1575

for.inc.1575:                                     ; preds = %if.end.1574
  %1203 = load i32, i32* %m, align 4
  %inc1576 = add nsw i32 %1203, 1
  store i32 %inc1576, i32* %m, align 4
  br label %for.cond.1504

for.end.1577:                                     ; preds = %for.cond.1504
  %1204 = load i32, i32* %best_x, align 4
  %1205 = load i32, i32* %iXMinNow, align 4
  %cmp1578 = icmp eq i32 %1204, %1205
  br i1 %cmp1578, label %land.lhs.true.1580, label %if.end.1584

land.lhs.true.1580:                               ; preds = %for.end.1577
  %1206 = load i32, i32* %best_y, align 4
  %1207 = load i32, i32* %iYMinNow, align 4
  %cmp1581 = icmp eq i32 %1206, %1207
  br i1 %cmp1581, label %if.then.1583, label %if.end.1584

if.then.1583:                                     ; preds = %land.lhs.true.1580
  br label %for.end.1587

if.end.1584:                                      ; preds = %land.lhs.true.1580, %for.end.1577
  br label %for.inc.1585

for.inc.1585:                                     ; preds = %if.end.1584
  %1208 = load i32, i32* %i, align 4
  %inc1586 = add nsw i32 %1208, 1
  store i32 %inc1586, i32* %i, align 4
  br label %for.cond.1500

for.end.1587:                                     ; preds = %if.then.1583, %for.cond.1500
  %1209 = load i32, i32* %best_x, align 4
  %1210 = load i32, i32* %pic_pix_x.addr, align 4
  %sub1588 = sub nsw i32 %1209, %1210
  %conv1589 = trunc i32 %sub1588 to i16
  %1211 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv1589, i16* %1211, align 2
  %1212 = load i32, i32* %best_y, align 4
  %1213 = load i32, i32* %pic_pix_y.addr, align 4
  %sub1590 = sub nsw i32 %1212, %1213
  %conv1591 = trunc i32 %sub1590 to i16
  %1214 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv1591, i16* %1214, align 2
  %1215 = load i32, i32* %min_mcost.addr, align 4
  store i32 %1215, i32* %retval
  br label %return

return:                                           ; preds = %for.end.1587, %for.end.1406, %for.end
  %1216 = load i32, i32* %retval
  ret i32 %1216
}

declare i32 @computeBiPredSAD2(i16*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @computeBiPredSAD1(i16*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @smpUMHEX_decide_intrabk_SAD() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 39
  %3 = load i32, i32* %pix_x, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 40
  %5 = load i32, i32* %pix_y, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  store i32 0, i32* @smpUMHEX_flag_intra_SAD, align 4
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true, %if.then
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 39
  %7 = load i32, i32* %pix_x4, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 39
  %9 = load i32, i32* %pix_x7, align 4
  %shr = ashr i32 %9, 4
  %idxprom = sext i32 %shr to i64
  %10 = load i8*, i8** @smpUMHEX_flag_intra, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* @smpUMHEX_flag_intra_SAD, align 4
  br label %if.end.37

if.else.8:                                        ; preds = %if.else
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 40
  %13 = load i32, i32* %pix_y9, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.12, label %if.else.18

if.then.12:                                       ; preds = %if.else.8
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 39
  %15 = load i32, i32* %pix_x13, align 4
  %shr14 = ashr i32 %15, 4
  %sub = sub nsw i32 %shr14, 1
  %idxprom15 = sext i32 %sub to i64
  %16 = load i8*, i8** @smpUMHEX_flag_intra, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %idxprom15
  %17 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %17 to i32
  store i32 %conv17, i32* @smpUMHEX_flag_intra_SAD, align 4
  br label %if.end

if.else.18:                                       ; preds = %if.else.8
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 39
  %19 = load i32, i32* %pix_x19, align 4
  %shr20 = ashr i32 %19, 4
  %idxprom21 = sext i32 %shr20 to i64
  %20 = load i8*, i8** @smpUMHEX_flag_intra, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %20, i64 %idxprom21
  %21 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %21 to i32
  %tobool = icmp ne i32 %conv23, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.18
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 39
  %23 = load i32, i32* %pix_x24, align 4
  %shr25 = ashr i32 %23, 4
  %sub26 = sub nsw i32 %shr25, 1
  %idxprom27 = sext i32 %sub26 to i64
  %24 = load i8*, i8** @smpUMHEX_flag_intra, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %24, i64 %idxprom27
  %25 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %25 to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 39
  %27 = load i32, i32* %pix_x31, align 4
  %shr32 = ashr i32 %27, 4
  %add = add nsw i32 %shr32, 1
  %idxprom33 = sext i32 %add to i64
  %28 = load i8*, i8** @smpUMHEX_flag_intra, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %28, i64 %idxprom33
  %29 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %tobool36 = icmp ne i32 %conv35, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.else.18
  %30 = phi i1 [ true, %lor.lhs.false ], [ true, %if.else.18 ], [ %tobool36, %lor.rhs ]
  %lor.ext = zext i1 %30 to i32
  store i32 %lor.ext, i32* @smpUMHEX_flag_intra_SAD, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then.12
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then.6
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.3
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @smpUMHEX_skip_intrabk_SAD(i32 %best_mode, i32 %ref_max) #0 {
entry:
  %best_mode.addr = alloca i32, align 4
  %ref_max.addr = alloca i32, align 4
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %k = alloca i16, align 2
  store i32 %best_mode, i32* %best_mode.addr, align 4
  store i32 %ref_max, i32* %ref_max.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %best_mode.addr, align 4
  %cmp1 = icmp eq i32 %2, 9
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %3 = load i32, i32* %best_mode.addr, align 4
  %cmp2 = icmp eq i32 %3, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %4 = phi i1 [ true, %if.then ], [ %cmp2, %lor.rhs ]
  %cond = select i1 %4, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 39
  %6 = load i32, i32* %pix_x, align 4
  %shr = ashr i32 %6, 4
  %idxprom = sext i32 %shr to i64
  %7 = load i8*, i8** @smpUMHEX_flag_intra, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 5
  %9 = load i32, i32* %type, align 4
  %cmp3 = icmp ne i32 %9, 2
  br i1 %cmp3, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %best_mode.addr, align 4
  %cmp5 = icmp eq i32 %10, 9
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load i32, i32* %best_mode.addr, align 4
  %cmp7 = icmp eq i32 %11, 10
  br i1 %cmp7, label %if.then.9, label %if.end.41

if.then.9:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %if.then.9
  %12 = load i16, i16* %i, align 2
  %conv10 = sext i16 %12 to i32
  %cmp11 = icmp slt i32 %conv10, 4
  br i1 %cmp11, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %j, align 2
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.35, %for.body
  %13 = load i16, i16* %j, align 2
  %conv14 = sext i16 %13 to i32
  %cmp15 = icmp slt i32 %conv14, 4
  br i1 %cmp15, label %for.body.17, label %for.end.37

for.body.17:                                      ; preds = %for.cond.13
  store i16 0, i16* %k, align 2
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body.17
  %14 = load i16, i16* %k, align 2
  %conv19 = sext i16 %14 to i32
  %cmp20 = icmp slt i32 %conv19, 9
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.18
  %15 = load i16, i16* %i, align 2
  %idxprom23 = sext i16 %15 to i64
  %16 = load i16, i16* %j, align 2
  %idxprom24 = sext i16 %16 to i64
  %17 = load i16, i16* %k, align 2
  %idxprom25 = sext i16 %17 to i64
  %18 = load i32***, i32**** @smpUMHEX_l0_cost, align 8
  %arrayidx26 = getelementptr inbounds i32**, i32*** %18, i64 %idxprom25
  %19 = load i32**, i32*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32*, i32** %19, i64 %idxprom24
  %20 = load i32*, i32** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %20, i64 %idxprom23
  store i32 0, i32* %arrayidx28, align 4
  %21 = load i16, i16* %i, align 2
  %idxprom29 = sext i16 %21 to i64
  %22 = load i16, i16* %j, align 2
  %idxprom30 = sext i16 %22 to i64
  %23 = load i16, i16* %k, align 2
  %idxprom31 = sext i16 %23 to i64
  %24 = load i32***, i32**** @smpUMHEX_l1_cost, align 8
  %arrayidx32 = getelementptr inbounds i32**, i32*** %24, i64 %idxprom31
  %25 = load i32**, i32*** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %25, i64 %idxprom30
  %26 = load i32*, i32** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %26, i64 %idxprom29
  store i32 0, i32* %arrayidx34, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %27 = load i16, i16* %k, align 2
  %inc = add i16 %27, 1
  store i16 %inc, i16* %k, align 2
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %28 = load i16, i16* %j, align 2
  %inc36 = add i16 %28, 1
  store i16 %inc36, i16* %j, align 2
  br label %for.cond.13

for.end.37:                                       ; preds = %for.cond.13
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %29 = load i16, i16* %i, align 2
  %inc39 = add i16 %29, 1
  store i16 %inc39, i16* %i, align 2
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  br label %if.end.41

if.end.41:                                        ; preds = %for.end.40, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @smpUMHEX_setup(i16 signext %ref, i32 %list, i32 %block_y, i32 %block_x, i32 %blocktype, i16****** %all_mv) #0 {
entry:
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %all_mv.addr = alloca i16******, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16****** %all_mv, i16******* %all_mv.addr, align 8
  %0 = load i32, i32* %blocktype.addr, align 4
  %cmp = icmp sgt i32 %0, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %ref.addr, align 2
  %idxprom = sext i16 %1 to i64
  %2 = load i32, i32* %list.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load i32, i32* %block_x.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load i32, i32* %block_y.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx = getelementptr inbounds i16*****, i16****** %5, i64 %idxprom3
  %6 = load i16*****, i16****** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i16****, i16***** %6, i64 %idxprom2
  %7 = load i16****, i16***** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i16***, i16**** %7, i64 %idxprom1
  %8 = load i16***, i16**** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i16**, i16*** %8, i64 %idxprom
  %9 = load i16**, i16*** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i16*, i16** %9, i64 5
  %10 = load i16*, i16** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %10, i64 0
  %11 = load i16, i16* %arrayidx8, align 2
  store i16 %11, i16* @smpUMHEX_pred_MV_uplayer_X, align 2
  %12 = load i16, i16* %ref.addr, align 2
  %idxprom9 = sext i16 %12 to i64
  %13 = load i32, i32* %list.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load i32, i32* %block_x.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32, i32* %block_y.addr, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx13 = getelementptr inbounds i16*****, i16****** %16, i64 %idxprom12
  %17 = load i16*****, i16****** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i16****, i16***** %17, i64 %idxprom11
  %18 = load i16****, i16***** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i16***, i16**** %18, i64 %idxprom10
  %19 = load i16***, i16**** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i16**, i16*** %19, i64 %idxprom9
  %20 = load i16**, i16*** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16*, i16** %20, i64 5
  %21 = load i16*, i16** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %21, i64 1
  %22 = load i16, i16* %arrayidx18, align 2
  store i16 %22, i16* @smpUMHEX_pred_MV_uplayer_Y, align 2
  br label %if.end.89

if.else:                                          ; preds = %entry
  %23 = load i32, i32* %blocktype.addr, align 4
  %cmp19 = icmp sgt i32 %23, 4
  br i1 %cmp19, label %if.then.20, label %if.else.41

if.then.20:                                       ; preds = %if.else
  %24 = load i16, i16* %ref.addr, align 2
  %idxprom21 = sext i16 %24 to i64
  %25 = load i32, i32* %list.addr, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load i32, i32* %block_x.addr, align 4
  %idxprom23 = sext i32 %26 to i64
  %27 = load i32, i32* %block_y.addr, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx25 = getelementptr inbounds i16*****, i16****** %28, i64 %idxprom24
  %29 = load i16*****, i16****** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i16****, i16***** %29, i64 %idxprom23
  %30 = load i16****, i16***** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i16***, i16**** %30, i64 %idxprom22
  %31 = load i16***, i16**** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i16**, i16*** %31, i64 %idxprom21
  %32 = load i16**, i16*** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i16*, i16** %32, i64 4
  %33 = load i16*, i16** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %33, i64 0
  %34 = load i16, i16* %arrayidx30, align 2
  store i16 %34, i16* @smpUMHEX_pred_MV_uplayer_X, align 2
  %35 = load i16, i16* %ref.addr, align 2
  %idxprom31 = sext i16 %35 to i64
  %36 = load i32, i32* %list.addr, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load i32, i32* %block_x.addr, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load i32, i32* %block_y.addr, align 4
  %idxprom34 = sext i32 %38 to i64
  %39 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx35 = getelementptr inbounds i16*****, i16****** %39, i64 %idxprom34
  %40 = load i16*****, i16****** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16****, i16***** %40, i64 %idxprom33
  %41 = load i16****, i16***** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16***, i16**** %41, i64 %idxprom32
  %42 = load i16***, i16**** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i16**, i16*** %42, i64 %idxprom31
  %43 = load i16**, i16*** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i16*, i16** %43, i64 4
  %44 = load i16*, i16** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %44, i64 1
  %45 = load i16, i16* %arrayidx40, align 2
  store i16 %45, i16* @smpUMHEX_pred_MV_uplayer_Y, align 2
  br label %if.end.88

if.else.41:                                       ; preds = %if.else
  %46 = load i32, i32* %blocktype.addr, align 4
  %cmp42 = icmp eq i32 %46, 4
  br i1 %cmp42, label %if.then.43, label %if.else.64

if.then.43:                                       ; preds = %if.else.41
  %47 = load i16, i16* %ref.addr, align 2
  %idxprom44 = sext i16 %47 to i64
  %48 = load i32, i32* %list.addr, align 4
  %idxprom45 = sext i32 %48 to i64
  %49 = load i32, i32* %block_x.addr, align 4
  %idxprom46 = sext i32 %49 to i64
  %50 = load i32, i32* %block_y.addr, align 4
  %idxprom47 = sext i32 %50 to i64
  %51 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx48 = getelementptr inbounds i16*****, i16****** %51, i64 %idxprom47
  %52 = load i16*****, i16****** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i16****, i16***** %52, i64 %idxprom46
  %53 = load i16****, i16***** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i16***, i16**** %53, i64 %idxprom45
  %54 = load i16***, i16**** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i16**, i16*** %54, i64 %idxprom44
  %55 = load i16**, i16*** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i16*, i16** %55, i64 2
  %56 = load i16*, i16** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %56, i64 0
  %57 = load i16, i16* %arrayidx53, align 2
  store i16 %57, i16* @smpUMHEX_pred_MV_uplayer_X, align 2
  %58 = load i16, i16* %ref.addr, align 2
  %idxprom54 = sext i16 %58 to i64
  %59 = load i32, i32* %list.addr, align 4
  %idxprom55 = sext i32 %59 to i64
  %60 = load i32, i32* %block_x.addr, align 4
  %idxprom56 = sext i32 %60 to i64
  %61 = load i32, i32* %block_y.addr, align 4
  %idxprom57 = sext i32 %61 to i64
  %62 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx58 = getelementptr inbounds i16*****, i16****** %62, i64 %idxprom57
  %63 = load i16*****, i16****** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i16****, i16***** %63, i64 %idxprom56
  %64 = load i16****, i16***** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16***, i16**** %64, i64 %idxprom55
  %65 = load i16***, i16**** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16**, i16*** %65, i64 %idxprom54
  %66 = load i16**, i16*** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i16*, i16** %66, i64 2
  %67 = load i16*, i16** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %67, i64 1
  %68 = load i16, i16* %arrayidx63, align 2
  store i16 %68, i16* @smpUMHEX_pred_MV_uplayer_Y, align 2
  br label %if.end.87

if.else.64:                                       ; preds = %if.else.41
  %69 = load i32, i32* %blocktype.addr, align 4
  %cmp65 = icmp sgt i32 %69, 1
  br i1 %cmp65, label %if.then.66, label %if.end

if.then.66:                                       ; preds = %if.else.64
  %70 = load i16, i16* %ref.addr, align 2
  %idxprom67 = sext i16 %70 to i64
  %71 = load i32, i32* %list.addr, align 4
  %idxprom68 = sext i32 %71 to i64
  %72 = load i32, i32* %block_x.addr, align 4
  %idxprom69 = sext i32 %72 to i64
  %73 = load i32, i32* %block_y.addr, align 4
  %idxprom70 = sext i32 %73 to i64
  %74 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx71 = getelementptr inbounds i16*****, i16****** %74, i64 %idxprom70
  %75 = load i16*****, i16****** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i16****, i16***** %75, i64 %idxprom69
  %76 = load i16****, i16***** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i16***, i16**** %76, i64 %idxprom68
  %77 = load i16***, i16**** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i16**, i16*** %77, i64 %idxprom67
  %78 = load i16**, i16*** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i16*, i16** %78, i64 1
  %79 = load i16*, i16** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i16, i16* %79, i64 0
  %80 = load i16, i16* %arrayidx76, align 2
  store i16 %80, i16* @smpUMHEX_pred_MV_uplayer_X, align 2
  %81 = load i16, i16* %ref.addr, align 2
  %idxprom77 = sext i16 %81 to i64
  %82 = load i32, i32* %list.addr, align 4
  %idxprom78 = sext i32 %82 to i64
  %83 = load i32, i32* %block_x.addr, align 4
  %idxprom79 = sext i32 %83 to i64
  %84 = load i32, i32* %block_y.addr, align 4
  %idxprom80 = sext i32 %84 to i64
  %85 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx81 = getelementptr inbounds i16*****, i16****** %85, i64 %idxprom80
  %86 = load i16*****, i16****** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i16****, i16***** %86, i64 %idxprom79
  %87 = load i16****, i16***** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i16***, i16**** %87, i64 %idxprom78
  %88 = load i16***, i16**** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i16**, i16*** %88, i64 %idxprom77
  %89 = load i16**, i16*** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i16*, i16** %89, i64 1
  %90 = load i16*, i16** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %90, i64 1
  %91 = load i16, i16* %arrayidx86, align 2
  store i16 %91, i16* @smpUMHEX_pred_MV_uplayer_Y, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.66, %if.else.64
  br label %if.end.87

if.end.87:                                        ; preds = %if.end, %if.then.43
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.20
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then
  %92 = load i32, i32* %blocktype.addr, align 4
  %cmp90 = icmp sgt i32 %92, 1
  br i1 %cmp90, label %if.then.91, label %if.end.211

if.then.91:                                       ; preds = %if.end.89
  %93 = load i32, i32* %blocktype.addr, align 4
  %cmp92 = icmp sgt i32 %93, 6
  br i1 %cmp92, label %if.then.93, label %if.else.113

if.then.93:                                       ; preds = %if.then.91
  %94 = load i32, i32* %list.addr, align 4
  %cmp94 = icmp eq i32 %94, 1
  br i1 %cmp94, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.93
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 39
  %96 = load i32, i32* %pix_x, align 4
  %shr = ashr i32 %96, 2
  %97 = load i32, i32* %block_x.addr, align 4
  %add = add nsw i32 %shr, %97
  %idxprom95 = sext i32 %add to i64
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 40
  %99 = load i32, i32* %pix_y, align 4
  %shr96 = ashr i32 %99, 2
  %100 = load i32, i32* %block_y.addr, align 4
  %add97 = add nsw i32 %shr96, %100
  %idxprom98 = sext i32 %add97 to i64
  %101 = load i32***, i32**** @smpUMHEX_l1_cost, align 8
  %arrayidx99 = getelementptr inbounds i32**, i32*** %101, i64 5
  %102 = load i32**, i32*** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32*, i32** %102, i64 %idxprom98
  %103 = load i32*, i32** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %103, i64 %idxprom95
  %104 = load i32, i32* %arrayidx101, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.93
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 39
  %106 = load i32, i32* %pix_x102, align 4
  %shr103 = ashr i32 %106, 2
  %107 = load i32, i32* %block_x.addr, align 4
  %add104 = add nsw i32 %shr103, %107
  %idxprom105 = sext i32 %add104 to i64
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 40
  %109 = load i32, i32* %pix_y106, align 4
  %shr107 = ashr i32 %109, 2
  %110 = load i32, i32* %block_y.addr, align 4
  %add108 = add nsw i32 %shr107, %110
  %idxprom109 = sext i32 %add108 to i64
  %111 = load i32***, i32**** @smpUMHEX_l0_cost, align 8
  %arrayidx110 = getelementptr inbounds i32**, i32*** %111, i64 5
  %112 = load i32**, i32*** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32*, i32** %112, i64 %idxprom109
  %113 = load i32*, i32** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %113, i64 %idxprom105
  %114 = load i32, i32* %arrayidx112, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %104, %cond.true ], [ %114, %cond.false ]
  store i32 %cond, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  %115 = load i32, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  %div = sdiv i32 %115, 2
  store i32 %div, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  br label %if.end.206

if.else.113:                                      ; preds = %if.then.91
  %116 = load i32, i32* %blocktype.addr, align 4
  %cmp114 = icmp sgt i32 %116, 4
  br i1 %cmp114, label %if.then.115, label %if.else.144

if.then.115:                                      ; preds = %if.else.113
  %117 = load i32, i32* %list.addr, align 4
  %cmp116 = icmp eq i32 %117, 1
  br i1 %cmp116, label %cond.true.117, label %cond.false.129

cond.true.117:                                    ; preds = %if.then.115
  %118 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x118 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %118, i32 0, i32 39
  %119 = load i32, i32* %pix_x118, align 4
  %shr119 = ashr i32 %119, 2
  %120 = load i32, i32* %block_x.addr, align 4
  %add120 = add nsw i32 %shr119, %120
  %idxprom121 = sext i32 %add120 to i64
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y122 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 40
  %122 = load i32, i32* %pix_y122, align 4
  %shr123 = ashr i32 %122, 2
  %123 = load i32, i32* %block_y.addr, align 4
  %add124 = add nsw i32 %shr123, %123
  %idxprom125 = sext i32 %add124 to i64
  %124 = load i32***, i32**** @smpUMHEX_l1_cost, align 8
  %arrayidx126 = getelementptr inbounds i32**, i32*** %124, i64 4
  %125 = load i32**, i32*** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i32*, i32** %125, i64 %idxprom125
  %126 = load i32*, i32** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %126, i64 %idxprom121
  %127 = load i32, i32* %arrayidx128, align 4
  br label %cond.end.141

cond.false.129:                                   ; preds = %if.then.115
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x130 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 39
  %129 = load i32, i32* %pix_x130, align 4
  %shr131 = ashr i32 %129, 2
  %130 = load i32, i32* %block_x.addr, align 4
  %add132 = add nsw i32 %shr131, %130
  %idxprom133 = sext i32 %add132 to i64
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y134 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 40
  %132 = load i32, i32* %pix_y134, align 4
  %shr135 = ashr i32 %132, 2
  %133 = load i32, i32* %block_y.addr, align 4
  %add136 = add nsw i32 %shr135, %133
  %idxprom137 = sext i32 %add136 to i64
  %134 = load i32***, i32**** @smpUMHEX_l0_cost, align 8
  %arrayidx138 = getelementptr inbounds i32**, i32*** %134, i64 4
  %135 = load i32**, i32*** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i32*, i32** %135, i64 %idxprom137
  %136 = load i32*, i32** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %136, i64 %idxprom133
  %137 = load i32, i32* %arrayidx140, align 4
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.129, %cond.true.117
  %cond142 = phi i32 [ %127, %cond.true.117 ], [ %137, %cond.false.129 ]
  store i32 %cond142, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  %138 = load i32, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  %div143 = sdiv i32 %138, 2
  store i32 %div143, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  br label %if.end.205

if.else.144:                                      ; preds = %if.else.113
  %139 = load i32, i32* %blocktype.addr, align 4
  %cmp145 = icmp eq i32 %139, 4
  br i1 %cmp145, label %if.then.146, label %if.else.175

if.then.146:                                      ; preds = %if.else.144
  %140 = load i32, i32* %list.addr, align 4
  %cmp147 = icmp eq i32 %140, 1
  br i1 %cmp147, label %cond.true.148, label %cond.false.160

cond.true.148:                                    ; preds = %if.then.146
  %141 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x149 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %141, i32 0, i32 39
  %142 = load i32, i32* %pix_x149, align 4
  %shr150 = ashr i32 %142, 2
  %143 = load i32, i32* %block_x.addr, align 4
  %add151 = add nsw i32 %shr150, %143
  %idxprom152 = sext i32 %add151 to i64
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 40
  %145 = load i32, i32* %pix_y153, align 4
  %shr154 = ashr i32 %145, 2
  %146 = load i32, i32* %block_y.addr, align 4
  %add155 = add nsw i32 %shr154, %146
  %idxprom156 = sext i32 %add155 to i64
  %147 = load i32***, i32**** @smpUMHEX_l1_cost, align 8
  %arrayidx157 = getelementptr inbounds i32**, i32*** %147, i64 2
  %148 = load i32**, i32*** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i32*, i32** %148, i64 %idxprom156
  %149 = load i32*, i32** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %149, i64 %idxprom152
  %150 = load i32, i32* %arrayidx159, align 4
  br label %cond.end.172

cond.false.160:                                   ; preds = %if.then.146
  %151 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x161 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %151, i32 0, i32 39
  %152 = load i32, i32* %pix_x161, align 4
  %shr162 = ashr i32 %152, 2
  %153 = load i32, i32* %block_x.addr, align 4
  %add163 = add nsw i32 %shr162, %153
  %idxprom164 = sext i32 %add163 to i64
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y165 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 40
  %155 = load i32, i32* %pix_y165, align 4
  %shr166 = ashr i32 %155, 2
  %156 = load i32, i32* %block_y.addr, align 4
  %add167 = add nsw i32 %shr166, %156
  %idxprom168 = sext i32 %add167 to i64
  %157 = load i32***, i32**** @smpUMHEX_l0_cost, align 8
  %arrayidx169 = getelementptr inbounds i32**, i32*** %157, i64 2
  %158 = load i32**, i32*** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds i32*, i32** %158, i64 %idxprom168
  %159 = load i32*, i32** %arrayidx170, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %159, i64 %idxprom164
  %160 = load i32, i32* %arrayidx171, align 4
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.160, %cond.true.148
  %cond173 = phi i32 [ %150, %cond.true.148 ], [ %160, %cond.false.160 ]
  store i32 %cond173, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  %161 = load i32, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  %div174 = sdiv i32 %161, 2
  store i32 %div174, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  br label %if.end.204

if.else.175:                                      ; preds = %if.else.144
  %162 = load i32, i32* %list.addr, align 4
  %cmp176 = icmp eq i32 %162, 1
  br i1 %cmp176, label %cond.true.177, label %cond.false.189

cond.true.177:                                    ; preds = %if.else.175
  %163 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %163, i32 0, i32 39
  %164 = load i32, i32* %pix_x178, align 4
  %shr179 = ashr i32 %164, 2
  %165 = load i32, i32* %block_x.addr, align 4
  %add180 = add nsw i32 %shr179, %165
  %idxprom181 = sext i32 %add180 to i64
  %166 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y182 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %166, i32 0, i32 40
  %167 = load i32, i32* %pix_y182, align 4
  %shr183 = ashr i32 %167, 2
  %168 = load i32, i32* %block_y.addr, align 4
  %add184 = add nsw i32 %shr183, %168
  %idxprom185 = sext i32 %add184 to i64
  %169 = load i32***, i32**** @smpUMHEX_l1_cost, align 8
  %arrayidx186 = getelementptr inbounds i32**, i32*** %169, i64 1
  %170 = load i32**, i32*** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32*, i32** %170, i64 %idxprom185
  %171 = load i32*, i32** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %171, i64 %idxprom181
  %172 = load i32, i32* %arrayidx188, align 4
  br label %cond.end.201

cond.false.189:                                   ; preds = %if.else.175
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x190 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 39
  %174 = load i32, i32* %pix_x190, align 4
  %shr191 = ashr i32 %174, 2
  %175 = load i32, i32* %block_x.addr, align 4
  %add192 = add nsw i32 %shr191, %175
  %idxprom193 = sext i32 %add192 to i64
  %176 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y194 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %176, i32 0, i32 40
  %177 = load i32, i32* %pix_y194, align 4
  %shr195 = ashr i32 %177, 2
  %178 = load i32, i32* %block_y.addr, align 4
  %add196 = add nsw i32 %shr195, %178
  %idxprom197 = sext i32 %add196 to i64
  %179 = load i32***, i32**** @smpUMHEX_l0_cost, align 8
  %arrayidx198 = getelementptr inbounds i32**, i32*** %179, i64 1
  %180 = load i32**, i32*** %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds i32*, i32** %180, i64 %idxprom197
  %181 = load i32*, i32** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %181, i64 %idxprom193
  %182 = load i32, i32* %arrayidx200, align 4
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.189, %cond.true.177
  %cond202 = phi i32 [ %172, %cond.true.177 ], [ %182, %cond.false.189 ]
  store i32 %cond202, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  %183 = load i32, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  %div203 = sdiv i32 %183, 2
  store i32 %div203, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %cond.end.201, %cond.end.172
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %cond.end.141
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %cond.end
  %184 = load i32, i32* @smpUMHEX_flag_intra_SAD, align 4
  %tobool = icmp ne i32 %184, 0
  br i1 %tobool, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %if.end.206
  br label %cond.end.209

cond.false.208:                                   ; preds = %if.end.206
  %185 = load i32, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.207
  %cond210 = phi i32 [ 0, %cond.true.207 ], [ %185, %cond.false.208 ]
  store i32 %cond210, i32* @smpUMHEX_pred_SAD_uplayer, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %cond.end.209, %if.end.89
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
