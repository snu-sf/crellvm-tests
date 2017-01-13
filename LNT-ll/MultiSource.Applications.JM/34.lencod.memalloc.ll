; ModuleID = './MultiSource.Applications.JM/34.lencod.memalloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgTopField\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgBotField\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"get_mem2Dpel: array2D\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"get_mem3Dpel: array3D\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"get_mem4Dpel: array4D\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"get_mem5Dpel: array5D\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"free_mem2Dpel: trying to free unused memory\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"free_mem3Dpel: trying to free unused memory\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"free_mem4Dpel: trying to free unused memory\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"free_mem5Dpel: trying to free unused memory\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"get_mem2D: array2D\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"get_mem2Dint: array2D\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"get_mem2Dint64: array2D\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"get_mem3D: array3D\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"get_mem3Dint: array3D\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"get_mem3Dint64: array3D\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"get_mem4Dint: array4D\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"get_mem5Dint: array5D\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"free_mem2D: trying to free unused memory\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"free_mem2Dint: trying to free unused memory\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"free_mem2Dint64: trying to free unused memory\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"free_mem3D: trying to free unused memory\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"free_mem3Dint: trying to free unused memory\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"free_mem3Dint64: trying to free unused memory\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"free_mem4Dint: trying to free unused memory\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"free_mem5Dint: trying to free unused memory\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [30 x i8] c"Could not allocate memory: %s\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"get_mem2Dshort: array2D\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"get_mem3Dshort: array3D\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"get_mem4Dshort: array4D\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"get_mem5Dshort: array5D\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"get_mem6Dshort: array6D\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"free_mem2Dshort: trying to free unused memory\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"free_mem3Dshort: trying to free unused memory\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"free_mem4Dshort: trying to free unused memory\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"free_mem5Dshort: trying to free unused memory\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"free_mem6Dshort: trying to free unused memory\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"get_mem2Ddouble: array2D\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"get_mem2Ddb_offset: array2D\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"get_mem3Ddb_offset: array3D\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"get_mem3Dint_offset: array3D\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"free_mem2Ddouble: trying to free unused memory\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"free_mem2Ddb_offset: trying to free unused memory\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"free_mem3Ddb_offset: trying to free unused memory\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"free_mem3Dint_offset: trying to free unused memory\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"free_mem2Dint_offset: trying to free unused memory\00", align 1
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
define i32 @init_top_bot_planes(i16** %imgFrame, i32 %rows, i32 %columns, i16*** %imgTopField, i16*** %imgBotField) #0 {
entry:
  %imgFrame.addr = alloca i16**, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %imgTopField.addr = alloca i16***, align 8
  %imgBotField.addr = alloca i16***, align 8
  %i = alloca i32, align 4
  store i16** %imgFrame, i16*** %imgFrame.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i16*** %imgTopField, i16**** %imgTopField.addr, align 8
  store i16*** %imgBotField, i16**** %imgBotField.addr, align 8
  %0 = load i32, i32* %rows.addr, align 4
  %div = sdiv i32 %0, 2
  %conv = sext i32 %div to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %imgTopField.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %div2 = sdiv i32 %3, 2
  %conv3 = sext i32 %div2 to i64
  %call4 = call noalias i8* @calloc(i64 %conv3, i64 8) #3
  %4 = bitcast i8* %call4 to i16**
  %5 = load i16***, i16**** %imgBotField.addr, align 8
  store i16** %4, i16*** %5, align 8
  %cmp5 = icmp eq i16** %4, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rows.addr, align 4
  %div9 = sdiv i32 %7, 2
  %cmp10 = icmp slt i32 %6, %div9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %8
  %idxprom = sext i32 %mul to i64
  %9 = load i16**, i16*** %imgFrame.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %9, i64 %idxprom
  %10 = load i16*, i16** %arrayidx, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load i16***, i16**** %imgTopField.addr, align 8
  %13 = load i16**, i16*** %12, align 8
  %arrayidx13 = getelementptr inbounds i16*, i16** %13, i64 %idxprom12
  store i16* %10, i16** %arrayidx13, align 8
  %14 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 2, %14
  %add = add nsw i32 %mul14, 1
  %idxprom15 = sext i32 %add to i64
  %15 = load i16**, i16*** %imgFrame.addr, align 8
  %arrayidx16 = getelementptr inbounds i16*, i16** %15, i64 %idxprom15
  %16 = load i16*, i16** %arrayidx16, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i16***, i16**** %imgBotField.addr, align 8
  %19 = load i16**, i16*** %18, align 8
  %arrayidx18 = getelementptr inbounds i16*, i16** %19, i64 %idxprom17
  store i16* %16, i16** %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %rows.addr, align 4
  %conv19 = sext i32 %21 to i64
  %mul20 = mul i64 %conv19, 8
  %conv21 = trunc i64 %mul20 to i32
  ret i32 %conv21
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @no_mem_exit(i8* %where) #0 {
entry:
  %where.addr = alloca i8*, align 8
  store i8* %where, i8** %where.addr, align 8
  %0 = load i8*, i8** %where.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %0) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_top_bot_planes(i16** %imgTopField, i16** %imgBotField) #0 {
entry:
  %imgTopField.addr = alloca i16**, align 8
  %imgBotField.addr = alloca i16**, align 8
  store i16** %imgTopField, i16*** %imgTopField.addr, align 8
  store i16** %imgBotField, i16*** %imgBotField.addr, align 8
  %0 = load i16**, i16*** %imgTopField.addr, align 8
  %1 = bitcast i16** %0 to i8*
  call void @free(i8* %1) #3
  %2 = load i16**, i16*** %imgBotField.addr, align 8
  %3 = bitcast i16** %2 to i8*
  call void @free(i8* %3) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @get_mem2Dpel(i16*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %array2D.addr = alloca i16***, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16*** %array2D, i16**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %array2D.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %5 = bitcast i8* %call3 to i16*
  %6 = load i16***, i16**** %array2D.addr, align 8
  %7 = load i16**, i16*** %6, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  store i16* %5, i16** %arrayidx, align 8
  %cmp4 = icmp eq i16* %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i16***, i16**** %array2D.addr, align 8
  %12 = load i16**, i16*** %11, align 8
  %arrayidx10 = getelementptr inbounds i16*, i16** %12, i64 %idxprom
  %13 = load i16*, i16** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i16, i16* %13, i64 %idx.ext
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i16***, i16**** %array2D.addr, align 8
  %17 = load i16**, i16*** %16, align 8
  %arrayidx12 = getelementptr inbounds i16*, i16** %17, i64 %idxprom11
  store i16* %add.ptr, i16** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i32
  ret i32 %conv16
}

; Function Attrs: nounwind uwtable
define i32 @get_mem3Dpel(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %array3D.addr = alloca i16****, align 8
  %frames.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16**** %array3D, i16***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16***
  %2 = load i16****, i16***** %array3D.addr, align 8
  store i16*** %1, i16**** %2, align 8
  %cmp = icmp eq i16*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16****, i16***** %array3D.addr, align 8
  %6 = load i16***, i16**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16**, i16*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dpel(i16*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  ret i32 %conv8
}

; Function Attrs: nounwind uwtable
define i32 @get_mem4Dpel(i16***** %array4D, i32 %sub_x, i32 %sub_y, i32 %rows, i32 %columns) #0 {
entry:
  %array4D.addr = alloca i16*****, align 8
  %sub_x.addr = alloca i32, align 4
  %sub_y.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16***** %array4D, i16****** %array4D.addr, align 8
  store i32 %sub_x, i32* %sub_x.addr, align 4
  store i32 %sub_y, i32* %sub_y.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %sub_x.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16****
  %2 = load i16*****, i16****** %array4D.addr, align 8
  store i16**** %1, i16***** %2, align 8
  %cmp = icmp eq i16**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %sub_x.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*****, i16****** %array4D.addr, align 8
  %6 = load i16****, i16***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16***, i16**** %6, i64 %idx.ext
  %8 = load i32, i32* %sub_y.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dpel(i16**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %sub_x.addr, align 4
  %13 = load i32, i32* %sub_y.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 2
  %conv9 = trunc i64 %mul8 to i32
  ret i32 %conv9
}

; Function Attrs: nounwind uwtable
define i32 @get_mem5Dpel(i16****** %array5D, i32 %dims, i32 %sub_x, i32 %sub_y, i32 %rows, i32 %columns) #0 {
entry:
  %array5D.addr = alloca i16******, align 8
  %dims.addr = alloca i32, align 4
  %sub_x.addr = alloca i32, align 4
  %sub_y.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16****** %array5D, i16******* %array5D.addr, align 8
  store i32 %dims, i32* %dims.addr, align 4
  store i32 %sub_x, i32* %sub_x.addr, align 4
  store i32 %sub_y, i32* %sub_y.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %dims.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16*****
  %2 = load i16******, i16******* %array5D.addr, align 8
  store i16***** %1, i16****** %2, align 8
  %cmp = icmp eq i16***** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %dims.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16******, i16******* %array5D.addr, align 8
  %6 = load i16*****, i16****** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16****, i16***** %6, i64 %idx.ext
  %8 = load i32, i32* %sub_x.addr, align 4
  %9 = load i32, i32* %sub_y.addr, align 4
  %10 = load i32, i32* %rows.addr, align 4
  %11 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem4Dpel(i16***** %add.ptr, i32 %8, i32 %9, i32 %10, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %dims.addr, align 4
  %14 = load i32, i32* %sub_x.addr, align 4
  %mul = mul nsw i32 %13, %14
  %15 = load i32, i32* %sub_y.addr, align 4
  %mul5 = mul nsw i32 %mul, %15
  %16 = load i32, i32* %rows.addr, align 4
  %mul6 = mul nsw i32 %mul5, %16
  %17 = load i32, i32* %columns.addr, align 4
  %mul7 = mul nsw i32 %mul6, %17
  %conv8 = sext i32 %mul7 to i64
  %mul9 = mul i64 %conv8, 2
  %conv10 = trunc i64 %mul9 to i32
  ret i32 %conv10
}

; Function Attrs: nounwind uwtable
define void @free_mem2Dpel(i16** %array2D) #0 {
entry:
  %array2D.addr = alloca i16**, align 8
  store i16** %array2D, i16*** %array2D.addr, align 8
  %0 = load i16**, i16*** %array2D.addr, align 8
  %tobool = icmp ne i16** %0, null
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %1 = load i16**, i16*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 0
  %2 = load i16*, i16** %arrayidx, align 8
  %tobool1 = icmp ne i16* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i16**, i16*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds i16*, i16** %3, i64 0
  %4 = load i16*, i16** %arrayidx3, align 8
  %5 = bitcast i16* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %6 = load i16**, i16*** %array2D.addr, align 8
  %7 = bitcast i16** %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end.5

if.else.4:                                        ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i32 100)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.end
  ret void
}

declare void @error(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @free_mem3Dpel(i16*** %array3D, i32 %frames) #0 {
entry:
  %array3D.addr = alloca i16***, align 8
  %frames.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16*** %array3D, i16**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16***, i16**** %array3D.addr, align 8
  %tobool = icmp ne i16*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16***, i16**** %array3D.addr, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %4, i64 %idxprom
  %5 = load i16**, i16*** %arrayidx, align 8
  call void @free_mem2Dpel(i16** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16***, i16**** %array3D.addr, align 8
  %8 = bitcast i16*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem4Dpel(i16**** %array4D, i32 %sub_x, i32 %sub_y) #0 {
entry:
  %array4D.addr = alloca i16****, align 8
  %sub_x.addr = alloca i32, align 4
  %sub_y.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16**** %array4D, i16***** %array4D.addr, align 8
  store i32 %sub_x, i32* %sub_x.addr, align 4
  store i32 %sub_y, i32* %sub_y.addr, align 4
  %0 = load i16****, i16***** %array4D.addr, align 8
  %tobool = icmp ne i16**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %sub_x.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16****, i16***** %array4D.addr, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %4, i64 %idxprom
  %5 = load i16***, i16**** %arrayidx, align 8
  %6 = load i32, i32* %sub_y.addr, align 4
  call void @free_mem3Dpel(i16*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16****, i16***** %array4D.addr, align 8
  %9 = bitcast i16**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem5Dpel(i16***** %array5D, i32 %dims, i32 %sub_x, i32 %sub_y) #0 {
entry:
  %array5D.addr = alloca i16*****, align 8
  %dims.addr = alloca i32, align 4
  %sub_x.addr = alloca i32, align 4
  %sub_y.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16***** %array5D, i16****** %array5D.addr, align 8
  store i32 %dims, i32* %dims.addr, align 4
  store i32 %sub_x, i32* %sub_x.addr, align 4
  store i32 %sub_y, i32* %sub_y.addr, align 4
  %0 = load i16*****, i16****** %array5D.addr, align 8
  %tobool = icmp ne i16***** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %dims.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16*****, i16****** %array5D.addr, align 8
  %arrayidx = getelementptr inbounds i16****, i16***** %4, i64 %idxprom
  %5 = load i16****, i16***** %arrayidx, align 8
  %6 = load i32, i32* %sub_x.addr, align 4
  %7 = load i32, i32* %sub_y.addr, align 4
  call void @free_mem4Dpel(i16**** %5, i32 %6, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i16*****, i16****** %array5D.addr, align 8
  %10 = bitcast i16***** %9 to i8*
  call void @free(i8* %10) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_mem2D(i8*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %array2D.addr = alloca i8***, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8*** %array2D, i8**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i8**
  %2 = load i8***, i8**** %array2D.addr, align 8
  store i8** %1, i8*** %2, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %columns.addr, align 4
  %4 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 1) #3
  %5 = load i8***, i8**** %array2D.addr, align 8
  %6 = load i8**, i8*** %5, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  store i8* %call3, i8** %arrayidx, align 8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %10 = load i8***, i8**** %array2D.addr, align 8
  %11 = load i8**, i8*** %10, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx10, align 8
  %13 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i8***, i8**** %array2D.addr, align 8
  %16 = load i8**, i8*** %15, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %16, i64 %idxprom11
  store i8* %add.ptr, i8** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %rows.addr, align 4
  %19 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %18, %19
  ret i32 %mul13
}

; Function Attrs: nounwind uwtable
define i32 @get_mem2Dint(i32*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %array2D.addr = alloca i32***, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32*** %array2D, i32**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32**
  %2 = load i32***, i32**** %array2D.addr, align 8
  store i32** %1, i32*** %2, align 8
  %cmp = icmp eq i32** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 4) #3
  %5 = bitcast i8* %call3 to i32*
  %6 = load i32***, i32**** %array2D.addr, align 8
  %7 = load i32**, i32*** %6, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 0
  store i32* %5, i32** %arrayidx, align 8
  %cmp4 = icmp eq i32* %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i32***, i32**** %array2D.addr, align 8
  %12 = load i32**, i32*** %11, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %12, i64 %idxprom
  %13 = load i32*, i32** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i32***, i32**** %array2D.addr, align 8
  %17 = load i32**, i32*** %16, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %17, i64 %idxprom11
  store i32* %add.ptr, i32** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 4
  %conv16 = trunc i64 %mul15 to i32
  ret i32 %conv16
}

; Function Attrs: nounwind uwtable
define i32 @get_mem2Dint64(i64*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %array2D.addr = alloca i64***, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i64*** %array2D, i64**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i64**
  %2 = load i64***, i64**** %array2D.addr, align 8
  store i64** %1, i64*** %2, align 8
  %cmp = icmp eq i64** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 8) #3
  %5 = bitcast i8* %call3 to i64*
  %6 = load i64***, i64**** %array2D.addr, align 8
  %7 = load i64**, i64*** %6, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %7, i64 0
  store i64* %5, i64** %arrayidx, align 8
  %cmp4 = icmp eq i64* %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i64***, i64**** %array2D.addr, align 8
  %12 = load i64**, i64*** %11, align 8
  %arrayidx10 = getelementptr inbounds i64*, i64** %12, i64 %idxprom
  %13 = load i64*, i64** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i64, i64* %13, i64 %idx.ext
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i64***, i64**** %array2D.addr, align 8
  %17 = load i64**, i64*** %16, align 8
  %arrayidx12 = getelementptr inbounds i64*, i64** %17, i64 %idxprom11
  store i64* %add.ptr, i64** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 8
  %conv16 = trunc i64 %mul15 to i32
  ret i32 %conv16
}

; Function Attrs: nounwind uwtable
define i32 @get_mem3D(i8**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %array3D.addr = alloca i8****, align 8
  %frames.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i8**** %array3D, i8***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i8***
  %2 = load i8****, i8***** %array3D.addr, align 8
  store i8*** %1, i8**** %2, align 8
  %cmp = icmp eq i8*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8****, i8***** %array3D.addr, align 8
  %6 = load i8***, i8**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8**, i8*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2D(i8*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  ret i32 %mul5
}

; Function Attrs: nounwind uwtable
define i32 @get_mem3Dint(i32**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %array3D.addr = alloca i32****, align 8
  %frames.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32**** %array3D, i32***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32***
  %2 = load i32****, i32***** %array3D.addr, align 8
  store i32*** %1, i32**** %2, align 8
  %cmp = icmp eq i32*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32****, i32***** %array3D.addr, align 8
  %6 = load i32***, i32**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32**, i32*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dint(i32*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 4
  %conv8 = trunc i64 %mul7 to i32
  ret i32 %conv8
}

; Function Attrs: nounwind uwtable
define i32 @get_mem3Dint64(i64**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %array3D.addr = alloca i64****, align 8
  %frames.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i64**** %array3D, i64***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i64***
  %2 = load i64****, i64***** %array3D.addr, align 8
  store i64*** %1, i64**** %2, align 8
  %cmp = icmp eq i64*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64****, i64***** %array3D.addr, align 8
  %6 = load i64***, i64**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i64**, i64*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dint64(i64*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 8
  %conv8 = trunc i64 %mul7 to i32
  ret i32 %conv8
}

; Function Attrs: nounwind uwtable
define i32 @get_mem4Dint(i32***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %array4D.addr = alloca i32*****, align 8
  %idx.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32***** %array4D, i32****** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32****
  %2 = load i32*****, i32****** %array4D.addr, align 8
  store i32**** %1, i32***** %2, align 8
  %cmp = icmp eq i32**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*****, i32****** %array4D.addr, align 8
  %6 = load i32****, i32***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32***, i32**** %6, i64 %idx.ext
  %8 = load i32, i32* %frames.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dint(i32**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* %frames.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 4
  %conv9 = trunc i64 %mul8 to i32
  ret i32 %conv9
}

; Function Attrs: nounwind uwtable
define i32 @get_mem5Dint(i32****** %array5D, i32 %refs, i32 %blocktype, i32 %rows, i32 %columns, i32 %component) #0 {
entry:
  %array5D.addr = alloca i32******, align 8
  %refs.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %component.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32****** %array5D, i32******* %array5D.addr, align 8
  store i32 %refs, i32* %refs.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i32 %component, i32* %component.addr, align 4
  %0 = load i32, i32* %refs.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32*****
  %2 = load i32******, i32******* %array5D.addr, align 8
  store i32***** %1, i32****** %2, align 8
  %cmp = icmp eq i32***** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %refs.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32******, i32******* %array5D.addr, align 8
  %6 = load i32*****, i32****** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32****, i32***** %6, i64 %idx.ext
  %8 = load i32, i32* %blocktype.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %11 = load i32, i32* %component.addr, align 4
  %call4 = call i32 @get_mem4Dint(i32***** %add.ptr, i32 %8, i32 %9, i32 %10, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %refs.addr, align 4
  %14 = load i32, i32* %blocktype.addr, align 4
  %mul = mul nsw i32 %13, %14
  %15 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %15
  %16 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %16
  %17 = load i32, i32* %component.addr, align 4
  %mul7 = mul nsw i32 %mul6, %17
  %conv8 = sext i32 %mul7 to i64
  %mul9 = mul i64 %conv8, 4
  %conv10 = trunc i64 %mul9 to i32
  ret i32 %conv10
}

; Function Attrs: nounwind uwtable
define void @free_mem2D(i8** %array2D) #0 {
entry:
  %array2D.addr = alloca i8**, align 8
  store i8** %array2D, i8*** %array2D.addr, align 8
  %0 = load i8**, i8*** %array2D.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i8**, i8*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx3, align 8
  call void @free(i8* %4) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %5 = load i8**, i8*** %array2D.addr, align 8
  %6 = bitcast i8** %5 to i8*
  call void @free(i8* %6) #3
  br label %if.end.5

if.else.4:                                        ; preds = %entry
  call void @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i32 100)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem2Dint(i32** %array2D) #0 {
entry:
  %array2D.addr = alloca i32**, align 8
  store i32** %array2D, i32*** %array2D.addr, align 8
  %0 = load i32**, i32*** %array2D.addr, align 8
  %tobool = icmp ne i32** %0, null
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %1 = load i32**, i32*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i32**, i32*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %3, i64 0
  %4 = load i32*, i32** %arrayidx3, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %6 = load i32**, i32*** %array2D.addr, align 8
  %7 = bitcast i32** %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end.5

if.else.4:                                        ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i32 100)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem2Dint64(i64** %array2D) #0 {
entry:
  %array2D.addr = alloca i64**, align 8
  store i64** %array2D, i64*** %array2D.addr, align 8
  %0 = load i64**, i64*** %array2D.addr, align 8
  %tobool = icmp ne i64** %0, null
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %1 = load i64**, i64*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %1, i64 0
  %2 = load i64*, i64** %arrayidx, align 8
  %tobool1 = icmp ne i64* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i64**, i64*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds i64*, i64** %3, i64 0
  %4 = load i64*, i64** %arrayidx3, align 8
  %5 = bitcast i64* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %6 = load i64**, i64*** %array2D.addr, align 8
  %7 = bitcast i64** %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end.5

if.else.4:                                        ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i32 0, i32 0), i32 100)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem3D(i8*** %array3D, i32 %frames) #0 {
entry:
  %array3D.addr = alloca i8***, align 8
  %frames.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8*** %array3D, i8**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i8***, i8**** %array3D.addr, align 8
  %tobool = icmp ne i8*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8***, i8**** %array3D.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %4, i64 %idxprom
  %5 = load i8**, i8*** %arrayidx, align 8
  call void @free_mem2D(i8** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8***, i8**** %array3D.addr, align 8
  %8 = bitcast i8*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem3Dint(i32*** %array3D, i32 %frames) #0 {
entry:
  %array3D.addr = alloca i32***, align 8
  %frames.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32*** %array3D, i32**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i32***, i32**** %array3D.addr, align 8
  %tobool = icmp ne i32*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32***, i32**** %array3D.addr, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %4, i64 %idxprom
  %5 = load i32**, i32*** %arrayidx, align 8
  call void @free_mem2Dint(i32** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32***, i32**** %array3D.addr, align 8
  %8 = bitcast i32*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem3Dint64(i64*** %array3D, i32 %frames) #0 {
entry:
  %array3D.addr = alloca i64***, align 8
  %frames.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i64*** %array3D, i64**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i64***, i64**** %array3D.addr, align 8
  %tobool = icmp ne i64*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i64***, i64**** %array3D.addr, align 8
  %arrayidx = getelementptr inbounds i64**, i64*** %4, i64 %idxprom
  %5 = load i64**, i64*** %arrayidx, align 8
  call void @free_mem2Dint64(i64** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64***, i64**** %array3D.addr, align 8
  %8 = bitcast i64*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem4Dint(i32**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %array4D.addr = alloca i32****, align 8
  %idx.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32**** %array4D, i32***** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i32****, i32***** %array4D.addr, align 8
  %tobool = icmp ne i32**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32****, i32***** %array4D.addr, align 8
  %arrayidx = getelementptr inbounds i32***, i32**** %4, i64 %idxprom
  %5 = load i32***, i32**** %arrayidx, align 8
  %6 = load i32, i32* %frames.addr, align 4
  call void @free_mem3Dint(i32*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32****, i32***** %array4D.addr, align 8
  %9 = bitcast i32**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem5Dint(i32***** %array5D, i32 %refs, i32 %blocktype, i32 %height) #0 {
entry:
  %array5D.addr = alloca i32*****, align 8
  %refs.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32***** %array5D, i32****** %array5D.addr, align 8
  store i32 %refs, i32* %refs.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32*****, i32****** %array5D.addr, align 8
  %tobool = icmp ne i32***** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %refs.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*****, i32****** %array5D.addr, align 8
  %arrayidx = getelementptr inbounds i32****, i32***** %4, i64 %idxprom
  %5 = load i32****, i32***** %arrayidx, align 8
  %6 = load i32, i32* %blocktype.addr, align 4
  %7 = load i32, i32* %height.addr, align 4
  call void @free_mem4Dint(i32**** %5, i32 %6, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32*****, i32****** %array5D.addr, align 8
  %10 = bitcast i32***** %9 to i8*
  call void @free(i8* %10) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @get_mem2Dshort(i16*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %array2D.addr = alloca i16***, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16*** %array2D, i16**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %array2D.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %5 = bitcast i8* %call3 to i16*
  %6 = load i16***, i16**** %array2D.addr, align 8
  %7 = load i16**, i16*** %6, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  store i16* %5, i16** %arrayidx, align 8
  %cmp4 = icmp eq i16* %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i16***, i16**** %array2D.addr, align 8
  %12 = load i16**, i16*** %11, align 8
  %arrayidx10 = getelementptr inbounds i16*, i16** %12, i64 %idxprom
  %13 = load i16*, i16** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i16, i16* %13, i64 %idx.ext
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i16***, i16**** %array2D.addr, align 8
  %17 = load i16**, i16*** %16, align 8
  %arrayidx12 = getelementptr inbounds i16*, i16** %17, i64 %idxprom11
  store i16* %add.ptr, i16** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i32
  ret i32 %conv16
}

; Function Attrs: nounwind uwtable
define i32 @get_mem3Dshort(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %array3D.addr = alloca i16****, align 8
  %frames.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16**** %array3D, i16***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16***
  %2 = load i16****, i16***** %array3D.addr, align 8
  store i16*** %1, i16**** %2, align 8
  %cmp = icmp eq i16*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16****, i16***** %array3D.addr, align 8
  %6 = load i16***, i16**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16**, i16*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dshort(i16*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  ret i32 %conv8
}

; Function Attrs: nounwind uwtable
define i32 @get_mem4Dshort(i16***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %array4D.addr = alloca i16*****, align 8
  %idx.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16***** %array4D, i16****** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16****
  %2 = load i16*****, i16****** %array4D.addr, align 8
  store i16**** %1, i16***** %2, align 8
  %cmp = icmp eq i16**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*****, i16****** %array4D.addr, align 8
  %6 = load i16****, i16***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16***, i16**** %6, i64 %idx.ext
  %8 = load i32, i32* %frames.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dshort(i16**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* %frames.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 2
  %conv9 = trunc i64 %mul8 to i32
  ret i32 %conv9
}

; Function Attrs: nounwind uwtable
define i32 @get_mem5Dshort(i16****** %array5D, i32 %refs, i32 %blocktype, i32 %rows, i32 %columns, i32 %component) #0 {
entry:
  %array5D.addr = alloca i16******, align 8
  %refs.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %component.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16****** %array5D, i16******* %array5D.addr, align 8
  store i32 %refs, i32* %refs.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i32 %component, i32* %component.addr, align 4
  %0 = load i32, i32* %refs.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16*****
  %2 = load i16******, i16******* %array5D.addr, align 8
  store i16***** %1, i16****** %2, align 8
  %cmp = icmp eq i16***** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %refs.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16******, i16******* %array5D.addr, align 8
  %6 = load i16*****, i16****** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16****, i16***** %6, i64 %idx.ext
  %8 = load i32, i32* %blocktype.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %11 = load i32, i32* %component.addr, align 4
  %call4 = call i32 @get_mem4Dshort(i16***** %add.ptr, i32 %8, i32 %9, i32 %10, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %refs.addr, align 4
  %14 = load i32, i32* %blocktype.addr, align 4
  %mul = mul nsw i32 %13, %14
  %15 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %15
  %16 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %16
  %17 = load i32, i32* %component.addr, align 4
  %mul7 = mul nsw i32 %mul6, %17
  %conv8 = sext i32 %mul7 to i64
  %mul9 = mul i64 %conv8, 2
  %conv10 = trunc i64 %mul9 to i32
  ret i32 %conv10
}

; Function Attrs: nounwind uwtable
define i32 @get_mem6Dshort(i16******* %array6D, i32 %list, i32 %refs, i32 %blocktype, i32 %rows, i32 %columns, i32 %component) #0 {
entry:
  %array6D.addr = alloca i16*******, align 8
  %list.addr = alloca i32, align 4
  %refs.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %component.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16******* %array6D, i16******** %array6D.addr, align 8
  store i32 %list, i32* %list.addr, align 4
  store i32 %refs, i32* %refs.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i32 %component, i32* %component.addr, align 4
  %0 = load i32, i32* %list.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16******
  %2 = load i16*******, i16******** %array6D.addr, align 8
  store i16****** %1, i16******* %2, align 8
  %cmp = icmp eq i16****** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %list.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*******, i16******** %array6D.addr, align 8
  %6 = load i16******, i16******* %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16*****, i16****** %6, i64 %idx.ext
  %8 = load i32, i32* %refs.addr, align 4
  %9 = load i32, i32* %blocktype.addr, align 4
  %10 = load i32, i32* %rows.addr, align 4
  %11 = load i32, i32* %columns.addr, align 4
  %12 = load i32, i32* %component.addr, align 4
  %call4 = call i32 @get_mem5Dshort(i16****** %add.ptr, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %list.addr, align 4
  %15 = load i32, i32* %refs.addr, align 4
  %mul = mul nsw i32 %14, %15
  %16 = load i32, i32* %blocktype.addr, align 4
  %mul5 = mul nsw i32 %mul, %16
  %17 = load i32, i32* %rows.addr, align 4
  %mul6 = mul nsw i32 %mul5, %17
  %18 = load i32, i32* %columns.addr, align 4
  %mul7 = mul nsw i32 %mul6, %18
  %19 = load i32, i32* %component.addr, align 4
  %mul8 = mul nsw i32 %mul7, %19
  %conv9 = sext i32 %mul8 to i64
  %mul10 = mul i64 %conv9, 2
  %conv11 = trunc i64 %mul10 to i32
  ret i32 %conv11
}

; Function Attrs: nounwind uwtable
define void @free_mem2Dshort(i16** %array2D) #0 {
entry:
  %array2D.addr = alloca i16**, align 8
  store i16** %array2D, i16*** %array2D.addr, align 8
  %0 = load i16**, i16*** %array2D.addr, align 8
  %tobool = icmp ne i16** %0, null
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %1 = load i16**, i16*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 0
  %2 = load i16*, i16** %arrayidx, align 8
  %tobool1 = icmp ne i16* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i16**, i16*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds i16*, i16** %3, i64 0
  %4 = load i16*, i16** %arrayidx3, align 8
  %5 = bitcast i16* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %6 = load i16**, i16*** %array2D.addr, align 8
  %7 = bitcast i16** %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end.5

if.else.4:                                        ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0), i32 100)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem3Dshort(i16*** %array3D, i32 %frames) #0 {
entry:
  %array3D.addr = alloca i16***, align 8
  %frames.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16*** %array3D, i16**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16***, i16**** %array3D.addr, align 8
  %tobool = icmp ne i16*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16***, i16**** %array3D.addr, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %4, i64 %idxprom
  %5 = load i16**, i16*** %arrayidx, align 8
  call void @free_mem2Dshort(i16** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16***, i16**** %array3D.addr, align 8
  %8 = bitcast i16*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem4Dshort(i16**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %array4D.addr = alloca i16****, align 8
  %idx.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16**** %array4D, i16***** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16****, i16***** %array4D.addr, align 8
  %tobool = icmp ne i16**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16****, i16***** %array4D.addr, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %4, i64 %idxprom
  %5 = load i16***, i16**** %arrayidx, align 8
  %6 = load i32, i32* %frames.addr, align 4
  call void @free_mem3Dshort(i16*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16****, i16***** %array4D.addr, align 8
  %9 = bitcast i16**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem5Dshort(i16***** %array5D, i32 %refs, i32 %blocktype, i32 %height) #0 {
entry:
  %array5D.addr = alloca i16*****, align 8
  %refs.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16***** %array5D, i16****** %array5D.addr, align 8
  store i32 %refs, i32* %refs.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i16*****, i16****** %array5D.addr, align 8
  %tobool = icmp ne i16***** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %refs.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16*****, i16****** %array5D.addr, align 8
  %arrayidx = getelementptr inbounds i16****, i16***** %4, i64 %idxprom
  %5 = load i16****, i16***** %arrayidx, align 8
  %6 = load i32, i32* %blocktype.addr, align 4
  %7 = load i32, i32* %height.addr, align 4
  call void @free_mem4Dshort(i16**** %5, i32 %6, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i16*****, i16****** %array5D.addr, align 8
  %10 = bitcast i16***** %9 to i8*
  call void @free(i8* %10) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem6Dshort(i16****** %array6D, i32 %list, i32 %refs, i32 %blocktype, i32 %height) #0 {
entry:
  %array6D.addr = alloca i16******, align 8
  %list.addr = alloca i32, align 4
  %refs.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16****** %array6D, i16******* %array6D.addr, align 8
  store i32 %list, i32* %list.addr, align 4
  store i32 %refs, i32* %refs.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i16******, i16******* %array6D.addr, align 8
  %tobool = icmp ne i16****** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %list.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16******, i16******* %array6D.addr, align 8
  %arrayidx = getelementptr inbounds i16*****, i16****** %4, i64 %idxprom
  %5 = load i16*****, i16****** %arrayidx, align 8
  %6 = load i32, i32* %refs.addr, align 4
  %7 = load i32, i32* %blocktype.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  call void @free_mem5Dshort(i16***** %5, i32 %6, i32 %7, i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i16******, i16******* %array6D.addr, align 8
  %11 = bitcast i16****** %10 to i8*
  call void @free(i8* %11) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_mem2Ddouble(double*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %array2D.addr = alloca double***, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double*** %array2D, double**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to double**
  %2 = load double***, double**** %array2D.addr, align 8
  store double** %1, double*** %2, align 8
  %cmp = icmp eq double** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 8) #3
  %5 = bitcast i8* %call3 to double*
  %6 = load double***, double**** %array2D.addr, align 8
  %7 = load double**, double*** %6, align 8
  %arrayidx = getelementptr inbounds double*, double** %7, i64 0
  store double* %5, double** %arrayidx, align 8
  %cmp4 = icmp eq double* %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load double***, double**** %array2D.addr, align 8
  %12 = load double**, double*** %11, align 8
  %arrayidx10 = getelementptr inbounds double*, double** %12, i64 %idxprom
  %13 = load double*, double** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds double, double* %13, i64 %idx.ext
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load double***, double**** %array2D.addr, align 8
  %17 = load double**, double*** %16, align 8
  %arrayidx12 = getelementptr inbounds double*, double** %17, i64 %idxprom11
  store double* %add.ptr, double** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 8
  %conv16 = trunc i64 %mul15 to i32
  ret i32 %conv16
}

; Function Attrs: nounwind uwtable
define i32 @get_mem2Ddb_offset(double*** %array2D, i32 %rows, i32 %columns, i32 %offset) #0 {
entry:
  %array2D.addr = alloca double***, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double*** %array2D, double**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to double**
  %2 = load double***, double**** %array2D.addr, align 8
  store double** %1, double*** %2, align 8
  %cmp = icmp eq double** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 8) #3
  %5 = bitcast i8* %call3 to double*
  %6 = load double***, double**** %array2D.addr, align 8
  %7 = load double**, double*** %6, align 8
  %arrayidx = getelementptr inbounds double*, double** %7, i64 0
  store double* %5, double** %arrayidx, align 8
  %cmp4 = icmp eq double* %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %8 = load i32, i32* %offset.addr, align 4
  %9 = load double***, double**** %array2D.addr, align 8
  %10 = load double**, double*** %9, align 8
  %arrayidx8 = getelementptr inbounds double*, double** %10, i64 0
  %11 = load double*, double** %arrayidx8, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds double, double* %11, i64 %idx.ext
  store double* %add.ptr, double** %arrayidx8, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %rows.addr, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub to i64
  %15 = load double***, double**** %array2D.addr, align 8
  %16 = load double**, double*** %15, align 8
  %arrayidx11 = getelementptr inbounds double*, double** %16, i64 %idxprom
  %17 = load double*, double** %arrayidx11, align 8
  %18 = load i32, i32* %columns.addr, align 4
  %idx.ext12 = sext i32 %18 to i64
  %add.ptr13 = getelementptr inbounds double, double* %17, i64 %idx.ext12
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load double***, double**** %array2D.addr, align 8
  %21 = load double**, double*** %20, align 8
  %arrayidx15 = getelementptr inbounds double*, double** %21, i64 %idxprom14
  store double* %add.ptr13, double** %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %rows.addr, align 4
  %24 = load i32, i32* %columns.addr, align 4
  %mul16 = mul nsw i32 %23, %24
  %conv17 = sext i32 %mul16 to i64
  %mul18 = mul i64 %conv17, 8
  %conv19 = trunc i64 %mul18 to i32
  ret i32 %conv19
}

; Function Attrs: nounwind uwtable
define i32 @get_mem3Ddb_offset(double**** %array3D, i32 %rows, i32 %columns, i32 %pels, i32 %offset) #0 {
entry:
  %array3D.addr = alloca double****, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %pels.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double**** %array3D, double***** %array3D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i32 %pels, i32* %pels.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to double***
  %2 = load double****, double***** %array3D.addr, align 8
  store double*** %1, double**** %2, align 8
  %cmp = icmp eq double*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 8) #3
  %5 = bitcast i8* %call3 to double**
  %6 = load double****, double***** %array3D.addr, align 8
  %7 = load double***, double**** %6, align 8
  %arrayidx = getelementptr inbounds double**, double*** %7, i64 0
  store double** %5, double*** %arrayidx, align 8
  %cmp4 = icmp eq double** %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %8 = load i32, i32* %offset.addr, align 4
  %9 = load double****, double***** %array3D.addr, align 8
  %10 = load double***, double**** %9, align 8
  %arrayidx8 = getelementptr inbounds double**, double*** %10, i64 0
  %11 = load double**, double*** %arrayidx8, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds double*, double** %11, i64 %idx.ext
  store double** %add.ptr, double*** %arrayidx8, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %rows.addr, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub to i64
  %15 = load double****, double***** %array3D.addr, align 8
  %16 = load double***, double**** %15, align 8
  %arrayidx11 = getelementptr inbounds double**, double*** %16, i64 %idxprom
  %17 = load double**, double*** %arrayidx11, align 8
  %18 = load i32, i32* %columns.addr, align 4
  %idx.ext12 = sext i32 %18 to i64
  %add.ptr13 = getelementptr inbounds double*, double** %17, i64 %idx.ext12
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load double****, double***** %array3D.addr, align 8
  %21 = load double***, double**** %20, align 8
  %arrayidx15 = getelementptr inbounds double**, double*** %21, i64 %idxprom14
  store double** %add.ptr13, double*** %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.39, %for.end
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %rows.addr, align 4
  %cmp17 = icmp slt i32 %23, %24
  br i1 %cmp17, label %for.body.19, label %for.end.41

for.body.19:                                      ; preds = %for.cond.16
  %25 = load i32, i32* %offset.addr, align 4
  %sub20 = sub nsw i32 0, %25
  store i32 %sub20, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.36, %for.body.19
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %columns.addr, align 4
  %28 = load i32, i32* %offset.addr, align 4
  %sub22 = sub nsw i32 %27, %28
  %cmp23 = icmp slt i32 %26, %sub22
  br i1 %cmp23, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.21
  %29 = load i32, i32* %pels.addr, align 4
  %conv26 = sext i32 %29 to i64
  %call27 = call noalias i8* @calloc(i64 %conv26, i64 8) #3
  %30 = bitcast i8* %call27 to double*
  %31 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load double****, double***** %array3D.addr, align 8
  %34 = load double***, double**** %33, align 8
  %arrayidx30 = getelementptr inbounds double**, double*** %34, i64 %idxprom29
  %35 = load double**, double*** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds double*, double** %35, i64 %idxprom28
  store double* %30, double** %arrayidx31, align 8
  %cmp32 = icmp eq double* %30, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.25
  call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.body.25
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %36 = load i32, i32* %j, align 4
  %inc37 = add nsw i32 %36, 1
  store i32 %inc37, i32* %j, align 4
  br label %for.cond.21

for.end.38:                                       ; preds = %for.cond.21
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %37 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %37, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.16

for.end.41:                                       ; preds = %for.cond.16
  %38 = load i32, i32* %rows.addr, align 4
  %39 = load i32, i32* %columns.addr, align 4
  %mul42 = mul nsw i32 %38, %39
  %40 = load i32, i32* %pels.addr, align 4
  %mul43 = mul nsw i32 %mul42, %40
  %conv44 = sext i32 %mul43 to i64
  %mul45 = mul i64 %conv44, 8
  %conv46 = trunc i64 %mul45 to i32
  ret i32 %conv46
}

; Function Attrs: nounwind uwtable
define i32 @get_mem3Dint_offset(i32**** %array3D, i32 %rows, i32 %columns, i32 %pels, i32 %offset) #0 {
entry:
  %array3D.addr = alloca i32****, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %pels.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32**** %array3D, i32***** %array3D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i32 %pels, i32* %pels.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32***
  %2 = load i32****, i32***** %array3D.addr, align 8
  store i32*** %1, i32**** %2, align 8
  %cmp = icmp eq i32*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 8) #3
  %5 = bitcast i8* %call3 to i32**
  %6 = load i32****, i32***** %array3D.addr, align 8
  %7 = load i32***, i32**** %6, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %7, i64 0
  store i32** %5, i32*** %arrayidx, align 8
  %cmp4 = icmp eq i32** %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %8 = load i32, i32* %offset.addr, align 4
  %9 = load i32****, i32***** %array3D.addr, align 8
  %10 = load i32***, i32**** %9, align 8
  %arrayidx8 = getelementptr inbounds i32**, i32*** %10, i64 0
  %11 = load i32**, i32*** %arrayidx8, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i32*, i32** %11, i64 %idx.ext
  store i32** %add.ptr, i32*** %arrayidx8, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %rows.addr, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub to i64
  %15 = load i32****, i32***** %array3D.addr, align 8
  %16 = load i32***, i32**** %15, align 8
  %arrayidx11 = getelementptr inbounds i32**, i32*** %16, i64 %idxprom
  %17 = load i32**, i32*** %arrayidx11, align 8
  %18 = load i32, i32* %columns.addr, align 4
  %idx.ext12 = sext i32 %18 to i64
  %add.ptr13 = getelementptr inbounds i32*, i32** %17, i64 %idx.ext12
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load i32****, i32***** %array3D.addr, align 8
  %21 = load i32***, i32**** %20, align 8
  %arrayidx15 = getelementptr inbounds i32**, i32*** %21, i64 %idxprom14
  store i32** %add.ptr13, i32*** %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.39, %for.end
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %rows.addr, align 4
  %cmp17 = icmp slt i32 %23, %24
  br i1 %cmp17, label %for.body.19, label %for.end.41

for.body.19:                                      ; preds = %for.cond.16
  %25 = load i32, i32* %offset.addr, align 4
  %sub20 = sub nsw i32 0, %25
  store i32 %sub20, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.36, %for.body.19
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %columns.addr, align 4
  %28 = load i32, i32* %offset.addr, align 4
  %sub22 = sub nsw i32 %27, %28
  %cmp23 = icmp slt i32 %26, %sub22
  br i1 %cmp23, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.21
  %29 = load i32, i32* %pels.addr, align 4
  %conv26 = sext i32 %29 to i64
  %call27 = call noalias i8* @calloc(i64 %conv26, i64 4) #3
  %30 = bitcast i8* %call27 to i32*
  %31 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load i32****, i32***** %array3D.addr, align 8
  %34 = load i32***, i32**** %33, align 8
  %arrayidx30 = getelementptr inbounds i32**, i32*** %34, i64 %idxprom29
  %35 = load i32**, i32*** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i32*, i32** %35, i64 %idxprom28
  store i32* %30, i32** %arrayidx31, align 8
  %cmp32 = icmp eq i32* %30, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.25
  call void @no_mem_exit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.body.25
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %36 = load i32, i32* %j, align 4
  %inc37 = add nsw i32 %36, 1
  store i32 %inc37, i32* %j, align 4
  br label %for.cond.21

for.end.38:                                       ; preds = %for.cond.21
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %37 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %37, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.16

for.end.41:                                       ; preds = %for.cond.16
  %38 = load i32, i32* %rows.addr, align 4
  %39 = load i32, i32* %columns.addr, align 4
  %mul42 = mul nsw i32 %38, %39
  %40 = load i32, i32* %pels.addr, align 4
  %mul43 = mul nsw i32 %mul42, %40
  %conv44 = sext i32 %mul43 to i64
  %mul45 = mul i64 %conv44, 4
  %conv46 = trunc i64 %mul45 to i32
  ret i32 %conv46
}

; Function Attrs: nounwind uwtable
define void @free_mem2Ddouble(double** %array2D) #0 {
entry:
  %array2D.addr = alloca double**, align 8
  store double** %array2D, double*** %array2D.addr, align 8
  %0 = load double**, double*** %array2D.addr, align 8
  %tobool = icmp ne double** %0, null
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %1 = load double**, double*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %1, i64 0
  %2 = load double*, double** %arrayidx, align 8
  %tobool1 = icmp ne double* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load double**, double*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds double*, double** %3, i64 0
  %4 = load double*, double** %arrayidx3, align 8
  %5 = bitcast double* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %6 = load double**, double*** %array2D.addr, align 8
  %7 = bitcast double** %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end.5

if.else.4:                                        ; preds = %entry
  call void @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0), i32 100)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem2Ddb_offset(double** %array2D, i32 %offset) #0 {
entry:
  %array2D.addr = alloca double**, align 8
  %offset.addr = alloca i32, align 4
  store double** %array2D, double*** %array2D.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load double**, double*** %array2D.addr, align 8
  %tobool = icmp ne double** %0, null
  br i1 %tobool, label %if.then, label %if.else.5

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %offset.addr, align 4
  %2 = load double**, double*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %2, i64 0
  %3 = load double*, double** %arrayidx, align 8
  %idx.ext = sext i32 %1 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, double* %3, i64 %idx.neg
  store double* %add.ptr, double** %arrayidx, align 8
  %4 = load double**, double*** %array2D.addr, align 8
  %arrayidx1 = getelementptr inbounds double*, double** %4, i64 0
  %5 = load double*, double** %arrayidx1, align 8
  %tobool2 = icmp ne double* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load double**, double*** %array2D.addr, align 8
  %arrayidx4 = getelementptr inbounds double*, double** %6, i64 0
  %7 = load double*, double** %arrayidx4, align 8
  %8 = bitcast double* %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.42, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %9 = load double**, double*** %array2D.addr, align 8
  %10 = bitcast double** %9 to i8*
  call void @free(i8* %10) #3
  br label %if.end.6

if.else.5:                                        ; preds = %entry
  call void @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.42, i32 0, i32 0), i32 100)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem3Ddb_offset(double*** %array3D, i32 %rows, i32 %columns, i32 %offset) #0 {
entry:
  %array3D.addr = alloca double***, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double*** %array3D, double**** %array3D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load double***, double**** %array3D.addr, align 8
  %tobool = icmp ne double*** %0, null
  br i1 %tobool, label %if.then, label %if.else.23

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %offset.addr, align 4
  %sub = sub nsw i32 0, %3
  store i32 %sub, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %columns.addr, align 4
  %6 = load i32, i32* %offset.addr, align 4
  %sub2 = sub nsw i32 %5, %6
  %cmp3 = icmp slt i32 %4, %sub2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load double***, double**** %array3D.addr, align 8
  %arrayidx = getelementptr inbounds double**, double*** %9, i64 %idxprom5
  %10 = load double**, double*** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds double*, double** %10, i64 %idxprom
  %11 = load double*, double** %arrayidx6, align 8
  %tobool7 = icmp ne double* %11, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body.4
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load double***, double**** %array3D.addr, align 8
  %arrayidx11 = getelementptr inbounds double**, double*** %14, i64 %idxprom10
  %15 = load double**, double*** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds double*, double** %15, i64 %idxprom9
  %16 = load double*, double** %arrayidx12, align 8
  %17 = bitcast double* %16 to i8*
  call void @free(i8* %17) #3
  br label %if.end

if.else:                                          ; preds = %for.body.4
  call void @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %20 = load i32, i32* %offset.addr, align 4
  %21 = load double***, double**** %array3D.addr, align 8
  %arrayidx16 = getelementptr inbounds double**, double*** %21, i64 0
  %22 = load double**, double*** %arrayidx16, align 8
  %idx.ext = sext i32 %20 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double*, double** %22, i64 %idx.neg
  store double** %add.ptr, double*** %arrayidx16, align 8
  %23 = load double***, double**** %array3D.addr, align 8
  %arrayidx17 = getelementptr inbounds double**, double*** %23, i64 0
  %24 = load double**, double*** %arrayidx17, align 8
  %tobool18 = icmp ne double** %24, null
  br i1 %tobool18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %for.end.15
  %25 = load double***, double**** %array3D.addr, align 8
  %arrayidx20 = getelementptr inbounds double**, double*** %25, i64 0
  %26 = load double**, double*** %arrayidx20, align 8
  %27 = bitcast double** %26 to i8*
  call void @free(i8* %27) #3
  br label %if.end.22

if.else.21:                                       ; preds = %for.end.15
  call void @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i32 0, i32 0), i32 100)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.19
  %28 = load double***, double**** %array3D.addr, align 8
  %29 = bitcast double*** %28 to i8*
  call void @free(i8* %29) #3
  br label %if.end.24

if.else.23:                                       ; preds = %entry
  call void @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i32 0, i32 0), i32 100)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.end.22
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem3Dint_offset(i32*** %array3D, i32 %rows, i32 %columns, i32 %offset) #0 {
entry:
  %array3D.addr = alloca i32***, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32*** %array3D, i32**** %array3D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32***, i32**** %array3D.addr, align 8
  %tobool = icmp ne i32*** %0, null
  br i1 %tobool, label %if.then, label %if.else.23

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %offset.addr, align 4
  %sub = sub nsw i32 0, %3
  store i32 %sub, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %columns.addr, align 4
  %6 = load i32, i32* %offset.addr, align 4
  %sub2 = sub nsw i32 %5, %6
  %cmp3 = icmp slt i32 %4, %sub2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i32***, i32**** %array3D.addr, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %9, i64 %idxprom5
  %10 = load i32**, i32*** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %10, i64 %idxprom
  %11 = load i32*, i32** %arrayidx6, align 8
  %tobool7 = icmp ne i32* %11, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body.4
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load i32***, i32**** %array3D.addr, align 8
  %arrayidx11 = getelementptr inbounds i32**, i32*** %14, i64 %idxprom10
  %15 = load i32**, i32*** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %15, i64 %idxprom9
  %16 = load i32*, i32** %arrayidx12, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17) #3
  br label %if.end

if.else:                                          ; preds = %for.body.4
  call void @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %20 = load i32, i32* %offset.addr, align 4
  %21 = load i32***, i32**** %array3D.addr, align 8
  %arrayidx16 = getelementptr inbounds i32**, i32*** %21, i64 0
  %22 = load i32**, i32*** %arrayidx16, align 8
  %idx.ext = sext i32 %20 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32*, i32** %22, i64 %idx.neg
  store i32** %add.ptr, i32*** %arrayidx16, align 8
  %23 = load i32***, i32**** %array3D.addr, align 8
  %arrayidx17 = getelementptr inbounds i32**, i32*** %23, i64 0
  %24 = load i32**, i32*** %arrayidx17, align 8
  %tobool18 = icmp ne i32** %24, null
  br i1 %tobool18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %for.end.15
  %25 = load i32***, i32**** %array3D.addr, align 8
  %arrayidx20 = getelementptr inbounds i32**, i32*** %25, i64 0
  %26 = load i32**, i32*** %arrayidx20, align 8
  %27 = bitcast i32** %26 to i8*
  call void @free(i8* %27) #3
  br label %if.end.22

if.else.21:                                       ; preds = %for.end.15
  call void @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i32 0, i32 0), i32 100)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.19
  %28 = load i32***, i32**** %array3D.addr, align 8
  %29 = bitcast i32*** %28 to i8*
  call void @free(i8* %29) #3
  br label %if.end.24

if.else.23:                                       ; preds = %entry
  call void @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i32 0, i32 0), i32 100)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.end.22
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_mem2Dint_offset(i32*** %array2D, i32 %rows, i32 %columns, i32 %offset) #0 {
entry:
  %array2D.addr = alloca i32***, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32*** %array2D, i32**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32**
  %2 = load i32***, i32**** %array2D.addr, align 8
  store i32** %1, i32*** %2, align 8
  %cmp = icmp eq i32** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 4) #3
  %5 = bitcast i8* %call3 to i32*
  %6 = load i32***, i32**** %array2D.addr, align 8
  %7 = load i32**, i32*** %6, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 0
  store i32* %5, i32** %arrayidx, align 8
  %cmp4 = icmp eq i32* %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %8 = load i32, i32* %offset.addr, align 4
  %9 = load i32***, i32**** %array2D.addr, align 8
  %10 = load i32**, i32*** %9, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %10, i64 0
  %11 = load i32*, i32** %arrayidx8, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  store i32* %add.ptr, i32** %arrayidx8, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %rows.addr, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub to i64
  %15 = load i32***, i32**** %array2D.addr, align 8
  %16 = load i32**, i32*** %15, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %16, i64 %idxprom
  %17 = load i32*, i32** %arrayidx11, align 8
  %18 = load i32, i32* %columns.addr, align 4
  %idx.ext12 = sext i32 %18 to i64
  %add.ptr13 = getelementptr inbounds i32, i32* %17, i64 %idx.ext12
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load i32***, i32**** %array2D.addr, align 8
  %21 = load i32**, i32*** %20, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %21, i64 %idxprom14
  store i32* %add.ptr13, i32** %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %rows.addr, align 4
  %24 = load i32, i32* %columns.addr, align 4
  %mul16 = mul nsw i32 %23, %24
  %conv17 = sext i32 %mul16 to i64
  %mul18 = mul i64 %conv17, 4
  %conv19 = trunc i64 %mul18 to i32
  ret i32 %conv19
}

; Function Attrs: nounwind uwtable
define void @free_mem2Dint_offset(i32** %array2D, i32 %offset) #0 {
entry:
  %array2D.addr = alloca i32**, align 8
  %offset.addr = alloca i32, align 4
  store i32** %array2D, i32*** %array2D.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32**, i32*** %array2D.addr, align 8
  %tobool = icmp ne i32** %0, null
  br i1 %tobool, label %if.then, label %if.else.5

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %offset.addr, align 4
  %2 = load i32**, i32*** %array2D.addr, align 8
  %3 = load i32*, i32** %2, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %4, %1
  store i32 %sub, i32* %arrayidx, align 4
  %5 = load i32**, i32*** %array2D.addr, align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %5, i64 0
  %6 = load i32*, i32** %arrayidx1, align 8
  %tobool2 = icmp ne i32* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load i32**, i32*** %array2D.addr, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %7, i64 0
  %8 = load i32*, i32** %arrayidx4, align 8
  %9 = bitcast i32* %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %10 = load i32**, i32*** %array2D.addr, align 8
  %11 = bitcast i32** %10 to i8*
  call void @free(i8* %11) #3
  br label %if.end.6

if.else.5:                                        ; preds = %entry
  call void @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i32 0, i32 0), i32 100)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
