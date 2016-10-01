; ModuleID = './MultiSource.Applications.JM/16.ldecod.erc_api.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objectBuffer_t = type { i8, i32, i32, [3 x i32] }
%struct.ercVariables_s = type { i32, i32, i32*, i32*, i32*, %struct.ercSegment_s*, i32, i32*, i32, i32, i32 }
%struct.ercSegment_s = type { i32, i32, i32 }
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
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }
%struct.frame = type { i16*, i16*, i16* }

@erc_object_list = global %struct.objectBuffer_t* null, align 8
@erc_errorVar = global %struct.ercVariables_s* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"ercInit: erc_object_list\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ercOpen: errorVar\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ercReset: errorVar->segments\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->yCondition\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"ercReset: errorVar->prevFrameYCondition\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->uCondition\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->vCondition\00", align 1
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
@errortext = common global [300 x i8] zeroinitializer, align 16
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
@last_out_fs = common global %struct.frame_store* null, align 8
@pocs_in_dpb = common global [100 x i32] zeroinitializer, align 16
@erc_recfr = common global %struct.frame zeroinitializer, align 8
@erc_mvperMB = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @ercInit(i32 %pic_sizex, i32 %pic_sizey, i32 %flag) #0 {
entry:
  %pic_sizex.addr = alloca i32, align 4
  %pic_sizey.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  store i32 %pic_sizex, i32* %pic_sizex.addr, align 4
  store i32 %pic_sizey, i32* %pic_sizey.addr, align 4
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercClose(%struct.ercVariables_s* %0)
  %1 = load i32, i32* %pic_sizex.addr, align 4
  %2 = load i32, i32* %pic_sizey.addr, align 4
  %mul = mul nsw i32 %1, %2
  %shr = ashr i32 %mul, 6
  %conv = sext i32 %shr to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 24) #3
  %3 = bitcast i8* %call to %struct.objectBuffer_t*
  store %struct.objectBuffer_t* %3, %struct.objectBuffer_t** @erc_object_list, align 8
  %4 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** @erc_object_list, align 8
  %cmp = icmp eq %struct.objectBuffer_t* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call %struct.ercVariables_s* @ercOpen()
  store %struct.ercVariables_s* %call2, %struct.ercVariables_s** @erc_errorVar, align 8
  %5 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  %6 = load i32, i32* %flag.addr, align 4
  call void @ercSetErrorConcealment(%struct.ercVariables_s* %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ercClose(%struct.ercVariables_s* %errorVar) #0 {
entry:
  %errorVar.addr = alloca %struct.ercVariables_s*, align 8
  store %struct.ercVariables_s* %errorVar, %struct.ercVariables_s** %errorVar.addr, align 8
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %cmp = icmp ne %struct.ercVariables_s* %0, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i32 0, i32 2
  %2 = load i32*, i32** %yCondition, align 8
  %cmp1 = icmp ne i32* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i32 0, i32 5
  %4 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments, align 8
  %5 = bitcast %struct.ercSegment_s* %4 to i8*
  call void @free(i8* %5) #3
  %6 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition3 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %6, i32 0, i32 2
  %7 = load i32*, i32** %yCondition3, align 8
  %8 = bitcast i32* %7 to i8*
  call void @free(i8* %8) #3
  %9 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %uCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %9, i32 0, i32 3
  %10 = load i32*, i32** %uCondition, align 8
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11) #3
  %12 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %vCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %12, i32 0, i32 4
  %13 = load i32*, i32** %vCondition, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #3
  %15 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %prevFrameYCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %15, i32 0, i32 7
  %16 = load i32*, i32** %prevFrameYCondition, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17) #3
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %18 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %19 = bitcast %struct.ercVariables_s* %18 to i8*
  call void @free(i8* %19) #3
  store %struct.ercVariables_s* null, %struct.ercVariables_s** %errorVar.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %20 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** @erc_object_list, align 8
  %tobool = icmp ne %struct.objectBuffer_t* %20, null
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  %21 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** @erc_object_list, align 8
  %22 = bitcast %struct.objectBuffer_t* %21 to i8*
  call void @free(i8* %22) #3
  store %struct.objectBuffer_t* null, %struct.objectBuffer_t** @erc_object_list, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.ercVariables_s* @ercOpen() #0 {
entry:
  %errorVar = alloca %struct.ercVariables_s*, align 8
  store %struct.ercVariables_s* null, %struct.ercVariables_s** %errorVar, align 8
  %call = call noalias i8* @malloc(i64 72) #3
  %0 = bitcast i8* %call to %struct.ercVariables_s*
  store %struct.ercVariables_s* %0, %struct.ercVariables_s** %errorVar, align 8
  %1 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar, align 8
  %cmp = icmp eq %struct.ercVariables_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar, align 8
  %nOfMBs = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %2, i32 0, i32 0
  store i32 0, i32* %nOfMBs, align 4
  %3 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar, align 8
  %segments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i32 0, i32 5
  store %struct.ercSegment_s* null, %struct.ercSegment_s** %segments, align 8
  %4 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar, align 8
  %currSegment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %4, i32 0, i32 6
  store i32 0, i32* %currSegment, align 4
  %5 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar, align 8
  %yCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %5, i32 0, i32 2
  store i32* null, i32** %yCondition, align 8
  %6 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar, align 8
  %uCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %6, i32 0, i32 3
  store i32* null, i32** %uCondition, align 8
  %7 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar, align 8
  %vCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %7, i32 0, i32 4
  store i32* null, i32** %vCondition, align 8
  %8 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar, align 8
  %prevFrameYCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %8, i32 0, i32 7
  store i32* null, i32** %prevFrameYCondition, align 8
  %9 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar, align 8
  %concealment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %9, i32 0, i32 10
  store i32 1, i32* %concealment, align 4
  %10 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar, align 8
  ret %struct.ercVariables_s* %10
}

; Function Attrs: nounwind uwtable
define void @ercSetErrorConcealment(%struct.ercVariables_s* %errorVar, i32 %value) #0 {
entry:
  %errorVar.addr = alloca %struct.ercVariables_s*, align 8
  %value.addr = alloca i32, align 4
  store %struct.ercVariables_s* %errorVar, %struct.ercVariables_s** %errorVar.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %cmp = icmp ne %struct.ercVariables_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %value.addr, align 4
  %2 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %concealment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %2, i32 0, i32 10
  store i32 %1, i32* %concealment, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @ercReset(%struct.ercVariables_s* %errorVar, i32 %nOfMBs, i32 %numOfSegments, i32 %picSizeX) #0 {
entry:
  %errorVar.addr = alloca %struct.ercVariables_s*, align 8
  %nOfMBs.addr = alloca i32, align 4
  %numOfSegments.addr = alloca i32, align 4
  %picSizeX.addr = alloca i32, align 4
  %tmp = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.ercVariables_s* %errorVar, %struct.ercVariables_s** %errorVar.addr, align 8
  store i32 %nOfMBs, i32* %nOfMBs.addr, align 4
  store i32 %numOfSegments, i32* %numOfSegments.addr, align 4
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store i32* null, i32** %tmp, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %tobool = icmp ne %struct.ercVariables_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.110

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %concealment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i32 0, i32 10
  %2 = load i32, i32* %concealment, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then, label %if.end.110

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %nOfMBs.addr, align 4
  %4 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfMBs3 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %4, i32 0, i32 0
  %5 = load i32, i32* %nOfMBs3, align 4
  %cmp = icmp ne i32 %3, %5
  br i1 %cmp, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %6 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %6, i32 0, i32 2
  %7 = load i32*, i32** %yCondition, align 8
  %cmp5 = icmp ne i32* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true.4
  %8 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition7 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %8, i32 0, i32 2
  %9 = load i32*, i32** %yCondition7, align 8
  %10 = bitcast i32* %9 to i8*
  call void @free(i8* %10) #3
  %11 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition8 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %11, i32 0, i32 2
  store i32* null, i32** %yCondition8, align 8
  %12 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %prevFrameYCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %12, i32 0, i32 7
  %13 = load i32*, i32** %prevFrameYCondition, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #3
  %15 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %prevFrameYCondition9 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %15, i32 0, i32 7
  store i32* null, i32** %prevFrameYCondition9, align 8
  %16 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %uCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %16, i32 0, i32 3
  %17 = load i32*, i32** %uCondition, align 8
  %18 = bitcast i32* %17 to i8*
  call void @free(i8* %18) #3
  %19 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %uCondition10 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %19, i32 0, i32 3
  store i32* null, i32** %uCondition10, align 8
  %20 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %vCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %20, i32 0, i32 4
  %21 = load i32*, i32** %vCondition, align 8
  %22 = bitcast i32* %21 to i8*
  call void @free(i8* %22) #3
  %23 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %vCondition11 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %23, i32 0, i32 4
  store i32* null, i32** %vCondition11, align 8
  %24 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %24, i32 0, i32 5
  %25 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments, align 8
  %26 = bitcast %struct.ercSegment_s* %25 to i8*
  call void @free(i8* %26) #3
  %27 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments12 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %27, i32 0, i32 5
  store %struct.ercSegment_s* null, %struct.ercSegment_s** %segments12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %land.lhs.true.4, %if.then
  %28 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition13 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %28, i32 0, i32 2
  %29 = load i32*, i32** %yCondition13, align 8
  %cmp14 = icmp eq i32* %29, null
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  %30 = load i32, i32* %numOfSegments.addr, align 4
  %conv = sext i32 %30 to i64
  %mul = mul i64 %conv, 12
  %call = call noalias i8* @malloc(i64 %mul) #3
  %31 = bitcast i8* %call to %struct.ercSegment_s*
  %32 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments16 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %32, i32 0, i32 5
  store %struct.ercSegment_s* %31, %struct.ercSegment_s** %segments16, align 8
  %33 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments17 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %33, i32 0, i32 5
  %34 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments17, align 8
  %cmp18 = icmp eq %struct.ercSegment_s* %34, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.15
  call void @no_mem_exit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.15
  %35 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments22 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %35, i32 0, i32 5
  %36 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments22, align 8
  %37 = bitcast %struct.ercSegment_s* %36 to i8*
  %38 = load i32, i32* %numOfSegments.addr, align 4
  %conv23 = sext i32 %38 to i64
  %mul24 = mul i64 %conv23, 12
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 %mul24, i32 4, i1 false)
  %39 = load i32, i32* %numOfSegments.addr, align 4
  %40 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfSegments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %40, i32 0, i32 1
  store i32 %39, i32* %nOfSegments, align 4
  %41 = load i32, i32* %nOfMBs.addr, align 4
  %mul25 = mul nsw i32 4, %41
  %conv26 = sext i32 %mul25 to i64
  %mul27 = mul i64 %conv26, 4
  %call28 = call noalias i8* @malloc(i64 %mul27) #3
  %42 = bitcast i8* %call28 to i32*
  %43 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition29 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %43, i32 0, i32 2
  store i32* %42, i32** %yCondition29, align 8
  %44 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition30 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %44, i32 0, i32 2
  %45 = load i32*, i32** %yCondition30, align 8
  %cmp31 = icmp eq i32* %45, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.21
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.21
  %46 = load i32, i32* %nOfMBs.addr, align 4
  %mul35 = mul nsw i32 4, %46
  %conv36 = sext i32 %mul35 to i64
  %mul37 = mul i64 %conv36, 4
  %call38 = call noalias i8* @malloc(i64 %mul37) #3
  %47 = bitcast i8* %call38 to i32*
  %48 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %prevFrameYCondition39 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %48, i32 0, i32 7
  store i32* %47, i32** %prevFrameYCondition39, align 8
  %49 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %prevFrameYCondition40 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %49, i32 0, i32 7
  %50 = load i32*, i32** %prevFrameYCondition40, align 8
  %cmp41 = icmp eq i32* %50, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.34
  call void @no_mem_exit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.34
  %51 = load i32, i32* %nOfMBs.addr, align 4
  %conv45 = sext i32 %51 to i64
  %mul46 = mul i64 %conv45, 4
  %call47 = call noalias i8* @malloc(i64 %mul46) #3
  %52 = bitcast i8* %call47 to i32*
  %53 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %uCondition48 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %53, i32 0, i32 3
  store i32* %52, i32** %uCondition48, align 8
  %54 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %uCondition49 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %54, i32 0, i32 3
  %55 = load i32*, i32** %uCondition49, align 8
  %cmp50 = icmp eq i32* %55, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.44
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.44
  %56 = load i32, i32* %nOfMBs.addr, align 4
  %conv54 = sext i32 %56 to i64
  %mul55 = mul i64 %conv54, 4
  %call56 = call noalias i8* @malloc(i64 %mul55) #3
  %57 = bitcast i8* %call56 to i32*
  %58 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %vCondition57 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %58, i32 0, i32 4
  store i32* %57, i32** %vCondition57, align 8
  %59 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %vCondition58 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %59, i32 0, i32 4
  %60 = load i32*, i32** %vCondition58, align 8
  %cmp59 = icmp eq i32* %60, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.53
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.53
  %61 = load i32, i32* %nOfMBs.addr, align 4
  %62 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfMBs63 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %62, i32 0, i32 0
  store i32 %61, i32* %nOfMBs63, align 4
  br label %if.end.68

if.else:                                          ; preds = %if.end
  %63 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %prevFrameYCondition64 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %63, i32 0, i32 7
  %64 = load i32*, i32** %prevFrameYCondition64, align 8
  store i32* %64, i32** %tmp, align 8
  %65 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition65 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %65, i32 0, i32 2
  %66 = load i32*, i32** %yCondition65, align 8
  %67 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %prevFrameYCondition66 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %67, i32 0, i32 7
  store i32* %66, i32** %prevFrameYCondition66, align 8
  %68 = load i32*, i32** %tmp, align 8
  %69 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition67 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %69, i32 0, i32 2
  store i32* %68, i32** %yCondition67, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.end.62
  %70 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition69 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %70, i32 0, i32 2
  %71 = load i32*, i32** %yCondition69, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = load i32, i32* %nOfMBs.addr, align 4
  %mul70 = mul nsw i32 4, %73
  %conv71 = sext i32 %mul70 to i64
  %mul72 = mul i64 %conv71, 4
  call void @llvm.memset.p0i8.i64(i8* %72, i8 0, i64 %mul72, i32 4, i1 false)
  %74 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %uCondition73 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %74, i32 0, i32 3
  %75 = load i32*, i32** %uCondition73, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load i32, i32* %nOfMBs.addr, align 4
  %conv74 = sext i32 %77 to i64
  %mul75 = mul i64 %conv74, 4
  call void @llvm.memset.p0i8.i64(i8* %76, i8 0, i64 %mul75, i32 4, i1 false)
  %78 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %vCondition76 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %78, i32 0, i32 4
  %79 = load i32*, i32** %vCondition76, align 8
  %80 = bitcast i32* %79 to i8*
  %81 = load i32, i32* %nOfMBs.addr, align 4
  %conv77 = sext i32 %81 to i64
  %mul78 = mul i64 %conv77, 4
  call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 %mul78, i32 4, i1 false)
  %82 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfSegments79 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %82, i32 0, i32 1
  %83 = load i32, i32* %nOfSegments79, align 4
  %84 = load i32, i32* %numOfSegments.addr, align 4
  %cmp80 = icmp ne i32 %83, %84
  br i1 %cmp80, label %if.then.82, label %if.end.95

if.then.82:                                       ; preds = %if.end.68
  %85 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments83 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %85, i32 0, i32 5
  %86 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments83, align 8
  %87 = bitcast %struct.ercSegment_s* %86 to i8*
  call void @free(i8* %87) #3
  %88 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments84 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %88, i32 0, i32 5
  store %struct.ercSegment_s* null, %struct.ercSegment_s** %segments84, align 8
  %89 = load i32, i32* %numOfSegments.addr, align 4
  %conv85 = sext i32 %89 to i64
  %mul86 = mul i64 %conv85, 12
  %call87 = call noalias i8* @malloc(i64 %mul86) #3
  %90 = bitcast i8* %call87 to %struct.ercSegment_s*
  %91 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments88 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %91, i32 0, i32 5
  store %struct.ercSegment_s* %90, %struct.ercSegment_s** %segments88, align 8
  %92 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments89 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %92, i32 0, i32 5
  %93 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments89, align 8
  %cmp90 = icmp eq %struct.ercSegment_s* %93, null
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.82
  call void @no_mem_exit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.then.82
  %94 = load i32, i32* %numOfSegments.addr, align 4
  %95 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfSegments94 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %95, i32 0, i32 1
  store i32 %94, i32* %nOfSegments94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.93, %if.end.68
  %96 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments96 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %96, i32 0, i32 5
  %97 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments96, align 8
  %98 = bitcast %struct.ercSegment_s* %97 to i8*
  %99 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfSegments97 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %99, i32 0, i32 1
  %100 = load i32, i32* %nOfSegments97, align 4
  %conv98 = sext i32 %100 to i64
  %mul99 = mul i64 %conv98, 12
  call void @llvm.memset.p0i8.i64(i8* %98, i8 0, i64 %mul99, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.95
  %101 = load i32, i32* %i, align 4
  %102 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfSegments100 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %102, i32 0, i32 1
  %103 = load i32, i32* %nOfSegments100, align 4
  %cmp101 = icmp slt i32 %101, %103
  br i1 %cmp101, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %104 = load i32, i32* %i, align 4
  %idxprom = sext i32 %104 to i64
  %105 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments103 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %105, i32 0, i32 5
  %106 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments103, align 8
  %arrayidx = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %106, i64 %idxprom
  %fCorrupted = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx, i32 0, i32 2
  store i32 1, i32* %fCorrupted, align 4
  %107 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %107 to i64
  %108 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments105 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %108, i32 0, i32 5
  %109 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments105, align 8
  %arrayidx106 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %109, i64 %idxprom104
  %startMBPos = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx106, i32 0, i32 0
  store i32 0, i32* %startMBPos, align 4
  %110 = load i32, i32* %nOfMBs.addr, align 4
  %sub = sub nsw i32 %110, 1
  %111 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %111 to i64
  %112 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments108 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %112, i32 0, i32 5
  %113 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments108, align 8
  %arrayidx109 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %113, i64 %idxprom107
  %endMBPos = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx109, i32 0, i32 1
  store i32 %sub, i32* %endMBPos, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %114 = load i32, i32* %i, align 4
  %inc = add nsw i32 %114, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %115 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %currSegment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %115, i32 0, i32 6
  store i32 0, i32* %currSegment, align 4
  %116 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfCorruptedSegments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %116, i32 0, i32 9
  store i32 0, i32* %nOfCorruptedSegments, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %for.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @ercStartSegment(i32 %currMBNum, i32 %segment, i32 %bitPos, %struct.ercVariables_s* %errorVar) #0 {
entry:
  %currMBNum.addr = alloca i32, align 4
  %segment.addr = alloca i32, align 4
  %bitPos.addr = alloca i32, align 4
  %errorVar.addr = alloca %struct.ercVariables_s*, align 8
  store i32 %currMBNum, i32* %currMBNum.addr, align 4
  store i32 %segment, i32* %segment.addr, align 4
  store i32 %bitPos, i32* %bitPos.addr, align 4
  store %struct.ercVariables_s* %errorVar, %struct.ercVariables_s** %errorVar.addr, align 8
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %tobool = icmp ne %struct.ercVariables_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %concealment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i32 0, i32 10
  %2 = load i32, i32* %concealment, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %currSegmentCorrupted = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i32 0, i32 8
  store i32 0, i32* %currSegmentCorrupted, align 4
  %4 = load i32, i32* %segment.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %5, i32 0, i32 5
  %6 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments, align 8
  %arrayidx = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %6, i64 %idxprom
  %fCorrupted = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx, i32 0, i32 2
  store i32 0, i32* %fCorrupted, align 4
  %7 = load i32, i32* %currMBNum.addr, align 4
  %8 = load i32, i32* %segment.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments3 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %9, i32 0, i32 5
  %10 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments3, align 8
  %arrayidx4 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %10, i64 %idxprom2
  %startMBPos = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx4, i32 0, i32 0
  store i32 %7, i32* %startMBPos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @ercStopSegment(i32 %currMBNum, i32 %segment, i32 %bitPos, %struct.ercVariables_s* %errorVar) #0 {
entry:
  %currMBNum.addr = alloca i32, align 4
  %segment.addr = alloca i32, align 4
  %bitPos.addr = alloca i32, align 4
  %errorVar.addr = alloca %struct.ercVariables_s*, align 8
  store i32 %currMBNum, i32* %currMBNum.addr, align 4
  store i32 %segment, i32* %segment.addr, align 4
  store i32 %bitPos, i32* %bitPos.addr, align 4
  store %struct.ercVariables_s* %errorVar, %struct.ercVariables_s** %errorVar.addr, align 8
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %tobool = icmp ne %struct.ercVariables_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %concealment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i32 0, i32 10
  %2 = load i32, i32* %concealment, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %currMBNum.addr, align 4
  %4 = load i32, i32* %segment.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %5, i32 0, i32 5
  %6 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments, align 8
  %arrayidx = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %6, i64 %idxprom
  %endMBPos = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx, i32 0, i32 1
  store i32 %3, i32* %endMBPos, align 4
  %7 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %currSegment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %7, i32 0, i32 6
  %8 = load i32, i32* %currSegment, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %currSegment, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @ercMarkCurrSegmentLost(i32 %picSizeX, %struct.ercVariables_s* %errorVar) #0 {
entry:
  %picSizeX.addr = alloca i32, align 4
  %errorVar.addr = alloca %struct.ercVariables_s*, align 8
  %j = alloca i32, align 4
  %current_segment = alloca i32, align 4
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store %struct.ercVariables_s* %errorVar, %struct.ercVariables_s** %errorVar.addr, align 8
  store i32 0, i32* %j, align 4
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %currSegment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i32 0, i32 6
  %1 = load i32, i32* %currSegment, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %current_segment, align 4
  %2 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %tobool = icmp ne %struct.ercVariables_s* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %concealment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i32 0, i32 10
  %4 = load i32, i32* %concealment, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then, label %if.end.65

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %currSegmentCorrupted = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %5, i32 0, i32 8
  %6 = load i32, i32* %currSegmentCorrupted, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfCorruptedSegments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %7, i32 0, i32 9
  %8 = load i32, i32* %nOfCorruptedSegments, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %nOfCorruptedSegments, align 4
  %9 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %currSegmentCorrupted3 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %9, i32 0, i32 8
  store i32 1, i32* %currSegmentCorrupted3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %10 = load i32, i32* %current_segment, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %11, i32 0, i32 5
  %12 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments, align 8
  %arrayidx = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %12, i64 %idxprom
  %startMBPos = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx, i32 0, i32 0
  %13 = load i32, i32* %startMBPos, align 4
  store i32 %13, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %current_segment, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments5 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %16, i32 0, i32 5
  %17 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments5, align 8
  %arrayidx6 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %17, i64 %idxprom4
  %endMBPos = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx6, i32 0, i32 1
  %18 = load i32, i32* %endMBPos, align 4
  %cmp7 = icmp sle i32 %14, %18
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %picSizeX.addr, align 4
  %shr = ashr i32 %20, 4
  %div = sdiv i32 %19, %shr
  %shl = shl i32 %div, 1
  %add = add nsw i32 %shl, 0
  %21 = load i32, i32* %picSizeX.addr, align 4
  %shr8 = ashr i32 %21, 3
  %mul = mul nsw i32 %add, %shr8
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %picSizeX.addr, align 4
  %shr9 = ashr i32 %23, 4
  %rem = srem i32 %22, %shr9
  %shl10 = shl i32 %rem, 1
  %add11 = add nsw i32 %mul, %shl10
  %add12 = add nsw i32 %add11, 0
  %idxprom13 = sext i32 %add12 to i64
  %24 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %24, i32 0, i32 2
  %25 = load i32*, i32** %yCondition, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %25, i64 %idxprom13
  store i32 1, i32* %arrayidx14, align 4
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %picSizeX.addr, align 4
  %shr15 = ashr i32 %27, 4
  %div16 = sdiv i32 %26, %shr15
  %shl17 = shl i32 %div16, 1
  %add18 = add nsw i32 %shl17, 0
  %28 = load i32, i32* %picSizeX.addr, align 4
  %shr19 = ashr i32 %28, 3
  %mul20 = mul nsw i32 %add18, %shr19
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %picSizeX.addr, align 4
  %shr21 = ashr i32 %30, 4
  %rem22 = srem i32 %29, %shr21
  %shl23 = shl i32 %rem22, 1
  %add24 = add nsw i32 %mul20, %shl23
  %add25 = add nsw i32 %add24, 1
  %idxprom26 = sext i32 %add25 to i64
  %31 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition27 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %31, i32 0, i32 2
  %32 = load i32*, i32** %yCondition27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %32, i64 %idxprom26
  store i32 1, i32* %arrayidx28, align 4
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %picSizeX.addr, align 4
  %shr29 = ashr i32 %34, 4
  %div30 = sdiv i32 %33, %shr29
  %shl31 = shl i32 %div30, 1
  %add32 = add nsw i32 %shl31, 1
  %35 = load i32, i32* %picSizeX.addr, align 4
  %shr33 = ashr i32 %35, 3
  %mul34 = mul nsw i32 %add32, %shr33
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %picSizeX.addr, align 4
  %shr35 = ashr i32 %37, 4
  %rem36 = srem i32 %36, %shr35
  %shl37 = shl i32 %rem36, 1
  %add38 = add nsw i32 %mul34, %shl37
  %add39 = add nsw i32 %add38, 0
  %idxprom40 = sext i32 %add39 to i64
  %38 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition41 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %38, i32 0, i32 2
  %39 = load i32*, i32** %yCondition41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %39, i64 %idxprom40
  store i32 1, i32* %arrayidx42, align 4
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %picSizeX.addr, align 4
  %shr43 = ashr i32 %41, 4
  %div44 = sdiv i32 %40, %shr43
  %shl45 = shl i32 %div44, 1
  %add46 = add nsw i32 %shl45, 1
  %42 = load i32, i32* %picSizeX.addr, align 4
  %shr47 = ashr i32 %42, 3
  %mul48 = mul nsw i32 %add46, %shr47
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %picSizeX.addr, align 4
  %shr49 = ashr i32 %44, 4
  %rem50 = srem i32 %43, %shr49
  %shl51 = shl i32 %rem50, 1
  %add52 = add nsw i32 %mul48, %shl51
  %add53 = add nsw i32 %add52, 1
  %idxprom54 = sext i32 %add53 to i64
  %45 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition55 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %45, i32 0, i32 2
  %46 = load i32*, i32** %yCondition55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %46, i64 %idxprom54
  store i32 1, i32* %arrayidx56, align 4
  %47 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %47 to i64
  %48 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %uCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %48, i32 0, i32 3
  %49 = load i32*, i32** %uCondition, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %49, i64 %idxprom57
  store i32 1, i32* %arrayidx58, align 4
  %50 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %50 to i64
  %51 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %vCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %51, i32 0, i32 4
  %52 = load i32*, i32** %vCondition, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %52, i64 %idxprom59
  store i32 1, i32* %arrayidx60, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %53, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load i32, i32* %current_segment, align 4
  %idxprom62 = sext i32 %54 to i64
  %55 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments63 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %55, i32 0, i32 5
  %56 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments63, align 8
  %arrayidx64 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %56, i64 %idxprom62
  %fCorrupted = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx64, i32 0, i32 2
  store i32 1, i32* %fCorrupted, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %for.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @ercMarkCurrSegmentOK(i32 %picSizeX, %struct.ercVariables_s* %errorVar) #0 {
entry:
  %picSizeX.addr = alloca i32, align 4
  %errorVar.addr = alloca %struct.ercVariables_s*, align 8
  %j = alloca i32, align 4
  %current_segment = alloca i32, align 4
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store %struct.ercVariables_s* %errorVar, %struct.ercVariables_s** %errorVar.addr, align 8
  store i32 0, i32* %j, align 4
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %currSegment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i32 0, i32 6
  %1 = load i32, i32* %currSegment, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %current_segment, align 4
  %2 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %tobool = icmp ne %struct.ercVariables_s* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %concealment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i32 0, i32 10
  %4 = load i32, i32* %concealment, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %current_segment, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %6, i32 0, i32 5
  %7 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments, align 8
  %arrayidx = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %7, i64 %idxprom
  %startMBPos = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %startMBPos, align 4
  store i32 %8, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %current_segment, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments3 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %11, i32 0, i32 5
  %12 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments3, align 8
  %arrayidx4 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %12, i64 %idxprom2
  %endMBPos = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx4, i32 0, i32 1
  %13 = load i32, i32* %endMBPos, align 4
  %cmp = icmp sle i32 %9, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %picSizeX.addr, align 4
  %shr = ashr i32 %15, 4
  %div = sdiv i32 %14, %shr
  %shl = shl i32 %div, 1
  %add = add nsw i32 %shl, 0
  %16 = load i32, i32* %picSizeX.addr, align 4
  %shr5 = ashr i32 %16, 3
  %mul = mul nsw i32 %add, %shr5
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %picSizeX.addr, align 4
  %shr6 = ashr i32 %18, 4
  %rem = srem i32 %17, %shr6
  %shl7 = shl i32 %rem, 1
  %add8 = add nsw i32 %mul, %shl7
  %add9 = add nsw i32 %add8, 0
  %idxprom10 = sext i32 %add9 to i64
  %19 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %19, i32 0, i32 2
  %20 = load i32*, i32** %yCondition, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  store i32 3, i32* %arrayidx11, align 4
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %picSizeX.addr, align 4
  %shr12 = ashr i32 %22, 4
  %div13 = sdiv i32 %21, %shr12
  %shl14 = shl i32 %div13, 1
  %add15 = add nsw i32 %shl14, 0
  %23 = load i32, i32* %picSizeX.addr, align 4
  %shr16 = ashr i32 %23, 3
  %mul17 = mul nsw i32 %add15, %shr16
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %picSizeX.addr, align 4
  %shr18 = ashr i32 %25, 4
  %rem19 = srem i32 %24, %shr18
  %shl20 = shl i32 %rem19, 1
  %add21 = add nsw i32 %mul17, %shl20
  %add22 = add nsw i32 %add21, 1
  %idxprom23 = sext i32 %add22 to i64
  %26 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition24 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %26, i32 0, i32 2
  %27 = load i32*, i32** %yCondition24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %27, i64 %idxprom23
  store i32 3, i32* %arrayidx25, align 4
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %picSizeX.addr, align 4
  %shr26 = ashr i32 %29, 4
  %div27 = sdiv i32 %28, %shr26
  %shl28 = shl i32 %div27, 1
  %add29 = add nsw i32 %shl28, 1
  %30 = load i32, i32* %picSizeX.addr, align 4
  %shr30 = ashr i32 %30, 3
  %mul31 = mul nsw i32 %add29, %shr30
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %picSizeX.addr, align 4
  %shr32 = ashr i32 %32, 4
  %rem33 = srem i32 %31, %shr32
  %shl34 = shl i32 %rem33, 1
  %add35 = add nsw i32 %mul31, %shl34
  %add36 = add nsw i32 %add35, 0
  %idxprom37 = sext i32 %add36 to i64
  %33 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition38 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %33, i32 0, i32 2
  %34 = load i32*, i32** %yCondition38, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %34, i64 %idxprom37
  store i32 3, i32* %arrayidx39, align 4
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %picSizeX.addr, align 4
  %shr40 = ashr i32 %36, 4
  %div41 = sdiv i32 %35, %shr40
  %shl42 = shl i32 %div41, 1
  %add43 = add nsw i32 %shl42, 1
  %37 = load i32, i32* %picSizeX.addr, align 4
  %shr44 = ashr i32 %37, 3
  %mul45 = mul nsw i32 %add43, %shr44
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %picSizeX.addr, align 4
  %shr46 = ashr i32 %39, 4
  %rem47 = srem i32 %38, %shr46
  %shl48 = shl i32 %rem47, 1
  %add49 = add nsw i32 %mul45, %shl48
  %add50 = add nsw i32 %add49, 1
  %idxprom51 = sext i32 %add50 to i64
  %40 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition52 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %40, i32 0, i32 2
  %41 = load i32*, i32** %yCondition52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %41, i64 %idxprom51
  store i32 3, i32* %arrayidx53, align 4
  %42 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %42 to i64
  %43 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %uCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %43, i32 0, i32 3
  %44 = load i32*, i32** %uCondition, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %44, i64 %idxprom54
  store i32 3, i32* %arrayidx55, align 4
  %45 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %45 to i64
  %46 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %vCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %46, i32 0, i32 4
  %47 = load i32*, i32** %vCondition, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %47, i64 %idxprom56
  store i32 3, i32* %arrayidx57, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %j, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i32, i32* %current_segment, align 4
  %idxprom58 = sext i32 %49 to i64
  %50 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %segments59 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %50, i32 0, i32 5
  %51 = load %struct.ercSegment_s*, %struct.ercSegment_s** %segments59, align 8
  %arrayidx60 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %51, i64 %idxprom58
  %fCorrupted = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %arrayidx60, i32 0, i32 2
  store i32 0, i32* %fCorrupted, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @ercMarkCurrMBConcealed(i32 %currMBNum, i32 %comp, i32 %picSizeX, %struct.ercVariables_s* %errorVar) #0 {
entry:
  %currMBNum.addr = alloca i32, align 4
  %comp.addr = alloca i32, align 4
  %picSizeX.addr = alloca i32, align 4
  %errorVar.addr = alloca %struct.ercVariables_s*, align 8
  %setAll = alloca i32, align 4
  store i32 %currMBNum, i32* %currMBNum.addr, align 4
  store i32 %comp, i32* %comp.addr, align 4
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store %struct.ercVariables_s* %errorVar, %struct.ercVariables_s** %errorVar.addr, align 8
  store i32 0, i32* %setAll, align 4
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %tobool = icmp ne %struct.ercVariables_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %concealment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i32 0, i32 10
  %2 = load i32, i32* %concealment, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end.62

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %comp.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %setAll, align 4
  store i32 0, i32* %comp.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load i32, i32* %comp.addr, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.53
    i32 2, label %sw.bb.59
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load i32, i32* %currMBNum.addr, align 4
  %6 = load i32, i32* %picSizeX.addr, align 4
  %shr = ashr i32 %6, 4
  %div = sdiv i32 %5, %shr
  %shl = shl i32 %div, 1
  %add = add nsw i32 %shl, 0
  %7 = load i32, i32* %picSizeX.addr, align 4
  %shr3 = ashr i32 %7, 3
  %mul = mul nsw i32 %add, %shr3
  %8 = load i32, i32* %currMBNum.addr, align 4
  %9 = load i32, i32* %picSizeX.addr, align 4
  %shr4 = ashr i32 %9, 4
  %rem = srem i32 %8, %shr4
  %shl5 = shl i32 %rem, 1
  %add6 = add nsw i32 %mul, %shl5
  %add7 = add nsw i32 %add6, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %10, i32 0, i32 2
  %11 = load i32*, i32** %yCondition, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 2, i32* %arrayidx, align 4
  %12 = load i32, i32* %currMBNum.addr, align 4
  %13 = load i32, i32* %picSizeX.addr, align 4
  %shr8 = ashr i32 %13, 4
  %div9 = sdiv i32 %12, %shr8
  %shl10 = shl i32 %div9, 1
  %add11 = add nsw i32 %shl10, 0
  %14 = load i32, i32* %picSizeX.addr, align 4
  %shr12 = ashr i32 %14, 3
  %mul13 = mul nsw i32 %add11, %shr12
  %15 = load i32, i32* %currMBNum.addr, align 4
  %16 = load i32, i32* %picSizeX.addr, align 4
  %shr14 = ashr i32 %16, 4
  %rem15 = srem i32 %15, %shr14
  %shl16 = shl i32 %rem15, 1
  %add17 = add nsw i32 %mul13, %shl16
  %add18 = add nsw i32 %add17, 1
  %idxprom19 = sext i32 %add18 to i64
  %17 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition20 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %17, i32 0, i32 2
  %18 = load i32*, i32** %yCondition20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %18, i64 %idxprom19
  store i32 2, i32* %arrayidx21, align 4
  %19 = load i32, i32* %currMBNum.addr, align 4
  %20 = load i32, i32* %picSizeX.addr, align 4
  %shr22 = ashr i32 %20, 4
  %div23 = sdiv i32 %19, %shr22
  %shl24 = shl i32 %div23, 1
  %add25 = add nsw i32 %shl24, 1
  %21 = load i32, i32* %picSizeX.addr, align 4
  %shr26 = ashr i32 %21, 3
  %mul27 = mul nsw i32 %add25, %shr26
  %22 = load i32, i32* %currMBNum.addr, align 4
  %23 = load i32, i32* %picSizeX.addr, align 4
  %shr28 = ashr i32 %23, 4
  %rem29 = srem i32 %22, %shr28
  %shl30 = shl i32 %rem29, 1
  %add31 = add nsw i32 %mul27, %shl30
  %add32 = add nsw i32 %add31, 0
  %idxprom33 = sext i32 %add32 to i64
  %24 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition34 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %24, i32 0, i32 2
  %25 = load i32*, i32** %yCondition34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %25, i64 %idxprom33
  store i32 2, i32* %arrayidx35, align 4
  %26 = load i32, i32* %currMBNum.addr, align 4
  %27 = load i32, i32* %picSizeX.addr, align 4
  %shr36 = ashr i32 %27, 4
  %div37 = sdiv i32 %26, %shr36
  %shl38 = shl i32 %div37, 1
  %add39 = add nsw i32 %shl38, 1
  %28 = load i32, i32* %picSizeX.addr, align 4
  %shr40 = ashr i32 %28, 3
  %mul41 = mul nsw i32 %add39, %shr40
  %29 = load i32, i32* %currMBNum.addr, align 4
  %30 = load i32, i32* %picSizeX.addr, align 4
  %shr42 = ashr i32 %30, 4
  %rem43 = srem i32 %29, %shr42
  %shl44 = shl i32 %rem43, 1
  %add45 = add nsw i32 %mul41, %shl44
  %add46 = add nsw i32 %add45, 1
  %idxprom47 = sext i32 %add46 to i64
  %31 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition48 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %31, i32 0, i32 2
  %32 = load i32*, i32** %yCondition48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %32, i64 %idxprom47
  store i32 2, i32* %arrayidx49, align 4
  %33 = load i32, i32* %setAll, align 4
  %tobool50 = icmp ne i32 %33, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.52:                                        ; preds = %sw.bb
  br label %sw.bb.53

sw.bb.53:                                         ; preds = %if.end, %if.end.52
  %34 = load i32, i32* %currMBNum.addr, align 4
  %idxprom54 = sext i32 %34 to i64
  %35 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %uCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %35, i32 0, i32 3
  %36 = load i32*, i32** %uCondition, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %36, i64 %idxprom54
  store i32 2, i32* %arrayidx55, align 4
  %37 = load i32, i32* %setAll, align 4
  %tobool56 = icmp ne i32 %37, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %sw.bb.53
  br label %sw.epilog

if.end.58:                                        ; preds = %sw.bb.53
  br label %sw.bb.59

sw.bb.59:                                         ; preds = %if.end, %if.end.58
  %38 = load i32, i32* %currMBNum.addr, align 4
  %idxprom60 = sext i32 %38 to i64
  %39 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %vCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %39, i32 0, i32 4
  %40 = load i32*, i32** %vCondition, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %40, i64 %idxprom60
  store i32 2, i32* %arrayidx61, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.59, %if.end, %if.then.57, %if.then.51
  br label %if.end.62

if.end.62:                                        ; preds = %sw.epilog, %land.lhs.true, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
