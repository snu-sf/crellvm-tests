; ModuleID = './MultiSource.Applications.JM/55.lencod.output.bc'
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
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [78 x i8] c"writing only to formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@write_out_picture.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@write_out_picture.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@img = external global %struct.ImageParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"write_out_picture: buf\00", align 1
@out_buffer = common global %struct.frame_store* null, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"Warning!!! Frame can't fit in DPB. Displayed out of sequence.\0A\00", align 1
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

; Function Attrs: nounwind uwtable
define i32 @testEndian() #0 {
entry:
  %s = alloca i16, align 2
  %p = alloca i8*, align 8
  %0 = bitcast i16* %s to i8*
  store i8* %0, i8** %p, align 8
  store i16 1, i16* %s, align 2
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define void @img2buf(i16** %imgX, i8* %buf, i32 %size_x, i32 %size_y, i32 %symbol_size_in_bytes, i32 %crop_left, i32 %crop_right, i32 %crop_top, i32 %crop_bottom) #0 {
entry:
  %imgX.addr = alloca i16**, align 8
  %buf.addr = alloca i8*, align 8
  %size_x.addr = alloca i32, align 4
  %size_y.addr = alloca i32, align 4
  %symbol_size_in_bytes.addr = alloca i32, align 4
  %crop_left.addr = alloca i32, align 4
  %crop_right.addr = alloca i32, align 4
  %crop_top.addr = alloca i32, align 4
  %crop_bottom.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %twidth = alloca i32, align 4
  %theight = alloca i32, align 4
  %size = alloca i32, align 4
  %ui8 = alloca i8, align 1
  %tmp16 = alloca i16, align 2
  %ui16 = alloca i16, align 2
  %tmp32 = alloca i64, align 8
  %ui32 = alloca i64, align 8
  store i16** %imgX, i16*** %imgX.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size_x, i32* %size_x.addr, align 4
  store i32 %size_y, i32* %size_y.addr, align 4
  store i32 %symbol_size_in_bytes, i32* %symbol_size_in_bytes.addr, align 4
  store i32 %crop_left, i32* %crop_left.addr, align 4
  store i32 %crop_right, i32* %crop_right.addr, align 4
  store i32 %crop_top, i32* %crop_top.addr, align 4
  store i32 %crop_bottom, i32* %crop_bottom.addr, align 4
  %0 = load i32, i32* %size_x.addr, align 4
  %1 = load i32, i32* %crop_left.addr, align 4
  %sub = sub nsw i32 %0, %1
  %2 = load i32, i32* %crop_right.addr, align 4
  %sub1 = sub nsw i32 %sub, %2
  store i32 %sub1, i32* %twidth, align 4
  %3 = load i32, i32* %size_y.addr, align 4
  %4 = load i32, i32* %crop_top.addr, align 4
  %sub2 = sub nsw i32 %3, %4
  %5 = load i32, i32* %crop_bottom.addr, align 4
  %sub3 = sub nsw i32 %sub2, %5
  store i32 %sub3, i32* %theight, align 4
  store i32 0, i32* %size, align 4
  %call = call i32 @testEndian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.18
    i32 4, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %if.then
  %7 = load i32, i32* %crop_top.addr, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %sw.bb
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %size_y.addr, align 4
  %10 = load i32, i32* %crop_bottom.addr, align 4
  %sub4 = sub nsw i32 %9, %10
  %cmp = icmp slt i32 %8, %sub4
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %crop_left.addr, align 4
  store i32 %11, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %size_x.addr, align 4
  %14 = load i32, i32* %crop_right.addr, align 4
  %sub6 = sub nsw i32 %13, %14
  %cmp7 = icmp slt i32 %12, %sub6
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %j, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %17, i64 %idxprom9
  %18 = load i16*, i16** %arrayidx, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %19 = load i16, i16* %arrayidx10, align 2
  %conv = trunc i16 %19 to i8
  store i8 %conv, i8* %ui8, align 1
  %20 = load i8, i8* %ui8, align 1
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %crop_left.addr, align 4
  %sub11 = sub nsw i32 %21, %22
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %crop_top.addr, align 4
  %sub12 = sub nsw i32 %23, %24
  %25 = load i32, i32* %twidth, align 4
  %mul = mul nsw i32 %sub12, %25
  %add = add nsw i32 %sub11, %mul
  %idxprom13 = sext i32 %add to i64
  %26 = load i8*, i8** %buf.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %26, i64 %idxprom13
  store i8 %20, i8* %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %28, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then
  %29 = load i32, i32* %crop_top.addr, align 4
  store i32 %29, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.44, %sw.bb.18
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %size_y.addr, align 4
  %32 = load i32, i32* %crop_bottom.addr, align 4
  %sub20 = sub nsw i32 %31, %32
  %cmp21 = icmp slt i32 %30, %sub20
  br i1 %cmp21, label %for.body.23, label %for.end.46

for.body.23:                                      ; preds = %for.cond.19
  %33 = load i32, i32* %crop_left.addr, align 4
  store i32 %33, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.41, %for.body.23
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %size_x.addr, align 4
  %36 = load i32, i32* %crop_right.addr, align 4
  %sub25 = sub nsw i32 %35, %36
  %cmp26 = icmp slt i32 %34, %sub25
  br i1 %cmp26, label %for.body.28, label %for.end.43

for.body.28:                                      ; preds = %for.cond.24
  %37 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %38 to i64
  %39 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx31 = getelementptr inbounds i16*, i16** %39, i64 %idxprom30
  %40 = load i16*, i16** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %40, i64 %idxprom29
  %41 = load i16, i16* %arrayidx32, align 2
  store i16 %41, i16* %tmp16, align 2
  %42 = load i16, i16* %tmp16, align 2
  %conv33 = zext i16 %42 to i32
  %shr = ashr i32 %conv33, 8
  %43 = load i16, i16* %tmp16, align 2
  %conv34 = zext i16 %43 to i32
  %and = and i32 %conv34, 255
  %shl = shl i32 %and, 8
  %or = or i32 %shr, %shl
  %conv35 = trunc i32 %or to i16
  store i16 %conv35, i16* %ui16, align 2
  %44 = load i8*, i8** %buf.addr, align 8
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %crop_left.addr, align 4
  %sub36 = sub nsw i32 %45, %46
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %crop_top.addr, align 4
  %sub37 = sub nsw i32 %47, %48
  %49 = load i32, i32* %twidth, align 4
  %mul38 = mul nsw i32 %sub37, %49
  %add39 = add nsw i32 %sub36, %mul38
  %mul40 = mul nsw i32 %add39, 2
  %idx.ext = sext i32 %mul40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  %50 = bitcast i16* %ui16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %50, i64 2, i32 1, i1 false)
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.28
  %51 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %51, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond.24

for.end.43:                                       ; preds = %for.cond.24
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %52 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %52, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.19

for.end.46:                                       ; preds = %for.cond.19
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.then
  %53 = load i32, i32* %crop_top.addr, align 4
  store i32 %53, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.84, %sw.bb.47
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %size_y.addr, align 4
  %56 = load i32, i32* %crop_bottom.addr, align 4
  %sub49 = sub nsw i32 %55, %56
  %cmp50 = icmp slt i32 %54, %sub49
  br i1 %cmp50, label %for.body.52, label %for.end.86

for.body.52:                                      ; preds = %for.cond.48
  %57 = load i32, i32* %crop_left.addr, align 4
  store i32 %57, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.81, %for.body.52
  %58 = load i32, i32* %j, align 4
  %59 = load i32, i32* %size_x.addr, align 4
  %60 = load i32, i32* %crop_right.addr, align 4
  %sub54 = sub nsw i32 %59, %60
  %cmp55 = icmp slt i32 %58, %sub54
  br i1 %cmp55, label %for.body.57, label %for.end.83

for.body.57:                                      ; preds = %for.cond.53
  %61 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %61 to i64
  %62 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %62 to i64
  %63 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %63, i64 %idxprom59
  %64 = load i16*, i16** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %64, i64 %idxprom58
  %65 = load i16, i16* %arrayidx61, align 2
  %conv62 = zext i16 %65 to i64
  store i64 %conv62, i64* %tmp32, align 8
  %66 = load i64, i64* %tmp32, align 8
  %and63 = and i64 %66, 65280
  %shl64 = shl i64 %and63, 8
  %67 = load i64, i64* %tmp32, align 8
  %and65 = and i64 %67, 255
  %shl66 = shl i64 %and65, 24
  %or67 = or i64 %shl64, %shl66
  %68 = load i64, i64* %tmp32, align 8
  %and68 = and i64 %68, 16711680
  %shr69 = lshr i64 %and68, 8
  %or70 = or i64 %or67, %shr69
  %69 = load i64, i64* %tmp32, align 8
  %and71 = and i64 %69, 4278190080
  %shr72 = lshr i64 %and71, 24
  %or73 = or i64 %or70, %shr72
  store i64 %or73, i64* %ui32, align 8
  %70 = load i8*, i8** %buf.addr, align 8
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %crop_left.addr, align 4
  %sub74 = sub nsw i32 %71, %72
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %crop_top.addr, align 4
  %sub75 = sub nsw i32 %73, %74
  %75 = load i32, i32* %twidth, align 4
  %mul76 = mul nsw i32 %sub75, %75
  %add77 = add nsw i32 %sub74, %mul76
  %mul78 = mul nsw i32 %add77, 4
  %idx.ext79 = sext i32 %mul78 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %70, i64 %idx.ext79
  %76 = bitcast i64* %ui32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr80, i8* %76, i64 4, i32 1, i1 false)
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.57
  %77 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %77, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond.53

for.end.83:                                       ; preds = %for.cond.53
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end.83
  %78 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %78, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond.48

for.end.86:                                       ; preds = %for.cond.48
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i32 0, i32 0), i32 500)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.86, %for.end.46, %for.end.17
  br label %if.end.123

if.else:                                          ; preds = %entry
  %79 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %conv87 = sext i32 %79 to i64
  %cmp88 = icmp ult i64 2, %conv87
  br i1 %cmp88, label %if.then.90, label %if.else.94

if.then.90:                                       ; preds = %if.else
  store i32 2, i32* %size, align 4
  %80 = load i8*, i8** %buf.addr, align 8
  %81 = load i32, i32* %twidth, align 4
  %82 = load i32, i32* %theight, align 4
  %mul91 = mul nsw i32 %81, %82
  %83 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %mul92 = mul nsw i32 %mul91, %83
  %conv93 = sext i32 %mul92 to i64
  call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 %conv93, i32 1, i1 false)
  br label %if.end

if.else.94:                                       ; preds = %if.else
  %84 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  store i32 %84, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.94, %if.then.90
  %85 = load i32, i32* %crop_top.addr, align 4
  store i32 %85, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.120, %if.end
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %size_y.addr, align 4
  %88 = load i32, i32* %crop_bottom.addr, align 4
  %sub96 = sub nsw i32 %87, %88
  %cmp97 = icmp slt i32 %86, %sub96
  br i1 %cmp97, label %for.body.99, label %for.end.122

for.body.99:                                      ; preds = %for.cond.95
  %89 = load i32, i32* %crop_left.addr, align 4
  store i32 %89, i32* %j, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.117, %for.body.99
  %90 = load i32, i32* %j, align 4
  %91 = load i32, i32* %size_x.addr, align 4
  %92 = load i32, i32* %crop_right.addr, align 4
  %sub101 = sub nsw i32 %91, %92
  %cmp102 = icmp slt i32 %90, %sub101
  br i1 %cmp102, label %for.body.104, label %for.end.119

for.body.104:                                     ; preds = %for.cond.100
  %93 = load i8*, i8** %buf.addr, align 8
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %crop_left.addr, align 4
  %sub105 = sub nsw i32 %94, %95
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %crop_top.addr, align 4
  %sub106 = sub nsw i32 %96, %97
  %98 = load i32, i32* %twidth, align 4
  %mul107 = mul nsw i32 %sub106, %98
  %add108 = add nsw i32 %sub105, %mul107
  %99 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %mul109 = mul nsw i32 %add108, %99
  %idx.ext110 = sext i32 %mul109 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %93, i64 %idx.ext110
  %100 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %100 to i64
  %101 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %101 to i64
  %102 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx114 = getelementptr inbounds i16*, i16** %102, i64 %idxprom113
  %103 = load i16*, i16** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i16, i16* %103, i64 %idxprom112
  %104 = bitcast i16* %arrayidx115 to i8*
  %105 = load i32, i32* %size, align 4
  %conv116 = sext i32 %105 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr111, i8* %104, i64 %conv116, i32 1, i1 false)
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.104
  %106 = load i32, i32* %j, align 4
  %inc118 = add nsw i32 %106, 1
  store i32 %inc118, i32* %j, align 4
  br label %for.cond.100

for.end.119:                                      ; preds = %for.cond.100
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119
  %107 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %107, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.95

for.end.122:                                      ; preds = %for.cond.95
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.122, %sw.epilog
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @error(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @write_picture(%struct.storable_picture* %p, i32 %p_out, i32 %real_structure) #0 {
entry:
  %p.addr = alloca %struct.storable_picture*, align 8
  %p_out.addr = alloca i32, align 4
  %real_structure.addr = alloca i32, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  store i32 %real_structure, i32* %real_structure.addr, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %1 = load i32, i32* %p_out.addr, align 4
  call void @write_out_picture(%struct.storable_picture* %0, i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_out_picture(%struct.storable_picture* %p, i32 %p_out) #0 {
entry:
  %p.addr = alloca %struct.storable_picture*, align 8
  %p_out.addr = alloca i32, align 4
  %SubWidthC = alloca [4 x i32], align 16
  %SubHeightC = alloca [4 x i32], align 16
  %crop_left = alloca i32, align 4
  %crop_right = alloca i32, align 4
  %crop_top = alloca i32, align 4
  %crop_bottom = alloca i32, align 4
  %symbol_size_in_bytes = alloca i32, align 4
  %rgb_output = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = bitcast [4 x i32]* %SubWidthC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i32]* @write_out_picture.SubWidthC to i8*), i64 16, i32 16, i1 false)
  %1 = bitcast [4 x i32]* %SubHeightC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([4 x i32]* @write_out_picture.SubHeightC to i8*), i64 16, i32 16, i1 false)
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_unit_size_on_disk = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 141
  %3 = load i32, i32* %pic_unit_size_on_disk, align 4
  %div = sdiv i32 %3, 8
  store i32 %div, i32* %symbol_size_in_bytes, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 176
  %5 = load i32, i32* %rgb_input_flag, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 16
  %7 = load i32, i32* %yuv_format, align 4
  %cmp1 = icmp eq i32 %7, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %rgb_output, align 4
  %9 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %non_existing = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 17
  %10 = load i32, i32* %non_existing, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  br label %return

if.end:                                           ; preds = %land.end
  %11 = load i32, i32* %p_out.addr, align 4
  %cmp2 = icmp eq i32 %11, -1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 46
  %13 = load i32, i32* %frame_cropping_flag, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %14 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 44
  %15 = load i32, i32* %chroma_format_idc, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %17 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %17, i32 0, i32 47
  %18 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %mul = mul nsw i32 %16, %18
  store i32 %mul, i32* %crop_left, align 4
  %19 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc7 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 44
  %20 = load i32, i32* %chroma_format_idc7, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom8
  %21 = load i32, i32* %arrayidx9, align 4
  %22 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 48
  %23 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %mul10 = mul nsw i32 %21, %23
  store i32 %mul10, i32* %crop_right, align 4
  %24 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %24, i32 0, i32 44
  %25 = load i32, i32* %chroma_format_idc11, align 4
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom12
  %26 = load i32, i32* %arrayidx13, align 4
  %27 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 45
  %28 = load i32, i32* %frame_mbs_only_flag, align 4
  %sub = sub nsw i32 2, %28
  %mul14 = mul nsw i32 %26, %sub
  %29 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 49
  %30 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %mul15 = mul nsw i32 %mul14, %30
  store i32 %mul15, i32* %crop_top, align 4
  %31 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc16 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %31, i32 0, i32 44
  %32 = load i32, i32* %chroma_format_idc16, align 4
  %idxprom17 = sext i32 %32 to i64
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom17
  %33 = load i32, i32* %arrayidx18, align 4
  %34 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag19 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %34, i32 0, i32 45
  %35 = load i32, i32* %frame_mbs_only_flag19, align 4
  %sub20 = sub nsw i32 2, %35
  %mul21 = mul nsw i32 %33, %sub20
  %36 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %36, i32 0, i32 50
  %37 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %mul22 = mul nsw i32 %mul21, %37
  store i32 %mul22, i32* %crop_bottom, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.end.4
  store i32 0, i32* %crop_bottom, align 4
  store i32 0, i32* %crop_top, align 4
  store i32 0, i32* %crop_right, align 4
  store i32 0, i32* %crop_left, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.6
  %38 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 18
  %39 = load i32, i32* %size_x, align 4
  %40 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %40, i32 0, i32 19
  %41 = load i32, i32* %size_y, align 4
  %mul24 = mul nsw i32 %39, %41
  %42 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul25 = mul nsw i32 %mul24, %42
  %conv = sext i32 %mul25 to i64
  %call = call noalias i8* @malloc(i64 %conv) #1
  store i8* %call, i8** %buf, align 8
  %43 = load i8*, i8** %buf, align 8
  %cmp26 = icmp eq i8* null, %43
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.23
  %44 = load i32, i32* %rgb_output, align 4
  %tobool30 = icmp ne i32 %44, 0
  br i1 %tobool30, label %if.then.31, label %if.end.84

if.then.31:                                       ; preds = %if.end.29
  %45 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset32 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 47
  %46 = load i32, i32* %frame_cropping_rect_left_offset32, align 4
  store i32 %46, i32* %crop_left, align 4
  %47 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset33 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %47, i32 0, i32 48
  %48 = load i32, i32* %frame_cropping_rect_right_offset33, align 4
  store i32 %48, i32* %crop_right, align 4
  %49 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag34 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 45
  %50 = load i32, i32* %frame_mbs_only_flag34, align 4
  %sub35 = sub nsw i32 2, %50
  %51 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset36 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 49
  %52 = load i32, i32* %frame_cropping_rect_top_offset36, align 4
  %mul37 = mul nsw i32 %sub35, %52
  store i32 %mul37, i32* %crop_top, align 4
  %53 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag38 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 45
  %54 = load i32, i32* %frame_mbs_only_flag38, align 4
  %sub39 = sub nsw i32 2, %54
  %55 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset40 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %55, i32 0, i32 50
  %56 = load i32, i32* %frame_cropping_rect_bottom_offset40, align 4
  %mul41 = mul nsw i32 %sub39, %56
  store i32 %mul41, i32* %crop_bottom, align 4
  %57 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 33
  %58 = load i16***, i16**** %imgUV, align 8
  %arrayidx42 = getelementptr inbounds i16**, i16*** %58, i64 1
  %59 = load i16**, i16*** %arrayidx42, align 8
  %60 = load i8*, i8** %buf, align 8
  %61 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %61, i32 0, i32 20
  %62 = load i32, i32* %size_x_cr, align 4
  %63 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 21
  %64 = load i32, i32* %size_y_cr, align 4
  %65 = load i32, i32* %symbol_size_in_bytes, align 4
  %66 = load i32, i32* %crop_left, align 4
  %67 = load i32, i32* %crop_right, align 4
  %68 = load i32, i32* %crop_top, align 4
  %69 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %59, i8* %60, i32 %62, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %70 = load i32, i32* %p_out.addr, align 4
  %71 = load i8*, i8** %buf, align 8
  %72 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 21
  %73 = load i32, i32* %size_y_cr43, align 4
  %74 = load i32, i32* %crop_bottom, align 4
  %sub44 = sub nsw i32 %73, %74
  %75 = load i32, i32* %crop_top, align 4
  %sub45 = sub nsw i32 %sub44, %75
  %76 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr46 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %76, i32 0, i32 20
  %77 = load i32, i32* %size_x_cr46, align 4
  %78 = load i32, i32* %crop_right, align 4
  %sub47 = sub nsw i32 %77, %78
  %79 = load i32, i32* %crop_left, align 4
  %sub48 = sub nsw i32 %sub47, %79
  %mul49 = mul nsw i32 %sub45, %sub48
  %80 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul50 = mul nsw i32 %mul49, %80
  %conv51 = sext i32 %mul50 to i64
  %call52 = call i64 @write(i32 %70, i8* %71, i64 %conv51)
  %81 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_flag53 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %81, i32 0, i32 46
  %82 = load i32, i32* %frame_cropping_flag53, align 4
  %tobool54 = icmp ne i32 %82, 0
  br i1 %tobool54, label %if.then.55, label %if.else.82

if.then.55:                                       ; preds = %if.then.31
  %83 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc56 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %83, i32 0, i32 44
  %84 = load i32, i32* %chroma_format_idc56, align 4
  %idxprom57 = sext i32 %84 to i64
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom57
  %85 = load i32, i32* %arrayidx58, align 4
  %86 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset59 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %86, i32 0, i32 47
  %87 = load i32, i32* %frame_cropping_rect_left_offset59, align 4
  %mul60 = mul nsw i32 %85, %87
  store i32 %mul60, i32* %crop_left, align 4
  %88 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc61 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %88, i32 0, i32 44
  %89 = load i32, i32* %chroma_format_idc61, align 4
  %idxprom62 = sext i32 %89 to i64
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom62
  %90 = load i32, i32* %arrayidx63, align 4
  %91 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset64 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %91, i32 0, i32 48
  %92 = load i32, i32* %frame_cropping_rect_right_offset64, align 4
  %mul65 = mul nsw i32 %90, %92
  store i32 %mul65, i32* %crop_right, align 4
  %93 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc66 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %93, i32 0, i32 44
  %94 = load i32, i32* %chroma_format_idc66, align 4
  %idxprom67 = sext i32 %94 to i64
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom67
  %95 = load i32, i32* %arrayidx68, align 4
  %96 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag69 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %96, i32 0, i32 45
  %97 = load i32, i32* %frame_mbs_only_flag69, align 4
  %sub70 = sub nsw i32 2, %97
  %mul71 = mul nsw i32 %95, %sub70
  %98 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset72 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %98, i32 0, i32 49
  %99 = load i32, i32* %frame_cropping_rect_top_offset72, align 4
  %mul73 = mul nsw i32 %mul71, %99
  store i32 %mul73, i32* %crop_top, align 4
  %100 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc74 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %100, i32 0, i32 44
  %101 = load i32, i32* %chroma_format_idc74, align 4
  %idxprom75 = sext i32 %101 to i64
  %arrayidx76 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom75
  %102 = load i32, i32* %arrayidx76, align 4
  %103 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag77 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %103, i32 0, i32 45
  %104 = load i32, i32* %frame_mbs_only_flag77, align 4
  %sub78 = sub nsw i32 2, %104
  %mul79 = mul nsw i32 %102, %sub78
  %105 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset80 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %105, i32 0, i32 50
  %106 = load i32, i32* %frame_cropping_rect_bottom_offset80, align 4
  %mul81 = mul nsw i32 %mul79, %106
  store i32 %mul81, i32* %crop_bottom, align 4
  br label %if.end.83

if.else.82:                                       ; preds = %if.then.31
  store i32 0, i32* %crop_bottom, align 4
  store i32 0, i32* %crop_top, align 4
  store i32 0, i32* %crop_right, align 4
  store i32 0, i32* %crop_left, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.then.55
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.29
  %107 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %107, i32 0, i32 29
  %108 = load i16**, i16*** %imgY, align 8
  %109 = load i8*, i8** %buf, align 8
  %110 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x85 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %110, i32 0, i32 18
  %111 = load i32, i32* %size_x85, align 4
  %112 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y86 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %112, i32 0, i32 19
  %113 = load i32, i32* %size_y86, align 4
  %114 = load i32, i32* %symbol_size_in_bytes, align 4
  %115 = load i32, i32* %crop_left, align 4
  %116 = load i32, i32* %crop_right, align 4
  %117 = load i32, i32* %crop_top, align 4
  %118 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %108, i8* %109, i32 %111, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %119 = load i32, i32* %p_out.addr, align 4
  %120 = load i8*, i8** %buf, align 8
  %121 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y87 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %121, i32 0, i32 19
  %122 = load i32, i32* %size_y87, align 4
  %123 = load i32, i32* %crop_bottom, align 4
  %sub88 = sub nsw i32 %122, %123
  %124 = load i32, i32* %crop_top, align 4
  %sub89 = sub nsw i32 %sub88, %124
  %125 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x90 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %125, i32 0, i32 18
  %126 = load i32, i32* %size_x90, align 4
  %127 = load i32, i32* %crop_right, align 4
  %sub91 = sub nsw i32 %126, %127
  %128 = load i32, i32* %crop_left, align 4
  %sub92 = sub nsw i32 %sub91, %128
  %mul93 = mul nsw i32 %sub89, %sub92
  %129 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul94 = mul nsw i32 %mul93, %129
  %conv95 = sext i32 %mul94 to i64
  %call96 = call i64 @write(i32 %119, i8* %120, i64 %conv95)
  %130 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc97 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %130, i32 0, i32 44
  %131 = load i32, i32* %chroma_format_idc97, align 4
  %cmp98 = icmp ne i32 %131, 0
  br i1 %cmp98, label %if.then.100, label %if.end.142

if.then.100:                                      ; preds = %if.end.84
  %132 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset101 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %132, i32 0, i32 47
  %133 = load i32, i32* %frame_cropping_rect_left_offset101, align 4
  store i32 %133, i32* %crop_left, align 4
  %134 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset102 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %134, i32 0, i32 48
  %135 = load i32, i32* %frame_cropping_rect_right_offset102, align 4
  store i32 %135, i32* %crop_right, align 4
  %136 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag103 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %136, i32 0, i32 45
  %137 = load i32, i32* %frame_mbs_only_flag103, align 4
  %sub104 = sub nsw i32 2, %137
  %138 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset105 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %138, i32 0, i32 49
  %139 = load i32, i32* %frame_cropping_rect_top_offset105, align 4
  %mul106 = mul nsw i32 %sub104, %139
  store i32 %mul106, i32* %crop_top, align 4
  %140 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag107 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %140, i32 0, i32 45
  %141 = load i32, i32* %frame_mbs_only_flag107, align 4
  %sub108 = sub nsw i32 2, %141
  %142 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset109 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %142, i32 0, i32 50
  %143 = load i32, i32* %frame_cropping_rect_bottom_offset109, align 4
  %mul110 = mul nsw i32 %sub108, %143
  store i32 %mul110, i32* %crop_bottom, align 4
  %144 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV111 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %144, i32 0, i32 33
  %145 = load i16***, i16**** %imgUV111, align 8
  %arrayidx112 = getelementptr inbounds i16**, i16*** %145, i64 0
  %146 = load i16**, i16*** %arrayidx112, align 8
  %147 = load i8*, i8** %buf, align 8
  %148 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr113 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %148, i32 0, i32 20
  %149 = load i32, i32* %size_x_cr113, align 4
  %150 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr114 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %150, i32 0, i32 21
  %151 = load i32, i32* %size_y_cr114, align 4
  %152 = load i32, i32* %symbol_size_in_bytes, align 4
  %153 = load i32, i32* %crop_left, align 4
  %154 = load i32, i32* %crop_right, align 4
  %155 = load i32, i32* %crop_top, align 4
  %156 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %146, i8* %147, i32 %149, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %157 = load i32, i32* %p_out.addr, align 4
  %158 = load i8*, i8** %buf, align 8
  %159 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr115 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %159, i32 0, i32 21
  %160 = load i32, i32* %size_y_cr115, align 4
  %161 = load i32, i32* %crop_bottom, align 4
  %sub116 = sub nsw i32 %160, %161
  %162 = load i32, i32* %crop_top, align 4
  %sub117 = sub nsw i32 %sub116, %162
  %163 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr118 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %163, i32 0, i32 20
  %164 = load i32, i32* %size_x_cr118, align 4
  %165 = load i32, i32* %crop_right, align 4
  %sub119 = sub nsw i32 %164, %165
  %166 = load i32, i32* %crop_left, align 4
  %sub120 = sub nsw i32 %sub119, %166
  %mul121 = mul nsw i32 %sub117, %sub120
  %167 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul122 = mul nsw i32 %mul121, %167
  %conv123 = sext i32 %mul122 to i64
  %call124 = call i64 @write(i32 %157, i8* %158, i64 %conv123)
  %168 = load i32, i32* %rgb_output, align 4
  %tobool125 = icmp ne i32 %168, 0
  br i1 %tobool125, label %if.end.141, label %if.then.126

if.then.126:                                      ; preds = %if.then.100
  %169 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV127 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %169, i32 0, i32 33
  %170 = load i16***, i16**** %imgUV127, align 8
  %arrayidx128 = getelementptr inbounds i16**, i16*** %170, i64 1
  %171 = load i16**, i16*** %arrayidx128, align 8
  %172 = load i8*, i8** %buf, align 8
  %173 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr129 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %173, i32 0, i32 20
  %174 = load i32, i32* %size_x_cr129, align 4
  %175 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr130 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %175, i32 0, i32 21
  %176 = load i32, i32* %size_y_cr130, align 4
  %177 = load i32, i32* %symbol_size_in_bytes, align 4
  %178 = load i32, i32* %crop_left, align 4
  %179 = load i32, i32* %crop_right, align 4
  %180 = load i32, i32* %crop_top, align 4
  %181 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %171, i8* %172, i32 %174, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181)
  %182 = load i32, i32* %p_out.addr, align 4
  %183 = load i8*, i8** %buf, align 8
  %184 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr131 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %184, i32 0, i32 21
  %185 = load i32, i32* %size_y_cr131, align 4
  %186 = load i32, i32* %crop_bottom, align 4
  %sub132 = sub nsw i32 %185, %186
  %187 = load i32, i32* %crop_top, align 4
  %sub133 = sub nsw i32 %sub132, %187
  %188 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr134 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %188, i32 0, i32 20
  %189 = load i32, i32* %size_x_cr134, align 4
  %190 = load i32, i32* %crop_right, align 4
  %sub135 = sub nsw i32 %189, %190
  %191 = load i32, i32* %crop_left, align 4
  %sub136 = sub nsw i32 %sub135, %191
  %mul137 = mul nsw i32 %sub133, %sub136
  %192 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul138 = mul nsw i32 %mul137, %192
  %conv139 = sext i32 %mul138 to i64
  %call140 = call i64 @write(i32 %182, i8* %183, i64 %conv139)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.126, %if.then.100
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.84
  %193 = load i8*, i8** %buf, align 8
  call void @free(i8* %193) #1
  br label %return

return:                                           ; preds = %if.end.142, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare void @no_mem_exit(i8*) #2

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @init_out_buffer() #0 {
entry:
  %call = call %struct.frame_store* @alloc_frame_store()
  store %struct.frame_store* %call, %struct.frame_store** @out_buffer, align 8
  ret void
}

declare %struct.frame_store* @alloc_frame_store() #2

; Function Attrs: nounwind uwtable
define void @uninit_out_buffer() #0 {
entry:
  %0 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  call void @free_frame_store(%struct.frame_store* %0)
  store %struct.frame_store* null, %struct.frame_store** @out_buffer, align 8
  ret void
}

declare void @free_frame_store(%struct.frame_store*) #2

; Function Attrs: nounwind uwtable
define void @clear_picture(%struct.storable_picture* %p) #0 {
entry:
  %p.addr = alloca %struct.storable_picture*, align 8
  %i = alloca i32, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1, i32 0, i32 19
  %2 = load i32, i32* %size_y, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 29
  %5 = load i16**, i16*** %imgY, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %5, i64 %idxprom
  %6 = load i16*, i16** %arrayidx, align 8
  %7 = bitcast i16* %6 to i8*
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 154
  %9 = load i32, i32* %dc_pred_value_luma, align 4
  %10 = trunc i32 %9 to i8
  %11 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %11, i32 0, i32 18
  %12 = load i32, i32* %size_x, align 4
  %conv = sext i32 %12 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* %7, i8 %10, i64 %mul, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.10, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 21
  %16 = load i32, i32* %size_y_cr, align 4
  %cmp2 = icmp slt i32 %14, %16
  br i1 %cmp2, label %for.body.4, label %for.end.12

for.body.4:                                       ; preds = %for.cond.1
  %17 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %17 to i64
  %18 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %18, i32 0, i32 33
  %19 = load i16***, i16**** %imgUV, align 8
  %arrayidx6 = getelementptr inbounds i16**, i16*** %19, i64 0
  %20 = load i16**, i16*** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i16*, i16** %20, i64 %idxprom5
  %21 = load i16*, i16** %arrayidx7, align 8
  %22 = bitcast i16* %21 to i8*
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 155
  %24 = load i32, i32* %dc_pred_value_chroma, align 4
  %25 = trunc i32 %24 to i8
  %26 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %26, i32 0, i32 20
  %27 = load i32, i32* %size_x_cr, align 4
  %conv8 = sext i32 %27 to i64
  %mul9 = mul i64 %conv8, 2
  call void @llvm.memset.p0i8.i64(i8* %22, i8 %25, i64 %mul9, i32 2, i1 false)
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.4
  %28 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %28, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.1

for.end.12:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.26, %for.end.12
  %29 = load i32, i32* %i, align 4
  %30 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr14 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %30, i32 0, i32 21
  %31 = load i32, i32* %size_y_cr14, align 4
  %cmp15 = icmp slt i32 %29, %31
  br i1 %cmp15, label %for.body.17, label %for.end.28

for.body.17:                                      ; preds = %for.cond.13
  %32 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %32 to i64
  %33 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV19 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 33
  %34 = load i16***, i16**** %imgUV19, align 8
  %arrayidx20 = getelementptr inbounds i16**, i16*** %34, i64 1
  %35 = load i16**, i16*** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16*, i16** %35, i64 %idxprom18
  %36 = load i16*, i16** %arrayidx21, align 8
  %37 = bitcast i16* %36 to i8*
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value_chroma22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 155
  %39 = load i32, i32* %dc_pred_value_chroma22, align 4
  %40 = trunc i32 %39 to i8
  %41 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr23 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %41, i32 0, i32 20
  %42 = load i32, i32* %size_x_cr23, align 4
  %conv24 = sext i32 %42 to i64
  %mul25 = mul i64 %conv24, 2
  call void @llvm.memset.p0i8.i64(i8* %37, i8 %40, i64 %mul25, i32 2, i1 false)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.17
  %43 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %43, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.13

for.end.28:                                       ; preds = %for.cond.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_unpaired_field(%struct.frame_store* %fs, i32 %p_out) #0 {
entry:
  %fs.addr = alloca %struct.frame_store*, align 8
  %p_out.addr = alloca i32, align 4
  %p = alloca %struct.storable_picture*, align 8
  store %struct.frame_store* %fs, %struct.frame_store** %fs.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %0, i32 0, i32 0
  %1 = load i32, i32* %is_used, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %2, i32 0, i32 11
  %3 = load %struct.storable_picture*, %struct.storable_picture** %top_field, align 8
  store %struct.storable_picture* %3, %struct.storable_picture** %p, align 8
  %4 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 18
  %5 = load i32, i32* %size_x, align 4
  %6 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 19
  %7 = load i32, i32* %size_y, align 4
  %8 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 20
  %9 = load i32, i32* %size_x_cr, align 4
  %10 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 21
  %11 = load i32, i32* %size_y_cr, align 4
  %call = call %struct.storable_picture* @alloc_storable_picture(i32 2, i32 %5, i32 %7, i32 %9, i32 %11)
  %12 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 12
  store %struct.storable_picture* %call, %struct.storable_picture** %bottom_field, align 8
  %13 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 44
  %14 = load i32, i32* %chroma_format_idc, align 4
  %15 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field1 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %15, i32 0, i32 12
  %16 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field1, align 8
  %chroma_format_idc2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 44
  store i32 %14, i32* %chroma_format_idc2, align 4
  %17 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field3 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %17, i32 0, i32 12
  %18 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field3, align 8
  call void @clear_picture(%struct.storable_picture* %18)
  %19 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  call void @dpb_combine_field_yuv(%struct.frame_store* %19)
  %20 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %20, i32 0, i32 10
  %21 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %22 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %21, i32 %22, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_used4 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %23, i32 0, i32 0
  %24 = load i32, i32* %is_used4, align 4
  %and5 = and i32 %24, 2
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.41

if.then.7:                                        ; preds = %if.end
  %25 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field8 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %25, i32 0, i32 12
  %26 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field8, align 8
  store %struct.storable_picture* %26, %struct.storable_picture** %p, align 8
  %27 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x9 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 18
  %28 = load i32, i32* %size_x9, align 4
  %29 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 19
  %30 = load i32, i32* %size_y10, align 4
  %31 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x_cr11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %31, i32 0, i32 20
  %32 = load i32, i32* %size_x_cr11, align 4
  %33 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y_cr12 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 21
  %34 = load i32, i32* %size_y_cr12, align 4
  %call13 = call %struct.storable_picture* @alloc_storable_picture(i32 1, i32 %28, i32 %30, i32 %32, i32 %34)
  %35 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field14 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %35, i32 0, i32 11
  store %struct.storable_picture* %call13, %struct.storable_picture** %top_field14, align 8
  %36 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field15 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %36, i32 0, i32 11
  %37 = load %struct.storable_picture*, %struct.storable_picture** %top_field15, align 8
  call void @clear_picture(%struct.storable_picture* %37)
  %38 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %chroma_format_idc16 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 44
  %39 = load i32, i32* %chroma_format_idc16, align 4
  %40 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field17 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %40, i32 0, i32 11
  %41 = load %struct.storable_picture*, %struct.storable_picture** %top_field17, align 8
  %chroma_format_idc18 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %41, i32 0, i32 44
  store i32 %39, i32* %chroma_format_idc18, align 4
  %42 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field19 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %42, i32 0, i32 11
  %43 = load %struct.storable_picture*, %struct.storable_picture** %top_field19, align 8
  call void @clear_picture(%struct.storable_picture* %43)
  %44 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field20 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %44, i32 0, i32 12
  %45 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field20, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 46
  %46 = load i32, i32* %frame_cropping_flag, align 4
  %47 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field21 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %47, i32 0, i32 11
  %48 = load %struct.storable_picture*, %struct.storable_picture** %top_field21, align 8
  %frame_cropping_flag22 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %48, i32 0, i32 46
  store i32 %46, i32* %frame_cropping_flag22, align 4
  %49 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field23 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %49, i32 0, i32 11
  %50 = load %struct.storable_picture*, %struct.storable_picture** %top_field23, align 8
  %frame_cropping_flag24 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 46
  %51 = load i32, i32* %frame_cropping_flag24, align 4
  %tobool25 = icmp ne i32 %51, 0
  br i1 %tobool25, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %if.then.7
  %52 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field27 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %52, i32 0, i32 12
  %53 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field27, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 49
  %54 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %55 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field28 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %55, i32 0, i32 11
  %56 = load %struct.storable_picture*, %struct.storable_picture** %top_field28, align 8
  %frame_cropping_rect_top_offset29 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 49
  store i32 %54, i32* %frame_cropping_rect_top_offset29, align 4
  %57 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field30 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %57, i32 0, i32 12
  %58 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field30, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 50
  %59 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %60 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field31 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %60, i32 0, i32 11
  %61 = load %struct.storable_picture*, %struct.storable_picture** %top_field31, align 8
  %frame_cropping_rect_bottom_offset32 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %61, i32 0, i32 50
  store i32 %59, i32* %frame_cropping_rect_bottom_offset32, align 4
  %62 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field33 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %62, i32 0, i32 12
  %63 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field33, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 47
  %64 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %65 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field34 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %65, i32 0, i32 11
  %66 = load %struct.storable_picture*, %struct.storable_picture** %top_field34, align 8
  %frame_cropping_rect_left_offset35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %66, i32 0, i32 47
  store i32 %64, i32* %frame_cropping_rect_left_offset35, align 4
  %67 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field36 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %67, i32 0, i32 12
  %68 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field36, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %68, i32 0, i32 48
  %69 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %70 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field37 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %70, i32 0, i32 11
  %71 = load %struct.storable_picture*, %struct.storable_picture** %top_field37, align 8
  %frame_cropping_rect_right_offset38 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 48
  store i32 %69, i32* %frame_cropping_rect_right_offset38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.26, %if.then.7
  %72 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  call void @dpb_combine_field_yuv(%struct.frame_store* %72)
  %73 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %frame40 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %73, i32 0, i32 10
  %74 = load %struct.storable_picture*, %struct.storable_picture** %frame40, align 8
  %75 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %74, i32 %75, i32 2)
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.39, %if.end
  %76 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_used42 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %76, i32 0, i32 0
  store i32 3, i32* %is_used42, align 4
  ret void
}

declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #2

declare void @dpb_combine_field_yuv(%struct.frame_store*) #2

; Function Attrs: nounwind uwtable
define void @flush_direct_output(i32 %p_out) #0 {
entry:
  %p_out.addr = alloca i32, align 4
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %1 = load i32, i32* %p_out.addr, align 4
  call void @write_unpaired_field(%struct.frame_store* %0, i32 %1)
  %2 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %2, i32 0, i32 10
  %3 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  call void @free_storable_picture(%struct.storable_picture* %3)
  %4 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame1 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %4, i32 0, i32 10
  store %struct.storable_picture* null, %struct.storable_picture** %frame1, align 8
  %5 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %5, i32 0, i32 11
  %6 = load %struct.storable_picture*, %struct.storable_picture** %top_field, align 8
  call void @free_storable_picture(%struct.storable_picture* %6)
  %7 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field2 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %7, i32 0, i32 11
  store %struct.storable_picture* null, %struct.storable_picture** %top_field2, align 8
  %8 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 12
  %9 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field, align 8
  call void @free_storable_picture(%struct.storable_picture* %9)
  %10 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field3 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %10, i32 0, i32 12
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field3, align 8
  %11 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %11, i32 0, i32 0
  store i32 0, i32* %is_used, align 4
  ret void
}

declare void @free_storable_picture(%struct.storable_picture*) #2

; Function Attrs: nounwind uwtable
define void @write_stored_frame(%struct.frame_store* %fs, i32 %p_out) #0 {
entry:
  %fs.addr = alloca %struct.frame_store*, align 8
  %p_out.addr = alloca i32, align 4
  store %struct.frame_store* %fs, %struct.frame_store** %fs.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %0)
  %1 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %1, i32 0, i32 0
  %2 = load i32, i32* %is_used, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %4 = load i32, i32* %p_out.addr, align 4
  call void @write_unpaired_field(%struct.frame_store* %3, i32 %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %5, i32 0, i32 10
  %6 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %7 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %6, i32 %7, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_output = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 8
  store i32 1, i32* %is_output, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @direct_output(%struct.storable_picture* %p, i32 %p_out) #0 {
entry:
  %p.addr = alloca %struct.storable_picture*, align 8
  %p_out.addr = alloca i32, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 0
  %1 = load i32, i32* %structure, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %2)
  %3 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %4 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %3, i32 %4, i32 0)
  %5 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @free_storable_picture(%struct.storable_picture* %5)
  br label %if.end.29

if.end:                                           ; preds = %entry
  %6 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 0
  %7 = load i32, i32* %structure1, align 4
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 0
  %9 = load i32, i32* %is_used, align 4
  %and = and i32 %9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.3
  %10 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.3
  %11 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %12 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 11
  store %struct.storable_picture* %11, %struct.storable_picture** %top_field, align 8
  %13 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used6 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %13, i32 0, i32 0
  %14 = load i32, i32* %is_used6, align 4
  %or = or i32 %14, 1
  store i32 %or, i32* %is_used6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.5, %if.end
  %15 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 0
  %16 = load i32, i32* %structure8, align 4
  %cmp9 = icmp eq i32 %16, 2
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.7
  %17 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used11 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %17, i32 0, i32 0
  %18 = load i32, i32* %is_used11, align 4
  %and12 = and i32 %18, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  %19 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %19)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.10
  %20 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %21 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %21, i32 0, i32 12
  store %struct.storable_picture* %20, %struct.storable_picture** %bottom_field, align 8
  %22 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used16 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %22, i32 0, i32 0
  %23 = load i32, i32* %is_used16, align 4
  %or17 = or i32 %23, 2
  store i32 %or17, i32* %is_used16, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.7
  %24 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used19 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %24, i32 0, i32 0
  %25 = load i32, i32* %is_used19, align 4
  %cmp20 = icmp eq i32 %25, 3
  br i1 %cmp20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.18
  %26 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  call void @dpb_combine_field_yuv(%struct.frame_store* %26)
  %27 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %27, i32 0, i32 10
  %28 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %29 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %28, i32 %29, i32 0)
  %30 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame22 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %30, i32 0, i32 10
  %31 = load %struct.storable_picture*, %struct.storable_picture** %frame22, align 8
  call void @free_storable_picture(%struct.storable_picture* %31)
  %32 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame23 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %32, i32 0, i32 10
  store %struct.storable_picture* null, %struct.storable_picture** %frame23, align 8
  %33 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field24 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %33, i32 0, i32 11
  %34 = load %struct.storable_picture*, %struct.storable_picture** %top_field24, align 8
  call void @free_storable_picture(%struct.storable_picture* %34)
  %35 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field25 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %35, i32 0, i32 11
  store %struct.storable_picture* null, %struct.storable_picture** %top_field25, align 8
  %36 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field26 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %36, i32 0, i32 12
  %37 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field26, align 8
  call void @free_storable_picture(%struct.storable_picture* %37)
  %38 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field27 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %38, i32 0, i32 12
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field27, align 8
  %39 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used28 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %39, i32 0, i32 0
  store i32 0, i32* %is_used28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then, %if.then.21, %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define void @direct_output_paff(%struct.storable_picture* %p, i32 %p_out) #0 {
entry:
  %p.addr = alloca %struct.storable_picture*, align 8
  %p_out.addr = alloca i32, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i32 0, i32 0))
  %0 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %0, i32 0, i32 10
  %1 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  call void @free_storable_picture(%struct.storable_picture* %1)
  %2 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame1 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %2, i32 0, i32 10
  store %struct.storable_picture* null, %struct.storable_picture** %frame1, align 8
  %3 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %3, i32 0, i32 11
  %4 = load %struct.storable_picture*, %struct.storable_picture** %top_field, align 8
  call void @free_storable_picture(%struct.storable_picture* %4)
  %5 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field2 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %5, i32 0, i32 11
  store %struct.storable_picture* null, %struct.storable_picture** %top_field2, align 8
  %6 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %6, i32 0, i32 12
  %7 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field, align 8
  call void @free_storable_picture(%struct.storable_picture* %7)
  %8 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field3 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 12
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field3, align 8
  %9 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %9, i32 0, i32 0
  store i32 0, i32* %is_used, align 4
  %10 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %11 = load i32, i32* %p_out.addr, align 4
  call void @direct_output(%struct.storable_picture* %10, i32 %11)
  ret void
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
