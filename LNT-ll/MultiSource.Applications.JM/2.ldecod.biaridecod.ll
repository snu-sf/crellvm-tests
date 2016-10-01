; ModuleID = './MultiSource.Applications.JM/2.ldecod.biaridecod.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.img_par = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [16 x i16]], [6 x [32 x i32]], [16 x [16 x i32]], [4 x [12 x [4 x [4 x i32]]]], [16 x i32], i8**, i32*, i32***, i32**, i32, i32, i32, i32, %struct.Slice*, %struct.macroblock*, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32***, i32***, i32****, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i64, i64, %struct.timeb, %struct.timeb, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (%struct.img_par*, %struct.inp_par*)*, i32, i32, i32, i32 }
%struct.datapartition = type { %struct.Bitstream*, %struct.DecodingEnvironment, i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i32, i32, i8*, i32 }
%struct.DecodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32* }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.img_par*, %struct.DecodingEnvironment*)* }
%struct.MotionInfoContexts = type { [4 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.inp_par = type { [1000 x i8], [1000 x i8], [1000 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, [2 x i32], i32, i32, %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], i32, i64, i64, i32, i32, [4 x i8], [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.timeb = type { i64, i16, i16, i16 }

@binCount = global i32 0, align 4
@rLPS_table_64x4 = constant [64 x [4 x i8]] [[4 x i8] c"\80\B0\D0\F0", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"{\96\B2\CD", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"o\87\A0\B9", [4 x i8] c"i\80\98\AF", [4 x i8] c"dz\90\A6", [4 x i8] c"_t\89\9E", [4 x i8] c"Zn\82\96", [4 x i8] c"Uh{\8E", [4 x i8] c"Qcu\87", [4 x i8] c"M^o\80", [4 x i8] c"IYiz", [4 x i8] c"EUdt", [4 x i8] c"BP_n", [4 x i8] c">LZh", [4 x i8] c";HVc", [4 x i8] c"8EQ^", [4 x i8] c"5AMY", [4 x i8] c"3>IU", [4 x i8] c"0;EP", [4 x i8] c".8BL", [4 x i8] c"+5?H", [4 x i8] c")2;E", [4 x i8] c"'08A", [4 x i8] c"%-6>", [4 x i8] c"#+3;", [4 x i8] c"!)08", [4 x i8] c" '.5", [4 x i8] c"\1E%+2", [4 x i8] c"\1D#)0", [4 x i8] c"\1B!'-", [4 x i8] c"\1A\1F%+", [4 x i8] c"\18\1E#)", [4 x i8] c"\17\1C!'", [4 x i8] c"\16\1B %", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\14\18\1D!", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\07\08\09", [4 x i8] c"\02\02\02\02"], align 16
@AC_next_state_MPS_64 = constant [64 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 62, i16 63], align 16
@AC_next_state_LPS_64 = constant [64 x i16] [i16 0, i16 0, i16 1, i16 2, i16 2, i16 4, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 9, i16 11, i16 11, i16 12, i16 13, i16 13, i16 15, i16 15, i16 16, i16 16, i16 18, i16 18, i16 19, i16 19, i16 21, i16 21, i16 22, i16 22, i16 23, i16 24, i16 24, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 29, i16 29, i16 30, i16 30, i16 30, i16 31, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 38, i16 38, i16 63], align 16
@.str = private unnamed_addr constant [41 x i8] c"arideco_create_decoding_environment: dep\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"Error freeing dep (NULL pointer)\00", align 1
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@imgY_ref = common global i16** null, align 8
@imgUV_ref = common global i16*** null, align 8
@PicPos = common global i32** null, align 8
@ReMapRef = common global [20 x i32] zeroinitializer, align 16
@Bframe_ctr = common global i32 0, align 4
@frame_no = common global i32 0, align 4
@g_nFrame = common global i32 0, align 4
@TopFieldForSkip_Y = common global [16 x [16 x i32]] zeroinitializer, align 16
@TopFieldForSkip_UV = common global [2 x [16 x [16 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@qmatrix = common global [8 x i32*] zeroinitializer, align 16
@tot_time = common global i64 0, align 8
@p_out = common global i32 0, align 4
@p_ref = common global i32 0, align 4
@p_log = common global %struct._IO_FILE* null, align 8
@previous_frame_num = common global i32 0, align 4
@ref_flag = common global [17 x i32] zeroinitializer, align 16
@Is_primary_correct = common global i32 0, align 4
@Is_redundant_correct = common global i32 0, align 4
@redundant_slice_ref_idx = common global i32 0, align 4
@nal_startcode_follows = common global i32 (%struct.img_par*, i32)* null, align 8

; Function Attrs: nounwind uwtable
define %struct.DecodingEnvironment* @arideco_create_decoding_environment() #0 {
entry:
  %dep = alloca %struct.DecodingEnvironment*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 40) #4
  %0 = bitcast i8* %call to %struct.DecodingEnvironment*
  store %struct.DecodingEnvironment* %0, %struct.DecodingEnvironment** %dep, align 8
  %cmp = icmp eq %struct.DecodingEnvironment* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep, align 8
  ret %struct.DecodingEnvironment* %1
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define void @arideco_delete_decoding_environment(%struct.DecodingEnvironment* %dep) #0 {
entry:
  %dep.addr = alloca %struct.DecodingEnvironment*, align 8
  store %struct.DecodingEnvironment* %dep, %struct.DecodingEnvironment** %dep.addr, align 8
  %0 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %cmp = icmp eq %struct.DecodingEnvironment* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 200)
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %2 = bitcast %struct.DecodingEnvironment* %1 to i8*
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
define void @arideco_start_decoding(%struct.DecodingEnvironment* %dep, i8* %cpixcode, i32 %firstbyte, i32* %cpixcode_len, i32 %slice_type) #0 {
entry:
  %dep.addr = alloca %struct.DecodingEnvironment*, align 8
  %cpixcode.addr = alloca i8*, align 8
  %firstbyte.addr = alloca i32, align 4
  %cpixcode_len.addr = alloca i32*, align 8
  %slice_type.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.DecodingEnvironment* %dep, %struct.DecodingEnvironment** %dep.addr, align 8
  store i8* %cpixcode, i8** %cpixcode.addr, align 8
  store i32 %firstbyte, i32* %firstbyte.addr, align 4
  store i32* %cpixcode_len, i32** %cpixcode_len.addr, align 8
  store i32 %slice_type, i32* %slice_type.addr, align 4
  store i32 0, i32* %value, align 4
  %0 = load i8*, i8** %cpixcode.addr, align 8
  %1 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %1, i32 0, i32 5
  store i8* %0, i8** %Dcodestrm, align 8
  %2 = load i32*, i32** %cpixcode_len.addr, align 8
  %3 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm_len = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %3, i32 0, i32 6
  store i32* %2, i32** %Dcodestrm_len, align 8
  %4 = load i32, i32* %firstbyte.addr, align 4
  %5 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm_len1 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %5, i32 0, i32 6
  %6 = load i32*, i32** %Dcodestrm_len1, align 8
  store i32 %4, i32* %6, align 4
  %7 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %7, i32 0, i32 4
  store i32 0, i32* %Dbits_to_go, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go2 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %9, i32 0, i32 4
  %10 = load i32, i32* %Dbits_to_go2, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %Dbits_to_go2, align 4
  %cmp3 = icmp slt i32 %dec, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm_len4 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %11, i32 0, i32 6
  %12 = load i32*, i32** %Dcodestrm_len4, align 8
  %13 = load i32, i32* %12, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %12, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm5 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %14, i32 0, i32 5
  %15 = load i8*, i8** %Dcodestrm5, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %17 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbuffer = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %17, i32 0, i32 3
  store i32 %conv, i32* %Dbuffer, align 4
  %18 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go6 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %18, i32 0, i32 4
  store i32 7, i32* %Dbits_to_go6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %19 = load i32, i32* %value, align 4
  %shl = shl i32 %19, 1
  %20 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbuffer7 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %20, i32 0, i32 3
  %21 = load i32, i32* %Dbuffer7, align 4
  %22 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go8 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %22, i32 0, i32 4
  %23 = load i32, i32* %Dbits_to_go8, align 4
  %shr = lshr i32 %21, %23
  %and = and i32 %shr, 1
  %or = or i32 %shl, %and
  store i32 %or, i32* %value, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %24, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Drange = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %25, i32 0, i32 1
  store i32 510, i32* %Drange, align 4
  %26 = load i32, i32* %value, align 4
  %27 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dvalue = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %27, i32 0, i32 2
  store i32 %26, i32* %Dvalue, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @arideco_bits_read(%struct.DecodingEnvironment* %dep) #0 {
entry:
  %dep.addr = alloca %struct.DecodingEnvironment*, align 8
  store %struct.DecodingEnvironment* %dep, %struct.DecodingEnvironment** %dep.addr, align 8
  %0 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm_len = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i32 0, i32 6
  %1 = load i32*, i32** %Dcodestrm_len, align 8
  %2 = load i32, i32* %1, align 4
  %sub = sub nsw i32 %2, 1
  %mul = mul nsw i32 8, %sub
  %3 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %3, i32 0, i32 4
  %4 = load i32, i32* %Dbits_to_go, align 4
  %sub1 = sub nsw i32 8, %4
  %add = add nsw i32 %mul, %sub1
  %sub2 = sub nsw i32 %add, 16
  ret i32 %sub2
}

; Function Attrs: nounwind uwtable
define void @arideco_done_decoding(%struct.DecodingEnvironment* %dep) #0 {
entry:
  %dep.addr = alloca %struct.DecodingEnvironment*, align 8
  store %struct.DecodingEnvironment* %dep, %struct.DecodingEnvironment** %dep.addr, align 8
  %0 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm_len = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i32 0, i32 6
  %1 = load i32*, i32** %Dcodestrm_len, align 8
  %2 = load i32, i32* %1, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @biari_decode_symbol(%struct.DecodingEnvironment* %dep, %struct.BiContextType* %bi_ct) #0 {
entry:
  %dep.addr = alloca %struct.DecodingEnvironment*, align 8
  %bi_ct.addr = alloca %struct.BiContextType*, align 8
  %bit = alloca i32, align 4
  %value = alloca i32, align 4
  %range = alloca i32, align 4
  %rLPS = alloca i32, align 4
  store %struct.DecodingEnvironment* %dep, %struct.DecodingEnvironment** %dep.addr, align 8
  store %struct.BiContextType* %bi_ct, %struct.BiContextType** %bi_ct.addr, align 8
  %0 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %MPS = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %0, i32 0, i32 1
  %1 = load i8, i8* %MPS, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %bit, align 4
  %2 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dvalue = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %2, i32 0, i32 2
  %3 = load i32, i32* %Dvalue, align 4
  store i32 %3, i32* %value, align 4
  %4 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Drange = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %4, i32 0, i32 1
  %5 = load i32, i32* %Drange, align 4
  store i32 %5, i32* %range, align 4
  %6 = load i32, i32* %range, align 4
  %shr = lshr i32 %6, 6
  %and = and i32 %shr, 3
  %idxprom = zext i32 %and to i64
  %7 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %7, i32 0, i32 0
  %8 = load i16, i16* %state, align 2
  %idxprom1 = zext i16 %8 to i64
  %arrayidx = getelementptr inbounds [64 x [4 x i8]], [64 x [4 x i8]]* @rLPS_table_64x4, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  store i32 %conv3, i32* %rLPS, align 4
  %10 = load i32, i32* %rLPS, align 4
  %11 = load i32, i32* %range, align 4
  %sub = sub i32 %11, %10
  store i32 %sub, i32* %range, align 4
  %12 = load i32, i32* %value, align 4
  %13 = load i32, i32* %range, align 4
  %cmp = icmp ult i32 %12, %13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state5 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %14, i32 0, i32 0
  %15 = load i16, i16* %state5, align 2
  %idxprom6 = zext i16 %15 to i64
  %arrayidx7 = getelementptr inbounds [64 x i16], [64 x i16]* @AC_next_state_MPS_64, i32 0, i64 %idxprom6
  %16 = load i16, i16* %arrayidx7, align 2
  %17 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state8 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %17, i32 0, i32 0
  store i16 %16, i16* %state8, align 2
  br label %if.end.20

if.else:                                          ; preds = %entry
  %18 = load i32, i32* %range, align 4
  %19 = load i32, i32* %value, align 4
  %sub9 = sub i32 %19, %18
  store i32 %sub9, i32* %value, align 4
  %20 = load i32, i32* %rLPS, align 4
  store i32 %20, i32* %range, align 4
  %21 = load i32, i32* %bit, align 4
  %tobool = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %bit, align 4
  %22 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state10 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %22, i32 0, i32 0
  %23 = load i16, i16* %state10, align 2
  %tobool11 = icmp ne i16 %23, 0
  br i1 %tobool11, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %if.else
  %24 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %MPS13 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %24, i32 0, i32 1
  %25 = load i8, i8* %MPS13, align 1
  %conv14 = zext i8 %25 to i32
  %xor = xor i32 %conv14, 1
  %conv15 = trunc i32 %xor to i8
  store i8 %conv15, i8* %MPS13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else
  %26 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state16 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %26, i32 0, i32 0
  %27 = load i16, i16* %state16, align 2
  %idxprom17 = zext i16 %27 to i64
  %arrayidx18 = getelementptr inbounds [64 x i16], [64 x i16]* @AC_next_state_LPS_64, i32 0, i64 %idxprom17
  %28 = load i16, i16* %arrayidx18, align 2
  %29 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state19 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %29, i32 0, i32 0
  store i16 %28, i16* %state19, align 2
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %if.end.20
  %30 = load i32, i32* %range, align 4
  %cmp21 = icmp ult i32 %30, 256
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i32, i32* %range, align 4
  %shl = shl i32 %31, 1
  store i32 %shl, i32* %range, align 4
  %32 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %32, i32 0, i32 4
  %33 = load i32, i32* %Dbits_to_go, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %Dbits_to_go, align 4
  %cmp23 = icmp slt i32 %dec, 0
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %while.body
  %34 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm_len = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %34, i32 0, i32 6
  %35 = load i32*, i32** %Dcodestrm_len, align 8
  %36 = load i32, i32* %35, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %35, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %37, i32 0, i32 5
  %38 = load i8*, i8** %Dcodestrm, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %38, i64 %idxprom26
  %39 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %39 to i32
  %40 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbuffer = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %40, i32 0, i32 3
  store i32 %conv28, i32* %Dbuffer, align 4
  %41 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go29 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %41, i32 0, i32 4
  store i32 7, i32* %Dbits_to_go29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %while.body
  %42 = load i32, i32* %value, align 4
  %shl31 = shl i32 %42, 1
  %43 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbuffer32 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %43, i32 0, i32 3
  %44 = load i32, i32* %Dbuffer32, align 4
  %45 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go33 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %45, i32 0, i32 4
  %46 = load i32, i32* %Dbits_to_go33, align 4
  %shr34 = lshr i32 %44, %46
  %and35 = and i32 %shr34, 1
  %or = or i32 %shl31, %and35
  store i32 %or, i32* %value, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load i32, i32* %range, align 4
  %48 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Drange36 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %48, i32 0, i32 1
  store i32 %47, i32* %Drange36, align 4
  %49 = load i32, i32* %value, align 4
  %50 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dvalue37 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %50, i32 0, i32 2
  store i32 %49, i32* %Dvalue37, align 4
  %51 = load i32, i32* %bit, align 4
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define i32 @biari_decode_symbol_eq_prob(%struct.DecodingEnvironment* %dep) #0 {
entry:
  %dep.addr = alloca %struct.DecodingEnvironment*, align 8
  %bit = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.DecodingEnvironment* %dep, %struct.DecodingEnvironment** %dep.addr, align 8
  store i32 0, i32* %bit, align 4
  %0 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dvalue = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i32 0, i32 2
  %1 = load i32, i32* %Dvalue, align 4
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %value, align 4
  %2 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %2, i32 0, i32 4
  %3 = load i32, i32* %Dbits_to_go, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %Dbits_to_go, align 4
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm_len = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %4, i32 0, i32 6
  %5 = load i32*, i32** %Dcodestrm_len, align 8
  %6 = load i32, i32* %5, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %5, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %7, i32 0, i32 5
  %8 = load i8*, i8** %Dcodestrm, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %10 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbuffer = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %10, i32 0, i32 3
  store i32 %conv, i32* %Dbuffer, align 4
  %11 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go1 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %11, i32 0, i32 4
  store i32 7, i32* %Dbits_to_go1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbuffer2 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %12, i32 0, i32 3
  %13 = load i32, i32* %Dbuffer2, align 4
  %14 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go3 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %14, i32 0, i32 4
  %15 = load i32, i32* %Dbits_to_go3, align 4
  %shr = lshr i32 %13, %15
  %and = and i32 %shr, 1
  %16 = load i32, i32* %value, align 4
  %or = or i32 %16, %and
  store i32 %or, i32* %value, align 4
  %17 = load i32, i32* %value, align 4
  %18 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Drange = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %18, i32 0, i32 1
  %19 = load i32, i32* %Drange, align 4
  %cmp4 = icmp uge i32 %17, %19
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  store i32 1, i32* %bit, align 4
  %20 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Drange7 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %20, i32 0, i32 1
  %21 = load i32, i32* %Drange7, align 4
  %22 = load i32, i32* %value, align 4
  %sub = sub i32 %22, %21
  store i32 %sub, i32* %value, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %23 = load i32, i32* %value, align 4
  %24 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dvalue9 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %24, i32 0, i32 2
  store i32 %23, i32* %Dvalue9, align 4
  %25 = load i32, i32* %bit, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @biari_decode_final(%struct.DecodingEnvironment* %dep) #0 {
entry:
  %retval = alloca i32, align 4
  %dep.addr = alloca %struct.DecodingEnvironment*, align 8
  %value = alloca i32, align 4
  %range = alloca i32, align 4
  store %struct.DecodingEnvironment* %dep, %struct.DecodingEnvironment** %dep.addr, align 8
  %0 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dvalue = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i32 0, i32 2
  %1 = load i32, i32* %Dvalue, align 4
  store i32 %1, i32* %value, align 4
  %2 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Drange = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %2, i32 0, i32 1
  %3 = load i32, i32* %Drange, align 4
  %sub = sub i32 %3, 2
  store i32 %sub, i32* %range, align 4
  %4 = load i32, i32* %value, align 4
  %5 = load i32, i32* %range, align 4
  %cmp = icmp uge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %6 = load i32, i32* %range, align 4
  %cmp1 = icmp ult i32 %6, 256
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %range, align 4
  %shl = shl i32 %7, 1
  store i32 %shl, i32* %range, align 4
  %8 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %8, i32 0, i32 4
  %9 = load i32, i32* %Dbits_to_go, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %Dbits_to_go, align 4
  %cmp2 = icmp slt i32 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.body
  %10 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm_len = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %10, i32 0, i32 6
  %11 = load i32*, i32** %Dcodestrm_len, align 8
  %12 = load i32, i32* %11, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %11, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dcodestrm = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %13, i32 0, i32 5
  %14 = load i8*, i8** %Dcodestrm, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %16 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbuffer = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %16, i32 0, i32 3
  store i32 %conv, i32* %Dbuffer, align 4
  %17 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go4 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %17, i32 0, i32 4
  store i32 7, i32* %Dbits_to_go4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.body
  %18 = load i32, i32* %value, align 4
  %shl5 = shl i32 %18, 1
  %19 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbuffer6 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %19, i32 0, i32 3
  %20 = load i32, i32* %Dbuffer6, align 4
  %21 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dbits_to_go7 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %21, i32 0, i32 4
  %22 = load i32, i32* %Dbits_to_go7, align 4
  %shr = lshr i32 %20, %22
  %and = and i32 %shr, 1
  %or = or i32 %shl5, %and
  store i32 %or, i32* %value, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %value, align 4
  %24 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Dvalue8 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %24, i32 0, i32 2
  store i32 %23, i32* %Dvalue8, align 4
  %25 = load i32, i32* %range, align 4
  %26 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep.addr, align 8
  %Drange9 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %26, i32 0, i32 1
  store i32 %25, i32* %Drange9, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define void @biari_init_context(%struct.img_par* %img, %struct.BiContextType* %ctx, i32* %ini) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %ini.addr = alloca i32*, align 8
  %pstate = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32* %ini, i32** %ini.addr, align 8
  %0 = load i32*, i32** %ini.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 6
  %3 = load i32, i32* %qp, align 4
  %call = call i32 @imax(i32 0, i32 %3)
  %mul = mul nsw i32 %1, %call
  %shr = ashr i32 %mul, 4
  %4 = load i32*, i32** %ini.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %shr, %5
  store i32 %add, i32* %pstate, align 4
  %6 = load i32, i32* %pstate, align 4
  %call2 = call i32 @iClip3(i32 1, i32 126, i32 %6)
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
  ret void
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
