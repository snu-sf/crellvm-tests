; ModuleID = './MultiSource.Applications.JM/40.lencod.decoder.bc'
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
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@img = external global %struct.ImageParameters*, align 8
@start_frame_no_in_this_IGOP = external global i32, align 4
@enc_picture = external global %struct.storable_picture*, align 8
@decs = external global %struct.Decoders*, align 8
@enc_frame_picture = external global %struct.storable_picture*, align 8
@Get_Reference_Pixel.COEF = internal constant [6 x i32] [i32 1, i32 -5, i32 20, i32 20, i32 -5, i32 1], align 16
@input = external global %struct.InputParameters*, align 8
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
@height_pad = common global i32 0, align 4
@width_pad = common global i32 0, align 4
@height_pad_cr = common global i32 0, align 4
@width_pad_cr = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @decode_one_b8block(i32 %decoder, i32 %mbmode, i32 %b8block, i32 %b8mode, i32 %b8ref) #0 {
entry:
  %decoder.addr = alloca i32, align 4
  %mbmode.addr = alloca i32, align 4
  %b8block.addr = alloca i32, align 4
  %b8mode.addr = alloca i32, align 4
  %b8ref.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %block_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %ref_inx = alloca i32, align 4
  %mv = alloca [2 x [4 x [4 x i32]]], align 16
  %resY_tmp = alloca [16 x [16 x i32]], align 16
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %bx0 = alloca i32, align 4
  %bx1 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %by0 = alloca i32, align 4
  %by1 = alloca i32, align 4
  store i32 %decoder, i32* %decoder.addr, align 4
  store i32 %mbmode, i32* %mbmode.addr, align 4
  store i32 %b8block, i32* %b8block.addr, align 4
  store i32 %b8mode, i32* %b8mode.addr, align 4
  store i32 %b8ref, i32* %b8ref.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %2 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %1, %2
  %sub1 = sub nsw i32 %sub, 1
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 7
  %4 = load i32, i32* %num_ref_frames, align 4
  %rem = srem i32 %sub1, %4
  store i32 %rem, i32* %ref_inx, align 4
  %5 = load i32, i32* %b8block.addr, align 4
  %rem2 = srem i32 %5, 2
  %shl = shl i32 %rem2, 3
  store i32 %shl, i32* %i0, align 4
  %6 = load i32, i32* %i0, align 4
  %add = add nsw i32 %6, 8
  store i32 %add, i32* %i1, align 4
  %7 = load i32, i32* %i0, align 4
  %shr = ashr i32 %7, 2
  store i32 %shr, i32* %bx0, align 4
  %8 = load i32, i32* %bx0, align 4
  %add3 = add nsw i32 %8, 2
  store i32 %add3, i32* %bx1, align 4
  %9 = load i32, i32* %b8block.addr, align 4
  %div = sdiv i32 %9, 2
  %shl4 = shl i32 %div, 3
  store i32 %shl4, i32* %j0, align 4
  %10 = load i32, i32* %j0, align 4
  %add5 = add nsw i32 %10, 8
  store i32 %add5, i32* %j1, align 4
  %11 = load i32, i32* %j0, align 4
  %shr6 = ashr i32 %11, 2
  store i32 %shr6, i32* %by0, align 4
  %12 = load i32, i32* %by0, align 4
  %add7 = add nsw i32 %12, 2
  store i32 %add7, i32* %by1, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 5
  %14 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %14, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %i0, align 4
  store i32 %15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %if.then
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %i1, align 4
  %cmp8 = icmp slt i32 %16, %17
  br i1 %cmp8, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %j0, align 4
  store i32 %18, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %j1, align 4
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 39
  %22 = load i32, i32* %pix_x, align 4
  %23 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %22, %23
  %idxprom = sext i32 %add12 to i64
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 40
  %25 = load i32, i32* %pix_y, align 4
  %26 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %25, %26
  %idxprom14 = sext i32 %add13 to i64
  %27 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 29
  %28 = load i16**, i16*** %imgY, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %28, i64 %idxprom14
  %29 = load i16*, i16** %arrayidx, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %29, i64 %idxprom
  %30 = load i16, i16* %arrayidx15, align 2
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 39
  %32 = load i32, i32* %pix_x16, align 4
  %33 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %32, %33
  %idxprom18 = sext i32 %add17 to i64
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 40
  %35 = load i32, i32* %pix_y19, align 4
  %36 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %35, %36
  %idxprom21 = sext i32 %add20 to i64
  %37 = load i32, i32* %decoder.addr, align 4
  %idxprom22 = sext i32 %37 to i64
  %38 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %38, i32 0, i32 1
  %39 = load i16***, i16**** %decY, align 8
  %arrayidx23 = getelementptr inbounds i16**, i16*** %39, i64 %idxprom22
  %40 = load i16**, i16*** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i16*, i16** %40, i64 %idxprom21
  %41 = load i16*, i16** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %41, i64 %idxprom18
  store i16 %30, i16* %arrayidx25, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %42 = load i32, i32* %j, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %43 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %43, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  br label %if.end.315

if.else:                                          ; preds = %entry
  %44 = load i32, i32* %mbmode.addr, align 4
  %cmp29 = icmp eq i32 %44, 0
  br i1 %cmp29, label %land.lhs.true, label %if.else.75

land.lhs.true:                                    ; preds = %if.else
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 5
  %46 = load i32, i32* %type30, align 4
  %cmp31 = icmp eq i32 %46, 0
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 5
  %48 = load i32, i32* %type32, align 4
  %cmp33 = icmp eq i32 %48, 1
  br i1 %cmp33, label %land.lhs.true.34, label %if.else.75

land.lhs.true.34:                                 ; preds = %lor.lhs.false
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 122
  %50 = load i32, i32* %nal_reference_idc, align 4
  %cmp35 = icmp sgt i32 %50, 0
  br i1 %cmp35, label %if.then.36, label %if.else.75

if.then.36:                                       ; preds = %land.lhs.true.34, %land.lhs.true
  %51 = load i32, i32* %i0, align 4
  store i32 %51, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.50, %if.then.36
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %i1, align 4
  %cmp38 = icmp slt i32 %52, %53
  br i1 %cmp38, label %for.body.39, label %for.end.52

for.body.39:                                      ; preds = %for.cond.37
  %54 = load i32, i32* %j0, align 4
  store i32 %54, i32* %j, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.47, %for.body.39
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %j1, align 4
  %cmp41 = icmp slt i32 %55, %56
  br i1 %cmp41, label %for.body.42, label %for.end.49

for.body.42:                                      ; preds = %for.cond.40
  %57 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %57 to i64
  %58 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %58 to i64
  %arrayidx45 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %resY_tmp, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx45, i32 0, i64 %idxprom43
  store i32 0, i32* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.42
  %59 = load i32, i32* %j, align 4
  %inc48 = add nsw i32 %59, 1
  store i32 %inc48, i32* %j, align 4
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %60 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %60, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.37

for.end.52:                                       ; preds = %for.cond.37
  %61 = load i32, i32* %by0, align 4
  store i32 %61, i32* %by, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.72, %for.end.52
  %62 = load i32, i32* %by, align 4
  %63 = load i32, i32* %by1, align 4
  %cmp54 = icmp slt i32 %62, %63
  br i1 %cmp54, label %for.body.55, label %for.end.74

for.body.55:                                      ; preds = %for.cond.53
  %64 = load i32, i32* %bx0, align 4
  store i32 %64, i32* %bx, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.69, %for.body.55
  %65 = load i32, i32* %bx, align 4
  %66 = load i32, i32* %bx1, align 4
  %cmp57 = icmp slt i32 %65, %66
  br i1 %cmp57, label %for.body.58, label %for.end.71

for.body.58:                                      ; preds = %for.cond.56
  %67 = load i32, i32* %bx, align 4
  %idxprom59 = sext i32 %67 to i64
  %68 = load i32, i32* %by, align 4
  %idxprom60 = sext i32 %68 to i64
  %arrayidx61 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx62 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx61, i32 0, i64 %idxprom60
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx62, i32 0, i64 %idxprom59
  store i32 0, i32* %arrayidx63, align 4
  %69 = load i32, i32* %bx, align 4
  %idxprom64 = sext i32 %69 to i64
  %70 = load i32, i32* %by, align 4
  %idxprom65 = sext i32 %70 to i64
  %arrayidx66 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx67 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx66, i32 0, i64 %idxprom65
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx67, i32 0, i64 %idxprom64
  store i32 0, i32* %arrayidx68, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.58
  %71 = load i32, i32* %bx, align 4
  %inc70 = add nsw i32 %71, 1
  store i32 %inc70, i32* %bx, align 4
  br label %for.cond.56

for.end.71:                                       ; preds = %for.cond.56
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.71
  %72 = load i32, i32* %by, align 4
  %inc73 = add nsw i32 %72, 1
  store i32 %inc73, i32* %by, align 4
  br label %for.cond.53

for.end.74:                                       ; preds = %for.cond.53
  br label %if.end.171

if.else.75:                                       ; preds = %land.lhs.true.34, %lor.lhs.false, %if.else
  %73 = load i32, i32* %b8mode.addr, align 4
  %cmp76 = icmp sge i32 %73, 1
  br i1 %cmp76, label %land.lhs.true.77, label %if.else.124

land.lhs.true.77:                                 ; preds = %if.else.75
  %74 = load i32, i32* %b8mode.addr, align 4
  %cmp78 = icmp sle i32 %74, 7
  br i1 %cmp78, label %if.then.79, label %if.else.124

if.then.79:                                       ; preds = %land.lhs.true.77
  %75 = load i32, i32* %by0, align 4
  store i32 %75, i32* %by, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.121, %if.then.79
  %76 = load i32, i32* %by, align 4
  %77 = load i32, i32* %by1, align 4
  %cmp81 = icmp slt i32 %76, %77
  br i1 %cmp81, label %for.body.82, label %for.end.123

for.body.82:                                      ; preds = %for.cond.80
  %78 = load i32, i32* %bx0, align 4
  store i32 %78, i32* %bx, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.118, %for.body.82
  %79 = load i32, i32* %bx, align 4
  %80 = load i32, i32* %bx1, align 4
  %cmp84 = icmp slt i32 %79, %80
  br i1 %cmp84, label %for.body.85, label %for.end.120

for.body.85:                                      ; preds = %for.cond.83
  %81 = load i32, i32* %b8mode.addr, align 4
  %idxprom86 = sext i32 %81 to i64
  %82 = load i32, i32* %b8ref.addr, align 4
  %idxprom87 = sext i32 %82 to i64
  %83 = load i32, i32* %bx, align 4
  %idxprom88 = sext i32 %83 to i64
  %84 = load i32, i32* %by, align 4
  %idxprom89 = sext i32 %84 to i64
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 80
  %86 = load i16******, i16******* %all_mv, align 8
  %arrayidx90 = getelementptr inbounds i16*****, i16****** %86, i64 %idxprom89
  %87 = load i16*****, i16****** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i16****, i16***** %87, i64 %idxprom88
  %88 = load i16****, i16***** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i16***, i16**** %88, i64 0
  %89 = load i16***, i16**** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16**, i16*** %89, i64 %idxprom87
  %90 = load i16**, i16*** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i16*, i16** %90, i64 %idxprom86
  %91 = load i16*, i16** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %91, i64 0
  %92 = load i16, i16* %arrayidx95, align 2
  %conv = sext i16 %92 to i32
  %93 = load i32, i32* %bx, align 4
  %idxprom96 = sext i32 %93 to i64
  %94 = load i32, i32* %by, align 4
  %idxprom97 = sext i32 %94 to i64
  %arrayidx98 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx99 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx98, i32 0, i64 %idxprom97
  %arrayidx100 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx99, i32 0, i64 %idxprom96
  store i32 %conv, i32* %arrayidx100, align 4
  %95 = load i32, i32* %b8mode.addr, align 4
  %idxprom101 = sext i32 %95 to i64
  %96 = load i32, i32* %b8ref.addr, align 4
  %idxprom102 = sext i32 %96 to i64
  %97 = load i32, i32* %bx, align 4
  %idxprom103 = sext i32 %97 to i64
  %98 = load i32, i32* %by, align 4
  %idxprom104 = sext i32 %98 to i64
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 80
  %100 = load i16******, i16******* %all_mv105, align 8
  %arrayidx106 = getelementptr inbounds i16*****, i16****** %100, i64 %idxprom104
  %101 = load i16*****, i16****** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i16****, i16***** %101, i64 %idxprom103
  %102 = load i16****, i16***** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i16***, i16**** %102, i64 0
  %103 = load i16***, i16**** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i16**, i16*** %103, i64 %idxprom102
  %104 = load i16**, i16*** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i16*, i16** %104, i64 %idxprom101
  %105 = load i16*, i16** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i16, i16* %105, i64 1
  %106 = load i16, i16* %arrayidx111, align 2
  %conv112 = sext i16 %106 to i32
  %107 = load i32, i32* %bx, align 4
  %idxprom113 = sext i32 %107 to i64
  %108 = load i32, i32* %by, align 4
  %idxprom114 = sext i32 %108 to i64
  %arrayidx115 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx116 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx115, i32 0, i64 %idxprom114
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx116, i32 0, i64 %idxprom113
  store i32 %conv112, i32* %arrayidx117, align 4
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.85
  %109 = load i32, i32* %bx, align 4
  %inc119 = add nsw i32 %109, 1
  store i32 %inc119, i32* %bx, align 4
  br label %for.cond.83

for.end.120:                                      ; preds = %for.cond.83
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.120
  %110 = load i32, i32* %by, align 4
  %inc122 = add nsw i32 %110, 1
  store i32 %inc122, i32* %by, align 4
  br label %for.cond.80

for.end.123:                                      ; preds = %for.cond.80
  br label %if.end

if.else.124:                                      ; preds = %land.lhs.true.77, %if.else.75
  %111 = load i32, i32* %by0, align 4
  store i32 %111, i32* %by, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.146, %if.else.124
  %112 = load i32, i32* %by, align 4
  %113 = load i32, i32* %by1, align 4
  %cmp126 = icmp slt i32 %112, %113
  br i1 %cmp126, label %for.body.128, label %for.end.148

for.body.128:                                     ; preds = %for.cond.125
  %114 = load i32, i32* %bx0, align 4
  store i32 %114, i32* %bx, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.143, %for.body.128
  %115 = load i32, i32* %bx, align 4
  %116 = load i32, i32* %bx1, align 4
  %cmp130 = icmp slt i32 %115, %116
  br i1 %cmp130, label %for.body.132, label %for.end.145

for.body.132:                                     ; preds = %for.cond.129
  %117 = load i32, i32* %bx, align 4
  %idxprom133 = sext i32 %117 to i64
  %118 = load i32, i32* %by, align 4
  %idxprom134 = sext i32 %118 to i64
  %arrayidx135 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx136 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx135, i32 0, i64 %idxprom134
  %arrayidx137 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx136, i32 0, i64 %idxprom133
  store i32 0, i32* %arrayidx137, align 4
  %119 = load i32, i32* %bx, align 4
  %idxprom138 = sext i32 %119 to i64
  %120 = load i32, i32* %by, align 4
  %idxprom139 = sext i32 %120 to i64
  %arrayidx140 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx141 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx140, i32 0, i64 %idxprom139
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx141, i32 0, i64 %idxprom138
  store i32 0, i32* %arrayidx142, align 4
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.132
  %121 = load i32, i32* %bx, align 4
  %inc144 = add nsw i32 %121, 1
  store i32 %inc144, i32* %bx, align 4
  br label %for.cond.129

for.end.145:                                      ; preds = %for.cond.129
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.end.145
  %122 = load i32, i32* %by, align 4
  %inc147 = add nsw i32 %122, 1
  store i32 %inc147, i32* %by, align 4
  br label %for.cond.125

for.end.148:                                      ; preds = %for.cond.125
  br label %if.end

if.end:                                           ; preds = %for.end.148, %for.end.123
  %123 = load i32, i32* %i0, align 4
  store i32 %123, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.168, %if.end
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %i1, align 4
  %cmp150 = icmp slt i32 %124, %125
  br i1 %cmp150, label %for.body.152, label %for.end.170

for.body.152:                                     ; preds = %for.cond.149
  %126 = load i32, i32* %j0, align 4
  store i32 %126, i32* %j, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.165, %for.body.152
  %127 = load i32, i32* %j, align 4
  %128 = load i32, i32* %j1, align 4
  %cmp154 = icmp slt i32 %127, %128
  br i1 %cmp154, label %for.body.156, label %for.end.167

for.body.156:                                     ; preds = %for.cond.153
  %129 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %129 to i64
  %130 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %130 to i64
  %131 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %131, i32 0, i32 0
  %132 = load i32**, i32*** %resY, align 8
  %arrayidx159 = getelementptr inbounds i32*, i32** %132, i64 %idxprom158
  %133 = load i32*, i32** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %133, i64 %idxprom157
  %134 = load i32, i32* %arrayidx160, align 4
  %135 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %135 to i64
  %136 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %136 to i64
  %arrayidx163 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %resY_tmp, i32 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx163, i32 0, i64 %idxprom161
  store i32 %134, i32* %arrayidx164, align 4
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.156
  %137 = load i32, i32* %j, align 4
  %inc166 = add nsw i32 %137, 1
  store i32 %inc166, i32* %j, align 4
  br label %for.cond.153

for.end.167:                                      ; preds = %for.cond.153
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %138 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %138, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.149

for.end.170:                                      ; preds = %for.cond.149
  br label %if.end.171

if.end.171:                                       ; preds = %for.end.170, %for.end.74
  %139 = load i32, i32* %b8mode.addr, align 4
  %cmp172 = icmp sge i32 %139, 1
  br i1 %cmp172, label %land.lhs.true.174, label %lor.lhs.false.177

land.lhs.true.174:                                ; preds = %if.end.171
  %140 = load i32, i32* %b8mode.addr, align 4
  %cmp175 = icmp sle i32 %140, 7
  br i1 %cmp175, label %if.then.192, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %land.lhs.true.174, %if.end.171
  %141 = load i32, i32* %mbmode.addr, align 4
  %cmp178 = icmp eq i32 %141, 0
  br i1 %cmp178, label %land.lhs.true.180, label %if.else.279

land.lhs.true.180:                                ; preds = %lor.lhs.false.177
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 5
  %143 = load i32, i32* %type181, align 4
  %cmp182 = icmp eq i32 %143, 0
  br i1 %cmp182, label %if.then.192, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %land.lhs.true.180
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type185 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 5
  %145 = load i32, i32* %type185, align 4
  %cmp186 = icmp eq i32 %145, 1
  br i1 %cmp186, label %land.lhs.true.188, label %if.else.279

land.lhs.true.188:                                ; preds = %lor.lhs.false.184
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc189 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 122
  %147 = load i32, i32* %nal_reference_idc189, align 4
  %cmp190 = icmp sgt i32 %147, 0
  br i1 %cmp190, label %if.then.192, label %if.else.279

if.then.192:                                      ; preds = %land.lhs.true.188, %land.lhs.true.180, %land.lhs.true.174
  %148 = load i32, i32* %by0, align 4
  store i32 %148, i32* %by, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.276, %if.then.192
  %149 = load i32, i32* %by, align 4
  %150 = load i32, i32* %by1, align 4
  %cmp194 = icmp slt i32 %149, %150
  br i1 %cmp194, label %for.body.196, label %for.end.278

for.body.196:                                     ; preds = %for.cond.193
  %151 = load i32, i32* %bx0, align 4
  store i32 %151, i32* %bx, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.273, %for.body.196
  %152 = load i32, i32* %bx, align 4
  %153 = load i32, i32* %bx1, align 4
  %cmp198 = icmp slt i32 %152, %153
  br i1 %cmp198, label %for.body.200, label %for.end.275

for.body.200:                                     ; preds = %for.cond.197
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x201 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 37
  %155 = load i32, i32* %block_x201, align 4
  %156 = load i32, i32* %bx, align 4
  %add202 = add nsw i32 %155, %156
  store i32 %add202, i32* %block_x, align 4
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 38
  %158 = load i32, i32* %block_y203, align 4
  %159 = load i32, i32* %by, align 4
  %add204 = add nsw i32 %158, %159
  store i32 %add204, i32* %block_y, align 4
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type205 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 5
  %161 = load i32, i32* %type205, align 4
  %cmp206 = icmp eq i32 %161, 1
  br i1 %cmp206, label %land.lhs.true.208, label %if.end.218

land.lhs.true.208:                                ; preds = %for.body.200
  %162 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %163 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %cmp209 = icmp ne %struct.storable_picture* %162, %163
  br i1 %cmp209, label %if.then.211, label %if.end.218

if.then.211:                                      ; preds = %land.lhs.true.208
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number212 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 0
  %165 = load i32, i32* %number212, align 4
  %166 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub213 = sub nsw i32 %165, %166
  %167 = load i32, i32* %b8ref.addr, align 4
  %sub214 = sub nsw i32 %sub213, %167
  %sub215 = sub nsw i32 %sub214, 2
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames216 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 7
  %169 = load i32, i32* %num_ref_frames216, align 4
  %rem217 = srem i32 %sub215, %169
  store i32 %rem217, i32* %ref_inx, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.211, %land.lhs.true.208, %for.body.200
  %170 = load i32, i32* %ref_inx, align 4
  %idxprom219 = sext i32 %170 to i64
  %171 = load i32, i32* %decoder.addr, align 4
  %idxprom220 = sext i32 %171 to i64
  %172 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref = getelementptr inbounds %struct.Decoders, %struct.Decoders* %172, i32 0, i32 2
  %173 = load i16****, i16***** %decref, align 8
  %arrayidx221 = getelementptr inbounds i16***, i16**** %173, i64 %idxprom220
  %174 = load i16***, i16**** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i16**, i16*** %174, i64 %idxprom219
  %175 = load i16**, i16*** %arrayidx222, align 8
  %176 = load i32, i32* %block_y, align 4
  %177 = load i32, i32* %block_x, align 4
  %178 = load i32, i32* %bx, align 4
  %idxprom223 = sext i32 %178 to i64
  %179 = load i32, i32* %by, align 4
  %idxprom224 = sext i32 %179 to i64
  %arrayidx225 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx226 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx225, i32 0, i64 %idxprom224
  %arrayidx227 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx226, i32 0, i64 %idxprom223
  %180 = load i32, i32* %arrayidx227, align 4
  %181 = load i32, i32* %bx, align 4
  %idxprom228 = sext i32 %181 to i64
  %182 = load i32, i32* %by, align 4
  %idxprom229 = sext i32 %182 to i64
  %arrayidx230 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx231 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx230, i32 0, i64 %idxprom229
  %arrayidx232 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx231, i32 0, i64 %idxprom228
  %183 = load i32, i32* %arrayidx232, align 4
  %184 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock = getelementptr inbounds %struct.Decoders, %struct.Decoders* %184, i32 0, i32 4
  %185 = load i16**, i16*** %RefBlock, align 8
  call void @Get_Reference_Block(i16** %175, i32 %176, i32 %177, i32 %180, i32 %183, i16** %185)
  store i32 0, i32* %j, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.270, %if.end.218
  %186 = load i32, i32* %j, align 4
  %cmp234 = icmp slt i32 %186, 4
  br i1 %cmp234, label %for.body.236, label %for.end.272

for.body.236:                                     ; preds = %for.cond.233
  store i32 0, i32* %i, align 4
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.267, %for.body.236
  %187 = load i32, i32* %i, align 4
  %cmp238 = icmp slt i32 %187, 4
  br i1 %cmp238, label %for.body.240, label %for.end.269

for.body.240:                                     ; preds = %for.cond.237
  %188 = load i32, i32* %bx, align 4
  %mul = mul nsw i32 %188, 4
  %189 = load i32, i32* %i, align 4
  %add241 = add nsw i32 %mul, %189
  %idxprom242 = sext i32 %add241 to i64
  %190 = load i32, i32* %by, align 4
  %mul243 = mul nsw i32 %190, 4
  %191 = load i32, i32* %j, align 4
  %add244 = add nsw i32 %mul243, %191
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %resY_tmp, i32 0, i64 %idxprom245
  %arrayidx247 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx246, i32 0, i64 %idxprom242
  %192 = load i32, i32* %arrayidx247, align 4
  %193 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %193 to i64
  %194 = load i32, i32* %j, align 4
  %idxprom249 = sext i32 %194 to i64
  %195 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock250 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %195, i32 0, i32 4
  %196 = load i16**, i16*** %RefBlock250, align 8
  %arrayidx251 = getelementptr inbounds i16*, i16** %196, i64 %idxprom249
  %197 = load i16*, i16** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i16, i16* %197, i64 %idxprom248
  %198 = load i16, i16* %arrayidx252, align 2
  %conv253 = zext i16 %198 to i32
  %add254 = add nsw i32 %192, %conv253
  %conv255 = trunc i32 %add254 to i16
  %199 = load i32, i32* %block_x, align 4
  %mul256 = mul nsw i32 %199, 4
  %200 = load i32, i32* %i, align 4
  %add257 = add nsw i32 %mul256, %200
  %idxprom258 = sext i32 %add257 to i64
  %201 = load i32, i32* %block_y, align 4
  %mul259 = mul nsw i32 %201, 4
  %202 = load i32, i32* %j, align 4
  %add260 = add nsw i32 %mul259, %202
  %idxprom261 = sext i32 %add260 to i64
  %203 = load i32, i32* %decoder.addr, align 4
  %idxprom262 = sext i32 %203 to i64
  %204 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY263 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %204, i32 0, i32 1
  %205 = load i16***, i16**** %decY263, align 8
  %arrayidx264 = getelementptr inbounds i16**, i16*** %205, i64 %idxprom262
  %206 = load i16**, i16*** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i16*, i16** %206, i64 %idxprom261
  %207 = load i16*, i16** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i16, i16* %207, i64 %idxprom258
  store i16 %conv255, i16* %arrayidx266, align 2
  br label %for.inc.267

for.inc.267:                                      ; preds = %for.body.240
  %208 = load i32, i32* %i, align 4
  %inc268 = add nsw i32 %208, 1
  store i32 %inc268, i32* %i, align 4
  br label %for.cond.237

for.end.269:                                      ; preds = %for.cond.237
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.end.269
  %209 = load i32, i32* %j, align 4
  %inc271 = add nsw i32 %209, 1
  store i32 %inc271, i32* %j, align 4
  br label %for.cond.233

for.end.272:                                      ; preds = %for.cond.233
  br label %for.inc.273

for.inc.273:                                      ; preds = %for.end.272
  %210 = load i32, i32* %bx, align 4
  %inc274 = add nsw i32 %210, 1
  store i32 %inc274, i32* %bx, align 4
  br label %for.cond.197

for.end.275:                                      ; preds = %for.cond.197
  br label %for.inc.276

for.inc.276:                                      ; preds = %for.end.275
  %211 = load i32, i32* %by, align 4
  %inc277 = add nsw i32 %211, 1
  store i32 %inc277, i32* %by, align 4
  br label %for.cond.193

for.end.278:                                      ; preds = %for.cond.193
  br label %if.end.314

if.else.279:                                      ; preds = %land.lhs.true.188, %lor.lhs.false.184, %lor.lhs.false.177
  %212 = load i32, i32* %i0, align 4
  store i32 %212, i32* %i, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.311, %if.else.279
  %213 = load i32, i32* %i, align 4
  %214 = load i32, i32* %i1, align 4
  %cmp281 = icmp slt i32 %213, %214
  br i1 %cmp281, label %for.body.283, label %for.end.313

for.body.283:                                     ; preds = %for.cond.280
  %215 = load i32, i32* %j0, align 4
  store i32 %215, i32* %j, align 4
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.308, %for.body.283
  %216 = load i32, i32* %j, align 4
  %217 = load i32, i32* %j1, align 4
  %cmp285 = icmp slt i32 %216, %217
  br i1 %cmp285, label %for.body.287, label %for.end.310

for.body.287:                                     ; preds = %for.cond.284
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x288 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 39
  %219 = load i32, i32* %pix_x288, align 4
  %220 = load i32, i32* %i, align 4
  %add289 = add nsw i32 %219, %220
  %idxprom290 = sext i32 %add289 to i64
  %221 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %221, i32 0, i32 40
  %222 = load i32, i32* %pix_y291, align 4
  %223 = load i32, i32* %j, align 4
  %add292 = add nsw i32 %222, %223
  %idxprom293 = sext i32 %add292 to i64
  %224 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY294 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %224, i32 0, i32 29
  %225 = load i16**, i16*** %imgY294, align 8
  %arrayidx295 = getelementptr inbounds i16*, i16** %225, i64 %idxprom293
  %226 = load i16*, i16** %arrayidx295, align 8
  %arrayidx296 = getelementptr inbounds i16, i16* %226, i64 %idxprom290
  %227 = load i16, i16* %arrayidx296, align 2
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x297 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 39
  %229 = load i32, i32* %pix_x297, align 4
  %230 = load i32, i32* %i, align 4
  %add298 = add nsw i32 %229, %230
  %idxprom299 = sext i32 %add298 to i64
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y300 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 40
  %232 = load i32, i32* %pix_y300, align 4
  %233 = load i32, i32* %j, align 4
  %add301 = add nsw i32 %232, %233
  %idxprom302 = sext i32 %add301 to i64
  %234 = load i32, i32* %decoder.addr, align 4
  %idxprom303 = sext i32 %234 to i64
  %235 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY304 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %235, i32 0, i32 1
  %236 = load i16***, i16**** %decY304, align 8
  %arrayidx305 = getelementptr inbounds i16**, i16*** %236, i64 %idxprom303
  %237 = load i16**, i16*** %arrayidx305, align 8
  %arrayidx306 = getelementptr inbounds i16*, i16** %237, i64 %idxprom302
  %238 = load i16*, i16** %arrayidx306, align 8
  %arrayidx307 = getelementptr inbounds i16, i16* %238, i64 %idxprom299
  store i16 %227, i16* %arrayidx307, align 2
  br label %for.inc.308

for.inc.308:                                      ; preds = %for.body.287
  %239 = load i32, i32* %j, align 4
  %inc309 = add nsw i32 %239, 1
  store i32 %inc309, i32* %j, align 4
  br label %for.cond.284

for.end.310:                                      ; preds = %for.cond.284
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.end.310
  %240 = load i32, i32* %i, align 4
  %inc312 = add nsw i32 %240, 1
  store i32 %inc312, i32* %i, align 4
  br label %for.cond.280

for.end.313:                                      ; preds = %for.cond.280
  br label %if.end.314

if.end.314:                                       ; preds = %for.end.313, %for.end.278
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %for.end.28
  ret void
}

; Function Attrs: nounwind uwtable
define void @Get_Reference_Block(i16** %imY, i32 %block_y, i32 %block_x, i32 %mvhor, i32 %mvver, i16** %out) #0 {
entry:
  %imY.addr = alloca i16**, align 8
  %block_y.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %mvhor.addr = alloca i32, align 4
  %mvver.addr = alloca i32, align 4
  %out.addr = alloca i16**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store i16** %imY, i16*** %imY.addr, align 8
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %mvhor, i32* %mvhor.addr, align 4
  store i32 %mvver, i32* %mvver.addr, align 4
  store i16** %out, i16*** %out.addr, align 8
  %0 = load i32, i32* %block_y.addr, align 4
  %mul = mul nsw i32 %0, 4
  %mul1 = mul nsw i32 %mul, 4
  %1 = load i32, i32* %mvver.addr, align 4
  %add = add nsw i32 %mul1, %1
  store i32 %add, i32* %y, align 4
  %2 = load i32, i32* %block_x.addr, align 4
  %mul2 = mul nsw i32 %2, 4
  %mul3 = mul nsw i32 %mul2, 4
  %3 = load i32, i32* %mvhor.addr, align 4
  %add4 = add nsw i32 %mul3, %3
  store i32 %add4, i32* %x, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %4 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %4, 4
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %5, 4
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %6 = load i16**, i16*** %imY.addr, align 8
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %j, align 4
  %mul8 = mul nsw i32 %8, 4
  %add9 = add nsw i32 %7, %mul8
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 %10, 4
  %add11 = add nsw i32 %9, %mul10
  %call = call zeroext i8 @Get_Reference_Pixel(i16** %6, i32 %add9, i32 %add11)
  %conv = zext i8 %call to i16
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i16**, i16*** %out.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %13, i64 %idxprom12
  %14 = load i16*, i16** %arrayidx, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %14, i64 %idxprom
  store i16 %conv, i16* %arrayidx13, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
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
  ret void
}

; Function Attrs: nounwind uwtable
define void @decode_one_mb(i32 %decoder, %struct.macroblock* %currMB) #0 {
entry:
  %decoder.addr = alloca i32, align 4
  %currMB.addr = alloca %struct.macroblock*, align 8
  store i32 %decoder, i32* %decoder.addr, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  %0 = load i32, i32* %decoder.addr, align 4
  %1 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %1, i32 0, i32 8
  %2 = load i32, i32* %mb_type, align 4
  %3 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i32 0, i32 14
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 37
  %6 = load i32, i32* %block_x, align 4
  %add = add nsw i32 %6, 0
  %idxprom = sext i32 %add to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 38
  %8 = load i32, i32* %block_y, align 4
  %add1 = add nsw i32 %8, 0
  %idxprom2 = sext i32 %add1 to i64
  %9 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 35
  %10 = load i8***, i8**** %ref_idx, align 8
  %arrayidx3 = getelementptr inbounds i8**, i8*** %10, i64 0
  %11 = load i8**, i8*** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 %idxprom2
  %12 = load i8*, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %13 to i32
  call void @decode_one_b8block(i32 %0, i32 %2, i32 0, i32 %4, i32 %conv)
  %14 = load i32, i32* %decoder.addr, align 4
  %15 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 8
  %16 = load i32, i32* %mb_type6, align 4
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %b8mode7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 14
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode7, i32 0, i64 1
  %18 = load i32, i32* %arrayidx8, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 37
  %20 = load i32, i32* %block_x9, align 4
  %add10 = add nsw i32 %20, 2
  %idxprom11 = sext i32 %add10 to i64
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 38
  %22 = load i32, i32* %block_y12, align 4
  %add13 = add nsw i32 %22, 0
  %idxprom14 = sext i32 %add13 to i64
  %23 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 35
  %24 = load i8***, i8**** %ref_idx15, align 8
  %arrayidx16 = getelementptr inbounds i8**, i8*** %24, i64 0
  %25 = load i8**, i8*** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %25, i64 %idxprom14
  %26 = load i8*, i8** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %26, i64 %idxprom11
  %27 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %27 to i32
  call void @decode_one_b8block(i32 %14, i32 %16, i32 1, i32 %18, i32 %conv19)
  %28 = load i32, i32* %decoder.addr, align 4
  %29 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type20 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 8
  %30 = load i32, i32* %mb_type20, align 4
  %31 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %b8mode21 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 14
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode21, i32 0, i64 2
  %32 = load i32, i32* %arrayidx22, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 37
  %34 = load i32, i32* %block_x23, align 4
  %add24 = add nsw i32 %34, 0
  %idxprom25 = sext i32 %add24 to i64
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 38
  %36 = load i32, i32* %block_y26, align 4
  %add27 = add nsw i32 %36, 2
  %idxprom28 = sext i32 %add27 to i64
  %37 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx29 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 35
  %38 = load i8***, i8**** %ref_idx29, align 8
  %arrayidx30 = getelementptr inbounds i8**, i8*** %38, i64 0
  %39 = load i8**, i8*** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %39, i64 %idxprom28
  %40 = load i8*, i8** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %40, i64 %idxprom25
  %41 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %41 to i32
  call void @decode_one_b8block(i32 %28, i32 %30, i32 2, i32 %32, i32 %conv33)
  %42 = load i32, i32* %decoder.addr, align 4
  %43 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 8
  %44 = load i32, i32* %mb_type34, align 4
  %45 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %b8mode35 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %45, i32 0, i32 14
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode35, i32 0, i64 3
  %46 = load i32, i32* %arrayidx36, align 4
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 37
  %48 = load i32, i32* %block_x37, align 4
  %add38 = add nsw i32 %48, 2
  %idxprom39 = sext i32 %add38 to i64
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 38
  %50 = load i32, i32* %block_y40, align 4
  %add41 = add nsw i32 %50, 2
  %idxprom42 = sext i32 %add41 to i64
  %51 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 35
  %52 = load i8***, i8**** %ref_idx43, align 8
  %arrayidx44 = getelementptr inbounds i8**, i8*** %52, i64 0
  %53 = load i8**, i8*** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %53, i64 %idxprom42
  %54 = load i8*, i8** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %54, i64 %idxprom39
  %55 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %55 to i32
  call void @decode_one_b8block(i32 %42, i32 %44, i32 3, i32 %46, i32 %conv47)
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i8 @Get_Reference_Pixel(i16** %imY, i32 %y_pos, i32 %x_pos) #0 {
entry:
  %imY.addr = alloca i16**, align 8
  %y_pos.addr = alloca i32, align 4
  %x_pos.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %x = alloca i32, align 4
  %dy = alloca i32, align 4
  %y = alloca i32, align 4
  %maxold_x = alloca i32, align 4
  %maxold_y = alloca i32, align 4
  %result = alloca i32, align 4
  %result1 = alloca i32, align 4
  %result2 = alloca i32, align 4
  %pres_x = alloca i32, align 4
  %pres_y = alloca i32, align 4
  %tmp_res = alloca [6 x i32], align 16
  store i16** %imY, i16*** %imY.addr, align 8
  store i32 %y_pos, i32* %y_pos.addr, align 4
  store i32 %x_pos, i32* %x_pos.addr, align 4
  store i32 0, i32* %result, align 4
  %0 = load i32, i32* %x_pos.addr, align 4
  %and = and i32 %0, 3
  store i32 %and, i32* %dx, align 4
  %1 = load i32, i32* %y_pos.addr, align 4
  %and1 = and i32 %1, 3
  store i32 %and1, i32* %dy, align 4
  %2 = load i32, i32* %x_pos.addr, align 4
  %3 = load i32, i32* %dx, align 4
  %sub = sub nsw i32 %2, %3
  %div = sdiv i32 %sub, 4
  store i32 %div, i32* %x_pos.addr, align 4
  %4 = load i32, i32* %y_pos.addr, align 4
  %5 = load i32, i32* %dy, align 4
  %sub2 = sub nsw i32 %4, %5
  %div3 = sdiv i32 %sub2, 4
  store i32 %div3, i32* %y_pos.addr, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 13
  %7 = load i32, i32* %width, align 4
  %sub4 = sub nsw i32 %7, 1
  store i32 %sub4, i32* %maxold_x, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 17
  %9 = load i32, i32* %height, align 4
  %sub5 = sub nsw i32 %9, 1
  store i32 %sub5, i32* %maxold_y, align 4
  %10 = load i32, i32* %dx, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %11 = load i32, i32* %dy, align 4
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %maxold_x, align 4
  %13 = load i32, i32* %x_pos.addr, align 4
  %call = call i32 @iClip3(i32 0, i32 %12, i32 %13)
  %idxprom = sext i32 %call to i64
  %14 = load i32, i32* %maxold_y, align 4
  %15 = load i32, i32* %y_pos.addr, align 4
  %call7 = call i32 @iClip3(i32 0, i32 %14, i32 %15)
  %idxprom8 = sext i32 %call7 to i64
  %16 = load i16**, i16*** %imY.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %16, i64 %idxprom8
  %17 = load i16*, i16** %arrayidx, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %17, i64 %idxprom
  %18 = load i16, i16* %arrayidx9, align 2
  %conv = zext i16 %18 to i32
  store i32 %conv, i32* %result, align 4
  br label %if.end.323

if.else:                                          ; preds = %land.lhs.true, %entry
  %19 = load i32, i32* %dy, align 4
  %cmp10 = icmp eq i32 %19, 0
  br i1 %cmp10, label %if.then.12, label %if.else.54

if.then.12:                                       ; preds = %if.else
  %20 = load i32, i32* %maxold_y, align 4
  %21 = load i32, i32* %y_pos.addr, align 4
  %call13 = call i32 @iClip3(i32 0, i32 %20, i32 %21)
  store i32 %call13, i32* %pres_y, align 4
  store i32 -2, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %22 = load i32, i32* %x, align 4
  %cmp14 = icmp slt i32 %22, 4
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %maxold_x, align 4
  %24 = load i32, i32* %x_pos.addr, align 4
  %25 = load i32, i32* %x, align 4
  %add = add nsw i32 %24, %25
  %call16 = call i32 @iClip3(i32 0, i32 %23, i32 %add)
  store i32 %call16, i32* %pres_x, align 4
  %26 = load i32, i32* %pres_x, align 4
  %idxprom17 = sext i32 %26 to i64
  %27 = load i32, i32* %pres_y, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load i16**, i16*** %imY.addr, align 8
  %arrayidx19 = getelementptr inbounds i16*, i16** %28, i64 %idxprom18
  %29 = load i16*, i16** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %29, i64 %idxprom17
  %30 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %30 to i32
  %31 = load i32, i32* %x, align 4
  %add22 = add nsw i32 %31, 2
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom23
  %32 = load i32, i32* %arrayidx24, align 4
  %mul = mul nsw i32 %conv21, %32
  %33 = load i32, i32* %result, align 4
  %add25 = add nsw i32 %33, %mul
  store i32 %add25, i32* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %x, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 156
  %36 = load i32, i32* %max_imgpel_value, align 4
  %37 = load i32, i32* %result, align 4
  %add26 = add nsw i32 %37, 16
  %div27 = sdiv i32 %add26, 32
  %call28 = call i32 @iClip3(i32 0, i32 %36, i32 %div27)
  store i32 %call28, i32* %result, align 4
  %38 = load i32, i32* %dx, align 4
  %cmp29 = icmp eq i32 %38, 1
  br i1 %cmp29, label %if.then.31, label %if.else.40

if.then.31:                                       ; preds = %for.end
  %39 = load i32, i32* %result, align 4
  %40 = load i32, i32* %maxold_x, align 4
  %41 = load i32, i32* %x_pos.addr, align 4
  %call32 = call i32 @iClip3(i32 0, i32 %40, i32 %41)
  %idxprom33 = sext i32 %call32 to i64
  %42 = load i32, i32* %pres_y, align 4
  %idxprom34 = sext i32 %42 to i64
  %43 = load i16**, i16*** %imY.addr, align 8
  %arrayidx35 = getelementptr inbounds i16*, i16** %43, i64 %idxprom34
  %44 = load i16*, i16** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %44, i64 %idxprom33
  %45 = load i16, i16* %arrayidx36, align 2
  %conv37 = zext i16 %45 to i32
  %add38 = add nsw i32 %39, %conv37
  %div39 = sdiv i32 %add38, 2
  store i32 %div39, i32* %result, align 4
  br label %if.end.53

if.else.40:                                       ; preds = %for.end
  %46 = load i32, i32* %dx, align 4
  %cmp41 = icmp eq i32 %46, 3
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %if.else.40
  %47 = load i32, i32* %result, align 4
  %48 = load i32, i32* %maxold_x, align 4
  %49 = load i32, i32* %x_pos.addr, align 4
  %add44 = add nsw i32 %49, 1
  %call45 = call i32 @iClip3(i32 0, i32 %48, i32 %add44)
  %idxprom46 = sext i32 %call45 to i64
  %50 = load i32, i32* %pres_y, align 4
  %idxprom47 = sext i32 %50 to i64
  %51 = load i16**, i16*** %imY.addr, align 8
  %arrayidx48 = getelementptr inbounds i16*, i16** %51, i64 %idxprom47
  %52 = load i16*, i16** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %52, i64 %idxprom46
  %53 = load i16, i16* %arrayidx49, align 2
  %conv50 = zext i16 %53 to i32
  %add51 = add nsw i32 %47, %conv50
  %div52 = sdiv i32 %add51, 2
  store i32 %div52, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.43, %if.else.40
  br label %if.end.53

if.end.53:                                        ; preds = %if.end, %if.then.31
  br label %if.end.322

if.else.54:                                       ; preds = %if.else
  %54 = load i32, i32* %dx, align 4
  %cmp55 = icmp eq i32 %54, 0
  br i1 %cmp55, label %if.then.57, label %if.else.108

if.then.57:                                       ; preds = %if.else.54
  %55 = load i32, i32* %maxold_x, align 4
  %56 = load i32, i32* %x_pos.addr, align 4
  %call58 = call i32 @iClip3(i32 0, i32 %55, i32 %56)
  store i32 %call58, i32* %pres_x, align 4
  store i32 -2, i32* %y, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.75, %if.then.57
  %57 = load i32, i32* %y, align 4
  %cmp60 = icmp slt i32 %57, 4
  br i1 %cmp60, label %for.body.62, label %for.end.77

for.body.62:                                      ; preds = %for.cond.59
  %58 = load i32, i32* %maxold_y, align 4
  %59 = load i32, i32* %y_pos.addr, align 4
  %60 = load i32, i32* %y, align 4
  %add63 = add nsw i32 %59, %60
  %call64 = call i32 @iClip3(i32 0, i32 %58, i32 %add63)
  store i32 %call64, i32* %pres_y, align 4
  %61 = load i32, i32* %pres_x, align 4
  %idxprom65 = sext i32 %61 to i64
  %62 = load i32, i32* %pres_y, align 4
  %idxprom66 = sext i32 %62 to i64
  %63 = load i16**, i16*** %imY.addr, align 8
  %arrayidx67 = getelementptr inbounds i16*, i16** %63, i64 %idxprom66
  %64 = load i16*, i16** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %64, i64 %idxprom65
  %65 = load i16, i16* %arrayidx68, align 2
  %conv69 = zext i16 %65 to i32
  %66 = load i32, i32* %y, align 4
  %add70 = add nsw i32 %66, 2
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom71
  %67 = load i32, i32* %arrayidx72, align 4
  %mul73 = mul nsw i32 %conv69, %67
  %68 = load i32, i32* %result, align 4
  %add74 = add nsw i32 %68, %mul73
  store i32 %add74, i32* %result, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.62
  %69 = load i32, i32* %y, align 4
  %inc76 = add nsw i32 %69, 1
  store i32 %inc76, i32* %y, align 4
  br label %for.cond.59

for.end.77:                                       ; preds = %for.cond.59
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value78 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 156
  %71 = load i32, i32* %max_imgpel_value78, align 4
  %72 = load i32, i32* %result, align 4
  %add79 = add nsw i32 %72, 16
  %div80 = sdiv i32 %add79, 32
  %call81 = call i32 @iClip3(i32 0, i32 %71, i32 %div80)
  store i32 %call81, i32* %result, align 4
  %73 = load i32, i32* %dy, align 4
  %cmp82 = icmp eq i32 %73, 1
  br i1 %cmp82, label %if.then.84, label %if.else.93

if.then.84:                                       ; preds = %for.end.77
  %74 = load i32, i32* %result, align 4
  %75 = load i32, i32* %pres_x, align 4
  %idxprom85 = sext i32 %75 to i64
  %76 = load i32, i32* %maxold_y, align 4
  %77 = load i32, i32* %y_pos.addr, align 4
  %call86 = call i32 @iClip3(i32 0, i32 %76, i32 %77)
  %idxprom87 = sext i32 %call86 to i64
  %78 = load i16**, i16*** %imY.addr, align 8
  %arrayidx88 = getelementptr inbounds i16*, i16** %78, i64 %idxprom87
  %79 = load i16*, i16** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %79, i64 %idxprom85
  %80 = load i16, i16* %arrayidx89, align 2
  %conv90 = zext i16 %80 to i32
  %add91 = add nsw i32 %74, %conv90
  %div92 = sdiv i32 %add91, 2
  store i32 %div92, i32* %result, align 4
  br label %if.end.107

if.else.93:                                       ; preds = %for.end.77
  %81 = load i32, i32* %dy, align 4
  %cmp94 = icmp eq i32 %81, 3
  br i1 %cmp94, label %if.then.96, label %if.end.106

if.then.96:                                       ; preds = %if.else.93
  %82 = load i32, i32* %result, align 4
  %83 = load i32, i32* %pres_x, align 4
  %idxprom97 = sext i32 %83 to i64
  %84 = load i32, i32* %maxold_y, align 4
  %85 = load i32, i32* %y_pos.addr, align 4
  %add98 = add nsw i32 %85, 1
  %call99 = call i32 @iClip3(i32 0, i32 %84, i32 %add98)
  %idxprom100 = sext i32 %call99 to i64
  %86 = load i16**, i16*** %imY.addr, align 8
  %arrayidx101 = getelementptr inbounds i16*, i16** %86, i64 %idxprom100
  %87 = load i16*, i16** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i16, i16* %87, i64 %idxprom97
  %88 = load i16, i16* %arrayidx102, align 2
  %conv103 = zext i16 %88 to i32
  %add104 = add nsw i32 %82, %conv103
  %div105 = sdiv i32 %add104, 2
  store i32 %div105, i32* %result, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.96, %if.else.93
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.84
  br label %if.end.321

if.else.108:                                      ; preds = %if.else.54
  %89 = load i32, i32* %dx, align 4
  %cmp109 = icmp eq i32 %89, 2
  br i1 %cmp109, label %if.then.111, label %if.else.185

if.then.111:                                      ; preds = %if.else.108
  store i32 -2, i32* %y, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.140, %if.then.111
  %90 = load i32, i32* %y, align 4
  %cmp113 = icmp slt i32 %90, 4
  br i1 %cmp113, label %for.body.115, label %for.end.142

for.body.115:                                     ; preds = %for.cond.112
  store i32 0, i32* %result, align 4
  %91 = load i32, i32* %maxold_y, align 4
  %92 = load i32, i32* %y_pos.addr, align 4
  %93 = load i32, i32* %y, align 4
  %add116 = add nsw i32 %92, %93
  %call117 = call i32 @iClip3(i32 0, i32 %91, i32 %add116)
  store i32 %call117, i32* %pres_y, align 4
  store i32 -2, i32* %x, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.134, %for.body.115
  %94 = load i32, i32* %x, align 4
  %cmp119 = icmp slt i32 %94, 4
  br i1 %cmp119, label %for.body.121, label %for.end.136

for.body.121:                                     ; preds = %for.cond.118
  %95 = load i32, i32* %maxold_x, align 4
  %96 = load i32, i32* %x_pos.addr, align 4
  %97 = load i32, i32* %x, align 4
  %add122 = add nsw i32 %96, %97
  %call123 = call i32 @iClip3(i32 0, i32 %95, i32 %add122)
  store i32 %call123, i32* %pres_x, align 4
  %98 = load i32, i32* %pres_x, align 4
  %idxprom124 = sext i32 %98 to i64
  %99 = load i32, i32* %pres_y, align 4
  %idxprom125 = sext i32 %99 to i64
  %100 = load i16**, i16*** %imY.addr, align 8
  %arrayidx126 = getelementptr inbounds i16*, i16** %100, i64 %idxprom125
  %101 = load i16*, i16** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i16, i16* %101, i64 %idxprom124
  %102 = load i16, i16* %arrayidx127, align 2
  %conv128 = zext i16 %102 to i32
  %103 = load i32, i32* %x, align 4
  %add129 = add nsw i32 %103, 2
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom130
  %104 = load i32, i32* %arrayidx131, align 4
  %mul132 = mul nsw i32 %conv128, %104
  %105 = load i32, i32* %result, align 4
  %add133 = add nsw i32 %105, %mul132
  store i32 %add133, i32* %result, align 4
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.121
  %106 = load i32, i32* %x, align 4
  %inc135 = add nsw i32 %106, 1
  store i32 %inc135, i32* %x, align 4
  br label %for.cond.118

for.end.136:                                      ; preds = %for.cond.118
  %107 = load i32, i32* %result, align 4
  %108 = load i32, i32* %y, align 4
  %add137 = add nsw i32 %108, 2
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 %idxprom138
  store i32 %107, i32* %arrayidx139, align 4
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.end.136
  %109 = load i32, i32* %y, align 4
  %inc141 = add nsw i32 %109, 1
  store i32 %inc141, i32* %y, align 4
  br label %for.cond.112

for.end.142:                                      ; preds = %for.cond.112
  store i32 0, i32* %result, align 4
  store i32 -2, i32* %y, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.155, %for.end.142
  %110 = load i32, i32* %y, align 4
  %cmp144 = icmp slt i32 %110, 4
  br i1 %cmp144, label %for.body.146, label %for.end.157

for.body.146:                                     ; preds = %for.cond.143
  %111 = load i32, i32* %y, align 4
  %add147 = add nsw i32 %111, 2
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 %idxprom148
  %112 = load i32, i32* %arrayidx149, align 4
  %113 = load i32, i32* %y, align 4
  %add150 = add nsw i32 %113, 2
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom151
  %114 = load i32, i32* %arrayidx152, align 4
  %mul153 = mul nsw i32 %112, %114
  %115 = load i32, i32* %result, align 4
  %add154 = add nsw i32 %115, %mul153
  store i32 %add154, i32* %result, align 4
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.body.146
  %116 = load i32, i32* %y, align 4
  %inc156 = add nsw i32 %116, 1
  store i32 %inc156, i32* %y, align 4
  br label %for.cond.143

for.end.157:                                      ; preds = %for.cond.143
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value158 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 156
  %118 = load i32, i32* %max_imgpel_value158, align 4
  %119 = load i32, i32* %result, align 4
  %add159 = add nsw i32 %119, 512
  %div160 = sdiv i32 %add159, 1024
  %call161 = call i32 @iClip3(i32 0, i32 %118, i32 %div160)
  store i32 %call161, i32* %result, align 4
  %120 = load i32, i32* %dy, align 4
  %cmp162 = icmp eq i32 %120, 1
  br i1 %cmp162, label %if.then.164, label %if.else.172

if.then.164:                                      ; preds = %for.end.157
  %121 = load i32, i32* %result, align 4
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value165 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 156
  %123 = load i32, i32* %max_imgpel_value165, align 4
  %arrayidx166 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 2
  %124 = load i32, i32* %arrayidx166, align 4
  %add167 = add nsw i32 %124, 16
  %div168 = sdiv i32 %add167, 32
  %call169 = call i32 @iClip3(i32 0, i32 %123, i32 %div168)
  %add170 = add nsw i32 %121, %call169
  %div171 = sdiv i32 %add170, 2
  store i32 %div171, i32* %result, align 4
  br label %if.end.184

if.else.172:                                      ; preds = %for.end.157
  %125 = load i32, i32* %dy, align 4
  %cmp173 = icmp eq i32 %125, 3
  br i1 %cmp173, label %if.then.175, label %if.end.183

if.then.175:                                      ; preds = %if.else.172
  %126 = load i32, i32* %result, align 4
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value176 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 156
  %128 = load i32, i32* %max_imgpel_value176, align 4
  %arrayidx177 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 3
  %129 = load i32, i32* %arrayidx177, align 4
  %add178 = add nsw i32 %129, 16
  %div179 = sdiv i32 %add178, 32
  %call180 = call i32 @iClip3(i32 0, i32 %128, i32 %div179)
  %add181 = add nsw i32 %126, %call180
  %div182 = sdiv i32 %add181, 2
  store i32 %div182, i32* %result, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.175, %if.else.172
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.164
  br label %if.end.320

if.else.185:                                      ; preds = %if.else.108
  %130 = load i32, i32* %dy, align 4
  %cmp186 = icmp eq i32 %130, 2
  br i1 %cmp186, label %if.then.188, label %if.else.258

if.then.188:                                      ; preds = %if.else.185
  store i32 -2, i32* %x, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.217, %if.then.188
  %131 = load i32, i32* %x, align 4
  %cmp190 = icmp slt i32 %131, 4
  br i1 %cmp190, label %for.body.192, label %for.end.219

for.body.192:                                     ; preds = %for.cond.189
  store i32 0, i32* %result, align 4
  %132 = load i32, i32* %maxold_x, align 4
  %133 = load i32, i32* %x_pos.addr, align 4
  %134 = load i32, i32* %x, align 4
  %add193 = add nsw i32 %133, %134
  %call194 = call i32 @iClip3(i32 0, i32 %132, i32 %add193)
  store i32 %call194, i32* %pres_x, align 4
  store i32 -2, i32* %y, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.211, %for.body.192
  %135 = load i32, i32* %y, align 4
  %cmp196 = icmp slt i32 %135, 4
  br i1 %cmp196, label %for.body.198, label %for.end.213

for.body.198:                                     ; preds = %for.cond.195
  %136 = load i32, i32* %maxold_y, align 4
  %137 = load i32, i32* %y_pos.addr, align 4
  %138 = load i32, i32* %y, align 4
  %add199 = add nsw i32 %137, %138
  %call200 = call i32 @iClip3(i32 0, i32 %136, i32 %add199)
  store i32 %call200, i32* %pres_y, align 4
  %139 = load i32, i32* %pres_x, align 4
  %idxprom201 = sext i32 %139 to i64
  %140 = load i32, i32* %pres_y, align 4
  %idxprom202 = sext i32 %140 to i64
  %141 = load i16**, i16*** %imY.addr, align 8
  %arrayidx203 = getelementptr inbounds i16*, i16** %141, i64 %idxprom202
  %142 = load i16*, i16** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i16, i16* %142, i64 %idxprom201
  %143 = load i16, i16* %arrayidx204, align 2
  %conv205 = zext i16 %143 to i32
  %144 = load i32, i32* %y, align 4
  %add206 = add nsw i32 %144, 2
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom207
  %145 = load i32, i32* %arrayidx208, align 4
  %mul209 = mul nsw i32 %conv205, %145
  %146 = load i32, i32* %result, align 4
  %add210 = add nsw i32 %146, %mul209
  store i32 %add210, i32* %result, align 4
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.body.198
  %147 = load i32, i32* %y, align 4
  %inc212 = add nsw i32 %147, 1
  store i32 %inc212, i32* %y, align 4
  br label %for.cond.195

for.end.213:                                      ; preds = %for.cond.195
  %148 = load i32, i32* %result, align 4
  %149 = load i32, i32* %x, align 4
  %add214 = add nsw i32 %149, 2
  %idxprom215 = sext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 %idxprom215
  store i32 %148, i32* %arrayidx216, align 4
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.end.213
  %150 = load i32, i32* %x, align 4
  %inc218 = add nsw i32 %150, 1
  store i32 %inc218, i32* %x, align 4
  br label %for.cond.189

for.end.219:                                      ; preds = %for.cond.189
  store i32 0, i32* %result, align 4
  store i32 -2, i32* %x, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.232, %for.end.219
  %151 = load i32, i32* %x, align 4
  %cmp221 = icmp slt i32 %151, 4
  br i1 %cmp221, label %for.body.223, label %for.end.234

for.body.223:                                     ; preds = %for.cond.220
  %152 = load i32, i32* %x, align 4
  %add224 = add nsw i32 %152, 2
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 %idxprom225
  %153 = load i32, i32* %arrayidx226, align 4
  %154 = load i32, i32* %x, align 4
  %add227 = add nsw i32 %154, 2
  %idxprom228 = sext i32 %add227 to i64
  %arrayidx229 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom228
  %155 = load i32, i32* %arrayidx229, align 4
  %mul230 = mul nsw i32 %153, %155
  %156 = load i32, i32* %result, align 4
  %add231 = add nsw i32 %156, %mul230
  store i32 %add231, i32* %result, align 4
  br label %for.inc.232

for.inc.232:                                      ; preds = %for.body.223
  %157 = load i32, i32* %x, align 4
  %inc233 = add nsw i32 %157, 1
  store i32 %inc233, i32* %x, align 4
  br label %for.cond.220

for.end.234:                                      ; preds = %for.cond.220
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value235 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 156
  %159 = load i32, i32* %max_imgpel_value235, align 4
  %160 = load i32, i32* %result, align 4
  %add236 = add nsw i32 %160, 512
  %div237 = sdiv i32 %add236, 1024
  %call238 = call i32 @iClip3(i32 0, i32 %159, i32 %div237)
  store i32 %call238, i32* %result, align 4
  %161 = load i32, i32* %dx, align 4
  %cmp239 = icmp eq i32 %161, 1
  br i1 %cmp239, label %if.then.241, label %if.else.249

if.then.241:                                      ; preds = %for.end.234
  %162 = load i32, i32* %result, align 4
  %163 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value242 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %163, i32 0, i32 156
  %164 = load i32, i32* %max_imgpel_value242, align 4
  %arrayidx243 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 2
  %165 = load i32, i32* %arrayidx243, align 4
  %add244 = add nsw i32 %165, 16
  %div245 = sdiv i32 %add244, 32
  %call246 = call i32 @iClip3(i32 0, i32 %164, i32 %div245)
  %add247 = add nsw i32 %162, %call246
  %div248 = sdiv i32 %add247, 2
  store i32 %div248, i32* %result, align 4
  br label %if.end.257

if.else.249:                                      ; preds = %for.end.234
  %166 = load i32, i32* %result, align 4
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value250 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 156
  %168 = load i32, i32* %max_imgpel_value250, align 4
  %arrayidx251 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 3
  %169 = load i32, i32* %arrayidx251, align 4
  %add252 = add nsw i32 %169, 16
  %div253 = sdiv i32 %add252, 32
  %call254 = call i32 @iClip3(i32 0, i32 %168, i32 %div253)
  %add255 = add nsw i32 %166, %call254
  %div256 = sdiv i32 %add255, 2
  store i32 %div256, i32* %result, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.249, %if.then.241
  br label %if.end.319

if.else.258:                                      ; preds = %if.else.185
  store i32 0, i32* %result, align 4
  %170 = load i32, i32* %dy, align 4
  %cmp259 = icmp eq i32 %170, 1
  br i1 %cmp259, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.258
  %171 = load i32, i32* %y_pos.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else.258
  %172 = load i32, i32* %y_pos.addr, align 4
  %add261 = add nsw i32 %172, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %171, %cond.true ], [ %add261, %cond.false ]
  store i32 %cond, i32* %pres_y, align 4
  %173 = load i32, i32* %maxold_y, align 4
  %174 = load i32, i32* %pres_y, align 4
  %call262 = call i32 @iClip3(i32 0, i32 %173, i32 %174)
  store i32 %call262, i32* %pres_y, align 4
  store i32 -2, i32* %x, align 4
  br label %for.cond.263

for.cond.263:                                     ; preds = %for.inc.279, %cond.end
  %175 = load i32, i32* %x, align 4
  %cmp264 = icmp slt i32 %175, 4
  br i1 %cmp264, label %for.body.266, label %for.end.281

for.body.266:                                     ; preds = %for.cond.263
  %176 = load i32, i32* %maxold_x, align 4
  %177 = load i32, i32* %x_pos.addr, align 4
  %178 = load i32, i32* %x, align 4
  %add267 = add nsw i32 %177, %178
  %call268 = call i32 @iClip3(i32 0, i32 %176, i32 %add267)
  store i32 %call268, i32* %pres_x, align 4
  %179 = load i32, i32* %pres_x, align 4
  %idxprom269 = sext i32 %179 to i64
  %180 = load i32, i32* %pres_y, align 4
  %idxprom270 = sext i32 %180 to i64
  %181 = load i16**, i16*** %imY.addr, align 8
  %arrayidx271 = getelementptr inbounds i16*, i16** %181, i64 %idxprom270
  %182 = load i16*, i16** %arrayidx271, align 8
  %arrayidx272 = getelementptr inbounds i16, i16* %182, i64 %idxprom269
  %183 = load i16, i16* %arrayidx272, align 2
  %conv273 = zext i16 %183 to i32
  %184 = load i32, i32* %x, align 4
  %add274 = add nsw i32 %184, 2
  %idxprom275 = sext i32 %add274 to i64
  %arrayidx276 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom275
  %185 = load i32, i32* %arrayidx276, align 4
  %mul277 = mul nsw i32 %conv273, %185
  %186 = load i32, i32* %result, align 4
  %add278 = add nsw i32 %186, %mul277
  store i32 %add278, i32* %result, align 4
  br label %for.inc.279

for.inc.279:                                      ; preds = %for.body.266
  %187 = load i32, i32* %x, align 4
  %inc280 = add nsw i32 %187, 1
  store i32 %inc280, i32* %x, align 4
  br label %for.cond.263

for.end.281:                                      ; preds = %for.cond.263
  %188 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value282 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %188, i32 0, i32 156
  %189 = load i32, i32* %max_imgpel_value282, align 4
  %190 = load i32, i32* %result, align 4
  %add283 = add nsw i32 %190, 16
  %div284 = sdiv i32 %add283, 32
  %call285 = call i32 @iClip3(i32 0, i32 %189, i32 %div284)
  store i32 %call285, i32* %result1, align 4
  store i32 0, i32* %result, align 4
  %191 = load i32, i32* %dx, align 4
  %cmp286 = icmp eq i32 %191, 1
  br i1 %cmp286, label %cond.true.288, label %cond.false.289

cond.true.288:                                    ; preds = %for.end.281
  %192 = load i32, i32* %x_pos.addr, align 4
  br label %cond.end.291

cond.false.289:                                   ; preds = %for.end.281
  %193 = load i32, i32* %x_pos.addr, align 4
  %add290 = add nsw i32 %193, 1
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.289, %cond.true.288
  %cond292 = phi i32 [ %192, %cond.true.288 ], [ %add290, %cond.false.289 ]
  store i32 %cond292, i32* %pres_x, align 4
  %194 = load i32, i32* %maxold_x, align 4
  %195 = load i32, i32* %pres_x, align 4
  %call293 = call i32 @iClip3(i32 0, i32 %194, i32 %195)
  store i32 %call293, i32* %pres_x, align 4
  store i32 -2, i32* %y, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.310, %cond.end.291
  %196 = load i32, i32* %y, align 4
  %cmp295 = icmp slt i32 %196, 4
  br i1 %cmp295, label %for.body.297, label %for.end.312

for.body.297:                                     ; preds = %for.cond.294
  %197 = load i32, i32* %maxold_y, align 4
  %198 = load i32, i32* %y_pos.addr, align 4
  %199 = load i32, i32* %y, align 4
  %add298 = add nsw i32 %198, %199
  %call299 = call i32 @iClip3(i32 0, i32 %197, i32 %add298)
  store i32 %call299, i32* %pres_y, align 4
  %200 = load i32, i32* %pres_x, align 4
  %idxprom300 = sext i32 %200 to i64
  %201 = load i32, i32* %pres_y, align 4
  %idxprom301 = sext i32 %201 to i64
  %202 = load i16**, i16*** %imY.addr, align 8
  %arrayidx302 = getelementptr inbounds i16*, i16** %202, i64 %idxprom301
  %203 = load i16*, i16** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i16, i16* %203, i64 %idxprom300
  %204 = load i16, i16* %arrayidx303, align 2
  %conv304 = zext i16 %204 to i32
  %205 = load i32, i32* %y, align 4
  %add305 = add nsw i32 %205, 2
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom306
  %206 = load i32, i32* %arrayidx307, align 4
  %mul308 = mul nsw i32 %conv304, %206
  %207 = load i32, i32* %result, align 4
  %add309 = add nsw i32 %207, %mul308
  store i32 %add309, i32* %result, align 4
  br label %for.inc.310

for.inc.310:                                      ; preds = %for.body.297
  %208 = load i32, i32* %y, align 4
  %inc311 = add nsw i32 %208, 1
  store i32 %inc311, i32* %y, align 4
  br label %for.cond.294

for.end.312:                                      ; preds = %for.cond.294
  %209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value313 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %209, i32 0, i32 156
  %210 = load i32, i32* %max_imgpel_value313, align 4
  %211 = load i32, i32* %result, align 4
  %add314 = add nsw i32 %211, 16
  %div315 = sdiv i32 %add314, 32
  %call316 = call i32 @iClip3(i32 0, i32 %210, i32 %div315)
  store i32 %call316, i32* %result2, align 4
  %212 = load i32, i32* %result1, align 4
  %213 = load i32, i32* %result2, align 4
  %add317 = add nsw i32 %212, %213
  %div318 = sdiv i32 %add317, 2
  store i32 %div318, i32* %result, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %for.end.312, %if.end.257
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.end.184
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.end.107
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end.53
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.then
  %214 = load i32, i32* %result, align 4
  %conv324 = trunc i32 %214 to i8
  ret i8 %conv324
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #1 {
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
define void @UpdateDecoders() #0 {
entry:
  %k = alloca i32, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 127
  %2 = load i32, i32* %NoOfDecoders, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %status_map = getelementptr inbounds %struct.Decoders, %struct.Decoders* %3, i32 0, i32 5
  %4 = load i8**, i8*** %status_map, align 8
  call void @Build_Status_Map(i8** %4)
  %5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best = getelementptr inbounds %struct.Decoders, %struct.Decoders* %6, i32 0, i32 3
  %7 = load i16***, i16**** %decY_best, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %7, i64 %idxprom
  %8 = load i16**, i16*** %arrayidx, align 8
  %9 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %status_map1 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %9, i32 0, i32 5
  %10 = load i8**, i8*** %status_map1, align 8
  %11 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref = getelementptr inbounds %struct.Decoders, %struct.Decoders* %12, i32 0, i32 2
  %13 = load i16****, i16***** %decref, align 8
  %arrayidx3 = getelementptr inbounds i16***, i16**** %13, i64 %idxprom2
  %14 = load i16***, i16**** %arrayidx3, align 8
  call void @Error_Concealment(i16** %8, i8** %10, i16*** %14)
  %15 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best5 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %16, i32 0, i32 3
  %17 = load i16***, i16**** %decY_best5, align 8
  %arrayidx6 = getelementptr inbounds i16**, i16*** %17, i64 %idxprom4
  %18 = load i16**, i16*** %arrayidx6, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref8 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %20, i32 0, i32 2
  %21 = load i16****, i16***** %decref8, align 8
  %arrayidx9 = getelementptr inbounds i16***, i16**** %21, i64 %idxprom7
  %22 = load i16***, i16**** %arrayidx9, align 8
  call void @DecOneForthPix(i16** %18, i16*** %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %k, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Build_Status_Map(i8** %s_map) #0 {
entry:
  %s_map.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %slice = alloca i32, align 4
  %mb = alloca i32, align 4
  %jj = alloca i32, align 4
  %ii = alloca i32, align 4
  %packet_lost = alloca i32, align 4
  store i8** %s_map, i8*** %s_map.addr, align 8
  store i32 -1, i32* %slice, align 4
  store i32 0, i32* %mb, align 4
  store i32 0, i32* %packet_lost, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 17
  %1 = load i32, i32* %height, align 4
  %div = sdiv i32 %1, 16
  store i32 %div, i32* %jj, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4
  %div1 = sdiv i32 %3, 16
  store i32 %div1, i32* %ii, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %jj, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %ii, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 21
  %9 = load i32, i32* %slice_mode, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body.4
  %10 = load i32, i32* %mb, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 61
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i64 %idxprom
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 0
  %13 = load i32, i32* %slice_nr, align 4
  %14 = load i32, i32* %slice, align 4
  %cmp5 = icmp ne i32 %13, %14
  br i1 %cmp5, label %if.then, label %if.end.30

if.then:                                          ; preds = %lor.lhs.false, %for.body.4
  store i32 0, i32* %packet_lost, align 4
  %call = call i32 @rand() #2
  %conv = sitofp i32 %call to double
  %div6 = fdiv double %conv, 0x41DFFFFFFFC00000
  %mul = fmul double %div6, 1.000000e+02
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LossRateC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 126
  %16 = load i32, i32* %LossRateC, align 4
  %conv7 = sitofp i32 %16 to double
  %cmp8 = fcmp olt double %mul, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %17 = load i32, i32* %packet_lost, align 4
  %add = add nsw i32 %17, 3
  store i32 %add, i32* %packet_lost, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %call11 = call i32 @rand() #2
  %conv12 = sitofp i32 %call11 to double
  %div13 = fdiv double %conv12, 0x41DFFFFFFFC00000
  %mul14 = fmul double %div13, 1.000000e+02
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LossRateB = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 125
  %19 = load i32, i32* %LossRateB, align 4
  %conv15 = sitofp i32 %19 to double
  %cmp16 = fcmp olt double %mul14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end
  %20 = load i32, i32* %packet_lost, align 4
  %add19 = add nsw i32 %20, 2
  store i32 %add19, i32* %packet_lost, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end
  %call21 = call i32 @rand() #2
  %conv22 = sitofp i32 %call21 to double
  %div23 = fdiv double %conv22, 0x41DFFFFFFFC00000
  %mul24 = fmul double %div23, 1.000000e+02
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LossRateA = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 124
  %22 = load i32, i32* %LossRateA, align 4
  %conv25 = sitofp i32 %22 to double
  %cmp26 = fcmp olt double %mul24, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.20
  store i32 1, i32* %packet_lost, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.20
  %23 = load i32, i32* %slice, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %slice, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %lor.lhs.false
  %24 = load i32, i32* %packet_lost, align 4
  %tobool31 = icmp ne i32 %24, 0
  br i1 %tobool31, label %if.else, label %if.then.32

if.then.32:                                       ; preds = %if.end.30
  %25 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i8**, i8*** %s_map.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %27, i64 %idxprom34
  %28 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 %idxprom33
  store i8 0, i8* %arrayidx36, align 1
  br label %if.end.50

if.else:                                          ; preds = %if.end.30
  %29 = load i32, i32* %packet_lost, align 4
  %conv37 = trunc i32 %29 to i8
  %30 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %31 to i64
  %32 = load i8**, i8*** %s_map.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %32, i64 %idxprom39
  %33 = load i8*, i8** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %33, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx41, align 1
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 76
  %35 = load i32, i32* %partition_mode, align 4
  %cmp42 = icmp eq i32 %35, 0
  br i1 %cmp42, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %if.else
  %36 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %37 to i64
  %38 = load i8**, i8*** %s_map.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %38, i64 %idxprom46
  %39 = load i8*, i8** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %39, i64 %idxprom45
  store i8 1, i8* %arrayidx48, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %if.else
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.32
  %40 = load i32, i32* %mb, align 4
  %inc51 = add nsw i32 %40, 1
  store i32 %inc51, i32* %mb, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %41 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %41, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end
  %42 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %42, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Error_Concealment(i16** %inY, i8** %s_map, i16*** %refY) #0 {
entry:
  %inY.addr = alloca i16**, align 8
  %s_map.addr = alloca i8**, align 8
  %refY.addr = alloca i16***, align 8
  %mb_y = alloca i32, align 4
  %mb_x = alloca i32, align 4
  %mb_h = alloca i32, align 4
  %mb_w = alloca i32, align 4
  store i16** %inY, i16*** %inY.addr, align 8
  store i8** %s_map, i8*** %s_map.addr, align 8
  store i16*** %refY, i16**** %refY.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 17
  %1 = load i32, i32* %height, align 4
  %div = sdiv i32 %1, 16
  store i32 %div, i32* %mb_h, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4
  %div1 = sdiv i32 %3, 16
  store i32 %div1, i32* %mb_w, align 4
  store i32 0, i32* %mb_y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %4 = load i32, i32* %mb_y, align 4
  %5 = load i32, i32* %mb_h, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %mb_x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %mb_x, align 4
  %7 = load i32, i32* %mb_w, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i32, i32* %mb_x, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %mb_y, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8**, i8*** %s_map.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom5
  %11 = load i8*, i8** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx6, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %13 = load i16**, i16*** %inY.addr, align 8
  %14 = load i32, i32* %mb_y, align 4
  %15 = load i32, i32* %mb_x, align 4
  %16 = load i16***, i16**** %refY.addr, align 8
  %17 = load i8**, i8*** %s_map.addr, align 8
  call void @Conceal_Error(i16** %13, i32 %14, i32 %15, i16*** %16, i8** %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %mb_x, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %mb_x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %19 = load i32, i32* %mb_y, align 4
  %inc8 = add nsw i32 %19, 1
  store i32 %inc8, i32* %mb_y, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DecOneForthPix(i16** %dY, i16*** %dref) #0 {
entry:
  %dY.addr = alloca i16**, align 8
  %dref.addr = alloca i16***, align 8
  %j = alloca i32, align 4
  %ref = alloca i32, align 4
  store i16** %dY, i16*** %dY.addr, align 8
  store i16*** %dref, i16**** %dref.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %2 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 93
  %4 = load i32, i32* %buf_cycle, align 4
  %rem = srem i32 %sub, %4
  store i32 %rem, i32* %ref, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 17
  %7 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %ref, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load i16***, i16**** %dref.addr, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %10, i64 %idxprom1
  %11 = load i16**, i16*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %11, i64 %idxprom
  %12 = load i16*, i16** %arrayidx2, align 8
  %13 = bitcast i16* %12 to i8*
  %14 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %14 to i64
  %15 = load i16**, i16*** %dY.addr, align 8
  %arrayidx4 = getelementptr inbounds i16*, i16** %15, i64 %idxprom3
  %16 = load i16*, i16** %arrayidx4, align 8
  %17 = bitcast i16* %16 to i8*
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 13
  %19 = load i32, i32* %width, align 4
  %conv = sext i32 %19 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %17, i64 %mul, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @compute_residue_b8block(i32 %b8block, i32 %i16mode) #0 {
entry:
  %b8block.addr = alloca i32, align 4
  %i16mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  store i32 %b8block, i32* %b8block.addr, align 4
  store i32 %i16mode, i32* %i16mode.addr, align 4
  %0 = load i32, i32* %b8block.addr, align 4
  %rem = srem i32 %0, 2
  %shl = shl i32 %rem, 3
  store i32 %shl, i32* %i0, align 4
  %1 = load i32, i32* %i0, align 4
  %add = add nsw i32 %1, 8
  store i32 %add, i32* %i1, align 4
  %2 = load i32, i32* %b8block.addr, align 4
  %div = sdiv i32 %2, 2
  %shl1 = shl i32 %div, 3
  store i32 %shl1, i32* %j0, align 4
  %3 = load i32, i32* %j0, align 4
  %add2 = add nsw i32 %3, 8
  store i32 %add2, i32* %j1, align 4
  %4 = load i32, i32* %i16mode.addr, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %i0, align 4
  store i32 %5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j0, align 4
  store i32 %8, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %j1, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 39
  %12 = load i32, i32* %pix_x, align 4
  %13 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %12, %13
  %idxprom = sext i32 %add7 to i64
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 40
  %15 = load i32, i32* %pix_y, align 4
  %16 = load i32, i32* %j, align 4
  %add8 = add nsw i32 %15, %16
  %idxprom9 = sext i32 %add8 to i64
  %17 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %17, i32 0, i32 29
  %18 = load i16**, i16*** %imgY, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %18, i64 %idxprom9
  %19 = load i16*, i16** %arrayidx, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %19, i64 %idxprom
  %20 = load i16, i16* %arrayidx10, align 2
  %conv = zext i16 %20 to i32
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load i32, i32* %i16mode.addr, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 48
  %arrayidx14 = getelementptr inbounds [5 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]]* %mprr_2, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx14, i32 0, i64 %idxprom12
  %arrayidx16 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx15, i32 0, i64 %idxprom11
  %25 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %25 to i32
  %sub = sub nsw i32 %conv, %conv17
  %26 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %28, i32 0, i32 0
  %29 = load i32**, i32*** %resY, align 8
  %arrayidx20 = getelementptr inbounds i32*, i32** %29, i64 %idxprom19
  %30 = load i32*, i32** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %30, i64 %idxprom18
  store i32 %sub, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %33 = load i32, i32* %i0, align 4
  store i32 %33, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.57, %if.else
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %i1, align 4
  %cmp26 = icmp slt i32 %34, %35
  br i1 %cmp26, label %for.body.28, label %for.end.59

for.body.28:                                      ; preds = %for.cond.25
  %36 = load i32, i32* %j0, align 4
  store i32 %36, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.54, %for.body.28
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %j1, align 4
  %cmp30 = icmp slt i32 %37, %38
  br i1 %cmp30, label %for.body.32, label %for.end.56

for.body.32:                                      ; preds = %for.cond.29
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 39
  %40 = load i32, i32* %pix_x33, align 4
  %41 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %40, %41
  %idxprom35 = sext i32 %add34 to i64
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 40
  %43 = load i32, i32* %pix_y36, align 4
  %44 = load i32, i32* %j, align 4
  %add37 = add nsw i32 %43, %44
  %idxprom38 = sext i32 %add37 to i64
  %45 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 29
  %46 = load i16**, i16*** %imgY39, align 8
  %arrayidx40 = getelementptr inbounds i16*, i16** %46, i64 %idxprom38
  %47 = load i16*, i16** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %47, i64 %idxprom35
  %48 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %48 to i32
  %49 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %49 to i64
  %50 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %50 to i64
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 51
  %arrayidx45 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx45, i32 0, i64 %idxprom43
  %52 = load i16, i16* %arrayidx46, align 2
  %conv47 = zext i16 %52 to i32
  %sub48 = sub nsw i32 %conv42, %conv47
  %53 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %53 to i64
  %54 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY51 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %55, i32 0, i32 0
  %56 = load i32**, i32*** %resY51, align 8
  %arrayidx52 = getelementptr inbounds i32*, i32** %56, i64 %idxprom50
  %57 = load i32*, i32** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %57, i64 %idxprom49
  store i32 %sub48, i32* %arrayidx53, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.32
  %58 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %58, 1
  store i32 %inc55, i32* %j, align 4
  br label %for.cond.29

for.end.56:                                       ; preds = %for.cond.29
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end.56
  %59 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %59, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.25

for.end.59:                                       ; preds = %for.cond.25
  br label %if.end

if.end:                                           ; preds = %for.end.59, %for.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define void @compute_residue_mb(i32 %i16mode) #0 {
entry:
  %i16mode.addr = alloca i32, align 4
  store i32 %i16mode, i32* %i16mode.addr, align 4
  %0 = load i32, i32* %i16mode.addr, align 4
  call void @compute_residue_b8block(i32 0, i32 %0)
  %1 = load i32, i32* %i16mode.addr, align 4
  call void @compute_residue_b8block(i32 1, i32 %1)
  %2 = load i32, i32* %i16mode.addr, align 4
  call void @compute_residue_b8block(i32 2, i32 %2)
  %3 = load i32, i32* %i16mode.addr, align 4
  call void @compute_residue_b8block(i32 3, i32 %3)
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nounwind uwtable
define void @Conceal_Error(i16** %inY, i32 %mb_y, i32 %mb_x, i16*** %refY, i8** %s_map) #0 {
entry:
  %inY.addr = alloca i16**, align 8
  %mb_y.addr = alloca i32, align 4
  %mb_x.addr = alloca i32, align 4
  %refY.addr = alloca i16***, align 8
  %s_map.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %ref_inx = alloca i32, align 4
  %pos_y = alloca i32, align 4
  %pos_x = alloca i32, align 4
  %mv = alloca [2 x [4 x [4 x i32]]], align 16
  %resY = alloca [16 x [16 x i32]], align 16
  %copy = alloca i32, align 4
  %inter = alloca i32, align 4
  %tmp_mv = alloca i16***, align 8
  store i16** %inY, i16*** %inY.addr, align 8
  store i32 %mb_y, i32* %mb_y.addr, align 4
  store i32 %mb_x, i32* %mb_x.addr, align 4
  store i16*** %refY, i16**** %refY.addr, align 8
  store i8** %s_map, i8*** %s_map.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %2 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %1, %2
  %sub1 = sub nsw i32 %sub, 1
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 7
  %4 = load i32, i32* %num_ref_frames, align 4
  %rem = srem i32 %sub1, %4
  store i32 %rem, i32* %ref_inx, align 4
  %5 = load i32, i32* %mb_y.addr, align 4
  %mul = mul nsw i32 %5, 16
  store i32 %mul, i32* %pos_y, align 4
  %6 = load i32, i32* %mb_x.addr, align 4
  %mul2 = mul nsw i32 %6, 16
  store i32 %mul2, i32* %pos_x, align 4
  %7 = load i32, i32* %mb_x.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %mb_y.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode = getelementptr inbounds %struct.Decoders, %struct.Decoders* %9, i32 0, i32 6
  %10 = load i8**, i8*** %dec_mb_mode, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom3
  %11 = load i8*, i8** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end.14

land.rhs:                                         ; preds = %entry
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 5
  %14 = load i32, i32* %type, align 4
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 5
  %16 = load i32, i32* %type8, align 4
  %cmp9 = icmp eq i32 %16, 1
  br i1 %cmp9, label %land.rhs.11, label %land.end

land.rhs.11:                                      ; preds = %lor.rhs
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 122
  %18 = load i32, i32* %nal_reference_idc, align 4
  %cmp12 = icmp sgt i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.11, %lor.rhs
  %19 = phi i1 [ false, %lor.rhs ], [ %cmp12, %land.rhs.11 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %20 = phi i1 [ true, %land.rhs ], [ %19, %land.end ]
  br label %land.end.14

land.end.14:                                      ; preds = %lor.end, %entry
  %21 = phi i1 [ false, %entry ], [ %20, %lor.end ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %copy, align 4
  %22 = load i32, i32* %mb_x.addr, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load i32, i32* %mb_y.addr, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode17 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %24, i32 0, i32 6
  %25 = load i8**, i8*** %dec_mb_mode17, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %25, i64 %idxprom16
  %26 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 %idxprom15
  %27 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %27 to i32
  %cmp21 = icmp sge i32 %conv20, 1
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %land.end.14
  %28 = load i32, i32* %mb_x.addr, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load i32, i32* %mb_y.addr, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode25 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %30, i32 0, i32 6
  %31 = load i8**, i8*** %dec_mb_mode25, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %31, i64 %idxprom24
  %32 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %32, i64 %idxprom23
  %33 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %33 to i32
  %cmp29 = icmp sle i32 %conv28, 3
  br i1 %cmp29, label %land.rhs.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %land.end.14
  %34 = load i32, i32* %mb_x.addr, align 4
  %idxprom31 = sext i32 %34 to i64
  %35 = load i32, i32* %mb_y.addr, align 4
  %idxprom32 = sext i32 %35 to i64
  %36 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode33 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %36, i32 0, i32 6
  %37 = load i8**, i8*** %dec_mb_mode33, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %37, i64 %idxprom32
  %38 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %38, i64 %idxprom31
  %39 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %39 to i32
  %cmp37 = icmp eq i32 %conv36, 8
  br i1 %cmp37, label %land.rhs.39, label %land.end.54

land.rhs.39:                                      ; preds = %lor.lhs.false, %land.lhs.true
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 5
  %41 = load i32, i32* %type40, align 4
  %cmp41 = icmp eq i32 %41, 0
  br i1 %cmp41, label %lor.end.53, label %lor.rhs.43

lor.rhs.43:                                       ; preds = %land.rhs.39
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 5
  %43 = load i32, i32* %type44, align 4
  %cmp45 = icmp eq i32 %43, 1
  br i1 %cmp45, label %land.rhs.47, label %land.end.51

land.rhs.47:                                      ; preds = %lor.rhs.43
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 122
  %45 = load i32, i32* %nal_reference_idc48, align 4
  %cmp49 = icmp sgt i32 %45, 0
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.47, %lor.rhs.43
  %46 = phi i1 [ false, %lor.rhs.43 ], [ %cmp49, %land.rhs.47 ]
  br label %lor.end.53

lor.end.53:                                       ; preds = %land.end.51, %land.rhs.39
  %47 = phi i1 [ true, %land.rhs.39 ], [ %46, %land.end.51 ]
  br label %land.end.54

land.end.54:                                      ; preds = %lor.end.53, %lor.lhs.false
  %48 = phi i1 [ false, %lor.lhs.false ], [ %47, %lor.end.53 ]
  %land.ext55 = zext i1 %48 to i32
  store i32 %land.ext55, i32* %inter, align 4
  %49 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv56 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 38
  %50 = load i16****, i16***** %mv56, align 8
  %arrayidx57 = getelementptr inbounds i16***, i16**** %50, i64 0
  %51 = load i16***, i16**** %arrayidx57, align 8
  store i16*** %51, i16**** %tmp_mv, align 8
  %52 = load i32, i32* %mb_x.addr, align 4
  %idxprom58 = sext i32 %52 to i64
  %53 = load i32, i32* %mb_y.addr, align 4
  %idxprom59 = sext i32 %53 to i64
  %54 = load i8**, i8*** %s_map.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %54, i64 %idxprom59
  %55 = load i8*, i8** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %55, i64 %idxprom58
  %56 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %56 to i32
  switch i32 %conv62, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %sw.bb.108
    i32 3, label %sw.bb.322
    i32 2, label %sw.bb.488
  ]

sw.bb:                                            ; preds = %land.end.54
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 5
  %58 = load i32, i32* %type63, align 4
  %cmp64 = icmp ne i32 %58, 2
  br i1 %cmp64, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.85, %if.then
  %59 = load i32, i32* %j, align 4
  %cmp66 = icmp slt i32 %59, 16
  br i1 %cmp66, label %for.body, label %for.end.87

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc, %for.body
  %60 = load i32, i32* %i, align 4
  %cmp69 = icmp slt i32 %60, 16
  br i1 %cmp69, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.68
  %61 = load i32, i32* %pos_x, align 4
  %62 = load i32, i32* %i, align 4
  %add = add nsw i32 %61, %62
  %idxprom72 = sext i32 %add to i64
  %63 = load i32, i32* %pos_y, align 4
  %64 = load i32, i32* %j, align 4
  %add73 = add nsw i32 %63, %64
  %idxprom74 = sext i32 %add73 to i64
  %65 = load i32, i32* %ref_inx, align 4
  %idxprom75 = sext i32 %65 to i64
  %66 = load i16***, i16**** %refY.addr, align 8
  %arrayidx76 = getelementptr inbounds i16**, i16*** %66, i64 %idxprom75
  %67 = load i16**, i16*** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i16*, i16** %67, i64 %idxprom74
  %68 = load i16*, i16** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i16, i16* %68, i64 %idxprom72
  %69 = load i16, i16* %arrayidx78, align 2
  %70 = load i32, i32* %pos_x, align 4
  %71 = load i32, i32* %i, align 4
  %add79 = add nsw i32 %70, %71
  %idxprom80 = sext i32 %add79 to i64
  %72 = load i32, i32* %pos_y, align 4
  %73 = load i32, i32* %j, align 4
  %add81 = add nsw i32 %72, %73
  %idxprom82 = sext i32 %add81 to i64
  %74 = load i16**, i16*** %inY.addr, align 8
  %arrayidx83 = getelementptr inbounds i16*, i16** %74, i64 %idxprom82
  %75 = load i16*, i16** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i16, i16* %75, i64 %idxprom80
  store i16 %69, i16* %arrayidx84, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.71
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.68

for.end:                                          ; preds = %for.cond.68
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end
  %77 = load i32, i32* %j, align 4
  %inc86 = add nsw i32 %77, 1
  store i32 %inc86, i32* %j, align 4
  br label %for.cond

for.end.87:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %sw.bb
  store i32 0, i32* %j, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.105, %if.else
  %78 = load i32, i32* %j, align 4
  %cmp89 = icmp slt i32 %78, 16
  br i1 %cmp89, label %for.body.91, label %for.end.107

for.body.91:                                      ; preds = %for.cond.88
  store i32 0, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.102, %for.body.91
  %79 = load i32, i32* %i, align 4
  %cmp93 = icmp slt i32 %79, 16
  br i1 %cmp93, label %for.body.95, label %for.end.104

for.body.95:                                      ; preds = %for.cond.92
  %80 = load i32, i32* %pos_x, align 4
  %81 = load i32, i32* %i, align 4
  %add96 = add nsw i32 %80, %81
  %idxprom97 = sext i32 %add96 to i64
  %82 = load i32, i32* %pos_y, align 4
  %83 = load i32, i32* %j, align 4
  %add98 = add nsw i32 %82, %83
  %idxprom99 = sext i32 %add98 to i64
  %84 = load i16**, i16*** %inY.addr, align 8
  %arrayidx100 = getelementptr inbounds i16*, i16** %84, i64 %idxprom99
  %85 = load i16*, i16** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %85, i64 %idxprom97
  store i16 127, i16* %arrayidx101, align 2
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.95
  %86 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %86, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.92

for.end.104:                                      ; preds = %for.cond.92
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.104
  %87 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %87, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond.88

for.end.107:                                      ; preds = %for.cond.88
  br label %if.end

if.end:                                           ; preds = %for.end.107, %for.end.87
  br label %sw.epilog

sw.bb.108:                                        ; preds = %land.end.54
  store i32 0, i32* %block_y, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.145, %sw.bb.108
  %88 = load i32, i32* %block_y, align 4
  %cmp110 = icmp slt i32 %88, 4
  br i1 %cmp110, label %for.body.112, label %for.end.147

for.body.112:                                     ; preds = %for.cond.109
  store i32 0, i32* %block_x, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.142, %for.body.112
  %89 = load i32, i32* %block_x, align 4
  %cmp114 = icmp slt i32 %89, 4
  br i1 %cmp114, label %for.body.116, label %for.end.144

for.body.116:                                     ; preds = %for.cond.113
  store i32 0, i32* %i, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.139, %for.body.116
  %90 = load i32, i32* %i, align 4
  %cmp118 = icmp slt i32 %90, 2
  br i1 %cmp118, label %for.body.120, label %for.end.141

for.body.120:                                     ; preds = %for.cond.117
  %91 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %91 to i64
  %92 = load i32, i32* %mb_x.addr, align 4
  %mul122 = mul nsw i32 %92, 4
  %93 = load i32, i32* %block_x, align 4
  %add123 = add nsw i32 %mul122, %93
  %add124 = add nsw i32 %add123, 4
  %idxprom125 = sext i32 %add124 to i64
  %94 = load i32, i32* %mb_y.addr, align 4
  %mul126 = mul nsw i32 %94, 4
  %95 = load i32, i32* %block_y, align 4
  %add127 = add nsw i32 %mul126, %95
  %idxprom128 = sext i32 %add127 to i64
  %96 = load i16***, i16**** %tmp_mv, align 8
  %arrayidx129 = getelementptr inbounds i16**, i16*** %96, i64 %idxprom128
  %97 = load i16**, i16*** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i16*, i16** %97, i64 %idxprom125
  %98 = load i16*, i16** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i16, i16* %98, i64 %idxprom121
  %99 = load i16, i16* %arrayidx131, align 2
  %conv132 = sext i16 %99 to i32
  %100 = load i32, i32* %block_x, align 4
  %idxprom133 = sext i32 %100 to i64
  %101 = load i32, i32* %block_y, align 4
  %idxprom134 = sext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %102 to i64
  %arrayidx136 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 %idxprom135
  %arrayidx137 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx136, i32 0, i64 %idxprom134
  %arrayidx138 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx137, i32 0, i64 %idxprom133
  store i32 %conv132, i32* %arrayidx138, align 4
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.120
  %103 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %103, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.117

for.end.141:                                      ; preds = %for.cond.117
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141
  %104 = load i32, i32* %block_x, align 4
  %inc143 = add nsw i32 %104, 1
  store i32 %inc143, i32* %block_x, align 4
  br label %for.cond.113

for.end.144:                                      ; preds = %for.cond.113
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.end.144
  %105 = load i32, i32* %block_y, align 4
  %inc146 = add nsw i32 %105, 1
  store i32 %inc146, i32* %block_y, align 4
  br label %for.cond.109

for.end.147:                                      ; preds = %for.cond.109
  store i32 0, i32* %i, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.163, %for.end.147
  %106 = load i32, i32* %i, align 4
  %cmp149 = icmp slt i32 %106, 16
  br i1 %cmp149, label %for.body.151, label %for.end.165

for.body.151:                                     ; preds = %for.cond.148
  store i32 0, i32* %j, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.160, %for.body.151
  %107 = load i32, i32* %j, align 4
  %cmp153 = icmp slt i32 %107, 16
  br i1 %cmp153, label %for.body.155, label %for.end.162

for.body.155:                                     ; preds = %for.cond.152
  %108 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %idxprom157 = sext i32 %109 to i64
  %arrayidx158 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %resY, i32 0, i64 %idxprom157
  %arrayidx159 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx158, i32 0, i64 %idxprom156
  store i32 0, i32* %arrayidx159, align 4
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.155
  %110 = load i32, i32* %j, align 4
  %inc161 = add nsw i32 %110, 1
  store i32 %inc161, i32* %j, align 4
  br label %for.cond.152

for.end.162:                                      ; preds = %for.cond.152
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.end.162
  %111 = load i32, i32* %i, align 4
  %inc164 = add nsw i32 %111, 1
  store i32 %inc164, i32* %i, align 4
  br label %for.cond.148

for.end.165:                                      ; preds = %for.cond.148
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 5
  %113 = load i32, i32* %type166, align 4
  %cmp167 = icmp ne i32 %113, 2
  br i1 %cmp167, label %if.then.169, label %if.else.300

if.then.169:                                      ; preds = %for.end.165
  %114 = load i32, i32* %copy, align 4
  %tobool = icmp ne i32 %114, 0
  br i1 %tobool, label %if.then.170, label %if.else.199

if.then.170:                                      ; preds = %if.then.169
  store i32 0, i32* %j, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.196, %if.then.170
  %115 = load i32, i32* %j, align 4
  %cmp172 = icmp slt i32 %115, 16
  br i1 %cmp172, label %for.body.174, label %for.end.198

for.body.174:                                     ; preds = %for.cond.171
  store i32 0, i32* %i, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.193, %for.body.174
  %116 = load i32, i32* %i, align 4
  %cmp176 = icmp slt i32 %116, 16
  br i1 %cmp176, label %for.body.178, label %for.end.195

for.body.178:                                     ; preds = %for.cond.175
  %117 = load i32, i32* %pos_x, align 4
  %118 = load i32, i32* %i, align 4
  %add179 = add nsw i32 %117, %118
  %idxprom180 = sext i32 %add179 to i64
  %119 = load i32, i32* %pos_y, align 4
  %120 = load i32, i32* %j, align 4
  %add181 = add nsw i32 %119, %120
  %idxprom182 = sext i32 %add181 to i64
  %121 = load i32, i32* %ref_inx, align 4
  %idxprom183 = sext i32 %121 to i64
  %122 = load i16***, i16**** %refY.addr, align 8
  %arrayidx184 = getelementptr inbounds i16**, i16*** %122, i64 %idxprom183
  %123 = load i16**, i16*** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i16*, i16** %123, i64 %idxprom182
  %124 = load i16*, i16** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i16, i16* %124, i64 %idxprom180
  %125 = load i16, i16* %arrayidx186, align 2
  %126 = load i32, i32* %pos_x, align 4
  %127 = load i32, i32* %i, align 4
  %add187 = add nsw i32 %126, %127
  %idxprom188 = sext i32 %add187 to i64
  %128 = load i32, i32* %pos_y, align 4
  %129 = load i32, i32* %j, align 4
  %add189 = add nsw i32 %128, %129
  %idxprom190 = sext i32 %add189 to i64
  %130 = load i16**, i16*** %inY.addr, align 8
  %arrayidx191 = getelementptr inbounds i16*, i16** %130, i64 %idxprom190
  %131 = load i16*, i16** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds i16, i16* %131, i64 %idxprom188
  store i16 %125, i16* %arrayidx192, align 2
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.178
  %132 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %132, 1
  store i32 %inc194, i32* %i, align 4
  br label %for.cond.175

for.end.195:                                      ; preds = %for.cond.175
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.end.195
  %133 = load i32, i32* %j, align 4
  %inc197 = add nsw i32 %133, 1
  store i32 %inc197, i32* %j, align 4
  br label %for.cond.171

for.end.198:                                      ; preds = %for.cond.171
  br label %if.end.299

if.else.199:                                      ; preds = %if.then.169
  %134 = load i32, i32* %inter, align 4
  %tobool200 = icmp ne i32 %134, 0
  br i1 %tobool200, label %if.then.201, label %if.else.269

if.then.201:                                      ; preds = %if.else.199
  %135 = load i32, i32* %mb_y.addr, align 4
  %mul202 = mul nsw i32 %135, 4
  store i32 %mul202, i32* %block_y, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.266, %if.then.201
  %136 = load i32, i32* %block_y, align 4
  %137 = load i32, i32* %mb_y.addr, align 4
  %mul204 = mul nsw i32 %137, 4
  %add205 = add nsw i32 %mul204, 4
  %cmp206 = icmp slt i32 %136, %add205
  br i1 %cmp206, label %for.body.208, label %for.end.268

for.body.208:                                     ; preds = %for.cond.203
  %138 = load i32, i32* %mb_x.addr, align 4
  %mul209 = mul nsw i32 %138, 4
  store i32 %mul209, i32* %block_x, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.263, %for.body.208
  %139 = load i32, i32* %block_x, align 4
  %140 = load i32, i32* %mb_x.addr, align 4
  %mul211 = mul nsw i32 %140, 4
  %add212 = add nsw i32 %mul211, 4
  %cmp213 = icmp slt i32 %139, %add212
  br i1 %cmp213, label %for.body.215, label %for.end.265

for.body.215:                                     ; preds = %for.cond.210
  %141 = load i32, i32* %ref_inx, align 4
  %idxprom216 = sext i32 %141 to i64
  %142 = load i16***, i16**** %refY.addr, align 8
  %arrayidx217 = getelementptr inbounds i16**, i16*** %142, i64 %idxprom216
  %143 = load i16**, i16*** %arrayidx217, align 8
  %144 = load i32, i32* %block_y, align 4
  %145 = load i32, i32* %block_x, align 4
  %146 = load i32, i32* %block_x, align 4
  %147 = load i32, i32* %mb_x.addr, align 4
  %mul218 = mul nsw i32 %147, 4
  %sub219 = sub nsw i32 %146, %mul218
  %idxprom220 = sext i32 %sub219 to i64
  %148 = load i32, i32* %block_y, align 4
  %149 = load i32, i32* %mb_y.addr, align 4
  %mul221 = mul nsw i32 %149, 4
  %sub222 = sub nsw i32 %148, %mul221
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx225 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx224, i32 0, i64 %idxprom223
  %arrayidx226 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx225, i32 0, i64 %idxprom220
  %150 = load i32, i32* %arrayidx226, align 4
  %151 = load i32, i32* %block_x, align 4
  %152 = load i32, i32* %mb_x.addr, align 4
  %mul227 = mul nsw i32 %152, 4
  %sub228 = sub nsw i32 %151, %mul227
  %idxprom229 = sext i32 %sub228 to i64
  %153 = load i32, i32* %block_y, align 4
  %154 = load i32, i32* %mb_y.addr, align 4
  %mul230 = mul nsw i32 %154, 4
  %sub231 = sub nsw i32 %153, %mul230
  %idxprom232 = sext i32 %sub231 to i64
  %arrayidx233 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx234 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx233, i32 0, i64 %idxprom232
  %arrayidx235 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx234, i32 0, i64 %idxprom229
  %155 = load i32, i32* %arrayidx235, align 4
  %156 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock = getelementptr inbounds %struct.Decoders, %struct.Decoders* %156, i32 0, i32 4
  %157 = load i16**, i16*** %RefBlock, align 8
  call void @Get_Reference_Block(i16** %143, i32 %144, i32 %145, i32 %150, i32 %155, i16** %157)
  store i32 0, i32* %j, align 4
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.260, %for.body.215
  %158 = load i32, i32* %j, align 4
  %cmp237 = icmp slt i32 %158, 4
  br i1 %cmp237, label %for.body.239, label %for.end.262

for.body.239:                                     ; preds = %for.cond.236
  store i32 0, i32* %i, align 4
  br label %for.cond.240

for.cond.240:                                     ; preds = %for.inc.257, %for.body.239
  %159 = load i32, i32* %i, align 4
  %cmp241 = icmp slt i32 %159, 4
  br i1 %cmp241, label %for.body.243, label %for.end.259

for.body.243:                                     ; preds = %for.cond.240
  %160 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %160 to i64
  %161 = load i32, i32* %j, align 4
  %idxprom245 = sext i32 %161 to i64
  %162 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock246 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %162, i32 0, i32 4
  %163 = load i16**, i16*** %RefBlock246, align 8
  %arrayidx247 = getelementptr inbounds i16*, i16** %163, i64 %idxprom245
  %164 = load i16*, i16** %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds i16, i16* %164, i64 %idxprom244
  %165 = load i16, i16* %arrayidx248, align 2
  %166 = load i32, i32* %block_x, align 4
  %mul249 = mul nsw i32 %166, 4
  %167 = load i32, i32* %i, align 4
  %add250 = add nsw i32 %mul249, %167
  %idxprom251 = sext i32 %add250 to i64
  %168 = load i32, i32* %block_y, align 4
  %mul252 = mul nsw i32 %168, 4
  %169 = load i32, i32* %j, align 4
  %add253 = add nsw i32 %mul252, %169
  %idxprom254 = sext i32 %add253 to i64
  %170 = load i16**, i16*** %inY.addr, align 8
  %arrayidx255 = getelementptr inbounds i16*, i16** %170, i64 %idxprom254
  %171 = load i16*, i16** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds i16, i16* %171, i64 %idxprom251
  store i16 %165, i16* %arrayidx256, align 2
  br label %for.inc.257

for.inc.257:                                      ; preds = %for.body.243
  %172 = load i32, i32* %i, align 4
  %inc258 = add nsw i32 %172, 1
  store i32 %inc258, i32* %i, align 4
  br label %for.cond.240

for.end.259:                                      ; preds = %for.cond.240
  br label %for.inc.260

for.inc.260:                                      ; preds = %for.end.259
  %173 = load i32, i32* %j, align 4
  %inc261 = add nsw i32 %173, 1
  store i32 %inc261, i32* %j, align 4
  br label %for.cond.236

for.end.262:                                      ; preds = %for.cond.236
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.end.262
  %174 = load i32, i32* %block_x, align 4
  %inc264 = add nsw i32 %174, 1
  store i32 %inc264, i32* %block_x, align 4
  br label %for.cond.210

for.end.265:                                      ; preds = %for.cond.210
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.end.265
  %175 = load i32, i32* %block_y, align 4
  %inc267 = add nsw i32 %175, 1
  store i32 %inc267, i32* %block_y, align 4
  br label %for.cond.203

for.end.268:                                      ; preds = %for.cond.203
  br label %if.end.298

if.else.269:                                      ; preds = %if.else.199
  store i32 0, i32* %j, align 4
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.295, %if.else.269
  %176 = load i32, i32* %j, align 4
  %cmp271 = icmp slt i32 %176, 16
  br i1 %cmp271, label %for.body.273, label %for.end.297

for.body.273:                                     ; preds = %for.cond.270
  store i32 0, i32* %i, align 4
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.292, %for.body.273
  %177 = load i32, i32* %i, align 4
  %cmp275 = icmp slt i32 %177, 16
  br i1 %cmp275, label %for.body.277, label %for.end.294

for.body.277:                                     ; preds = %for.cond.274
  %178 = load i32, i32* %pos_x, align 4
  %179 = load i32, i32* %i, align 4
  %add278 = add nsw i32 %178, %179
  %idxprom279 = sext i32 %add278 to i64
  %180 = load i32, i32* %pos_y, align 4
  %181 = load i32, i32* %j, align 4
  %add280 = add nsw i32 %180, %181
  %idxprom281 = sext i32 %add280 to i64
  %182 = load i32, i32* %ref_inx, align 4
  %idxprom282 = sext i32 %182 to i64
  %183 = load i16***, i16**** %refY.addr, align 8
  %arrayidx283 = getelementptr inbounds i16**, i16*** %183, i64 %idxprom282
  %184 = load i16**, i16*** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i16*, i16** %184, i64 %idxprom281
  %185 = load i16*, i16** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i16, i16* %185, i64 %idxprom279
  %186 = load i16, i16* %arrayidx285, align 2
  %187 = load i32, i32* %pos_x, align 4
  %188 = load i32, i32* %i, align 4
  %add286 = add nsw i32 %187, %188
  %idxprom287 = sext i32 %add286 to i64
  %189 = load i32, i32* %pos_y, align 4
  %190 = load i32, i32* %j, align 4
  %add288 = add nsw i32 %189, %190
  %idxprom289 = sext i32 %add288 to i64
  %191 = load i16**, i16*** %inY.addr, align 8
  %arrayidx290 = getelementptr inbounds i16*, i16** %191, i64 %idxprom289
  %192 = load i16*, i16** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds i16, i16* %192, i64 %idxprom287
  store i16 %186, i16* %arrayidx291, align 2
  br label %for.inc.292

for.inc.292:                                      ; preds = %for.body.277
  %193 = load i32, i32* %i, align 4
  %inc293 = add nsw i32 %193, 1
  store i32 %inc293, i32* %i, align 4
  br label %for.cond.274

for.end.294:                                      ; preds = %for.cond.274
  br label %for.inc.295

for.inc.295:                                      ; preds = %for.end.294
  %194 = load i32, i32* %j, align 4
  %inc296 = add nsw i32 %194, 1
  store i32 %inc296, i32* %j, align 4
  br label %for.cond.270

for.end.297:                                      ; preds = %for.cond.270
  br label %if.end.298

if.end.298:                                       ; preds = %for.end.297, %for.end.268
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %for.end.198
  br label %if.end.321

if.else.300:                                      ; preds = %for.end.165
  store i32 0, i32* %j, align 4
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.318, %if.else.300
  %195 = load i32, i32* %j, align 4
  %cmp302 = icmp slt i32 %195, 16
  br i1 %cmp302, label %for.body.304, label %for.end.320

for.body.304:                                     ; preds = %for.cond.301
  store i32 0, i32* %i, align 4
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.315, %for.body.304
  %196 = load i32, i32* %i, align 4
  %cmp306 = icmp slt i32 %196, 16
  br i1 %cmp306, label %for.body.308, label %for.end.317

for.body.308:                                     ; preds = %for.cond.305
  %197 = load i32, i32* %pos_x, align 4
  %198 = load i32, i32* %i, align 4
  %add309 = add nsw i32 %197, %198
  %idxprom310 = sext i32 %add309 to i64
  %199 = load i32, i32* %pos_y, align 4
  %200 = load i32, i32* %j, align 4
  %add311 = add nsw i32 %199, %200
  %idxprom312 = sext i32 %add311 to i64
  %201 = load i16**, i16*** %inY.addr, align 8
  %arrayidx313 = getelementptr inbounds i16*, i16** %201, i64 %idxprom312
  %202 = load i16*, i16** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i16, i16* %202, i64 %idxprom310
  store i16 127, i16* %arrayidx314, align 2
  br label %for.inc.315

for.inc.315:                                      ; preds = %for.body.308
  %203 = load i32, i32* %i, align 4
  %inc316 = add nsw i32 %203, 1
  store i32 %inc316, i32* %i, align 4
  br label %for.cond.305

for.end.317:                                      ; preds = %for.cond.305
  br label %for.inc.318

for.inc.318:                                      ; preds = %for.end.317
  %204 = load i32, i32* %j, align 4
  %inc319 = add nsw i32 %204, 1
  store i32 %inc319, i32* %j, align 4
  br label %for.cond.301

for.end.320:                                      ; preds = %for.cond.301
  br label %if.end.321

if.end.321:                                       ; preds = %for.end.320, %if.end.299
  br label %sw.epilog

sw.bb.322:                                        ; preds = %land.end.54
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type323 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 5
  %206 = load i32, i32* %type323, align 4
  %cmp324 = icmp ne i32 %206, 2
  br i1 %cmp324, label %if.then.326, label %if.end.487

if.then.326:                                      ; preds = %sw.bb.322
  store i32 0, i32* %block_y, align 4
  br label %for.cond.327

for.cond.327:                                     ; preds = %for.inc.363, %if.then.326
  %207 = load i32, i32* %block_y, align 4
  %cmp328 = icmp slt i32 %207, 4
  br i1 %cmp328, label %for.body.330, label %for.end.365

for.body.330:                                     ; preds = %for.cond.327
  store i32 0, i32* %block_x, align 4
  br label %for.cond.331

for.cond.331:                                     ; preds = %for.inc.360, %for.body.330
  %208 = load i32, i32* %block_x, align 4
  %cmp332 = icmp slt i32 %208, 4
  br i1 %cmp332, label %for.body.334, label %for.end.362

for.body.334:                                     ; preds = %for.cond.331
  store i32 0, i32* %i, align 4
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.357, %for.body.334
  %209 = load i32, i32* %i, align 4
  %cmp336 = icmp slt i32 %209, 2
  br i1 %cmp336, label %for.body.338, label %for.end.359

for.body.338:                                     ; preds = %for.cond.335
  %210 = load i32, i32* %i, align 4
  %idxprom339 = sext i32 %210 to i64
  %211 = load i32, i32* %mb_x.addr, align 4
  %mul340 = mul nsw i32 %211, 4
  %212 = load i32, i32* %block_x, align 4
  %add341 = add nsw i32 %mul340, %212
  %add342 = add nsw i32 %add341, 4
  %idxprom343 = sext i32 %add342 to i64
  %213 = load i32, i32* %mb_y.addr, align 4
  %mul344 = mul nsw i32 %213, 4
  %214 = load i32, i32* %block_y, align 4
  %add345 = add nsw i32 %mul344, %214
  %idxprom346 = sext i32 %add345 to i64
  %215 = load i16***, i16**** %tmp_mv, align 8
  %arrayidx347 = getelementptr inbounds i16**, i16*** %215, i64 %idxprom346
  %216 = load i16**, i16*** %arrayidx347, align 8
  %arrayidx348 = getelementptr inbounds i16*, i16** %216, i64 %idxprom343
  %217 = load i16*, i16** %arrayidx348, align 8
  %arrayidx349 = getelementptr inbounds i16, i16* %217, i64 %idxprom339
  %218 = load i16, i16* %arrayidx349, align 2
  %conv350 = sext i16 %218 to i32
  %219 = load i32, i32* %block_x, align 4
  %idxprom351 = sext i32 %219 to i64
  %220 = load i32, i32* %block_y, align 4
  %idxprom352 = sext i32 %220 to i64
  %221 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %221 to i64
  %arrayidx354 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 %idxprom353
  %arrayidx355 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx354, i32 0, i64 %idxprom352
  %arrayidx356 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx355, i32 0, i64 %idxprom351
  store i32 %conv350, i32* %arrayidx356, align 4
  br label %for.inc.357

for.inc.357:                                      ; preds = %for.body.338
  %222 = load i32, i32* %i, align 4
  %inc358 = add nsw i32 %222, 1
  store i32 %inc358, i32* %i, align 4
  br label %for.cond.335

for.end.359:                                      ; preds = %for.cond.335
  br label %for.inc.360

for.inc.360:                                      ; preds = %for.end.359
  %223 = load i32, i32* %block_x, align 4
  %inc361 = add nsw i32 %223, 1
  store i32 %inc361, i32* %block_x, align 4
  br label %for.cond.331

for.end.362:                                      ; preds = %for.cond.331
  br label %for.inc.363

for.inc.363:                                      ; preds = %for.end.362
  %224 = load i32, i32* %block_y, align 4
  %inc364 = add nsw i32 %224, 1
  store i32 %inc364, i32* %block_y, align 4
  br label %for.cond.327

for.end.365:                                      ; preds = %for.cond.327
  store i32 0, i32* %i, align 4
  br label %for.cond.366

for.cond.366:                                     ; preds = %for.inc.381, %for.end.365
  %225 = load i32, i32* %i, align 4
  %cmp367 = icmp slt i32 %225, 16
  br i1 %cmp367, label %for.body.369, label %for.end.383

for.body.369:                                     ; preds = %for.cond.366
  store i32 0, i32* %j, align 4
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.378, %for.body.369
  %226 = load i32, i32* %j, align 4
  %cmp371 = icmp slt i32 %226, 16
  br i1 %cmp371, label %for.body.373, label %for.end.380

for.body.373:                                     ; preds = %for.cond.370
  %227 = load i32, i32* %i, align 4
  %idxprom374 = sext i32 %227 to i64
  %228 = load i32, i32* %j, align 4
  %idxprom375 = sext i32 %228 to i64
  %arrayidx376 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %resY, i32 0, i64 %idxprom375
  %arrayidx377 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx376, i32 0, i64 %idxprom374
  store i32 0, i32* %arrayidx377, align 4
  br label %for.inc.378

for.inc.378:                                      ; preds = %for.body.373
  %229 = load i32, i32* %j, align 4
  %inc379 = add nsw i32 %229, 1
  store i32 %inc379, i32* %j, align 4
  br label %for.cond.370

for.end.380:                                      ; preds = %for.cond.370
  br label %for.inc.381

for.inc.381:                                      ; preds = %for.end.380
  %230 = load i32, i32* %i, align 4
  %inc382 = add nsw i32 %230, 1
  store i32 %inc382, i32* %i, align 4
  br label %for.cond.366

for.end.383:                                      ; preds = %for.cond.366
  %231 = load i32, i32* %copy, align 4
  %tobool384 = icmp ne i32 %231, 0
  br i1 %tobool384, label %if.then.385, label %if.else.414

if.then.385:                                      ; preds = %for.end.383
  store i32 0, i32* %j, align 4
  br label %for.cond.386

for.cond.386:                                     ; preds = %for.inc.411, %if.then.385
  %232 = load i32, i32* %j, align 4
  %cmp387 = icmp slt i32 %232, 16
  br i1 %cmp387, label %for.body.389, label %for.end.413

for.body.389:                                     ; preds = %for.cond.386
  store i32 0, i32* %i, align 4
  br label %for.cond.390

for.cond.390:                                     ; preds = %for.inc.408, %for.body.389
  %233 = load i32, i32* %i, align 4
  %cmp391 = icmp slt i32 %233, 16
  br i1 %cmp391, label %for.body.393, label %for.end.410

for.body.393:                                     ; preds = %for.cond.390
  %234 = load i32, i32* %pos_x, align 4
  %235 = load i32, i32* %i, align 4
  %add394 = add nsw i32 %234, %235
  %idxprom395 = sext i32 %add394 to i64
  %236 = load i32, i32* %pos_y, align 4
  %237 = load i32, i32* %j, align 4
  %add396 = add nsw i32 %236, %237
  %idxprom397 = sext i32 %add396 to i64
  %238 = load i32, i32* %ref_inx, align 4
  %idxprom398 = sext i32 %238 to i64
  %239 = load i16***, i16**** %refY.addr, align 8
  %arrayidx399 = getelementptr inbounds i16**, i16*** %239, i64 %idxprom398
  %240 = load i16**, i16*** %arrayidx399, align 8
  %arrayidx400 = getelementptr inbounds i16*, i16** %240, i64 %idxprom397
  %241 = load i16*, i16** %arrayidx400, align 8
  %arrayidx401 = getelementptr inbounds i16, i16* %241, i64 %idxprom395
  %242 = load i16, i16* %arrayidx401, align 2
  %243 = load i32, i32* %pos_x, align 4
  %244 = load i32, i32* %i, align 4
  %add402 = add nsw i32 %243, %244
  %idxprom403 = sext i32 %add402 to i64
  %245 = load i32, i32* %pos_y, align 4
  %246 = load i32, i32* %j, align 4
  %add404 = add nsw i32 %245, %246
  %idxprom405 = sext i32 %add404 to i64
  %247 = load i16**, i16*** %inY.addr, align 8
  %arrayidx406 = getelementptr inbounds i16*, i16** %247, i64 %idxprom405
  %248 = load i16*, i16** %arrayidx406, align 8
  %arrayidx407 = getelementptr inbounds i16, i16* %248, i64 %idxprom403
  store i16 %242, i16* %arrayidx407, align 2
  br label %for.inc.408

for.inc.408:                                      ; preds = %for.body.393
  %249 = load i32, i32* %i, align 4
  %inc409 = add nsw i32 %249, 1
  store i32 %inc409, i32* %i, align 4
  br label %for.cond.390

for.end.410:                                      ; preds = %for.cond.390
  br label %for.inc.411

for.inc.411:                                      ; preds = %for.end.410
  %250 = load i32, i32* %j, align 4
  %inc412 = add nsw i32 %250, 1
  store i32 %inc412, i32* %j, align 4
  br label %for.cond.386

for.end.413:                                      ; preds = %for.cond.386
  br label %if.end.486

if.else.414:                                      ; preds = %for.end.383
  %251 = load i32, i32* %inter, align 4
  %tobool415 = icmp ne i32 %251, 0
  br i1 %tobool415, label %if.then.416, label %if.end.485

if.then.416:                                      ; preds = %if.else.414
  %252 = load i32, i32* %mb_y.addr, align 4
  %mul417 = mul nsw i32 %252, 4
  store i32 %mul417, i32* %block_y, align 4
  br label %for.cond.418

for.cond.418:                                     ; preds = %for.inc.482, %if.then.416
  %253 = load i32, i32* %block_y, align 4
  %254 = load i32, i32* %mb_y.addr, align 4
  %mul419 = mul nsw i32 %254, 4
  %add420 = add nsw i32 %mul419, 4
  %cmp421 = icmp slt i32 %253, %add420
  br i1 %cmp421, label %for.body.423, label %for.end.484

for.body.423:                                     ; preds = %for.cond.418
  %255 = load i32, i32* %mb_x.addr, align 4
  %mul424 = mul nsw i32 %255, 4
  store i32 %mul424, i32* %block_x, align 4
  br label %for.cond.425

for.cond.425:                                     ; preds = %for.inc.479, %for.body.423
  %256 = load i32, i32* %block_x, align 4
  %257 = load i32, i32* %mb_x.addr, align 4
  %mul426 = mul nsw i32 %257, 4
  %add427 = add nsw i32 %mul426, 4
  %cmp428 = icmp slt i32 %256, %add427
  br i1 %cmp428, label %for.body.430, label %for.end.481

for.body.430:                                     ; preds = %for.cond.425
  %258 = load i32, i32* %ref_inx, align 4
  %idxprom431 = sext i32 %258 to i64
  %259 = load i16***, i16**** %refY.addr, align 8
  %arrayidx432 = getelementptr inbounds i16**, i16*** %259, i64 %idxprom431
  %260 = load i16**, i16*** %arrayidx432, align 8
  %261 = load i32, i32* %block_y, align 4
  %262 = load i32, i32* %block_x, align 4
  %263 = load i32, i32* %block_x, align 4
  %264 = load i32, i32* %mb_x.addr, align 4
  %mul433 = mul nsw i32 %264, 4
  %sub434 = sub nsw i32 %263, %mul433
  %idxprom435 = sext i32 %sub434 to i64
  %265 = load i32, i32* %block_y, align 4
  %266 = load i32, i32* %mb_y.addr, align 4
  %mul436 = mul nsw i32 %266, 4
  %sub437 = sub nsw i32 %265, %mul436
  %idxprom438 = sext i32 %sub437 to i64
  %arrayidx439 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx440 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx439, i32 0, i64 %idxprom438
  %arrayidx441 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx440, i32 0, i64 %idxprom435
  %267 = load i32, i32* %arrayidx441, align 4
  %268 = load i32, i32* %block_x, align 4
  %269 = load i32, i32* %mb_x.addr, align 4
  %mul442 = mul nsw i32 %269, 4
  %sub443 = sub nsw i32 %268, %mul442
  %idxprom444 = sext i32 %sub443 to i64
  %270 = load i32, i32* %block_y, align 4
  %271 = load i32, i32* %mb_y.addr, align 4
  %mul445 = mul nsw i32 %271, 4
  %sub446 = sub nsw i32 %270, %mul445
  %idxprom447 = sext i32 %sub446 to i64
  %arrayidx448 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx449 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx448, i32 0, i64 %idxprom447
  %arrayidx450 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx449, i32 0, i64 %idxprom444
  %272 = load i32, i32* %arrayidx450, align 4
  %273 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock451 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %273, i32 0, i32 4
  %274 = load i16**, i16*** %RefBlock451, align 8
  call void @Get_Reference_Block(i16** %260, i32 %261, i32 %262, i32 %267, i32 %272, i16** %274)
  store i32 0, i32* %j, align 4
  br label %for.cond.452

for.cond.452:                                     ; preds = %for.inc.476, %for.body.430
  %275 = load i32, i32* %j, align 4
  %cmp453 = icmp slt i32 %275, 4
  br i1 %cmp453, label %for.body.455, label %for.end.478

for.body.455:                                     ; preds = %for.cond.452
  store i32 0, i32* %i, align 4
  br label %for.cond.456

for.cond.456:                                     ; preds = %for.inc.473, %for.body.455
  %276 = load i32, i32* %i, align 4
  %cmp457 = icmp slt i32 %276, 4
  br i1 %cmp457, label %for.body.459, label %for.end.475

for.body.459:                                     ; preds = %for.cond.456
  %277 = load i32, i32* %i, align 4
  %idxprom460 = sext i32 %277 to i64
  %278 = load i32, i32* %j, align 4
  %idxprom461 = sext i32 %278 to i64
  %279 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock462 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %279, i32 0, i32 4
  %280 = load i16**, i16*** %RefBlock462, align 8
  %arrayidx463 = getelementptr inbounds i16*, i16** %280, i64 %idxprom461
  %281 = load i16*, i16** %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds i16, i16* %281, i64 %idxprom460
  %282 = load i16, i16* %arrayidx464, align 2
  %283 = load i32, i32* %block_x, align 4
  %mul465 = mul nsw i32 %283, 4
  %284 = load i32, i32* %i, align 4
  %add466 = add nsw i32 %mul465, %284
  %idxprom467 = sext i32 %add466 to i64
  %285 = load i32, i32* %block_y, align 4
  %mul468 = mul nsw i32 %285, 4
  %286 = load i32, i32* %j, align 4
  %add469 = add nsw i32 %mul468, %286
  %idxprom470 = sext i32 %add469 to i64
  %287 = load i16**, i16*** %inY.addr, align 8
  %arrayidx471 = getelementptr inbounds i16*, i16** %287, i64 %idxprom470
  %288 = load i16*, i16** %arrayidx471, align 8
  %arrayidx472 = getelementptr inbounds i16, i16* %288, i64 %idxprom467
  store i16 %282, i16* %arrayidx472, align 2
  br label %for.inc.473

for.inc.473:                                      ; preds = %for.body.459
  %289 = load i32, i32* %i, align 4
  %inc474 = add nsw i32 %289, 1
  store i32 %inc474, i32* %i, align 4
  br label %for.cond.456

for.end.475:                                      ; preds = %for.cond.456
  br label %for.inc.476

for.inc.476:                                      ; preds = %for.end.475
  %290 = load i32, i32* %j, align 4
  %inc477 = add nsw i32 %290, 1
  store i32 %inc477, i32* %j, align 4
  br label %for.cond.452

for.end.478:                                      ; preds = %for.cond.452
  br label %for.inc.479

for.inc.479:                                      ; preds = %for.end.478
  %291 = load i32, i32* %block_x, align 4
  %inc480 = add nsw i32 %291, 1
  store i32 %inc480, i32* %block_x, align 4
  br label %for.cond.425

for.end.481:                                      ; preds = %for.cond.425
  br label %for.inc.482

for.inc.482:                                      ; preds = %for.end.481
  %292 = load i32, i32* %block_y, align 4
  %inc483 = add nsw i32 %292, 1
  store i32 %inc483, i32* %block_y, align 4
  br label %for.cond.418

for.end.484:                                      ; preds = %for.cond.418
  br label %if.end.485

if.end.485:                                       ; preds = %for.end.484, %if.else.414
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %for.end.413
  br label %if.end.487

if.end.487:                                       ; preds = %if.end.486, %sw.bb.322
  br label %sw.epilog

sw.bb.488:                                        ; preds = %land.end.54
  %293 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type489 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %293, i32 0, i32 5
  %294 = load i32, i32* %type489, align 4
  %cmp490 = icmp ne i32 %294, 2
  br i1 %cmp490, label %if.then.492, label %if.else.524

if.then.492:                                      ; preds = %sw.bb.488
  %295 = load i32, i32* %inter, align 4
  %tobool493 = icmp ne i32 %295, 0
  br i1 %tobool493, label %if.end.523, label %if.then.494

if.then.494:                                      ; preds = %if.then.492
  store i32 0, i32* %j, align 4
  br label %for.cond.495

for.cond.495:                                     ; preds = %for.inc.520, %if.then.494
  %296 = load i32, i32* %j, align 4
  %cmp496 = icmp slt i32 %296, 16
  br i1 %cmp496, label %for.body.498, label %for.end.522

for.body.498:                                     ; preds = %for.cond.495
  store i32 0, i32* %i, align 4
  br label %for.cond.499

for.cond.499:                                     ; preds = %for.inc.517, %for.body.498
  %297 = load i32, i32* %i, align 4
  %cmp500 = icmp slt i32 %297, 16
  br i1 %cmp500, label %for.body.502, label %for.end.519

for.body.502:                                     ; preds = %for.cond.499
  %298 = load i32, i32* %pos_x, align 4
  %299 = load i32, i32* %i, align 4
  %add503 = add nsw i32 %298, %299
  %idxprom504 = sext i32 %add503 to i64
  %300 = load i32, i32* %pos_y, align 4
  %301 = load i32, i32* %j, align 4
  %add505 = add nsw i32 %300, %301
  %idxprom506 = sext i32 %add505 to i64
  %302 = load i32, i32* %ref_inx, align 4
  %idxprom507 = sext i32 %302 to i64
  %303 = load i16***, i16**** %refY.addr, align 8
  %arrayidx508 = getelementptr inbounds i16**, i16*** %303, i64 %idxprom507
  %304 = load i16**, i16*** %arrayidx508, align 8
  %arrayidx509 = getelementptr inbounds i16*, i16** %304, i64 %idxprom506
  %305 = load i16*, i16** %arrayidx509, align 8
  %arrayidx510 = getelementptr inbounds i16, i16* %305, i64 %idxprom504
  %306 = load i16, i16* %arrayidx510, align 2
  %307 = load i32, i32* %pos_x, align 4
  %308 = load i32, i32* %i, align 4
  %add511 = add nsw i32 %307, %308
  %idxprom512 = sext i32 %add511 to i64
  %309 = load i32, i32* %pos_y, align 4
  %310 = load i32, i32* %j, align 4
  %add513 = add nsw i32 %309, %310
  %idxprom514 = sext i32 %add513 to i64
  %311 = load i16**, i16*** %inY.addr, align 8
  %arrayidx515 = getelementptr inbounds i16*, i16** %311, i64 %idxprom514
  %312 = load i16*, i16** %arrayidx515, align 8
  %arrayidx516 = getelementptr inbounds i16, i16* %312, i64 %idxprom512
  store i16 %306, i16* %arrayidx516, align 2
  br label %for.inc.517

for.inc.517:                                      ; preds = %for.body.502
  %313 = load i32, i32* %i, align 4
  %inc518 = add nsw i32 %313, 1
  store i32 %inc518, i32* %i, align 4
  br label %for.cond.499

for.end.519:                                      ; preds = %for.cond.499
  br label %for.inc.520

for.inc.520:                                      ; preds = %for.end.519
  %314 = load i32, i32* %j, align 4
  %inc521 = add nsw i32 %314, 1
  store i32 %inc521, i32* %j, align 4
  br label %for.cond.495

for.end.522:                                      ; preds = %for.cond.495
  br label %if.end.523

if.end.523:                                       ; preds = %for.end.522, %if.then.492
  br label %if.end.545

if.else.524:                                      ; preds = %sw.bb.488
  store i32 0, i32* %j, align 4
  br label %for.cond.525

for.cond.525:                                     ; preds = %for.inc.542, %if.else.524
  %315 = load i32, i32* %j, align 4
  %cmp526 = icmp slt i32 %315, 16
  br i1 %cmp526, label %for.body.528, label %for.end.544

for.body.528:                                     ; preds = %for.cond.525
  store i32 0, i32* %i, align 4
  br label %for.cond.529

for.cond.529:                                     ; preds = %for.inc.539, %for.body.528
  %316 = load i32, i32* %i, align 4
  %cmp530 = icmp slt i32 %316, 16
  br i1 %cmp530, label %for.body.532, label %for.end.541

for.body.532:                                     ; preds = %for.cond.529
  %317 = load i32, i32* %pos_x, align 4
  %318 = load i32, i32* %i, align 4
  %add533 = add nsw i32 %317, %318
  %idxprom534 = sext i32 %add533 to i64
  %319 = load i32, i32* %pos_y, align 4
  %320 = load i32, i32* %j, align 4
  %add535 = add nsw i32 %319, %320
  %idxprom536 = sext i32 %add535 to i64
  %321 = load i16**, i16*** %inY.addr, align 8
  %arrayidx537 = getelementptr inbounds i16*, i16** %321, i64 %idxprom536
  %322 = load i16*, i16** %arrayidx537, align 8
  %arrayidx538 = getelementptr inbounds i16, i16* %322, i64 %idxprom534
  store i16 127, i16* %arrayidx538, align 2
  br label %for.inc.539

for.inc.539:                                      ; preds = %for.body.532
  %323 = load i32, i32* %i, align 4
  %inc540 = add nsw i32 %323, 1
  store i32 %inc540, i32* %i, align 4
  br label %for.cond.529

for.end.541:                                      ; preds = %for.cond.529
  br label %for.inc.542

for.inc.542:                                      ; preds = %for.end.541
  %324 = load i32, i32* %j, align 4
  %inc543 = add nsw i32 %324, 1
  store i32 %inc543, i32* %j, align 4
  br label %for.cond.525

for.end.544:                                      ; preds = %for.cond.525
  br label %if.end.545

if.end.545:                                       ; preds = %for.end.544, %if.end.523
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.end.54, %if.end.545, %if.end.487, %if.end.321, %if.end
  ret void
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #1 {
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
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
