; ModuleID = './MultiSource.Applications.JM/49.lencod.loopFilter.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
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
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, i32***, i32***, i32****, i32****, %struct.Picture*, %struct.Slice*, %struct.macroblock*, i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double**, double***, i32***, double**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }

@DeblockMb.filterNon8x8LumaEdgesFlag = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@chroma_edge = internal constant [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\FF\FF\01", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\FF\FF\03"], [4 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\FF\01\01", [4 x i8] c"\FF\01\02\02", [4 x i8] c"\FF\FF\03\03"]], align 16
@mixedModeEdgeFlag = common global i8 0, align 1
@enc_picture = external global %struct.storable_picture*, align 8
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@EdgeLoop.pelnum_cr = internal global [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 16
@fieldModeFilteringFlag = common global i8 0, align 1
@ALPHA_TABLE = internal constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 16
@BETA_TABLE = internal constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 16
@CLIP_TAB = internal constant [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 16
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
define void @DeblockFrame(%struct.ImageParameters* %img, i16** %imgY, i16*** %imgUV) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %imgY.addr = alloca i16**, align 8
  %imgUV.addr = alloca i16***, align 8
  %i = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store i16** %imgY, i16*** %imgY.addr, align 8
  store i16*** %imgUV, i16**** %imgUV.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 119
  %2 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 61
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 8
  %6 = load i32, i32* %mb_type, align 4
  %cmp1 = icmp eq i32 %6, 14
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %7 to i64
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 61
  %9 = load %struct.macroblock*, %struct.macroblock** %mb_data3, align 8
  %arrayidx4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i64 %idxprom2
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx4, i32 0, i32 2
  store i32 0, i32* %qp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.9, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %PicSizeInMbs6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 119
  %13 = load i32, i32* %PicSizeInMbs6, align 4
  %cmp7 = icmp ult i32 %11, %13
  br i1 %cmp7, label %for.body.8, label %for.end.11

for.body.8:                                       ; preds = %for.cond.5
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %15 = load i16**, i16*** %imgY.addr, align 8
  %16 = load i16***, i16**** %imgUV.addr, align 8
  %17 = load i32, i32* %i, align 4
  call void @DeblockMb(%struct.ImageParameters* %14, i16** %15, i16*** %16, i32 %17)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.8
  %18 = load i32, i32* %i, align 4
  %inc10 = add i32 %18, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.5

for.end.11:                                       ; preds = %for.cond.5
  ret void
}

; Function Attrs: nounwind uwtable
define void @DeblockMb(%struct.ImageParameters* %img, i16** %imgY, i16*** %imgUV, i32 %MbQAddr) #0 {
entry:
  %img.addr = alloca %struct.ImageParameters*, align 8
  %imgY.addr = alloca i16**, align 8
  %imgUV.addr = alloca i16***, align 8
  %MbQAddr.addr = alloca i32, align 4
  %EdgeCondition = alloca i32, align 4
  %dir = alloca i32, align 4
  %edge = alloca i32, align 4
  %Strength = alloca [16 x i8], align 16
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %filterNon8x8LumaEdgesFlag = alloca [4 x i32], align 16
  %filterLeftMbEdgeFlag = alloca i32, align 4
  %filterTopMbEdgeFlag = alloca i32, align 4
  %fieldModeMbFlag = alloca i32, align 4
  %mvlimit = alloca i32, align 4
  %i = alloca i32, align 4
  %StrengthSum = alloca i32, align 4
  %MbQ = alloca %struct.macroblock*, align 8
  %edge_cr = alloca i32, align 4
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store i16** %imgY, i16*** %imgY.addr, align 8
  store i16*** %imgUV, i16**** %imgUV.addr, align 8
  store i32 %MbQAddr, i32* %MbQAddr.addr, align 4
  %0 = bitcast [4 x i32]* %filterNon8x8LumaEdgesFlag to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i32]* @DeblockMb.filterNon8x8LumaEdgesFlag to i8*), i64 16, i32 16, i1 false)
  store i32 4, i32* %mvlimit, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %DeblockCall = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 136
  store i32 1, i32* %DeblockCall, align 4
  %2 = load i32, i32* %MbQAddr.addr, align 4
  call void @get_mb_pos(i32 %2, i32* %mb_x, i32* %mb_y, i32 0)
  %3 = load i32, i32* %mb_x, align 4
  %cmp = icmp ne i32 %3, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %filterLeftMbEdgeFlag, align 4
  %4 = load i32, i32* %mb_y, align 4
  %cmp1 = icmp ne i32 %4, 0
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, i32* %filterTopMbEdgeFlag, align 4
  %5 = load i32, i32* %MbQAddr.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 61
  %7 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %7, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %MbQ, align 8
  %8 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i32 0, i32 8
  %9 = load i32, i32* %mb_type, align 4
  %cmp3 = icmp eq i32 %9, 13
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 31
  %11 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  %tobool = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 3
  store i32 %lnot.ext, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 1
  store i32 %lnot.ext, i32* %arrayidx6, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 100
  %13 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, i32* %mb_y, align 4
  %cmp8 = icmp eq i32 %14, 16
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.13

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %15 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 19
  %16 = load i32, i32* %mb_field, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.10
  store i32 0, i32* %filterTopMbEdgeFlag, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true.10, %land.lhs.true, %if.end
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 6
  %18 = load i32, i32* %structure, align 4
  %cmp14 = icmp ne i32 %18, 0
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.13
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 100
  %20 = load i32, i32* %MbaffFrameFlag16, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %21 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 19
  %22 = load i32, i32* %mb_field18, align 4
  %tobool19 = icmp ne i32 %22, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %23 = phi i1 [ false, %lor.rhs ], [ %tobool19, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.end.13
  %24 = phi i1 [ true, %if.end.13 ], [ %23, %land.end ]
  %lor.ext = zext i1 %24 to i32
  store i32 %lor.ext, i32* %fieldModeMbFlag, align 4
  %25 = load i32, i32* %fieldModeMbFlag, align 4
  %tobool20 = icmp ne i32 %25, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.end
  store i32 2, i32* %mvlimit, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %lor.end
  %26 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFDisableIdc = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i32 0, i32 40
  %27 = load i32, i32* %LFDisableIdc, align 4
  %cmp23 = icmp eq i32 %27, 1
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %DeblockCall26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 136
  store i32 0, i32* %DeblockCall26, align 4
  br label %return

if.end.27:                                        ; preds = %if.end.22
  %29 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFDisableIdc28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 40
  %30 = load i32, i32* %LFDisableIdc28, align 4
  %cmp29 = icmp eq i32 %30, 2
  br i1 %cmp29, label %if.then.31, label %if.end.41

if.then.31:                                       ; preds = %if.end.27
  %31 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 26
  %32 = load i32, i32* %mbAvailA, align 4
  store i32 %32, i32* %filterLeftMbEdgeFlag, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 100
  %34 = load i32, i32* %MbaffFrameFlag32, align 4
  %tobool33 = icmp ne i32 %34, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.else

land.lhs.true.34:                                 ; preds = %if.then.31
  %35 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field35 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 19
  %36 = load i32, i32* %mb_field35, align 4
  %tobool36 = icmp ne i32 %36, 0
  br i1 %tobool36, label %if.else, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %37 = load i32, i32* %MbQAddr.addr, align 4
  %and = and i32 %37, 1
  %tobool38 = icmp ne i32 %and, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.lhs.true.37
  store i32 1, i32* %filterTopMbEdgeFlag, align 4
  br label %if.end.40

if.else:                                          ; preds = %land.lhs.true.37, %land.lhs.true.34, %if.then.31
  %38 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %38, i32 0, i32 27
  %39 = load i32, i32* %mbAvailB, align 4
  store i32 %39, i32* %filterTopMbEdgeFlag, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.then.39
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.27
  %40 = load i32, i32* %MbQAddr.addr, align 4
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 3
  store i32 %40, i32* %current_mb_nr, align 4
  call void @CheckAvailabilityOfNeighbors()
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.149, %if.end.41
  %42 = load i32, i32* %dir, align 4
  %cmp42 = icmp slt i32 %42, 2
  br i1 %cmp42, label %for.body, label %for.end.151

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %dir, align 4
  %tobool44 = icmp ne i32 %43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %lor.rhs.47

land.lhs.true.45:                                 ; preds = %for.body
  %44 = load i32, i32* %filterTopMbEdgeFlag, align 4
  %tobool46 = icmp ne i32 %44, 0
  br i1 %tobool46, label %lor.end.52, label %lor.rhs.47

lor.rhs.47:                                       ; preds = %land.lhs.true.45, %for.body
  %45 = load i32, i32* %dir, align 4
  %tobool48 = icmp ne i32 %45, 0
  br i1 %tobool48, label %land.end.51, label %land.rhs.49

land.rhs.49:                                      ; preds = %lor.rhs.47
  %46 = load i32, i32* %filterLeftMbEdgeFlag, align 4
  %tobool50 = icmp ne i32 %46, 0
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.49, %lor.rhs.47
  %47 = phi i1 [ false, %lor.rhs.47 ], [ %tobool50, %land.rhs.49 ]
  br label %lor.end.52

lor.end.52:                                       ; preds = %land.end.51, %land.lhs.true.45
  %48 = phi i1 [ true, %land.lhs.true.45 ], [ %47, %land.end.51 ]
  %lor.ext53 = zext i1 %48 to i32
  store i32 %lor.ext53, i32* %EdgeCondition, align 4
  store i32 0, i32* %edge, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.146, %lor.end.52
  %49 = load i32, i32* %edge, align 4
  %cmp55 = icmp slt i32 %49, 4
  br i1 %cmp55, label %for.body.57, label %for.end.148

for.body.57:                                      ; preds = %for.cond.54
  %50 = load i32, i32* %edge, align 4
  %tobool58 = icmp ne i32 %50, 0
  br i1 %tobool58, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.57
  %51 = load i32, i32* %EdgeCondition, align 4
  %tobool59 = icmp ne i32 %51, 0
  br i1 %tobool59, label %if.then.60, label %if.end.145

if.then.60:                                       ; preds = %lor.lhs.false, %for.body.57
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 160
  %53 = load i32, i32* %yuv_format, align 4
  %idxprom61 = sext i32 %53 to i64
  %54 = load i32, i32* %edge, align 4
  %idxprom62 = sext i32 %54 to i64
  %55 = load i32, i32* %dir, align 4
  %idxprom63 = sext i32 %55 to i64
  %arrayidx64 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* @chroma_edge, i32 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx64, i32 0, i64 %idxprom62
  %arrayidx66 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx65, i32 0, i64 %idxprom61
  %56 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %56 to i32
  store i32 %conv67, i32* %edge_cr, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %58 = load i32, i32* %MbQAddr.addr, align 4
  %59 = load i32, i32* %dir, align 4
  %60 = load i32, i32* %edge, align 4
  %61 = load i32, i32* %mvlimit, align 4
  call void @GetStrength(i8* %arraydecay, %struct.ImageParameters* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %arrayidx68 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i64 0
  %62 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %62 to i32
  store i32 %conv69, i32* %StrengthSum, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %if.then.60
  %63 = load i32, i32* %i, align 4
  %cmp71 = icmp slt i32 %63, 16
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %64 = load i32, i32* %StrengthSum, align 4
  %tobool74 = icmp ne i32 %64, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.body.73
  br label %for.end

if.end.76:                                        ; preds = %for.body.73
  %65 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %65 to i64
  %arrayidx78 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i64 %idxprom77
  %66 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %66 to i32
  %67 = load i32, i32* %StrengthSum, align 4
  %add = add nsw i32 %67, %conv79
  store i32 %add, i32* %StrengthSum, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %68 = load i32, i32* %i, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.70

for.end:                                          ; preds = %if.then.75, %for.cond.70
  %69 = load i32, i32* %StrengthSum, align 4
  %tobool80 = icmp ne i32 %69, 0
  br i1 %tobool80, label %if.then.81, label %if.end.104

if.then.81:                                       ; preds = %for.end
  %70 = load i32, i32* %edge, align 4
  %idxprom82 = sext i32 %70 to i64
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 %idxprom82
  %71 = load i32, i32* %arrayidx83, align 4
  %tobool84 = icmp ne i32 %71, 0
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.then.81
  %72 = load i16**, i16*** %imgY.addr, align 8
  %arraydecay86 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %74 = load i32, i32* %MbQAddr.addr, align 4
  %75 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %75, i32 0, i32 41
  %76 = load i32, i32* %LFAlphaC0Offset, align 4
  %77 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %77, i32 0, i32 42
  %78 = load i32, i32* %LFBetaOffset, align 4
  %79 = load i32, i32* %dir, align 4
  %80 = load i32, i32* %edge, align 4
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 13
  %82 = load i32, i32* %width, align 4
  call void @EdgeLoop(i16** %72, i8* %arraydecay86, %struct.ImageParameters* %73, i32 %74, i32 %76, i32 %78, i32 %79, i32 %80, i32 %82, i32 0, i32 0)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.then.81
  %83 = load i16***, i16**** %imgUV.addr, align 8
  %cmp88 = icmp ne i16*** %83, null
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.103

land.lhs.true.90:                                 ; preds = %if.end.87
  %84 = load i32, i32* %edge_cr, align 4
  %cmp91 = icmp sge i32 %84, 0
  br i1 %cmp91, label %if.then.93, label %if.end.103

if.then.93:                                       ; preds = %land.lhs.true.90
  %85 = load i16***, i16**** %imgUV.addr, align 8
  %arrayidx94 = getelementptr inbounds i16**, i16*** %85, i64 0
  %86 = load i16**, i16*** %arrayidx94, align 8
  %arraydecay95 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %88 = load i32, i32* %MbQAddr.addr, align 4
  %89 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset96 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %89, i32 0, i32 41
  %90 = load i32, i32* %LFAlphaC0Offset96, align 4
  %91 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset97 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %91, i32 0, i32 42
  %92 = load i32, i32* %LFBetaOffset97, align 4
  %93 = load i32, i32* %dir, align 4
  %94 = load i32, i32* %edge_cr, align 4
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 16
  %96 = load i32, i32* %width_cr, align 4
  call void @EdgeLoop(i16** %86, i8* %arraydecay95, %struct.ImageParameters* %87, i32 %88, i32 %90, i32 %92, i32 %93, i32 %94, i32 %96, i32 1, i32 0)
  %97 = load i16***, i16**** %imgUV.addr, align 8
  %arrayidx98 = getelementptr inbounds i16**, i16*** %97, i64 1
  %98 = load i16**, i16*** %arrayidx98, align 8
  %arraydecay99 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %100 = load i32, i32* %MbQAddr.addr, align 4
  %101 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset100 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %101, i32 0, i32 41
  %102 = load i32, i32* %LFAlphaC0Offset100, align 4
  %103 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset101 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %103, i32 0, i32 42
  %104 = load i32, i32* %LFBetaOffset101, align 4
  %105 = load i32, i32* %dir, align 4
  %106 = load i32, i32* %edge_cr, align 4
  %107 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width_cr102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %107, i32 0, i32 16
  %108 = load i32, i32* %width_cr102, align 4
  call void @EdgeLoop(i16** %98, i8* %arraydecay99, %struct.ImageParameters* %99, i32 %100, i32 %102, i32 %104, i32 %105, i32 %106, i32 %108, i32 1, i32 1)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.93, %land.lhs.true.90, %if.end.87
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %for.end
  %109 = load i32, i32* %dir, align 4
  %tobool105 = icmp ne i32 %109, 0
  br i1 %tobool105, label %land.lhs.true.106, label %if.end.144

land.lhs.true.106:                                ; preds = %if.end.104
  %110 = load i32, i32* %edge, align 4
  %tobool107 = icmp ne i32 %110, 0
  br i1 %tobool107, label %if.end.144, label %land.lhs.true.108

land.lhs.true.108:                                ; preds = %land.lhs.true.106
  %111 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field109 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %111, i32 0, i32 19
  %112 = load i32, i32* %mb_field109, align 4
  %tobool110 = icmp ne i32 %112, 0
  br i1 %tobool110, label %if.end.144, label %land.lhs.true.111

land.lhs.true.111:                                ; preds = %land.lhs.true.108
  %113 = load i8, i8* @mixedModeEdgeFlag, align 1
  %conv112 = zext i8 %113 to i32
  %tobool113 = icmp ne i32 %conv112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.144

if.then.114:                                      ; preds = %land.lhs.true.111
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %DeblockCall115 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 136
  store i32 2, i32* %DeblockCall115, align 4
  %arraydecay116 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %116 = load i32, i32* %MbQAddr.addr, align 4
  %117 = load i32, i32* %dir, align 4
  %118 = load i32, i32* %mvlimit, align 4
  call void @GetStrength(i8* %arraydecay116, %struct.ImageParameters* %115, i32 %116, i32 %117, i32 4, i32 %118)
  %119 = load i32, i32* %edge, align 4
  %idxprom117 = sext i32 %119 to i64
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 %idxprom117
  %120 = load i32, i32* %arrayidx118, align 4
  %tobool119 = icmp ne i32 %120, 0
  br i1 %tobool119, label %if.then.120, label %if.end.125

if.then.120:                                      ; preds = %if.then.114
  %121 = load i16**, i16*** %imgY.addr, align 8
  %arraydecay121 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %123 = load i32, i32* %MbQAddr.addr, align 4
  %124 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset122 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %124, i32 0, i32 41
  %125 = load i32, i32* %LFAlphaC0Offset122, align 4
  %126 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset123 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %126, i32 0, i32 42
  %127 = load i32, i32* %LFBetaOffset123, align 4
  %128 = load i32, i32* %dir, align 4
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 13
  %130 = load i32, i32* %width124, align 4
  call void @EdgeLoop(i16** %121, i8* %arraydecay121, %struct.ImageParameters* %122, i32 %123, i32 %125, i32 %127, i32 %128, i32 4, i32 %130, i32 0, i32 0)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.120, %if.then.114
  %131 = load i16***, i16**** %imgUV.addr, align 8
  %cmp126 = icmp ne i16*** %131, null
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.142

land.lhs.true.128:                                ; preds = %if.end.125
  %132 = load i32, i32* %edge_cr, align 4
  %cmp129 = icmp sge i32 %132, 0
  br i1 %cmp129, label %if.then.131, label %if.end.142

if.then.131:                                      ; preds = %land.lhs.true.128
  %133 = load i16***, i16**** %imgUV.addr, align 8
  %arrayidx132 = getelementptr inbounds i16**, i16*** %133, i64 0
  %134 = load i16**, i16*** %arrayidx132, align 8
  %arraydecay133 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %136 = load i32, i32* %MbQAddr.addr, align 4
  %137 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset134 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %137, i32 0, i32 41
  %138 = load i32, i32* %LFAlphaC0Offset134, align 4
  %139 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset135 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %139, i32 0, i32 42
  %140 = load i32, i32* %LFBetaOffset135, align 4
  %141 = load i32, i32* %dir, align 4
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width_cr136 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 16
  %143 = load i32, i32* %width_cr136, align 4
  call void @EdgeLoop(i16** %134, i8* %arraydecay133, %struct.ImageParameters* %135, i32 %136, i32 %138, i32 %140, i32 %141, i32 4, i32 %143, i32 1, i32 0)
  %144 = load i16***, i16**** %imgUV.addr, align 8
  %arrayidx137 = getelementptr inbounds i16**, i16*** %144, i64 1
  %145 = load i16**, i16*** %arrayidx137, align 8
  %arraydecay138 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %147 = load i32, i32* %MbQAddr.addr, align 4
  %148 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset139 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %148, i32 0, i32 41
  %149 = load i32, i32* %LFAlphaC0Offset139, align 4
  %150 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset140 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %150, i32 0, i32 42
  %151 = load i32, i32* %LFBetaOffset140, align 4
  %152 = load i32, i32* %dir, align 4
  %153 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width_cr141 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %153, i32 0, i32 16
  %154 = load i32, i32* %width_cr141, align 4
  call void @EdgeLoop(i16** %145, i8* %arraydecay138, %struct.ImageParameters* %146, i32 %147, i32 %149, i32 %151, i32 %152, i32 4, i32 %154, i32 1, i32 1)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.131, %land.lhs.true.128, %if.end.125
  %155 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %DeblockCall143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %155, i32 0, i32 136
  store i32 1, i32* %DeblockCall143, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.142, %land.lhs.true.111, %land.lhs.true.108, %land.lhs.true.106, %if.end.104
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %lor.lhs.false
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %156 = load i32, i32* %edge, align 4
  %inc147 = add nsw i32 %156, 1
  store i32 %inc147, i32* %edge, align 4
  br label %for.cond.54

for.end.148:                                      ; preds = %for.cond.54
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.end.148
  %157 = load i32, i32* %dir, align 4
  %inc150 = add nsw i32 %157, 1
  store i32 %inc150, i32* %dir, align 4
  br label %for.cond

for.end.151:                                      ; preds = %for.cond
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %DeblockCall152 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 136
  store i32 0, i32* %DeblockCall152, align 4
  br label %return

return:                                           ; preds = %for.end.151, %if.then.25
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @get_mb_pos(i32, i32*, i32*, i32) #2

declare void @CheckAvailabilityOfNeighbors() #2

; Function Attrs: nounwind uwtable
define void @GetStrength(i8* %Strength, %struct.ImageParameters* %img, i32 %MbQAddr, i32 %dir, i32 %edge, i32 %mvlimit) #0 {
entry:
  %Strength.addr = alloca i8*, align 8
  %img.addr = alloca %struct.ImageParameters*, align 8
  %MbQAddr.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %mvlimit.addr = alloca i32, align 4
  %blkP = alloca i32, align 4
  %blkQ = alloca i32, align 4
  %idx = alloca i32, align 4
  %blk_x = alloca i32, align 4
  %blk_x2 = alloca i32, align 4
  %blk_y = alloca i32, align 4
  %blk_y2 = alloca i32, align 4
  %list0_mv = alloca i16***, align 8
  %list1_mv = alloca i16***, align 8
  %list0_refIdxArr = alloca i8**, align 8
  %list1_refIdxArr = alloca i8**, align 8
  %list0_refPicIdArr = alloca i64**, align 8
  %list1_refPicIdArr = alloca i64**, align 8
  %ref_p0 = alloca i64, align 8
  %ref_p1 = alloca i64, align 8
  %ref_q0 = alloca i64, align 8
  %ref_q1 = alloca i64, align 8
  %xQ = alloca i32, align 4
  %xP = alloca i32, align 4
  %yQ = alloca i32, align 4
  %yP = alloca i32, align 4
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %MbQ = alloca %struct.macroblock*, align 8
  %MbP = alloca %struct.macroblock*, align 8
  %pixP = alloca %struct.pix_pos, align 4
  %dir_m1 = alloca i32, align 4
  store i8* %Strength, i8** %Strength.addr, align 8
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store i32 %MbQAddr, i32* %MbQAddr.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  store i32 %mvlimit, i32* %mvlimit.addr, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 38
  %1 = load i16****, i16***** %mv, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %1, i64 0
  %2 = load i16***, i16**** %arrayidx, align 8
  store i16*** %2, i16**** %list0_mv, align 8
  %3 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %3, i32 0, i32 38
  %4 = load i16****, i16***** %mv1, align 8
  %arrayidx2 = getelementptr inbounds i16***, i16**** %4, i64 1
  %5 = load i16***, i16**** %arrayidx2, align 8
  store i16*** %5, i16**** %list1_mv, align 8
  %6 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 35
  %7 = load i8***, i8**** %ref_idx, align 8
  %arrayidx3 = getelementptr inbounds i8**, i8*** %7, i64 0
  %8 = load i8**, i8*** %arrayidx3, align 8
  store i8** %8, i8*** %list0_refIdxArr, align 8
  %9 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 35
  %10 = load i8***, i8**** %ref_idx4, align 8
  %arrayidx5 = getelementptr inbounds i8**, i8*** %10, i64 1
  %11 = load i8**, i8*** %arrayidx5, align 8
  store i8** %11, i8*** %list1_refIdxArr, align 8
  %12 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_id = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 36
  %13 = load i64***, i64**** %ref_pic_id, align 8
  %arrayidx6 = getelementptr inbounds i64**, i64*** %13, i64 0
  %14 = load i64**, i64*** %arrayidx6, align 8
  store i64** %14, i64*** %list0_refPicIdArr, align 8
  %15 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_id7 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 36
  %16 = load i64***, i64**** %ref_pic_id7, align 8
  %arrayidx8 = getelementptr inbounds i64**, i64*** %16, i64 1
  %17 = load i64**, i64*** %arrayidx8, align 8
  store i64** %17, i64*** %list1_refPicIdArr, align 8
  %18 = load i32, i32* %dir.addr, align 4
  %sub = sub nsw i32 1, %18
  store i32 %sub, i32* %dir_m1, align 4
  %19 = load i32, i32* %MbQAddr.addr, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 61
  %21 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i64 %idxprom
  store %struct.macroblock* %arrayidx9, %struct.macroblock** %MbQ, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %idx, align 4
  %cmp = icmp slt i32 %22, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %dir.addr, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %24 = load i32, i32* %idx, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %25 = load i32, i32* %edge.addr, align 4
  %shl = shl i32 %25, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %shl, %cond.false ]
  store i32 %cond, i32* %xQ, align 4
  %26 = load i32, i32* %dir.addr, align 4
  %tobool10 = icmp ne i32 %26, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.18

cond.true.11:                                     ; preds = %cond.end
  %27 = load i32, i32* %edge.addr, align 4
  %cmp12 = icmp slt i32 %27, 4
  br i1 %cmp12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %cond.true.11
  %28 = load i32, i32* %edge.addr, align 4
  %shl14 = shl i32 %28, 2
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.true.11
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond17 = phi i32 [ %shl14, %cond.true.13 ], [ 1, %cond.false.15 ]
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.end
  %29 = load i32, i32* %idx, align 4
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.end.16
  %cond20 = phi i32 [ %cond17, %cond.end.16 ], [ %29, %cond.false.18 ]
  store i32 %cond20, i32* %yQ, align 4
  %30 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %31 = load i32, i32* %MbQAddr.addr, align 4
  %32 = load i32, i32* %xQ, align 4
  %33 = load i32, i32* %dir_m1, align 4
  %sub21 = sub nsw i32 %32, %33
  %34 = load i32, i32* %yQ, align 4
  %35 = load i32, i32* %dir.addr, align 4
  %sub22 = sub nsw i32 %34, %35
  call void %30(i32 %31, i32 %sub21, i32 %sub22, i32 0, %struct.pix_pos* %pixP)
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 2
  %36 = load i32, i32* %x, align 4
  store i32 %36, i32* %xP, align 4
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 3
  %37 = load i32, i32* %y, align 4
  store i32 %37, i32* %yP, align 4
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 1
  %38 = load i32, i32* %mb_addr, align 4
  %idxprom23 = sext i32 %38 to i64
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 61
  %40 = load %struct.macroblock*, %struct.macroblock** %mb_data24, align 8
  %arrayidx25 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %40, i64 %idxprom23
  store %struct.macroblock* %arrayidx25, %struct.macroblock** %MbP, align 8
  %41 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %41, i32 0, i32 19
  %42 = load i32, i32* %mb_field, align 4
  %43 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field26 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 19
  %44 = load i32, i32* %mb_field26, align 4
  %cmp27 = icmp ne i32 %42, %44
  %conv = zext i1 %cmp27 to i32
  %conv28 = trunc i32 %conv to i8
  store i8 %conv28, i8* @mixedModeEdgeFlag, align 1
  %45 = load i32, i32* %yQ, align 4
  %shr = ashr i32 %45, 2
  %shl29 = shl i32 %shr, 2
  %46 = load i32, i32* %xQ, align 4
  %shr30 = ashr i32 %46, 2
  %add = add nsw i32 %shl29, %shr30
  store i32 %add, i32* %blkQ, align 4
  %47 = load i32, i32* %yP, align 4
  %shr31 = ashr i32 %47, 2
  %shl32 = shl i32 %shr31, 2
  %48 = load i32, i32* %xP, align 4
  %shr33 = ashr i32 %48, 2
  %add34 = add nsw i32 %shl32, %shr33
  store i32 %add34, i32* %blkP, align 4
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 5
  %50 = load i32, i32* %type, align 4
  %cmp35 = icmp eq i32 %50, 3
  br i1 %cmp35, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.19
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %type37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 5
  %52 = load i32, i32* %type37, align 4
  %cmp38 = icmp eq i32 %52, 4
  br i1 %cmp38, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %cond.end.19
  %53 = load i32, i32* %edge.addr, align 4
  %cmp40 = icmp eq i32 %53, 0
  br i1 %cmp40, label %land.rhs, label %land.end.62

land.rhs:                                         ; preds = %if.then
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 100
  %55 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool42 = icmp ne i32 %55, 0
  br i1 %tobool42, label %lor.lhs.false.45, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.rhs
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 6
  %57 = load i32, i32* %structure, align 4
  %cmp43 = icmp eq i32 %57, 0
  br i1 %cmp43, label %lor.end, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true, %land.rhs
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag46 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 100
  %59 = load i32, i32* %MbaffFrameFlag46, align 4
  %tobool47 = icmp ne i32 %59, 0
  br i1 %tobool47, label %land.lhs.true.48, label %lor.rhs

land.lhs.true.48:                                 ; preds = %lor.lhs.false.45
  %60 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field49 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 19
  %61 = load i32, i32* %mb_field49, align 4
  %tobool50 = icmp ne i32 %61, 0
  br i1 %tobool50, label %lor.rhs, label %land.lhs.true.51

land.lhs.true.51:                                 ; preds = %land.lhs.true.48
  %62 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field52 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %62, i32 0, i32 19
  %63 = load i32, i32* %mb_field52, align 4
  %tobool53 = icmp ne i32 %63, 0
  br i1 %tobool53, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true.51, %land.lhs.true.48, %lor.lhs.false.45
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 100
  %65 = load i32, i32* %MbaffFrameFlag54, align 4
  %tobool55 = icmp ne i32 %65, 0
  br i1 %tobool55, label %land.rhs.60, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.rhs
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %structure57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 6
  %67 = load i32, i32* %structure57, align 4
  %cmp58 = icmp ne i32 %67, 0
  br i1 %cmp58, label %land.rhs.60, label %land.end

land.rhs.60:                                      ; preds = %lor.lhs.false.56, %lor.rhs
  %68 = load i32, i32* %dir.addr, align 4
  %tobool61 = icmp ne i32 %68, 0
  %lnot = xor i1 %tobool61, true
  br label %land.end

land.end:                                         ; preds = %land.rhs.60, %lor.lhs.false.56
  %69 = phi i1 [ false, %lor.lhs.false.56 ], [ %lnot, %land.rhs.60 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.51, %land.lhs.true
  %70 = phi i1 [ true, %land.lhs.true.51 ], [ true, %land.lhs.true ], [ %69, %land.end ]
  br label %land.end.62

land.end.62:                                      ; preds = %lor.end, %if.then
  %71 = phi i1 [ false, %if.then ], [ %70, %lor.end ]
  %cond63 = select i1 %71, i32 4, i32 3
  %conv64 = trunc i32 %cond63 to i8
  %72 = load i32, i32* %idx, align 4
  %idxprom65 = sext i32 %72 to i64
  %73 = load i8*, i8** %Strength.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %73, i64 %idxprom65
  store i8 %conv64, i8* %arrayidx66, align 1
  br label %if.end.529

if.else:                                          ; preds = %lor.lhs.false
  %74 = load i32, i32* %edge.addr, align 4
  %cmp67 = icmp eq i32 %74, 0
  br i1 %cmp67, label %land.rhs.69, label %land.end.97

land.rhs.69:                                      ; preds = %if.else
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 100
  %76 = load i32, i32* %MbaffFrameFlag70, align 4
  %tobool71 = icmp ne i32 %76, 0
  br i1 %tobool71, label %lor.lhs.false.76, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %land.rhs.69
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %structure73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 6
  %78 = load i32, i32* %structure73, align 4
  %cmp74 = icmp eq i32 %78, 0
  br i1 %cmp74, label %lor.end.96, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.72, %land.rhs.69
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag77 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 100
  %80 = load i32, i32* %MbaffFrameFlag77, align 4
  %tobool78 = icmp ne i32 %80, 0
  br i1 %tobool78, label %land.lhs.true.79, label %lor.rhs.85

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76
  %81 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field80 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i32 0, i32 19
  %82 = load i32, i32* %mb_field80, align 4
  %tobool81 = icmp ne i32 %82, 0
  br i1 %tobool81, label %lor.rhs.85, label %land.lhs.true.82

land.lhs.true.82:                                 ; preds = %land.lhs.true.79
  %83 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field83 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %83, i32 0, i32 19
  %84 = load i32, i32* %mb_field83, align 4
  %tobool84 = icmp ne i32 %84, 0
  br i1 %tobool84, label %lor.rhs.85, label %lor.end.96

lor.rhs.85:                                       ; preds = %land.lhs.true.82, %land.lhs.true.79, %lor.lhs.false.76
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 100
  %86 = load i32, i32* %MbaffFrameFlag86, align 4
  %tobool87 = icmp ne i32 %86, 0
  br i1 %tobool87, label %land.rhs.92, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.rhs.85
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %structure89 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 6
  %88 = load i32, i32* %structure89, align 4
  %cmp90 = icmp ne i32 %88, 0
  br i1 %cmp90, label %land.rhs.92, label %land.end.95

land.rhs.92:                                      ; preds = %lor.lhs.false.88, %lor.rhs.85
  %89 = load i32, i32* %dir.addr, align 4
  %tobool93 = icmp ne i32 %89, 0
  %lnot94 = xor i1 %tobool93, true
  br label %land.end.95

land.end.95:                                      ; preds = %land.rhs.92, %lor.lhs.false.88
  %90 = phi i1 [ false, %lor.lhs.false.88 ], [ %lnot94, %land.rhs.92 ]
  br label %lor.end.96

lor.end.96:                                       ; preds = %land.end.95, %land.lhs.true.82, %land.lhs.true.72
  %91 = phi i1 [ true, %land.lhs.true.82 ], [ true, %land.lhs.true.72 ], [ %90, %land.end.95 ]
  br label %land.end.97

land.end.97:                                      ; preds = %lor.end.96, %if.else
  %92 = phi i1 [ false, %if.else ], [ %91, %lor.end.96 ]
  %cond98 = select i1 %92, i32 4, i32 3
  %conv99 = trunc i32 %cond98 to i8
  %93 = load i32, i32* %idx, align 4
  %idxprom100 = sext i32 %93 to i64
  %94 = load i8*, i8** %Strength.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %94, i64 %idxprom100
  store i8 %conv99, i8* %arrayidx101, align 1
  %95 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %95, i32 0, i32 8
  %96 = load i32, i32* %mb_type, align 4
  %cmp102 = icmp eq i32 %96, 9
  br i1 %cmp102, label %if.end.528, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.end.97
  %97 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type105 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %97, i32 0, i32 8
  %98 = load i32, i32* %mb_type105, align 4
  %cmp106 = icmp eq i32 %98, 10
  br i1 %cmp106, label %if.end.528, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %lor.lhs.false.104
  %99 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type109 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 8
  %100 = load i32, i32* %mb_type109, align 4
  %cmp110 = icmp eq i32 %100, 13
  br i1 %cmp110, label %if.end.528, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.108
  %101 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type113 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %101, i32 0, i32 8
  %102 = load i32, i32* %mb_type113, align 4
  %cmp114 = icmp eq i32 %102, 14
  br i1 %cmp114, label %if.end.528, label %land.lhs.true.116

land.lhs.true.116:                                ; preds = %lor.lhs.false.112
  %103 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type117 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %103, i32 0, i32 8
  %104 = load i32, i32* %mb_type117, align 4
  %cmp118 = icmp eq i32 %104, 9
  br i1 %cmp118, label %if.end.528, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %land.lhs.true.116
  %105 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type121 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %105, i32 0, i32 8
  %106 = load i32, i32* %mb_type121, align 4
  %cmp122 = icmp eq i32 %106, 10
  br i1 %cmp122, label %if.end.528, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %lor.lhs.false.120
  %107 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type125 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %107, i32 0, i32 8
  %108 = load i32, i32* %mb_type125, align 4
  %cmp126 = icmp eq i32 %108, 13
  br i1 %cmp126, label %if.end.528, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %lor.lhs.false.124
  %109 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type129 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %109, i32 0, i32 8
  %110 = load i32, i32* %mb_type129, align 4
  %cmp130 = icmp eq i32 %110, 14
  br i1 %cmp130, label %if.end.528, label %if.then.132

if.then.132:                                      ; preds = %lor.lhs.false.128
  %111 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %cbp_blk = getelementptr inbounds %struct.macroblock, %struct.macroblock* %111, i32 0, i32 13
  %112 = load i64, i64* %cbp_blk, align 8
  %113 = load i32, i32* %blkQ, align 4
  %sh_prom = zext i32 %113 to i64
  %shl133 = shl i64 1, %sh_prom
  %and = and i64 %112, %shl133
  %cmp134 = icmp ne i64 %and, 0
  br i1 %cmp134, label %if.then.143, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %if.then.132
  %114 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %cbp_blk137 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %114, i32 0, i32 13
  %115 = load i64, i64* %cbp_blk137, align 8
  %116 = load i32, i32* %blkP, align 4
  %sh_prom138 = zext i32 %116 to i64
  %shl139 = shl i64 1, %sh_prom138
  %and140 = and i64 %115, %shl139
  %cmp141 = icmp ne i64 %and140, 0
  br i1 %cmp141, label %if.then.143, label %if.else.146

if.then.143:                                      ; preds = %lor.lhs.false.136, %if.then.132
  %117 = load i32, i32* %idx, align 4
  %idxprom144 = sext i32 %117 to i64
  %118 = load i8*, i8** %Strength.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %118, i64 %idxprom144
  store i8 2, i8* %arrayidx145, align 1
  br label %if.end.527

if.else.146:                                      ; preds = %lor.lhs.false.136
  %119 = load i8, i8* @mixedModeEdgeFlag, align 1
  %tobool147 = icmp ne i8 %119, 0
  br i1 %tobool147, label %if.then.148, label %if.else.151

if.then.148:                                      ; preds = %if.else.146
  %120 = load i32, i32* %idx, align 4
  %idxprom149 = sext i32 %120 to i64
  %121 = load i8*, i8** %Strength.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %121, i64 %idxprom149
  store i8 1, i8* %arrayidx150, align 1
  br label %if.end.526

if.else.151:                                      ; preds = %if.else.146
  %122 = load void (i32, i32*, i32*)*, void (i32, i32*, i32*)** @get_mb_block_pos, align 8
  %123 = load i32, i32* %MbQAddr.addr, align 4
  call void %122(i32 %123, i32* %mb_x, i32* %mb_y)
  %124 = load i32, i32* %mb_y, align 4
  %shl152 = shl i32 %124, 2
  %125 = load i32, i32* %blkQ, align 4
  %shr153 = ashr i32 %125, 2
  %add154 = add nsw i32 %shl152, %shr153
  store i32 %add154, i32* %blk_y, align 4
  %126 = load i32, i32* %mb_x, align 4
  %shl155 = shl i32 %126, 2
  %127 = load i32, i32* %blkQ, align 4
  %and156 = and i32 %127, 3
  %add157 = add nsw i32 %shl155, %and156
  store i32 %add157, i32* %blk_x, align 4
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 5
  %128 = load i32, i32* %pos_y, align 4
  %shr158 = ashr i32 %128, 2
  store i32 %shr158, i32* %blk_y2, align 4
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 4
  %129 = load i32, i32* %pos_x, align 4
  %shr159 = ashr i32 %129, 2
  store i32 %shr159, i32* %blk_x2, align 4
  %130 = load i32, i32* %blk_x, align 4
  %idxprom160 = sext i32 %130 to i64
  %131 = load i32, i32* %blk_y, align 4
  %idxprom161 = sext i32 %131 to i64
  %132 = load i8**, i8*** %list0_refIdxArr, align 8
  %arrayidx162 = getelementptr inbounds i8*, i8** %132, i64 %idxprom161
  %133 = load i8*, i8** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %133, i64 %idxprom160
  %134 = load i8, i8* %arrayidx163, align 1
  %conv164 = sext i8 %134 to i32
  %cmp165 = icmp slt i32 %conv164, 0
  br i1 %cmp165, label %cond.true.167, label %cond.false.168

cond.true.167:                                    ; preds = %if.else.151
  br label %cond.end.173

cond.false.168:                                   ; preds = %if.else.151
  %135 = load i32, i32* %blk_x, align 4
  %idxprom169 = sext i32 %135 to i64
  %136 = load i32, i32* %blk_y, align 4
  %idxprom170 = sext i32 %136 to i64
  %137 = load i64**, i64*** %list0_refPicIdArr, align 8
  %arrayidx171 = getelementptr inbounds i64*, i64** %137, i64 %idxprom170
  %138 = load i64*, i64** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds i64, i64* %138, i64 %idxprom169
  %139 = load i64, i64* %arrayidx172, align 8
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.168, %cond.true.167
  %cond174 = phi i64 [ -9223372036854775808, %cond.true.167 ], [ %139, %cond.false.168 ]
  store i64 %cond174, i64* %ref_p0, align 8
  %140 = load i32, i32* %blk_x2, align 4
  %idxprom175 = sext i32 %140 to i64
  %141 = load i32, i32* %blk_y2, align 4
  %idxprom176 = sext i32 %141 to i64
  %142 = load i8**, i8*** %list0_refIdxArr, align 8
  %arrayidx177 = getelementptr inbounds i8*, i8** %142, i64 %idxprom176
  %143 = load i8*, i8** %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %143, i64 %idxprom175
  %144 = load i8, i8* %arrayidx178, align 1
  %conv179 = sext i8 %144 to i32
  %cmp180 = icmp slt i32 %conv179, 0
  br i1 %cmp180, label %cond.true.182, label %cond.false.183

cond.true.182:                                    ; preds = %cond.end.173
  br label %cond.end.188

cond.false.183:                                   ; preds = %cond.end.173
  %145 = load i32, i32* %blk_x2, align 4
  %idxprom184 = sext i32 %145 to i64
  %146 = load i32, i32* %blk_y2, align 4
  %idxprom185 = sext i32 %146 to i64
  %147 = load i64**, i64*** %list0_refPicIdArr, align 8
  %arrayidx186 = getelementptr inbounds i64*, i64** %147, i64 %idxprom185
  %148 = load i64*, i64** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i64, i64* %148, i64 %idxprom184
  %149 = load i64, i64* %arrayidx187, align 8
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.183, %cond.true.182
  %cond189 = phi i64 [ -9223372036854775808, %cond.true.182 ], [ %149, %cond.false.183 ]
  store i64 %cond189, i64* %ref_q0, align 8
  %150 = load i32, i32* %blk_x, align 4
  %idxprom190 = sext i32 %150 to i64
  %151 = load i32, i32* %blk_y, align 4
  %idxprom191 = sext i32 %151 to i64
  %152 = load i8**, i8*** %list1_refIdxArr, align 8
  %arrayidx192 = getelementptr inbounds i8*, i8** %152, i64 %idxprom191
  %153 = load i8*, i8** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %153, i64 %idxprom190
  %154 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %154 to i32
  %cmp195 = icmp slt i32 %conv194, 0
  br i1 %cmp195, label %cond.true.197, label %cond.false.198

cond.true.197:                                    ; preds = %cond.end.188
  br label %cond.end.203

cond.false.198:                                   ; preds = %cond.end.188
  %155 = load i32, i32* %blk_x, align 4
  %idxprom199 = sext i32 %155 to i64
  %156 = load i32, i32* %blk_y, align 4
  %idxprom200 = sext i32 %156 to i64
  %157 = load i64**, i64*** %list1_refPicIdArr, align 8
  %arrayidx201 = getelementptr inbounds i64*, i64** %157, i64 %idxprom200
  %158 = load i64*, i64** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds i64, i64* %158, i64 %idxprom199
  %159 = load i64, i64* %arrayidx202, align 8
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.198, %cond.true.197
  %cond204 = phi i64 [ -9223372036854775808, %cond.true.197 ], [ %159, %cond.false.198 ]
  store i64 %cond204, i64* %ref_p1, align 8
  %160 = load i32, i32* %blk_x2, align 4
  %idxprom205 = sext i32 %160 to i64
  %161 = load i32, i32* %blk_y2, align 4
  %idxprom206 = sext i32 %161 to i64
  %162 = load i8**, i8*** %list1_refIdxArr, align 8
  %arrayidx207 = getelementptr inbounds i8*, i8** %162, i64 %idxprom206
  %163 = load i8*, i8** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %163, i64 %idxprom205
  %164 = load i8, i8* %arrayidx208, align 1
  %conv209 = sext i8 %164 to i32
  %cmp210 = icmp slt i32 %conv209, 0
  br i1 %cmp210, label %cond.true.212, label %cond.false.213

cond.true.212:                                    ; preds = %cond.end.203
  br label %cond.end.218

cond.false.213:                                   ; preds = %cond.end.203
  %165 = load i32, i32* %blk_x2, align 4
  %idxprom214 = sext i32 %165 to i64
  %166 = load i32, i32* %blk_y2, align 4
  %idxprom215 = sext i32 %166 to i64
  %167 = load i64**, i64*** %list1_refPicIdArr, align 8
  %arrayidx216 = getelementptr inbounds i64*, i64** %167, i64 %idxprom215
  %168 = load i64*, i64** %arrayidx216, align 8
  %arrayidx217 = getelementptr inbounds i64, i64* %168, i64 %idxprom214
  %169 = load i64, i64* %arrayidx217, align 8
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.213, %cond.true.212
  %cond219 = phi i64 [ -9223372036854775808, %cond.true.212 ], [ %169, %cond.false.213 ]
  store i64 %cond219, i64* %ref_q1, align 8
  %170 = load i64, i64* %ref_p0, align 8
  %171 = load i64, i64* %ref_q0, align 8
  %cmp220 = icmp eq i64 %170, %171
  br i1 %cmp220, label %land.lhs.true.222, label %lor.lhs.false.225

land.lhs.true.222:                                ; preds = %cond.end.218
  %172 = load i64, i64* %ref_p1, align 8
  %173 = load i64, i64* %ref_q1, align 8
  %cmp223 = icmp eq i64 %172, %173
  br i1 %cmp223, label %if.then.231, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %land.lhs.true.222, %cond.end.218
  %174 = load i64, i64* %ref_p0, align 8
  %175 = load i64, i64* %ref_q1, align 8
  %cmp226 = icmp eq i64 %174, %175
  br i1 %cmp226, label %land.lhs.true.228, label %if.else.522

land.lhs.true.228:                                ; preds = %lor.lhs.false.225
  %176 = load i64, i64* %ref_p1, align 8
  %177 = load i64, i64* %ref_q0, align 8
  %cmp229 = icmp eq i64 %176, %177
  br i1 %cmp229, label %if.then.231, label %if.else.522

if.then.231:                                      ; preds = %land.lhs.true.228, %land.lhs.true.222
  %178 = load i32, i32* %idx, align 4
  %idxprom232 = sext i32 %178 to i64
  %179 = load i8*, i8** %Strength.addr, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %179, i64 %idxprom232
  store i8 0, i8* %arrayidx233, align 1
  %180 = load i64, i64* %ref_p0, align 8
  %181 = load i64, i64* %ref_p1, align 8
  %cmp234 = icmp ne i64 %180, %181
  br i1 %cmp234, label %if.then.236, label %if.else.379

if.then.236:                                      ; preds = %if.then.231
  %182 = load i64, i64* %ref_p0, align 8
  %183 = load i64, i64* %ref_q0, align 8
  %cmp237 = icmp eq i64 %182, %183
  br i1 %cmp237, label %if.then.239, label %if.else.308

if.then.239:                                      ; preds = %if.then.236
  %184 = load i32, i32* %blk_x, align 4
  %idxprom240 = sext i32 %184 to i64
  %185 = load i32, i32* %blk_y, align 4
  %idxprom241 = sext i32 %185 to i64
  %186 = load i16***, i16**** %list0_mv, align 8
  %arrayidx242 = getelementptr inbounds i16**, i16*** %186, i64 %idxprom241
  %187 = load i16**, i16*** %arrayidx242, align 8
  %arrayidx243 = getelementptr inbounds i16*, i16** %187, i64 %idxprom240
  %188 = load i16*, i16** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds i16, i16* %188, i64 0
  %189 = load i16, i16* %arrayidx244, align 2
  %conv245 = sext i16 %189 to i32
  %190 = load i32, i32* %blk_x2, align 4
  %idxprom246 = sext i32 %190 to i64
  %191 = load i32, i32* %blk_y2, align 4
  %idxprom247 = sext i32 %191 to i64
  %192 = load i16***, i16**** %list0_mv, align 8
  %arrayidx248 = getelementptr inbounds i16**, i16*** %192, i64 %idxprom247
  %193 = load i16**, i16*** %arrayidx248, align 8
  %arrayidx249 = getelementptr inbounds i16*, i16** %193, i64 %idxprom246
  %194 = load i16*, i16** %arrayidx249, align 8
  %arrayidx250 = getelementptr inbounds i16, i16* %194, i64 0
  %195 = load i16, i16* %arrayidx250, align 2
  %conv251 = sext i16 %195 to i32
  %sub252 = sub nsw i32 %conv245, %conv251
  %call = call i32 @iabs(i32 %sub252)
  %cmp253 = icmp sge i32 %call, 4
  %conv254 = zext i1 %cmp253 to i32
  %196 = load i32, i32* %blk_x, align 4
  %idxprom255 = sext i32 %196 to i64
  %197 = load i32, i32* %blk_y, align 4
  %idxprom256 = sext i32 %197 to i64
  %198 = load i16***, i16**** %list0_mv, align 8
  %arrayidx257 = getelementptr inbounds i16**, i16*** %198, i64 %idxprom256
  %199 = load i16**, i16*** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i16*, i16** %199, i64 %idxprom255
  %200 = load i16*, i16** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i16, i16* %200, i64 1
  %201 = load i16, i16* %arrayidx259, align 2
  %conv260 = sext i16 %201 to i32
  %202 = load i32, i32* %blk_x2, align 4
  %idxprom261 = sext i32 %202 to i64
  %203 = load i32, i32* %blk_y2, align 4
  %idxprom262 = sext i32 %203 to i64
  %204 = load i16***, i16**** %list0_mv, align 8
  %arrayidx263 = getelementptr inbounds i16**, i16*** %204, i64 %idxprom262
  %205 = load i16**, i16*** %arrayidx263, align 8
  %arrayidx264 = getelementptr inbounds i16*, i16** %205, i64 %idxprom261
  %206 = load i16*, i16** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i16, i16* %206, i64 1
  %207 = load i16, i16* %arrayidx265, align 2
  %conv266 = sext i16 %207 to i32
  %sub267 = sub nsw i32 %conv260, %conv266
  %call268 = call i32 @iabs(i32 %sub267)
  %208 = load i32, i32* %mvlimit.addr, align 4
  %cmp269 = icmp sge i32 %call268, %208
  %conv270 = zext i1 %cmp269 to i32
  %or = or i32 %conv254, %conv270
  %209 = load i32, i32* %blk_x, align 4
  %idxprom271 = sext i32 %209 to i64
  %210 = load i32, i32* %blk_y, align 4
  %idxprom272 = sext i32 %210 to i64
  %211 = load i16***, i16**** %list1_mv, align 8
  %arrayidx273 = getelementptr inbounds i16**, i16*** %211, i64 %idxprom272
  %212 = load i16**, i16*** %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds i16*, i16** %212, i64 %idxprom271
  %213 = load i16*, i16** %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds i16, i16* %213, i64 0
  %214 = load i16, i16* %arrayidx275, align 2
  %conv276 = sext i16 %214 to i32
  %215 = load i32, i32* %blk_x2, align 4
  %idxprom277 = sext i32 %215 to i64
  %216 = load i32, i32* %blk_y2, align 4
  %idxprom278 = sext i32 %216 to i64
  %217 = load i16***, i16**** %list1_mv, align 8
  %arrayidx279 = getelementptr inbounds i16**, i16*** %217, i64 %idxprom278
  %218 = load i16**, i16*** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i16*, i16** %218, i64 %idxprom277
  %219 = load i16*, i16** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds i16, i16* %219, i64 0
  %220 = load i16, i16* %arrayidx281, align 2
  %conv282 = sext i16 %220 to i32
  %sub283 = sub nsw i32 %conv276, %conv282
  %call284 = call i32 @iabs(i32 %sub283)
  %cmp285 = icmp sge i32 %call284, 4
  %conv286 = zext i1 %cmp285 to i32
  %or287 = or i32 %or, %conv286
  %221 = load i32, i32* %blk_x, align 4
  %idxprom288 = sext i32 %221 to i64
  %222 = load i32, i32* %blk_y, align 4
  %idxprom289 = sext i32 %222 to i64
  %223 = load i16***, i16**** %list1_mv, align 8
  %arrayidx290 = getelementptr inbounds i16**, i16*** %223, i64 %idxprom289
  %224 = load i16**, i16*** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds i16*, i16** %224, i64 %idxprom288
  %225 = load i16*, i16** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i16, i16* %225, i64 1
  %226 = load i16, i16* %arrayidx292, align 2
  %conv293 = sext i16 %226 to i32
  %227 = load i32, i32* %blk_x2, align 4
  %idxprom294 = sext i32 %227 to i64
  %228 = load i32, i32* %blk_y2, align 4
  %idxprom295 = sext i32 %228 to i64
  %229 = load i16***, i16**** %list1_mv, align 8
  %arrayidx296 = getelementptr inbounds i16**, i16*** %229, i64 %idxprom295
  %230 = load i16**, i16*** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds i16*, i16** %230, i64 %idxprom294
  %231 = load i16*, i16** %arrayidx297, align 8
  %arrayidx298 = getelementptr inbounds i16, i16* %231, i64 1
  %232 = load i16, i16* %arrayidx298, align 2
  %conv299 = sext i16 %232 to i32
  %sub300 = sub nsw i32 %conv293, %conv299
  %call301 = call i32 @iabs(i32 %sub300)
  %233 = load i32, i32* %mvlimit.addr, align 4
  %cmp302 = icmp sge i32 %call301, %233
  %conv303 = zext i1 %cmp302 to i32
  %or304 = or i32 %or287, %conv303
  %conv305 = trunc i32 %or304 to i8
  %234 = load i32, i32* %idx, align 4
  %idxprom306 = sext i32 %234 to i64
  %235 = load i8*, i8** %Strength.addr, align 8
  %arrayidx307 = getelementptr inbounds i8, i8* %235, i64 %idxprom306
  store i8 %conv305, i8* %arrayidx307, align 1
  br label %if.end

if.else.308:                                      ; preds = %if.then.236
  %236 = load i32, i32* %blk_x, align 4
  %idxprom309 = sext i32 %236 to i64
  %237 = load i32, i32* %blk_y, align 4
  %idxprom310 = sext i32 %237 to i64
  %238 = load i16***, i16**** %list0_mv, align 8
  %arrayidx311 = getelementptr inbounds i16**, i16*** %238, i64 %idxprom310
  %239 = load i16**, i16*** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds i16*, i16** %239, i64 %idxprom309
  %240 = load i16*, i16** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i16, i16* %240, i64 0
  %241 = load i16, i16* %arrayidx313, align 2
  %conv314 = sext i16 %241 to i32
  %242 = load i32, i32* %blk_x2, align 4
  %idxprom315 = sext i32 %242 to i64
  %243 = load i32, i32* %blk_y2, align 4
  %idxprom316 = sext i32 %243 to i64
  %244 = load i16***, i16**** %list1_mv, align 8
  %arrayidx317 = getelementptr inbounds i16**, i16*** %244, i64 %idxprom316
  %245 = load i16**, i16*** %arrayidx317, align 8
  %arrayidx318 = getelementptr inbounds i16*, i16** %245, i64 %idxprom315
  %246 = load i16*, i16** %arrayidx318, align 8
  %arrayidx319 = getelementptr inbounds i16, i16* %246, i64 0
  %247 = load i16, i16* %arrayidx319, align 2
  %conv320 = sext i16 %247 to i32
  %sub321 = sub nsw i32 %conv314, %conv320
  %call322 = call i32 @iabs(i32 %sub321)
  %cmp323 = icmp sge i32 %call322, 4
  %conv324 = zext i1 %cmp323 to i32
  %248 = load i32, i32* %blk_x, align 4
  %idxprom325 = sext i32 %248 to i64
  %249 = load i32, i32* %blk_y, align 4
  %idxprom326 = sext i32 %249 to i64
  %250 = load i16***, i16**** %list0_mv, align 8
  %arrayidx327 = getelementptr inbounds i16**, i16*** %250, i64 %idxprom326
  %251 = load i16**, i16*** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds i16*, i16** %251, i64 %idxprom325
  %252 = load i16*, i16** %arrayidx328, align 8
  %arrayidx329 = getelementptr inbounds i16, i16* %252, i64 1
  %253 = load i16, i16* %arrayidx329, align 2
  %conv330 = sext i16 %253 to i32
  %254 = load i32, i32* %blk_x2, align 4
  %idxprom331 = sext i32 %254 to i64
  %255 = load i32, i32* %blk_y2, align 4
  %idxprom332 = sext i32 %255 to i64
  %256 = load i16***, i16**** %list1_mv, align 8
  %arrayidx333 = getelementptr inbounds i16**, i16*** %256, i64 %idxprom332
  %257 = load i16**, i16*** %arrayidx333, align 8
  %arrayidx334 = getelementptr inbounds i16*, i16** %257, i64 %idxprom331
  %258 = load i16*, i16** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds i16, i16* %258, i64 1
  %259 = load i16, i16* %arrayidx335, align 2
  %conv336 = sext i16 %259 to i32
  %sub337 = sub nsw i32 %conv330, %conv336
  %call338 = call i32 @iabs(i32 %sub337)
  %260 = load i32, i32* %mvlimit.addr, align 4
  %cmp339 = icmp sge i32 %call338, %260
  %conv340 = zext i1 %cmp339 to i32
  %or341 = or i32 %conv324, %conv340
  %261 = load i32, i32* %blk_x, align 4
  %idxprom342 = sext i32 %261 to i64
  %262 = load i32, i32* %blk_y, align 4
  %idxprom343 = sext i32 %262 to i64
  %263 = load i16***, i16**** %list1_mv, align 8
  %arrayidx344 = getelementptr inbounds i16**, i16*** %263, i64 %idxprom343
  %264 = load i16**, i16*** %arrayidx344, align 8
  %arrayidx345 = getelementptr inbounds i16*, i16** %264, i64 %idxprom342
  %265 = load i16*, i16** %arrayidx345, align 8
  %arrayidx346 = getelementptr inbounds i16, i16* %265, i64 0
  %266 = load i16, i16* %arrayidx346, align 2
  %conv347 = sext i16 %266 to i32
  %267 = load i32, i32* %blk_x2, align 4
  %idxprom348 = sext i32 %267 to i64
  %268 = load i32, i32* %blk_y2, align 4
  %idxprom349 = sext i32 %268 to i64
  %269 = load i16***, i16**** %list0_mv, align 8
  %arrayidx350 = getelementptr inbounds i16**, i16*** %269, i64 %idxprom349
  %270 = load i16**, i16*** %arrayidx350, align 8
  %arrayidx351 = getelementptr inbounds i16*, i16** %270, i64 %idxprom348
  %271 = load i16*, i16** %arrayidx351, align 8
  %arrayidx352 = getelementptr inbounds i16, i16* %271, i64 0
  %272 = load i16, i16* %arrayidx352, align 2
  %conv353 = sext i16 %272 to i32
  %sub354 = sub nsw i32 %conv347, %conv353
  %call355 = call i32 @iabs(i32 %sub354)
  %cmp356 = icmp sge i32 %call355, 4
  %conv357 = zext i1 %cmp356 to i32
  %or358 = or i32 %or341, %conv357
  %273 = load i32, i32* %blk_x, align 4
  %idxprom359 = sext i32 %273 to i64
  %274 = load i32, i32* %blk_y, align 4
  %idxprom360 = sext i32 %274 to i64
  %275 = load i16***, i16**** %list1_mv, align 8
  %arrayidx361 = getelementptr inbounds i16**, i16*** %275, i64 %idxprom360
  %276 = load i16**, i16*** %arrayidx361, align 8
  %arrayidx362 = getelementptr inbounds i16*, i16** %276, i64 %idxprom359
  %277 = load i16*, i16** %arrayidx362, align 8
  %arrayidx363 = getelementptr inbounds i16, i16* %277, i64 1
  %278 = load i16, i16* %arrayidx363, align 2
  %conv364 = sext i16 %278 to i32
  %279 = load i32, i32* %blk_x2, align 4
  %idxprom365 = sext i32 %279 to i64
  %280 = load i32, i32* %blk_y2, align 4
  %idxprom366 = sext i32 %280 to i64
  %281 = load i16***, i16**** %list0_mv, align 8
  %arrayidx367 = getelementptr inbounds i16**, i16*** %281, i64 %idxprom366
  %282 = load i16**, i16*** %arrayidx367, align 8
  %arrayidx368 = getelementptr inbounds i16*, i16** %282, i64 %idxprom365
  %283 = load i16*, i16** %arrayidx368, align 8
  %arrayidx369 = getelementptr inbounds i16, i16* %283, i64 1
  %284 = load i16, i16* %arrayidx369, align 2
  %conv370 = sext i16 %284 to i32
  %sub371 = sub nsw i32 %conv364, %conv370
  %call372 = call i32 @iabs(i32 %sub371)
  %285 = load i32, i32* %mvlimit.addr, align 4
  %cmp373 = icmp sge i32 %call372, %285
  %conv374 = zext i1 %cmp373 to i32
  %or375 = or i32 %or358, %conv374
  %conv376 = trunc i32 %or375 to i8
  %286 = load i32, i32* %idx, align 4
  %idxprom377 = sext i32 %286 to i64
  %287 = load i8*, i8** %Strength.addr, align 8
  %arrayidx378 = getelementptr inbounds i8, i8* %287, i64 %idxprom377
  store i8 %conv376, i8* %arrayidx378, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.308, %if.then.239
  br label %if.end.521

if.else.379:                                      ; preds = %if.then.231
  %288 = load i32, i32* %blk_x, align 4
  %idxprom380 = sext i32 %288 to i64
  %289 = load i32, i32* %blk_y, align 4
  %idxprom381 = sext i32 %289 to i64
  %290 = load i16***, i16**** %list0_mv, align 8
  %arrayidx382 = getelementptr inbounds i16**, i16*** %290, i64 %idxprom381
  %291 = load i16**, i16*** %arrayidx382, align 8
  %arrayidx383 = getelementptr inbounds i16*, i16** %291, i64 %idxprom380
  %292 = load i16*, i16** %arrayidx383, align 8
  %arrayidx384 = getelementptr inbounds i16, i16* %292, i64 0
  %293 = load i16, i16* %arrayidx384, align 2
  %conv385 = sext i16 %293 to i32
  %294 = load i32, i32* %blk_x2, align 4
  %idxprom386 = sext i32 %294 to i64
  %295 = load i32, i32* %blk_y2, align 4
  %idxprom387 = sext i32 %295 to i64
  %296 = load i16***, i16**** %list0_mv, align 8
  %arrayidx388 = getelementptr inbounds i16**, i16*** %296, i64 %idxprom387
  %297 = load i16**, i16*** %arrayidx388, align 8
  %arrayidx389 = getelementptr inbounds i16*, i16** %297, i64 %idxprom386
  %298 = load i16*, i16** %arrayidx389, align 8
  %arrayidx390 = getelementptr inbounds i16, i16* %298, i64 0
  %299 = load i16, i16* %arrayidx390, align 2
  %conv391 = sext i16 %299 to i32
  %sub392 = sub nsw i32 %conv385, %conv391
  %call393 = call i32 @iabs(i32 %sub392)
  %cmp394 = icmp sge i32 %call393, 4
  %conv395 = zext i1 %cmp394 to i32
  %300 = load i32, i32* %blk_x, align 4
  %idxprom396 = sext i32 %300 to i64
  %301 = load i32, i32* %blk_y, align 4
  %idxprom397 = sext i32 %301 to i64
  %302 = load i16***, i16**** %list0_mv, align 8
  %arrayidx398 = getelementptr inbounds i16**, i16*** %302, i64 %idxprom397
  %303 = load i16**, i16*** %arrayidx398, align 8
  %arrayidx399 = getelementptr inbounds i16*, i16** %303, i64 %idxprom396
  %304 = load i16*, i16** %arrayidx399, align 8
  %arrayidx400 = getelementptr inbounds i16, i16* %304, i64 1
  %305 = load i16, i16* %arrayidx400, align 2
  %conv401 = sext i16 %305 to i32
  %306 = load i32, i32* %blk_x2, align 4
  %idxprom402 = sext i32 %306 to i64
  %307 = load i32, i32* %blk_y2, align 4
  %idxprom403 = sext i32 %307 to i64
  %308 = load i16***, i16**** %list0_mv, align 8
  %arrayidx404 = getelementptr inbounds i16**, i16*** %308, i64 %idxprom403
  %309 = load i16**, i16*** %arrayidx404, align 8
  %arrayidx405 = getelementptr inbounds i16*, i16** %309, i64 %idxprom402
  %310 = load i16*, i16** %arrayidx405, align 8
  %arrayidx406 = getelementptr inbounds i16, i16* %310, i64 1
  %311 = load i16, i16* %arrayidx406, align 2
  %conv407 = sext i16 %311 to i32
  %sub408 = sub nsw i32 %conv401, %conv407
  %call409 = call i32 @iabs(i32 %sub408)
  %312 = load i32, i32* %mvlimit.addr, align 4
  %cmp410 = icmp sge i32 %call409, %312
  %conv411 = zext i1 %cmp410 to i32
  %or412 = or i32 %conv395, %conv411
  %313 = load i32, i32* %blk_x, align 4
  %idxprom413 = sext i32 %313 to i64
  %314 = load i32, i32* %blk_y, align 4
  %idxprom414 = sext i32 %314 to i64
  %315 = load i16***, i16**** %list1_mv, align 8
  %arrayidx415 = getelementptr inbounds i16**, i16*** %315, i64 %idxprom414
  %316 = load i16**, i16*** %arrayidx415, align 8
  %arrayidx416 = getelementptr inbounds i16*, i16** %316, i64 %idxprom413
  %317 = load i16*, i16** %arrayidx416, align 8
  %arrayidx417 = getelementptr inbounds i16, i16* %317, i64 0
  %318 = load i16, i16* %arrayidx417, align 2
  %conv418 = sext i16 %318 to i32
  %319 = load i32, i32* %blk_x2, align 4
  %idxprom419 = sext i32 %319 to i64
  %320 = load i32, i32* %blk_y2, align 4
  %idxprom420 = sext i32 %320 to i64
  %321 = load i16***, i16**** %list1_mv, align 8
  %arrayidx421 = getelementptr inbounds i16**, i16*** %321, i64 %idxprom420
  %322 = load i16**, i16*** %arrayidx421, align 8
  %arrayidx422 = getelementptr inbounds i16*, i16** %322, i64 %idxprom419
  %323 = load i16*, i16** %arrayidx422, align 8
  %arrayidx423 = getelementptr inbounds i16, i16* %323, i64 0
  %324 = load i16, i16* %arrayidx423, align 2
  %conv424 = sext i16 %324 to i32
  %sub425 = sub nsw i32 %conv418, %conv424
  %call426 = call i32 @iabs(i32 %sub425)
  %cmp427 = icmp sge i32 %call426, 4
  %conv428 = zext i1 %cmp427 to i32
  %or429 = or i32 %or412, %conv428
  %325 = load i32, i32* %blk_x, align 4
  %idxprom430 = sext i32 %325 to i64
  %326 = load i32, i32* %blk_y, align 4
  %idxprom431 = sext i32 %326 to i64
  %327 = load i16***, i16**** %list1_mv, align 8
  %arrayidx432 = getelementptr inbounds i16**, i16*** %327, i64 %idxprom431
  %328 = load i16**, i16*** %arrayidx432, align 8
  %arrayidx433 = getelementptr inbounds i16*, i16** %328, i64 %idxprom430
  %329 = load i16*, i16** %arrayidx433, align 8
  %arrayidx434 = getelementptr inbounds i16, i16* %329, i64 1
  %330 = load i16, i16* %arrayidx434, align 2
  %conv435 = sext i16 %330 to i32
  %331 = load i32, i32* %blk_x2, align 4
  %idxprom436 = sext i32 %331 to i64
  %332 = load i32, i32* %blk_y2, align 4
  %idxprom437 = sext i32 %332 to i64
  %333 = load i16***, i16**** %list1_mv, align 8
  %arrayidx438 = getelementptr inbounds i16**, i16*** %333, i64 %idxprom437
  %334 = load i16**, i16*** %arrayidx438, align 8
  %arrayidx439 = getelementptr inbounds i16*, i16** %334, i64 %idxprom436
  %335 = load i16*, i16** %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds i16, i16* %335, i64 1
  %336 = load i16, i16* %arrayidx440, align 2
  %conv441 = sext i16 %336 to i32
  %sub442 = sub nsw i32 %conv435, %conv441
  %call443 = call i32 @iabs(i32 %sub442)
  %337 = load i32, i32* %mvlimit.addr, align 4
  %cmp444 = icmp sge i32 %call443, %337
  %conv445 = zext i1 %cmp444 to i32
  %or446 = or i32 %or429, %conv445
  %tobool447 = icmp ne i32 %or446, 0
  br i1 %tobool447, label %land.rhs.448, label %land.end.517

land.rhs.448:                                     ; preds = %if.else.379
  %338 = load i32, i32* %blk_x, align 4
  %idxprom449 = sext i32 %338 to i64
  %339 = load i32, i32* %blk_y, align 4
  %idxprom450 = sext i32 %339 to i64
  %340 = load i16***, i16**** %list0_mv, align 8
  %arrayidx451 = getelementptr inbounds i16**, i16*** %340, i64 %idxprom450
  %341 = load i16**, i16*** %arrayidx451, align 8
  %arrayidx452 = getelementptr inbounds i16*, i16** %341, i64 %idxprom449
  %342 = load i16*, i16** %arrayidx452, align 8
  %arrayidx453 = getelementptr inbounds i16, i16* %342, i64 0
  %343 = load i16, i16* %arrayidx453, align 2
  %conv454 = sext i16 %343 to i32
  %344 = load i32, i32* %blk_x2, align 4
  %idxprom455 = sext i32 %344 to i64
  %345 = load i32, i32* %blk_y2, align 4
  %idxprom456 = sext i32 %345 to i64
  %346 = load i16***, i16**** %list1_mv, align 8
  %arrayidx457 = getelementptr inbounds i16**, i16*** %346, i64 %idxprom456
  %347 = load i16**, i16*** %arrayidx457, align 8
  %arrayidx458 = getelementptr inbounds i16*, i16** %347, i64 %idxprom455
  %348 = load i16*, i16** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds i16, i16* %348, i64 0
  %349 = load i16, i16* %arrayidx459, align 2
  %conv460 = sext i16 %349 to i32
  %sub461 = sub nsw i32 %conv454, %conv460
  %call462 = call i32 @iabs(i32 %sub461)
  %cmp463 = icmp sge i32 %call462, 4
  %conv464 = zext i1 %cmp463 to i32
  %350 = load i32, i32* %blk_x, align 4
  %idxprom465 = sext i32 %350 to i64
  %351 = load i32, i32* %blk_y, align 4
  %idxprom466 = sext i32 %351 to i64
  %352 = load i16***, i16**** %list0_mv, align 8
  %arrayidx467 = getelementptr inbounds i16**, i16*** %352, i64 %idxprom466
  %353 = load i16**, i16*** %arrayidx467, align 8
  %arrayidx468 = getelementptr inbounds i16*, i16** %353, i64 %idxprom465
  %354 = load i16*, i16** %arrayidx468, align 8
  %arrayidx469 = getelementptr inbounds i16, i16* %354, i64 1
  %355 = load i16, i16* %arrayidx469, align 2
  %conv470 = sext i16 %355 to i32
  %356 = load i32, i32* %blk_x2, align 4
  %idxprom471 = sext i32 %356 to i64
  %357 = load i32, i32* %blk_y2, align 4
  %idxprom472 = sext i32 %357 to i64
  %358 = load i16***, i16**** %list1_mv, align 8
  %arrayidx473 = getelementptr inbounds i16**, i16*** %358, i64 %idxprom472
  %359 = load i16**, i16*** %arrayidx473, align 8
  %arrayidx474 = getelementptr inbounds i16*, i16** %359, i64 %idxprom471
  %360 = load i16*, i16** %arrayidx474, align 8
  %arrayidx475 = getelementptr inbounds i16, i16* %360, i64 1
  %361 = load i16, i16* %arrayidx475, align 2
  %conv476 = sext i16 %361 to i32
  %sub477 = sub nsw i32 %conv470, %conv476
  %call478 = call i32 @iabs(i32 %sub477)
  %362 = load i32, i32* %mvlimit.addr, align 4
  %cmp479 = icmp sge i32 %call478, %362
  %conv480 = zext i1 %cmp479 to i32
  %or481 = or i32 %conv464, %conv480
  %363 = load i32, i32* %blk_x, align 4
  %idxprom482 = sext i32 %363 to i64
  %364 = load i32, i32* %blk_y, align 4
  %idxprom483 = sext i32 %364 to i64
  %365 = load i16***, i16**** %list1_mv, align 8
  %arrayidx484 = getelementptr inbounds i16**, i16*** %365, i64 %idxprom483
  %366 = load i16**, i16*** %arrayidx484, align 8
  %arrayidx485 = getelementptr inbounds i16*, i16** %366, i64 %idxprom482
  %367 = load i16*, i16** %arrayidx485, align 8
  %arrayidx486 = getelementptr inbounds i16, i16* %367, i64 0
  %368 = load i16, i16* %arrayidx486, align 2
  %conv487 = sext i16 %368 to i32
  %369 = load i32, i32* %blk_x2, align 4
  %idxprom488 = sext i32 %369 to i64
  %370 = load i32, i32* %blk_y2, align 4
  %idxprom489 = sext i32 %370 to i64
  %371 = load i16***, i16**** %list0_mv, align 8
  %arrayidx490 = getelementptr inbounds i16**, i16*** %371, i64 %idxprom489
  %372 = load i16**, i16*** %arrayidx490, align 8
  %arrayidx491 = getelementptr inbounds i16*, i16** %372, i64 %idxprom488
  %373 = load i16*, i16** %arrayidx491, align 8
  %arrayidx492 = getelementptr inbounds i16, i16* %373, i64 0
  %374 = load i16, i16* %arrayidx492, align 2
  %conv493 = sext i16 %374 to i32
  %sub494 = sub nsw i32 %conv487, %conv493
  %call495 = call i32 @iabs(i32 %sub494)
  %cmp496 = icmp sge i32 %call495, 4
  %conv497 = zext i1 %cmp496 to i32
  %or498 = or i32 %or481, %conv497
  %375 = load i32, i32* %blk_x, align 4
  %idxprom499 = sext i32 %375 to i64
  %376 = load i32, i32* %blk_y, align 4
  %idxprom500 = sext i32 %376 to i64
  %377 = load i16***, i16**** %list1_mv, align 8
  %arrayidx501 = getelementptr inbounds i16**, i16*** %377, i64 %idxprom500
  %378 = load i16**, i16*** %arrayidx501, align 8
  %arrayidx502 = getelementptr inbounds i16*, i16** %378, i64 %idxprom499
  %379 = load i16*, i16** %arrayidx502, align 8
  %arrayidx503 = getelementptr inbounds i16, i16* %379, i64 1
  %380 = load i16, i16* %arrayidx503, align 2
  %conv504 = sext i16 %380 to i32
  %381 = load i32, i32* %blk_x2, align 4
  %idxprom505 = sext i32 %381 to i64
  %382 = load i32, i32* %blk_y2, align 4
  %idxprom506 = sext i32 %382 to i64
  %383 = load i16***, i16**** %list0_mv, align 8
  %arrayidx507 = getelementptr inbounds i16**, i16*** %383, i64 %idxprom506
  %384 = load i16**, i16*** %arrayidx507, align 8
  %arrayidx508 = getelementptr inbounds i16*, i16** %384, i64 %idxprom505
  %385 = load i16*, i16** %arrayidx508, align 8
  %arrayidx509 = getelementptr inbounds i16, i16* %385, i64 1
  %386 = load i16, i16* %arrayidx509, align 2
  %conv510 = sext i16 %386 to i32
  %sub511 = sub nsw i32 %conv504, %conv510
  %call512 = call i32 @iabs(i32 %sub511)
  %387 = load i32, i32* %mvlimit.addr, align 4
  %cmp513 = icmp sge i32 %call512, %387
  %conv514 = zext i1 %cmp513 to i32
  %or515 = or i32 %or498, %conv514
  %tobool516 = icmp ne i32 %or515, 0
  br label %land.end.517

land.end.517:                                     ; preds = %land.rhs.448, %if.else.379
  %388 = phi i1 [ false, %if.else.379 ], [ %tobool516, %land.rhs.448 ]
  %land.ext = zext i1 %388 to i32
  %conv518 = trunc i32 %land.ext to i8
  %389 = load i32, i32* %idx, align 4
  %idxprom519 = sext i32 %389 to i64
  %390 = load i8*, i8** %Strength.addr, align 8
  %arrayidx520 = getelementptr inbounds i8, i8* %390, i64 %idxprom519
  store i8 %conv518, i8* %arrayidx520, align 1
  br label %if.end.521

if.end.521:                                       ; preds = %land.end.517, %if.end
  br label %if.end.525

if.else.522:                                      ; preds = %land.lhs.true.228, %lor.lhs.false.225
  %391 = load i32, i32* %idx, align 4
  %idxprom523 = sext i32 %391 to i64
  %392 = load i8*, i8** %Strength.addr, align 8
  %arrayidx524 = getelementptr inbounds i8, i8* %392, i64 %idxprom523
  store i8 1, i8* %arrayidx524, align 1
  br label %if.end.525

if.end.525:                                       ; preds = %if.else.522, %if.end.521
  br label %if.end.526

if.end.526:                                       ; preds = %if.end.525, %if.then.148
  br label %if.end.527

if.end.527:                                       ; preds = %if.end.526, %if.then.143
  br label %if.end.528

if.end.528:                                       ; preds = %if.end.527, %lor.lhs.false.128, %lor.lhs.false.124, %lor.lhs.false.120, %land.lhs.true.116, %lor.lhs.false.112, %lor.lhs.false.108, %lor.lhs.false.104, %land.end.97
  br label %if.end.529

if.end.529:                                       ; preds = %if.end.528, %land.end.62
  br label %for.inc

for.inc:                                          ; preds = %if.end.529
  %393 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %393, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @EdgeLoop(i16** %Img, i8* %Strength, %struct.ImageParameters* %img, i32 %MbQAddr, i32 %AlphaC0Offset, i32 %BetaOffset, i32 %dir, i32 %edge, i32 %width, i32 %yuv, i32 %uv) #0 {
entry:
  %Img.addr = alloca i16**, align 8
  %Strength.addr = alloca i8*, align 8
  %img.addr = alloca %struct.ImageParameters*, align 8
  %MbQAddr.addr = alloca i32, align 4
  %AlphaC0Offset.addr = alloca i32, align 4
  %BetaOffset.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %yuv.addr = alloca i32, align 4
  %uv.addr = alloca i32, align 4
  %pel = alloca i32, align 4
  %ap = alloca i32, align 4
  %aq = alloca i32, align 4
  %Strng = alloca i32, align 4
  %incP = alloca i32, align 4
  %incQ = alloca i32, align 4
  %C0 = alloca i32, align 4
  %c0 = alloca i32, align 4
  %Delta = alloca i32, align 4
  %dif = alloca i32, align 4
  %AbsDelta = alloca i32, align 4
  %L2 = alloca i32, align 4
  %L1 = alloca i32, align 4
  %L0 = alloca i32, align 4
  %R0 = alloca i32, align 4
  %R1 = alloca i32, align 4
  %R2 = alloca i32, align 4
  %RL0 = alloca i32, align 4
  %L3 = alloca i32, align 4
  %R3 = alloca i32, align 4
  %Alpha = alloca i32, align 4
  %Beta = alloca i32, align 4
  %ClipTab = alloca i8*, align 8
  %small_gap = alloca i32, align 4
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %PelNum = alloca i32, align 4
  %StrengthIdx = alloca i32, align 4
  %SrcPtrP = alloca i16*, align 8
  %SrcPtrQ = alloca i16*, align 8
  %QP = alloca i32, align 4
  %xP = alloca i32, align 4
  %xQ = alloca i32, align 4
  %yP = alloca i32, align 4
  %yQ = alloca i32, align 4
  %MbQ = alloca %struct.macroblock*, align 8
  %MbP = alloca %struct.macroblock*, align 8
  %pixP = alloca %struct.pix_pos, align 4
  %pixQ = alloca %struct.pix_pos, align 4
  %bitdepth_scale = alloca i32, align 4
  store i16** %Img, i16*** %Img.addr, align 8
  store i8* %Strength, i8** %Strength.addr, align 8
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store i32 %MbQAddr, i32* %MbQAddr.addr, align 4
  store i32 %AlphaC0Offset, i32* %AlphaC0Offset.addr, align 4
  store i32 %BetaOffset, i32* %BetaOffset.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %yuv, i32* %yuv.addr, align 4
  store i32 %uv, i32* %uv.addr, align 4
  store i32 0, i32* %ap, align 4
  store i32 0, i32* %aq, align 4
  store i32 0, i32* %L2, align 4
  store i32 0, i32* %R2, align 4
  store i32 0, i32* %Alpha, align 4
  store i32 0, i32* %Beta, align 4
  store i8* null, i8** %ClipTab, align 8
  %0 = load i32, i32* %yuv.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 142
  %2 = load i32, i32* %bitdepth_luma, align 4
  %sub = sub nsw i32 %2, 8
  %shl = shl i32 1, %sub
  store i32 %shl, i32* %bitdepth_scale, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 143
  %4 = load i32, i32* %bitdepth_chroma, align 4
  %sub1 = sub nsw i32 %4, 8
  %shl2 = shl i32 1, %sub1
  store i32 %shl2, i32* %bitdepth_scale, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %yuv.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 160
  %7 = load i32, i32* %yuv_format, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %dir.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* @EdgeLoop.pelnum_cr, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx5, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ 16, %cond.false ]
  store i32 %cond, i32* %PelNum, align 4
  store i32 0, i32* %pel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i32, i32* %pel, align 4
  %11 = load i32, i32* %PelNum, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %dir.addr, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %for.body
  %13 = load i32, i32* %pel, align 4
  br label %cond.end.10

cond.false.8:                                     ; preds = %for.body
  %14 = load i32, i32* %edge.addr, align 4
  %shl9 = shl i32 %14, 2
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i32 [ %13, %cond.true.7 ], [ %shl9, %cond.false.8 ]
  store i32 %cond11, i32* %xQ, align 4
  %15 = load i32, i32* %dir.addr, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %cond.true.13, label %cond.false.20

cond.true.13:                                     ; preds = %cond.end.10
  %16 = load i32, i32* %edge.addr, align 4
  %cmp14 = icmp slt i32 %16, 4
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.true.13
  %17 = load i32, i32* %edge.addr, align 4
  %shl16 = shl i32 %17, 2
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.true.13
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi i32 [ %shl16, %cond.true.15 ], [ 1, %cond.false.17 ]
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.10
  %18 = load i32, i32* %pel, align 4
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.end.18
  %cond22 = phi i32 [ %cond19, %cond.end.18 ], [ %18, %cond.false.20 ]
  store i32 %cond22, i32* %yQ, align 4
  %19 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %20 = load i32, i32* %MbQAddr.addr, align 4
  %21 = load i32, i32* %xQ, align 4
  %22 = load i32, i32* %yQ, align 4
  %23 = load i32, i32* %yuv.addr, align 4
  call void %19(i32 %20, i32 %21, i32 %22, i32 %23, %struct.pix_pos* %pixQ)
  %24 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %25 = load i32, i32* %MbQAddr.addr, align 4
  %26 = load i32, i32* %xQ, align 4
  %27 = load i32, i32* %dir.addr, align 4
  %sub23 = sub nsw i32 1, %27
  %sub24 = sub nsw i32 %26, %sub23
  %28 = load i32, i32* %yQ, align 4
  %29 = load i32, i32* %dir.addr, align 4
  %sub25 = sub nsw i32 %28, %29
  %30 = load i32, i32* %yuv.addr, align 4
  call void %24(i32 %25, i32 %sub24, i32 %sub25, i32 %30, %struct.pix_pos* %pixP)
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 2
  %31 = load i32, i32* %x, align 4
  store i32 %31, i32* %xP, align 4
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 3
  %32 = load i32, i32* %y, align 4
  store i32 %32, i32* %yP, align 4
  %33 = load i32, i32* %MbQAddr.addr, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 61
  %35 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx27 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i64 %idxprom26
  store %struct.macroblock* %arrayidx27, %struct.macroblock** %MbQ, align 8
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 1
  %36 = load i32, i32* %mb_addr, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 61
  %38 = load %struct.macroblock*, %struct.macroblock** %mb_data29, align 8
  %arrayidx30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %38, i64 %idxprom28
  store %struct.macroblock* %arrayidx30, %struct.macroblock** %MbP, align 8
  %39 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 19
  %40 = load i32, i32* %mb_field, align 4
  %tobool31 = icmp ne i32 %40, 0
  br i1 %tobool31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.21
  %41 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %41, i32 0, i32 19
  %42 = load i32, i32* %mb_field32, align 4
  %tobool33 = icmp ne i32 %42, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.21
  %43 = phi i1 [ true, %cond.end.21 ], [ %tobool33, %lor.rhs ]
  %lor.ext = zext i1 %43 to i32
  %conv = trunc i32 %lor.ext to i8
  store i8 %conv, i8* @fieldModeFilteringFlag, align 1
  %44 = load i32, i32* %yuv.addr, align 4
  %tobool34 = icmp ne i32 %44, 0
  br i1 %tobool34, label %land.lhs.true, label %cond.false.49

land.lhs.true:                                    ; preds = %lor.end
  %45 = load i32, i32* %PelNum, align 4
  %cmp35 = icmp eq i32 %45, 8
  br i1 %cmp35, label %cond.true.37, label %cond.false.49

cond.true.37:                                     ; preds = %land.lhs.true
  %46 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field38 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %46, i32 0, i32 19
  %47 = load i32, i32* %mb_field38, align 4
  %tobool39 = icmp ne i32 %47, 0
  br i1 %tobool39, label %land.lhs.true.40, label %cond.false.45

land.lhs.true.40:                                 ; preds = %cond.true.37
  %48 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field41 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %48, i32 0, i32 19
  %49 = load i32, i32* %mb_field41, align 4
  %tobool42 = icmp ne i32 %49, 0
  br i1 %tobool42, label %cond.false.45, label %cond.true.43

cond.true.43:                                     ; preds = %land.lhs.true.40
  %50 = load i32, i32* %pel, align 4
  %shl44 = shl i32 %50, 1
  br label %cond.end.47

cond.false.45:                                    ; preds = %land.lhs.true.40, %cond.true.37
  %51 = load i32, i32* %pel, align 4
  %shr = ashr i32 %51, 1
  %shl46 = shl i32 %shr, 2
  %52 = load i32, i32* %pel, align 4
  %and = and i32 %52, 1
  %add = add nsw i32 %shl46, %and
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.43
  %cond48 = phi i32 [ %shl44, %cond.true.43 ], [ %add, %cond.false.45 ]
  br label %cond.end.50

cond.false.49:                                    ; preds = %land.lhs.true, %lor.end
  %53 = load i32, i32* %pel, align 4
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.end.47
  %cond51 = phi i32 [ %cond48, %cond.end.47 ], [ %53, %cond.false.49 ]
  store i32 %cond51, i32* %StrengthIdx, align 4
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 0
  %54 = load i32, i32* %available, align 4
  %tobool52 = icmp ne i32 %54, 0
  br i1 %tobool52, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.50
  %55 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFDisableIdc = getelementptr inbounds %struct.macroblock, %struct.macroblock* %55, i32 0, i32 40
  %56 = load i32, i32* %LFDisableIdc, align 4
  %cmp53 = icmp eq i32 %56, 0
  br i1 %cmp53, label %if.then.55, label %if.end.390

if.then.55:                                       ; preds = %lor.lhs.false, %cond.end.50
  %57 = load i32, i32* %dir.addr, align 4
  %tobool56 = icmp ne i32 %57, 0
  br i1 %tobool56, label %cond.true.57, label %cond.false.67

cond.true.57:                                     ; preds = %if.then.55
  %58 = load i8, i8* @fieldModeFilteringFlag, align 1
  %conv58 = zext i8 %58 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %land.lhs.true.60, label %cond.false.64

land.lhs.true.60:                                 ; preds = %cond.true.57
  %59 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field61 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %59, i32 0, i32 19
  %60 = load i32, i32* %mb_field61, align 4
  %tobool62 = icmp ne i32 %60, 0
  br i1 %tobool62, label %cond.false.64, label %cond.true.63

cond.true.63:                                     ; preds = %land.lhs.true.60
  %61 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %61
  br label %cond.end.65

cond.false.64:                                    ; preds = %land.lhs.true.60, %cond.true.57
  %62 = load i32, i32* %width.addr, align 4
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.63
  %cond66 = phi i32 [ %mul, %cond.true.63 ], [ %62, %cond.false.64 ]
  br label %cond.end.68

cond.false.67:                                    ; preds = %if.then.55
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.end.65
  %cond69 = phi i32 [ %cond66, %cond.end.65 ], [ 1, %cond.false.67 ]
  store i32 %cond69, i32* %incQ, align 4
  %63 = load i32, i32* %dir.addr, align 4
  %tobool70 = icmp ne i32 %63, 0
  br i1 %tobool70, label %cond.true.71, label %cond.false.82

cond.true.71:                                     ; preds = %cond.end.68
  %64 = load i8, i8* @fieldModeFilteringFlag, align 1
  %conv72 = zext i8 %64 to i32
  %tobool73 = icmp ne i32 %conv72, 0
  br i1 %tobool73, label %land.lhs.true.74, label %cond.false.79

land.lhs.true.74:                                 ; preds = %cond.true.71
  %65 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field75 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i32 0, i32 19
  %66 = load i32, i32* %mb_field75, align 4
  %tobool76 = icmp ne i32 %66, 0
  br i1 %tobool76, label %cond.false.79, label %cond.true.77

cond.true.77:                                     ; preds = %land.lhs.true.74
  %67 = load i32, i32* %width.addr, align 4
  %mul78 = mul nsw i32 2, %67
  br label %cond.end.80

cond.false.79:                                    ; preds = %land.lhs.true.74, %cond.true.71
  %68 = load i32, i32* %width.addr, align 4
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.77
  %cond81 = phi i32 [ %mul78, %cond.true.77 ], [ %68, %cond.false.79 ]
  br label %cond.end.83

cond.false.82:                                    ; preds = %cond.end.68
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.end.80
  %cond84 = phi i32 [ %cond81, %cond.end.80 ], [ 1, %cond.false.82 ]
  store i32 %cond84, i32* %incP, align 4
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixQ, i32 0, i32 4
  %69 = load i32, i32* %pos_x, align 4
  %idxprom85 = sext i32 %69 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixQ, i32 0, i32 5
  %70 = load i32, i32* %pos_y, align 4
  %idxprom86 = sext i32 %70 to i64
  %71 = load i16**, i16*** %Img.addr, align 8
  %arrayidx87 = getelementptr inbounds i16*, i16** %71, i64 %idxprom86
  %72 = load i16*, i16** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %72, i64 %idxprom85
  store i16* %arrayidx88, i16** %SrcPtrQ, align 8
  %pos_x89 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 4
  %73 = load i32, i32* %pos_x89, align 4
  %idxprom90 = sext i32 %73 to i64
  %pos_y91 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 5
  %74 = load i32, i32* %pos_y91, align 4
  %idxprom92 = sext i32 %74 to i64
  %75 = load i16**, i16*** %Img.addr, align 8
  %arrayidx93 = getelementptr inbounds i16*, i16** %75, i64 %idxprom92
  %76 = load i16*, i16** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i16, i16* %76, i64 %idxprom90
  store i16* %arrayidx94, i16** %SrcPtrP, align 8
  %77 = load i32, i32* %yuv.addr, align 4
  %tobool95 = icmp ne i32 %77, 0
  br i1 %tobool95, label %cond.true.96, label %cond.false.105

cond.true.96:                                     ; preds = %cond.end.83
  %78 = load i32, i32* %uv.addr, align 4
  %idxprom97 = sext i32 %78 to i64
  %79 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %qpc = getelementptr inbounds %struct.macroblock, %struct.macroblock* %79, i32 0, i32 3
  %arrayidx98 = getelementptr inbounds [2 x i32], [2 x i32]* %qpc, i32 0, i64 %idxprom97
  %80 = load i32, i32* %arrayidx98, align 4
  %81 = load i32, i32* %uv.addr, align 4
  %idxprom99 = sext i32 %81 to i64
  %82 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %qpc100 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 3
  %arrayidx101 = getelementptr inbounds [2 x i32], [2 x i32]* %qpc100, i32 0, i64 %idxprom99
  %83 = load i32, i32* %arrayidx101, align 4
  %add102 = add nsw i32 %80, %83
  %add103 = add nsw i32 %add102, 1
  %shr104 = ashr i32 %add103, 1
  br label %cond.end.110

cond.false.105:                                   ; preds = %cond.end.83
  %84 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i32 0, i32 2
  %85 = load i32, i32* %qp, align 4
  %86 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %qp106 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i32 0, i32 2
  %87 = load i32, i32* %qp106, align 4
  %add107 = add nsw i32 %85, %87
  %add108 = add nsw i32 %add107, 1
  %shr109 = ashr i32 %add108, 1
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.105, %cond.true.96
  %cond111 = phi i32 [ %shr104, %cond.true.96 ], [ %shr109, %cond.false.105 ]
  store i32 %cond111, i32* %QP, align 4
  %88 = load i32, i32* %QP, align 4
  %89 = load i32, i32* %AlphaC0Offset.addr, align 4
  %add112 = add nsw i32 %88, %89
  %call = call i32 @iClip3(i32 0, i32 51, i32 %add112)
  store i32 %call, i32* %indexA, align 4
  %90 = load i32, i32* %QP, align 4
  %91 = load i32, i32* %BetaOffset.addr, align 4
  %add113 = add nsw i32 %90, %91
  %call114 = call i32 @iClip3(i32 0, i32 51, i32 %add113)
  store i32 %call114, i32* %indexB, align 4
  %92 = load i32, i32* %indexA, align 4
  %idxprom115 = sext i32 %92 to i64
  %arrayidx116 = getelementptr inbounds [52 x i8], [52 x i8]* @ALPHA_TABLE, i32 0, i64 %idxprom115
  %93 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %93 to i32
  %94 = load i32, i32* %bitdepth_scale, align 4
  %mul118 = mul nsw i32 %conv117, %94
  store i32 %mul118, i32* %Alpha, align 4
  %95 = load i32, i32* %indexB, align 4
  %idxprom119 = sext i32 %95 to i64
  %arrayidx120 = getelementptr inbounds [52 x i8], [52 x i8]* @BETA_TABLE, i32 0, i64 %idxprom119
  %96 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %96 to i32
  %97 = load i32, i32* %bitdepth_scale, align 4
  %mul122 = mul nsw i32 %conv121, %97
  store i32 %mul122, i32* %Beta, align 4
  %98 = load i32, i32* %indexA, align 4
  %idxprom123 = sext i32 %98 to i64
  %arrayidx124 = getelementptr inbounds [52 x [5 x i8]], [52 x [5 x i8]]* @CLIP_TAB, i32 0, i64 %idxprom123
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx124, i32 0, i32 0
  store i8* %arraydecay, i8** %ClipTab, align 8
  %99 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %99, i64 0
  %100 = load i16, i16* %arrayidx125, align 2
  %conv126 = zext i16 %100 to i32
  store i32 %conv126, i32* %L0, align 4
  %101 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx127 = getelementptr inbounds i16, i16* %101, i64 0
  %102 = load i16, i16* %arrayidx127, align 2
  %conv128 = zext i16 %102 to i32
  store i32 %conv128, i32* %R0, align 4
  %103 = load i32, i32* %incP, align 4
  %sub129 = sub nsw i32 0, %103
  %idxprom130 = sext i32 %sub129 to i64
  %104 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx131 = getelementptr inbounds i16, i16* %104, i64 %idxprom130
  %105 = load i16, i16* %arrayidx131, align 2
  %conv132 = zext i16 %105 to i32
  store i32 %conv132, i32* %L1, align 4
  %106 = load i32, i32* %incQ, align 4
  %idxprom133 = sext i32 %106 to i64
  %107 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx134 = getelementptr inbounds i16, i16* %107, i64 %idxprom133
  %108 = load i16, i16* %arrayidx134, align 2
  %conv135 = zext i16 %108 to i32
  store i32 %conv135, i32* %R1, align 4
  %109 = load i32, i32* %incP, align 4
  %sub136 = sub nsw i32 0, %109
  %mul137 = mul nsw i32 %sub136, 2
  %idxprom138 = sext i32 %mul137 to i64
  %110 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx139 = getelementptr inbounds i16, i16* %110, i64 %idxprom138
  %111 = load i16, i16* %arrayidx139, align 2
  %conv140 = zext i16 %111 to i32
  store i32 %conv140, i32* %L2, align 4
  %112 = load i32, i32* %incQ, align 4
  %mul141 = mul nsw i32 %112, 2
  %idxprom142 = sext i32 %mul141 to i64
  %113 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx143 = getelementptr inbounds i16, i16* %113, i64 %idxprom142
  %114 = load i16, i16* %arrayidx143, align 2
  %conv144 = zext i16 %114 to i32
  store i32 %conv144, i32* %R2, align 4
  %115 = load i32, i32* %incP, align 4
  %sub145 = sub nsw i32 0, %115
  %mul146 = mul nsw i32 %sub145, 3
  %idxprom147 = sext i32 %mul146 to i64
  %116 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx148 = getelementptr inbounds i16, i16* %116, i64 %idxprom147
  %117 = load i16, i16* %arrayidx148, align 2
  %conv149 = zext i16 %117 to i32
  store i32 %conv149, i32* %L3, align 4
  %118 = load i32, i32* %incQ, align 4
  %mul150 = mul nsw i32 %118, 3
  %idxprom151 = sext i32 %mul150 to i64
  %119 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx152 = getelementptr inbounds i16, i16* %119, i64 %idxprom151
  %120 = load i16, i16* %arrayidx152, align 2
  %conv153 = zext i16 %120 to i32
  store i32 %conv153, i32* %R3, align 4
  %121 = load i32, i32* %StrengthIdx, align 4
  %idxprom154 = sext i32 %121 to i64
  %122 = load i8*, i8** %Strength.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %122, i64 %idxprom154
  %123 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %123 to i32
  store i32 %conv156, i32* %Strng, align 4
  %tobool157 = icmp ne i32 %conv156, 0
  br i1 %tobool157, label %if.then.158, label %if.end.389

if.then.158:                                      ; preds = %cond.end.110
  %124 = load i32, i32* %R0, align 4
  %125 = load i32, i32* %L0, align 4
  %sub159 = sub nsw i32 %124, %125
  store i32 %sub159, i32* %Delta, align 4
  %call160 = call i32 @iabs(i32 %sub159)
  store i32 %call160, i32* %AbsDelta, align 4
  %126 = load i32, i32* %AbsDelta, align 4
  %127 = load i32, i32* %Alpha, align 4
  %cmp161 = icmp slt i32 %126, %127
  br i1 %cmp161, label %if.then.163, label %if.end.388

if.then.163:                                      ; preds = %if.then.158
  %128 = load i32, i32* %Strng, align 4
  %idxprom164 = sext i32 %128 to i64
  %129 = load i8*, i8** %ClipTab, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %129, i64 %idxprom164
  %130 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %130 to i32
  %131 = load i32, i32* %bitdepth_scale, align 4
  %mul167 = mul nsw i32 %conv166, %131
  store i32 %mul167, i32* %C0, align 4
  %132 = load i32, i32* %R0, align 4
  %133 = load i32, i32* %R1, align 4
  %sub168 = sub nsw i32 %132, %133
  %call169 = call i32 @iabs(i32 %sub168)
  %134 = load i32, i32* %Beta, align 4
  %sub170 = sub nsw i32 %call169, %134
  %135 = load i32, i32* %L0, align 4
  %136 = load i32, i32* %L1, align 4
  %sub171 = sub nsw i32 %135, %136
  %call172 = call i32 @iabs(i32 %sub171)
  %137 = load i32, i32* %Beta, align 4
  %sub173 = sub nsw i32 %call172, %137
  %and174 = and i32 %sub170, %sub173
  %cmp175 = icmp slt i32 %and174, 0
  br i1 %cmp175, label %if.then.177, label %if.end.387

if.then.177:                                      ; preds = %if.then.163
  %138 = load i32, i32* %yuv.addr, align 4
  %tobool178 = icmp ne i32 %138, 0
  br i1 %tobool178, label %if.end.190, label %if.then.179

if.then.179:                                      ; preds = %if.then.177
  %139 = load i32, i32* %R0, align 4
  %140 = load i32, i32* %R2, align 4
  %sub180 = sub nsw i32 %139, %140
  %call181 = call i32 @iabs(i32 %sub180)
  %141 = load i32, i32* %Beta, align 4
  %sub182 = sub nsw i32 %call181, %141
  %cmp183 = icmp slt i32 %sub182, 0
  %conv184 = zext i1 %cmp183 to i32
  store i32 %conv184, i32* %aq, align 4
  %142 = load i32, i32* %L0, align 4
  %143 = load i32, i32* %L2, align 4
  %sub185 = sub nsw i32 %142, %143
  %call186 = call i32 @iabs(i32 %sub185)
  %144 = load i32, i32* %Beta, align 4
  %sub187 = sub nsw i32 %call186, %144
  %cmp188 = icmp slt i32 %sub187, 0
  %conv189 = zext i1 %cmp188 to i32
  store i32 %conv189, i32* %ap, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.179, %if.then.177
  %145 = load i32, i32* %L0, align 4
  %146 = load i32, i32* %R0, align 4
  %add191 = add nsw i32 %145, %146
  store i32 %add191, i32* %RL0, align 4
  %147 = load i32, i32* %Strng, align 4
  %cmp192 = icmp eq i32 %147, 4
  br i1 %cmp192, label %if.then.194, label %if.else.315

if.then.194:                                      ; preds = %if.end.190
  %148 = load i32, i32* %yuv.addr, align 4
  %tobool195 = icmp ne i32 %148, 0
  br i1 %tobool195, label %if.then.196, label %if.else.211

if.then.196:                                      ; preds = %if.then.194
  %149 = load i32, i32* %R1, align 4
  %shl197 = shl i32 %149, 1
  %150 = load i32, i32* %R0, align 4
  %add198 = add nsw i32 %shl197, %150
  %151 = load i32, i32* %L1, align 4
  %add199 = add nsw i32 %add198, %151
  %add200 = add nsw i32 %add199, 2
  %shr201 = ashr i32 %add200, 2
  %conv202 = trunc i32 %shr201 to i16
  %152 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx203 = getelementptr inbounds i16, i16* %152, i64 0
  store i16 %conv202, i16* %arrayidx203, align 2
  %153 = load i32, i32* %L1, align 4
  %shl204 = shl i32 %153, 1
  %154 = load i32, i32* %L0, align 4
  %add205 = add nsw i32 %shl204, %154
  %155 = load i32, i32* %R1, align 4
  %add206 = add nsw i32 %add205, %155
  %add207 = add nsw i32 %add206, 2
  %shr208 = ashr i32 %add207, 2
  %conv209 = trunc i32 %shr208 to i16
  %156 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx210 = getelementptr inbounds i16, i16* %156, i64 0
  store i16 %conv209, i16* %arrayidx210, align 2
  br label %if.end.314

if.else.211:                                      ; preds = %if.then.194
  %157 = load i32, i32* %AbsDelta, align 4
  %158 = load i32, i32* %Alpha, align 4
  %shr212 = ashr i32 %158, 2
  %add213 = add nsw i32 %shr212, 2
  %cmp214 = icmp slt i32 %157, %add213
  %conv215 = zext i1 %cmp214 to i32
  store i32 %conv215, i32* %small_gap, align 4
  %159 = load i32, i32* %small_gap, align 4
  %160 = load i32, i32* %aq, align 4
  %and216 = and i32 %160, %159
  store i32 %and216, i32* %aq, align 4
  %161 = load i32, i32* %small_gap, align 4
  %162 = load i32, i32* %ap, align 4
  %and217 = and i32 %162, %161
  store i32 %and217, i32* %ap, align 4
  %163 = load i32, i32* %aq, align 4
  %tobool218 = icmp ne i32 %163, 0
  br i1 %tobool218, label %cond.true.219, label %cond.false.226

cond.true.219:                                    ; preds = %if.else.211
  %164 = load i32, i32* %L1, align 4
  %165 = load i32, i32* %R1, align 4
  %166 = load i32, i32* %RL0, align 4
  %add220 = add nsw i32 %165, %166
  %shl221 = shl i32 %add220, 1
  %add222 = add nsw i32 %164, %shl221
  %167 = load i32, i32* %R2, align 4
  %add223 = add nsw i32 %add222, %167
  %add224 = add nsw i32 %add223, 4
  %shr225 = ashr i32 %add224, 3
  br label %cond.end.232

cond.false.226:                                   ; preds = %if.else.211
  %168 = load i32, i32* %R1, align 4
  %shl227 = shl i32 %168, 1
  %169 = load i32, i32* %R0, align 4
  %add228 = add nsw i32 %shl227, %169
  %170 = load i32, i32* %L1, align 4
  %add229 = add nsw i32 %add228, %170
  %add230 = add nsw i32 %add229, 2
  %shr231 = ashr i32 %add230, 2
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.226, %cond.true.219
  %cond233 = phi i32 [ %shr225, %cond.true.219 ], [ %shr231, %cond.false.226 ]
  %conv234 = trunc i32 %cond233 to i16
  %171 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx235 = getelementptr inbounds i16, i16* %171, i64 0
  store i16 %conv234, i16* %arrayidx235, align 2
  %172 = load i32, i32* %ap, align 4
  %tobool236 = icmp ne i32 %172, 0
  br i1 %tobool236, label %cond.true.237, label %cond.false.244

cond.true.237:                                    ; preds = %cond.end.232
  %173 = load i32, i32* %R1, align 4
  %174 = load i32, i32* %L1, align 4
  %175 = load i32, i32* %RL0, align 4
  %add238 = add nsw i32 %174, %175
  %shl239 = shl i32 %add238, 1
  %add240 = add nsw i32 %173, %shl239
  %176 = load i32, i32* %L2, align 4
  %add241 = add nsw i32 %add240, %176
  %add242 = add nsw i32 %add241, 4
  %shr243 = ashr i32 %add242, 3
  br label %cond.end.250

cond.false.244:                                   ; preds = %cond.end.232
  %177 = load i32, i32* %L1, align 4
  %shl245 = shl i32 %177, 1
  %178 = load i32, i32* %L0, align 4
  %add246 = add nsw i32 %shl245, %178
  %179 = load i32, i32* %R1, align 4
  %add247 = add nsw i32 %add246, %179
  %add248 = add nsw i32 %add247, 2
  %shr249 = ashr i32 %add248, 2
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.244, %cond.true.237
  %cond251 = phi i32 [ %shr243, %cond.true.237 ], [ %shr249, %cond.false.244 ]
  %conv252 = trunc i32 %cond251 to i16
  %180 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx253 = getelementptr inbounds i16, i16* %180, i64 0
  store i16 %conv252, i16* %arrayidx253, align 2
  %181 = load i32, i32* %aq, align 4
  %tobool254 = icmp ne i32 %181, 0
  br i1 %tobool254, label %cond.true.255, label %cond.false.261

cond.true.255:                                    ; preds = %cond.end.250
  %182 = load i32, i32* %R2, align 4
  %183 = load i32, i32* %R0, align 4
  %add256 = add nsw i32 %182, %183
  %184 = load i32, i32* %R1, align 4
  %add257 = add nsw i32 %add256, %184
  %185 = load i32, i32* %L0, align 4
  %add258 = add nsw i32 %add257, %185
  %add259 = add nsw i32 %add258, 2
  %shr260 = ashr i32 %add259, 2
  br label %cond.end.262

cond.false.261:                                   ; preds = %cond.end.250
  %186 = load i32, i32* %R1, align 4
  br label %cond.end.262

cond.end.262:                                     ; preds = %cond.false.261, %cond.true.255
  %cond263 = phi i32 [ %shr260, %cond.true.255 ], [ %186, %cond.false.261 ]
  %conv264 = trunc i32 %cond263 to i16
  %187 = load i32, i32* %incQ, align 4
  %idxprom265 = sext i32 %187 to i64
  %188 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx266 = getelementptr inbounds i16, i16* %188, i64 %idxprom265
  store i16 %conv264, i16* %arrayidx266, align 2
  %189 = load i32, i32* %ap, align 4
  %tobool267 = icmp ne i32 %189, 0
  br i1 %tobool267, label %cond.true.268, label %cond.false.274

cond.true.268:                                    ; preds = %cond.end.262
  %190 = load i32, i32* %L2, align 4
  %191 = load i32, i32* %L1, align 4
  %add269 = add nsw i32 %190, %191
  %192 = load i32, i32* %L0, align 4
  %add270 = add nsw i32 %add269, %192
  %193 = load i32, i32* %R0, align 4
  %add271 = add nsw i32 %add270, %193
  %add272 = add nsw i32 %add271, 2
  %shr273 = ashr i32 %add272, 2
  br label %cond.end.275

cond.false.274:                                   ; preds = %cond.end.262
  %194 = load i32, i32* %L1, align 4
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.274, %cond.true.268
  %cond276 = phi i32 [ %shr273, %cond.true.268 ], [ %194, %cond.false.274 ]
  %conv277 = trunc i32 %cond276 to i16
  %195 = load i32, i32* %incP, align 4
  %sub278 = sub nsw i32 0, %195
  %idxprom279 = sext i32 %sub278 to i64
  %196 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx280 = getelementptr inbounds i16, i16* %196, i64 %idxprom279
  store i16 %conv277, i16* %arrayidx280, align 2
  %197 = load i32, i32* %aq, align 4
  %tobool281 = icmp ne i32 %197, 0
  br i1 %tobool281, label %cond.true.282, label %cond.false.290

cond.true.282:                                    ; preds = %cond.end.275
  %198 = load i32, i32* %R3, align 4
  %199 = load i32, i32* %R2, align 4
  %add283 = add nsw i32 %198, %199
  %shl284 = shl i32 %add283, 1
  %200 = load i32, i32* %R2, align 4
  %add285 = add nsw i32 %shl284, %200
  %201 = load i32, i32* %R1, align 4
  %add286 = add nsw i32 %add285, %201
  %202 = load i32, i32* %RL0, align 4
  %add287 = add nsw i32 %add286, %202
  %add288 = add nsw i32 %add287, 4
  %shr289 = ashr i32 %add288, 3
  br label %cond.end.291

cond.false.290:                                   ; preds = %cond.end.275
  %203 = load i32, i32* %R2, align 4
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.290, %cond.true.282
  %cond292 = phi i32 [ %shr289, %cond.true.282 ], [ %203, %cond.false.290 ]
  %conv293 = trunc i32 %cond292 to i16
  %204 = load i32, i32* %incQ, align 4
  %mul294 = mul nsw i32 %204, 2
  %idxprom295 = sext i32 %mul294 to i64
  %205 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx296 = getelementptr inbounds i16, i16* %205, i64 %idxprom295
  store i16 %conv293, i16* %arrayidx296, align 2
  %206 = load i32, i32* %ap, align 4
  %tobool297 = icmp ne i32 %206, 0
  br i1 %tobool297, label %cond.true.298, label %cond.false.306

cond.true.298:                                    ; preds = %cond.end.291
  %207 = load i32, i32* %L3, align 4
  %208 = load i32, i32* %L2, align 4
  %add299 = add nsw i32 %207, %208
  %shl300 = shl i32 %add299, 1
  %209 = load i32, i32* %L2, align 4
  %add301 = add nsw i32 %shl300, %209
  %210 = load i32, i32* %L1, align 4
  %add302 = add nsw i32 %add301, %210
  %211 = load i32, i32* %RL0, align 4
  %add303 = add nsw i32 %add302, %211
  %add304 = add nsw i32 %add303, 4
  %shr305 = ashr i32 %add304, 3
  br label %cond.end.307

cond.false.306:                                   ; preds = %cond.end.291
  %212 = load i32, i32* %L2, align 4
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.306, %cond.true.298
  %cond308 = phi i32 [ %shr305, %cond.true.298 ], [ %212, %cond.false.306 ]
  %conv309 = trunc i32 %cond308 to i16
  %213 = load i32, i32* %incP, align 4
  %sub310 = sub nsw i32 0, %213
  %mul311 = mul nsw i32 %sub310, 2
  %idxprom312 = sext i32 %mul311 to i64
  %214 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx313 = getelementptr inbounds i16, i16* %214, i64 %idxprom312
  store i16 %conv309, i16* %arrayidx313, align 2
  br label %if.end.314

if.end.314:                                       ; preds = %cond.end.307, %if.then.196
  br label %if.end.386

if.else.315:                                      ; preds = %if.end.190
  %215 = load i32, i32* %yuv.addr, align 4
  %tobool316 = icmp ne i32 %215, 0
  br i1 %tobool316, label %cond.true.317, label %cond.false.319

cond.true.317:                                    ; preds = %if.else.315
  %216 = load i32, i32* %C0, align 4
  %add318 = add nsw i32 %216, 1
  br label %cond.end.322

cond.false.319:                                   ; preds = %if.else.315
  %217 = load i32, i32* %C0, align 4
  %218 = load i32, i32* %ap, align 4
  %add320 = add nsw i32 %217, %218
  %219 = load i32, i32* %aq, align 4
  %add321 = add nsw i32 %add320, %219
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.319, %cond.true.317
  %cond323 = phi i32 [ %add318, %cond.true.317 ], [ %add321, %cond.false.319 ]
  store i32 %cond323, i32* %c0, align 4
  %220 = load i32, i32* %c0, align 4
  %sub324 = sub nsw i32 0, %220
  %221 = load i32, i32* %c0, align 4
  %222 = load i32, i32* %Delta, align 4
  %shl325 = shl i32 %222, 2
  %223 = load i32, i32* %L1, align 4
  %224 = load i32, i32* %R1, align 4
  %sub326 = sub nsw i32 %223, %224
  %add327 = add nsw i32 %shl325, %sub326
  %add328 = add nsw i32 %add327, 4
  %shr329 = ashr i32 %add328, 3
  %call330 = call i32 @iClip3(i32 %sub324, i32 %221, i32 %shr329)
  store i32 %call330, i32* %dif, align 4
  %225 = load i32, i32* %yuv.addr, align 4
  %tobool331 = icmp ne i32 %225, 0
  br i1 %tobool331, label %if.else.375, label %if.then.332

if.then.332:                                      ; preds = %cond.end.322
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 156
  %227 = load i32, i32* %max_imgpel_value, align 4
  %228 = load i32, i32* %L0, align 4
  %229 = load i32, i32* %dif, align 4
  %add333 = add nsw i32 %228, %229
  %call334 = call i32 @iClip3(i32 0, i32 %227, i32 %add333)
  %conv335 = trunc i32 %call334 to i16
  %230 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx336 = getelementptr inbounds i16, i16* %230, i64 0
  store i16 %conv335, i16* %arrayidx336, align 2
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value337 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 156
  %232 = load i32, i32* %max_imgpel_value337, align 4
  %233 = load i32, i32* %R0, align 4
  %234 = load i32, i32* %dif, align 4
  %sub338 = sub nsw i32 %233, %234
  %call339 = call i32 @iClip3(i32 0, i32 %232, i32 %sub338)
  %conv340 = trunc i32 %call339 to i16
  %235 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx341 = getelementptr inbounds i16, i16* %235, i64 0
  store i16 %conv340, i16* %arrayidx341, align 2
  %236 = load i32, i32* %ap, align 4
  %tobool342 = icmp ne i32 %236, 0
  br i1 %tobool342, label %if.then.343, label %if.end.358

if.then.343:                                      ; preds = %if.then.332
  %237 = load i32, i32* %C0, align 4
  %sub344 = sub nsw i32 0, %237
  %238 = load i32, i32* %C0, align 4
  %239 = load i32, i32* %L2, align 4
  %240 = load i32, i32* %RL0, align 4
  %add345 = add nsw i32 %240, 1
  %shr346 = ashr i32 %add345, 1
  %add347 = add nsw i32 %239, %shr346
  %241 = load i32, i32* %L1, align 4
  %shl348 = shl i32 %241, 1
  %sub349 = sub nsw i32 %add347, %shl348
  %shr350 = ashr i32 %sub349, 1
  %call351 = call i32 @iClip3(i32 %sub344, i32 %238, i32 %shr350)
  %242 = load i32, i32* %incP, align 4
  %sub352 = sub nsw i32 0, %242
  %idxprom353 = sext i32 %sub352 to i64
  %243 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx354 = getelementptr inbounds i16, i16* %243, i64 %idxprom353
  %244 = load i16, i16* %arrayidx354, align 2
  %conv355 = zext i16 %244 to i32
  %add356 = add nsw i32 %conv355, %call351
  %conv357 = trunc i32 %add356 to i16
  store i16 %conv357, i16* %arrayidx354, align 2
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.343, %if.then.332
  %245 = load i32, i32* %aq, align 4
  %tobool359 = icmp ne i32 %245, 0
  br i1 %tobool359, label %if.then.360, label %if.end.374

if.then.360:                                      ; preds = %if.end.358
  %246 = load i32, i32* %C0, align 4
  %sub361 = sub nsw i32 0, %246
  %247 = load i32, i32* %C0, align 4
  %248 = load i32, i32* %R2, align 4
  %249 = load i32, i32* %RL0, align 4
  %add362 = add nsw i32 %249, 1
  %shr363 = ashr i32 %add362, 1
  %add364 = add nsw i32 %248, %shr363
  %250 = load i32, i32* %R1, align 4
  %shl365 = shl i32 %250, 1
  %sub366 = sub nsw i32 %add364, %shl365
  %shr367 = ashr i32 %sub366, 1
  %call368 = call i32 @iClip3(i32 %sub361, i32 %247, i32 %shr367)
  %251 = load i32, i32* %incQ, align 4
  %idxprom369 = sext i32 %251 to i64
  %252 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx370 = getelementptr inbounds i16, i16* %252, i64 %idxprom369
  %253 = load i16, i16* %arrayidx370, align 2
  %conv371 = zext i16 %253 to i32
  %add372 = add nsw i32 %conv371, %call368
  %conv373 = trunc i32 %add372 to i16
  store i16 %conv373, i16* %arrayidx370, align 2
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.360, %if.end.358
  br label %if.end.385

if.else.375:                                      ; preds = %cond.end.322
  %254 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %254, i32 0, i32 157
  %255 = load i32, i32* %max_imgpel_value_uv, align 4
  %256 = load i32, i32* %L0, align 4
  %257 = load i32, i32* %dif, align 4
  %add376 = add nsw i32 %256, %257
  %call377 = call i32 @iClip3(i32 0, i32 %255, i32 %add376)
  %conv378 = trunc i32 %call377 to i16
  %258 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx379 = getelementptr inbounds i16, i16* %258, i64 0
  store i16 %conv378, i16* %arrayidx379, align 2
  %259 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value_uv380 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %259, i32 0, i32 157
  %260 = load i32, i32* %max_imgpel_value_uv380, align 4
  %261 = load i32, i32* %R0, align 4
  %262 = load i32, i32* %dif, align 4
  %sub381 = sub nsw i32 %261, %262
  %call382 = call i32 @iClip3(i32 0, i32 %260, i32 %sub381)
  %conv383 = trunc i32 %call382 to i16
  %263 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx384 = getelementptr inbounds i16, i16* %263, i64 0
  store i16 %conv383, i16* %arrayidx384, align 2
  br label %if.end.385

if.end.385:                                       ; preds = %if.else.375, %if.end.374
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.end.314
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %if.then.163
  br label %if.end.388

if.end.388:                                       ; preds = %if.end.387, %if.then.158
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %cond.end.110
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.390
  %264 = load i32, i32* %pel, align 4
  %inc = add nsw i32 %264, 1
  store i32 %inc, i32* %pel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #3 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #3 {
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
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
