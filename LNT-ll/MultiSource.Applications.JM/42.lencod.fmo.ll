; ModuleID = './MultiSource.Applications.JM/42.lencod.fmo.bc'
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

@MBAmap = global i8* null, align 8
@MapUnitToSliceGroupMap = global i8* null, align 8
@FirstMBInSlice = internal global [8 x i32] zeroinitializer, align 16
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
@PicSizeInMapUnits = common global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"cannot allocated %d bytes for MapUnitToSliceGroupMap, exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Illegal slice_group_map_type %d , exit \0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"cannot allocated %d bytes for MBAmap, exit\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FmoInit(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %k = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %k, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %4 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %call = call i32 @FmoGenerateMapUnitToSliceGroupMap(%struct.ImageParameters* %3, %struct.pic_parameter_set_rbsp_t* %4)
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %call1 = call i32 @FmoGenerateMBAmap(%struct.ImageParameters* %5, %struct.seq_parameter_set_rbsp_t* %6)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @FmoGenerateMapUnitToSliceGroupMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 117
  %1 = load i32, i32* %PicHeightInMapUnits, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 116
  %3 = load i32, i32* %PicWidthInMbs, align 4
  %mul = mul i32 %1, %3
  store i32 %mul, i32* @PicSizeInMapUnits, align 4
  %4 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %4, i32 0, i32 9
  %5 = load i32, i32* %slice_group_map_type, align 4
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %6 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_size_in_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %6, i32 0, i32 15
  %7 = load i32, i32* %pic_size_in_map_units_minus1, align 4
  %add = add i32 %7, 1
  %8 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp1 = icmp ne i32 %add, %8
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %9 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  %10 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  call void @free(i8* %10) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.3
  %11 = load i32, i32* @PicSizeInMapUnits, align 4
  %conv = zext i32 %11 to i64
  %mul6 = mul i64 %conv, 1
  %call = call noalias i8* @malloc(i64 %mul6) #4
  store i8* %call, i8** @MapUnitToSliceGroupMap, align 8
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.5
  %12 = load i32, i32* @PicSizeInMapUnits, align 4
  %conv10 = zext i32 %12 to i64
  %mul11 = mul i64 %conv10, 1
  %conv12 = trunc i64 %mul11 to i32
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i32 0, i32 0), i32 %conv12)
  call void @exit(i32 -1) #6
  unreachable

if.end.14:                                        ; preds = %if.end.5
  %13 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %13, i32 0, i32 8
  %14 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp15 = icmp eq i32 %14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %15 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %16 = load i32, i32* @PicSizeInMapUnits, align 4
  %conv18 = zext i32 %16 to i64
  %mul19 = mul i64 %conv18, 1
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 %mul19, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  %17 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type21 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %17, i32 0, i32 9
  %18 = load i32, i32* %slice_group_map_type21, align 4
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.23
    i32 3, label %sw.bb.24
    i32 4, label %sw.bb.25
    i32 5, label %sw.bb.26
    i32 6, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.end.20
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %20 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType0MapUnitMap(%struct.ImageParameters* %19, %struct.pic_parameter_set_rbsp_t* %20)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.20
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %22 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType1MapUnitMap(%struct.ImageParameters* %21, %struct.pic_parameter_set_rbsp_t* %22)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.20
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType2MapUnitMap(%struct.ImageParameters* %23, %struct.pic_parameter_set_rbsp_t* %24)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end.20
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %26 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType3MapUnitMap(%struct.ImageParameters* %25, %struct.pic_parameter_set_rbsp_t* %26)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.20
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %28 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType4MapUnitMap(%struct.ImageParameters* %27, %struct.pic_parameter_set_rbsp_t* %28)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.20
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %30 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType5MapUnitMap(%struct.ImageParameters* %29, %struct.pic_parameter_set_rbsp_t* %30)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.20
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %32 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  call void @FmoGenerateType6MapUnitMap(%struct.ImageParameters* %31, %struct.pic_parameter_set_rbsp_t* %32)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.20
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type28 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %33, i32 0, i32 9
  %34 = load i32, i32* %slice_group_map_type28, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 %34)
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.17
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @FmoGenerateMBAmap(%struct.ImageParameters* %img, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load i8*, i8** @MBAmap, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @MBAmap, align 8
  call void @free(i8* %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 119
  %3 = load i32, i32* %PicSizeInMbs, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 1
  %call = call noalias i8* @malloc(i64 %mul) #4
  store i8* %call, i8** @MBAmap, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 119
  %5 = load i32, i32* %PicSizeInMbs3, align 4
  %conv4 = zext i32 %5 to i64
  %mul5 = mul i64 %conv4, 1
  %conv6 = trunc i64 %mul5 to i32
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i32 %conv6)
  call void @exit(i32 -1) #6
  unreachable

if.end.8:                                         ; preds = %if.end
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 25
  %7 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %field_picture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 110
  %9 = load i32, i32* %field_picture, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 119
  %12 = load i32, i32* %PicSizeInMbs12, align 4
  %cmp13 = icmp ult i32 %10, %12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %16 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %16 to i64
  %17 = load i8*, i8** @MBAmap, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 %idxprom15
  store i8 %15, i8* %arrayidx16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.52

if.else:                                          ; preds = %lor.lhs.false
  %19 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %19, i32 0, i32 26
  %20 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %field_picture18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 110
  %22 = load i32, i32* %field_picture18, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %if.else.33, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.30, %if.then.20
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 119
  %25 = load i32, i32* %PicSizeInMbs22, align 4
  %cmp23 = icmp ult i32 %23, %25
  br i1 %cmp23, label %for.body.25, label %for.end.32

for.body.25:                                      ; preds = %for.cond.21
  %26 = load i32, i32* %i, align 4
  %div = udiv i32 %26, 2
  %idxprom26 = zext i32 %div to i64
  %27 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %27, i64 %idxprom26
  %28 = load i8, i8* %arrayidx27, align 1
  %29 = load i32, i32* %i, align 4
  %idxprom28 = zext i32 %29 to i64
  %30 = load i8*, i8** @MBAmap, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %30, i64 %idxprom28
  store i8 %28, i8* %arrayidx29, align 1
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.25
  %31 = load i32, i32* %i, align 4
  %inc31 = add i32 %31, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.21

for.end.32:                                       ; preds = %for.cond.21
  br label %if.end.51

if.else.33:                                       ; preds = %land.lhs.true, %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.48, %if.else.33
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 119
  %34 = load i32, i32* %PicSizeInMbs35, align 4
  %cmp36 = icmp ult i32 %32, %34
  br i1 %cmp36, label %for.body.38, label %for.end.50

for.body.38:                                      ; preds = %for.cond.34
  %35 = load i32, i32* %i, align 4
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 116
  %37 = load i32, i32* %PicWidthInMbs, align 4
  %mul39 = mul i32 2, %37
  %div40 = udiv i32 %35, %mul39
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 116
  %39 = load i32, i32* %PicWidthInMbs41, align 4
  %mul42 = mul i32 %div40, %39
  %40 = load i32, i32* %i, align 4
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 116
  %42 = load i32, i32* %PicWidthInMbs43, align 4
  %rem = urem i32 %40, %42
  %add = add i32 %mul42, %rem
  %idxprom44 = zext i32 %add to i64
  %43 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %43, i64 %idxprom44
  %44 = load i8, i8* %arrayidx45, align 1
  %45 = load i32, i32* %i, align 4
  %idxprom46 = zext i32 %45 to i64
  %46 = load i8*, i8** @MBAmap, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %46, i64 %idxprom46
  store i8 %44, i8* %arrayidx47, align 1
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.38
  %47 = load i32, i32* %i, align 4
  %inc49 = add i32 %47, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.34

for.end.50:                                       ; preds = %for.cond.34
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %for.end.32
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @FmoUninit() #0 {
entry:
  %0 = load i8*, i8** @MBAmap, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @MBAmap, align 8
  call void @free(i8* %1) #4
  store i8* null, i8** @MBAmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  call void @free(i8* %3) #4
  store i8* null, i8** @MapUnitToSliceGroupMap, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @FmoStartPicture() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @FmoGetFirstMBOfSliceGroup(i32 %1)
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetFirstMBOfSliceGroup(i32 %SliceGroupID) #0 {
entry:
  %retval = alloca i32, align 4
  %SliceGroupID.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %SliceGroupID, i32* %SliceGroupID.addr, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 119
  %2 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %call = call i32 @FmoMB2SliceGroup(i32 %3)
  %4 = load i32, i32* %SliceGroupID.addr, align 4
  %cmp1 = icmp ne i32 %call, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 119
  %9 = load i32, i32* %PicSizeInMbs2, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @FmoEndPicture() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @FmoMB2SliceGroup(i32 %mb) #0 {
entry:
  %mb.addr = alloca i32, align 4
  store i32 %mb, i32* %mb.addr, align 4
  %0 = load i32, i32* %mb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** @MBAmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetNextMBNr(i32 %CurrentMbNr) #0 {
entry:
  %retval = alloca i32, align 4
  %CurrentMbNr.addr = alloca i32, align 4
  %SliceGroupID = alloca i32, align 4
  store i32 %CurrentMbNr, i32* %CurrentMbNr.addr, align 4
  %0 = load i32, i32* %CurrentMbNr.addr, align 4
  %call = call i32 @FmoMB2SliceGroup(i32 %0)
  store i32 %call, i32* %SliceGroupID, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %CurrentMbNr.addr, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %CurrentMbNr.addr, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 119
  %3 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %CurrentMbNr.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** @MBAmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %SliceGroupID, align 4
  %cmp1 = icmp ne i32 %conv, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %CurrentMbNr.addr, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 119
  %11 = load i32, i32* %PicSizeInMbs3, align 4
  %cmp4 = icmp sge i32 %9, %11
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  %12 = load i32, i32* %CurrentMbNr.addr, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetPreviousMBNr(i32 %CurrentMbNr) #0 {
entry:
  %retval = alloca i32, align 4
  %CurrentMbNr.addr = alloca i32, align 4
  %SliceGroupID = alloca i32, align 4
  store i32 %CurrentMbNr, i32* %CurrentMbNr.addr, align 4
  %0 = load i32, i32* %CurrentMbNr.addr, align 4
  %call = call i32 @FmoMB2SliceGroup(i32 %0)
  store i32 %call, i32* %SliceGroupID, align 4
  %1 = load i32, i32* %CurrentMbNr.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %CurrentMbNr.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %CurrentMbNr.addr, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %CurrentMbNr.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @MBAmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* %SliceGroupID, align 4
  %cmp1 = icmp ne i32 %conv, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %CurrentMbNr.addr, align 4
  %dec3 = add nsw i32 %8, -1
  store i32 %dec3, i32* %CurrentMbNr.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %CurrentMbNr.addr, align 4
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  %10 = load i32, i32* %CurrentMbNr.addr, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetLastCodedMBOfSliceGroup(i32 %SliceGroupID) #0 {
entry:
  %SliceGroupID.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %LastMB = alloca i32, align 4
  store i32 %SliceGroupID, i32* %SliceGroupID.addr, align 4
  store i32 -1, i32* %LastMB, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 119
  %2 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %call = call i32 @FmoMB2SliceGroup(i32 %3)
  %4 = load i32, i32* %SliceGroupID.addr, align 4
  %cmp1 = icmp eq i32 %call, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %LastMB, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %LastMB, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @FmoSetLastMacroblockInSlice(i32 %mb) #0 {
entry:
  %mb.addr = alloca i32, align 4
  %currSliceGroup = alloca i32, align 4
  store i32 %mb, i32* %mb.addr, align 4
  %0 = load i32, i32* %mb.addr, align 4
  %call = call i32 @FmoMB2SliceGroup(i32 %0)
  store i32 %call, i32* %currSliceGroup, align 4
  %1 = load i32, i32* %mb.addr, align 4
  %call1 = call i32 @FmoGetNextMBNr(i32 %1)
  store i32 %call1, i32* %mb.addr, align 4
  %2 = load i32, i32* %mb.addr, align 4
  %3 = load i32, i32* %currSliceGroup, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i32 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FmoGetFirstMacroblockInSlice(i32 %SliceGroup) #0 {
entry:
  %SliceGroup.addr = alloca i32, align 4
  store i32 %SliceGroup, i32* %SliceGroup.addr, align 4
  %0 = load i32, i32* %SliceGroup.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @FmoSliceGroupCompletelyCoded(i32 %SliceGroupID) #0 {
entry:
  %retval = alloca i32, align 4
  %SliceGroupID.addr = alloca i32, align 4
  store i32 %SliceGroupID, i32* %SliceGroupID.addr, align 4
  %0 = load i32, i32* %SliceGroupID.addr, align 4
  %call = call i32 @FmoGetFirstMacroblockInSlice(i32 %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare void @error(i8*, i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType0MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %iGroup = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %iGroup, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %do.body
  %0 = load i32, i32* %iGroup, align 4
  %1 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i32 0, i32 8
  %2 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp = icmp ule i32 %0, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp1 = icmp ult i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end.18

for.body:                                         ; preds = %land.end
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %iGroup, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %run_length_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %8, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus1, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ule i32 %6, %9
  br i1 %cmp3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %add = add i32 %10, %11
  %12 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp5 = icmp ult i32 %add, %12
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond.2
  %13 = phi i1 [ false, %for.cond.2 ], [ %cmp5, %land.rhs.4 ]
  br i1 %13, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %land.end.6
  %14 = load i32, i32* %iGroup, align 4
  %conv = trunc i32 %14 to i8
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %add8 = add i32 %15, %16
  %idxprom9 = zext i32 %add8 to i64
  %17 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 %idxprom9
  store i8 %conv, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %18 = load i32, i32* %j, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %land.end.6
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %19 = load i32, i32* %iGroup, align 4
  %inc12 = add i32 %19, 1
  store i32 %inc12, i32* %iGroup, align 4
  %idxprom13 = zext i32 %19 to i64
  %20 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %run_length_minus114 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %20, i32 0, i32 10
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus114, i32 0, i64 %idxprom13
  %21 = load i32, i32* %arrayidx15, align 4
  %add16 = add i32 %21, 1
  %22 = load i32, i32* %i, align 4
  %add17 = add i32 %22, %add16
  store i32 %add17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %land.end
  br label %do.cond

do.cond:                                          ; preds = %for.end.18
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp19 = icmp ult i32 %23, %24
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType1MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 116
  %4 = load i32, i32* %PicWidthInMbs, align 4
  %rem = urem i32 %2, %4
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 116
  %7 = load i32, i32* %PicWidthInMbs1, align 4
  %div = udiv i32 %5, %7
  %8 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %8, i32 0, i32 8
  %9 = load i32, i32* %num_slice_groups_minus1, align 4
  %add = add i32 %9, 1
  %mul = mul i32 %div, %add
  %div2 = udiv i32 %mul, 2
  %add3 = add i32 %rem, %div2
  %10 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus14 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %10, i32 0, i32 8
  %11 = load i32, i32* %num_slice_groups_minus14, align 4
  %add5 = add i32 %11, 1
  %rem6 = urem i32 %add3, %add5
  %conv = trunc i32 %rem6 to i8
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType2MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %iGroup = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %yTopLeft = alloca i32, align 4
  %xTopLeft = alloca i32, align 4
  %yBottomRight = alloca i32, align 4
  %xBottomRight = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 8
  %3 = load i32, i32* %num_slice_groups_minus1, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %7, i32 0, i32 8
  %8 = load i32, i32* %num_slice_groups_minus11, align 4
  %sub = sub i32 %8, 1
  store i32 %sub, i32* %iGroup, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.39, %for.end
  %9 = load i32, i32* %iGroup, align 4
  %cmp3 = icmp sge i32 %9, 0
  br i1 %cmp3, label %for.body.5, label %for.end.40

for.body.5:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %iGroup, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %11, i32 0, i32 11
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left, i32 0, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 116
  %14 = load i32, i32* %PicWidthInMbs, align 4
  %div = udiv i32 %12, %14
  store i32 %div, i32* %yTopLeft, align 4
  %15 = load i32, i32* %iGroup, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %16, i32 0, i32 11
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left9, i32 0, i64 %idxprom8
  %17 = load i32, i32* %arrayidx10, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 116
  %19 = load i32, i32* %PicWidthInMbs11, align 4
  %rem = urem i32 %17, %19
  store i32 %rem, i32* %xTopLeft, align 4
  %20 = load i32, i32* %iGroup, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %21, i32 0, i32 12
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right, i32 0, i64 %idxprom12
  %22 = load i32, i32* %arrayidx13, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 116
  %24 = load i32, i32* %PicWidthInMbs14, align 4
  %div15 = udiv i32 %22, %24
  store i32 %div15, i32* %yBottomRight, align 4
  %25 = load i32, i32* %iGroup, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %26, i32 0, i32 12
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right17, i32 0, i64 %idxprom16
  %27 = load i32, i32* %arrayidx18, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 116
  %29 = load i32, i32* %PicWidthInMbs19, align 4
  %rem20 = urem i32 %27, %29
  store i32 %rem20, i32* %xBottomRight, align 4
  %30 = load i32, i32* %yTopLeft, align 4
  store i32 %30, i32* %y, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.36, %for.body.5
  %31 = load i32, i32* %y, align 4
  %32 = load i32, i32* %yBottomRight, align 4
  %cmp22 = icmp ule i32 %31, %32
  br i1 %cmp22, label %for.body.24, label %for.end.38

for.body.24:                                      ; preds = %for.cond.21
  %33 = load i32, i32* %xTopLeft, align 4
  store i32 %33, i32* %x, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.33, %for.body.24
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* %xBottomRight, align 4
  %cmp26 = icmp ule i32 %34, %35
  br i1 %cmp26, label %for.body.28, label %for.end.35

for.body.28:                                      ; preds = %for.cond.25
  %36 = load i32, i32* %iGroup, align 4
  %conv29 = trunc i32 %36 to i8
  %37 = load i32, i32* %y, align 4
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 116
  %39 = load i32, i32* %PicWidthInMbs30, align 4
  %mul = mul i32 %37, %39
  %40 = load i32, i32* %x, align 4
  %add = add i32 %mul, %40
  %idxprom31 = zext i32 %add to i64
  %41 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %41, i64 %idxprom31
  store i8 %conv29, i8* %arrayidx32, align 1
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.28
  %42 = load i32, i32* %x, align 4
  %inc34 = add i32 %42, 1
  store i32 %inc34, i32* %x, align 4
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.35
  %43 = load i32, i32* %y, align 4
  %inc37 = add i32 %43, 1
  store i32 %inc37, i32* %y, align 4
  br label %for.cond.21

for.end.38:                                       ; preds = %for.cond.21
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %44 = load i32, i32* %iGroup, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %iGroup, align 4
  br label %for.cond.2

for.end.40:                                       ; preds = %for.cond.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType3MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %leftBound = alloca i32, align 4
  %topBound = alloca i32, align 4
  %rightBound = alloca i32, align 4
  %bottomBound = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xDir = alloca i32, align 4
  %yDir = alloca i32, align 4
  %mapUnitVacant = alloca i32, align 4
  %mapUnitsInSliceGroup0 = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 14
  %1 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add = add i32 %1, 1
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 140
  %3 = load i32, i32* %slice_group_change_cycle, align 4
  %mul = mul i32 %add, %3
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %call = call i32 @imin(i32 %mul, i32 %4)
  store i32 %call, i32* %mapUnitsInSliceGroup0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 2, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 116
  %11 = load i32, i32* %PicWidthInMbs, align 4
  %12 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %12, i32 0, i32 13
  %13 = load i32, i32* %slice_group_change_direction_flag, align 4
  %sub = sub i32 %11, %13
  %div = udiv i32 %sub, 2
  store i32 %div, i32* %x, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 117
  %15 = load i32, i32* %PicHeightInMapUnits, align 4
  %16 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %16, i32 0, i32 13
  %17 = load i32, i32* %slice_group_change_direction_flag1, align 4
  %sub2 = sub i32 %15, %17
  %div3 = udiv i32 %sub2, 2
  store i32 %div3, i32* %y, align 4
  %18 = load i32, i32* %x, align 4
  store i32 %18, i32* %leftBound, align 4
  %19 = load i32, i32* %y, align 4
  store i32 %19, i32* %topBound, align 4
  %20 = load i32, i32* %x, align 4
  store i32 %20, i32* %rightBound, align 4
  %21 = load i32, i32* %y, align 4
  store i32 %21, i32* %bottomBound, align 4
  %22 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag4 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %22, i32 0, i32 13
  %23 = load i32, i32* %slice_group_change_direction_flag4, align 4
  %sub5 = sub i32 %23, 1
  store i32 %sub5, i32* %xDir, align 4
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag6 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %24, i32 0, i32 13
  %25 = load i32, i32* %slice_group_change_direction_flag6, align 4
  store i32 %25, i32* %yDir, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.81, %for.end
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp8 = icmp ult i32 %26, %27
  br i1 %cmp8, label %for.body.9, label %for.end.83

for.body.9:                                       ; preds = %for.cond.7
  %28 = load i32, i32* %y, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 116
  %30 = load i32, i32* %PicWidthInMbs10, align 4
  %mul11 = mul i32 %28, %30
  %31 = load i32, i32* %x, align 4
  %add12 = add i32 %mul11, %31
  %idxprom13 = zext i32 %add12 to i64
  %32 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %32, i64 %idxprom13
  %33 = load i8, i8* %arrayidx14, align 1
  %conv = zext i8 %33 to i32
  %cmp15 = icmp eq i32 %conv, 2
  %conv16 = zext i1 %cmp15 to i32
  store i32 %conv16, i32* %mapUnitVacant, align 4
  %34 = load i32, i32* %mapUnitVacant, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.9
  %35 = load i32, i32* %k, align 4
  %36 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  %cmp17 = icmp uge i32 %35, %36
  %conv18 = zext i1 %cmp17 to i32
  %conv19 = trunc i32 %conv18 to i8
  %37 = load i32, i32* %y, align 4
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 116
  %39 = load i32, i32* %PicWidthInMbs20, align 4
  %mul21 = mul i32 %37, %39
  %40 = load i32, i32* %x, align 4
  %add22 = add i32 %mul21, %40
  %idxprom23 = zext i32 %add22 to i64
  %41 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %41, i64 %idxprom23
  store i8 %conv19, i8* %arrayidx24, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.9
  %42 = load i32, i32* %xDir, align 4
  %cmp25 = icmp eq i32 %42, -1
  br i1 %cmp25, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %43 = load i32, i32* %x, align 4
  %44 = load i32, i32* %leftBound, align 4
  %cmp27 = icmp eq i32 %43, %44
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true
  %45 = load i32, i32* %leftBound, align 4
  %sub30 = sub nsw i32 %45, 1
  %call31 = call i32 @imax(i32 %sub30, i32 0)
  store i32 %call31, i32* %leftBound, align 4
  %46 = load i32, i32* %leftBound, align 4
  store i32 %46, i32* %x, align 4
  store i32 0, i32* %xDir, align 4
  %47 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag32 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %47, i32 0, i32 13
  %48 = load i32, i32* %slice_group_change_direction_flag32, align 4
  %mul33 = mul i32 2, %48
  %sub34 = sub i32 %mul33, 1
  store i32 %sub34, i32* %yDir, align 4
  br label %if.end.80

if.else:                                          ; preds = %land.lhs.true, %if.end
  %49 = load i32, i32* %xDir, align 4
  %cmp35 = icmp eq i32 %49, 1
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.48

land.lhs.true.37:                                 ; preds = %if.else
  %50 = load i32, i32* %x, align 4
  %51 = load i32, i32* %rightBound, align 4
  %cmp38 = icmp eq i32 %50, %51
  br i1 %cmp38, label %if.then.40, label %if.else.48

if.then.40:                                       ; preds = %land.lhs.true.37
  %52 = load i32, i32* %rightBound, align 4
  %add41 = add nsw i32 %52, 1
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 116
  %54 = load i32, i32* %PicWidthInMbs42, align 4
  %sub43 = sub nsw i32 %54, 1
  %call44 = call i32 @imin(i32 %add41, i32 %sub43)
  store i32 %call44, i32* %rightBound, align 4
  %55 = load i32, i32* %rightBound, align 4
  store i32 %55, i32* %x, align 4
  store i32 0, i32* %xDir, align 4
  %56 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %56, i32 0, i32 13
  %57 = load i32, i32* %slice_group_change_direction_flag45, align 4
  %mul46 = mul i32 2, %57
  %sub47 = sub i32 1, %mul46
  store i32 %sub47, i32* %yDir, align 4
  br label %if.end.79

if.else.48:                                       ; preds = %land.lhs.true.37, %if.else
  %58 = load i32, i32* %yDir, align 4
  %cmp49 = icmp eq i32 %58, -1
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.60

land.lhs.true.51:                                 ; preds = %if.else.48
  %59 = load i32, i32* %y, align 4
  %60 = load i32, i32* %topBound, align 4
  %cmp52 = icmp eq i32 %59, %60
  br i1 %cmp52, label %if.then.54, label %if.else.60

if.then.54:                                       ; preds = %land.lhs.true.51
  %61 = load i32, i32* %topBound, align 4
  %sub55 = sub nsw i32 %61, 1
  %call56 = call i32 @imax(i32 %sub55, i32 0)
  store i32 %call56, i32* %topBound, align 4
  %62 = load i32, i32* %topBound, align 4
  store i32 %62, i32* %y, align 4
  %63 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag57 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %63, i32 0, i32 13
  %64 = load i32, i32* %slice_group_change_direction_flag57, align 4
  %mul58 = mul i32 2, %64
  %sub59 = sub i32 1, %mul58
  store i32 %sub59, i32* %xDir, align 4
  store i32 0, i32* %yDir, align 4
  br label %if.end.78

if.else.60:                                       ; preds = %land.lhs.true.51, %if.else.48
  %65 = load i32, i32* %yDir, align 4
  %cmp61 = icmp eq i32 %65, 1
  br i1 %cmp61, label %land.lhs.true.63, label %if.else.74

land.lhs.true.63:                                 ; preds = %if.else.60
  %66 = load i32, i32* %y, align 4
  %67 = load i32, i32* %bottomBound, align 4
  %cmp64 = icmp eq i32 %66, %67
  br i1 %cmp64, label %if.then.66, label %if.else.74

if.then.66:                                       ; preds = %land.lhs.true.63
  %68 = load i32, i32* %bottomBound, align 4
  %add67 = add nsw i32 %68, 1
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicHeightInMapUnits68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 117
  %70 = load i32, i32* %PicHeightInMapUnits68, align 4
  %sub69 = sub nsw i32 %70, 1
  %call70 = call i32 @imin(i32 %add67, i32 %sub69)
  store i32 %call70, i32* %bottomBound, align 4
  %71 = load i32, i32* %bottomBound, align 4
  store i32 %71, i32* %y, align 4
  %72 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag71 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %72, i32 0, i32 13
  %73 = load i32, i32* %slice_group_change_direction_flag71, align 4
  %mul72 = mul i32 2, %73
  %sub73 = sub i32 %mul72, 1
  store i32 %sub73, i32* %xDir, align 4
  store i32 0, i32* %yDir, align 4
  br label %if.end.77

if.else.74:                                       ; preds = %land.lhs.true.63, %if.else.60
  %74 = load i32, i32* %x, align 4
  %75 = load i32, i32* %xDir, align 4
  %add75 = add nsw i32 %74, %75
  store i32 %add75, i32* %x, align 4
  %76 = load i32, i32* %y, align 4
  %77 = load i32, i32* %yDir, align 4
  %add76 = add nsw i32 %76, %77
  store i32 %add76, i32* %y, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.66
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.54
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.40
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.29
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %78 = load i32, i32* %mapUnitVacant, align 4
  %79 = load i32, i32* %k, align 4
  %add82 = add i32 %79, %78
  store i32 %add82, i32* %k, align 4
  br label %for.cond.7

for.end.83:                                       ; preds = %for.cond.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType4MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %mapUnitsInSliceGroup0 = alloca i32, align 4
  %sizeOfUpperLeftGroup = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 14
  %1 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add = add i32 %1, 1
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 140
  %3 = load i32, i32* %slice_group_change_cycle, align 4
  %mul = mul i32 %add, %3
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %call = call i32 @imin(i32 %mul, i32 %4)
  store i32 %call, i32* %mapUnitsInSliceGroup0, align 4
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 13
  %6 = load i32, i32* %slice_group_change_direction_flag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* @PicSizeInMapUnits, align 4
  %8 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  %sub = sub i32 %7, %8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %sizeOfUpperLeftGroup, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %sizeOfUpperLeftGroup, align 4
  %cmp1 = icmp ult i32 %12, %13
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %14 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag2 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %14, i32 0, i32 13
  %15 = load i32, i32* %slice_group_change_direction_flag2, align 4
  %conv = trunc i32 %15 to i8
  %16 = load i32, i32* %i, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag3 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %18, i32 0, i32 13
  %19 = load i32, i32* %slice_group_change_direction_flag3, align 4
  %sub4 = sub i32 1, %19
  %conv5 = trunc i32 %sub4 to i8
  %20 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %20 to i64
  %21 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %21, i64 %idxprom6
  store i8 %conv5, i8* %arrayidx7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType5MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %mapUnitsInSliceGroup0 = alloca i32, align 4
  %sizeOfUpperLeftGroup = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 14
  %1 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add = add i32 %1, 1
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 140
  %3 = load i32, i32* %slice_group_change_cycle, align 4
  %mul = mul i32 %add, %3
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %call = call i32 @imin(i32 %mul, i32 %4)
  store i32 %call, i32* %mapUnitsInSliceGroup0, align 4
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 13
  %6 = load i32, i32* %slice_group_change_direction_flag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* @PicSizeInMapUnits, align 4
  %8 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  %sub = sub i32 %7, %8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %mapUnitsInSliceGroup0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %sizeOfUpperLeftGroup, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %cond.end
  %10 = load i32, i32* %j, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 116
  %12 = load i32, i32* %PicWidthInMbs, align 4
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 117
  %15 = load i32, i32* %PicHeightInMapUnits, align 4
  %cmp2 = icmp ult i32 %13, %15
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %16 = load i32, i32* %k, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %k, align 4
  %17 = load i32, i32* %sizeOfUpperLeftGroup, align 4
  %cmp4 = icmp ult i32 %16, %17
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %18 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag5 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %18, i32 0, i32 13
  %19 = load i32, i32* %slice_group_change_direction_flag5, align 4
  %conv = trunc i32 %19 to i8
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 116
  %22 = load i32, i32* %PicWidthInMbs6, align 4
  %mul7 = mul i32 %20, %22
  %23 = load i32, i32* %j, align 4
  %add8 = add i32 %mul7, %23
  %idxprom = zext i32 %add8 to i64
  %24 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %for.body.3
  %25 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %25, i32 0, i32 13
  %26 = load i32, i32* %slice_group_change_direction_flag9, align 4
  %sub10 = sub i32 1, %26
  %conv11 = trunc i32 %sub10 to i8
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicWidthInMbs12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 116
  %29 = load i32, i32* %PicWidthInMbs12, align 4
  %mul13 = mul i32 %27, %29
  %30 = load i32, i32* %j, align 4
  %add14 = add i32 %mul13, %30
  %idxprom15 = zext i32 %add14 to i64
  %31 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %31, i64 %idxprom15
  store i8 %conv11, i8* %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %i, align 4
  %inc17 = add i32 %32, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %33 = load i32, i32* %j, align 4
  %inc19 = add i32 %33, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FmoGenerateType6MapUnitMap(%struct.ImageParameters* %img, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @PicSizeInMapUnits, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %3, i32 0, i32 16
  %4 = load i8*, i8** %slice_group_id, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %6 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %6 to i64
  %7 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom1
  store i8 %5, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
