; ModuleID = './MultiSource.Applications.JM/74.lencod.mb_access.bc'
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@img = external global %struct.ImageParameters*, align 8
@PicPos = common global i32** null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
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

; Function Attrs: nounwind uwtable
define i32 @mb_is_available(i32 %mbAddr, i32 %currMbAddr) #0 {
entry:
  %retval = alloca i32, align 4
  %mbAddr.addr = alloca i32, align 4
  %currMbAddr.addr = alloca i32, align 4
  store i32 %mbAddr, i32* %mbAddr.addr, align 4
  store i32 %currMbAddr, i32* %currMbAddr.addr, align 4
  %0 = load i32, i32* %mbAddr.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %mbAddr.addr, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 119
  %3 = load i32, i32* %PicSizeInMbs, align 4
  %sub = sub nsw i32 %3, 1
  %cmp1 = icmp sgt i32 %1, %sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 136
  %5 = load i32, i32* %DeblockCall, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.10, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %mbAddr.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 61
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 0
  %9 = load i32, i32* %slice_nr, align 4
  %10 = load i32, i32* %currMbAddr.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 61
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_data4, align 8
  %arrayidx5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i64 %idxprom3
  %slice_nr6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx5, i32 0, i32 0
  %13 = load i32, i32* %slice_nr6, align 4
  %cmp7 = icmp ne i32 %9, %13
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @CheckAvailabilityOfNeighbors() #0 {
entry:
  %mb_nr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %cur_mb_pair = alloca i32, align 4
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
  %5 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i32 0, i32 6
  store %struct.macroblock* null, %struct.macroblock** %mb_available_up, align 8
  %6 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i32 0, i32 7
  store %struct.macroblock* null, %struct.macroblock** %mb_available_left, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 100
  %8 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %mb_nr, align 4
  %shr = ashr i32 %9, 1
  store i32 %shr, i32* %cur_mb_pair, align 4
  %10 = load i32, i32* %cur_mb_pair, align 4
  %sub = sub nsw i32 %10, 1
  %mul = mul nsw i32 2, %sub
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 22
  store i32 %mul, i32* %mbAddrA, align 4
  %12 = load i32, i32* %cur_mb_pair, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 116
  %14 = load i32, i32* %PicWidthInMbs, align 4
  %sub1 = sub i32 %12, %14
  %mul2 = mul i32 2, %sub1
  %15 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 23
  store i32 %mul2, i32* %mbAddrB, align 4
  %16 = load i32, i32* %cur_mb_pair, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 116
  %18 = load i32, i32* %PicWidthInMbs3, align 4
  %sub4 = sub i32 %16, %18
  %add = add i32 %sub4, 1
  %mul5 = mul i32 2, %add
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 24
  store i32 %mul5, i32* %mbAddrC, align 4
  %20 = load i32, i32* %cur_mb_pair, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 116
  %22 = load i32, i32* %PicWidthInMbs6, align 4
  %sub7 = sub i32 %20, %22
  %sub8 = sub i32 %sub7, 1
  %mul9 = mul i32 2, %sub8
  %23 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 25
  store i32 %mul9, i32* %mbAddrD, align 4
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 22
  %25 = load i32, i32* %mbAddrA10, align 4
  %26 = load i32, i32* %mb_nr, align 4
  %call = call i32 @mb_is_available(i32 %25, i32 %26)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %27 = load i32, i32* %cur_mb_pair, align 4
  %idxprom12 = sext i32 %27 to i64
  %28 = load i32**, i32*** @PicPos, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %28, i64 %idxprom12
  %29 = load i32*, i32** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx14, align 4
  %cmp = icmp ne i32 %30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %31 = phi i1 [ false, %if.then ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  %32 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i32 0, i32 26
  store i32 %land.ext, i32* %mbAvailA, align 4
  %33 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB15 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %33, i32 0, i32 23
  %34 = load i32, i32* %mbAddrB15, align 4
  %35 = load i32, i32* %mb_nr, align 4
  %call16 = call i32 @mb_is_available(i32 %34, i32 %35)
  %36 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %36, i32 0, i32 27
  store i32 %call16, i32* %mbAvailB, align 4
  %37 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC17 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i32 0, i32 24
  %38 = load i32, i32* %mbAddrC17, align 4
  %39 = load i32, i32* %mb_nr, align 4
  %call18 = call i32 @mb_is_available(i32 %38, i32 %39)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.rhs.20, label %land.end.26

land.rhs.20:                                      ; preds = %land.end
  %40 = load i32, i32* %cur_mb_pair, align 4
  %add21 = add nsw i32 %40, 1
  %idxprom22 = sext i32 %add21 to i64
  %41 = load i32**, i32*** @PicPos, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %41, i64 %idxprom22
  %42 = load i32*, i32** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %42, i64 0
  %43 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp ne i32 %43, 0
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.20, %land.end
  %44 = phi i1 [ false, %land.end ], [ %cmp25, %land.rhs.20 ]
  %land.ext27 = zext i1 %44 to i32
  %45 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %45, i32 0, i32 28
  store i32 %land.ext27, i32* %mbAvailC, align 4
  %46 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %46, i32 0, i32 25
  %47 = load i32, i32* %mbAddrD28, align 4
  %48 = load i32, i32* %mb_nr, align 4
  %call29 = call i32 @mb_is_available(i32 %47, i32 %48)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.rhs.31, label %land.end.36

land.rhs.31:                                      ; preds = %land.end.26
  %49 = load i32, i32* %cur_mb_pair, align 4
  %idxprom32 = sext i32 %49 to i64
  %50 = load i32**, i32*** @PicPos, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %50, i64 %idxprom32
  %51 = load i32*, i32** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %51, i64 0
  %52 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp ne i32 %52, 0
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.31, %land.end.26
  %53 = phi i1 [ false, %land.end.26 ], [ %cmp35, %land.rhs.31 ]
  %land.ext37 = zext i1 %53 to i32
  %54 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %54, i32 0, i32 29
  store i32 %land.ext37, i32* %mbAvailD, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %55 = load i32, i32* %mb_nr, align 4
  %sub38 = sub nsw i32 %55, 1
  %56 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA39 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %56, i32 0, i32 22
  store i32 %sub38, i32* %mbAddrA39, align 4
  %57 = load i32, i32* %mb_nr, align 4
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 116
  %59 = load i32, i32* %PicWidthInMbs40, align 4
  %sub41 = sub i32 %57, %59
  %60 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB42 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 23
  store i32 %sub41, i32* %mbAddrB42, align 4
  %61 = load i32, i32* %mb_nr, align 4
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 116
  %63 = load i32, i32* %PicWidthInMbs43, align 4
  %sub44 = sub i32 %61, %63
  %add45 = add i32 %sub44, 1
  %64 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC46 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %64, i32 0, i32 24
  store i32 %add45, i32* %mbAddrC46, align 4
  %65 = load i32, i32* %mb_nr, align 4
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 116
  %67 = load i32, i32* %PicWidthInMbs47, align 4
  %sub48 = sub i32 %65, %67
  %sub49 = sub i32 %sub48, 1
  %68 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD50 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %68, i32 0, i32 25
  store i32 %sub49, i32* %mbAddrD50, align 4
  %69 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA51 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %69, i32 0, i32 22
  %70 = load i32, i32* %mbAddrA51, align 4
  %71 = load i32, i32* %mb_nr, align 4
  %call52 = call i32 @mb_is_available(i32 %70, i32 %71)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %land.rhs.54, label %land.end.59

land.rhs.54:                                      ; preds = %if.else
  %72 = load i32, i32* %mb_nr, align 4
  %idxprom55 = sext i32 %72 to i64
  %73 = load i32**, i32*** @PicPos, align 8
  %arrayidx56 = getelementptr inbounds i32*, i32** %73, i64 %idxprom55
  %74 = load i32*, i32** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %74, i64 0
  %75 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp ne i32 %75, 0
  br label %land.end.59

land.end.59:                                      ; preds = %land.rhs.54, %if.else
  %76 = phi i1 [ false, %if.else ], [ %cmp58, %land.rhs.54 ]
  %land.ext60 = zext i1 %76 to i32
  %77 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA61 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %77, i32 0, i32 26
  store i32 %land.ext60, i32* %mbAvailA61, align 4
  %78 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB62 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %78, i32 0, i32 23
  %79 = load i32, i32* %mbAddrB62, align 4
  %80 = load i32, i32* %mb_nr, align 4
  %call63 = call i32 @mb_is_available(i32 %79, i32 %80)
  %81 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB64 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i32 0, i32 27
  store i32 %call63, i32* %mbAvailB64, align 4
  %82 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 24
  %83 = load i32, i32* %mbAddrC65, align 4
  %84 = load i32, i32* %mb_nr, align 4
  %call66 = call i32 @mb_is_available(i32 %83, i32 %84)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %land.rhs.68, label %land.end.74

land.rhs.68:                                      ; preds = %land.end.59
  %85 = load i32, i32* %mb_nr, align 4
  %add69 = add nsw i32 %85, 1
  %idxprom70 = sext i32 %add69 to i64
  %86 = load i32**, i32*** @PicPos, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %86, i64 %idxprom70
  %87 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %87, i64 0
  %88 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp ne i32 %88, 0
  br label %land.end.74

land.end.74:                                      ; preds = %land.rhs.68, %land.end.59
  %89 = phi i1 [ false, %land.end.59 ], [ %cmp73, %land.rhs.68 ]
  %land.ext75 = zext i1 %89 to i32
  %90 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailC76 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %90, i32 0, i32 28
  store i32 %land.ext75, i32* %mbAvailC76, align 4
  %91 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %91, i32 0, i32 25
  %92 = load i32, i32* %mbAddrD77, align 4
  %93 = load i32, i32* %mb_nr, align 4
  %call78 = call i32 @mb_is_available(i32 %92, i32 %93)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %land.rhs.80, label %land.end.85

land.rhs.80:                                      ; preds = %land.end.74
  %94 = load i32, i32* %mb_nr, align 4
  %idxprom81 = sext i32 %94 to i64
  %95 = load i32**, i32*** @PicPos, align 8
  %arrayidx82 = getelementptr inbounds i32*, i32** %95, i64 %idxprom81
  %96 = load i32*, i32** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %96, i64 0
  %97 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp ne i32 %97, 0
  br label %land.end.85

land.end.85:                                      ; preds = %land.rhs.80, %land.end.74
  %98 = phi i1 [ false, %land.end.74 ], [ %cmp84, %land.rhs.80 ]
  %land.ext86 = zext i1 %98 to i32
  %99 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailD87 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 29
  store i32 %land.ext86, i32* %mbAvailD87, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.85, %land.end.36
  %100 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA88 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %100, i32 0, i32 26
  %101 = load i32, i32* %mbAvailA88, align 4
  %tobool89 = icmp ne i32 %101, 0
  br i1 %tobool89, label %if.then.90, label %if.end.96

if.then.90:                                       ; preds = %if.end
  %102 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA91 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %102, i32 0, i32 22
  %103 = load i32, i32* %mbAddrA91, align 4
  %idxprom92 = sext i32 %103 to i64
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 61
  %105 = load %struct.macroblock*, %struct.macroblock** %mb_data93, align 8
  %arrayidx94 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %105, i64 %idxprom92
  %106 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left95 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %106, i32 0, i32 7
  store %struct.macroblock* %arrayidx94, %struct.macroblock** %mb_available_left95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.90, %if.end
  %107 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB97 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %107, i32 0, i32 27
  %108 = load i32, i32* %mbAvailB97, align 4
  %tobool98 = icmp ne i32 %108, 0
  br i1 %tobool98, label %if.then.99, label %if.end.105

if.then.99:                                       ; preds = %if.end.96
  %109 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB100 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %109, i32 0, i32 23
  %110 = load i32, i32* %mbAddrB100, align 4
  %idxprom101 = sext i32 %110 to i64
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 61
  %112 = load %struct.macroblock*, %struct.macroblock** %mb_data102, align 8
  %arrayidx103 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %112, i64 %idxprom101
  %113 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up104 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %113, i32 0, i32 6
  store %struct.macroblock* %arrayidx103, %struct.macroblock** %mb_available_up104, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.99, %if.end.96
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_mb_block_pos_normal(i32 %mb_addr, i32* %x, i32* %y) #0 {
entry:
  %mb_addr.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32 %mb_addr, i32* %mb_addr.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32, i32* %mb_addr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32**, i32*** @PicPos, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %4 = load i32*, i32** %x.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %mb_addr.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32**, i32*** @PicPos, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %6, i64 %idxprom2
  %7 = load i32*, i32** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32*, i32** %y.addr, align 8
  store i32 %8, i32* %9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_mb_block_pos_mbaff(i32 %mb_addr, i32* %x, i32* %y) #0 {
entry:
  %mb_addr.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32 %mb_addr, i32* %mb_addr.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32, i32* %mb_addr.addr, align 4
  %shr = ashr i32 %0, 1
  %idxprom = sext i32 %shr to i64
  %1 = load i32**, i32*** @PicPos, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %4 = load i32*, i32** %x.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %mb_addr.addr, align 4
  %shr2 = ashr i32 %5, 1
  %idxprom3 = sext i32 %shr2 to i64
  %6 = load i32**, i32*** @PicPos, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %6, i64 %idxprom3
  %7 = load i32*, i32** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx5, align 4
  %shl = shl i32 %8, 1
  %9 = load i32, i32* %mb_addr.addr, align 4
  %and = and i32 %9, 1
  %add = add nsw i32 %shl, %and
  %10 = load i32*, i32** %y.addr, align 8
  store i32 %add, i32* %10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_mb_pos(i32 %mb_addr, i32* %x, i32* %y, i32 %is_chroma) #0 {
entry:
  %mb_addr.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %is_chroma.addr = alloca i32, align 4
  store i32 %mb_addr, i32* %mb_addr.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32 %is_chroma, i32* %is_chroma.addr, align 4
  %0 = load void (i32, i32*, i32*)*, void (i32, i32*, i32*)** @get_mb_block_pos, align 8
  %1 = load i32, i32* %mb_addr.addr, align 4
  %2 = load i32*, i32** %x.addr, align 8
  %3 = load i32*, i32** %y.addr, align 8
  call void %0(i32 %1, i32* %2, i32* %3)
  %4 = load i32, i32* %is_chroma.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 164
  %arrayidx = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %6 = load i32, i32* %arrayidx1, align 4
  %7 = load i32*, i32** %x.addr, align 8
  %8 = load i32, i32* %7, align 4
  %mul = mul nsw i32 %8, %6
  store i32 %mul, i32* %7, align 4
  %9 = load i32, i32* %is_chroma.addr, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 164
  %arrayidx4 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size3, i32 0, i64 %idxprom2
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 1
  %11 = load i32, i32* %arrayidx5, align 4
  %12 = load i32*, i32** %y.addr, align 8
  %13 = load i32, i32* %12, align 4
  %mul6 = mul nsw i32 %13, %11
  store i32 %mul6, i32* %12, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @getNonAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %is_chroma, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %xN.addr = alloca i32, align 4
  %yN.addr = alloca i32, align 4
  %is_chroma.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  %currMb = alloca %struct.macroblock*, align 8
  %maxW = alloca i32, align 4
  %maxH = alloca i32, align 4
  %CurPos = alloca i32*, align 8
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %xN, i32* %xN.addr, align 4
  store i32 %yN, i32* %yN.addr, align 4
  store i32 %is_chroma, i32* %is_chroma.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load i32, i32* %curr_mb_nr.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 61
  %2 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %2, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMb, align 8
  %3 = load i32, i32* %is_chroma.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 164
  %arrayidx2 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size, i32 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %maxW, align 4
  %6 = load i32, i32* %is_chroma.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 164
  %arrayidx6 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size5, i32 0, i64 %idxprom4
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 1
  %8 = load i32, i32* %arrayidx7, align 4
  store i32 %8, i32* %maxH, align 4
  %9 = load i32, i32* %xN.addr, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %yN.addr, align 4
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 25
  %12 = load i32, i32* %mbAddrD, align 4
  %13 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %13, i32 0, i32 1
  store i32 %12, i32* %mb_addr, align 4
  %14 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 29
  %15 = load i32, i32* %mbAvailD, align 4
  %16 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %16, i32 0, i32 0
  store i32 %15, i32* %available, align 4
  br label %if.end.49

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load i32, i32* %xN.addr, align 4
  %cmp9 = icmp slt i32 %17, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.17

land.lhs.true.10:                                 ; preds = %if.else
  %18 = load i32, i32* %yN.addr, align 4
  %cmp11 = icmp sge i32 %18, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.17

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %19 = load i32, i32* %yN.addr, align 4
  %20 = load i32, i32* %maxH, align 4
  %cmp13 = icmp slt i32 %19, %20
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %land.lhs.true.12
  %21 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 22
  %22 = load i32, i32* %mbAddrA, align 4
  %23 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr15 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %23, i32 0, i32 1
  store i32 %22, i32* %mb_addr15, align 4
  %24 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 26
  %25 = load i32, i32* %mbAvailA, align 4
  %26 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available16 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %26, i32 0, i32 0
  store i32 %25, i32* %available16, align 4
  br label %if.end.48

if.else.17:                                       ; preds = %land.lhs.true.12, %land.lhs.true.10, %if.else
  %27 = load i32, i32* %xN.addr, align 4
  %cmp18 = icmp sge i32 %27, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.26

land.lhs.true.19:                                 ; preds = %if.else.17
  %28 = load i32, i32* %xN.addr, align 4
  %29 = load i32, i32* %maxW, align 4
  %cmp20 = icmp slt i32 %28, %29
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.26

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %30 = load i32, i32* %yN.addr, align 4
  %cmp22 = icmp slt i32 %30, 0
  br i1 %cmp22, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %land.lhs.true.21
  %31 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 23
  %32 = load i32, i32* %mbAddrB, align 4
  %33 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr24 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %33, i32 0, i32 1
  store i32 %32, i32* %mb_addr24, align 4
  %34 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i32 0, i32 27
  %35 = load i32, i32* %mbAvailB, align 4
  %36 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available25 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %36, i32 0, i32 0
  store i32 %35, i32* %available25, align 4
  br label %if.end.47

if.else.26:                                       ; preds = %land.lhs.true.21, %land.lhs.true.19, %if.else.17
  %37 = load i32, i32* %xN.addr, align 4
  %cmp27 = icmp sge i32 %37, 0
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.37

land.lhs.true.28:                                 ; preds = %if.else.26
  %38 = load i32, i32* %xN.addr, align 4
  %39 = load i32, i32* %maxW, align 4
  %cmp29 = icmp slt i32 %38, %39
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.37

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %40 = load i32, i32* %yN.addr, align 4
  %cmp31 = icmp sge i32 %40, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %41 = load i32, i32* %yN.addr, align 4
  %42 = load i32, i32* %maxH, align 4
  %cmp33 = icmp slt i32 %41, %42
  br i1 %cmp33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %land.lhs.true.32
  %43 = load i32, i32* %curr_mb_nr.addr, align 4
  %44 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr35 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %44, i32 0, i32 1
  store i32 %43, i32* %mb_addr35, align 4
  %45 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available36 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %45, i32 0, i32 0
  store i32 1, i32* %available36, align 4
  br label %if.end.46

if.else.37:                                       ; preds = %land.lhs.true.32, %land.lhs.true.30, %land.lhs.true.28, %if.else.26
  %46 = load i32, i32* %xN.addr, align 4
  %47 = load i32, i32* %maxW, align 4
  %cmp38 = icmp sge i32 %46, %47
  br i1 %cmp38, label %land.lhs.true.39, label %if.else.44

land.lhs.true.39:                                 ; preds = %if.else.37
  %48 = load i32, i32* %yN.addr, align 4
  %cmp40 = icmp slt i32 %48, 0
  br i1 %cmp40, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %land.lhs.true.39
  %49 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i32 0, i32 24
  %50 = load i32, i32* %mbAddrC, align 4
  %51 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr42 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %51, i32 0, i32 1
  store i32 %50, i32* %mb_addr42, align 4
  %52 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %52, i32 0, i32 28
  %53 = load i32, i32* %mbAvailC, align 4
  %54 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available43 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %54, i32 0, i32 0
  store i32 %53, i32* %available43, align 4
  br label %if.end

if.else.44:                                       ; preds = %land.lhs.true.39, %if.else.37
  %55 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available45 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %55, i32 0, i32 0
  store i32 0, i32* %available45, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.44, %if.then.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end, %if.then.34
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.23
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.14
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then
  %56 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available50 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %56, i32 0, i32 0
  %57 = load i32, i32* %available50, align 4
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.49
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 136
  %59 = load i32, i32* %DeblockCall, align 4
  %tobool51 = icmp ne i32 %59, 0
  br i1 %tobool51, label %if.then.52, label %if.end.64

if.then.52:                                       ; preds = %lor.lhs.false, %if.end.49
  %60 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr53 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %60, i32 0, i32 1
  %61 = load i32, i32* %mb_addr53, align 4
  %idxprom54 = sext i32 %61 to i64
  %62 = load i32**, i32*** @PicPos, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %62, i64 %idxprom54
  %63 = load i32*, i32** %arrayidx55, align 8
  store i32* %63, i32** %CurPos, align 8
  %64 = load i32, i32* %xN.addr, align 4
  %65 = load i32, i32* %maxW, align 4
  %sub = sub nsw i32 %65, 1
  %and = and i32 %64, %sub
  %66 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %66, i32 0, i32 2
  store i32 %and, i32* %x, align 4
  %67 = load i32, i32* %yN.addr, align 4
  %68 = load i32, i32* %maxH, align 4
  %sub56 = sub nsw i32 %68, 1
  %and57 = and i32 %67, %sub56
  %69 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %69, i32 0, i32 3
  store i32 %and57, i32* %y, align 4
  %70 = load i32*, i32** %CurPos, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %70, i64 0
  %71 = load i32, i32* %arrayidx58, align 4
  %72 = load i32, i32* %maxW, align 4
  %mul = mul nsw i32 %71, %72
  %73 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x59 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %73, i32 0, i32 2
  %74 = load i32, i32* %x59, align 4
  %add = add nsw i32 %mul, %74
  %75 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %75, i32 0, i32 4
  store i32 %add, i32* %pos_x, align 4
  %76 = load i32*, i32** %CurPos, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %76, i64 1
  %77 = load i32, i32* %arrayidx60, align 4
  %78 = load i32, i32* %maxH, align 4
  %mul61 = mul nsw i32 %77, %78
  %79 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y62 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %79, i32 0, i32 3
  %80 = load i32, i32* %y62, align 4
  %add63 = add nsw i32 %mul61, %80
  %81 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %81, i32 0, i32 5
  store i32 %add63, i32* %pos_y, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.52, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define void @getAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %is_chroma, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %xN.addr = alloca i32, align 4
  %yN.addr = alloca i32, align 4
  %is_chroma.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  %currMb = alloca %struct.macroblock*, align 8
  %maxW = alloca i32, align 4
  %maxH = alloca i32, align 4
  %yM = alloca i32, align 4
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %xN, i32* %xN.addr, align 4
  store i32 %yN, i32* %yN.addr, align 4
  store i32 %is_chroma, i32* %is_chroma.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load i32, i32* %curr_mb_nr.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 61
  %2 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %2, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMb, align 8
  store i32 -1, i32* %yM, align 4
  %3 = load i32, i32* %is_chroma.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 164
  %arrayidx2 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size, i32 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %maxW, align 4
  %6 = load i32, i32* %is_chroma.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_size5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 164
  %arrayidx6 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size5, i32 0, i64 %idxprom4
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 1
  %8 = load i32, i32* %arrayidx7, align 4
  store i32 %8, i32* %maxH, align 4
  %9 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %9, i32 0, i32 0
  store i32 0, i32* %available, align 4
  %10 = load i32, i32* %yN.addr, align 4
  %11 = load i32, i32* %maxH, align 4
  %sub = sub nsw i32 %11, 1
  %cmp = icmp sgt i32 %10, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.370

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %xN.addr, align 4
  %13 = load i32, i32* %maxW, align 4
  %sub8 = sub nsw i32 %13, 1
  %cmp9 = icmp sgt i32 %12, %sub8
  br i1 %cmp9, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, i32* %yN.addr, align 4
  %cmp10 = icmp sge i32 %14, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %15 = load i32, i32* %yN.addr, align 4
  %16 = load i32, i32* %maxH, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11
  br label %if.end.370

if.end.14:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end
  %17 = load i32, i32* %xN.addr, align 4
  %cmp15 = icmp slt i32 %17, 0
  br i1 %cmp15, label %if.then.16, label %if.else.202

if.then.16:                                       ; preds = %if.end.14
  %18 = load i32, i32* %yN.addr, align 4
  %cmp17 = icmp slt i32 %18, 0
  br i1 %cmp17, label %if.then.18, label %if.else.72

if.then.18:                                       ; preds = %if.then.16
  %19 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 19
  %20 = load i32, i32* %mb_field, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.else.41, label %if.then.19

if.then.19:                                       ; preds = %if.then.18
  %21 = load i32, i32* %curr_mb_nr.addr, align 4
  %and = and i32 %21, 1
  %cmp20 = icmp eq i32 %and, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.19
  %22 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 25
  %23 = load i32, i32* %mbAddrD, align 4
  %add = add nsw i32 %23, 1
  %24 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %24, i32 0, i32 1
  store i32 %add, i32* %mb_addr, align 4
  %25 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i32 0, i32 29
  %26 = load i32, i32* %mbAvailD, align 4
  %27 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available22 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %27, i32 0, i32 0
  store i32 %26, i32* %available22, align 4
  %28 = load i32, i32* %yN.addr, align 4
  store i32 %28, i32* %yM, align 4
  br label %if.end.40

if.else:                                          ; preds = %if.then.19
  %29 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 22
  %30 = load i32, i32* %mbAddrA, align 4
  %31 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr23 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %31, i32 0, i32 1
  store i32 %30, i32* %mb_addr23, align 4
  %32 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i32 0, i32 26
  %33 = load i32, i32* %mbAvailA, align 4
  %34 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available24 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %34, i32 0, i32 0
  store i32 %33, i32* %available24, align 4
  %35 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA25 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 26
  %36 = load i32, i32* %mbAvailA25, align 4
  %tobool26 = icmp ne i32 %36, 0
  br i1 %tobool26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.else
  %37 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i32 0, i32 22
  %38 = load i32, i32* %mbAddrA28, align 4
  %idxprom29 = sext i32 %38 to i64
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 61
  %40 = load %struct.macroblock*, %struct.macroblock** %mb_data30, align 8
  %arrayidx31 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %40, i64 %idxprom29
  %mb_field32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx31, i32 0, i32 19
  %41 = load i32, i32* %mb_field32, align 4
  %tobool33 = icmp ne i32 %41, 0
  br i1 %tobool33, label %if.else.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.27
  %42 = load i32, i32* %yN.addr, align 4
  store i32 %42, i32* %yM, align 4
  br label %if.end.38

if.else.35:                                       ; preds = %if.then.27
  %43 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr36 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %43, i32 0, i32 1
  %44 = load i32, i32* %mb_addr36, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %mb_addr36, align 4
  %45 = load i32, i32* %yN.addr, align 4
  %46 = load i32, i32* %maxH, align 4
  %add37 = add nsw i32 %45, %46
  %shr = ashr i32 %add37, 1
  store i32 %shr, i32* %yM, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.21
  br label %if.end.71

if.else.41:                                       ; preds = %if.then.18
  %47 = load i32, i32* %curr_mb_nr.addr, align 4
  %and42 = and i32 %47, 1
  %cmp43 = icmp eq i32 %and42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.64

if.then.44:                                       ; preds = %if.else.41
  %48 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD45 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %48, i32 0, i32 25
  %49 = load i32, i32* %mbAddrD45, align 4
  %50 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr46 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %50, i32 0, i32 1
  store i32 %49, i32* %mb_addr46, align 4
  %51 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD47 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 29
  %52 = load i32, i32* %mbAvailD47, align 4
  %53 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available48 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %53, i32 0, i32 0
  store i32 %52, i32* %available48, align 4
  %54 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD49 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %54, i32 0, i32 29
  %55 = load i32, i32* %mbAvailD49, align 4
  %tobool50 = icmp ne i32 %55, 0
  br i1 %tobool50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %if.then.44
  %56 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD52 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %56, i32 0, i32 25
  %57 = load i32, i32* %mbAddrD52, align 4
  %idxprom53 = sext i32 %57 to i64
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 61
  %59 = load %struct.macroblock*, %struct.macroblock** %mb_data54, align 8
  %arrayidx55 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %59, i64 %idxprom53
  %mb_field56 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx55, i32 0, i32 19
  %60 = load i32, i32* %mb_field56, align 4
  %tobool57 = icmp ne i32 %60, 0
  br i1 %tobool57, label %if.else.61, label %if.then.58

if.then.58:                                       ; preds = %if.then.51
  %61 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr59 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %61, i32 0, i32 1
  %62 = load i32, i32* %mb_addr59, align 4
  %inc60 = add nsw i32 %62, 1
  store i32 %inc60, i32* %mb_addr59, align 4
  %63 = load i32, i32* %yN.addr, align 4
  %mul = mul nsw i32 2, %63
  store i32 %mul, i32* %yM, align 4
  br label %if.end.62

if.else.61:                                       ; preds = %if.then.51
  %64 = load i32, i32* %yN.addr, align 4
  store i32 %64, i32* %yM, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.58
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.44
  br label %if.end.70

if.else.64:                                       ; preds = %if.else.41
  %65 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i32 0, i32 25
  %66 = load i32, i32* %mbAddrD65, align 4
  %add66 = add nsw i32 %66, 1
  %67 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr67 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %67, i32 0, i32 1
  store i32 %add66, i32* %mb_addr67, align 4
  %68 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD68 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %68, i32 0, i32 29
  %69 = load i32, i32* %mbAvailD68, align 4
  %70 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available69 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %70, i32 0, i32 0
  store i32 %69, i32* %available69, align 4
  %71 = load i32, i32* %yN.addr, align 4
  store i32 %71, i32* %yM, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.64, %if.end.63
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.40
  br label %if.end.201

if.else.72:                                       ; preds = %if.then.16
  %72 = load i32, i32* %yN.addr, align 4
  %cmp73 = icmp sge i32 %72, 0
  br i1 %cmp73, label %land.lhs.true.74, label %if.end.200

land.lhs.true.74:                                 ; preds = %if.else.72
  %73 = load i32, i32* %yN.addr, align 4
  %74 = load i32, i32* %maxH, align 4
  %cmp75 = icmp slt i32 %73, %74
  br i1 %cmp75, label %if.then.76, label %if.end.200

if.then.76:                                       ; preds = %land.lhs.true.74
  %75 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %75, i32 0, i32 19
  %76 = load i32, i32* %mb_field77, align 4
  %tobool78 = icmp ne i32 %76, 0
  br i1 %tobool78, label %if.else.133, label %if.then.79

if.then.79:                                       ; preds = %if.then.76
  %77 = load i32, i32* %curr_mb_nr.addr, align 4
  %and80 = and i32 %77, 1
  %cmp81 = icmp eq i32 %and80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.105

if.then.82:                                       ; preds = %if.then.79
  %78 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA83 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %78, i32 0, i32 22
  %79 = load i32, i32* %mbAddrA83, align 4
  %80 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr84 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %80, i32 0, i32 1
  store i32 %79, i32* %mb_addr84, align 4
  %81 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA85 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i32 0, i32 26
  %82 = load i32, i32* %mbAvailA85, align 4
  %83 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available86 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %83, i32 0, i32 0
  store i32 %82, i32* %available86, align 4
  %84 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA87 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i32 0, i32 26
  %85 = load i32, i32* %mbAvailA87, align 4
  %tobool88 = icmp ne i32 %85, 0
  br i1 %tobool88, label %if.then.89, label %if.end.104

if.then.89:                                       ; preds = %if.then.82
  %86 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA90 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i32 0, i32 22
  %87 = load i32, i32* %mbAddrA90, align 4
  %idxprom91 = sext i32 %87 to i64
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data92 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 61
  %89 = load %struct.macroblock*, %struct.macroblock** %mb_data92, align 8
  %arrayidx93 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %89, i64 %idxprom91
  %mb_field94 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx93, i32 0, i32 19
  %90 = load i32, i32* %mb_field94, align 4
  %tobool95 = icmp ne i32 %90, 0
  br i1 %tobool95, label %if.else.97, label %if.then.96

if.then.96:                                       ; preds = %if.then.89
  %91 = load i32, i32* %yN.addr, align 4
  store i32 %91, i32* %yM, align 4
  br label %if.end.103

if.else.97:                                       ; preds = %if.then.89
  %92 = load i32, i32* %yN.addr, align 4
  %and98 = and i32 %92, 1
  %cmp99 = icmp ne i32 %and98, 0
  %conv = zext i1 %cmp99 to i32
  %93 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr100 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %93, i32 0, i32 1
  %94 = load i32, i32* %mb_addr100, align 4
  %add101 = add nsw i32 %94, %conv
  store i32 %add101, i32* %mb_addr100, align 4
  %95 = load i32, i32* %yN.addr, align 4
  %shr102 = ashr i32 %95, 1
  store i32 %shr102, i32* %yM, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.97, %if.then.96
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.82
  br label %if.end.132

if.else.105:                                      ; preds = %if.then.79
  %96 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA106 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %96, i32 0, i32 22
  %97 = load i32, i32* %mbAddrA106, align 4
  %98 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr107 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %98, i32 0, i32 1
  store i32 %97, i32* %mb_addr107, align 4
  %99 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA108 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 26
  %100 = load i32, i32* %mbAvailA108, align 4
  %101 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available109 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %101, i32 0, i32 0
  store i32 %100, i32* %available109, align 4
  %102 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA110 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %102, i32 0, i32 26
  %103 = load i32, i32* %mbAvailA110, align 4
  %tobool111 = icmp ne i32 %103, 0
  br i1 %tobool111, label %if.then.112, label %if.end.131

if.then.112:                                      ; preds = %if.else.105
  %104 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA113 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %104, i32 0, i32 22
  %105 = load i32, i32* %mbAddrA113, align 4
  %idxprom114 = sext i32 %105 to i64
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data115 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 61
  %107 = load %struct.macroblock*, %struct.macroblock** %mb_data115, align 8
  %arrayidx116 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %107, i64 %idxprom114
  %mb_field117 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx116, i32 0, i32 19
  %108 = load i32, i32* %mb_field117, align 4
  %tobool118 = icmp ne i32 %108, 0
  br i1 %tobool118, label %if.else.122, label %if.then.119

if.then.119:                                      ; preds = %if.then.112
  %109 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr120 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %109, i32 0, i32 1
  %110 = load i32, i32* %mb_addr120, align 4
  %inc121 = add nsw i32 %110, 1
  store i32 %inc121, i32* %mb_addr120, align 4
  %111 = load i32, i32* %yN.addr, align 4
  store i32 %111, i32* %yM, align 4
  br label %if.end.130

if.else.122:                                      ; preds = %if.then.112
  %112 = load i32, i32* %yN.addr, align 4
  %and123 = and i32 %112, 1
  %cmp124 = icmp ne i32 %and123, 0
  %conv125 = zext i1 %cmp124 to i32
  %113 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr126 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %113, i32 0, i32 1
  %114 = load i32, i32* %mb_addr126, align 4
  %add127 = add nsw i32 %114, %conv125
  store i32 %add127, i32* %mb_addr126, align 4
  %115 = load i32, i32* %yN.addr, align 4
  %116 = load i32, i32* %maxH, align 4
  %add128 = add nsw i32 %115, %116
  %shr129 = ashr i32 %add128, 1
  store i32 %shr129, i32* %yM, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.122, %if.then.119
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.else.105
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.104
  br label %if.end.199

if.else.133:                                      ; preds = %if.then.76
  %117 = load i32, i32* %curr_mb_nr.addr, align 4
  %and134 = and i32 %117, 1
  %cmp135 = icmp eq i32 %and134, 0
  br i1 %cmp135, label %if.then.137, label %if.else.165

if.then.137:                                      ; preds = %if.else.133
  %118 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA138 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %118, i32 0, i32 22
  %119 = load i32, i32* %mbAddrA138, align 4
  %120 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr139 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %120, i32 0, i32 1
  store i32 %119, i32* %mb_addr139, align 4
  %121 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA140 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %121, i32 0, i32 26
  %122 = load i32, i32* %mbAvailA140, align 4
  %123 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available141 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %123, i32 0, i32 0
  store i32 %122, i32* %available141, align 4
  %124 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA142 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %124, i32 0, i32 26
  %125 = load i32, i32* %mbAvailA142, align 4
  %tobool143 = icmp ne i32 %125, 0
  br i1 %tobool143, label %if.then.144, label %if.end.164

if.then.144:                                      ; preds = %if.then.137
  %126 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA145 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %126, i32 0, i32 22
  %127 = load i32, i32* %mbAddrA145, align 4
  %idxprom146 = sext i32 %127 to i64
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data147 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 61
  %129 = load %struct.macroblock*, %struct.macroblock** %mb_data147, align 8
  %arrayidx148 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %129, i64 %idxprom146
  %mb_field149 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx148, i32 0, i32 19
  %130 = load i32, i32* %mb_field149, align 4
  %tobool150 = icmp ne i32 %130, 0
  br i1 %tobool150, label %if.else.162, label %if.then.151

if.then.151:                                      ; preds = %if.then.144
  %131 = load i32, i32* %yN.addr, align 4
  %132 = load i32, i32* %maxH, align 4
  %shr152 = ashr i32 %132, 1
  %cmp153 = icmp slt i32 %131, %shr152
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %if.then.151
  %133 = load i32, i32* %yN.addr, align 4
  %shl = shl i32 %133, 1
  store i32 %shl, i32* %yM, align 4
  br label %if.end.161

if.else.156:                                      ; preds = %if.then.151
  %134 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr157 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %134, i32 0, i32 1
  %135 = load i32, i32* %mb_addr157, align 4
  %inc158 = add nsw i32 %135, 1
  store i32 %inc158, i32* %mb_addr157, align 4
  %136 = load i32, i32* %yN.addr, align 4
  %shl159 = shl i32 %136, 1
  %137 = load i32, i32* %maxH, align 4
  %sub160 = sub nsw i32 %shl159, %137
  store i32 %sub160, i32* %yM, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.156, %if.then.155
  br label %if.end.163

if.else.162:                                      ; preds = %if.then.144
  %138 = load i32, i32* %yN.addr, align 4
  store i32 %138, i32* %yM, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.162, %if.end.161
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.137
  br label %if.end.198

if.else.165:                                      ; preds = %if.else.133
  %139 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA166 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %139, i32 0, i32 22
  %140 = load i32, i32* %mbAddrA166, align 4
  %141 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr167 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %141, i32 0, i32 1
  store i32 %140, i32* %mb_addr167, align 4
  %142 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA168 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %142, i32 0, i32 26
  %143 = load i32, i32* %mbAvailA168, align 4
  %144 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available169 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %144, i32 0, i32 0
  store i32 %143, i32* %available169, align 4
  %145 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA170 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %145, i32 0, i32 26
  %146 = load i32, i32* %mbAvailA170, align 4
  %tobool171 = icmp ne i32 %146, 0
  br i1 %tobool171, label %if.then.172, label %if.end.197

if.then.172:                                      ; preds = %if.else.165
  %147 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA173 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %147, i32 0, i32 22
  %148 = load i32, i32* %mbAddrA173, align 4
  %idxprom174 = sext i32 %148 to i64
  %149 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data175 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %149, i32 0, i32 61
  %150 = load %struct.macroblock*, %struct.macroblock** %mb_data175, align 8
  %arrayidx176 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %150, i64 %idxprom174
  %mb_field177 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx176, i32 0, i32 19
  %151 = load i32, i32* %mb_field177, align 4
  %tobool178 = icmp ne i32 %151, 0
  br i1 %tobool178, label %if.else.193, label %if.then.179

if.then.179:                                      ; preds = %if.then.172
  %152 = load i32, i32* %yN.addr, align 4
  %153 = load i32, i32* %maxH, align 4
  %shr180 = ashr i32 %153, 1
  %cmp181 = icmp slt i32 %152, %shr180
  br i1 %cmp181, label %if.then.183, label %if.else.186

if.then.183:                                      ; preds = %if.then.179
  %154 = load i32, i32* %yN.addr, align 4
  %shl184 = shl i32 %154, 1
  %add185 = add nsw i32 %shl184, 1
  store i32 %add185, i32* %yM, align 4
  br label %if.end.192

if.else.186:                                      ; preds = %if.then.179
  %155 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr187 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %155, i32 0, i32 1
  %156 = load i32, i32* %mb_addr187, align 4
  %inc188 = add nsw i32 %156, 1
  store i32 %inc188, i32* %mb_addr187, align 4
  %157 = load i32, i32* %yN.addr, align 4
  %shl189 = shl i32 %157, 1
  %add190 = add nsw i32 %shl189, 1
  %158 = load i32, i32* %maxH, align 4
  %sub191 = sub nsw i32 %add190, %158
  store i32 %sub191, i32* %yM, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.186, %if.then.183
  br label %if.end.196

if.else.193:                                      ; preds = %if.then.172
  %159 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr194 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %159, i32 0, i32 1
  %160 = load i32, i32* %mb_addr194, align 4
  %inc195 = add nsw i32 %160, 1
  store i32 %inc195, i32* %mb_addr194, align 4
  %161 = load i32, i32* %yN.addr, align 4
  store i32 %161, i32* %yM, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.193, %if.end.192
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.else.165
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.164
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.132
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %land.lhs.true.74, %if.else.72
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.71
  br label %if.end.353

if.else.202:                                      ; preds = %if.end.14
  %162 = load i32, i32* %xN.addr, align 4
  %cmp203 = icmp sge i32 %162, 0
  br i1 %cmp203, label %land.lhs.true.205, label %if.else.301

land.lhs.true.205:                                ; preds = %if.else.202
  %163 = load i32, i32* %xN.addr, align 4
  %164 = load i32, i32* %maxW, align 4
  %cmp206 = icmp slt i32 %163, %164
  br i1 %cmp206, label %if.then.208, label %if.else.301

if.then.208:                                      ; preds = %land.lhs.true.205
  %165 = load i32, i32* %yN.addr, align 4
  %cmp209 = icmp slt i32 %165, 0
  br i1 %cmp209, label %if.then.211, label %if.else.276

if.then.211:                                      ; preds = %if.then.208
  %166 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field212 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %166, i32 0, i32 19
  %167 = load i32, i32* %mb_field212, align 4
  %tobool213 = icmp ne i32 %167, 0
  br i1 %tobool213, label %if.else.243, label %if.then.214

if.then.214:                                      ; preds = %if.then.211
  %168 = load i32, i32* %curr_mb_nr.addr, align 4
  %and215 = and i32 %168, 1
  %cmp216 = icmp eq i32 %and215, 0
  br i1 %cmp216, label %if.then.218, label %if.else.238

if.then.218:                                      ; preds = %if.then.214
  %169 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %169, i32 0, i32 23
  %170 = load i32, i32* %mbAddrB, align 4
  %171 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr219 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %171, i32 0, i32 1
  store i32 %170, i32* %mb_addr219, align 4
  %172 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %172, i32 0, i32 27
  %173 = load i32, i32* %mbAvailB, align 4
  %tobool220 = icmp ne i32 %173, 0
  br i1 %tobool220, label %if.then.221, label %if.end.235

if.then.221:                                      ; preds = %if.then.218
  %174 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %174, i32 0, i32 136
  %175 = load i32, i32* %DeblockCall, align 4
  %cmp222 = icmp eq i32 %175, 1
  br i1 %cmp222, label %land.lhs.true.224, label %if.then.231

land.lhs.true.224:                                ; preds = %if.then.221
  %176 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB225 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %176, i32 0, i32 23
  %177 = load i32, i32* %mbAddrB225, align 4
  %idxprom226 = sext i32 %177 to i64
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data227 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 61
  %179 = load %struct.macroblock*, %struct.macroblock** %mb_data227, align 8
  %arrayidx228 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %179, i64 %idxprom226
  %mb_field229 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx228, i32 0, i32 19
  %180 = load i32, i32* %mb_field229, align 4
  %tobool230 = icmp ne i32 %180, 0
  br i1 %tobool230, label %if.end.234, label %if.then.231

if.then.231:                                      ; preds = %land.lhs.true.224, %if.then.221
  %181 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr232 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %181, i32 0, i32 1
  %182 = load i32, i32* %mb_addr232, align 4
  %add233 = add nsw i32 %182, 1
  store i32 %add233, i32* %mb_addr232, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.231, %land.lhs.true.224
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.then.218
  %183 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB236 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %183, i32 0, i32 27
  %184 = load i32, i32* %mbAvailB236, align 4
  %185 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available237 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %185, i32 0, i32 0
  store i32 %184, i32* %available237, align 4
  %186 = load i32, i32* %yN.addr, align 4
  store i32 %186, i32* %yM, align 4
  br label %if.end.242

if.else.238:                                      ; preds = %if.then.214
  %187 = load i32, i32* %curr_mb_nr.addr, align 4
  %sub239 = sub i32 %187, 1
  %188 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr240 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %188, i32 0, i32 1
  store i32 %sub239, i32* %mb_addr240, align 4
  %189 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available241 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %189, i32 0, i32 0
  store i32 1, i32* %available241, align 4
  %190 = load i32, i32* %yN.addr, align 4
  store i32 %190, i32* %yM, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.238, %if.end.235
  br label %if.end.275

if.else.243:                                      ; preds = %if.then.211
  %191 = load i32, i32* %curr_mb_nr.addr, align 4
  %and244 = and i32 %191, 1
  %cmp245 = icmp eq i32 %and244, 0
  br i1 %cmp245, label %if.then.247, label %if.else.268

if.then.247:                                      ; preds = %if.else.243
  %192 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB248 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %192, i32 0, i32 23
  %193 = load i32, i32* %mbAddrB248, align 4
  %194 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr249 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %194, i32 0, i32 1
  store i32 %193, i32* %mb_addr249, align 4
  %195 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB250 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %195, i32 0, i32 27
  %196 = load i32, i32* %mbAvailB250, align 4
  %197 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available251 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %197, i32 0, i32 0
  store i32 %196, i32* %available251, align 4
  %198 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB252 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %198, i32 0, i32 27
  %199 = load i32, i32* %mbAvailB252, align 4
  %tobool253 = icmp ne i32 %199, 0
  br i1 %tobool253, label %if.then.254, label %if.end.267

if.then.254:                                      ; preds = %if.then.247
  %200 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB255 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %200, i32 0, i32 23
  %201 = load i32, i32* %mbAddrB255, align 4
  %idxprom256 = sext i32 %201 to i64
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data257 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 61
  %203 = load %struct.macroblock*, %struct.macroblock** %mb_data257, align 8
  %arrayidx258 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %203, i64 %idxprom256
  %mb_field259 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx258, i32 0, i32 19
  %204 = load i32, i32* %mb_field259, align 4
  %tobool260 = icmp ne i32 %204, 0
  br i1 %tobool260, label %if.else.265, label %if.then.261

if.then.261:                                      ; preds = %if.then.254
  %205 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr262 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %205, i32 0, i32 1
  %206 = load i32, i32* %mb_addr262, align 4
  %inc263 = add nsw i32 %206, 1
  store i32 %inc263, i32* %mb_addr262, align 4
  %207 = load i32, i32* %yN.addr, align 4
  %mul264 = mul nsw i32 2, %207
  store i32 %mul264, i32* %yM, align 4
  br label %if.end.266

if.else.265:                                      ; preds = %if.then.254
  %208 = load i32, i32* %yN.addr, align 4
  store i32 %208, i32* %yM, align 4
  br label %if.end.266

if.end.266:                                       ; preds = %if.else.265, %if.then.261
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.then.247
  br label %if.end.274

if.else.268:                                      ; preds = %if.else.243
  %209 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB269 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %209, i32 0, i32 23
  %210 = load i32, i32* %mbAddrB269, align 4
  %add270 = add nsw i32 %210, 1
  %211 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr271 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %211, i32 0, i32 1
  store i32 %add270, i32* %mb_addr271, align 4
  %212 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB272 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %212, i32 0, i32 27
  %213 = load i32, i32* %mbAvailB272, align 4
  %214 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available273 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %214, i32 0, i32 0
  store i32 %213, i32* %available273, align 4
  %215 = load i32, i32* %yN.addr, align 4
  store i32 %215, i32* %yM, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.268, %if.end.267
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.end.242
  br label %if.end.300

if.else.276:                                      ; preds = %if.then.208
  %216 = load i32, i32* %yN.addr, align 4
  %cmp277 = icmp eq i32 %216, 0
  br i1 %cmp277, label %land.lhs.true.279, label %if.else.289

land.lhs.true.279:                                ; preds = %if.else.276
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall280 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 136
  %218 = load i32, i32* %DeblockCall280, align 4
  %cmp281 = icmp eq i32 %218, 2
  br i1 %cmp281, label %if.then.283, label %if.else.289

if.then.283:                                      ; preds = %land.lhs.true.279
  %219 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB284 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %219, i32 0, i32 23
  %220 = load i32, i32* %mbAddrB284, align 4
  %add285 = add nsw i32 %220, 1
  %221 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr286 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %221, i32 0, i32 1
  store i32 %add285, i32* %mb_addr286, align 4
  %222 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available287 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %222, i32 0, i32 0
  store i32 1, i32* %available287, align 4
  %223 = load i32, i32* %yN.addr, align 4
  %sub288 = sub nsw i32 %223, 1
  store i32 %sub288, i32* %yM, align 4
  br label %if.end.299

if.else.289:                                      ; preds = %land.lhs.true.279, %if.else.276
  %224 = load i32, i32* %yN.addr, align 4
  %cmp290 = icmp sge i32 %224, 0
  br i1 %cmp290, label %land.lhs.true.292, label %if.end.298

land.lhs.true.292:                                ; preds = %if.else.289
  %225 = load i32, i32* %yN.addr, align 4
  %226 = load i32, i32* %maxH, align 4
  %cmp293 = icmp slt i32 %225, %226
  br i1 %cmp293, label %if.then.295, label %if.end.298

if.then.295:                                      ; preds = %land.lhs.true.292
  %227 = load i32, i32* %curr_mb_nr.addr, align 4
  %228 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr296 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %228, i32 0, i32 1
  store i32 %227, i32* %mb_addr296, align 4
  %229 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available297 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %229, i32 0, i32 0
  store i32 1, i32* %available297, align 4
  %230 = load i32, i32* %yN.addr, align 4
  store i32 %230, i32* %yM, align 4
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.295, %land.lhs.true.292, %if.else.289
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.then.283
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.end.275
  br label %if.end.352

if.else.301:                                      ; preds = %land.lhs.true.205, %if.else.202
  %231 = load i32, i32* %yN.addr, align 4
  %cmp302 = icmp slt i32 %231, 0
  br i1 %cmp302, label %if.then.304, label %if.end.351

if.then.304:                                      ; preds = %if.else.301
  %232 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field305 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %232, i32 0, i32 19
  %233 = load i32, i32* %mb_field305, align 4
  %tobool306 = icmp ne i32 %233, 0
  br i1 %tobool306, label %if.else.318, label %if.then.307

if.then.307:                                      ; preds = %if.then.304
  %234 = load i32, i32* %curr_mb_nr.addr, align 4
  %and308 = and i32 %234, 1
  %cmp309 = icmp eq i32 %and308, 0
  br i1 %cmp309, label %if.then.311, label %if.else.315

if.then.311:                                      ; preds = %if.then.307
  %235 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %235, i32 0, i32 24
  %236 = load i32, i32* %mbAddrC, align 4
  %add312 = add nsw i32 %236, 1
  %237 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr313 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %237, i32 0, i32 1
  store i32 %add312, i32* %mb_addr313, align 4
  %238 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %238, i32 0, i32 28
  %239 = load i32, i32* %mbAvailC, align 4
  %240 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available314 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %240, i32 0, i32 0
  store i32 %239, i32* %available314, align 4
  %241 = load i32, i32* %yN.addr, align 4
  store i32 %241, i32* %yM, align 4
  br label %if.end.317

if.else.315:                                      ; preds = %if.then.307
  %242 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available316 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %242, i32 0, i32 0
  store i32 0, i32* %available316, align 4
  br label %if.end.317

if.end.317:                                       ; preds = %if.else.315, %if.then.311
  br label %if.end.350

if.else.318:                                      ; preds = %if.then.304
  %243 = load i32, i32* %curr_mb_nr.addr, align 4
  %and319 = and i32 %243, 1
  %cmp320 = icmp eq i32 %and319, 0
  br i1 %cmp320, label %if.then.322, label %if.else.343

if.then.322:                                      ; preds = %if.else.318
  %244 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC323 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %244, i32 0, i32 24
  %245 = load i32, i32* %mbAddrC323, align 4
  %246 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr324 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %246, i32 0, i32 1
  store i32 %245, i32* %mb_addr324, align 4
  %247 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC325 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %247, i32 0, i32 28
  %248 = load i32, i32* %mbAvailC325, align 4
  %249 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available326 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %249, i32 0, i32 0
  store i32 %248, i32* %available326, align 4
  %250 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC327 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %250, i32 0, i32 28
  %251 = load i32, i32* %mbAvailC327, align 4
  %tobool328 = icmp ne i32 %251, 0
  br i1 %tobool328, label %if.then.329, label %if.end.342

if.then.329:                                      ; preds = %if.then.322
  %252 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC330 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %252, i32 0, i32 24
  %253 = load i32, i32* %mbAddrC330, align 4
  %idxprom331 = sext i32 %253 to i64
  %254 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data332 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %254, i32 0, i32 61
  %255 = load %struct.macroblock*, %struct.macroblock** %mb_data332, align 8
  %arrayidx333 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %255, i64 %idxprom331
  %mb_field334 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx333, i32 0, i32 19
  %256 = load i32, i32* %mb_field334, align 4
  %tobool335 = icmp ne i32 %256, 0
  br i1 %tobool335, label %if.else.340, label %if.then.336

if.then.336:                                      ; preds = %if.then.329
  %257 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr337 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %257, i32 0, i32 1
  %258 = load i32, i32* %mb_addr337, align 4
  %inc338 = add nsw i32 %258, 1
  store i32 %inc338, i32* %mb_addr337, align 4
  %259 = load i32, i32* %yN.addr, align 4
  %mul339 = mul nsw i32 2, %259
  store i32 %mul339, i32* %yM, align 4
  br label %if.end.341

if.else.340:                                      ; preds = %if.then.329
  %260 = load i32, i32* %yN.addr, align 4
  store i32 %260, i32* %yM, align 4
  br label %if.end.341

if.end.341:                                       ; preds = %if.else.340, %if.then.336
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %if.then.322
  br label %if.end.349

if.else.343:                                      ; preds = %if.else.318
  %261 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC344 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %261, i32 0, i32 24
  %262 = load i32, i32* %mbAddrC344, align 4
  %add345 = add nsw i32 %262, 1
  %263 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr346 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %263, i32 0, i32 1
  store i32 %add345, i32* %mb_addr346, align 4
  %264 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC347 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %264, i32 0, i32 28
  %265 = load i32, i32* %mbAvailC347, align 4
  %266 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available348 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %266, i32 0, i32 0
  store i32 %265, i32* %available348, align 4
  %267 = load i32, i32* %yN.addr, align 4
  store i32 %267, i32* %yM, align 4
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.343, %if.end.342
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %if.end.317
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.else.301
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %if.end.300
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %if.end.201
  %268 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available354 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %268, i32 0, i32 0
  %269 = load i32, i32* %available354, align 4
  %tobool355 = icmp ne i32 %269, 0
  br i1 %tobool355, label %if.then.358, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.353
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %DeblockCall356 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 136
  %271 = load i32, i32* %DeblockCall356, align 4
  %tobool357 = icmp ne i32 %271, 0
  br i1 %tobool357, label %if.then.358, label %if.end.370

if.then.358:                                      ; preds = %lor.lhs.false, %if.end.353
  %272 = load i32, i32* %xN.addr, align 4
  %273 = load i32, i32* %maxW, align 4
  %sub359 = sub nsw i32 %273, 1
  %and360 = and i32 %272, %sub359
  %274 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %274, i32 0, i32 2
  store i32 %and360, i32* %x, align 4
  %275 = load i32, i32* %yM, align 4
  %276 = load i32, i32* %maxH, align 4
  %sub361 = sub nsw i32 %276, 1
  %and362 = and i32 %275, %sub361
  %277 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %277, i32 0, i32 3
  store i32 %and362, i32* %y, align 4
  %278 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr363 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %278, i32 0, i32 1
  %279 = load i32, i32* %mb_addr363, align 4
  %280 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %280, i32 0, i32 4
  %281 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %281, i32 0, i32 5
  %282 = load i32, i32* %is_chroma.addr, align 4
  call void @get_mb_pos(i32 %279, i32* %pos_x, i32* %pos_y, i32 %282)
  %283 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x364 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %283, i32 0, i32 2
  %284 = load i32, i32* %x364, align 4
  %285 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x365 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %285, i32 0, i32 4
  %286 = load i32, i32* %pos_x365, align 4
  %add366 = add nsw i32 %286, %284
  store i32 %add366, i32* %pos_x365, align 4
  %287 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y367 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %287, i32 0, i32 3
  %288 = load i32, i32* %y367, align 4
  %289 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y368 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %289, i32 0, i32 5
  %290 = load i32, i32* %pos_y368, align 4
  %add369 = add nsw i32 %290, %288
  store i32 %add369, i32* %pos_y368, align 4
  br label %if.end.370

if.end.370:                                       ; preds = %if.then, %if.then.13, %if.then.358, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define void @getLuma4x4Neighbour(i32 %curr_mb_nr, i32 %block_x_pos, i32 %block_y_pos, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %block_x_pos.addr = alloca i32, align 4
  %block_y_pos.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %block_x_pos, i32* %block_x_pos.addr, align 4
  store i32 %block_y_pos, i32* %block_y_pos.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %1 = load i32, i32* %curr_mb_nr.addr, align 4
  %2 = load i32, i32* %block_x_pos.addr, align 4
  %3 = load i32, i32* %block_y_pos.addr, align 4
  %4 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  call void %0(i32 %1, i32 %2, i32 %3, i32 0, %struct.pix_pos* %4)
  %5 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %5, i32 0, i32 0
  %6 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %7, i32 0, i32 2
  %8 = load i32, i32* %x, align 4
  %shr = ashr i32 %8, 2
  store i32 %shr, i32* %x, align 4
  %9 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %9, i32 0, i32 3
  %10 = load i32, i32* %y, align 4
  %shr1 = ashr i32 %10, 2
  store i32 %shr1, i32* %y, align 4
  %11 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %11, i32 0, i32 4
  %12 = load i32, i32* %pos_x, align 4
  %shr2 = ashr i32 %12, 2
  store i32 %shr2, i32* %pos_x, align 4
  %13 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %13, i32 0, i32 5
  %14 = load i32, i32* %pos_y, align 4
  %shr3 = ashr i32 %14, 2
  store i32 %shr3, i32* %pos_y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @getChroma4x4Neighbour(i32 %curr_mb_nr, i32 %block_x, i32 %block_y, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %1 = load i32, i32* %curr_mb_nr.addr, align 4
  %2 = load i32, i32* %block_x.addr, align 4
  %3 = load i32, i32* %block_y.addr, align 4
  %4 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  call void %0(i32 %1, i32 %2, i32 %3, i32 1, %struct.pix_pos* %4)
  %5 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %5, i32 0, i32 0
  %6 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %7, i32 0, i32 2
  %8 = load i32, i32* %x, align 4
  %shr = ashr i32 %8, 2
  store i32 %shr, i32* %x, align 4
  %9 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %9, i32 0, i32 3
  %10 = load i32, i32* %y, align 4
  %shr1 = ashr i32 %10, 2
  store i32 %shr1, i32* %y, align 4
  %11 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %11, i32 0, i32 4
  %12 = load i32, i32* %pos_x, align 4
  %shr2 = ashr i32 %12, 2
  store i32 %shr2, i32* %pos_x, align 4
  %13 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %13, i32 0, i32 5
  %14 = load i32, i32* %pos_y, align 4
  %shr3 = ashr i32 %14, 2
  store i32 %shr3, i32* %pos_y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
