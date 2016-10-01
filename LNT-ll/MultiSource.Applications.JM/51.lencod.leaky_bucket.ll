; ModuleID = './MultiSource.Applications.JM/51.lencod.leaky_bucket.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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

@total_frame_buffer = global i64 0, align 8
@input = external global %struct.InputParameters*, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c" LeakyBucketRate File does not exist. Using rate calculated from avg. rate \0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c" Leaky BucketRateFile does not have valid entries.\0A Using rate calculated from avg. rate \0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [25 x i8] c"Error open file lk %s  \0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c" Total Frames:  %ld (%d) \0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"init_buffer: buffer_frame\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"init_buffer: Rmin\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"init_buffer: Bmin\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"init_buffer: Fmin\00", align 1
@Bit_Buffer = common global i64* null, align 8
@img = external global %struct.ImageParameters*, align 8
@color_formats = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic_1 = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@frame_pic_si = common global %struct.Picture* null, align 8
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
define i32 @get_LeakyBucketRate(i64 %NumberLeakyBuckets, i64* %Rmin) #0 {
entry:
  %retval = alloca i32, align 4
  %NumberLeakyBuckets.addr = alloca i64, align 8
  %Rmin.addr = alloca i64*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  %buf = alloca i64, align 8
  store i64 %NumberLeakyBuckets, i64* %NumberLeakyBuckets.addr, align 8
  store i64* %Rmin, i64** %Rmin.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LeakyBucketRateFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 119
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %LeakyBucketRateFile, i32 0, i32 0
  %call = call %struct._IO_FILE* @fopen64(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %cmp2 = icmp ult i64 %1, %2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64* %buf)
  %cmp4 = icmp ne i32 1, %call3
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %for.body
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* %4)
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  %5 = load i64, i64* %buf, align 8
  %6 = load i64, i64* %i, align 8
  %7 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %6
  store i64 %5, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* %9)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @PutBigDoubleWord(i64 %dw, %struct._IO_FILE* %fp) #0 {
entry:
  %dw.addr = alloca i64, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store i64 %dw, i64* %dw.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load i64, i64* %dw.addr, align 8
  %shr = lshr i64 %0, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i32
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %1)
  %2 = load i64, i64* %dw.addr, align 8
  %shr1 = lshr i64 %2, 16
  %and2 = and i64 %shr1, 255
  %conv3 = trunc i64 %and2 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fputc(i32 %conv3, %struct._IO_FILE* %3)
  %4 = load i64, i64* %dw.addr, align 8
  %shr5 = lshr i64 %4, 8
  %and6 = and i64 %shr5, 255
  %conv7 = trunc i64 %and6 to i32
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 @fputc(i32 %conv7, %struct._IO_FILE* %5)
  %6 = load i64, i64* %dw.addr, align 8
  %and9 = and i64 %6, 255
  %conv10 = trunc i64 %and9 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 @fputc(i32 %conv10, %struct._IO_FILE* %7)
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @write_buffer(i64 %NumberLeakyBuckets, i64* %Rmin, i64* %Bmin, i64* %Fmin) #0 {
entry:
  %NumberLeakyBuckets.addr = alloca i64, align 8
  %Rmin.addr = alloca i64*, align 8
  %Bmin.addr = alloca i64*, align 8
  %Fmin.addr = alloca i64*, align 8
  %outf = alloca %struct._IO_FILE*, align 8
  %iBucket = alloca i64, align 8
  store i64 %NumberLeakyBuckets, i64* %NumberLeakyBuckets.addr, align 8
  store i64* %Rmin, i64** %Rmin.addr, align 8
  store i64* %Bmin, i64** %Bmin.addr, align 8
  store i64* %Fmin, i64** %Fmin.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LeakyBucketParamFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 120
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %LeakyBucketParamFile, i32 0, i32 0
  %call = call %struct._IO_FILE* @fopen64(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %outf, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LeakyBucketParamFile1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 120
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %LeakyBucketParamFile1, i32 0, i32 0
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay2) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8
  call void @PutBigDoubleWord(i64 %2, %struct._IO_FILE* %3)
  store i64 0, i64* %iBucket, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %iBucket, align 8
  %5 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %cmp4 = icmp ult i64 %4, %5
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %iBucket, align 8
  %7 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8
  call void @PutBigDoubleWord(i64 %8, %struct._IO_FILE* %9)
  %10 = load i64, i64* %iBucket, align 8
  %11 = load i64*, i64** %Bmin.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %11, i64 %10
  %12 = load i64, i64* %arrayidx5, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8
  call void @PutBigDoubleWord(i64 %12, %struct._IO_FILE* %13)
  %14 = load i64, i64* %iBucket, align 8
  %15 = load i64*, i64** %Fmin.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %15, i64 %14
  %16 = load i64, i64* %arrayidx6, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8
  call void @PutBigDoubleWord(i64 %16, %struct._IO_FILE* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %iBucket, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %iBucket, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* %19)
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @Sort(i64 %NumberLeakyBuckets, i64* %Rmin) #0 {
entry:
  %NumberLeakyBuckets.addr = alloca i64, align 8
  %Rmin.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %temp = alloca i64, align 8
  store i64 %NumberLeakyBuckets, i64* %NumberLeakyBuckets.addr, align 8
  store i64* %Rmin, i64** %Rmin.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %sub = sub i64 %1, 1
  %cmp = icmp ult i64 %0, %sub
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %add = add i64 %2, 1
  store i64 %add, i64* %j, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i64, i64* %j, align 8
  %4 = load i64, i64* %NumberLeakyBuckets.addr, align 8
  %cmp2 = icmp ult i64 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i64, i64* %i, align 8
  %6 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx, align 8
  %8 = load i64, i64* %j, align 8
  %9 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %9, i64 %8
  %10 = load i64, i64* %arrayidx4, align 8
  %cmp5 = icmp ugt i64 %7, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %11 = load i64, i64* %i, align 8
  %12 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 %11
  %13 = load i64, i64* %arrayidx6, align 8
  store i64 %13, i64* %temp, align 8
  %14 = load i64, i64* %j, align 8
  %15 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %15, i64 %14
  %16 = load i64, i64* %arrayidx7, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %18, i64 %17
  store i64 %16, i64* %arrayidx8, align 8
  %19 = load i64, i64* %temp, align 8
  %20 = load i64, i64* %j, align 8
  %21 = load i64*, i64** %Rmin.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %21, i64 %20
  store i64 %19, i64* %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, i64* %j, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %23 = load i64, i64* %i, align 8
  %inc11 = add i64 %23, 1
  store i64 %inc11, i64* %i, align 8
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @calc_buffer() #0 {
entry:
  %AvgRate = alloca i64, align 8
  %TotalRate = alloca i64, align 8
  %NumberLeakyBuckets = alloca i64, align 8
  %buffer_frame = alloca i64*, align 8
  %minB = alloca i64, align 8
  %iBucket = alloca i64, align 8
  %iFrame = alloca i64, align 8
  %FrameIndex = alloca i64, align 8
  %maxBuffer = alloca i64, align 8
  %actualBuffer = alloca i64, align 8
  %InitFullness = alloca i64, align 8
  %iChannelRate = alloca i64, align 8
  %Rmin = alloca i64*, align 8
  %Bmin = alloca i64*, align 8
  %Fmin = alloca i64*, align 8
  store i64 0, i64* %FrameIndex, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i32 0, i32 0))
  %1 = load i64, i64* @total_frame_buffer, align 8
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 2
  %3 = load i32, i32* %no_frames, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i64 %1, i32 %3)
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumberLeakyBuckets2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 118
  %5 = load i32, i32* %NumberLeakyBuckets2, align 4
  %conv = sext i32 %5 to i64
  store i64 %conv, i64* %NumberLeakyBuckets, align 8
  %6 = load i64, i64* @total_frame_buffer, align 8
  %add = add i64 %6, 1
  %call3 = call noalias i8* @calloc(i64 %add, i64 8) #3
  %7 = bitcast i8* %call3 to i64*
  store i64* %7, i64** %buffer_frame, align 8
  %8 = load i64*, i64** %buffer_frame, align 8
  %tobool = icmp ne i64* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %NumberLeakyBuckets, align 8
  %call4 = call noalias i8* @calloc(i64 %9, i64 8) #3
  %10 = bitcast i8* %call4 to i64*
  store i64* %10, i64** %Rmin, align 8
  %11 = load i64*, i64** %Rmin, align 8
  %tobool5 = icmp ne i64* %11, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %12 = load i64, i64* %NumberLeakyBuckets, align 8
  %call8 = call noalias i8* @calloc(i64 %12, i64 8) #3
  %13 = bitcast i8* %call8 to i64*
  store i64* %13, i64** %Bmin, align 8
  %14 = load i64*, i64** %Bmin, align 8
  %tobool9 = icmp ne i64* %14, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.7
  %15 = load i64, i64* %NumberLeakyBuckets, align 8
  %call12 = call noalias i8* @calloc(i64 %15, i64 8) #3
  %16 = bitcast i8* %call12 to i64*
  store i64* %16, i64** %Fmin, align 8
  %17 = load i64*, i64** %Fmin, align 8
  %tobool13 = icmp ne i64* %17, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  store i64 0, i64* %TotalRate, align 8
  store i64 0, i64* %iFrame, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %18 = load i64, i64* %iFrame, align 8
  %19 = load i64, i64* @total_frame_buffer, align 8
  %cmp = icmp ult i64 %18, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* %iFrame, align 8
  %21 = load i64*, i64** @Bit_Buffer, align 8
  %arrayidx = getelementptr inbounds i64, i64* %21, i64 %20
  %22 = load i64, i64* %arrayidx, align 8
  %23 = load i64, i64* %TotalRate, align 8
  %add17 = add i64 %23, %22
  store i64 %add17, i64* %TotalRate, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, i64* %iFrame, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %iFrame, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i64, i64* %TotalRate, align 8
  %conv18 = uitofp i64 %25 to float
  %26 = load i64, i64* @total_frame_buffer, align 8
  %conv19 = uitofp i64 %26 to float
  %div = fdiv float %conv18, %conv19
  %conv20 = fptoui float %div to i64
  store i64 %conv20, i64* %AvgRate, align 8
  %27 = load i64, i64* %NumberLeakyBuckets, align 8
  %28 = load i64*, i64** %Rmin, align 8
  %call21 = call i32 @get_LeakyBucketRate(i64 %27, i64* %28)
  %cmp22 = icmp ne i32 1, %call21
  br i1 %cmp22, label %if.then.24, label %if.end.55

if.then.24:                                       ; preds = %for.end
  store i64 0, i64* %iBucket, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.52, %if.then.24
  %29 = load i64, i64* %iBucket, align 8
  %30 = load i64, i64* %NumberLeakyBuckets, align 8
  %cmp26 = icmp ult i64 %29, %30
  br i1 %cmp26, label %for.body.28, label %for.end.54

for.body.28:                                      ; preds = %for.cond.25
  %31 = load i64, i64* %iBucket, align 8
  %cmp29 = icmp eq i64 %31, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %for.body.28
  %32 = load i64, i64* %AvgRate, align 8
  %conv32 = uitofp i64 %32 to float
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 12
  %34 = load float, float* %framerate, align 4
  %mul = fmul float %conv32, %34
  %conv33 = fptoui float %mul to i64
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 5
  %36 = load i32, i32* %jumpd, align 4
  %add34 = add nsw i32 %36, 1
  %conv35 = sext i32 %add34 to i64
  %div36 = udiv i64 %conv33, %conv35
  %37 = load i64, i64* %iBucket, align 8
  %38 = load i64*, i64** %Rmin, align 8
  %arrayidx37 = getelementptr inbounds i64, i64* %38, i64 %37
  store i64 %div36, i64* %arrayidx37, align 8
  br label %if.end.51

if.else:                                          ; preds = %for.body.28
  %39 = load i64, i64* %iBucket, align 8
  %sub = sub i64 %39, 1
  %40 = load i64*, i64** %Rmin, align 8
  %arrayidx38 = getelementptr inbounds i64, i64* %40, i64 %sub
  %41 = load i64, i64* %arrayidx38, align 8
  %conv39 = uitofp i64 %41 to float
  %42 = load i64, i64* %AvgRate, align 8
  %div40 = udiv i64 %42, 4
  %conv41 = uitofp i64 %div40 to float
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 12
  %44 = load float, float* %framerate42, align 4
  %mul43 = fmul float %conv41, %44
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 5
  %46 = load i32, i32* %jumpd44, align 4
  %add45 = add nsw i32 %46, 1
  %conv46 = sitofp i32 %add45 to float
  %div47 = fdiv float %mul43, %conv46
  %add48 = fadd float %conv39, %div47
  %conv49 = fptoui float %add48 to i64
  %47 = load i64, i64* %iBucket, align 8
  %48 = load i64*, i64** %Rmin, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %48, i64 %47
  store i64 %conv49, i64* %arrayidx50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.31
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %49 = load i64, i64* %iBucket, align 8
  %inc53 = add i64 %49, 1
  store i64 %inc53, i64* %iBucket, align 8
  br label %for.cond.25

for.end.54:                                       ; preds = %for.cond.25
  br label %if.end.55

if.end.55:                                        ; preds = %for.end.54, %for.end
  %50 = load i64, i64* %NumberLeakyBuckets, align 8
  %51 = load i64*, i64** %Rmin, align 8
  call void @Sort(i64 %50, i64* %51)
  %52 = load i64, i64* %AvgRate, align 8
  %mul56 = mul i64 %52, 20
  store i64 %mul56, i64* %maxBuffer, align 8
  store i64 0, i64* %iBucket, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.135, %if.end.55
  %53 = load i64, i64* %iBucket, align 8
  %54 = load i64, i64* %NumberLeakyBuckets, align 8
  %cmp58 = icmp ult i64 %53, %54
  br i1 %cmp58, label %for.body.60, label %for.end.137

for.body.60:                                      ; preds = %for.cond.57
  %55 = load i64, i64* %iBucket, align 8
  %56 = load i64*, i64** %Rmin, align 8
  %arrayidx61 = getelementptr inbounds i64, i64* %56, i64 %55
  %57 = load i64, i64* %arrayidx61, align 8
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 5
  %59 = load i32, i32* %jumpd62, align 4
  %add63 = add nsw i32 %59, 1
  %conv64 = sext i32 %add63 to i64
  %mul65 = mul i64 %57, %conv64
  %conv66 = uitofp i64 %mul65 to float
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate67 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 12
  %61 = load float, float* %framerate67, align 4
  %div68 = fdiv float %conv66, %61
  %conv69 = fptosi float %div68 to i64
  store i64 %conv69, i64* %iChannelRate, align 8
  %62 = load i64, i64* %maxBuffer, align 8
  store i64 %62, i64* %InitFullness, align 8
  %63 = load i64, i64* %InitFullness, align 8
  %64 = load i64*, i64** %buffer_frame, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %63, i64* %arrayidx70, align 8
  %65 = load i64, i64* %maxBuffer, align 8
  store i64 %65, i64* %minB, align 8
  store i64 0, i64* %iFrame, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.97, %for.body.60
  %66 = load i64, i64* %iFrame, align 8
  %67 = load i64, i64* @total_frame_buffer, align 8
  %cmp72 = icmp ult i64 %66, %67
  br i1 %cmp72, label %for.body.74, label %for.end.99

for.body.74:                                      ; preds = %for.cond.71
  %68 = load i64, i64* %iFrame, align 8
  %69 = load i64*, i64** %buffer_frame, align 8
  %arrayidx75 = getelementptr inbounds i64, i64* %69, i64 %68
  %70 = load i64, i64* %arrayidx75, align 8
  %71 = load i64, i64* %iFrame, align 8
  %72 = load i64*, i64** @Bit_Buffer, align 8
  %arrayidx76 = getelementptr inbounds i64, i64* %72, i64 %71
  %73 = load i64, i64* %arrayidx76, align 8
  %sub77 = sub nsw i64 %70, %73
  %74 = load i64, i64* %iFrame, align 8
  %75 = load i64*, i64** %buffer_frame, align 8
  %arrayidx78 = getelementptr inbounds i64, i64* %75, i64 %74
  store i64 %sub77, i64* %arrayidx78, align 8
  %76 = load i64, i64* %iFrame, align 8
  %77 = load i64*, i64** %buffer_frame, align 8
  %arrayidx79 = getelementptr inbounds i64, i64* %77, i64 %76
  %78 = load i64, i64* %arrayidx79, align 8
  %79 = load i64, i64* %minB, align 8
  %cmp80 = icmp slt i64 %78, %79
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %for.body.74
  %80 = load i64, i64* %iFrame, align 8
  %81 = load i64*, i64** %buffer_frame, align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %81, i64 %80
  %82 = load i64, i64* %arrayidx83, align 8
  store i64 %82, i64* %minB, align 8
  %83 = load i64, i64* %iFrame, align 8
  store i64 %83, i64* %FrameIndex, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %for.body.74
  %84 = load i64, i64* %iFrame, align 8
  %85 = load i64*, i64** %buffer_frame, align 8
  %arrayidx85 = getelementptr inbounds i64, i64* %85, i64 %84
  %86 = load i64, i64* %arrayidx85, align 8
  %87 = load i64, i64* %iChannelRate, align 8
  %add86 = add nsw i64 %86, %87
  %88 = load i64, i64* %iFrame, align 8
  %add87 = add i64 %88, 1
  %89 = load i64*, i64** %buffer_frame, align 8
  %arrayidx88 = getelementptr inbounds i64, i64* %89, i64 %add87
  store i64 %add86, i64* %arrayidx88, align 8
  %90 = load i64, i64* %iFrame, align 8
  %add89 = add i64 %90, 1
  %91 = load i64*, i64** %buffer_frame, align 8
  %arrayidx90 = getelementptr inbounds i64, i64* %91, i64 %add89
  %92 = load i64, i64* %arrayidx90, align 8
  %93 = load i64, i64* %maxBuffer, align 8
  %cmp91 = icmp sgt i64 %92, %93
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.84
  %94 = load i64, i64* %maxBuffer, align 8
  %95 = load i64, i64* %iFrame, align 8
  %add94 = add i64 %95, 1
  %96 = load i64*, i64** %buffer_frame, align 8
  %arrayidx95 = getelementptr inbounds i64, i64* %96, i64 %add94
  store i64 %94, i64* %arrayidx95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.end.84
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %97 = load i64, i64* %iFrame, align 8
  %inc98 = add i64 %97, 1
  store i64 %inc98, i64* %iFrame, align 8
  br label %for.cond.71

for.end.99:                                       ; preds = %for.cond.71
  %98 = load i64, i64* %maxBuffer, align 8
  %99 = load i64, i64* %minB, align 8
  %sub100 = sub nsw i64 %98, %99
  store i64 %sub100, i64* %actualBuffer, align 8
  %100 = load i64*, i64** @Bit_Buffer, align 8
  %arrayidx101 = getelementptr inbounds i64, i64* %100, i64 0
  %101 = load i64, i64* %arrayidx101, align 8
  store i64 %101, i64* %InitFullness, align 8
  %102 = load i64, i64* %InitFullness, align 8
  %103 = load i64*, i64** %buffer_frame, align 8
  %arrayidx102 = getelementptr inbounds i64, i64* %103, i64 0
  store i64 %102, i64* %arrayidx102, align 8
  store i64 0, i64* %iFrame, align 8
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.130, %for.end.99
  %104 = load i64, i64* %iFrame, align 8
  %105 = load i64, i64* %FrameIndex, align 8
  %add104 = add i64 %105, 1
  %cmp105 = icmp ult i64 %104, %add104
  br i1 %cmp105, label %for.body.107, label %for.end.132

for.body.107:                                     ; preds = %for.cond.103
  %106 = load i64, i64* %iFrame, align 8
  %107 = load i64*, i64** %buffer_frame, align 8
  %arrayidx108 = getelementptr inbounds i64, i64* %107, i64 %106
  %108 = load i64, i64* %arrayidx108, align 8
  %109 = load i64, i64* %iFrame, align 8
  %110 = load i64*, i64** @Bit_Buffer, align 8
  %arrayidx109 = getelementptr inbounds i64, i64* %110, i64 %109
  %111 = load i64, i64* %arrayidx109, align 8
  %sub110 = sub nsw i64 %108, %111
  %112 = load i64, i64* %iFrame, align 8
  %113 = load i64*, i64** %buffer_frame, align 8
  %arrayidx111 = getelementptr inbounds i64, i64* %113, i64 %112
  store i64 %sub110, i64* %arrayidx111, align 8
  %114 = load i64, i64* %iFrame, align 8
  %115 = load i64*, i64** %buffer_frame, align 8
  %arrayidx112 = getelementptr inbounds i64, i64* %115, i64 %114
  %116 = load i64, i64* %arrayidx112, align 8
  %cmp113 = icmp slt i64 %116, 0
  br i1 %cmp113, label %if.then.115, label %if.end.119

if.then.115:                                      ; preds = %for.body.107
  %117 = load i64, i64* %iFrame, align 8
  %118 = load i64*, i64** %buffer_frame, align 8
  %arrayidx116 = getelementptr inbounds i64, i64* %118, i64 %117
  %119 = load i64, i64* %arrayidx116, align 8
  %120 = load i64, i64* %InitFullness, align 8
  %sub117 = sub nsw i64 %120, %119
  store i64 %sub117, i64* %InitFullness, align 8
  %121 = load i64, i64* %iFrame, align 8
  %122 = load i64*, i64** %buffer_frame, align 8
  %arrayidx118 = getelementptr inbounds i64, i64* %122, i64 %121
  store i64 0, i64* %arrayidx118, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.115, %for.body.107
  %123 = load i64, i64* %iFrame, align 8
  %124 = load i64*, i64** %buffer_frame, align 8
  %arrayidx120 = getelementptr inbounds i64, i64* %124, i64 %123
  %125 = load i64, i64* %arrayidx120, align 8
  %126 = load i64, i64* %iChannelRate, align 8
  %add121 = add nsw i64 %125, %126
  %127 = load i64, i64* %iFrame, align 8
  %add122 = add i64 %127, 1
  %128 = load i64*, i64** %buffer_frame, align 8
  %arrayidx123 = getelementptr inbounds i64, i64* %128, i64 %add122
  store i64 %add121, i64* %arrayidx123, align 8
  %129 = load i64, i64* %iFrame, align 8
  %add124 = add i64 %129, 1
  %130 = load i64*, i64** %buffer_frame, align 8
  %arrayidx125 = getelementptr inbounds i64, i64* %130, i64 %add124
  %131 = load i64, i64* %arrayidx125, align 8
  %132 = load i64, i64* %actualBuffer, align 8
  %cmp126 = icmp sgt i64 %131, %132
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.119
  br label %for.end.132

if.end.129:                                       ; preds = %if.end.119
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.129
  %133 = load i64, i64* %iFrame, align 8
  %inc131 = add i64 %133, 1
  store i64 %inc131, i64* %iFrame, align 8
  br label %for.cond.103

for.end.132:                                      ; preds = %if.then.128, %for.cond.103
  %134 = load i64, i64* %actualBuffer, align 8
  %135 = load i64, i64* %iBucket, align 8
  %136 = load i64*, i64** %Bmin, align 8
  %arrayidx133 = getelementptr inbounds i64, i64* %136, i64 %135
  store i64 %134, i64* %arrayidx133, align 8
  %137 = load i64, i64* %InitFullness, align 8
  %138 = load i64, i64* %iBucket, align 8
  %139 = load i64*, i64** %Fmin, align 8
  %arrayidx134 = getelementptr inbounds i64, i64* %139, i64 %138
  store i64 %137, i64* %arrayidx134, align 8
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.end.132
  %140 = load i64, i64* %iBucket, align 8
  %inc136 = add i64 %140, 1
  store i64 %inc136, i64* %iBucket, align 8
  br label %for.cond.57

for.end.137:                                      ; preds = %for.cond.57
  %141 = load i64, i64* %NumberLeakyBuckets, align 8
  %142 = load i64*, i64** %Rmin, align 8
  %143 = load i64*, i64** %Bmin, align 8
  %144 = load i64*, i64** %Fmin, align 8
  call void @write_buffer(i64 %141, i64* %142, i64* %143, i64* %144)
  %145 = load i64*, i64** %buffer_frame, align 8
  %146 = bitcast i64* %145 to i8*
  call void @free(i8* %146) #3
  %147 = load i64*, i64** %Rmin, align 8
  %148 = bitcast i64* %147 to i8*
  call void @free(i8* %148) #3
  %149 = load i64*, i64** %Bmin, align 8
  %150 = bitcast i64* %149 to i8*
  call void @free(i8* %150) #3
  %151 = load i64*, i64** %Fmin, align 8
  %152 = bitcast i64* %151 to i8*
  call void @free(i8* %152) #3
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare void @no_mem_exit(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
