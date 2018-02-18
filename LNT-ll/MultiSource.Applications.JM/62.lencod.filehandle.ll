; ModuleID = './MultiSource.Applications.JM/62.lencod.filehandle.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.StatParameters = type { i32, i32, float, float, i64, i64, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, i32*, i32*, i64, i64, i64, float, float, float, [5 x [15 x i64]], [5 x [15 x i64]], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], i32, i32, i32*, i32, i32 }
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
%struct.bufferingperiod_information_struct = type { i32, [32 x i32], [32 x i32], %struct.Bitstream*, i32 }
%struct.pictiming_information_struct = type { i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Bitstream*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@input = external global %struct.InputParameters*, align 8
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [34 x i8] c"Output File Mode %d not supported\00", align 1
@stats = external global %struct.StatParameters*, align 8
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
@seiHasBufferingPeriod_info = common global i32 0, align 4
@seiBufferingPeriod = common global %struct.bufferingperiod_information_struct zeroinitializer, align 8
@seiHasPicTiming_info = common global i32 0, align 4
@seiPicTiming = common global %struct.pictiming_information_struct zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define void @error(i8* %text, i32 %code) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %code.addr = alloca i32, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %text.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %1)
  call void @flush_dpb()
  %2 = load i32, i32* %code.addr, align 4
  call void @exit(i32 %2) #4
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @flush_dpb() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @write_PPS(i32 %len, i32 %PPS_id) #0 {
entry:
  %len.addr = alloca i32, align 4
  %PPS_id.addr = alloca i32, align 4
  %nalu = alloca %struct.NALU_t*, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %PPS_id, i32* %PPS_id.addr, align 4
  store %struct.NALU_t* null, %struct.NALU_t** %nalu, align 8
  %0 = load i32, i32* %PPS_id.addr, align 4
  %call = call %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 %0)
  store %struct.NALU_t* %call, %struct.NALU_t** %nalu, align 8
  %1 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %2 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call1 = call i32 %1(%struct.NALU_t* %2)
  %3 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %3, %call1
  store i32 %add, i32* %len.addr, align 4
  %4 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %4)
  %5 = load i32, i32* %len.addr, align 4
  ret i32 %5
}

declare %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32) #1

declare void @FreeNALU(%struct.NALU_t*) #1

; Function Attrs: nounwind uwtable
define i32 @start_sequence() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %total_pps = alloca i32, align 4
  %nalu = alloca %struct.NALU_t*, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 34
  %1 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 3, i32 1
  store i32 %cond, i32* %total_pps, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 75
  %3 = load i32, i32* %of_mode, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %outfile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 26
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %outfile, i32 0, i32 0
  call void @OpenAnnexbFile(i8* %arraydecay)
  store i32 (%struct.NALU_t*)* @WriteAnnexbNALU, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %outfile2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 26
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %outfile2, i32 0, i32 0
  call void @OpenRTPFile(i8* %arraydecay3)
  store i32 (%struct.NALU_t*)* @WriteRTPNALU, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 75
  %7 = load i32, i32* %of_mode4, align 4
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 %7) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 1)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  store %struct.NALU_t* null, %struct.NALU_t** %nalu, align 8
  %call5 = call %struct.NALU_t* @GenerateSeq_parameter_set_NALU()
  store %struct.NALU_t* %call5, %struct.NALU_t** %nalu, align 8
  %8 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %9 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call6 = call i32 %8(%struct.NALU_t* %9)
  %10 = load i32, i32* %len, align 4
  %add = add nsw i32 %10, %call6
  store i32 %add, i32* %len, align 4
  %11 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %11)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %total_pps, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %len, align 4
  %15 = load i32, i32* %i, align 4
  %call7 = call i32 @write_PPS(i32 %14, i32 %15)
  store i32 %call7, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Generate_SEIVUI = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 35
  %18 = load i32, i32* %Generate_SEIVUI, align 4
  %tobool8 = icmp ne i32 %18, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store %struct.NALU_t* null, %struct.NALU_t** %nalu, align 8
  %call9 = call %struct.NALU_t* (...) @GenerateSEImessage_NALU()
  store %struct.NALU_t* %call9, %struct.NALU_t** %nalu, align 8
  %19 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %20 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call10 = call i32 %19(%struct.NALU_t* %20)
  %21 = load i32, i32* %len, align 4
  %add11 = add nsw i32 %21, %call10
  store i32 %add11, i32* %len, align 4
  %22 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %23 = load i32, i32* %len, align 4
  %24 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %24, i32 0, i32 35
  store i32 %23, i32* %bit_ctr_parametersets_n, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.default
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare void @OpenAnnexbFile(i8*) #1

declare i32 @WriteAnnexbNALU(%struct.NALU_t*) #1

declare void @OpenRTPFile(i8*) #1

declare i32 @WriteRTPNALU(%struct.NALU_t*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare %struct.NALU_t* @GenerateSeq_parameter_set_NALU() #1

declare %struct.NALU_t* @GenerateSEImessage_NALU(...) #1

; Function Attrs: nounwind uwtable
define i32 @rewrite_paramsets() #0 {
entry:
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %total_pps = alloca i32, align 4
  %nalu = alloca %struct.NALU_t*, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 34
  %1 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 3, i32 1
  store i32 %cond, i32* %total_pps, align 4
  store %struct.NALU_t* null, %struct.NALU_t** %nalu, align 8
  %call = call %struct.NALU_t* @GenerateSeq_parameter_set_NALU()
  store %struct.NALU_t* %call, %struct.NALU_t** %nalu, align 8
  %2 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %3 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call1 = call i32 %2(%struct.NALU_t* %3)
  %4 = load i32, i32* %len, align 4
  %add = add nsw i32 %4, %call1
  store i32 %add, i32* %len, align 4
  %5 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %total_pps, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %len, align 4
  %9 = load i32, i32* %i, align 4
  %call2 = call i32 @write_PPS(i32 %8, i32 %9)
  store i32 %call2, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Generate_SEIVUI = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 35
  %12 = load i32, i32* %Generate_SEIVUI, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store %struct.NALU_t* null, %struct.NALU_t** %nalu, align 8
  %call4 = call %struct.NALU_t* (...) @GenerateSEImessage_NALU()
  store %struct.NALU_t* %call4, %struct.NALU_t** %nalu, align 8
  %13 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %14 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call5 = call i32 %13(%struct.NALU_t* %14)
  %15 = load i32, i32* %len, align 4
  %add6 = add nsw i32 %15, %call5
  store i32 %add6, i32* %len, align 4
  %16 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %17 = load i32, i32* %len, align 4
  %18 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %18, i32 0, i32 35
  store i32 %17, i32* %bit_ctr_parametersets_n, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @terminate_sequence() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 75
  %1 = load i32, i32* %of_mode, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  call void (...) @CloseAnnexbFile()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  call void (...) @CloseRTPFile()
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 75
  %3 = load i32, i32* %of_mode2, align 4
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 %3) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 1)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb.1
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @CloseAnnexbFile(...) #1

declare void @CloseRTPFile(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}