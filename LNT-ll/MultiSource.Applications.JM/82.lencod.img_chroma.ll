; ModuleID = './MultiSource.Applications.JM/82.lencod.img_chroma.bc'
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

@img = external global %struct.ImageParameters*, align 8
@img_pad_size_uv_x = common global i32 0, align 4
@img_pad_size_uv_y = common global i32 0, align 4
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
define void @getSubImagesChroma(%struct.storable_picture* %s) #0 {
entry:
  %s.addr = alloca %struct.storable_picture*, align 8
  %jpad = alloca i32, align 4
  %ipad = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %ii_plus_one = alloca i32, align 4
  %jj_plus_one = alloca i32, align 4
  %uv = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %weight00 = alloca i32, align 4
  %weight01 = alloca i32, align 4
  %weight10 = alloca i32, align 4
  %weight11 = alloca i32, align 4
  %ypadded_size = alloca i32, align 4
  %xpadded_size = alloca i32, align 4
  %subimages_y = alloca i32, align 4
  %subimages_x = alloca i32, align 4
  %subx = alloca i32, align 4
  %suby = alloca i32, align 4
  %maxx = alloca i32, align 4
  %maxy = alloca i32, align 4
  %size_x_minus1 = alloca i32, align 4
  %size_y_minus1 = alloca i32, align 4
  %mul_x = alloca i32, align 4
  %mul_y = alloca i32, align 4
  %mm = alloca i32, align 4
  %kk = alloca i32, align 4
  %wBufSrc0 = alloca i16*, align 8
  %wBufSrc1 = alloca i16*, align 8
  %wBufDst = alloca i16*, align 8
  %m = alloca i32, align 4
  store %struct.storable_picture* %s, %struct.storable_picture** %s.addr, align 8
  %0 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 20
  %1 = load i32, i32* %size_x_cr, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %size_x_minus1, align 4
  %2 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 21
  %3 = load i32, i32* %size_y_cr, align 4
  %sub1 = sub nsw i32 %3, 1
  store i32 %sub1, i32* %size_y_minus1, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 160
  %5 = load i32, i32* %yuv_format, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 8, i32* %subimages_x, align 4
  store i32 8, i32* %subimages_y, align 4
  store i32 1, i32* %mul_y, align 4
  store i32 1, i32* %mul_x, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 160
  %7 = load i32, i32* %yuv_format2, align 4
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i32 8, i32* %subimages_x, align 4
  store i32 4, i32* %subimages_y, align 4
  store i32 2, i32* %mul_y, align 4
  store i32 1, i32* %mul_x, align 4
  br label %if.end

if.else.5:                                        ; preds = %if.else
  store i32 4, i32* %subimages_x, align 4
  store i32 4, i32* %subimages_y, align 4
  store i32 2, i32* %mul_y, align 4
  store i32 2, i32* %mul_x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %8 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x_cr7 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 20
  %9 = load i32, i32* %size_x_cr7, align 4
  %10 = load i32, i32* @img_pad_size_uv_x, align 4
  %mul = mul nsw i32 2, %10
  %add = add nsw i32 %9, %mul
  store i32 %add, i32* %xpadded_size, align 4
  %11 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y_cr8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %11, i32 0, i32 21
  %12 = load i32, i32* %size_y_cr8, align 4
  %13 = load i32, i32* @img_pad_size_uv_y, align 4
  %mul9 = mul nsw i32 2, %13
  %add10 = add nsw i32 %12, %mul9
  store i32 %add10, i32* %ypadded_size, align 4
  %14 = load i32, i32* %xpadded_size, align 4
  %sub11 = sub nsw i32 %14, 1
  store i32 %sub11, i32* %maxx, align 4
  %15 = load i32, i32* %ypadded_size, align 4
  %sub12 = sub nsw i32 %15, 1
  store i32 %sub12, i32* %maxy, align 4
  store i32 0, i32* %uv, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.133, %if.end.6
  %16 = load i32, i32* %uv, align 4
  %cmp13 = icmp slt i32 %16, 2
  br i1 %cmp13, label %for.body, label %for.end.135

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %suby, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.129, %for.body
  %17 = load i32, i32* %suby, align 4
  %18 = load i32, i32* %subimages_y, align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %for.body.16, label %for.end.132

for.body.16:                                      ; preds = %for.cond.14
  %19 = load i32, i32* %k, align 4
  %sub17 = sub nsw i32 8, %19
  store i32 %sub17, i32* %m, align 4
  %20 = load i32, i32* %m, align 4
  %mul18 = mul nsw i32 %20, 8
  store i32 %mul18, i32* %mm, align 4
  %21 = load i32, i32* %k, align 4
  %mul19 = mul nsw i32 %21, 8
  store i32 %mul19, i32* %kk, align 4
  store i32 0, i32* %subx, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.125, %for.body.16
  %22 = load i32, i32* %subx, align 4
  %23 = load i32, i32* %subimages_x, align 4
  %cmp21 = icmp slt i32 %22, %23
  br i1 %cmp21, label %for.body.22, label %for.end.128

for.body.22:                                      ; preds = %for.cond.20
  %24 = load i32, i32* %m, align 4
  %25 = load i32, i32* %l, align 4
  %sub23 = sub nsw i32 8, %25
  %mul24 = mul nsw i32 %24, %sub23
  store i32 %mul24, i32* %weight00, align 4
  %26 = load i32, i32* %m, align 4
  %27 = load i32, i32* %l, align 4
  %mul25 = mul nsw i32 %26, %27
  store i32 %mul25, i32* %weight01, align 4
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %l, align 4
  %sub26 = sub nsw i32 8, %29
  %mul27 = mul nsw i32 %28, %sub26
  store i32 %mul27, i32* %weight10, align 4
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %l, align 4
  %mul28 = mul nsw i32 %30, %31
  store i32 %mul28, i32* %weight11, align 4
  %32 = load i32, i32* @img_pad_size_uv_y, align 4
  %sub29 = sub nsw i32 0, %32
  store i32 %sub29, i32* %j, align 4
  store i32 0, i32* %jpad, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.121, %for.body.22
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %ypadded_size, align 4
  %35 = load i32, i32* @img_pad_size_uv_y, align 4
  %sub31 = sub nsw i32 %34, %35
  %cmp32 = icmp slt i32 %33, %sub31
  br i1 %cmp32, label %for.body.33, label %for.end.124

for.body.33:                                      ; preds = %for.cond.30
  %36 = load i32, i32* %size_y_minus1, align 4
  %37 = load i32, i32* %j, align 4
  %call = call i32 @iClip3(i32 0, i32 %36, i32 %37)
  store i32 %call, i32* %jj, align 4
  %38 = load i32, i32* %size_y_minus1, align 4
  %39 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %39, 1
  %call35 = call i32 @iClip3(i32 0, i32 %38, i32 %add34)
  store i32 %call35, i32* %jj_plus_one, align 4
  %40 = load i32, i32* %jpad, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load i32, i32* %subx, align 4
  %idxprom36 = sext i32 %41 to i64
  %42 = load i32, i32* %suby, align 4
  %idxprom37 = sext i32 %42 to i64
  %43 = load i32, i32* %uv, align 4
  %idxprom38 = sext i32 %43 to i64
  %44 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %44, i32 0, i32 32
  %45 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx = getelementptr inbounds i16****, i16***** %45, i64 %idxprom38
  %46 = load i16****, i16***** %arrayidx, align 8
  %arrayidx39 = getelementptr inbounds i16***, i16**** %46, i64 %idxprom37
  %47 = load i16***, i16**** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i16**, i16*** %47, i64 %idxprom36
  %48 = load i16**, i16*** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16*, i16** %48, i64 %idxprom
  %49 = load i16*, i16** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %49, i64 0
  store i16* %arrayidx42, i16** %wBufDst, align 8
  %50 = load i32, i32* %jj, align 4
  %idxprom43 = sext i32 %50 to i64
  %51 = load i32, i32* %uv, align 4
  %idxprom44 = sext i32 %51 to i64
  %52 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %52, i32 0, i32 33
  %53 = load i16***, i16**** %imgUV, align 8
  %arrayidx45 = getelementptr inbounds i16**, i16*** %53, i64 %idxprom44
  %54 = load i16**, i16*** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16*, i16** %54, i64 %idxprom43
  %55 = load i16*, i16** %arrayidx46, align 8
  store i16* %55, i16** %wBufSrc0, align 8
  %56 = load i32, i32* %jj_plus_one, align 4
  %idxprom47 = sext i32 %56 to i64
  %57 = load i32, i32* %uv, align 4
  %idxprom48 = sext i32 %57 to i64
  %58 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgUV49 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 33
  %59 = load i16***, i16**** %imgUV49, align 8
  %arrayidx50 = getelementptr inbounds i16**, i16*** %59, i64 %idxprom48
  %60 = load i16**, i16*** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i16*, i16** %60, i64 %idxprom47
  %61 = load i16*, i16** %arrayidx51, align 8
  store i16* %61, i16** %wBufSrc1, align 8
  %62 = load i32, i32* @img_pad_size_uv_x, align 4
  %sub52 = sub nsw i32 0, %62
  store i32 %sub52, i32* %i, align 4
  store i32 0, i32* %ipad, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %for.body.33
  %63 = load i32, i32* %i, align 4
  %cmp54 = icmp slt i32 %63, 0
  br i1 %cmp54, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %for.cond.53
  %64 = load i32, i32* %mm, align 4
  %65 = load i16*, i16** %wBufSrc0, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %65, i64 0
  %66 = load i16, i16* %arrayidx56, align 2
  %conv = zext i16 %66 to i32
  %mul57 = mul nsw i32 %64, %conv
  %67 = load i32, i32* %kk, align 4
  %68 = load i16*, i16** %wBufSrc1, align 8
  %arrayidx58 = getelementptr inbounds i16, i16* %68, i64 0
  %69 = load i16, i16* %arrayidx58, align 2
  %conv59 = zext i16 %69 to i32
  %mul60 = mul nsw i32 %67, %conv59
  %add61 = add nsw i32 %mul57, %mul60
  %call62 = call i32 @rshift_rnd_sf(i32 %add61, i32 6)
  %conv63 = trunc i32 %call62 to i16
  %70 = load i32, i32* %ipad, align 4
  %idxprom64 = sext i32 %70 to i64
  %71 = load i16*, i16** %wBufDst, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %71, i64 %idxprom64
  store i16 %conv63, i16* %arrayidx65, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.55
  %72 = load i32, i32* %i, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %i, align 4
  %73 = load i32, i32* %ipad, align 4
  %inc66 = add nsw i32 %73, 1
  store i32 %inc66, i32* %ipad, align 4
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  store i32 0, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.95, %for.end
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %size_x_minus1, align 4
  %cmp68 = icmp slt i32 %74, %75
  br i1 %cmp68, label %for.body.70, label %for.end.98

for.body.70:                                      ; preds = %for.cond.67
  %76 = load i32, i32* %i, align 4
  %add71 = add nsw i32 %76, 1
  store i32 %add71, i32* %ii_plus_one, align 4
  %77 = load i32, i32* %weight00, align 4
  %78 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %78 to i64
  %79 = load i16*, i16** %wBufSrc0, align 8
  %arrayidx73 = getelementptr inbounds i16, i16* %79, i64 %idxprom72
  %80 = load i16, i16* %arrayidx73, align 2
  %conv74 = zext i16 %80 to i32
  %mul75 = mul nsw i32 %77, %conv74
  %81 = load i32, i32* %weight01, align 4
  %82 = load i32, i32* %ii_plus_one, align 4
  %idxprom76 = sext i32 %82 to i64
  %83 = load i16*, i16** %wBufSrc0, align 8
  %arrayidx77 = getelementptr inbounds i16, i16* %83, i64 %idxprom76
  %84 = load i16, i16* %arrayidx77, align 2
  %conv78 = zext i16 %84 to i32
  %mul79 = mul nsw i32 %81, %conv78
  %add80 = add nsw i32 %mul75, %mul79
  %85 = load i32, i32* %weight10, align 4
  %86 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %86 to i64
  %87 = load i16*, i16** %wBufSrc1, align 8
  %arrayidx82 = getelementptr inbounds i16, i16* %87, i64 %idxprom81
  %88 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %88 to i32
  %mul84 = mul nsw i32 %85, %conv83
  %add85 = add nsw i32 %add80, %mul84
  %89 = load i32, i32* %weight11, align 4
  %90 = load i32, i32* %ii_plus_one, align 4
  %idxprom86 = sext i32 %90 to i64
  %91 = load i16*, i16** %wBufSrc1, align 8
  %arrayidx87 = getelementptr inbounds i16, i16* %91, i64 %idxprom86
  %92 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %92 to i32
  %mul89 = mul nsw i32 %89, %conv88
  %add90 = add nsw i32 %add85, %mul89
  %call91 = call i32 @rshift_rnd_sf(i32 %add90, i32 6)
  %conv92 = trunc i32 %call91 to i16
  %93 = load i32, i32* %ipad, align 4
  %idxprom93 = sext i32 %93 to i64
  %94 = load i16*, i16** %wBufDst, align 8
  %arrayidx94 = getelementptr inbounds i16, i16* %94, i64 %idxprom93
  store i16 %conv92, i16* %arrayidx94, align 2
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.70
  %95 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %95, 1
  store i32 %inc96, i32* %i, align 4
  %96 = load i32, i32* %ipad, align 4
  %inc97 = add nsw i32 %96, 1
  store i32 %inc97, i32* %ipad, align 4
  br label %for.cond.67

for.end.98:                                       ; preds = %for.cond.67
  %97 = load i32, i32* %size_x_minus1, align 4
  store i32 %97, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.117, %for.end.98
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %xpadded_size, align 4
  %100 = load i32, i32* @img_pad_size_uv_x, align 4
  %sub100 = sub nsw i32 %99, %100
  %cmp101 = icmp slt i32 %98, %sub100
  br i1 %cmp101, label %for.body.103, label %for.end.120

for.body.103:                                     ; preds = %for.cond.99
  %101 = load i32, i32* %mm, align 4
  %102 = load i32, i32* %size_x_minus1, align 4
  %idxprom104 = sext i32 %102 to i64
  %103 = load i16*, i16** %wBufSrc0, align 8
  %arrayidx105 = getelementptr inbounds i16, i16* %103, i64 %idxprom104
  %104 = load i16, i16* %arrayidx105, align 2
  %conv106 = zext i16 %104 to i32
  %mul107 = mul nsw i32 %101, %conv106
  %105 = load i32, i32* %kk, align 4
  %106 = load i32, i32* %size_x_minus1, align 4
  %idxprom108 = sext i32 %106 to i64
  %107 = load i16*, i16** %wBufSrc1, align 8
  %arrayidx109 = getelementptr inbounds i16, i16* %107, i64 %idxprom108
  %108 = load i16, i16* %arrayidx109, align 2
  %conv110 = zext i16 %108 to i32
  %mul111 = mul nsw i32 %105, %conv110
  %add112 = add nsw i32 %mul107, %mul111
  %call113 = call i32 @rshift_rnd_sf(i32 %add112, i32 6)
  %conv114 = trunc i32 %call113 to i16
  %109 = load i32, i32* %ipad, align 4
  %idxprom115 = sext i32 %109 to i64
  %110 = load i16*, i16** %wBufDst, align 8
  %arrayidx116 = getelementptr inbounds i16, i16* %110, i64 %idxprom115
  store i16 %conv114, i16* %arrayidx116, align 2
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.103
  %111 = load i32, i32* %i, align 4
  %inc118 = add nsw i32 %111, 1
  store i32 %inc118, i32* %i, align 4
  %112 = load i32, i32* %ipad, align 4
  %inc119 = add nsw i32 %112, 1
  store i32 %inc119, i32* %ipad, align 4
  br label %for.cond.99

for.end.120:                                      ; preds = %for.cond.99
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.120
  %113 = load i32, i32* %j, align 4
  %inc122 = add nsw i32 %113, 1
  store i32 %inc122, i32* %j, align 4
  %114 = load i32, i32* %jpad, align 4
  %inc123 = add nsw i32 %114, 1
  store i32 %inc123, i32* %jpad, align 4
  br label %for.cond.30

for.end.124:                                      ; preds = %for.cond.30
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.end.124
  %115 = load i32, i32* %subx, align 4
  %inc126 = add nsw i32 %115, 1
  store i32 %inc126, i32* %subx, align 4
  %116 = load i32, i32* %mul_x, align 4
  %117 = load i32, i32* %l, align 4
  %add127 = add nsw i32 %117, %116
  store i32 %add127, i32* %l, align 4
  br label %for.cond.20

for.end.128:                                      ; preds = %for.cond.20
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.128
  %118 = load i32, i32* %suby, align 4
  %inc130 = add nsw i32 %118, 1
  store i32 %inc130, i32* %suby, align 4
  %119 = load i32, i32* %mul_y, align 4
  %120 = load i32, i32* %k, align 4
  %add131 = add nsw i32 %120, %119
  store i32 %add131, i32* %k, align 4
  br label %for.cond.14

for.end.132:                                      ; preds = %for.cond.14
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.end.132
  %121 = load i32, i32* %uv, align 4
  %inc134 = add nsw i32 %121, 1
  store i32 %inc134, i32* %uv, align 4
  br label %for.cond

for.end.135:                                      ; preds = %for.cond
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

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
