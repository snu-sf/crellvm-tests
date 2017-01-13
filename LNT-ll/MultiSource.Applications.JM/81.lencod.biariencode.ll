; ModuleID = './MultiSource.Applications.JM/81.lencod.biariencode.bc'
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
%struct.StatParameters = type { i32, i32, float, float, i64, i64, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, i32*, i32*, i64, i64, i64, float, float, float, [5 x [15 x i64]], [5 x [15 x i64]], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], i32, i32, i32*, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@rLPS_table_64x4 = constant [64 x [4 x i8]] [[4 x i8] c"\80\B0\D0\F0", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"{\96\B2\CD", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"o\87\A0\B9", [4 x i8] c"i\80\98\AF", [4 x i8] c"dz\90\A6", [4 x i8] c"_t\89\9E", [4 x i8] c"Zn\82\96", [4 x i8] c"Uh{\8E", [4 x i8] c"Qcu\87", [4 x i8] c"M^o\80", [4 x i8] c"IYiz", [4 x i8] c"EUdt", [4 x i8] c"BP_n", [4 x i8] c">LZh", [4 x i8] c";HVc", [4 x i8] c"8EQ^", [4 x i8] c"5AMY", [4 x i8] c"3>IU", [4 x i8] c"0;EP", [4 x i8] c".8BL", [4 x i8] c"+5?H", [4 x i8] c")2;E", [4 x i8] c"'08A", [4 x i8] c"%-6>", [4 x i8] c"#+3;", [4 x i8] c"!)08", [4 x i8] c" '.5", [4 x i8] c"\1E%+2", [4 x i8] c"\1D#)0", [4 x i8] c"\1B!'-", [4 x i8] c"\1A\1F%+", [4 x i8] c"\18\1E#)", [4 x i8] c"\17\1C!'", [4 x i8] c"\16\1B %", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\14\18\1D!", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\07\08\09", [4 x i8] c"\02\02\02\02"], align 16
@AC_next_state_MPS_64 = constant [64 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 62, i16 63], align 16
@AC_next_state_LPS_64 = constant [64 x i16] [i16 0, i16 0, i16 1, i16 2, i16 2, i16 4, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 9, i16 11, i16 11, i16 12, i16 13, i16 13, i16 15, i16 15, i16 16, i16 16, i16 18, i16 18, i16 19, i16 19, i16 21, i16 21, i16 22, i16 22, i16 23, i16 24, i16 24, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 29, i16 29, i16 30, i16 30, i16 30, i16 31, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 38, i16 38, i16 63], align 16
@binCount = global i32 0, align 4
@pic_bin_count = common global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"arienco_create_encoding_environment: eep\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"Error freeing eep (NULL pointer)\00", align 1
@img = external global %struct.ImageParameters*, align 8
@stats = external global %struct.StatParameters*, align 8
@cabac_encoding = external global i32, align 4
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
define void @reset_pic_bin_count() #0 {
entry:
  store i32 0, i32* @pic_bin_count, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_pic_bin_count() #0 {
entry:
  %0 = load i32, i32* @pic_bin_count, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define %struct.EncodingEnvironment* @arienco_create_encoding_environment() #0 {
entry:
  %eep = alloca %struct.EncodingEnvironment*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 48) #4
  %0 = bitcast i8* %call to %struct.EncodingEnvironment*
  store %struct.EncodingEnvironment* %0, %struct.EncodingEnvironment** %eep, align 8
  %cmp = icmp eq %struct.EncodingEnvironment* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  ret %struct.EncodingEnvironment* %1
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define void @arienco_delete_encoding_environment(%struct.EncodingEnvironment* %eep) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %cmp = icmp eq %struct.EncodingEnvironment* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 200)
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %2 = bitcast %struct.EncodingEnvironment* %1 to i8*
  call void @free(i8* %2) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare void @error(i8*, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @arienco_start_encoding(%struct.EncodingEnvironment* %eep, i8* %code_buffer, i32* %code_len) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  %code_buffer.addr = alloca i8*, align 8
  %code_len.addr = alloca i32*, align 8
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  store i8* %code_buffer, i8** %code_buffer.addr, align 8
  store i32* %code_len, i32** %code_len.addr, align 8
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 0
  store i32 0, i32* %Elow, align 4
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %1, i32 0, i32 4
  store i32 0, i32* %Ebits_to_follow, align 4
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %2, i32 0, i32 2
  store i32 0, i32* %Ebuffer, align 4
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %3, i32 0, i32 3
  store i32 9, i32* %Ebits_to_go, align 4
  %4 = load i8*, i8** %code_buffer.addr, align 8
  %5 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %5, i32 0, i32 5
  store i8* %4, i8** %Ecodestrm, align 8
  %6 = load i32*, i32** %code_len.addr, align 8
  %7 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %7, i32 0, i32 6
  store i32* %6, i32** %Ecodestrm_len, align 8
  %8 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %8, i32 0, i32 1
  store i32 510, i32* %Erange, align 4
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %9, i32 0, i32 7
  store i32 0, i32* %C, align 4
  %10 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %10, i32 0, i32 8
  store i32 0, i32* %E, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @arienco_bits_written(%struct.EncodingEnvironment* %eep) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 6
  %1 = load i32*, i32** %Ecodestrm_len, align 8
  %2 = load i32, i32* %1, align 4
  %mul = mul nsw i32 8, %2
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %3, i32 0, i32 4
  %4 = load i32, i32* %Ebits_to_follow, align 4
  %add = add i32 %mul, %4
  %add1 = add i32 %add, 8
  %5 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %5, i32 0, i32 3
  %6 = load i32, i32* %Ebits_to_go, align 4
  %sub = sub i32 %add1, %6
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define void @arienco_done_encoding(%struct.EncodingEnvironment* %eep) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 2
  %1 = load i32, i32* %Ebuffer, align 4
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %Ebuffer, align 4
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %2, i32 0, i32 0
  %3 = load i32, i32* %Elow, align 4
  %shr = lshr i32 %3, 9
  %and = and i32 %shr, 1
  %conv = trunc i32 %and to i8
  %conv1 = zext i8 %conv to i32
  %4 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer2 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %4, i32 0, i32 2
  %5 = load i32, i32* %Ebuffer2, align 4
  %or = or i32 %5, %conv1
  store i32 %or, i32* %Ebuffer2, align 4
  %6 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %6, i32 0, i32 3
  %7 = load i32, i32* %Ebits_to_go, align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* %Ebits_to_go, align 4
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer4 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %8, i32 0, i32 2
  %9 = load i32, i32* %Ebuffer4, align 4
  %conv5 = trunc i32 %9 to i8
  %10 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %10, i32 0, i32 6
  %11 = load i32*, i32** %Ecodestrm_len, align 8
  %12 = load i32, i32* %11, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %11, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %13, i32 0, i32 5
  %14 = load i8*, i8** %Ecodestrm, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 %conv5, i8* %arrayidx, align 1
  %15 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go6 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %15, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go6, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %16 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %16, i32 0, i32 7
  %17 = load i32, i32* %C, align 4
  %cmp7 = icmp sgt i32 %17, 7
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C9 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %18, i32 0, i32 7
  %19 = load i32, i32* %C9, align 4
  %sub = sub nsw i32 %19, 8
  store i32 %sub, i32* %C9, align 4
  %20 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %20, i32 0, i32 8
  %21 = load i32, i32* %E, align 4
  %inc10 = add nsw i32 %21, 1
  store i32 %inc10, i32* %E, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  br label %while.cond.11

while.cond.11:                                    ; preds = %if.end.48, %if.end
  %22 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %22, i32 0, i32 4
  %23 = load i32, i32* %Ebits_to_follow, align 4
  %cmp12 = icmp ugt i32 %23, 0
  br i1 %cmp12, label %while.body.14, label %while.end.49

while.body.14:                                    ; preds = %while.cond.11
  %24 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow15 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %24, i32 0, i32 4
  %25 = load i32, i32* %Ebits_to_follow15, align 4
  %dec16 = add i32 %25, -1
  store i32 %dec16, i32* %Ebits_to_follow15, align 4
  %26 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer17 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %26, i32 0, i32 2
  %27 = load i32, i32* %Ebuffer17, align 4
  %shl18 = shl i32 %27, 1
  store i32 %shl18, i32* %Ebuffer17, align 4
  %28 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow19 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %28, i32 0, i32 0
  %29 = load i32, i32* %Elow19, align 4
  %shr20 = lshr i32 %29, 9
  %and21 = and i32 %shr20, 1
  %conv22 = trunc i32 %and21 to i8
  %tobool = icmp ne i8 %conv22, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %30 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer23 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %30, i32 0, i32 2
  %31 = load i32, i32* %Ebuffer23, align 4
  %or24 = or i32 %31, %lnot.ext
  store i32 %or24, i32* %Ebuffer23, align 4
  %32 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go25 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %32, i32 0, i32 3
  %33 = load i32, i32* %Ebits_to_go25, align 4
  %dec26 = add i32 %33, -1
  store i32 %dec26, i32* %Ebits_to_go25, align 4
  %cmp27 = icmp eq i32 %dec26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.48

if.then.29:                                       ; preds = %while.body.14
  %34 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer30 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %34, i32 0, i32 2
  %35 = load i32, i32* %Ebuffer30, align 4
  %conv31 = trunc i32 %35 to i8
  %36 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len32 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %36, i32 0, i32 6
  %37 = load i32*, i32** %Ecodestrm_len32, align 8
  %38 = load i32, i32* %37, align 4
  %inc33 = add nsw i32 %38, 1
  store i32 %inc33, i32* %37, align 4
  %idxprom34 = sext i32 %38 to i64
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm35 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %39, i32 0, i32 5
  %40 = load i8*, i8** %Ecodestrm35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %40, i64 %idxprom34
  store i8 %conv31, i8* %arrayidx36, align 1
  %41 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go37 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %41, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go37, align 4
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.42, %if.then.29
  %42 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C39 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %42, i32 0, i32 7
  %43 = load i32, i32* %C39, align 4
  %cmp40 = icmp sgt i32 %43, 7
  br i1 %cmp40, label %while.body.42, label %while.end.47

while.body.42:                                    ; preds = %while.cond.38
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C43 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %44, i32 0, i32 7
  %45 = load i32, i32* %C43, align 4
  %sub44 = sub nsw i32 %45, 8
  store i32 %sub44, i32* %C43, align 4
  %46 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E45 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %46, i32 0, i32 8
  %47 = load i32, i32* %E45, align 4
  %inc46 = add nsw i32 %47, 1
  store i32 %inc46, i32* %E45, align 4
  br label %while.cond.38

while.end.47:                                     ; preds = %while.cond.38
  br label %if.end.48

if.end.48:                                        ; preds = %while.end.47, %while.body.14
  br label %while.cond.11

while.end.49:                                     ; preds = %while.cond.11
  %48 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer50 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %48, i32 0, i32 2
  %49 = load i32, i32* %Ebuffer50, align 4
  %shl51 = shl i32 %49, 1
  store i32 %shl51, i32* %Ebuffer50, align 4
  %50 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow52 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %50, i32 0, i32 0
  %51 = load i32, i32* %Elow52, align 4
  %shr53 = lshr i32 %51, 8
  %conv54 = trunc i32 %shr53 to i8
  %conv55 = zext i8 %conv54 to i32
  %and56 = and i32 %conv55, 1
  %52 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer57 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %52, i32 0, i32 2
  %53 = load i32, i32* %Ebuffer57, align 4
  %or58 = or i32 %53, %and56
  store i32 %or58, i32* %Ebuffer57, align 4
  %54 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go59 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %54, i32 0, i32 3
  %55 = load i32, i32* %Ebits_to_go59, align 4
  %dec60 = add i32 %55, -1
  store i32 %dec60, i32* %Ebits_to_go59, align 4
  %cmp61 = icmp eq i32 %dec60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.82

if.then.63:                                       ; preds = %while.end.49
  %56 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer64 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %56, i32 0, i32 2
  %57 = load i32, i32* %Ebuffer64, align 4
  %conv65 = trunc i32 %57 to i8
  %58 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len66 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %58, i32 0, i32 6
  %59 = load i32*, i32** %Ecodestrm_len66, align 8
  %60 = load i32, i32* %59, align 4
  %inc67 = add nsw i32 %60, 1
  store i32 %inc67, i32* %59, align 4
  %idxprom68 = sext i32 %60 to i64
  %61 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm69 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %61, i32 0, i32 5
  %62 = load i8*, i8** %Ecodestrm69, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %62, i64 %idxprom68
  store i8 %conv65, i8* %arrayidx70, align 1
  %63 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go71 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %63, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go71, align 4
  br label %while.cond.72

while.cond.72:                                    ; preds = %while.body.76, %if.then.63
  %64 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C73 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %64, i32 0, i32 7
  %65 = load i32, i32* %C73, align 4
  %cmp74 = icmp sgt i32 %65, 7
  br i1 %cmp74, label %while.body.76, label %while.end.81

while.body.76:                                    ; preds = %while.cond.72
  %66 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C77 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %66, i32 0, i32 7
  %67 = load i32, i32* %C77, align 4
  %sub78 = sub nsw i32 %67, 8
  store i32 %sub78, i32* %C77, align 4
  %68 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E79 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %68, i32 0, i32 8
  %69 = load i32, i32* %E79, align 4
  %inc80 = add nsw i32 %69, 1
  store i32 %inc80, i32* %E79, align 4
  br label %while.cond.72

while.end.81:                                     ; preds = %while.cond.72
  br label %if.end.82

if.end.82:                                        ; preds = %while.end.81, %while.end.49
  %70 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer83 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %70, i32 0, i32 2
  %71 = load i32, i32* %Ebuffer83, align 4
  %shl84 = shl i32 %71, 1
  store i32 %shl84, i32* %Ebuffer83, align 4
  %72 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer85 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %72, i32 0, i32 2
  %73 = load i32, i32* %Ebuffer85, align 4
  %or86 = or i32 %73, 1
  store i32 %or86, i32* %Ebuffer85, align 4
  %74 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go87 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %74, i32 0, i32 3
  %75 = load i32, i32* %Ebits_to_go87, align 4
  %dec88 = add i32 %75, -1
  store i32 %dec88, i32* %Ebits_to_go87, align 4
  %cmp89 = icmp eq i32 %dec88, 0
  br i1 %cmp89, label %if.then.91, label %if.end.110

if.then.91:                                       ; preds = %if.end.82
  %76 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer92 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %76, i32 0, i32 2
  %77 = load i32, i32* %Ebuffer92, align 4
  %conv93 = trunc i32 %77 to i8
  %78 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len94 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %78, i32 0, i32 6
  %79 = load i32*, i32** %Ecodestrm_len94, align 8
  %80 = load i32, i32* %79, align 4
  %inc95 = add nsw i32 %80, 1
  store i32 %inc95, i32* %79, align 4
  %idxprom96 = sext i32 %80 to i64
  %81 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm97 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %81, i32 0, i32 5
  %82 = load i8*, i8** %Ecodestrm97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %82, i64 %idxprom96
  store i8 %conv93, i8* %arrayidx98, align 1
  %83 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go99 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %83, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go99, align 4
  br label %while.cond.100

while.cond.100:                                   ; preds = %while.body.104, %if.then.91
  %84 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C101 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %84, i32 0, i32 7
  %85 = load i32, i32* %C101, align 4
  %cmp102 = icmp sgt i32 %85, 7
  br i1 %cmp102, label %while.body.104, label %while.end.109

while.body.104:                                   ; preds = %while.cond.100
  %86 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C105 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %86, i32 0, i32 7
  %87 = load i32, i32* %C105, align 4
  %sub106 = sub nsw i32 %87, 8
  store i32 %sub106, i32* %C105, align 4
  %88 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E107 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %88, i32 0, i32 8
  %89 = load i32, i32* %E107, align 4
  %inc108 = add nsw i32 %89, 1
  store i32 %inc108, i32* %E107, align 4
  br label %while.cond.100

while.end.109:                                    ; preds = %while.cond.100
  br label %if.end.110

if.end.110:                                       ; preds = %while.end.109, %if.end.82
  %90 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go111 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %90, i32 0, i32 3
  %91 = load i32, i32* %Ebits_to_go111, align 4
  %sub112 = sub i32 8, %91
  %conv113 = zext i32 %sub112 to i64
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 5
  %93 = load i32, i32* %type, align 4
  %idxprom114 = sext i32 %93 to i64
  %94 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_stuffingBits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %94, i32 0, i32 24
  %arrayidx115 = getelementptr inbounds [5 x i64], [5 x i64]* %bit_use_stuffingBits, i32 0, i64 %idxprom114
  %95 = load i64, i64* %arrayidx115, align 8
  %add = add nsw i64 %95, %conv113
  store i64 %add, i64* %arrayidx115, align 8
  br label %while.cond.116

while.cond.116:                                   ; preds = %if.end.147, %if.end.110
  %96 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go117 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %96, i32 0, i32 3
  %97 = load i32, i32* %Ebits_to_go117, align 4
  %cmp118 = icmp ne i32 %97, 8
  br i1 %cmp118, label %while.body.120, label %while.end.148

while.body.120:                                   ; preds = %while.cond.116
  %98 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer121 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %98, i32 0, i32 2
  %99 = load i32, i32* %Ebuffer121, align 4
  %shl122 = shl i32 %99, 1
  store i32 %shl122, i32* %Ebuffer121, align 4
  %100 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer123 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %100, i32 0, i32 2
  %101 = load i32, i32* %Ebuffer123, align 4
  store i32 %101, i32* %Ebuffer123, align 4
  %102 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go124 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %102, i32 0, i32 3
  %103 = load i32, i32* %Ebits_to_go124, align 4
  %dec125 = add i32 %103, -1
  store i32 %dec125, i32* %Ebits_to_go124, align 4
  %cmp126 = icmp eq i32 %dec125, 0
  br i1 %cmp126, label %if.then.128, label %if.end.147

if.then.128:                                      ; preds = %while.body.120
  %104 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer129 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %104, i32 0, i32 2
  %105 = load i32, i32* %Ebuffer129, align 4
  %conv130 = trunc i32 %105 to i8
  %106 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len131 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %106, i32 0, i32 6
  %107 = load i32*, i32** %Ecodestrm_len131, align 8
  %108 = load i32, i32* %107, align 4
  %inc132 = add nsw i32 %108, 1
  store i32 %inc132, i32* %107, align 4
  %idxprom133 = sext i32 %108 to i64
  %109 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm134 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %109, i32 0, i32 5
  %110 = load i8*, i8** %Ecodestrm134, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %110, i64 %idxprom133
  store i8 %conv130, i8* %arrayidx135, align 1
  %111 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go136 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %111, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go136, align 4
  br label %while.cond.137

while.cond.137:                                   ; preds = %while.body.141, %if.then.128
  %112 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C138 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %112, i32 0, i32 7
  %113 = load i32, i32* %C138, align 4
  %cmp139 = icmp sgt i32 %113, 7
  br i1 %cmp139, label %while.body.141, label %while.end.146

while.body.141:                                   ; preds = %while.cond.137
  %114 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C142 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %114, i32 0, i32 7
  %115 = load i32, i32* %C142, align 4
  %sub143 = sub nsw i32 %115, 8
  store i32 %sub143, i32* %C142, align 4
  %116 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E144 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %116, i32 0, i32 8
  %117 = load i32, i32* %E144, align 4
  %inc145 = add nsw i32 %117, 1
  store i32 %inc145, i32* %E144, align 4
  br label %while.cond.137

while.end.146:                                    ; preds = %while.cond.137
  br label %if.end.147

if.end.147:                                       ; preds = %while.end.146, %while.body.120
  br label %while.cond.116

while.end.148:                                    ; preds = %while.cond.116
  %118 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E149 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %118, i32 0, i32 8
  %119 = load i32, i32* %E149, align 4
  %mul = mul nsw i32 %119, 8
  %120 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C150 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %120, i32 0, i32 7
  %121 = load i32, i32* %C150, align 4
  %add151 = add nsw i32 %mul, %121
  %122 = load i32, i32* @pic_bin_count, align 4
  %add152 = add nsw i32 %122, %add151
  store i32 %add152, i32* @pic_bin_count, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @biari_encode_symbol(%struct.EncodingEnvironment* %eep, i16 signext %symbol, %struct.BiContextType* %bi_ct) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i16, align 2
  %bi_ct.addr = alloca %struct.BiContextType*, align 8
  %range = alloca i32, align 4
  %low = alloca i32, align 4
  %rLPS = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  store i16 %symbol, i16* %symbol.addr, align 2
  store %struct.BiContextType* %bi_ct, %struct.BiContextType** %bi_ct.addr, align 8
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 1
  %1 = load i32, i32* %Erange, align 4
  store i32 %1, i32* %range, align 4
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %2, i32 0, i32 0
  %3 = load i32, i32* %Elow, align 4
  store i32 %3, i32* %low, align 4
  %4 = load i32, i32* %range, align 4
  %shr = lshr i32 %4, 6
  %and = and i32 %shr, 3
  %idxprom = zext i32 %and to i64
  %5 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %5, i32 0, i32 0
  %6 = load i16, i16* %state, align 2
  %idxprom1 = zext i16 %6 to i64
  %arrayidx = getelementptr inbounds [64 x [4 x i8]], [64 x [4 x i8]]* @rLPS_table_64x4, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, i32* %rLPS, align 4
  %8 = load i32, i32* %rLPS, align 4
  %9 = load i32, i32* %range, align 4
  %sub = sub i32 %9, %8
  store i32 %sub, i32* %range, align 4
  %10 = load i32, i32* @cabac_encoding, align 4
  %conv3 = sext i32 %10 to i64
  %11 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %count = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %11, i32 0, i32 2
  %12 = load i64, i64* %count, align 8
  %add = add i64 %12, %conv3
  store i64 %add, i64* %count, align 8
  %13 = load i16, i16* %symbol.addr, align 2
  %conv4 = sext i16 %13 to i32
  %cmp = icmp ne i32 %conv4, 0
  %conv5 = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv5 to i16
  store i16 %conv6, i16* %symbol.addr, align 2
  %14 = load i16, i16* %symbol.addr, align 2
  %conv7 = sext i16 %14 to i32
  %15 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %MPS = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %15, i32 0, i32 1
  %16 = load i8, i8* %MPS, align 1
  %conv8 = zext i8 %16 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %range, align 4
  %18 = load i32, i32* %low, align 4
  %add11 = add i32 %18, %17
  store i32 %add11, i32* %low, align 4
  %19 = load i32, i32* %rLPS, align 4
  store i32 %19, i32* %range, align 4
  %20 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state12 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %20, i32 0, i32 0
  %21 = load i16, i16* %state12, align 2
  %tobool = icmp ne i16 %21, 0
  br i1 %tobool, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then
  %22 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %MPS14 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %22, i32 0, i32 1
  %23 = load i8, i8* %MPS14, align 1
  %conv15 = zext i8 %23 to i32
  %xor = xor i32 %conv15, 1
  %conv16 = trunc i32 %xor to i8
  %24 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %MPS17 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %24, i32 0, i32 1
  store i8 %conv16, i8* %MPS17, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %25 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state18 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %25, i32 0, i32 0
  %26 = load i16, i16* %state18, align 2
  %idxprom19 = zext i16 %26 to i64
  %arrayidx20 = getelementptr inbounds [64 x i16], [64 x i16]* @AC_next_state_LPS_64, i32 0, i64 %idxprom19
  %27 = load i16, i16* %arrayidx20, align 2
  %28 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state21 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %28, i32 0, i32 0
  store i16 %27, i16* %state21, align 2
  br label %if.end.26

if.else:                                          ; preds = %entry
  %29 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state22 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %29, i32 0, i32 0
  %30 = load i16, i16* %state22, align 2
  %idxprom23 = zext i16 %30 to i64
  %arrayidx24 = getelementptr inbounds [64 x i16], [64 x i16]* @AC_next_state_MPS_64, i32 0, i64 %idxprom23
  %31 = load i16, i16* %arrayidx24, align 2
  %32 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state25 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %32, i32 0, i32 0
  store i16 %31, i16* %state25, align 2
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.156, %if.end.26
  %33 = load i32, i32* %range, align 4
  %cmp27 = icmp ult i32 %33, 256
  br i1 %cmp27, label %while.body, label %while.end.159

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %low, align 4
  %cmp29 = icmp uge i32 %34, 512
  br i1 %cmp29, label %if.then.31, label %if.else.84

if.then.31:                                       ; preds = %while.body
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %35, i32 0, i32 2
  %36 = load i32, i32* %Ebuffer, align 4
  %shl = shl i32 %36, 1
  store i32 %shl, i32* %Ebuffer, align 4
  %37 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer32 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %37, i32 0, i32 2
  %38 = load i32, i32* %Ebuffer32, align 4
  %or = or i32 %38, 1
  store i32 %or, i32* %Ebuffer32, align 4
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %39, i32 0, i32 3
  %40 = load i32, i32* %Ebits_to_go, align 4
  %dec = add i32 %40, -1
  store i32 %dec, i32* %Ebits_to_go, align 4
  %cmp33 = icmp eq i32 %dec, 0
  br i1 %cmp33, label %if.then.35, label %if.end.48

if.then.35:                                       ; preds = %if.then.31
  %41 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer36 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %41, i32 0, i32 2
  %42 = load i32, i32* %Ebuffer36, align 4
  %conv37 = trunc i32 %42 to i8
  %43 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %43, i32 0, i32 6
  %44 = load i32*, i32** %Ecodestrm_len, align 8
  %45 = load i32, i32* %44, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %44, align 4
  %idxprom38 = sext i32 %45 to i64
  %46 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %46, i32 0, i32 5
  %47 = load i8*, i8** %Ecodestrm, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %47, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1
  %48 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go40 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %48, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go40, align 4
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.44, %if.then.35
  %49 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %49, i32 0, i32 7
  %50 = load i32, i32* %C, align 4
  %cmp42 = icmp sgt i32 %50, 7
  br i1 %cmp42, label %while.body.44, label %while.end

while.body.44:                                    ; preds = %while.cond.41
  %51 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C45 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %51, i32 0, i32 7
  %52 = load i32, i32* %C45, align 4
  %sub46 = sub nsw i32 %52, 8
  store i32 %sub46, i32* %C45, align 4
  %53 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %53, i32 0, i32 8
  %54 = load i32, i32* %E, align 4
  %inc47 = add nsw i32 %54, 1
  store i32 %inc47, i32* %E, align 4
  br label %while.cond.41

while.end:                                        ; preds = %while.cond.41
  br label %if.end.48

if.end.48:                                        ; preds = %while.end, %if.then.31
  br label %while.cond.49

while.cond.49:                                    ; preds = %if.end.81, %if.end.48
  %55 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %55, i32 0, i32 4
  %56 = load i32, i32* %Ebits_to_follow, align 4
  %cmp50 = icmp ugt i32 %56, 0
  br i1 %cmp50, label %while.body.52, label %while.end.82

while.body.52:                                    ; preds = %while.cond.49
  %57 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow53 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %57, i32 0, i32 4
  %58 = load i32, i32* %Ebits_to_follow53, align 4
  %dec54 = add i32 %58, -1
  store i32 %dec54, i32* %Ebits_to_follow53, align 4
  %59 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer55 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %59, i32 0, i32 2
  %60 = load i32, i32* %Ebuffer55, align 4
  %shl56 = shl i32 %60, 1
  store i32 %shl56, i32* %Ebuffer55, align 4
  %61 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer57 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %61, i32 0, i32 2
  %62 = load i32, i32* %Ebuffer57, align 4
  store i32 %62, i32* %Ebuffer57, align 4
  %63 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go58 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %63, i32 0, i32 3
  %64 = load i32, i32* %Ebits_to_go58, align 4
  %dec59 = add i32 %64, -1
  store i32 %dec59, i32* %Ebits_to_go58, align 4
  %cmp60 = icmp eq i32 %dec59, 0
  br i1 %cmp60, label %if.then.62, label %if.end.81

if.then.62:                                       ; preds = %while.body.52
  %65 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer63 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %65, i32 0, i32 2
  %66 = load i32, i32* %Ebuffer63, align 4
  %conv64 = trunc i32 %66 to i8
  %67 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len65 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %67, i32 0, i32 6
  %68 = load i32*, i32** %Ecodestrm_len65, align 8
  %69 = load i32, i32* %68, align 4
  %inc66 = add nsw i32 %69, 1
  store i32 %inc66, i32* %68, align 4
  %idxprom67 = sext i32 %69 to i64
  %70 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm68 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %70, i32 0, i32 5
  %71 = load i8*, i8** %Ecodestrm68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %71, i64 %idxprom67
  store i8 %conv64, i8* %arrayidx69, align 1
  %72 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go70 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %72, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go70, align 4
  br label %while.cond.71

while.cond.71:                                    ; preds = %while.body.75, %if.then.62
  %73 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C72 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %73, i32 0, i32 7
  %74 = load i32, i32* %C72, align 4
  %cmp73 = icmp sgt i32 %74, 7
  br i1 %cmp73, label %while.body.75, label %while.end.80

while.body.75:                                    ; preds = %while.cond.71
  %75 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C76 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %75, i32 0, i32 7
  %76 = load i32, i32* %C76, align 4
  %sub77 = sub nsw i32 %76, 8
  store i32 %sub77, i32* %C76, align 4
  %77 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E78 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %77, i32 0, i32 8
  %78 = load i32, i32* %E78, align 4
  %inc79 = add nsw i32 %78, 1
  store i32 %inc79, i32* %E78, align 4
  br label %while.cond.71

while.end.80:                                     ; preds = %while.cond.71
  br label %if.end.81

if.end.81:                                        ; preds = %while.end.80, %while.body.52
  br label %while.cond.49

while.end.82:                                     ; preds = %while.cond.49
  %79 = load i32, i32* %low, align 4
  %sub83 = sub i32 %79, 512
  store i32 %sub83, i32* %low, align 4
  br label %if.end.156

if.else.84:                                       ; preds = %while.body
  %80 = load i32, i32* %low, align 4
  %cmp85 = icmp ult i32 %80, 256
  br i1 %cmp85, label %if.then.87, label %if.else.151

if.then.87:                                       ; preds = %if.else.84
  %81 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer88 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %81, i32 0, i32 2
  %82 = load i32, i32* %Ebuffer88, align 4
  %shl89 = shl i32 %82, 1
  store i32 %shl89, i32* %Ebuffer88, align 4
  %83 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer90 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %83, i32 0, i32 2
  %84 = load i32, i32* %Ebuffer90, align 4
  store i32 %84, i32* %Ebuffer90, align 4
  %85 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go91 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %85, i32 0, i32 3
  %86 = load i32, i32* %Ebits_to_go91, align 4
  %dec92 = add i32 %86, -1
  store i32 %dec92, i32* %Ebits_to_go91, align 4
  %cmp93 = icmp eq i32 %dec92, 0
  br i1 %cmp93, label %if.then.95, label %if.end.114

if.then.95:                                       ; preds = %if.then.87
  %87 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer96 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %87, i32 0, i32 2
  %88 = load i32, i32* %Ebuffer96, align 4
  %conv97 = trunc i32 %88 to i8
  %89 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len98 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %89, i32 0, i32 6
  %90 = load i32*, i32** %Ecodestrm_len98, align 8
  %91 = load i32, i32* %90, align 4
  %inc99 = add nsw i32 %91, 1
  store i32 %inc99, i32* %90, align 4
  %idxprom100 = sext i32 %91 to i64
  %92 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm101 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %92, i32 0, i32 5
  %93 = load i8*, i8** %Ecodestrm101, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %93, i64 %idxprom100
  store i8 %conv97, i8* %arrayidx102, align 1
  %94 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go103 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %94, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go103, align 4
  br label %while.cond.104

while.cond.104:                                   ; preds = %while.body.108, %if.then.95
  %95 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C105 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %95, i32 0, i32 7
  %96 = load i32, i32* %C105, align 4
  %cmp106 = icmp sgt i32 %96, 7
  br i1 %cmp106, label %while.body.108, label %while.end.113

while.body.108:                                   ; preds = %while.cond.104
  %97 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C109 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %97, i32 0, i32 7
  %98 = load i32, i32* %C109, align 4
  %sub110 = sub nsw i32 %98, 8
  store i32 %sub110, i32* %C109, align 4
  %99 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E111 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %99, i32 0, i32 8
  %100 = load i32, i32* %E111, align 4
  %inc112 = add nsw i32 %100, 1
  store i32 %inc112, i32* %E111, align 4
  br label %while.cond.104

while.end.113:                                    ; preds = %while.cond.104
  br label %if.end.114

if.end.114:                                       ; preds = %while.end.113, %if.then.87
  br label %while.cond.115

while.cond.115:                                   ; preds = %if.end.149, %if.end.114
  %101 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow116 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %101, i32 0, i32 4
  %102 = load i32, i32* %Ebits_to_follow116, align 4
  %cmp117 = icmp ugt i32 %102, 0
  br i1 %cmp117, label %while.body.119, label %while.end.150

while.body.119:                                   ; preds = %while.cond.115
  %103 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow120 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %103, i32 0, i32 4
  %104 = load i32, i32* %Ebits_to_follow120, align 4
  %dec121 = add i32 %104, -1
  store i32 %dec121, i32* %Ebits_to_follow120, align 4
  %105 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer122 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %105, i32 0, i32 2
  %106 = load i32, i32* %Ebuffer122, align 4
  %shl123 = shl i32 %106, 1
  store i32 %shl123, i32* %Ebuffer122, align 4
  %107 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer124 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %107, i32 0, i32 2
  %108 = load i32, i32* %Ebuffer124, align 4
  %or125 = or i32 %108, 1
  store i32 %or125, i32* %Ebuffer124, align 4
  %109 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go126 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %109, i32 0, i32 3
  %110 = load i32, i32* %Ebits_to_go126, align 4
  %dec127 = add i32 %110, -1
  store i32 %dec127, i32* %Ebits_to_go126, align 4
  %cmp128 = icmp eq i32 %dec127, 0
  br i1 %cmp128, label %if.then.130, label %if.end.149

if.then.130:                                      ; preds = %while.body.119
  %111 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer131 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %111, i32 0, i32 2
  %112 = load i32, i32* %Ebuffer131, align 4
  %conv132 = trunc i32 %112 to i8
  %113 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len133 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %113, i32 0, i32 6
  %114 = load i32*, i32** %Ecodestrm_len133, align 8
  %115 = load i32, i32* %114, align 4
  %inc134 = add nsw i32 %115, 1
  store i32 %inc134, i32* %114, align 4
  %idxprom135 = sext i32 %115 to i64
  %116 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm136 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %116, i32 0, i32 5
  %117 = load i8*, i8** %Ecodestrm136, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %117, i64 %idxprom135
  store i8 %conv132, i8* %arrayidx137, align 1
  %118 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go138 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %118, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go138, align 4
  br label %while.cond.139

while.cond.139:                                   ; preds = %while.body.143, %if.then.130
  %119 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C140 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %119, i32 0, i32 7
  %120 = load i32, i32* %C140, align 4
  %cmp141 = icmp sgt i32 %120, 7
  br i1 %cmp141, label %while.body.143, label %while.end.148

while.body.143:                                   ; preds = %while.cond.139
  %121 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C144 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %121, i32 0, i32 7
  %122 = load i32, i32* %C144, align 4
  %sub145 = sub nsw i32 %122, 8
  store i32 %sub145, i32* %C144, align 4
  %123 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E146 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %123, i32 0, i32 8
  %124 = load i32, i32* %E146, align 4
  %inc147 = add nsw i32 %124, 1
  store i32 %inc147, i32* %E146, align 4
  br label %while.cond.139

while.end.148:                                    ; preds = %while.cond.139
  br label %if.end.149

if.end.149:                                       ; preds = %while.end.148, %while.body.119
  br label %while.cond.115

while.end.150:                                    ; preds = %while.cond.115
  br label %if.end.155

if.else.151:                                      ; preds = %if.else.84
  %125 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow152 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %125, i32 0, i32 4
  %126 = load i32, i32* %Ebits_to_follow152, align 4
  %inc153 = add i32 %126, 1
  store i32 %inc153, i32* %Ebits_to_follow152, align 4
  %127 = load i32, i32* %low, align 4
  %sub154 = sub i32 %127, 256
  store i32 %sub154, i32* %low, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.151, %while.end.150
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %while.end.82
  %128 = load i32, i32* %low, align 4
  %shl157 = shl i32 %128, 1
  store i32 %shl157, i32* %low, align 4
  %129 = load i32, i32* %range, align 4
  %shl158 = shl i32 %129, 1
  store i32 %shl158, i32* %range, align 4
  br label %while.cond

while.end.159:                                    ; preds = %while.cond
  %130 = load i32, i32* %range, align 4
  %131 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange160 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %131, i32 0, i32 1
  store i32 %130, i32* %Erange160, align 4
  %132 = load i32, i32* %low, align 4
  %133 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow161 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %133, i32 0, i32 0
  store i32 %132, i32* %Elow161, align 4
  %134 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C162 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %134, i32 0, i32 7
  %135 = load i32, i32* %C162, align 4
  %inc163 = add nsw i32 %135, 1
  store i32 %inc163, i32* %C162, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep, i16 signext %symbol) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i16, align 2
  %low = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  store i16 %symbol, i16* %symbol.addr, align 2
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 0
  %1 = load i32, i32* %Elow, align 4
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %low, align 4
  %2 = load i16, i16* %symbol.addr, align 2
  %conv = sext i16 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %3, i32 0, i32 1
  %4 = load i32, i32* %Erange, align 4
  %5 = load i32, i32* %low, align 4
  %add = add i32 %5, %4
  store i32 %add, i32* %low, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %low, align 4
  %cmp2 = icmp uge i32 %6, 1024
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %7, i32 0, i32 2
  %8 = load i32, i32* %Ebuffer, align 4
  %shl5 = shl i32 %8, 1
  store i32 %shl5, i32* %Ebuffer, align 4
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer6 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %9, i32 0, i32 2
  %10 = load i32, i32* %Ebuffer6, align 4
  %or = or i32 %10, 1
  store i32 %or, i32* %Ebuffer6, align 4
  %11 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %11, i32 0, i32 3
  %12 = load i32, i32* %Ebits_to_go, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %Ebits_to_go, align 4
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.then.4
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer10 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %13, i32 0, i32 2
  %14 = load i32, i32* %Ebuffer10, align 4
  %conv11 = trunc i32 %14 to i8
  %15 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %15, i32 0, i32 6
  %16 = load i32*, i32** %Ecodestrm_len, align 8
  %17 = load i32, i32* %16, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %16, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %18, i32 0, i32 5
  %19 = load i8*, i8** %Ecodestrm, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8 %conv11, i8* %arrayidx, align 1
  %20 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go12 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %20, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go12, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.9
  %21 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %21, i32 0, i32 7
  %22 = load i32, i32* %C, align 4
  %cmp13 = icmp sgt i32 %22, 7
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C15 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %23, i32 0, i32 7
  %24 = load i32, i32* %C15, align 4
  %sub = sub nsw i32 %24, 8
  store i32 %sub, i32* %C15, align 4
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %25, i32 0, i32 8
  %26 = load i32, i32* %E, align 4
  %inc16 = add nsw i32 %26, 1
  store i32 %inc16, i32* %E, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.17

if.end.17:                                        ; preds = %while.end, %if.then.4
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.50, %if.end.17
  %27 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %27, i32 0, i32 4
  %28 = load i32, i32* %Ebits_to_follow, align 4
  %cmp19 = icmp ugt i32 %28, 0
  br i1 %cmp19, label %while.body.21, label %while.end.51

while.body.21:                                    ; preds = %while.cond.18
  %29 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow22 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %29, i32 0, i32 4
  %30 = load i32, i32* %Ebits_to_follow22, align 4
  %dec23 = add i32 %30, -1
  store i32 %dec23, i32* %Ebits_to_follow22, align 4
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer24 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %31, i32 0, i32 2
  %32 = load i32, i32* %Ebuffer24, align 4
  %shl25 = shl i32 %32, 1
  store i32 %shl25, i32* %Ebuffer24, align 4
  %33 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer26 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %33, i32 0, i32 2
  %34 = load i32, i32* %Ebuffer26, align 4
  store i32 %34, i32* %Ebuffer26, align 4
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go27 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %35, i32 0, i32 3
  %36 = load i32, i32* %Ebits_to_go27, align 4
  %dec28 = add i32 %36, -1
  store i32 %dec28, i32* %Ebits_to_go27, align 4
  %cmp29 = icmp eq i32 %dec28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.50

if.then.31:                                       ; preds = %while.body.21
  %37 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer32 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %37, i32 0, i32 2
  %38 = load i32, i32* %Ebuffer32, align 4
  %conv33 = trunc i32 %38 to i8
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len34 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %39, i32 0, i32 6
  %40 = load i32*, i32** %Ecodestrm_len34, align 8
  %41 = load i32, i32* %40, align 4
  %inc35 = add nsw i32 %41, 1
  store i32 %inc35, i32* %40, align 4
  %idxprom36 = sext i32 %41 to i64
  %42 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm37 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %42, i32 0, i32 5
  %43 = load i8*, i8** %Ecodestrm37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %43, i64 %idxprom36
  store i8 %conv33, i8* %arrayidx38, align 1
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go39 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %44, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go39, align 4
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.44, %if.then.31
  %45 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C41 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %45, i32 0, i32 7
  %46 = load i32, i32* %C41, align 4
  %cmp42 = icmp sgt i32 %46, 7
  br i1 %cmp42, label %while.body.44, label %while.end.49

while.body.44:                                    ; preds = %while.cond.40
  %47 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C45 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %47, i32 0, i32 7
  %48 = load i32, i32* %C45, align 4
  %sub46 = sub nsw i32 %48, 8
  store i32 %sub46, i32* %C45, align 4
  %49 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E47 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %49, i32 0, i32 8
  %50 = load i32, i32* %E47, align 4
  %inc48 = add nsw i32 %50, 1
  store i32 %inc48, i32* %E47, align 4
  br label %while.cond.40

while.end.49:                                     ; preds = %while.cond.40
  br label %if.end.50

if.end.50:                                        ; preds = %while.end.49, %while.body.21
  br label %while.cond.18

while.end.51:                                     ; preds = %while.cond.18
  %51 = load i32, i32* %low, align 4
  %sub52 = sub i32 %51, 1024
  store i32 %sub52, i32* %low, align 4
  br label %if.end.124

if.else:                                          ; preds = %if.end
  %52 = load i32, i32* %low, align 4
  %cmp53 = icmp ult i32 %52, 512
  br i1 %cmp53, label %if.then.55, label %if.else.119

if.then.55:                                       ; preds = %if.else
  %53 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer56 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %53, i32 0, i32 2
  %54 = load i32, i32* %Ebuffer56, align 4
  %shl57 = shl i32 %54, 1
  store i32 %shl57, i32* %Ebuffer56, align 4
  %55 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer58 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %55, i32 0, i32 2
  %56 = load i32, i32* %Ebuffer58, align 4
  store i32 %56, i32* %Ebuffer58, align 4
  %57 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go59 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %57, i32 0, i32 3
  %58 = load i32, i32* %Ebits_to_go59, align 4
  %dec60 = add i32 %58, -1
  store i32 %dec60, i32* %Ebits_to_go59, align 4
  %cmp61 = icmp eq i32 %dec60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.82

if.then.63:                                       ; preds = %if.then.55
  %59 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer64 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %59, i32 0, i32 2
  %60 = load i32, i32* %Ebuffer64, align 4
  %conv65 = trunc i32 %60 to i8
  %61 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len66 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %61, i32 0, i32 6
  %62 = load i32*, i32** %Ecodestrm_len66, align 8
  %63 = load i32, i32* %62, align 4
  %inc67 = add nsw i32 %63, 1
  store i32 %inc67, i32* %62, align 4
  %idxprom68 = sext i32 %63 to i64
  %64 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm69 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %64, i32 0, i32 5
  %65 = load i8*, i8** %Ecodestrm69, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %65, i64 %idxprom68
  store i8 %conv65, i8* %arrayidx70, align 1
  %66 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go71 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %66, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go71, align 4
  br label %while.cond.72

while.cond.72:                                    ; preds = %while.body.76, %if.then.63
  %67 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C73 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %67, i32 0, i32 7
  %68 = load i32, i32* %C73, align 4
  %cmp74 = icmp sgt i32 %68, 7
  br i1 %cmp74, label %while.body.76, label %while.end.81

while.body.76:                                    ; preds = %while.cond.72
  %69 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C77 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %69, i32 0, i32 7
  %70 = load i32, i32* %C77, align 4
  %sub78 = sub nsw i32 %70, 8
  store i32 %sub78, i32* %C77, align 4
  %71 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E79 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %71, i32 0, i32 8
  %72 = load i32, i32* %E79, align 4
  %inc80 = add nsw i32 %72, 1
  store i32 %inc80, i32* %E79, align 4
  br label %while.cond.72

while.end.81:                                     ; preds = %while.cond.72
  br label %if.end.82

if.end.82:                                        ; preds = %while.end.81, %if.then.55
  br label %while.cond.83

while.cond.83:                                    ; preds = %if.end.117, %if.end.82
  %73 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow84 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %73, i32 0, i32 4
  %74 = load i32, i32* %Ebits_to_follow84, align 4
  %cmp85 = icmp ugt i32 %74, 0
  br i1 %cmp85, label %while.body.87, label %while.end.118

while.body.87:                                    ; preds = %while.cond.83
  %75 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow88 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %75, i32 0, i32 4
  %76 = load i32, i32* %Ebits_to_follow88, align 4
  %dec89 = add i32 %76, -1
  store i32 %dec89, i32* %Ebits_to_follow88, align 4
  %77 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer90 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %77, i32 0, i32 2
  %78 = load i32, i32* %Ebuffer90, align 4
  %shl91 = shl i32 %78, 1
  store i32 %shl91, i32* %Ebuffer90, align 4
  %79 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer92 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %79, i32 0, i32 2
  %80 = load i32, i32* %Ebuffer92, align 4
  %or93 = or i32 %80, 1
  store i32 %or93, i32* %Ebuffer92, align 4
  %81 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go94 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %81, i32 0, i32 3
  %82 = load i32, i32* %Ebits_to_go94, align 4
  %dec95 = add i32 %82, -1
  store i32 %dec95, i32* %Ebits_to_go94, align 4
  %cmp96 = icmp eq i32 %dec95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.117

if.then.98:                                       ; preds = %while.body.87
  %83 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer99 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %83, i32 0, i32 2
  %84 = load i32, i32* %Ebuffer99, align 4
  %conv100 = trunc i32 %84 to i8
  %85 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len101 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %85, i32 0, i32 6
  %86 = load i32*, i32** %Ecodestrm_len101, align 8
  %87 = load i32, i32* %86, align 4
  %inc102 = add nsw i32 %87, 1
  store i32 %inc102, i32* %86, align 4
  %idxprom103 = sext i32 %87 to i64
  %88 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm104 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %88, i32 0, i32 5
  %89 = load i8*, i8** %Ecodestrm104, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %89, i64 %idxprom103
  store i8 %conv100, i8* %arrayidx105, align 1
  %90 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go106 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %90, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go106, align 4
  br label %while.cond.107

while.cond.107:                                   ; preds = %while.body.111, %if.then.98
  %91 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C108 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %91, i32 0, i32 7
  %92 = load i32, i32* %C108, align 4
  %cmp109 = icmp sgt i32 %92, 7
  br i1 %cmp109, label %while.body.111, label %while.end.116

while.body.111:                                   ; preds = %while.cond.107
  %93 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C112 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %93, i32 0, i32 7
  %94 = load i32, i32* %C112, align 4
  %sub113 = sub nsw i32 %94, 8
  store i32 %sub113, i32* %C112, align 4
  %95 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E114 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %95, i32 0, i32 8
  %96 = load i32, i32* %E114, align 4
  %inc115 = add nsw i32 %96, 1
  store i32 %inc115, i32* %E114, align 4
  br label %while.cond.107

while.end.116:                                    ; preds = %while.cond.107
  br label %if.end.117

if.end.117:                                       ; preds = %while.end.116, %while.body.87
  br label %while.cond.83

while.end.118:                                    ; preds = %while.cond.83
  br label %if.end.123

if.else.119:                                      ; preds = %if.else
  %97 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow120 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %97, i32 0, i32 4
  %98 = load i32, i32* %Ebits_to_follow120, align 4
  %inc121 = add i32 %98, 1
  store i32 %inc121, i32* %Ebits_to_follow120, align 4
  %99 = load i32, i32* %low, align 4
  %sub122 = sub i32 %99, 512
  store i32 %sub122, i32* %low, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.119, %while.end.118
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %while.end.51
  %100 = load i32, i32* %low, align 4
  %101 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow125 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %101, i32 0, i32 0
  store i32 %100, i32* %Elow125, align 4
  %102 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C126 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %102, i32 0, i32 7
  %103 = load i32, i32* %C126, align 4
  %inc127 = add nsw i32 %103, 1
  store i32 %inc127, i32* %C126, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep, i16 signext %symbol) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i16, align 2
  %range = alloca i32, align 4
  %low = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  store i16 %symbol, i16* %symbol.addr, align 2
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 1
  %1 = load i32, i32* %Erange, align 4
  %sub = sub i32 %1, 2
  store i32 %sub, i32* %range, align 4
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %2, i32 0, i32 0
  %3 = load i32, i32* %Elow, align 4
  store i32 %3, i32* %low, align 4
  %4 = load i16, i16* %symbol.addr, align 2
  %tobool = icmp ne i16 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %range, align 4
  %6 = load i32, i32* %low, align 4
  %add = add i32 %6, %5
  store i32 %add, i32* %low, align 4
  store i32 2, i32* %range, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.122, %if.end
  %7 = load i32, i32* %range, align 4
  %cmp = icmp ult i32 %7, 256
  br i1 %cmp, label %while.body, label %while.end.125

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %low, align 4
  %cmp1 = icmp uge i32 %8, 512
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %while.body
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %9, i32 0, i32 2
  %10 = load i32, i32* %Ebuffer, align 4
  %shl = shl i32 %10, 1
  store i32 %shl, i32* %Ebuffer, align 4
  %11 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer3 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %11, i32 0, i32 2
  %12 = load i32, i32* %Ebuffer3, align 4
  %or = or i32 %12, 1
  store i32 %or, i32* %Ebuffer3, align 4
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %13, i32 0, i32 3
  %14 = load i32, i32* %Ebits_to_go, align 4
  %dec = add i32 %14, -1
  store i32 %dec, i32* %Ebits_to_go, align 4
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.then.2
  %15 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer6 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %15, i32 0, i32 2
  %16 = load i32, i32* %Ebuffer6, align 4
  %conv = trunc i32 %16 to i8
  %17 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %17, i32 0, i32 6
  %18 = load i32*, i32** %Ecodestrm_len, align 8
  %19 = load i32, i32* %18, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %18, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %20, i32 0, i32 5
  %21 = load i8*, i8** %Ecodestrm, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %22 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go7 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %22, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go7, align 4
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.11, %if.then.5
  %23 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %23, i32 0, i32 7
  %24 = load i32, i32* %C, align 4
  %cmp9 = icmp sgt i32 %24, 7
  br i1 %cmp9, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.8
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C12 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %25, i32 0, i32 7
  %26 = load i32, i32* %C12, align 4
  %sub13 = sub nsw i32 %26, 8
  store i32 %sub13, i32* %C12, align 4
  %27 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %27, i32 0, i32 8
  %28 = load i32, i32* %E, align 4
  %inc14 = add nsw i32 %28, 1
  store i32 %inc14, i32* %E, align 4
  br label %while.cond.8

while.end:                                        ; preds = %while.cond.8
  br label %if.end.15

if.end.15:                                        ; preds = %while.end, %if.then.2
  br label %while.cond.16

while.cond.16:                                    ; preds = %if.end.48, %if.end.15
  %29 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %29, i32 0, i32 4
  %30 = load i32, i32* %Ebits_to_follow, align 4
  %cmp17 = icmp ugt i32 %30, 0
  br i1 %cmp17, label %while.body.19, label %while.end.49

while.body.19:                                    ; preds = %while.cond.16
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow20 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %31, i32 0, i32 4
  %32 = load i32, i32* %Ebits_to_follow20, align 4
  %dec21 = add i32 %32, -1
  store i32 %dec21, i32* %Ebits_to_follow20, align 4
  %33 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer22 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %33, i32 0, i32 2
  %34 = load i32, i32* %Ebuffer22, align 4
  %shl23 = shl i32 %34, 1
  store i32 %shl23, i32* %Ebuffer22, align 4
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer24 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %35, i32 0, i32 2
  %36 = load i32, i32* %Ebuffer24, align 4
  store i32 %36, i32* %Ebuffer24, align 4
  %37 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go25 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %37, i32 0, i32 3
  %38 = load i32, i32* %Ebits_to_go25, align 4
  %dec26 = add i32 %38, -1
  store i32 %dec26, i32* %Ebits_to_go25, align 4
  %cmp27 = icmp eq i32 %dec26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.48

if.then.29:                                       ; preds = %while.body.19
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer30 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %39, i32 0, i32 2
  %40 = load i32, i32* %Ebuffer30, align 4
  %conv31 = trunc i32 %40 to i8
  %41 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len32 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %41, i32 0, i32 6
  %42 = load i32*, i32** %Ecodestrm_len32, align 8
  %43 = load i32, i32* %42, align 4
  %inc33 = add nsw i32 %43, 1
  store i32 %inc33, i32* %42, align 4
  %idxprom34 = sext i32 %43 to i64
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm35 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %44, i32 0, i32 5
  %45 = load i8*, i8** %Ecodestrm35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %45, i64 %idxprom34
  store i8 %conv31, i8* %arrayidx36, align 1
  %46 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go37 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %46, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go37, align 4
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.42, %if.then.29
  %47 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C39 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %47, i32 0, i32 7
  %48 = load i32, i32* %C39, align 4
  %cmp40 = icmp sgt i32 %48, 7
  br i1 %cmp40, label %while.body.42, label %while.end.47

while.body.42:                                    ; preds = %while.cond.38
  %49 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C43 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %49, i32 0, i32 7
  %50 = load i32, i32* %C43, align 4
  %sub44 = sub nsw i32 %50, 8
  store i32 %sub44, i32* %C43, align 4
  %51 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E45 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %51, i32 0, i32 8
  %52 = load i32, i32* %E45, align 4
  %inc46 = add nsw i32 %52, 1
  store i32 %inc46, i32* %E45, align 4
  br label %while.cond.38

while.end.47:                                     ; preds = %while.cond.38
  br label %if.end.48

if.end.48:                                        ; preds = %while.end.47, %while.body.19
  br label %while.cond.16

while.end.49:                                     ; preds = %while.cond.16
  %53 = load i32, i32* %low, align 4
  %sub50 = sub i32 %53, 512
  store i32 %sub50, i32* %low, align 4
  br label %if.end.122

if.else:                                          ; preds = %while.body
  %54 = load i32, i32* %low, align 4
  %cmp51 = icmp ult i32 %54, 256
  br i1 %cmp51, label %if.then.53, label %if.else.117

if.then.53:                                       ; preds = %if.else
  %55 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer54 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %55, i32 0, i32 2
  %56 = load i32, i32* %Ebuffer54, align 4
  %shl55 = shl i32 %56, 1
  store i32 %shl55, i32* %Ebuffer54, align 4
  %57 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer56 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %57, i32 0, i32 2
  %58 = load i32, i32* %Ebuffer56, align 4
  store i32 %58, i32* %Ebuffer56, align 4
  %59 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go57 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %59, i32 0, i32 3
  %60 = load i32, i32* %Ebits_to_go57, align 4
  %dec58 = add i32 %60, -1
  store i32 %dec58, i32* %Ebits_to_go57, align 4
  %cmp59 = icmp eq i32 %dec58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.80

if.then.61:                                       ; preds = %if.then.53
  %61 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer62 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %61, i32 0, i32 2
  %62 = load i32, i32* %Ebuffer62, align 4
  %conv63 = trunc i32 %62 to i8
  %63 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len64 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %63, i32 0, i32 6
  %64 = load i32*, i32** %Ecodestrm_len64, align 8
  %65 = load i32, i32* %64, align 4
  %inc65 = add nsw i32 %65, 1
  store i32 %inc65, i32* %64, align 4
  %idxprom66 = sext i32 %65 to i64
  %66 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm67 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %66, i32 0, i32 5
  %67 = load i8*, i8** %Ecodestrm67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %67, i64 %idxprom66
  store i8 %conv63, i8* %arrayidx68, align 1
  %68 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go69 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %68, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go69, align 4
  br label %while.cond.70

while.cond.70:                                    ; preds = %while.body.74, %if.then.61
  %69 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C71 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %69, i32 0, i32 7
  %70 = load i32, i32* %C71, align 4
  %cmp72 = icmp sgt i32 %70, 7
  br i1 %cmp72, label %while.body.74, label %while.end.79

while.body.74:                                    ; preds = %while.cond.70
  %71 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C75 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %71, i32 0, i32 7
  %72 = load i32, i32* %C75, align 4
  %sub76 = sub nsw i32 %72, 8
  store i32 %sub76, i32* %C75, align 4
  %73 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E77 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %73, i32 0, i32 8
  %74 = load i32, i32* %E77, align 4
  %inc78 = add nsw i32 %74, 1
  store i32 %inc78, i32* %E77, align 4
  br label %while.cond.70

while.end.79:                                     ; preds = %while.cond.70
  br label %if.end.80

if.end.80:                                        ; preds = %while.end.79, %if.then.53
  br label %while.cond.81

while.cond.81:                                    ; preds = %if.end.115, %if.end.80
  %75 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow82 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %75, i32 0, i32 4
  %76 = load i32, i32* %Ebits_to_follow82, align 4
  %cmp83 = icmp ugt i32 %76, 0
  br i1 %cmp83, label %while.body.85, label %while.end.116

while.body.85:                                    ; preds = %while.cond.81
  %77 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow86 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %77, i32 0, i32 4
  %78 = load i32, i32* %Ebits_to_follow86, align 4
  %dec87 = add i32 %78, -1
  store i32 %dec87, i32* %Ebits_to_follow86, align 4
  %79 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer88 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %79, i32 0, i32 2
  %80 = load i32, i32* %Ebuffer88, align 4
  %shl89 = shl i32 %80, 1
  store i32 %shl89, i32* %Ebuffer88, align 4
  %81 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer90 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %81, i32 0, i32 2
  %82 = load i32, i32* %Ebuffer90, align 4
  %or91 = or i32 %82, 1
  store i32 %or91, i32* %Ebuffer90, align 4
  %83 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go92 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %83, i32 0, i32 3
  %84 = load i32, i32* %Ebits_to_go92, align 4
  %dec93 = add i32 %84, -1
  store i32 %dec93, i32* %Ebits_to_go92, align 4
  %cmp94 = icmp eq i32 %dec93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.115

if.then.96:                                       ; preds = %while.body.85
  %85 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer97 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %85, i32 0, i32 2
  %86 = load i32, i32* %Ebuffer97, align 4
  %conv98 = trunc i32 %86 to i8
  %87 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len99 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %87, i32 0, i32 6
  %88 = load i32*, i32** %Ecodestrm_len99, align 8
  %89 = load i32, i32* %88, align 4
  %inc100 = add nsw i32 %89, 1
  store i32 %inc100, i32* %88, align 4
  %idxprom101 = sext i32 %89 to i64
  %90 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm102 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %90, i32 0, i32 5
  %91 = load i8*, i8** %Ecodestrm102, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %91, i64 %idxprom101
  store i8 %conv98, i8* %arrayidx103, align 1
  %92 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go104 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %92, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go104, align 4
  br label %while.cond.105

while.cond.105:                                   ; preds = %while.body.109, %if.then.96
  %93 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C106 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %93, i32 0, i32 7
  %94 = load i32, i32* %C106, align 4
  %cmp107 = icmp sgt i32 %94, 7
  br i1 %cmp107, label %while.body.109, label %while.end.114

while.body.109:                                   ; preds = %while.cond.105
  %95 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C110 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %95, i32 0, i32 7
  %96 = load i32, i32* %C110, align 4
  %sub111 = sub nsw i32 %96, 8
  store i32 %sub111, i32* %C110, align 4
  %97 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E112 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %97, i32 0, i32 8
  %98 = load i32, i32* %E112, align 4
  %inc113 = add nsw i32 %98, 1
  store i32 %inc113, i32* %E112, align 4
  br label %while.cond.105

while.end.114:                                    ; preds = %while.cond.105
  br label %if.end.115

if.end.115:                                       ; preds = %while.end.114, %while.body.85
  br label %while.cond.81

while.end.116:                                    ; preds = %while.cond.81
  br label %if.end.121

if.else.117:                                      ; preds = %if.else
  %99 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow118 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %99, i32 0, i32 4
  %100 = load i32, i32* %Ebits_to_follow118, align 4
  %inc119 = add i32 %100, 1
  store i32 %inc119, i32* %Ebits_to_follow118, align 4
  %101 = load i32, i32* %low, align 4
  %sub120 = sub i32 %101, 256
  store i32 %sub120, i32* %low, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.117, %while.end.116
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %while.end.49
  %102 = load i32, i32* %low, align 4
  %shl123 = shl i32 %102, 1
  store i32 %shl123, i32* %low, align 4
  %103 = load i32, i32* %range, align 4
  %shl124 = shl i32 %103, 1
  store i32 %shl124, i32* %range, align 4
  br label %while.cond

while.end.125:                                    ; preds = %while.cond
  %104 = load i32, i32* %range, align 4
  %105 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange126 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %105, i32 0, i32 1
  store i32 %104, i32* %Erange126, align 4
  %106 = load i32, i32* %low, align 4
  %107 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow127 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %107, i32 0, i32 0
  store i32 %106, i32* %Elow127, align 4
  %108 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C128 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %108, i32 0, i32 7
  %109 = load i32, i32* %C128, align 4
  %inc129 = add nsw i32 %109, 1
  store i32 %inc129, i32* %C128, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @biari_init_context(%struct.BiContextType* %ctx, i32* %ini) #0 {
entry:
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %ini.addr = alloca i32*, align 8
  %pstate = alloca i32, align 4
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32* %ini, i32** %ini.addr, align 8
  %0 = load i32*, i32** %ini.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 60
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %qp = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 1
  %4 = load i32, i32* %qp, align 4
  %call = call i32 @imax(i32 0, i32 %4)
  %mul = mul nsw i32 %1, %call
  %shr = ashr i32 %mul, 4
  %5 = load i32*, i32** %ini.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 1
  %6 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %shr, %6
  %call2 = call i32 @iClip3(i32 1, i32 126, i32 %add)
  store i32 %call2, i32* %pstate, align 4
  %7 = load i32, i32* %pstate, align 4
  %cmp = icmp sge i32 %7, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %pstate, align 4
  %sub = sub nsw i32 %8, 64
  %conv = trunc i32 %sub to i16
  %9 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %9, i32 0, i32 0
  store i16 %conv, i16* %state, align 2
  %10 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %MPS = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %10, i32 0, i32 1
  store i8 1, i8* %MPS, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %pstate, align 4
  %sub3 = sub nsw i32 63, %11
  %conv4 = trunc i32 %sub3 to i16
  %12 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %12, i32 0, i32 0
  store i16 %conv4, i16* %state5, align 2
  %13 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %MPS6 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %13, i32 0, i32 1
  store i8 0, i8* %MPS6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %count = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %14, i32 0, i32 2
  store i64 0, i64* %count, align 8
  ret void
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
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
