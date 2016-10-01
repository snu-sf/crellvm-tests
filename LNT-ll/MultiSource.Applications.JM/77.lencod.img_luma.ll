; ModuleID = './MultiSource.Applications.JM/77.lencod.img_luma.bc'
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }

@ONE_FOURTH_TAP = constant [2 x [3 x i32]] [[3 x i32] [i32 20, i32 -5, i32 1], [3 x i32] [i32 20, i32 -4, i32 0]], align 16
@imgY_sub_tmp = common global i32** null, align 8
@img = external global %struct.ImageParameters*, align 8
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

; Function Attrs: nounwind uwtable
define void @getSubImagesLuma(%struct.storable_picture* %s) #0 {
entry:
  %s.addr = alloca %struct.storable_picture*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %jpad = alloca i32, align 4
  %imgY = alloca i16**, align 8
  %size_x_minus1 = alloca i32, align 4
  %size_y_minus1 = alloca i32, align 4
  %wBufDst = alloca i16*, align 8
  %wBufSrc = alloca i16*, align 8
  store %struct.storable_picture* %s, %struct.storable_picture** %s.addr, align 8
  %0 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 29
  %1 = load i16**, i16*** %imgY1, align 8
  store i16** %1, i16*** %imgY, align 8
  %2 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 18
  %3 = load i32, i32* %size_x, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %size_x_minus1, align 4
  %4 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 19
  %5 = load i32, i32* %size_y, align 4
  %sub2 = sub nsw i32 %5, 1
  store i32 %sub2, i32* %size_y_minus1, align 4
  store i32 -20, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %entry
  %6 = load i32, i32* %j, align 4
  %7 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %7, i32 0, i32 19
  %8 = load i32, i32* %size_y3, align 4
  %add = add nsw i32 %8, 20
  %cmp = icmp slt i32 %6, %add
  br i1 %cmp, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %size_y_minus1, align 4
  %10 = load i32, i32* %j, align 4
  %call = call i32 @iClip3(i32 0, i32 %9, i32 %10)
  store i32 %call, i32* %jj, align 4
  %11 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %11, 20
  store i32 %add4, i32* %jpad, align 4
  %12 = load i32, i32* %jpad, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 30
  %14 = load i16****, i16***** %imgY_sub, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %14, i64 0
  %15 = load i16***, i16**** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i16**, i16*** %15, i64 0
  %16 = load i16**, i16*** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i16*, i16** %16, i64 %idxprom
  %17 = load i16*, i16** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %17, i64 20
  store i16* %arrayidx7, i16** %wBufDst, align 8
  %18 = load i32, i32* %jj, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load i16**, i16*** %imgY, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %19, i64 %idxprom8
  %20 = load i16*, i16** %arrayidx9, align 8
  store i16* %20, i16** %wBufSrc, align 8
  store i32 -20, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %21 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %21, 0
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %22 = load i16*, i16** %wBufSrc, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %22, i64 0
  %23 = load i16, i16* %arrayidx13, align 2
  %24 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load i16*, i16** %wBufDst, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %25, i64 %idxprom14
  store i16 %23, i16* %arrayidx15, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %27 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x16 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 18
  %28 = load i32, i32* %size_x16, align 4
  store i32 %28, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.26, %for.end
  %29 = load i32, i32* %i, align 4
  %30 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x18 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %30, i32 0, i32 18
  %31 = load i32, i32* %size_x18, align 4
  %add19 = add nsw i32 %31, 20
  %cmp20 = icmp slt i32 %29, %add19
  br i1 %cmp20, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.17
  %32 = load i32, i32* %size_x_minus1, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load i16*, i16** %wBufSrc, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %33, i64 %idxprom22
  %34 = load i16, i16* %arrayidx23, align 2
  %35 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load i16*, i16** %wBufDst, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %36, i64 %idxprom24
  store i16 %34, i16* %arrayidx25, align 2
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.21
  %37 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %37, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.17

for.end.28:                                       ; preds = %for.cond.17
  %38 = load i16*, i16** %wBufDst, align 8
  %39 = bitcast i16* %38 to i8*
  %40 = load i16*, i16** %wBufSrc, align 8
  %41 = bitcast i16* %40 to i8*
  %42 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x29 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %42, i32 0, i32 18
  %43 = load i32, i32* %size_x29, align 4
  %conv = sext i32 %43 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %41, i64 %mul, i32 2, i1 false)
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.28
  %44 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %44, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  %45 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getHorSubImageSixTap(%struct.storable_picture* %45, i32 0, i32 2, i32 0, i32 0)
  %46 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getVerSubImageSixTap(%struct.storable_picture* %46, i32 2, i32 0, i32 0, i32 0, i32 0)
  %47 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getVerSubImageSixTap(%struct.storable_picture* %47, i32 2, i32 2, i32 0, i32 2, i32 1)
  %48 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getHorSubImageBiLinear(%struct.storable_picture* %48, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 0)
  %49 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getHorSubImageBiLinear(%struct.storable_picture* %49, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 1)
  %50 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getHorSubImageBiLinear(%struct.storable_picture* %50, i32 2, i32 1, i32 2, i32 0, i32 2, i32 2, i32 0)
  %51 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getHorSubImageBiLinear(%struct.storable_picture* %51, i32 2, i32 3, i32 2, i32 2, i32 2, i32 0, i32 1)
  %52 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getVerSubImageBiLinear(%struct.storable_picture* %52, i32 1, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0)
  %53 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getVerSubImageBiLinear(%struct.storable_picture* %53, i32 1, i32 2, i32 0, i32 2, i32 2, i32 2, i32 0)
  %54 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getVerSubImageBiLinear(%struct.storable_picture* %54, i32 3, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1)
  %55 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getVerSubImageBiLinear(%struct.storable_picture* %55, i32 3, i32 2, i32 2, i32 2, i32 0, i32 2, i32 1)
  %56 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getDiagSubImageBiLinear(%struct.storable_picture* %56, i32 1, i32 1, i32 0, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0)
  %57 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getDiagSubImageBiLinear(%struct.storable_picture* %57, i32 1, i32 3, i32 0, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 1)
  %58 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getDiagSubImageBiLinear(%struct.storable_picture* %58, i32 3, i32 1, i32 2, i32 0, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0)
  %59 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  call void @getDiagSubImageBiLinear(%struct.storable_picture* %59, i32 3, i32 3, i32 0, i32 2, i32 2, i32 0, i32 1, i32 0, i32 0, i32 1)
  ret void
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @getHorSubImageSixTap(%struct.storable_picture* %s, i32 %dst_y, i32 %dst_x, i32 %src_y, i32 %src_x) #0 {
entry:
  %s.addr = alloca %struct.storable_picture*, align 8
  %dst_y.addr = alloca i32, align 4
  %dst_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %src_x.addr = alloca i32, align 4
  %is = alloca i32, align 4
  %jpad = alloca i32, align 4
  %ipad = alloca i32, align 4
  %ypadded_size = alloca i32, align 4
  %xpadded_size = alloca i32, align 4
  %maxx = alloca i32, align 4
  %wBufSrc = alloca i16*, align 8
  %wBufDst = alloca i16*, align 8
  %iBufDst = alloca i32*, align 8
  %tap0 = alloca i32, align 4
  %tap1 = alloca i32, align 4
  %tap2 = alloca i32, align 4
  store %struct.storable_picture* %s, %struct.storable_picture** %s.addr, align 8
  store i32 %dst_y, i32* %dst_y.addr, align 4
  store i32 %dst_x, i32* %dst_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32 %src_x, i32* %src_x.addr, align 4
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
  %4 = load i32, i32* %xpadded_size, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %maxx, align 4
  %5 = load i32, i32* getelementptr inbounds ([2 x [3 x i32]], [2 x [3 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 0, i64 0), align 4
  store i32 %5, i32* %tap0, align 4
  %6 = load i32, i32* getelementptr inbounds ([2 x [3 x i32]], [2 x [3 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 0, i64 1), align 4
  store i32 %6, i32* %tap1, align 4
  %7 = load i32, i32* getelementptr inbounds ([2 x [3 x i32]], [2 x [3 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 0, i64 2), align 4
  store i32 %7, i32* %tap2, align 4
  store i32 0, i32* %jpad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.152, %entry
  %8 = load i32, i32* %jpad, align 4
  %9 = load i32, i32* %ypadded_size, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.154

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %jpad, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %src_x.addr, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load i32, i32* %src_y.addr, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 30
  %14 = load i16****, i16***** %imgY_sub, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %14, i64 %idxprom3
  %15 = load i16***, i16**** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i16**, i16*** %15, i64 %idxprom2
  %16 = load i16**, i16*** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i16*, i16** %16, i64 %idxprom
  %17 = load i16*, i16** %arrayidx5, align 8
  store i16* %17, i16** %wBufSrc, align 8
  %18 = load i32, i32* %jpad, align 4
  %idxprom6 = sext i32 %18 to i64
  %19 = load i32, i32* %dst_x.addr, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load i32, i32* %dst_y.addr, align 4
  %idxprom8 = sext i32 %20 to i64
  %21 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub9 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %21, i32 0, i32 30
  %22 = load i16****, i16***** %imgY_sub9, align 8
  %arrayidx10 = getelementptr inbounds i16***, i16**** %22, i64 %idxprom8
  %23 = load i16***, i16**** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i16**, i16*** %23, i64 %idxprom7
  %24 = load i16**, i16*** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i16*, i16** %24, i64 %idxprom6
  %25 = load i16*, i16** %arrayidx12, align 8
  store i16* %25, i16** %wBufDst, align 8
  %26 = load i32, i32* %jpad, align 4
  %idxprom13 = sext i32 %26 to i64
  %27 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %27, i64 %idxprom13
  %28 = load i32*, i32** %arrayidx14, align 8
  store i32* %28, i32** %iBufDst, align 8
  store i32 0, i32* %ipad, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body
  %29 = load i32, i32* %ipad, align 4
  %cmp16 = icmp slt i32 %29, 2
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %30 = load i32, i32* %tap0, align 4
  %31 = load i32, i32* %ipad, align 4
  %idxprom18 = sext i32 %31 to i64
  %32 = load i16*, i16** %wBufSrc, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %32, i64 %idxprom18
  %33 = load i16, i16* %arrayidx19, align 2
  %conv = zext i16 %33 to i32
  %34 = load i32, i32* %ipad, align 4
  %add20 = add nsw i32 %34, 1
  %idxprom21 = sext i32 %add20 to i64
  %35 = load i16*, i16** %wBufSrc, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %35, i64 %idxprom21
  %36 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %36 to i32
  %add24 = add nsw i32 %conv, %conv23
  %mul = mul nsw i32 %30, %add24
  %37 = load i32, i32* %tap1, align 4
  %38 = load i32, i32* %ipad, align 4
  %sub25 = sub nsw i32 %38, 1
  %call = call i32 @imax(i32 0, i32 %sub25)
  %idxprom26 = sext i32 %call to i64
  %39 = load i16*, i16** %wBufSrc, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %39, i64 %idxprom26
  %40 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %40 to i32
  %41 = load i32, i32* %ipad, align 4
  %add29 = add nsw i32 %41, 2
  %idxprom30 = sext i32 %add29 to i64
  %42 = load i16*, i16** %wBufSrc, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %42, i64 %idxprom30
  %43 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %43 to i32
  %add33 = add nsw i32 %conv28, %conv32
  %mul34 = mul nsw i32 %37, %add33
  %add35 = add nsw i32 %mul, %mul34
  %44 = load i32, i32* %tap2, align 4
  %45 = load i32, i32* %ipad, align 4
  %sub36 = sub nsw i32 %45, 2
  %call37 = call i32 @imax(i32 0, i32 %sub36)
  %idxprom38 = sext i32 %call37 to i64
  %46 = load i16*, i16** %wBufSrc, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %46, i64 %idxprom38
  %47 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %47 to i32
  %48 = load i32, i32* %ipad, align 4
  %add41 = add nsw i32 %48, 3
  %idxprom42 = sext i32 %add41 to i64
  %49 = load i16*, i16** %wBufSrc, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %49, i64 %idxprom42
  %50 = load i16, i16* %arrayidx43, align 2
  %conv44 = zext i16 %50 to i32
  %add45 = add nsw i32 %conv40, %conv44
  %mul46 = mul nsw i32 %44, %add45
  %add47 = add nsw i32 %add35, %mul46
  store i32 %add47, i32* %is, align 4
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 156
  %52 = load i32, i32* %max_imgpel_value, align 4
  %53 = load i32, i32* %is, align 4
  %call48 = call i32 @rshift_rnd_sf(i32 %53, i32 5)
  %call49 = call i32 @iClip3(i32 0, i32 %52, i32 %call48)
  %conv50 = trunc i32 %call49 to i16
  %54 = load i32, i32* %ipad, align 4
  %idxprom51 = sext i32 %54 to i64
  %55 = load i16*, i16** %wBufDst, align 8
  %arrayidx52 = getelementptr inbounds i16, i16* %55, i64 %idxprom51
  store i16 %conv50, i16* %arrayidx52, align 2
  %56 = load i32, i32* %is, align 4
  %57 = load i32, i32* %ipad, align 4
  %idxprom53 = sext i32 %57 to i64
  %58 = load i32*, i32** %iBufDst, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %58, i64 %idxprom53
  store i32 %56, i32* %arrayidx54, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %59 = load i32, i32* %ipad, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %ipad, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  store i32 2, i32* %ipad, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.99, %for.end
  %60 = load i32, i32* %ipad, align 4
  %61 = load i32, i32* %xpadded_size, align 4
  %sub56 = sub nsw i32 %61, 3
  %cmp57 = icmp slt i32 %60, %sub56
  br i1 %cmp57, label %for.body.59, label %for.end.101

for.body.59:                                      ; preds = %for.cond.55
  %62 = load i32, i32* %tap0, align 4
  %63 = load i32, i32* %ipad, align 4
  %idxprom60 = sext i32 %63 to i64
  %64 = load i16*, i16** %wBufSrc, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %64, i64 %idxprom60
  %65 = load i16, i16* %arrayidx61, align 2
  %conv62 = zext i16 %65 to i32
  %66 = load i32, i32* %ipad, align 4
  %add63 = add nsw i32 %66, 1
  %idxprom64 = sext i32 %add63 to i64
  %67 = load i16*, i16** %wBufSrc, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %67, i64 %idxprom64
  %68 = load i16, i16* %arrayidx65, align 2
  %conv66 = zext i16 %68 to i32
  %add67 = add nsw i32 %conv62, %conv66
  %mul68 = mul nsw i32 %62, %add67
  %69 = load i32, i32* %tap1, align 4
  %70 = load i32, i32* %ipad, align 4
  %sub69 = sub nsw i32 %70, 1
  %idxprom70 = sext i32 %sub69 to i64
  %71 = load i16*, i16** %wBufSrc, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %71, i64 %idxprom70
  %72 = load i16, i16* %arrayidx71, align 2
  %conv72 = zext i16 %72 to i32
  %73 = load i32, i32* %ipad, align 4
  %add73 = add nsw i32 %73, 2
  %idxprom74 = sext i32 %add73 to i64
  %74 = load i16*, i16** %wBufSrc, align 8
  %arrayidx75 = getelementptr inbounds i16, i16* %74, i64 %idxprom74
  %75 = load i16, i16* %arrayidx75, align 2
  %conv76 = zext i16 %75 to i32
  %add77 = add nsw i32 %conv72, %conv76
  %mul78 = mul nsw i32 %69, %add77
  %add79 = add nsw i32 %mul68, %mul78
  %76 = load i32, i32* %tap2, align 4
  %77 = load i32, i32* %ipad, align 4
  %sub80 = sub nsw i32 %77, 2
  %idxprom81 = sext i32 %sub80 to i64
  %78 = load i16*, i16** %wBufSrc, align 8
  %arrayidx82 = getelementptr inbounds i16, i16* %78, i64 %idxprom81
  %79 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %79 to i32
  %80 = load i32, i32* %ipad, align 4
  %add84 = add nsw i32 %80, 3
  %idxprom85 = sext i32 %add84 to i64
  %81 = load i16*, i16** %wBufSrc, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %81, i64 %idxprom85
  %82 = load i16, i16* %arrayidx86, align 2
  %conv87 = zext i16 %82 to i32
  %add88 = add nsw i32 %conv83, %conv87
  %mul89 = mul nsw i32 %76, %add88
  %add90 = add nsw i32 %add79, %mul89
  store i32 %add90, i32* %is, align 4
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value91 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 156
  %84 = load i32, i32* %max_imgpel_value91, align 4
  %85 = load i32, i32* %is, align 4
  %call92 = call i32 @rshift_rnd_sf(i32 %85, i32 5)
  %call93 = call i32 @iClip3(i32 0, i32 %84, i32 %call92)
  %conv94 = trunc i32 %call93 to i16
  %86 = load i32, i32* %ipad, align 4
  %idxprom95 = sext i32 %86 to i64
  %87 = load i16*, i16** %wBufDst, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %87, i64 %idxprom95
  store i16 %conv94, i16* %arrayidx96, align 2
  %88 = load i32, i32* %is, align 4
  %89 = load i32, i32* %ipad, align 4
  %idxprom97 = sext i32 %89 to i64
  %90 = load i32*, i32** %iBufDst, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %90, i64 %idxprom97
  store i32 %88, i32* %arrayidx98, align 4
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.59
  %91 = load i32, i32* %ipad, align 4
  %inc100 = add nsw i32 %91, 1
  store i32 %inc100, i32* %ipad, align 4
  br label %for.cond.55

for.end.101:                                      ; preds = %for.cond.55
  %92 = load i32, i32* %xpadded_size, align 4
  %sub102 = sub nsw i32 %92, 3
  store i32 %sub102, i32* %ipad, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.149, %for.end.101
  %93 = load i32, i32* %ipad, align 4
  %94 = load i32, i32* %xpadded_size, align 4
  %cmp104 = icmp slt i32 %93, %94
  br i1 %cmp104, label %for.body.106, label %for.end.151

for.body.106:                                     ; preds = %for.cond.103
  %95 = load i32, i32* %tap0, align 4
  %96 = load i32, i32* %ipad, align 4
  %idxprom107 = sext i32 %96 to i64
  %97 = load i16*, i16** %wBufSrc, align 8
  %arrayidx108 = getelementptr inbounds i16, i16* %97, i64 %idxprom107
  %98 = load i16, i16* %arrayidx108, align 2
  %conv109 = zext i16 %98 to i32
  %99 = load i32, i32* %maxx, align 4
  %100 = load i32, i32* %ipad, align 4
  %add110 = add nsw i32 %100, 1
  %call111 = call i32 @imin(i32 %99, i32 %add110)
  %idxprom112 = sext i32 %call111 to i64
  %101 = load i16*, i16** %wBufSrc, align 8
  %arrayidx113 = getelementptr inbounds i16, i16* %101, i64 %idxprom112
  %102 = load i16, i16* %arrayidx113, align 2
  %conv114 = zext i16 %102 to i32
  %add115 = add nsw i32 %conv109, %conv114
  %mul116 = mul nsw i32 %95, %add115
  %103 = load i32, i32* %tap1, align 4
  %104 = load i32, i32* %ipad, align 4
  %sub117 = sub nsw i32 %104, 1
  %idxprom118 = sext i32 %sub117 to i64
  %105 = load i16*, i16** %wBufSrc, align 8
  %arrayidx119 = getelementptr inbounds i16, i16* %105, i64 %idxprom118
  %106 = load i16, i16* %arrayidx119, align 2
  %conv120 = zext i16 %106 to i32
  %107 = load i32, i32* %maxx, align 4
  %108 = load i32, i32* %ipad, align 4
  %add121 = add nsw i32 %108, 2
  %call122 = call i32 @imin(i32 %107, i32 %add121)
  %idxprom123 = sext i32 %call122 to i64
  %109 = load i16*, i16** %wBufSrc, align 8
  %arrayidx124 = getelementptr inbounds i16, i16* %109, i64 %idxprom123
  %110 = load i16, i16* %arrayidx124, align 2
  %conv125 = zext i16 %110 to i32
  %add126 = add nsw i32 %conv120, %conv125
  %mul127 = mul nsw i32 %103, %add126
  %add128 = add nsw i32 %mul116, %mul127
  %111 = load i32, i32* %tap2, align 4
  %112 = load i32, i32* %ipad, align 4
  %sub129 = sub nsw i32 %112, 2
  %idxprom130 = sext i32 %sub129 to i64
  %113 = load i16*, i16** %wBufSrc, align 8
  %arrayidx131 = getelementptr inbounds i16, i16* %113, i64 %idxprom130
  %114 = load i16, i16* %arrayidx131, align 2
  %conv132 = zext i16 %114 to i32
  %115 = load i32, i32* %maxx, align 4
  %116 = load i32, i32* %ipad, align 4
  %add133 = add nsw i32 %116, 3
  %call134 = call i32 @imin(i32 %115, i32 %add133)
  %idxprom135 = sext i32 %call134 to i64
  %117 = load i16*, i16** %wBufSrc, align 8
  %arrayidx136 = getelementptr inbounds i16, i16* %117, i64 %idxprom135
  %118 = load i16, i16* %arrayidx136, align 2
  %conv137 = zext i16 %118 to i32
  %add138 = add nsw i32 %conv132, %conv137
  %mul139 = mul nsw i32 %111, %add138
  %add140 = add nsw i32 %add128, %mul139
  store i32 %add140, i32* %is, align 4
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value141 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 156
  %120 = load i32, i32* %max_imgpel_value141, align 4
  %121 = load i32, i32* %is, align 4
  %call142 = call i32 @rshift_rnd_sf(i32 %121, i32 5)
  %call143 = call i32 @iClip3(i32 0, i32 %120, i32 %call142)
  %conv144 = trunc i32 %call143 to i16
  %122 = load i32, i32* %ipad, align 4
  %idxprom145 = sext i32 %122 to i64
  %123 = load i16*, i16** %wBufDst, align 8
  %arrayidx146 = getelementptr inbounds i16, i16* %123, i64 %idxprom145
  store i16 %conv144, i16* %arrayidx146, align 2
  %124 = load i32, i32* %is, align 4
  %125 = load i32, i32* %ipad, align 4
  %idxprom147 = sext i32 %125 to i64
  %126 = load i32*, i32** %iBufDst, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %126, i64 %idxprom147
  store i32 %124, i32* %arrayidx148, align 4
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.body.106
  %127 = load i32, i32* %ipad, align 4
  %inc150 = add nsw i32 %127, 1
  store i32 %inc150, i32* %ipad, align 4
  br label %for.cond.103

for.end.151:                                      ; preds = %for.cond.103
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.end.151
  %128 = load i32, i32* %jpad, align 4
  %inc153 = add nsw i32 %128, 1
  store i32 %inc153, i32* %jpad, align 4
  br label %for.cond

for.end.154:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @getVerSubImageSixTap(%struct.storable_picture* %s, i32 %dst_y, i32 %dst_x, i32 %src_y, i32 %src_x, i32 %use_stored_int) #0 {
entry:
  %s.addr = alloca %struct.storable_picture*, align 8
  %dst_y.addr = alloca i32, align 4
  %dst_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %src_x.addr = alloca i32, align 4
  %use_stored_int.addr = alloca i32, align 4
  %is = alloca i32, align 4
  %jpad = alloca i32, align 4
  %jlow1 = alloca i32, align 4
  %jlow2 = alloca i32, align 4
  %jhigh1 = alloca i32, align 4
  %jhigh2 = alloca i32, align 4
  %jhigh3 = alloca i32, align 4
  %ipad = alloca i32, align 4
  %ypadded_size = alloca i32, align 4
  %xpadded_size = alloca i32, align 4
  %maxy = alloca i32, align 4
  %wxBufSrc = alloca i16**, align 8
  %wxBufDst = alloca i16**, align 8
  %wxLineDst = alloca i16*, align 8
  %tap0 = alloca i32, align 4
  %tap1 = alloca i32, align 4
  %tap2 = alloca i32, align 4
  store %struct.storable_picture* %s, %struct.storable_picture** %s.addr, align 8
  store i32 %dst_y, i32* %dst_y.addr, align 4
  store i32 %dst_x, i32* %dst_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %use_stored_int, i32* %use_stored_int.addr, align 4
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
  %4 = load i32, i32* %ypadded_size, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %maxy, align 4
  %5 = load i32, i32* getelementptr inbounds ([2 x [3 x i32]], [2 x [3 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 0, i64 0), align 4
  store i32 %5, i32* %tap0, align 4
  %6 = load i32, i32* getelementptr inbounds ([2 x [3 x i32]], [2 x [3 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 0, i64 1), align 4
  store i32 %6, i32* %tap1, align 4
  %7 = load i32, i32* getelementptr inbounds ([2 x [3 x i32]], [2 x [3 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 0, i64 2), align 4
  store i32 %7, i32* %tap2, align 4
  %8 = load i32, i32* %src_x.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %src_y.addr, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 30
  %11 = load i16****, i16***** %imgY_sub, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %11, i64 %idxprom2
  %12 = load i16***, i16**** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i16**, i16*** %12, i64 %idxprom
  %13 = load i16**, i16*** %arrayidx3, align 8
  store i16** %13, i16*** %wxBufSrc, align 8
  %14 = load i32, i32* %dst_x.addr, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load i32, i32* %dst_y.addr, align 4
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub6 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 30
  %17 = load i16****, i16***** %imgY_sub6, align 8
  %arrayidx7 = getelementptr inbounds i16***, i16**** %17, i64 %idxprom5
  %18 = load i16***, i16**** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i16**, i16*** %18, i64 %idxprom4
  %19 = load i16**, i16*** %arrayidx8, align 8
  store i16** %19, i16*** %wxBufDst, align 8
  %20 = load i32, i32* %use_stored_int.addr, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %jpad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %if.then
  %21 = load i32, i32* %jpad, align 4
  %cmp = icmp slt i32 %21, 2
  br i1 %cmp, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %jpad, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load i16**, i16*** %wxBufDst, align 8
  %arrayidx10 = getelementptr inbounds i16*, i16** %23, i64 %idxprom9
  %24 = load i16*, i16** %arrayidx10, align 8
  store i16* %24, i16** %wxLineDst, align 8
  %25 = load i32, i32* %jpad, align 4
  %sub11 = sub nsw i32 %25, 1
  %call = call i32 @imax(i32 0, i32 %sub11)
  store i32 %call, i32* %jlow1, align 4
  %26 = load i32, i32* %jpad, align 4
  %sub12 = sub nsw i32 %26, 2
  %call13 = call i32 @imax(i32 0, i32 %sub12)
  store i32 %call13, i32* %jlow2, align 4
  %27 = load i32, i32* %jpad, align 4
  %add14 = add nsw i32 %27, 1
  store i32 %add14, i32* %jhigh1, align 4
  %28 = load i32, i32* %jpad, align 4
  %add15 = add nsw i32 %28, 2
  store i32 %add15, i32* %jhigh2, align 4
  %29 = load i32, i32* %jpad, align 4
  %add16 = add nsw i32 %29, 3
  store i32 %add16, i32* %jhigh3, align 4
  store i32 0, i32* %ipad, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %30 = load i32, i32* %ipad, align 4
  %31 = load i32, i32* %xpadded_size, align 4
  %cmp18 = icmp slt i32 %30, %31
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %32 = load i32, i32* %tap0, align 4
  %33 = load i32, i32* %ipad, align 4
  %idxprom20 = sext i32 %33 to i64
  %34 = load i32, i32* %jpad, align 4
  %idxprom21 = sext i32 %34 to i64
  %35 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx22 = getelementptr inbounds i16*, i16** %35, i64 %idxprom21
  %36 = load i16*, i16** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %36, i64 %idxprom20
  %37 = load i16, i16* %arrayidx23, align 2
  %conv = zext i16 %37 to i32
  %38 = load i32, i32* %ipad, align 4
  %idxprom24 = sext i32 %38 to i64
  %39 = load i32, i32* %jhigh1, align 4
  %idxprom25 = sext i32 %39 to i64
  %40 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx26 = getelementptr inbounds i16*, i16** %40, i64 %idxprom25
  %41 = load i16*, i16** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %41, i64 %idxprom24
  %42 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %42 to i32
  %add29 = add nsw i32 %conv, %conv28
  %mul = mul nsw i32 %32, %add29
  %43 = load i32, i32* %tap1, align 4
  %44 = load i32, i32* %ipad, align 4
  %idxprom30 = sext i32 %44 to i64
  %45 = load i32, i32* %jlow1, align 4
  %idxprom31 = sext i32 %45 to i64
  %46 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx32 = getelementptr inbounds i16*, i16** %46, i64 %idxprom31
  %47 = load i16*, i16** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %47, i64 %idxprom30
  %48 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %48 to i32
  %49 = load i32, i32* %ipad, align 4
  %idxprom35 = sext i32 %49 to i64
  %50 = load i32, i32* %jhigh2, align 4
  %idxprom36 = sext i32 %50 to i64
  %51 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx37 = getelementptr inbounds i16*, i16** %51, i64 %idxprom36
  %52 = load i16*, i16** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %52, i64 %idxprom35
  %53 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %53 to i32
  %add40 = add nsw i32 %conv34, %conv39
  %mul41 = mul nsw i32 %43, %add40
  %add42 = add nsw i32 %mul, %mul41
  %54 = load i32, i32* %tap2, align 4
  %55 = load i32, i32* %ipad, align 4
  %idxprom43 = sext i32 %55 to i64
  %56 = load i32, i32* %jlow2, align 4
  %idxprom44 = sext i32 %56 to i64
  %57 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx45 = getelementptr inbounds i16*, i16** %57, i64 %idxprom44
  %58 = load i16*, i16** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %58, i64 %idxprom43
  %59 = load i16, i16* %arrayidx46, align 2
  %conv47 = zext i16 %59 to i32
  %60 = load i32, i32* %ipad, align 4
  %idxprom48 = sext i32 %60 to i64
  %61 = load i32, i32* %jhigh3, align 4
  %idxprom49 = sext i32 %61 to i64
  %62 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx50 = getelementptr inbounds i16*, i16** %62, i64 %idxprom49
  %63 = load i16*, i16** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %63, i64 %idxprom48
  %64 = load i16, i16* %arrayidx51, align 2
  %conv52 = zext i16 %64 to i32
  %add53 = add nsw i32 %conv47, %conv52
  %mul54 = mul nsw i32 %54, %add53
  %add55 = add nsw i32 %add42, %mul54
  store i32 %add55, i32* %is, align 4
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 156
  %66 = load i32, i32* %max_imgpel_value, align 4
  %67 = load i32, i32* %is, align 4
  %call56 = call i32 @rshift_rnd_sf(i32 %67, i32 5)
  %call57 = call i32 @iClip3(i32 0, i32 %66, i32 %call56)
  %conv58 = trunc i32 %call57 to i16
  %68 = load i32, i32* %ipad, align 4
  %idxprom59 = sext i32 %68 to i64
  %69 = load i16*, i16** %wxLineDst, align 8
  %arrayidx60 = getelementptr inbounds i16, i16* %69, i64 %idxprom59
  store i16 %conv58, i16* %arrayidx60, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %70 = load i32, i32* %ipad, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %ipad, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end
  %71 = load i32, i32* %jpad, align 4
  %inc62 = add nsw i32 %71, 1
  store i32 %inc62, i32* %jpad, align 4
  br label %for.cond

for.end.63:                                       ; preds = %for.cond
  store i32 2, i32* %jpad, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.127, %for.end.63
  %72 = load i32, i32* %jpad, align 4
  %73 = load i32, i32* %ypadded_size, align 4
  %sub65 = sub nsw i32 %73, 3
  %cmp66 = icmp slt i32 %72, %sub65
  br i1 %cmp66, label %for.body.68, label %for.end.129

for.body.68:                                      ; preds = %for.cond.64
  %74 = load i32, i32* %jpad, align 4
  %idxprom69 = sext i32 %74 to i64
  %75 = load i16**, i16*** %wxBufDst, align 8
  %arrayidx70 = getelementptr inbounds i16*, i16** %75, i64 %idxprom69
  %76 = load i16*, i16** %arrayidx70, align 8
  store i16* %76, i16** %wxLineDst, align 8
  %77 = load i32, i32* %jpad, align 4
  %sub71 = sub nsw i32 %77, 1
  store i32 %sub71, i32* %jlow1, align 4
  %78 = load i32, i32* %jpad, align 4
  %sub72 = sub nsw i32 %78, 2
  store i32 %sub72, i32* %jlow2, align 4
  %79 = load i32, i32* %jpad, align 4
  %add73 = add nsw i32 %79, 1
  store i32 %add73, i32* %jhigh1, align 4
  %80 = load i32, i32* %jpad, align 4
  %add74 = add nsw i32 %80, 2
  store i32 %add74, i32* %jhigh2, align 4
  %81 = load i32, i32* %jpad, align 4
  %add75 = add nsw i32 %81, 3
  store i32 %add75, i32* %jhigh3, align 4
  store i32 0, i32* %ipad, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.124, %for.body.68
  %82 = load i32, i32* %ipad, align 4
  %83 = load i32, i32* %xpadded_size, align 4
  %cmp77 = icmp slt i32 %82, %83
  br i1 %cmp77, label %for.body.79, label %for.end.126

for.body.79:                                      ; preds = %for.cond.76
  %84 = load i32, i32* %tap0, align 4
  %85 = load i32, i32* %ipad, align 4
  %idxprom80 = sext i32 %85 to i64
  %86 = load i32, i32* %jpad, align 4
  %idxprom81 = sext i32 %86 to i64
  %87 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx82 = getelementptr inbounds i16*, i16** %87, i64 %idxprom81
  %88 = load i16*, i16** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i16, i16* %88, i64 %idxprom80
  %89 = load i16, i16* %arrayidx83, align 2
  %conv84 = zext i16 %89 to i32
  %90 = load i32, i32* %ipad, align 4
  %idxprom85 = sext i32 %90 to i64
  %91 = load i32, i32* %jhigh1, align 4
  %idxprom86 = sext i32 %91 to i64
  %92 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx87 = getelementptr inbounds i16*, i16** %92, i64 %idxprom86
  %93 = load i16*, i16** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %93, i64 %idxprom85
  %94 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %94 to i32
  %add90 = add nsw i32 %conv84, %conv89
  %mul91 = mul nsw i32 %84, %add90
  %95 = load i32, i32* %tap1, align 4
  %96 = load i32, i32* %ipad, align 4
  %idxprom92 = sext i32 %96 to i64
  %97 = load i32, i32* %jlow1, align 4
  %idxprom93 = sext i32 %97 to i64
  %98 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx94 = getelementptr inbounds i16*, i16** %98, i64 %idxprom93
  %99 = load i16*, i16** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %99, i64 %idxprom92
  %100 = load i16, i16* %arrayidx95, align 2
  %conv96 = zext i16 %100 to i32
  %101 = load i32, i32* %ipad, align 4
  %idxprom97 = sext i32 %101 to i64
  %102 = load i32, i32* %jhigh2, align 4
  %idxprom98 = sext i32 %102 to i64
  %103 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx99 = getelementptr inbounds i16*, i16** %103, i64 %idxprom98
  %104 = load i16*, i16** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i16, i16* %104, i64 %idxprom97
  %105 = load i16, i16* %arrayidx100, align 2
  %conv101 = zext i16 %105 to i32
  %add102 = add nsw i32 %conv96, %conv101
  %mul103 = mul nsw i32 %95, %add102
  %add104 = add nsw i32 %mul91, %mul103
  %106 = load i32, i32* %tap2, align 4
  %107 = load i32, i32* %ipad, align 4
  %idxprom105 = sext i32 %107 to i64
  %108 = load i32, i32* %jlow2, align 4
  %idxprom106 = sext i32 %108 to i64
  %109 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx107 = getelementptr inbounds i16*, i16** %109, i64 %idxprom106
  %110 = load i16*, i16** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i16, i16* %110, i64 %idxprom105
  %111 = load i16, i16* %arrayidx108, align 2
  %conv109 = zext i16 %111 to i32
  %112 = load i32, i32* %ipad, align 4
  %idxprom110 = sext i32 %112 to i64
  %113 = load i32, i32* %jhigh3, align 4
  %idxprom111 = sext i32 %113 to i64
  %114 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx112 = getelementptr inbounds i16*, i16** %114, i64 %idxprom111
  %115 = load i16*, i16** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i16, i16* %115, i64 %idxprom110
  %116 = load i16, i16* %arrayidx113, align 2
  %conv114 = zext i16 %116 to i32
  %add115 = add nsw i32 %conv109, %conv114
  %mul116 = mul nsw i32 %106, %add115
  %add117 = add nsw i32 %add104, %mul116
  store i32 %add117, i32* %is, align 4
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value118 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 156
  %118 = load i32, i32* %max_imgpel_value118, align 4
  %119 = load i32, i32* %is, align 4
  %call119 = call i32 @rshift_rnd_sf(i32 %119, i32 5)
  %call120 = call i32 @iClip3(i32 0, i32 %118, i32 %call119)
  %conv121 = trunc i32 %call120 to i16
  %120 = load i32, i32* %ipad, align 4
  %idxprom122 = sext i32 %120 to i64
  %121 = load i16*, i16** %wxLineDst, align 8
  %arrayidx123 = getelementptr inbounds i16, i16* %121, i64 %idxprom122
  store i16 %conv121, i16* %arrayidx123, align 2
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.79
  %122 = load i32, i32* %ipad, align 4
  %inc125 = add nsw i32 %122, 1
  store i32 %inc125, i32* %ipad, align 4
  br label %for.cond.76

for.end.126:                                      ; preds = %for.cond.76
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end.126
  %123 = load i32, i32* %jpad, align 4
  %inc128 = add nsw i32 %123, 1
  store i32 %inc128, i32* %jpad, align 4
  br label %for.cond.64

for.end.129:                                      ; preds = %for.cond.64
  %124 = load i32, i32* %ypadded_size, align 4
  %sub130 = sub nsw i32 %124, 3
  store i32 %sub130, i32* %jpad, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.196, %for.end.129
  %125 = load i32, i32* %jpad, align 4
  %126 = load i32, i32* %ypadded_size, align 4
  %cmp132 = icmp slt i32 %125, %126
  br i1 %cmp132, label %for.body.134, label %for.end.198

for.body.134:                                     ; preds = %for.cond.131
  %127 = load i32, i32* %jpad, align 4
  %idxprom135 = sext i32 %127 to i64
  %128 = load i16**, i16*** %wxBufDst, align 8
  %arrayidx136 = getelementptr inbounds i16*, i16** %128, i64 %idxprom135
  %129 = load i16*, i16** %arrayidx136, align 8
  store i16* %129, i16** %wxLineDst, align 8
  %130 = load i32, i32* %jpad, align 4
  %sub137 = sub nsw i32 %130, 1
  store i32 %sub137, i32* %jlow1, align 4
  %131 = load i32, i32* %jpad, align 4
  %sub138 = sub nsw i32 %131, 2
  store i32 %sub138, i32* %jlow2, align 4
  %132 = load i32, i32* %maxy, align 4
  %133 = load i32, i32* %jpad, align 4
  %add139 = add nsw i32 %133, 1
  %call140 = call i32 @imin(i32 %132, i32 %add139)
  store i32 %call140, i32* %jhigh1, align 4
  %134 = load i32, i32* %maxy, align 4
  %135 = load i32, i32* %jpad, align 4
  %add141 = add nsw i32 %135, 2
  %call142 = call i32 @imin(i32 %134, i32 %add141)
  store i32 %call142, i32* %jhigh2, align 4
  %136 = load i32, i32* %maxy, align 4
  %137 = load i32, i32* %jpad, align 4
  %add143 = add nsw i32 %137, 3
  %call144 = call i32 @imin(i32 %136, i32 %add143)
  store i32 %call144, i32* %jhigh3, align 4
  store i32 0, i32* %ipad, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.193, %for.body.134
  %138 = load i32, i32* %ipad, align 4
  %139 = load i32, i32* %xpadded_size, align 4
  %cmp146 = icmp slt i32 %138, %139
  br i1 %cmp146, label %for.body.148, label %for.end.195

for.body.148:                                     ; preds = %for.cond.145
  %140 = load i32, i32* %tap0, align 4
  %141 = load i32, i32* %ipad, align 4
  %idxprom149 = sext i32 %141 to i64
  %142 = load i32, i32* %jpad, align 4
  %idxprom150 = sext i32 %142 to i64
  %143 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx151 = getelementptr inbounds i16*, i16** %143, i64 %idxprom150
  %144 = load i16*, i16** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i16, i16* %144, i64 %idxprom149
  %145 = load i16, i16* %arrayidx152, align 2
  %conv153 = zext i16 %145 to i32
  %146 = load i32, i32* %ipad, align 4
  %idxprom154 = sext i32 %146 to i64
  %147 = load i32, i32* %jhigh1, align 4
  %idxprom155 = sext i32 %147 to i64
  %148 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx156 = getelementptr inbounds i16*, i16** %148, i64 %idxprom155
  %149 = load i16*, i16** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds i16, i16* %149, i64 %idxprom154
  %150 = load i16, i16* %arrayidx157, align 2
  %conv158 = zext i16 %150 to i32
  %add159 = add nsw i32 %conv153, %conv158
  %mul160 = mul nsw i32 %140, %add159
  %151 = load i32, i32* %tap1, align 4
  %152 = load i32, i32* %ipad, align 4
  %idxprom161 = sext i32 %152 to i64
  %153 = load i32, i32* %jlow1, align 4
  %idxprom162 = sext i32 %153 to i64
  %154 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx163 = getelementptr inbounds i16*, i16** %154, i64 %idxprom162
  %155 = load i16*, i16** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i16, i16* %155, i64 %idxprom161
  %156 = load i16, i16* %arrayidx164, align 2
  %conv165 = zext i16 %156 to i32
  %157 = load i32, i32* %ipad, align 4
  %idxprom166 = sext i32 %157 to i64
  %158 = load i32, i32* %jhigh2, align 4
  %idxprom167 = sext i32 %158 to i64
  %159 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx168 = getelementptr inbounds i16*, i16** %159, i64 %idxprom167
  %160 = load i16*, i16** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i16, i16* %160, i64 %idxprom166
  %161 = load i16, i16* %arrayidx169, align 2
  %conv170 = zext i16 %161 to i32
  %add171 = add nsw i32 %conv165, %conv170
  %mul172 = mul nsw i32 %151, %add171
  %add173 = add nsw i32 %mul160, %mul172
  %162 = load i32, i32* %tap2, align 4
  %163 = load i32, i32* %ipad, align 4
  %idxprom174 = sext i32 %163 to i64
  %164 = load i32, i32* %jlow2, align 4
  %idxprom175 = sext i32 %164 to i64
  %165 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx176 = getelementptr inbounds i16*, i16** %165, i64 %idxprom175
  %166 = load i16*, i16** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds i16, i16* %166, i64 %idxprom174
  %167 = load i16, i16* %arrayidx177, align 2
  %conv178 = zext i16 %167 to i32
  %168 = load i32, i32* %ipad, align 4
  %idxprom179 = sext i32 %168 to i64
  %169 = load i32, i32* %jhigh3, align 4
  %idxprom180 = sext i32 %169 to i64
  %170 = load i16**, i16*** %wxBufSrc, align 8
  %arrayidx181 = getelementptr inbounds i16*, i16** %170, i64 %idxprom180
  %171 = load i16*, i16** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i16, i16* %171, i64 %idxprom179
  %172 = load i16, i16* %arrayidx182, align 2
  %conv183 = zext i16 %172 to i32
  %add184 = add nsw i32 %conv178, %conv183
  %mul185 = mul nsw i32 %162, %add184
  %add186 = add nsw i32 %add173, %mul185
  store i32 %add186, i32* %is, align 4
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 156
  %174 = load i32, i32* %max_imgpel_value187, align 4
  %175 = load i32, i32* %is, align 4
  %call188 = call i32 @rshift_rnd_sf(i32 %175, i32 5)
  %call189 = call i32 @iClip3(i32 0, i32 %174, i32 %call188)
  %conv190 = trunc i32 %call189 to i16
  %176 = load i32, i32* %ipad, align 4
  %idxprom191 = sext i32 %176 to i64
  %177 = load i16*, i16** %wxLineDst, align 8
  %arrayidx192 = getelementptr inbounds i16, i16* %177, i64 %idxprom191
  store i16 %conv190, i16* %arrayidx192, align 2
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.148
  %178 = load i32, i32* %ipad, align 4
  %inc194 = add nsw i32 %178, 1
  store i32 %inc194, i32* %ipad, align 4
  br label %for.cond.145

for.end.195:                                      ; preds = %for.cond.145
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.end.195
  %179 = load i32, i32* %jpad, align 4
  %inc197 = add nsw i32 %179, 1
  store i32 %inc197, i32* %jpad, align 4
  br label %for.cond.131

for.end.198:                                      ; preds = %for.cond.131
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %jpad, align 4
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.257, %if.else
  %180 = load i32, i32* %jpad, align 4
  %cmp200 = icmp slt i32 %180, 2
  br i1 %cmp200, label %for.body.202, label %for.end.259

for.body.202:                                     ; preds = %for.cond.199
  %181 = load i32, i32* %jpad, align 4
  %idxprom203 = sext i32 %181 to i64
  %182 = load i16**, i16*** %wxBufDst, align 8
  %arrayidx204 = getelementptr inbounds i16*, i16** %182, i64 %idxprom203
  %183 = load i16*, i16** %arrayidx204, align 8
  store i16* %183, i16** %wxLineDst, align 8
  %184 = load i32, i32* %jpad, align 4
  %sub205 = sub nsw i32 %184, 1
  %call206 = call i32 @imax(i32 0, i32 %sub205)
  store i32 %call206, i32* %jlow1, align 4
  %185 = load i32, i32* %jpad, align 4
  %sub207 = sub nsw i32 %185, 2
  %call208 = call i32 @imax(i32 0, i32 %sub207)
  store i32 %call208, i32* %jlow2, align 4
  %186 = load i32, i32* %jpad, align 4
  %add209 = add nsw i32 %186, 1
  store i32 %add209, i32* %jhigh1, align 4
  %187 = load i32, i32* %jpad, align 4
  %add210 = add nsw i32 %187, 2
  store i32 %add210, i32* %jhigh2, align 4
  %188 = load i32, i32* %jpad, align 4
  %add211 = add nsw i32 %188, 3
  store i32 %add211, i32* %jhigh3, align 4
  store i32 0, i32* %ipad, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.254, %for.body.202
  %189 = load i32, i32* %ipad, align 4
  %190 = load i32, i32* %xpadded_size, align 4
  %cmp213 = icmp slt i32 %189, %190
  br i1 %cmp213, label %for.body.215, label %for.end.256

for.body.215:                                     ; preds = %for.cond.212
  %191 = load i32, i32* %tap0, align 4
  %192 = load i32, i32* %ipad, align 4
  %idxprom216 = sext i32 %192 to i64
  %193 = load i32, i32* %jpad, align 4
  %idxprom217 = sext i32 %193 to i64
  %194 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx218 = getelementptr inbounds i32*, i32** %194, i64 %idxprom217
  %195 = load i32*, i32** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i32, i32* %195, i64 %idxprom216
  %196 = load i32, i32* %arrayidx219, align 4
  %197 = load i32, i32* %ipad, align 4
  %idxprom220 = sext i32 %197 to i64
  %198 = load i32, i32* %jhigh1, align 4
  %idxprom221 = sext i32 %198 to i64
  %199 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx222 = getelementptr inbounds i32*, i32** %199, i64 %idxprom221
  %200 = load i32*, i32** %arrayidx222, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %200, i64 %idxprom220
  %201 = load i32, i32* %arrayidx223, align 4
  %add224 = add nsw i32 %196, %201
  %mul225 = mul nsw i32 %191, %add224
  %202 = load i32, i32* %tap1, align 4
  %203 = load i32, i32* %ipad, align 4
  %idxprom226 = sext i32 %203 to i64
  %204 = load i32, i32* %jlow1, align 4
  %idxprom227 = sext i32 %204 to i64
  %205 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx228 = getelementptr inbounds i32*, i32** %205, i64 %idxprom227
  %206 = load i32*, i32** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds i32, i32* %206, i64 %idxprom226
  %207 = load i32, i32* %arrayidx229, align 4
  %208 = load i32, i32* %ipad, align 4
  %idxprom230 = sext i32 %208 to i64
  %209 = load i32, i32* %jhigh2, align 4
  %idxprom231 = sext i32 %209 to i64
  %210 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx232 = getelementptr inbounds i32*, i32** %210, i64 %idxprom231
  %211 = load i32*, i32** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %211, i64 %idxprom230
  %212 = load i32, i32* %arrayidx233, align 4
  %add234 = add nsw i32 %207, %212
  %mul235 = mul nsw i32 %202, %add234
  %add236 = add nsw i32 %mul225, %mul235
  %213 = load i32, i32* %tap2, align 4
  %214 = load i32, i32* %ipad, align 4
  %idxprom237 = sext i32 %214 to i64
  %215 = load i32, i32* %jlow2, align 4
  %idxprom238 = sext i32 %215 to i64
  %216 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx239 = getelementptr inbounds i32*, i32** %216, i64 %idxprom238
  %217 = load i32*, i32** %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %217, i64 %idxprom237
  %218 = load i32, i32* %arrayidx240, align 4
  %219 = load i32, i32* %ipad, align 4
  %idxprom241 = sext i32 %219 to i64
  %220 = load i32, i32* %jhigh3, align 4
  %idxprom242 = sext i32 %220 to i64
  %221 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx243 = getelementptr inbounds i32*, i32** %221, i64 %idxprom242
  %222 = load i32*, i32** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %222, i64 %idxprom241
  %223 = load i32, i32* %arrayidx244, align 4
  %add245 = add nsw i32 %218, %223
  %mul246 = mul nsw i32 %213, %add245
  %add247 = add nsw i32 %add236, %mul246
  store i32 %add247, i32* %is, align 4
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value248 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 156
  %225 = load i32, i32* %max_imgpel_value248, align 4
  %226 = load i32, i32* %is, align 4
  %call249 = call i32 @rshift_rnd_sf(i32 %226, i32 10)
  %call250 = call i32 @iClip3(i32 0, i32 %225, i32 %call249)
  %conv251 = trunc i32 %call250 to i16
  %227 = load i32, i32* %ipad, align 4
  %idxprom252 = sext i32 %227 to i64
  %228 = load i16*, i16** %wxLineDst, align 8
  %arrayidx253 = getelementptr inbounds i16, i16* %228, i64 %idxprom252
  store i16 %conv251, i16* %arrayidx253, align 2
  br label %for.inc.254

for.inc.254:                                      ; preds = %for.body.215
  %229 = load i32, i32* %ipad, align 4
  %inc255 = add nsw i32 %229, 1
  store i32 %inc255, i32* %ipad, align 4
  br label %for.cond.212

for.end.256:                                      ; preds = %for.cond.212
  br label %for.inc.257

for.inc.257:                                      ; preds = %for.end.256
  %230 = load i32, i32* %jpad, align 4
  %inc258 = add nsw i32 %230, 1
  store i32 %inc258, i32* %jpad, align 4
  br label %for.cond.199

for.end.259:                                      ; preds = %for.cond.199
  store i32 2, i32* %jpad, align 4
  br label %for.cond.260

for.cond.260:                                     ; preds = %for.inc.317, %for.end.259
  %231 = load i32, i32* %jpad, align 4
  %232 = load i32, i32* %ypadded_size, align 4
  %sub261 = sub nsw i32 %232, 3
  %cmp262 = icmp slt i32 %231, %sub261
  br i1 %cmp262, label %for.body.264, label %for.end.319

for.body.264:                                     ; preds = %for.cond.260
  %233 = load i32, i32* %jpad, align 4
  %idxprom265 = sext i32 %233 to i64
  %234 = load i16**, i16*** %wxBufDst, align 8
  %arrayidx266 = getelementptr inbounds i16*, i16** %234, i64 %idxprom265
  %235 = load i16*, i16** %arrayidx266, align 8
  store i16* %235, i16** %wxLineDst, align 8
  %236 = load i32, i32* %jpad, align 4
  %sub267 = sub nsw i32 %236, 1
  store i32 %sub267, i32* %jlow1, align 4
  %237 = load i32, i32* %jpad, align 4
  %sub268 = sub nsw i32 %237, 2
  store i32 %sub268, i32* %jlow2, align 4
  %238 = load i32, i32* %jpad, align 4
  %add269 = add nsw i32 %238, 1
  store i32 %add269, i32* %jhigh1, align 4
  %239 = load i32, i32* %jpad, align 4
  %add270 = add nsw i32 %239, 2
  store i32 %add270, i32* %jhigh2, align 4
  %240 = load i32, i32* %jpad, align 4
  %add271 = add nsw i32 %240, 3
  store i32 %add271, i32* %jhigh3, align 4
  store i32 0, i32* %ipad, align 4
  br label %for.cond.272

for.cond.272:                                     ; preds = %for.inc.314, %for.body.264
  %241 = load i32, i32* %ipad, align 4
  %242 = load i32, i32* %xpadded_size, align 4
  %cmp273 = icmp slt i32 %241, %242
  br i1 %cmp273, label %for.body.275, label %for.end.316

for.body.275:                                     ; preds = %for.cond.272
  %243 = load i32, i32* %tap0, align 4
  %244 = load i32, i32* %ipad, align 4
  %idxprom276 = sext i32 %244 to i64
  %245 = load i32, i32* %jpad, align 4
  %idxprom277 = sext i32 %245 to i64
  %246 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx278 = getelementptr inbounds i32*, i32** %246, i64 %idxprom277
  %247 = load i32*, i32** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i32, i32* %247, i64 %idxprom276
  %248 = load i32, i32* %arrayidx279, align 4
  %249 = load i32, i32* %ipad, align 4
  %idxprom280 = sext i32 %249 to i64
  %250 = load i32, i32* %jhigh1, align 4
  %idxprom281 = sext i32 %250 to i64
  %251 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx282 = getelementptr inbounds i32*, i32** %251, i64 %idxprom281
  %252 = load i32*, i32** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %252, i64 %idxprom280
  %253 = load i32, i32* %arrayidx283, align 4
  %add284 = add nsw i32 %248, %253
  %mul285 = mul nsw i32 %243, %add284
  %254 = load i32, i32* %tap1, align 4
  %255 = load i32, i32* %ipad, align 4
  %idxprom286 = sext i32 %255 to i64
  %256 = load i32, i32* %jlow1, align 4
  %idxprom287 = sext i32 %256 to i64
  %257 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx288 = getelementptr inbounds i32*, i32** %257, i64 %idxprom287
  %258 = load i32*, i32** %arrayidx288, align 8
  %arrayidx289 = getelementptr inbounds i32, i32* %258, i64 %idxprom286
  %259 = load i32, i32* %arrayidx289, align 4
  %260 = load i32, i32* %ipad, align 4
  %idxprom290 = sext i32 %260 to i64
  %261 = load i32, i32* %jhigh2, align 4
  %idxprom291 = sext i32 %261 to i64
  %262 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx292 = getelementptr inbounds i32*, i32** %262, i64 %idxprom291
  %263 = load i32*, i32** %arrayidx292, align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %263, i64 %idxprom290
  %264 = load i32, i32* %arrayidx293, align 4
  %add294 = add nsw i32 %259, %264
  %mul295 = mul nsw i32 %254, %add294
  %add296 = add nsw i32 %mul285, %mul295
  %265 = load i32, i32* %tap2, align 4
  %266 = load i32, i32* %ipad, align 4
  %idxprom297 = sext i32 %266 to i64
  %267 = load i32, i32* %jlow2, align 4
  %idxprom298 = sext i32 %267 to i64
  %268 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx299 = getelementptr inbounds i32*, i32** %268, i64 %idxprom298
  %269 = load i32*, i32** %arrayidx299, align 8
  %arrayidx300 = getelementptr inbounds i32, i32* %269, i64 %idxprom297
  %270 = load i32, i32* %arrayidx300, align 4
  %271 = load i32, i32* %ipad, align 4
  %idxprom301 = sext i32 %271 to i64
  %272 = load i32, i32* %jhigh3, align 4
  %idxprom302 = sext i32 %272 to i64
  %273 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx303 = getelementptr inbounds i32*, i32** %273, i64 %idxprom302
  %274 = load i32*, i32** %arrayidx303, align 8
  %arrayidx304 = getelementptr inbounds i32, i32* %274, i64 %idxprom301
  %275 = load i32, i32* %arrayidx304, align 4
  %add305 = add nsw i32 %270, %275
  %mul306 = mul nsw i32 %265, %add305
  %add307 = add nsw i32 %add296, %mul306
  store i32 %add307, i32* %is, align 4
  %276 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value308 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %276, i32 0, i32 156
  %277 = load i32, i32* %max_imgpel_value308, align 4
  %278 = load i32, i32* %is, align 4
  %call309 = call i32 @rshift_rnd_sf(i32 %278, i32 10)
  %call310 = call i32 @iClip3(i32 0, i32 %277, i32 %call309)
  %conv311 = trunc i32 %call310 to i16
  %279 = load i32, i32* %ipad, align 4
  %idxprom312 = sext i32 %279 to i64
  %280 = load i16*, i16** %wxLineDst, align 8
  %arrayidx313 = getelementptr inbounds i16, i16* %280, i64 %idxprom312
  store i16 %conv311, i16* %arrayidx313, align 2
  br label %for.inc.314

for.inc.314:                                      ; preds = %for.body.275
  %281 = load i32, i32* %ipad, align 4
  %inc315 = add nsw i32 %281, 1
  store i32 %inc315, i32* %ipad, align 4
  br label %for.cond.272

for.end.316:                                      ; preds = %for.cond.272
  br label %for.inc.317

for.inc.317:                                      ; preds = %for.end.316
  %282 = load i32, i32* %jpad, align 4
  %inc318 = add nsw i32 %282, 1
  store i32 %inc318, i32* %jpad, align 4
  br label %for.cond.260

for.end.319:                                      ; preds = %for.cond.260
  %283 = load i32, i32* %ypadded_size, align 4
  %sub320 = sub nsw i32 %283, 3
  store i32 %sub320, i32* %jpad, align 4
  br label %for.cond.321

for.cond.321:                                     ; preds = %for.inc.380, %for.end.319
  %284 = load i32, i32* %jpad, align 4
  %285 = load i32, i32* %ypadded_size, align 4
  %cmp322 = icmp slt i32 %284, %285
  br i1 %cmp322, label %for.body.324, label %for.end.382

for.body.324:                                     ; preds = %for.cond.321
  %286 = load i32, i32* %jpad, align 4
  %idxprom325 = sext i32 %286 to i64
  %287 = load i16**, i16*** %wxBufDst, align 8
  %arrayidx326 = getelementptr inbounds i16*, i16** %287, i64 %idxprom325
  %288 = load i16*, i16** %arrayidx326, align 8
  store i16* %288, i16** %wxLineDst, align 8
  %289 = load i32, i32* %jpad, align 4
  %sub327 = sub nsw i32 %289, 1
  store i32 %sub327, i32* %jlow1, align 4
  %290 = load i32, i32* %jpad, align 4
  %sub328 = sub nsw i32 %290, 2
  store i32 %sub328, i32* %jlow2, align 4
  %291 = load i32, i32* %maxy, align 4
  %292 = load i32, i32* %jpad, align 4
  %add329 = add nsw i32 %292, 1
  %call330 = call i32 @imin(i32 %291, i32 %add329)
  store i32 %call330, i32* %jhigh1, align 4
  %293 = load i32, i32* %maxy, align 4
  %294 = load i32, i32* %jpad, align 4
  %add331 = add nsw i32 %294, 2
  %call332 = call i32 @imin(i32 %293, i32 %add331)
  store i32 %call332, i32* %jhigh2, align 4
  %295 = load i32, i32* %maxy, align 4
  %296 = load i32, i32* %jpad, align 4
  %add333 = add nsw i32 %296, 3
  %call334 = call i32 @imin(i32 %295, i32 %add333)
  store i32 %call334, i32* %jhigh3, align 4
  store i32 0, i32* %ipad, align 4
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.377, %for.body.324
  %297 = load i32, i32* %ipad, align 4
  %298 = load i32, i32* %xpadded_size, align 4
  %cmp336 = icmp slt i32 %297, %298
  br i1 %cmp336, label %for.body.338, label %for.end.379

for.body.338:                                     ; preds = %for.cond.335
  %299 = load i32, i32* %tap0, align 4
  %300 = load i32, i32* %ipad, align 4
  %idxprom339 = sext i32 %300 to i64
  %301 = load i32, i32* %jpad, align 4
  %idxprom340 = sext i32 %301 to i64
  %302 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx341 = getelementptr inbounds i32*, i32** %302, i64 %idxprom340
  %303 = load i32*, i32** %arrayidx341, align 8
  %arrayidx342 = getelementptr inbounds i32, i32* %303, i64 %idxprom339
  %304 = load i32, i32* %arrayidx342, align 4
  %305 = load i32, i32* %ipad, align 4
  %idxprom343 = sext i32 %305 to i64
  %306 = load i32, i32* %jhigh1, align 4
  %idxprom344 = sext i32 %306 to i64
  %307 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx345 = getelementptr inbounds i32*, i32** %307, i64 %idxprom344
  %308 = load i32*, i32** %arrayidx345, align 8
  %arrayidx346 = getelementptr inbounds i32, i32* %308, i64 %idxprom343
  %309 = load i32, i32* %arrayidx346, align 4
  %add347 = add nsw i32 %304, %309
  %mul348 = mul nsw i32 %299, %add347
  %310 = load i32, i32* %tap1, align 4
  %311 = load i32, i32* %ipad, align 4
  %idxprom349 = sext i32 %311 to i64
  %312 = load i32, i32* %jlow1, align 4
  %idxprom350 = sext i32 %312 to i64
  %313 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx351 = getelementptr inbounds i32*, i32** %313, i64 %idxprom350
  %314 = load i32*, i32** %arrayidx351, align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %314, i64 %idxprom349
  %315 = load i32, i32* %arrayidx352, align 4
  %316 = load i32, i32* %ipad, align 4
  %idxprom353 = sext i32 %316 to i64
  %317 = load i32, i32* %jhigh2, align 4
  %idxprom354 = sext i32 %317 to i64
  %318 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx355 = getelementptr inbounds i32*, i32** %318, i64 %idxprom354
  %319 = load i32*, i32** %arrayidx355, align 8
  %arrayidx356 = getelementptr inbounds i32, i32* %319, i64 %idxprom353
  %320 = load i32, i32* %arrayidx356, align 4
  %add357 = add nsw i32 %315, %320
  %mul358 = mul nsw i32 %310, %add357
  %add359 = add nsw i32 %mul348, %mul358
  %321 = load i32, i32* %tap2, align 4
  %322 = load i32, i32* %ipad, align 4
  %idxprom360 = sext i32 %322 to i64
  %323 = load i32, i32* %jlow2, align 4
  %idxprom361 = sext i32 %323 to i64
  %324 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx362 = getelementptr inbounds i32*, i32** %324, i64 %idxprom361
  %325 = load i32*, i32** %arrayidx362, align 8
  %arrayidx363 = getelementptr inbounds i32, i32* %325, i64 %idxprom360
  %326 = load i32, i32* %arrayidx363, align 4
  %327 = load i32, i32* %ipad, align 4
  %idxprom364 = sext i32 %327 to i64
  %328 = load i32, i32* %jhigh3, align 4
  %idxprom365 = sext i32 %328 to i64
  %329 = load i32**, i32*** @imgY_sub_tmp, align 8
  %arrayidx366 = getelementptr inbounds i32*, i32** %329, i64 %idxprom365
  %330 = load i32*, i32** %arrayidx366, align 8
  %arrayidx367 = getelementptr inbounds i32, i32* %330, i64 %idxprom364
  %331 = load i32, i32* %arrayidx367, align 4
  %add368 = add nsw i32 %326, %331
  %mul369 = mul nsw i32 %321, %add368
  %add370 = add nsw i32 %add359, %mul369
  store i32 %add370, i32* %is, align 4
  %332 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value371 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %332, i32 0, i32 156
  %333 = load i32, i32* %max_imgpel_value371, align 4
  %334 = load i32, i32* %is, align 4
  %call372 = call i32 @rshift_rnd_sf(i32 %334, i32 10)
  %call373 = call i32 @iClip3(i32 0, i32 %333, i32 %call372)
  %conv374 = trunc i32 %call373 to i16
  %335 = load i32, i32* %ipad, align 4
  %idxprom375 = sext i32 %335 to i64
  %336 = load i16*, i16** %wxLineDst, align 8
  %arrayidx376 = getelementptr inbounds i16, i16* %336, i64 %idxprom375
  store i16 %conv374, i16* %arrayidx376, align 2
  br label %for.inc.377

for.inc.377:                                      ; preds = %for.body.338
  %337 = load i32, i32* %ipad, align 4
  %inc378 = add nsw i32 %337, 1
  store i32 %inc378, i32* %ipad, align 4
  br label %for.cond.335

for.end.379:                                      ; preds = %for.cond.335
  br label %for.inc.380

for.inc.380:                                      ; preds = %for.end.379
  %338 = load i32, i32* %jpad, align 4
  %inc381 = add nsw i32 %338, 1
  store i32 %inc381, i32* %jpad, align 4
  br label %for.cond.321

for.end.382:                                      ; preds = %for.cond.321
  br label %if.end

if.end:                                           ; preds = %for.end.382, %for.end.198
  ret void
}

; Function Attrs: nounwind uwtable
define void @getHorSubImageBiLinear(%struct.storable_picture* %s, i32 %dst_y, i32 %dst_x, i32 %src_y_l, i32 %src_x_l, i32 %src_y_r, i32 %src_x_r, i32 %offset) #0 {
entry:
  %s.addr = alloca %struct.storable_picture*, align 8
  %dst_y.addr = alloca i32, align 4
  %dst_x.addr = alloca i32, align 4
  %src_y_l.addr = alloca i32, align 4
  %src_x_l.addr = alloca i32, align 4
  %src_y_r.addr = alloca i32, align 4
  %src_x_r.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %jpad = alloca i32, align 4
  %ipad = alloca i32, align 4
  %ypadded_size = alloca i32, align 4
  %xpadded_size = alloca i32, align 4
  %maxx = alloca i32, align 4
  %wBufSrcL = alloca i16*, align 8
  %wBufSrcR = alloca i16*, align 8
  %wBufDst = alloca i16*, align 8
  %xpadded_size_left = alloca i32, align 4
  store %struct.storable_picture* %s, %struct.storable_picture** %s.addr, align 8
  store i32 %dst_y, i32* %dst_y.addr, align 4
  store i32 %dst_x, i32* %dst_x.addr, align 4
  store i32 %src_y_l, i32* %src_y_l.addr, align 4
  store i32 %src_x_l, i32* %src_x_l.addr, align 4
  store i32 %src_y_r, i32* %src_y_r.addr, align 4
  store i32 %src_x_r, i32* %src_x_r.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
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
  %4 = load i32, i32* %xpadded_size, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %maxx, align 4
  %5 = load i32, i32* %maxx, align 4
  %6 = load i32, i32* %offset.addr, align 4
  %sub2 = sub nsw i32 %5, %6
  store i32 %sub2, i32* %xpadded_size_left, align 4
  store i32 0, i32* %jpad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.52, %entry
  %7 = load i32, i32* %jpad, align 4
  %8 = load i32, i32* %ypadded_size, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %jpad, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %src_x_l.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load i32, i32* %src_y_l.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 30
  %13 = load i16****, i16***** %imgY_sub, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %13, i64 %idxprom4
  %14 = load i16***, i16**** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i16**, i16*** %14, i64 %idxprom3
  %15 = load i16**, i16*** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i16*, i16** %15, i64 %idxprom
  %16 = load i16*, i16** %arrayidx6, align 8
  store i16* %16, i16** %wBufSrcL, align 8
  %17 = load i32, i32* %jpad, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load i32, i32* %src_x_r.addr, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load i32, i32* %src_y_r.addr, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %20, i32 0, i32 30
  %21 = load i16****, i16***** %imgY_sub10, align 8
  %arrayidx11 = getelementptr inbounds i16***, i16**** %21, i64 %idxprom9
  %22 = load i16***, i16**** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i16**, i16*** %22, i64 %idxprom8
  %23 = load i16**, i16*** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16*, i16** %23, i64 %idxprom7
  %24 = load i16*, i16** %arrayidx13, align 8
  store i16* %24, i16** %wBufSrcR, align 8
  %25 = load i32, i32* %jpad, align 4
  %idxprom14 = sext i32 %25 to i64
  %26 = load i32, i32* %dst_x.addr, align 4
  %idxprom15 = sext i32 %26 to i64
  %27 = load i32, i32* %dst_y.addr, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub17 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %28, i32 0, i32 30
  %29 = load i16****, i16***** %imgY_sub17, align 8
  %arrayidx18 = getelementptr inbounds i16***, i16**** %29, i64 %idxprom16
  %30 = load i16***, i16**** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i16**, i16*** %30, i64 %idxprom15
  %31 = load i16**, i16*** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i16*, i16** %31, i64 %idxprom14
  %32 = load i16*, i16** %arrayidx20, align 8
  store i16* %32, i16** %wBufDst, align 8
  store i32 0, i32* %ipad, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body
  %33 = load i32, i32* %ipad, align 4
  %34 = load i32, i32* %xpadded_size_left, align 4
  %cmp22 = icmp slt i32 %33, %34
  br i1 %cmp22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.21
  %35 = load i32, i32* %ipad, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load i16*, i16** %wBufSrcL, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %36, i64 %idxprom24
  %37 = load i16, i16* %arrayidx25, align 2
  %conv = zext i16 %37 to i32
  %38 = load i32, i32* %ipad, align 4
  %39 = load i32, i32* %offset.addr, align 4
  %add26 = add nsw i32 %38, %39
  %idxprom27 = sext i32 %add26 to i64
  %40 = load i16*, i16** %wBufSrcR, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %40, i64 %idxprom27
  %41 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %41 to i32
  %add30 = add nsw i32 %conv, %conv29
  %call = call i32 @rshift_rnd_sf(i32 %add30, i32 1)
  %conv31 = trunc i32 %call to i16
  %42 = load i32, i32* %ipad, align 4
  %idxprom32 = sext i32 %42 to i64
  %43 = load i16*, i16** %wBufDst, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %43, i64 %idxprom32
  store i16 %conv31, i16* %arrayidx33, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %44 = load i32, i32* %ipad, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %ipad, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  %45 = load i32, i32* %xpadded_size_left, align 4
  store i32 %45, i32* %ipad, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.49, %for.end
  %46 = load i32, i32* %ipad, align 4
  %47 = load i32, i32* %xpadded_size, align 4
  %cmp35 = icmp slt i32 %46, %47
  br i1 %cmp35, label %for.body.37, label %for.end.51

for.body.37:                                      ; preds = %for.cond.34
  %48 = load i32, i32* %ipad, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load i16*, i16** %wBufSrcL, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %49, i64 %idxprom38
  %50 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %50 to i32
  %51 = load i32, i32* %maxx, align 4
  %idxprom41 = sext i32 %51 to i64
  %52 = load i16*, i16** %wBufSrcR, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %52, i64 %idxprom41
  %53 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %53 to i32
  %add44 = add nsw i32 %conv40, %conv43
  %call45 = call i32 @rshift_rnd_sf(i32 %add44, i32 1)
  %conv46 = trunc i32 %call45 to i16
  %54 = load i32, i32* %ipad, align 4
  %idxprom47 = sext i32 %54 to i64
  %55 = load i16*, i16** %wBufDst, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %55, i64 %idxprom47
  store i16 %conv46, i16* %arrayidx48, align 2
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.37
  %56 = load i32, i32* %ipad, align 4
  %inc50 = add nsw i32 %56, 1
  store i32 %inc50, i32* %ipad, align 4
  br label %for.cond.34

for.end.51:                                       ; preds = %for.cond.34
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.51
  %57 = load i32, i32* %jpad, align 4
  %inc53 = add nsw i32 %57, 1
  store i32 %inc53, i32* %jpad, align 4
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @getVerSubImageBiLinear(%struct.storable_picture* %s, i32 %dst_y, i32 %dst_x, i32 %src_y_l, i32 %src_x_l, i32 %src_y_r, i32 %src_x_r, i32 %offset) #0 {
entry:
  %s.addr = alloca %struct.storable_picture*, align 8
  %dst_y.addr = alloca i32, align 4
  %dst_x.addr = alloca i32, align 4
  %src_y_l.addr = alloca i32, align 4
  %src_x_l.addr = alloca i32, align 4
  %src_y_r.addr = alloca i32, align 4
  %src_x_r.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %jpad = alloca i32, align 4
  %ipad = alloca i32, align 4
  %ypadded_size = alloca i32, align 4
  %xpadded_size = alloca i32, align 4
  %maxy = alloca i32, align 4
  %wBufSrcL = alloca i16*, align 8
  %wBufSrcR = alloca i16*, align 8
  %wBufDst = alloca i16*, align 8
  %ypadded_size_top = alloca i32, align 4
  store %struct.storable_picture* %s, %struct.storable_picture** %s.addr, align 8
  store i32 %dst_y, i32* %dst_y.addr, align 4
  store i32 %dst_x, i32* %dst_x.addr, align 4
  store i32 %src_y_l, i32* %src_y_l.addr, align 4
  store i32 %src_x_l, i32* %src_x_l.addr, align 4
  store i32 %src_y_r, i32* %src_y_r.addr, align 4
  store i32 %src_x_r, i32* %src_x_r.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
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
  %4 = load i32, i32* %ypadded_size, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %maxy, align 4
  %5 = load i32, i32* %maxy, align 4
  %6 = load i32, i32* %offset.addr, align 4
  %sub2 = sub nsw i32 %5, %6
  store i32 %sub2, i32* %ypadded_size_top, align 4
  store i32 0, i32* %jpad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %7 = load i32, i32* %jpad, align 4
  %8 = load i32, i32* %ypadded_size_top, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %jpad, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %src_x_l.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load i32, i32* %src_y_l.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 30
  %13 = load i16****, i16***** %imgY_sub, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %13, i64 %idxprom4
  %14 = load i16***, i16**** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i16**, i16*** %14, i64 %idxprom3
  %15 = load i16**, i16*** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i16*, i16** %15, i64 %idxprom
  %16 = load i16*, i16** %arrayidx6, align 8
  store i16* %16, i16** %wBufSrcL, align 8
  %17 = load i32, i32* %jpad, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load i32, i32* %dst_x.addr, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load i32, i32* %dst_y.addr, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %20, i32 0, i32 30
  %21 = load i16****, i16***** %imgY_sub10, align 8
  %arrayidx11 = getelementptr inbounds i16***, i16**** %21, i64 %idxprom9
  %22 = load i16***, i16**** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i16**, i16*** %22, i64 %idxprom8
  %23 = load i16**, i16*** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16*, i16** %23, i64 %idxprom7
  %24 = load i16*, i16** %arrayidx13, align 8
  store i16* %24, i16** %wBufDst, align 8
  %25 = load i32, i32* %jpad, align 4
  %26 = load i32, i32* %offset.addr, align 4
  %add14 = add nsw i32 %25, %26
  %idxprom15 = sext i32 %add14 to i64
  %27 = load i32, i32* %src_x_r.addr, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load i32, i32* %src_y_r.addr, align 4
  %idxprom17 = sext i32 %28 to i64
  %29 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub18 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 30
  %30 = load i16****, i16***** %imgY_sub18, align 8
  %arrayidx19 = getelementptr inbounds i16***, i16**** %30, i64 %idxprom17
  %31 = load i16***, i16**** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i16**, i16*** %31, i64 %idxprom16
  %32 = load i16**, i16*** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16*, i16** %32, i64 %idxprom15
  %33 = load i16*, i16** %arrayidx21, align 8
  store i16* %33, i16** %wBufSrcR, align 8
  store i32 0, i32* %ipad, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %for.body
  %34 = load i32, i32* %ipad, align 4
  %35 = load i32, i32* %xpadded_size, align 4
  %cmp23 = icmp slt i32 %34, %35
  br i1 %cmp23, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.22
  %36 = load i32, i32* %ipad, align 4
  %idxprom25 = sext i32 %36 to i64
  %37 = load i16*, i16** %wBufSrcL, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %37, i64 %idxprom25
  %38 = load i16, i16* %arrayidx26, align 2
  %conv = zext i16 %38 to i32
  %39 = load i32, i32* %ipad, align 4
  %idxprom27 = sext i32 %39 to i64
  %40 = load i16*, i16** %wBufSrcR, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %40, i64 %idxprom27
  %41 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %41 to i32
  %add30 = add nsw i32 %conv, %conv29
  %call = call i32 @rshift_rnd_sf(i32 %add30, i32 1)
  %conv31 = trunc i32 %call to i16
  %42 = load i32, i32* %ipad, align 4
  %idxprom32 = sext i32 %42 to i64
  %43 = load i16*, i16** %wBufDst, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %43, i64 %idxprom32
  store i16 %conv31, i16* %arrayidx33, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.24
  %44 = load i32, i32* %ipad, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %ipad, align 4
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %45 = load i32, i32* %jpad, align 4
  %inc35 = add nsw i32 %45, 1
  store i32 %inc35, i32* %jpad, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %46 = load i32, i32* %ypadded_size_top, align 4
  store i32 %46, i32* %jpad, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.80, %for.end.36
  %47 = load i32, i32* %jpad, align 4
  %48 = load i32, i32* %ypadded_size, align 4
  %cmp38 = icmp slt i32 %47, %48
  br i1 %cmp38, label %for.body.40, label %for.end.82

for.body.40:                                      ; preds = %for.cond.37
  %49 = load i32, i32* %jpad, align 4
  %idxprom41 = sext i32 %49 to i64
  %50 = load i32, i32* %src_x_l.addr, align 4
  %idxprom42 = sext i32 %50 to i64
  %51 = load i32, i32* %src_y_l.addr, align 4
  %idxprom43 = sext i32 %51 to i64
  %52 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub44 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %52, i32 0, i32 30
  %53 = load i16****, i16***** %imgY_sub44, align 8
  %arrayidx45 = getelementptr inbounds i16***, i16**** %53, i64 %idxprom43
  %54 = load i16***, i16**** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16**, i16*** %54, i64 %idxprom42
  %55 = load i16**, i16*** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i16*, i16** %55, i64 %idxprom41
  %56 = load i16*, i16** %arrayidx47, align 8
  store i16* %56, i16** %wBufSrcL, align 8
  %57 = load i32, i32* %jpad, align 4
  %idxprom48 = sext i32 %57 to i64
  %58 = load i32, i32* %dst_x.addr, align 4
  %idxprom49 = sext i32 %58 to i64
  %59 = load i32, i32* %dst_y.addr, align 4
  %idxprom50 = sext i32 %59 to i64
  %60 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub51 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %60, i32 0, i32 30
  %61 = load i16****, i16***** %imgY_sub51, align 8
  %arrayidx52 = getelementptr inbounds i16***, i16**** %61, i64 %idxprom50
  %62 = load i16***, i16**** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16**, i16*** %62, i64 %idxprom49
  %63 = load i16**, i16*** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i16*, i16** %63, i64 %idxprom48
  %64 = load i16*, i16** %arrayidx54, align 8
  store i16* %64, i16** %wBufDst, align 8
  %65 = load i32, i32* %maxy, align 4
  %idxprom55 = sext i32 %65 to i64
  %66 = load i32, i32* %src_x_r.addr, align 4
  %idxprom56 = sext i32 %66 to i64
  %67 = load i32, i32* %src_y_r.addr, align 4
  %idxprom57 = sext i32 %67 to i64
  %68 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub58 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %68, i32 0, i32 30
  %69 = load i16****, i16***** %imgY_sub58, align 8
  %arrayidx59 = getelementptr inbounds i16***, i16**** %69, i64 %idxprom57
  %70 = load i16***, i16**** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16**, i16*** %70, i64 %idxprom56
  %71 = load i16**, i16*** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16*, i16** %71, i64 %idxprom55
  %72 = load i16*, i16** %arrayidx61, align 8
  store i16* %72, i16** %wBufSrcR, align 8
  store i32 0, i32* %ipad, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.77, %for.body.40
  %73 = load i32, i32* %ipad, align 4
  %74 = load i32, i32* %xpadded_size, align 4
  %cmp63 = icmp slt i32 %73, %74
  br i1 %cmp63, label %for.body.65, label %for.end.79

for.body.65:                                      ; preds = %for.cond.62
  %75 = load i32, i32* %ipad, align 4
  %idxprom66 = sext i32 %75 to i64
  %76 = load i16*, i16** %wBufSrcL, align 8
  %arrayidx67 = getelementptr inbounds i16, i16* %76, i64 %idxprom66
  %77 = load i16, i16* %arrayidx67, align 2
  %conv68 = zext i16 %77 to i32
  %78 = load i32, i32* %ipad, align 4
  %idxprom69 = sext i32 %78 to i64
  %79 = load i16*, i16** %wBufSrcR, align 8
  %arrayidx70 = getelementptr inbounds i16, i16* %79, i64 %idxprom69
  %80 = load i16, i16* %arrayidx70, align 2
  %conv71 = zext i16 %80 to i32
  %add72 = add nsw i32 %conv68, %conv71
  %call73 = call i32 @rshift_rnd_sf(i32 %add72, i32 1)
  %conv74 = trunc i32 %call73 to i16
  %81 = load i32, i32* %ipad, align 4
  %idxprom75 = sext i32 %81 to i64
  %82 = load i16*, i16** %wBufDst, align 8
  %arrayidx76 = getelementptr inbounds i16, i16* %82, i64 %idxprom75
  store i16 %conv74, i16* %arrayidx76, align 2
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.65
  %83 = load i32, i32* %ipad, align 4
  %inc78 = add nsw i32 %83, 1
  store i32 %inc78, i32* %ipad, align 4
  br label %for.cond.62

for.end.79:                                       ; preds = %for.cond.62
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end.79
  %84 = load i32, i32* %jpad, align 4
  %inc81 = add nsw i32 %84, 1
  store i32 %inc81, i32* %jpad, align 4
  br label %for.cond.37

for.end.82:                                       ; preds = %for.cond.37
  ret void
}

; Function Attrs: nounwind uwtable
define void @getDiagSubImageBiLinear(%struct.storable_picture* %s, i32 %dst_y, i32 %dst_x, i32 %src_y_l, i32 %src_x_l, i32 %src_y_r, i32 %src_x_r, i32 %offset_y_l, i32 %offset_x_l, i32 %offset_y_r, i32 %offset_x_r) #0 {
entry:
  %s.addr = alloca %struct.storable_picture*, align 8
  %dst_y.addr = alloca i32, align 4
  %dst_x.addr = alloca i32, align 4
  %src_y_l.addr = alloca i32, align 4
  %src_x_l.addr = alloca i32, align 4
  %src_y_r.addr = alloca i32, align 4
  %src_x_r.addr = alloca i32, align 4
  %offset_y_l.addr = alloca i32, align 4
  %offset_x_l.addr = alloca i32, align 4
  %offset_y_r.addr = alloca i32, align 4
  %offset_x_r.addr = alloca i32, align 4
  %jpad = alloca i32, align 4
  %ipad = alloca i32, align 4
  %ypadded_size = alloca i32, align 4
  %xpadded_size = alloca i32, align 4
  %maxx = alloca i32, align 4
  %maxy = alloca i32, align 4
  %wBufSrcL = alloca i16*, align 8
  %wBufSrcR = alloca i16*, align 8
  %wBufDst = alloca i16*, align 8
  %ypadded_size_top = alloca i32, align 4
  store %struct.storable_picture* %s, %struct.storable_picture** %s.addr, align 8
  store i32 %dst_y, i32* %dst_y.addr, align 4
  store i32 %dst_x, i32* %dst_x.addr, align 4
  store i32 %src_y_l, i32* %src_y_l.addr, align 4
  store i32 %src_x_l, i32* %src_x_l.addr, align 4
  store i32 %src_y_r, i32* %src_y_r.addr, align 4
  store i32 %src_x_r, i32* %src_x_r.addr, align 4
  store i32 %offset_y_l, i32* %offset_y_l.addr, align 4
  store i32 %offset_x_l, i32* %offset_x_l.addr, align 4
  store i32 %offset_y_r, i32* %offset_y_r.addr, align 4
  store i32 %offset_x_r, i32* %offset_x_r.addr, align 4
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
  %4 = load i32, i32* %xpadded_size, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %maxx, align 4
  %5 = load i32, i32* %ypadded_size, align 4
  %sub2 = sub nsw i32 %5, 1
  store i32 %sub2, i32* %maxy, align 4
  %6 = load i32, i32* %ypadded_size, align 4
  %sub3 = sub nsw i32 %6, 20
  %sub4 = sub nsw i32 %sub3, 1
  store i32 %sub4, i32* %ypadded_size_top, align 4
  store i32 0, i32* %jpad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %entry
  %7 = load i32, i32* %jpad, align 4
  %8 = load i32, i32* %ypadded_size_top, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %jpad, align 4
  %10 = load i32, i32* %offset_y_l.addr, align 4
  %add5 = add nsw i32 %9, %10
  %idxprom = sext i32 %add5 to i64
  %11 = load i32, i32* %src_x_l.addr, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i32, i32* %src_y_l.addr, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 30
  %14 = load i16****, i16***** %imgY_sub, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %14, i64 %idxprom7
  %15 = load i16***, i16**** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i16**, i16*** %15, i64 %idxprom6
  %16 = load i16**, i16*** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %16, i64 %idxprom
  %17 = load i16*, i16** %arrayidx9, align 8
  store i16* %17, i16** %wBufSrcL, align 8
  %18 = load i32, i32* %jpad, align 4
  %19 = load i32, i32* %offset_y_r.addr, align 4
  %add10 = add nsw i32 %18, %19
  %idxprom11 = sext i32 %add10 to i64
  %20 = load i32, i32* %src_x_r.addr, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load i32, i32* %src_y_r.addr, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub14 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 30
  %23 = load i16****, i16***** %imgY_sub14, align 8
  %arrayidx15 = getelementptr inbounds i16***, i16**** %23, i64 %idxprom13
  %24 = load i16***, i16**** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i16**, i16*** %24, i64 %idxprom12
  %25 = load i16**, i16*** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16*, i16** %25, i64 %idxprom11
  %26 = load i16*, i16** %arrayidx17, align 8
  store i16* %26, i16** %wBufSrcR, align 8
  %27 = load i32, i32* %jpad, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load i32, i32* %dst_x.addr, align 4
  %idxprom19 = sext i32 %28 to i64
  %29 = load i32, i32* %dst_y.addr, align 4
  %idxprom20 = sext i32 %29 to i64
  %30 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub21 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %30, i32 0, i32 30
  %31 = load i16****, i16***** %imgY_sub21, align 8
  %arrayidx22 = getelementptr inbounds i16***, i16**** %31, i64 %idxprom20
  %32 = load i16***, i16**** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16**, i16*** %32, i64 %idxprom19
  %33 = load i16**, i16*** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i16*, i16** %33, i64 %idxprom18
  %34 = load i16*, i16** %arrayidx24, align 8
  store i16* %34, i16** %wBufDst, align 8
  store i32 0, i32* %ipad, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %35 = load i32, i32* %ipad, align 4
  %36 = load i32, i32* %xpadded_size, align 4
  %cmp26 = icmp slt i32 %35, %36
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %37 = load i32, i32* %maxx, align 4
  %38 = load i32, i32* %ipad, align 4
  %39 = load i32, i32* %offset_x_l.addr, align 4
  %add28 = add nsw i32 %38, %39
  %call = call i32 @imin(i32 %37, i32 %add28)
  %idxprom29 = sext i32 %call to i64
  %40 = load i16*, i16** %wBufSrcL, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %40, i64 %idxprom29
  %41 = load i16, i16* %arrayidx30, align 2
  %conv = zext i16 %41 to i32
  %42 = load i32, i32* %maxx, align 4
  %43 = load i32, i32* %ipad, align 4
  %44 = load i32, i32* %offset_x_r.addr, align 4
  %add31 = add nsw i32 %43, %44
  %call32 = call i32 @imin(i32 %42, i32 %add31)
  %idxprom33 = sext i32 %call32 to i64
  %45 = load i16*, i16** %wBufSrcR, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %45, i64 %idxprom33
  %46 = load i16, i16* %arrayidx34, align 2
  %conv35 = zext i16 %46 to i32
  %add36 = add nsw i32 %conv, %conv35
  %call37 = call i32 @rshift_rnd_sf(i32 %add36, i32 1)
  %conv38 = trunc i32 %call37 to i16
  %47 = load i32, i32* %ipad, align 4
  %idxprom39 = sext i32 %47 to i64
  %48 = load i16*, i16** %wBufDst, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %48, i64 %idxprom39
  store i16 %conv38, i16* %arrayidx40, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %49 = load i32, i32* %ipad, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %ipad, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %50 = load i32, i32* %jpad, align 4
  %inc42 = add nsw i32 %50, 1
  store i32 %inc42, i32* %jpad, align 4
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %51 = load i32, i32* %ypadded_size_top, align 4
  store i32 %51, i32* %jpad, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.95, %for.end.43
  %52 = load i32, i32* %jpad, align 4
  %53 = load i32, i32* %ypadded_size, align 4
  %cmp45 = icmp slt i32 %52, %53
  br i1 %cmp45, label %for.body.47, label %for.end.97

for.body.47:                                      ; preds = %for.cond.44
  %54 = load i32, i32* %maxy, align 4
  %55 = load i32, i32* %jpad, align 4
  %56 = load i32, i32* %offset_y_l.addr, align 4
  %add48 = add nsw i32 %55, %56
  %call49 = call i32 @imin(i32 %54, i32 %add48)
  %idxprom50 = sext i32 %call49 to i64
  %57 = load i32, i32* %src_x_l.addr, align 4
  %idxprom51 = sext i32 %57 to i64
  %58 = load i32, i32* %src_y_l.addr, align 4
  %idxprom52 = sext i32 %58 to i64
  %59 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub53 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 30
  %60 = load i16****, i16***** %imgY_sub53, align 8
  %arrayidx54 = getelementptr inbounds i16***, i16**** %60, i64 %idxprom52
  %61 = load i16***, i16**** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i16**, i16*** %61, i64 %idxprom51
  %62 = load i16**, i16*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16*, i16** %62, i64 %idxprom50
  %63 = load i16*, i16** %arrayidx56, align 8
  store i16* %63, i16** %wBufSrcL, align 8
  %64 = load i32, i32* %maxy, align 4
  %65 = load i32, i32* %jpad, align 4
  %66 = load i32, i32* %offset_y_r.addr, align 4
  %add57 = add nsw i32 %65, %66
  %call58 = call i32 @imin(i32 %64, i32 %add57)
  %idxprom59 = sext i32 %call58 to i64
  %67 = load i32, i32* %src_x_r.addr, align 4
  %idxprom60 = sext i32 %67 to i64
  %68 = load i32, i32* %src_y_r.addr, align 4
  %idxprom61 = sext i32 %68 to i64
  %69 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub62 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %69, i32 0, i32 30
  %70 = load i16****, i16***** %imgY_sub62, align 8
  %arrayidx63 = getelementptr inbounds i16***, i16**** %70, i64 %idxprom61
  %71 = load i16***, i16**** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i16**, i16*** %71, i64 %idxprom60
  %72 = load i16**, i16*** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i16*, i16** %72, i64 %idxprom59
  %73 = load i16*, i16** %arrayidx65, align 8
  store i16* %73, i16** %wBufSrcR, align 8
  %74 = load i32, i32* %jpad, align 4
  %idxprom66 = sext i32 %74 to i64
  %75 = load i32, i32* %dst_x.addr, align 4
  %idxprom67 = sext i32 %75 to i64
  %76 = load i32, i32* %dst_y.addr, align 4
  %idxprom68 = sext i32 %76 to i64
  %77 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_sub69 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 30
  %78 = load i16****, i16***** %imgY_sub69, align 8
  %arrayidx70 = getelementptr inbounds i16***, i16**** %78, i64 %idxprom68
  %79 = load i16***, i16**** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i16**, i16*** %79, i64 %idxprom67
  %80 = load i16**, i16*** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i16*, i16** %80, i64 %idxprom66
  %81 = load i16*, i16** %arrayidx72, align 8
  store i16* %81, i16** %wBufDst, align 8
  store i32 0, i32* %ipad, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.92, %for.body.47
  %82 = load i32, i32* %ipad, align 4
  %83 = load i32, i32* %xpadded_size, align 4
  %cmp74 = icmp slt i32 %82, %83
  br i1 %cmp74, label %for.body.76, label %for.end.94

for.body.76:                                      ; preds = %for.cond.73
  %84 = load i32, i32* %maxx, align 4
  %85 = load i32, i32* %ipad, align 4
  %86 = load i32, i32* %offset_x_l.addr, align 4
  %add77 = add nsw i32 %85, %86
  %call78 = call i32 @imin(i32 %84, i32 %add77)
  %idxprom79 = sext i32 %call78 to i64
  %87 = load i16*, i16** %wBufSrcL, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %87, i64 %idxprom79
  %88 = load i16, i16* %arrayidx80, align 2
  %conv81 = zext i16 %88 to i32
  %89 = load i32, i32* %maxx, align 4
  %90 = load i32, i32* %ipad, align 4
  %91 = load i32, i32* %offset_x_r.addr, align 4
  %add82 = add nsw i32 %90, %91
  %call83 = call i32 @imin(i32 %89, i32 %add82)
  %idxprom84 = sext i32 %call83 to i64
  %92 = load i16*, i16** %wBufSrcR, align 8
  %arrayidx85 = getelementptr inbounds i16, i16* %92, i64 %idxprom84
  %93 = load i16, i16* %arrayidx85, align 2
  %conv86 = zext i16 %93 to i32
  %add87 = add nsw i32 %conv81, %conv86
  %call88 = call i32 @rshift_rnd_sf(i32 %add87, i32 1)
  %conv89 = trunc i32 %call88 to i16
  %94 = load i32, i32* %ipad, align 4
  %idxprom90 = sext i32 %94 to i64
  %95 = load i16*, i16** %wBufDst, align 8
  %arrayidx91 = getelementptr inbounds i16, i16* %95, i64 %idxprom90
  store i16 %conv89, i16* %arrayidx91, align 2
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.76
  %96 = load i32, i32* %ipad, align 4
  %inc93 = add nsw i32 %96, 1
  store i32 %inc93, i32* %ipad, align 4
  br label %for.cond.73

for.end.94:                                       ; preds = %for.cond.73
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.94
  %97 = load i32, i32* %jpad, align 4
  %inc96 = add nsw i32 %97, 1
  store i32 %inc96, i32* %jpad, align 4
  br label %for.cond.44

for.end.97:                                       ; preds = %for.cond.44
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
define internal i32 @rshift_rnd_sf(i32 %x, i32 %a) #1 {
entry:
  %x.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %1, 1
  %shl = shl i32 1, %sub
  %add = add nsw i32 %0, %shl
  %2 = load i32, i32* %a.addr, align 4
  %shr = ashr i32 %add, %2
  ret i32 %shr
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

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
