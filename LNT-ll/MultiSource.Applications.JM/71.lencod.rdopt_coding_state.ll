; ModuleID = './MultiSource.Applications.JM/71.lencod.rdopt_coding_state.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
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
%struct.CSobj = type { i32, %struct.EncodingEnvironment*, %struct.Bitstream*, i32, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, [8 x i32], [2 x [4 x [4 x [2 x i32]]]], i64 }

@.str = private unnamed_addr constant [22 x i8] c"init_coding_state: cs\00", align 1
@input = external global %struct.InputParameters*, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"init_coding_state: cs->encenv\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"init_coding_state: cs->bitstream\00", align 1
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

; Function Attrs: nounwind uwtable
define void @delete_coding_state(%struct.CSobj* %cs) #0 {
entry:
  %cs.addr = alloca %struct.CSobj*, align 8
  store %struct.CSobj* %cs, %struct.CSobj** %cs.addr, align 8
  %0 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %cmp = icmp ne %struct.CSobj* %0, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %encenv = getelementptr inbounds %struct.CSobj, %struct.CSobj* %1, i32 0, i32 1
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %encenv, align 8
  %cmp1 = icmp ne %struct.EncodingEnvironment* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %encenv3 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %3, i32 0, i32 1
  %4 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %encenv3, align 8
  %5 = bitcast %struct.EncodingEnvironment* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream = getelementptr inbounds %struct.CSobj, %struct.CSobj* %6, i32 0, i32 2
  %7 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %cmp4 = icmp ne %struct.Bitstream* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream6 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %8, i32 0, i32 2
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream6, align 8
  %10 = bitcast %struct.Bitstream* %9 to i8*
  call void @free(i8* %10) #3
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %11 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %mot_ctx = getelementptr inbounds %struct.CSobj, %struct.CSobj* %11, i32 0, i32 4
  %12 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %12)
  %13 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %tex_ctx = getelementptr inbounds %struct.CSobj, %struct.CSobj* %13, i32 0, i32 5
  %14 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %14)
  %15 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %16 = bitcast %struct.CSobj* %15 to i8*
  call void @free(i8* %16) #3
  store %struct.CSobj* null, %struct.CSobj** %cs.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #2

declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #2

; Function Attrs: nounwind uwtable
define %struct.CSobj* @create_coding_state() #0 {
entry:
  %cs = alloca %struct.CSobj*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 344) #3
  %0 = bitcast i8* %call to %struct.CSobj*
  store %struct.CSobj* %0, %struct.CSobj** %cs, align 8
  %cmp = icmp eq %struct.CSobj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 76
  %2 = load i32, i32* %partition_mode, align 4
  %cmp1 = icmp eq i32 %2, 0
  %cond = select i1 %cmp1, i32 1, i32 3
  %3 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %no_part = getelementptr inbounds %struct.CSobj, %struct.CSobj* %3, i32 0, i32 0
  store i32 %cond, i32* %no_part, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 74
  %5 = load i32, i32* %symbol_mode, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %no_part4 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %6, i32 0, i32 0
  %7 = load i32, i32* %no_part4, align 4
  %conv = sext i32 %7 to i64
  %call5 = call noalias i8* @calloc(i64 %conv, i64 48) #3
  %8 = bitcast i8* %call5 to %struct.EncodingEnvironment*
  %9 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %encenv = getelementptr inbounds %struct.CSobj, %struct.CSobj* %9, i32 0, i32 1
  store %struct.EncodingEnvironment* %8, %struct.EncodingEnvironment** %encenv, align 8
  %cmp6 = icmp eq %struct.EncodingEnvironment* %8, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.3
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.3
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %10 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %encenv10 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %10, i32 0, i32 1
  store %struct.EncodingEnvironment* null, %struct.EncodingEnvironment** %encenv10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end.9
  %11 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %no_part12 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %11, i32 0, i32 0
  %12 = load i32, i32* %no_part12, align 4
  %conv13 = sext i32 %12 to i64
  %call14 = call noalias i8* @calloc(i64 %conv13, i64 48) #3
  %13 = bitcast i8* %call14 to %struct.Bitstream*
  %14 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %bitstream = getelementptr inbounds %struct.CSobj, %struct.CSobj* %14, i32 0, i32 2
  store %struct.Bitstream* %13, %struct.Bitstream** %bitstream, align 8
  %cmp15 = icmp eq %struct.Bitstream* %13, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.11
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.11
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 74
  %16 = load i32, i32* %symbol_mode19, align 4
  %17 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %symbol_mode20 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %17, i32 0, i32 3
  store i32 %16, i32* %symbol_mode20, align 4
  %18 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %symbol_mode21 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %18, i32 0, i32 3
  %19 = load i32, i32* %symbol_mode21, align 4
  %cmp22 = icmp eq i32 %19, 1
  br i1 %cmp22, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %if.end.18
  %call25 = call %struct.MotionInfoContexts* @create_contexts_MotionInfo()
  %20 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %mot_ctx = getelementptr inbounds %struct.CSobj, %struct.CSobj* %20, i32 0, i32 4
  store %struct.MotionInfoContexts* %call25, %struct.MotionInfoContexts** %mot_ctx, align 8
  %call26 = call %struct.TextureInfoContexts* @create_contexts_TextureInfo()
  %21 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %tex_ctx = getelementptr inbounds %struct.CSobj, %struct.CSobj* %21, i32 0, i32 5
  store %struct.TextureInfoContexts* %call26, %struct.TextureInfoContexts** %tex_ctx, align 8
  br label %if.end.30

if.else.27:                                       ; preds = %if.end.18
  %22 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %mot_ctx28 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %22, i32 0, i32 4
  store %struct.MotionInfoContexts* null, %struct.MotionInfoContexts** %mot_ctx28, align 8
  %23 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %tex_ctx29 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %23, i32 0, i32 5
  store %struct.TextureInfoContexts* null, %struct.TextureInfoContexts** %tex_ctx29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.24
  %24 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  ret %struct.CSobj* %24
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #2

declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #2

; Function Attrs: nounwind uwtable
define void @store_coding_state(%struct.CSobj* %cs) #0 {
entry:
  %cs.addr = alloca %struct.CSobj*, align 8
  %i = alloca i32, align 4
  %i_last = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.CSobj* %cs, %struct.CSobj** %cs.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 59
  %1 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %1, i32 0, i32 1
  %2 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %no_part = getelementptr inbounds %struct.CSobj, %struct.CSobj* %3, i32 0, i32 0
  %4 = load i32, i32* %no_part, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %i_last, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 60
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %6, %struct.Slice** %currSlice, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 61
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 113
  %12 = load i32, i32* %rdopt, align 4
  %tobool1 = icmp ne i32 %12, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  br label %return

if.end:                                           ; preds = %cond.end
  %13 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %symbol_mode = getelementptr inbounds %struct.CSobj, %struct.CSobj* %13, i32 0, i32 3
  %14 = load i32, i32* %symbol_mode, align 4
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %i_last, align 4
  %cmp3 = icmp slt i32 %15, %16
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %17 to i64
  %18 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %encenv = getelementptr inbounds %struct.CSobj, %struct.CSobj* %18, i32 0, i32 1
  %19 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %encenv, align 8
  %arrayidx5 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %19, i64 %idxprom4
  %20 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %20 to i64
  %21 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %21, i32 0, i32 6
  %22 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx7 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %22, i64 %idxprom6
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx7, i32 0, i32 1
  %23 = bitcast %struct.EncodingEnvironment* %arrayidx5 to i8*
  %24 = bitcast %struct.EncodingEnvironment* %ee_cabac to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 48, i32 8, i1 false)
  %25 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %25 to i64
  %26 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream = getelementptr inbounds %struct.CSobj, %struct.CSobj* %26, i32 0, i32 2
  %27 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %arrayidx9 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %27, i64 %idxprom8
  %28 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %28 to i64
  %29 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr11 = getelementptr inbounds %struct.Slice, %struct.Slice* %29, i32 0, i32 6
  %30 = load %struct.datapartition*, %struct.datapartition** %partArr11, align 8
  %arrayidx12 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %30, i64 %idxprom10
  %bitstream13 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx12, i32 0, i32 0
  %31 = load %struct.Bitstream*, %struct.Bitstream** %bitstream13, align 8
  %32 = bitcast %struct.Bitstream* %arrayidx9 to i8*
  %33 = bitcast %struct.Bitstream* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 48, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %mot_ctx = getelementptr inbounds %struct.CSobj, %struct.CSobj* %35, i32 0, i32 4
  %36 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  %37 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %mot_ctx14 = getelementptr inbounds %struct.Slice, %struct.Slice* %37, i32 0, i32 7
  %38 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx14, align 8
  %39 = bitcast %struct.MotionInfoContexts* %36 to i8*
  %40 = bitcast %struct.MotionInfoContexts* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 1504, i32 8, i1 false)
  %41 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %tex_ctx = getelementptr inbounds %struct.CSobj, %struct.CSobj* %41, i32 0, i32 5
  %42 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %43 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %tex_ctx15 = getelementptr inbounds %struct.Slice, %struct.Slice* %43, i32 0, i32 8
  %44 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx15, align 8
  %45 = bitcast %struct.TextureInfoContexts* %42 to i8*
  %46 = bitcast %struct.TextureInfoContexts* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 12128, i32 8, i1 false)
  br label %if.end.29

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.26, %if.else
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %i_last, align 4
  %cmp17 = icmp slt i32 %47, %48
  br i1 %cmp17, label %for.body.18, label %for.end.28

for.body.18:                                      ; preds = %for.cond.16
  %49 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %49 to i64
  %50 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream20 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %50, i32 0, i32 2
  %51 = load %struct.Bitstream*, %struct.Bitstream** %bitstream20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %51, i64 %idxprom19
  %52 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %52 to i64
  %53 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr23 = getelementptr inbounds %struct.Slice, %struct.Slice* %53, i32 0, i32 6
  %54 = load %struct.datapartition*, %struct.datapartition** %partArr23, align 8
  %arrayidx24 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %54, i64 %idxprom22
  %bitstream25 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx24, i32 0, i32 0
  %55 = load %struct.Bitstream*, %struct.Bitstream** %bitstream25, align 8
  %56 = bitcast %struct.Bitstream* %arrayidx21 to i8*
  %57 = bitcast %struct.Bitstream* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 48, i32 8, i1 false)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.18
  %58 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %58, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.16

for.end.28:                                       ; preds = %for.cond.16
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.28, %for.end
  %59 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitcounter = getelementptr inbounds %struct.CSobj, %struct.CSobj* %59, i32 0, i32 6
  %60 = bitcast [8 x i32]* %bitcounter to i8*
  %61 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %61, i32 0, i32 5
  %62 = bitcast [8 x i32]* %bitcounter30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %62, i64 32, i32 8, i1 false)
  %63 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %mvd = getelementptr inbounds %struct.CSobj, %struct.CSobj* %63, i32 0, i32 7
  %64 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd to i8*
  %65 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mvd31 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i32 0, i32 9
  %66 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %66, i64 256, i32 4, i1 false)
  %67 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_bits = getelementptr inbounds %struct.macroblock, %struct.macroblock* %67, i32 0, i32 16
  %68 = load i64, i64* %cbp_bits, align 8
  %69 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %cbp_bits32 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %69, i32 0, i32 8
  store i64 %68, i64* %cbp_bits32, align 8
  br label %return

return:                                           ; preds = %if.end.29, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @reset_coding_state(%struct.CSobj* %cs) #0 {
entry:
  %cs.addr = alloca %struct.CSobj*, align 8
  %i = alloca i32, align 4
  %i_last = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.CSobj* %cs, %struct.CSobj** %cs.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 59
  %1 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %1, i32 0, i32 1
  %2 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %no_part = getelementptr inbounds %struct.CSobj, %struct.CSobj* %3, i32 0, i32 0
  %4 = load i32, i32* %no_part, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %i_last, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 60
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %6, %struct.Slice** %currSlice, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 61
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 113
  %12 = load i32, i32* %rdopt, align 4
  %tobool1 = icmp ne i32 %12, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  br label %return

if.end:                                           ; preds = %cond.end
  %13 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %symbol_mode = getelementptr inbounds %struct.CSobj, %struct.CSobj* %13, i32 0, i32 3
  %14 = load i32, i32* %symbol_mode, align 4
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %i_last, align 4
  %cmp3 = icmp slt i32 %15, %16
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %17 to i64
  %18 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %18, i32 0, i32 6
  %19 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx5 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %19, i64 %idxprom4
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx5, i32 0, i32 1
  %20 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %20 to i64
  %21 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %encenv = getelementptr inbounds %struct.CSobj, %struct.CSobj* %21, i32 0, i32 1
  %22 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %encenv, align 8
  %arrayidx7 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %22, i64 %idxprom6
  %23 = bitcast %struct.EncodingEnvironment* %ee_cabac to i8*
  %24 = bitcast %struct.EncodingEnvironment* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 48, i32 8, i1 false)
  %25 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %25 to i64
  %26 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr9 = getelementptr inbounds %struct.Slice, %struct.Slice* %26, i32 0, i32 6
  %27 = load %struct.datapartition*, %struct.datapartition** %partArr9, align 8
  %arrayidx10 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %27, i64 %idxprom8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx10, i32 0, i32 0
  %28 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %29 to i64
  %30 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream12 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %30, i32 0, i32 2
  %31 = load %struct.Bitstream*, %struct.Bitstream** %bitstream12, align 8
  %arrayidx13 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %31, i64 %idxprom11
  %32 = bitcast %struct.Bitstream* %28 to i8*
  %33 = bitcast %struct.Bitstream* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 48, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %35, i32 0, i32 7
  %36 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  %37 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %mot_ctx14 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %37, i32 0, i32 4
  %38 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx14, align 8
  %39 = bitcast %struct.MotionInfoContexts* %36 to i8*
  %40 = bitcast %struct.MotionInfoContexts* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 1504, i32 8, i1 false)
  %41 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %41, i32 0, i32 8
  %42 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %43 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %tex_ctx15 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %43, i32 0, i32 5
  %44 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx15, align 8
  %45 = bitcast %struct.TextureInfoContexts* %42 to i8*
  %46 = bitcast %struct.TextureInfoContexts* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 12128, i32 8, i1 false)
  br label %if.end.29

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.26, %if.else
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %i_last, align 4
  %cmp17 = icmp slt i32 %47, %48
  br i1 %cmp17, label %for.body.18, label %for.end.28

for.body.18:                                      ; preds = %for.cond.16
  %49 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %49 to i64
  %50 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr20 = getelementptr inbounds %struct.Slice, %struct.Slice* %50, i32 0, i32 6
  %51 = load %struct.datapartition*, %struct.datapartition** %partArr20, align 8
  %arrayidx21 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %51, i64 %idxprom19
  %bitstream22 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx21, i32 0, i32 0
  %52 = load %struct.Bitstream*, %struct.Bitstream** %bitstream22, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %53 to i64
  %54 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream24 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %54, i32 0, i32 2
  %55 = load %struct.Bitstream*, %struct.Bitstream** %bitstream24, align 8
  %arrayidx25 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %55, i64 %idxprom23
  %56 = bitcast %struct.Bitstream* %52 to i8*
  %57 = bitcast %struct.Bitstream* %arrayidx25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 48, i32 8, i1 false)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.18
  %58 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %58, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.16

for.end.28:                                       ; preds = %for.cond.16
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.28, %for.end
  %59 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %59, i32 0, i32 5
  %60 = bitcast [8 x i32]* %bitcounter to i8*
  %61 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitcounter30 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %61, i32 0, i32 6
  %62 = bitcast [8 x i32]* %bitcounter30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %62, i64 32, i32 8, i1 false)
  %63 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mvd = getelementptr inbounds %struct.macroblock, %struct.macroblock* %63, i32 0, i32 9
  %64 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd to i8*
  %65 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %mvd31 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %65, i32 0, i32 7
  %66 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %66, i64 256, i32 4, i1 false)
  %67 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %cbp_bits = getelementptr inbounds %struct.CSobj, %struct.CSobj* %67, i32 0, i32 8
  %68 = load i64, i64* %cbp_bits, align 8
  %69 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_bits32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %69, i32 0, i32 16
  store i64 %68, i64* %cbp_bits32, align 8
  br label %return

return:                                           ; preds = %if.end.29, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
