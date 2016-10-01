; ModuleID = './MultiSource.Applications.JM/22.ldecod.erc_do_p.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.concealment_node = type { %struct.storable_picture*, i32, %struct.concealment_node* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
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
%struct.timeb = type { i64, i16, i16, i16 }
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.frame = type { i16*, i16*, i16* }
%struct.objectBuffer_t = type { i8, i32, i32, [3 x i32] }
%struct.ercVariables_s = type { i32, i32, i32*, i32*, i32*, %struct.ercSegment_s*, i32, i32*, i32, i32, i32 }
%struct.ercSegment_s = type { i32, i32, i32 }

@concealment_head = global %struct.concealment_node* null, align 8
@concealment_end = global %struct.concealment_node* null, align 8
@img = external global %struct.img_par*, align 8
@.str = private unnamed_addr constant [29 x i8] c"ercConcealInterFrame: predMB\00", align 1
@erc_mvperMB = external global i32, align 4
@ref_flag = common global [17 x i32] zeroinitializer, align 16
@dpb = external global %struct.decoded_picture_buffer, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@listX = external global [6 x %struct.storable_picture**], align 16
@listXsize = external global [6 x i32], align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"Missing POC=%d\0A\00", align 1
@pocs_in_dpb = common global [100 x i32] zeroinitializer, align 16
@last_out_fs = common global %struct.frame_store* null, align 8
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
@Is_primary_correct = common global i32 0, align 4
@Is_redundant_correct = common global i32 0, align 4
@redundant_slice_ref_idx = common global i32 0, align 4
@nal_startcode_follows = common global i32 (%struct.img_par*, i32)* null, align 8
@erc_img = common global %struct.img_par* null, align 8
@dec_picture = external global %struct.storable_picture*, align 8
@uv_div = internal global [2 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 1, i32 0], [4 x i32] [i32 0, i32 1, i32 0, i32 0]], align 16
@subblk_offset_y = external constant [3 x [8 x [4 x i8]]], align 16
@subblk_offset_x = external constant [3 x [8 x [4 x i8]]], align 16

; Function Attrs: nounwind uwtable
define i32 @ercConcealInterFrame(%struct.frame* %recfr, %struct.objectBuffer_t* %object_list, i32 %picSizeX, i32 %picSizeY, %struct.ercVariables_s* %errorVar, i32 %chroma_format_idc) #0 {
entry:
  %retval = alloca i32, align 4
  %recfr.addr = alloca %struct.frame*, align 8
  %object_list.addr = alloca %struct.objectBuffer_t*, align 8
  %picSizeX.addr = alloca i32, align 4
  %picSizeY.addr = alloca i32, align 4
  %errorVar.addr = alloca %struct.ercVariables_s*, align 8
  %chroma_format_idc.addr = alloca i32, align 4
  %lastColumn = alloca i32, align 4
  %lastRow = alloca i32, align 4
  %predBlocks = alloca [8 x i32], align 16
  %lastCorruptedRow = alloca i32, align 4
  %firstCorruptedRow = alloca i32, align 4
  %currRow = alloca i32, align 4
  %row = alloca i32, align 4
  %column = alloca i32, align 4
  %columnInd = alloca i32, align 4
  %areaHeight = alloca i32, align 4
  %i = alloca i32, align 4
  %predMB = alloca i16*, align 8
  store %struct.frame* %recfr, %struct.frame** %recfr.addr, align 8
  store %struct.objectBuffer_t* %object_list, %struct.objectBuffer_t** %object_list.addr, align 8
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store i32 %picSizeY, i32* %picSizeY.addr, align 4
  store %struct.ercVariables_s* %errorVar, %struct.ercVariables_s** %errorVar.addr, align 8
  store i32 %chroma_format_idc, i32* %chroma_format_idc.addr, align 4
  store i32 0, i32* %lastColumn, align 4
  store i32 0, i32* %lastRow, align 4
  store i32 -1, i32* %lastCorruptedRow, align 4
  store i32 -1, i32* %firstCorruptedRow, align 4
  store i32 0, i32* %currRow, align 4
  store i32 0, i32* %areaHeight, align 4
  store i32 0, i32* %i, align 4
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %tobool = icmp ne %struct.ercVariables_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.166

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %concealment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i32 0, i32 10
  %2 = load i32, i32* %concealment, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.else.166

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfCorruptedSegments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i32 0, i32 9
  %4 = load i32, i32* %nOfCorruptedSegments, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end.165

if.then.3:                                        ; preds = %if.then
  %5 = load i32, i32* %chroma_format_idc.addr, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.3
  %6 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 115
  %7 = load i32, i32* %mb_cr_size_x, align 4
  %8 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 116
  %9 = load i32, i32* %mb_cr_size_y, align 4
  %mul = mul nsw i32 %7, %9
  %mul5 = mul nsw i32 %mul, 2
  %add = add nsw i32 256, %mul5
  %conv = sext i32 %add to i64
  %mul6 = mul i64 %conv, 2
  %call = call noalias i8* @malloc(i64 %mul6) #4
  %10 = bitcast i8* %call to i16*
  store i16* %10, i16** %predMB, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %call7 = call noalias i8* @malloc(i64 512) #4
  %11 = bitcast i8* %call7 to i16*
  store i16* %11, i16** %predMB, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %12 = load i16*, i16** %predMB, align 8
  %cmp8 = icmp eq i16* %12, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %13 = load i32, i32* %picSizeY.addr, align 4
  %shr = ashr i32 %13, 4
  store i32 %shr, i32* %lastRow, align 4
  %14 = load i32, i32* %picSizeX.addr, align 4
  %shr12 = ashr i32 %14, 4
  store i32 %shr12, i32* %lastColumn, align 4
  store i32 0, i32* %columnInd, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.162, %if.end.11
  %15 = load i32, i32* %columnInd, align 4
  %16 = load i32, i32* %lastColumn, align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %for.body, label %for.end.164

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %columnInd, align 4
  %rem = srem i32 %17, 2
  %tobool15 = icmp ne i32 %rem, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %18 = load i32, i32* %lastColumn, align 4
  %19 = load i32, i32* %columnInd, align 4
  %div = sdiv i32 %19, 2
  %sub = sub nsw i32 %18, %div
  %sub16 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load i32, i32* %columnInd, align 4
  %div17 = sdiv i32 %20, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub16, %cond.true ], [ %div17, %cond.false ]
  store i32 %cond, i32* %column, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.159, %cond.end
  %21 = load i32, i32* %row, align 4
  %22 = load i32, i32* %lastRow, align 4
  %cmp19 = icmp slt i32 %21, %22
  br i1 %cmp19, label %for.body.21, label %for.end.161

for.body.21:                                      ; preds = %for.cond.18
  %23 = load i32, i32* %row, align 4
  %shl = shl i32 %23, 1
  %add22 = add nsw i32 %shl, 0
  %24 = load i32, i32* %picSizeX.addr, align 4
  %shr23 = ashr i32 %24, 3
  %mul24 = mul nsw i32 %add22, %shr23
  %25 = load i32, i32* %column, align 4
  %shl25 = shl i32 %25, 1
  %add26 = add nsw i32 %mul24, %shl25
  %add27 = add nsw i32 %add26, 0
  %idxprom = sext i32 %add27 to i64
  %26 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %26, i32 0, i32 2
  %27 = load i32*, i32** %yCondition, align 8
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4
  %cmp28 = icmp sle i32 %28, 1
  br i1 %cmp28, label %if.then.30, label %if.end.158

if.then.30:                                       ; preds = %for.body.21
  %29 = load i32, i32* %row, align 4
  store i32 %29, i32* %firstCorruptedRow, align 4
  %30 = load i32, i32* %row, align 4
  %add31 = add nsw i32 %30, 1
  store i32 %add31, i32* %lastCorruptedRow, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.then.30
  %31 = load i32, i32* %lastCorruptedRow, align 4
  %32 = load i32, i32* %lastRow, align 4
  %cmp33 = icmp slt i32 %31, %32
  br i1 %cmp33, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.32
  %33 = load i32, i32* %lastCorruptedRow, align 4
  %shl36 = shl i32 %33, 1
  %add37 = add nsw i32 %shl36, 0
  %34 = load i32, i32* %picSizeX.addr, align 4
  %shr38 = ashr i32 %34, 3
  %mul39 = mul nsw i32 %add37, %shr38
  %35 = load i32, i32* %column, align 4
  %shl40 = shl i32 %35, 1
  %add41 = add nsw i32 %mul39, %shl40
  %add42 = add nsw i32 %add41, 0
  %idxprom43 = sext i32 %add42 to i64
  %36 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition44 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %36, i32 0, i32 2
  %37 = load i32*, i32** %yCondition44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %37, i64 %idxprom43
  %38 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp sgt i32 %38, 1
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.35
  %39 = load i32, i32* %lastCorruptedRow, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %lastCorruptedRow, align 4
  br label %for.end

if.end.49:                                        ; preds = %for.body.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %40 = load i32, i32* %lastCorruptedRow, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %lastCorruptedRow, align 4
  br label %for.cond.32

for.end:                                          ; preds = %if.then.48, %for.cond.32
  %41 = load i32, i32* %lastCorruptedRow, align 4
  %42 = load i32, i32* %lastRow, align 4
  %cmp50 = icmp sge i32 %41, %42
  br i1 %cmp50, label %if.then.52, label %if.else.82

if.then.52:                                       ; preds = %for.end
  %43 = load i32, i32* %lastRow, align 4
  %sub53 = sub nsw i32 %43, 1
  store i32 %sub53, i32* %lastCorruptedRow, align 4
  %44 = load i32, i32* %firstCorruptedRow, align 4
  store i32 %44, i32* %currRow, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.79, %if.then.52
  %45 = load i32, i32* %currRow, align 4
  %46 = load i32, i32* %lastRow, align 4
  %cmp55 = icmp slt i32 %45, %46
  br i1 %cmp55, label %for.body.57, label %for.end.81

for.body.57:                                      ; preds = %for.cond.54
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %47 = load i32, i32* %currRow, align 4
  %shl58 = shl i32 %47, 1
  %48 = load i32, i32* %column, align 4
  %shl59 = shl i32 %48, 1
  %49 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition60 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %49, i32 0, i32 2
  %50 = load i32*, i32** %yCondition60, align 8
  %51 = load i32, i32* %lastRow, align 4
  %shl61 = shl i32 %51, 1
  %52 = load i32, i32* %lastColumn, align 4
  %shl62 = shl i32 %52, 1
  %call63 = call i32 @ercCollect8PredBlocks(i32* %arraydecay, i32 %shl58, i32 %shl59, i32* %50, i32 %shl61, i32 %shl62, i32 2, i8 zeroext 0)
  %53 = load i32, i32* @erc_mvperMB, align 4
  %cmp64 = icmp sge i32 %53, 8
  br i1 %cmp64, label %if.then.66, label %if.else.72

if.then.66:                                       ; preds = %for.body.57
  %54 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %55 = load i16*, i16** %predMB, align 8
  %56 = load i32, i32* %currRow, align 4
  %57 = load i32, i32* %lastColumn, align 4
  %mul67 = mul nsw i32 %56, %57
  %58 = load i32, i32* %column, align 4
  %add68 = add nsw i32 %mul67, %58
  %59 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %arraydecay69 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %60 = load i32, i32* %picSizeX.addr, align 4
  %61 = load i32, i32* %picSizeY.addr, align 4
  %62 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition70 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %62, i32 0, i32 2
  %63 = load i32*, i32** %yCondition70, align 8
  %call71 = call i32 @concealByTrial(%struct.frame* %54, i16* %55, i32 %add68, %struct.objectBuffer_t* %59, i32* %arraydecay69, i32 %60, i32 %61, i32* %63)
  br label %if.end.76

if.else.72:                                       ; preds = %for.body.57
  %64 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %65 = load i32, i32* %currRow, align 4
  %66 = load i32, i32* %lastColumn, align 4
  %mul73 = mul nsw i32 %65, %66
  %67 = load i32, i32* %column, align 4
  %add74 = add nsw i32 %mul73, %67
  %68 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %69 = load i32, i32* %picSizeX.addr, align 4
  %call75 = call i32 @concealByCopy(%struct.frame* %64, i32 %add74, %struct.objectBuffer_t* %68, i32 %69)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.72, %if.then.66
  %70 = load i32, i32* %currRow, align 4
  %71 = load i32, i32* %lastColumn, align 4
  %mul77 = mul nsw i32 %70, %71
  %72 = load i32, i32* %column, align 4
  %add78 = add nsw i32 %mul77, %72
  %73 = load i32, i32* %picSizeX.addr, align 4
  %74 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  call void @ercMarkCurrMBConcealed(i32 %add78, i32 -1, i32 %73, %struct.ercVariables_s* %74)
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.76
  %75 = load i32, i32* %currRow, align 4
  %inc80 = add nsw i32 %75, 1
  store i32 %inc80, i32* %currRow, align 4
  br label %for.cond.54

for.end.81:                                       ; preds = %for.cond.54
  %76 = load i32, i32* %lastRow, align 4
  store i32 %76, i32* %row, align 4
  br label %if.end.157

if.else.82:                                       ; preds = %for.end
  %77 = load i32, i32* %firstCorruptedRow, align 4
  %cmp83 = icmp eq i32 %77, 0
  br i1 %cmp83, label %if.then.85, label %if.else.116

if.then.85:                                       ; preds = %if.else.82
  %78 = load i32, i32* %lastCorruptedRow, align 4
  store i32 %78, i32* %currRow, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.112, %if.then.85
  %79 = load i32, i32* %currRow, align 4
  %cmp87 = icmp sge i32 %79, 0
  br i1 %cmp87, label %for.body.89, label %for.end.114

for.body.89:                                      ; preds = %for.cond.86
  %arraydecay90 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %80 = load i32, i32* %currRow, align 4
  %shl91 = shl i32 %80, 1
  %81 = load i32, i32* %column, align 4
  %shl92 = shl i32 %81, 1
  %82 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition93 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %82, i32 0, i32 2
  %83 = load i32*, i32** %yCondition93, align 8
  %84 = load i32, i32* %lastRow, align 4
  %shl94 = shl i32 %84, 1
  %85 = load i32, i32* %lastColumn, align 4
  %shl95 = shl i32 %85, 1
  %call96 = call i32 @ercCollect8PredBlocks(i32* %arraydecay90, i32 %shl91, i32 %shl92, i32* %83, i32 %shl94, i32 %shl95, i32 2, i8 zeroext 0)
  %86 = load i32, i32* @erc_mvperMB, align 4
  %cmp97 = icmp sge i32 %86, 8
  br i1 %cmp97, label %if.then.99, label %if.else.105

if.then.99:                                       ; preds = %for.body.89
  %87 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %88 = load i16*, i16** %predMB, align 8
  %89 = load i32, i32* %currRow, align 4
  %90 = load i32, i32* %lastColumn, align 4
  %mul100 = mul nsw i32 %89, %90
  %91 = load i32, i32* %column, align 4
  %add101 = add nsw i32 %mul100, %91
  %92 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %arraydecay102 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %93 = load i32, i32* %picSizeX.addr, align 4
  %94 = load i32, i32* %picSizeY.addr, align 4
  %95 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition103 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %95, i32 0, i32 2
  %96 = load i32*, i32** %yCondition103, align 8
  %call104 = call i32 @concealByTrial(%struct.frame* %87, i16* %88, i32 %add101, %struct.objectBuffer_t* %92, i32* %arraydecay102, i32 %93, i32 %94, i32* %96)
  br label %if.end.109

if.else.105:                                      ; preds = %for.body.89
  %97 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %98 = load i32, i32* %currRow, align 4
  %99 = load i32, i32* %lastColumn, align 4
  %mul106 = mul nsw i32 %98, %99
  %100 = load i32, i32* %column, align 4
  %add107 = add nsw i32 %mul106, %100
  %101 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %102 = load i32, i32* %picSizeX.addr, align 4
  %call108 = call i32 @concealByCopy(%struct.frame* %97, i32 %add107, %struct.objectBuffer_t* %101, i32 %102)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.105, %if.then.99
  %103 = load i32, i32* %currRow, align 4
  %104 = load i32, i32* %lastColumn, align 4
  %mul110 = mul nsw i32 %103, %104
  %105 = load i32, i32* %column, align 4
  %add111 = add nsw i32 %mul110, %105
  %106 = load i32, i32* %picSizeX.addr, align 4
  %107 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  call void @ercMarkCurrMBConcealed(i32 %add111, i32 -1, i32 %106, %struct.ercVariables_s* %107)
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.109
  %108 = load i32, i32* %currRow, align 4
  %dec113 = add nsw i32 %108, -1
  store i32 %dec113, i32* %currRow, align 4
  br label %for.cond.86

for.end.114:                                      ; preds = %for.cond.86
  %109 = load i32, i32* %lastCorruptedRow, align 4
  %add115 = add nsw i32 %109, 1
  store i32 %add115, i32* %row, align 4
  br label %if.end.156

if.else.116:                                      ; preds = %if.else.82
  %110 = load i32, i32* %lastCorruptedRow, align 4
  %add117 = add nsw i32 %110, 1
  store i32 %add117, i32* %row, align 4
  %111 = load i32, i32* %lastCorruptedRow, align 4
  %112 = load i32, i32* %firstCorruptedRow, align 4
  %sub118 = sub nsw i32 %111, %112
  %add119 = add nsw i32 %sub118, 1
  store i32 %add119, i32* %areaHeight, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.153, %if.else.116
  %113 = load i32, i32* %i, align 4
  %114 = load i32, i32* %areaHeight, align 4
  %cmp121 = icmp slt i32 %113, %114
  br i1 %cmp121, label %for.body.123, label %for.end.155

for.body.123:                                     ; preds = %for.cond.120
  %115 = load i32, i32* %i, align 4
  %rem124 = srem i32 %115, 2
  %tobool125 = icmp ne i32 %rem124, 0
  br i1 %tobool125, label %if.then.126, label %if.else.128

if.then.126:                                      ; preds = %for.body.123
  %116 = load i32, i32* %lastCorruptedRow, align 4
  store i32 %116, i32* %currRow, align 4
  %117 = load i32, i32* %lastCorruptedRow, align 4
  %dec127 = add nsw i32 %117, -1
  store i32 %dec127, i32* %lastCorruptedRow, align 4
  br label %if.end.130

if.else.128:                                      ; preds = %for.body.123
  %118 = load i32, i32* %firstCorruptedRow, align 4
  store i32 %118, i32* %currRow, align 4
  %119 = load i32, i32* %firstCorruptedRow, align 4
  %inc129 = add nsw i32 %119, 1
  store i32 %inc129, i32* %firstCorruptedRow, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.126
  %arraydecay131 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %120 = load i32, i32* %currRow, align 4
  %shl132 = shl i32 %120, 1
  %121 = load i32, i32* %column, align 4
  %shl133 = shl i32 %121, 1
  %122 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition134 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %122, i32 0, i32 2
  %123 = load i32*, i32** %yCondition134, align 8
  %124 = load i32, i32* %lastRow, align 4
  %shl135 = shl i32 %124, 1
  %125 = load i32, i32* %lastColumn, align 4
  %shl136 = shl i32 %125, 1
  %call137 = call i32 @ercCollect8PredBlocks(i32* %arraydecay131, i32 %shl132, i32 %shl133, i32* %123, i32 %shl135, i32 %shl136, i32 2, i8 zeroext 0)
  %126 = load i32, i32* @erc_mvperMB, align 4
  %cmp138 = icmp sge i32 %126, 8
  br i1 %cmp138, label %if.then.140, label %if.else.146

if.then.140:                                      ; preds = %if.end.130
  %127 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %128 = load i16*, i16** %predMB, align 8
  %129 = load i32, i32* %currRow, align 4
  %130 = load i32, i32* %lastColumn, align 4
  %mul141 = mul nsw i32 %129, %130
  %131 = load i32, i32* %column, align 4
  %add142 = add nsw i32 %mul141, %131
  %132 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %arraydecay143 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %133 = load i32, i32* %picSizeX.addr, align 4
  %134 = load i32, i32* %picSizeY.addr, align 4
  %135 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition144 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %135, i32 0, i32 2
  %136 = load i32*, i32** %yCondition144, align 8
  %call145 = call i32 @concealByTrial(%struct.frame* %127, i16* %128, i32 %add142, %struct.objectBuffer_t* %132, i32* %arraydecay143, i32 %133, i32 %134, i32* %136)
  br label %if.end.150

if.else.146:                                      ; preds = %if.end.130
  %137 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %138 = load i32, i32* %currRow, align 4
  %139 = load i32, i32* %lastColumn, align 4
  %mul147 = mul nsw i32 %138, %139
  %140 = load i32, i32* %column, align 4
  %add148 = add nsw i32 %mul147, %140
  %141 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %142 = load i32, i32* %picSizeX.addr, align 4
  %call149 = call i32 @concealByCopy(%struct.frame* %137, i32 %add148, %struct.objectBuffer_t* %141, i32 %142)
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.146, %if.then.140
  %143 = load i32, i32* %currRow, align 4
  %144 = load i32, i32* %lastColumn, align 4
  %mul151 = mul nsw i32 %143, %144
  %145 = load i32, i32* %column, align 4
  %add152 = add nsw i32 %mul151, %145
  %146 = load i32, i32* %picSizeX.addr, align 4
  %147 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  call void @ercMarkCurrMBConcealed(i32 %add152, i32 -1, i32 %146, %struct.ercVariables_s* %147)
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.150
  %148 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %148, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.120

for.end.155:                                      ; preds = %for.cond.120
  br label %if.end.156

if.end.156:                                       ; preds = %for.end.155, %for.end.114
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %for.end.81
  store i32 -1, i32* %lastCorruptedRow, align 4
  store i32 -1, i32* %firstCorruptedRow, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %for.body.21
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.158
  %149 = load i32, i32* %row, align 4
  %inc160 = add nsw i32 %149, 1
  store i32 %inc160, i32* %row, align 4
  br label %for.cond.18

for.end.161:                                      ; preds = %for.cond.18
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.end.161
  %150 = load i32, i32* %columnInd, align 4
  %inc163 = add nsw i32 %150, 1
  store i32 %inc163, i32* %columnInd, align 4
  br label %for.cond

for.end.164:                                      ; preds = %for.cond
  %151 = load i16*, i16** %predMB, align 8
  %152 = bitcast i16* %151 to i8*
  call void @free(i8* %152) #4
  br label %if.end.165

if.end.165:                                       ; preds = %for.end.164, %if.then
  store i32 1, i32* %retval
  br label %return

if.else.166:                                      ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.166, %if.end.165
  %153 = load i32, i32* %retval
  ret i32 %153
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @no_mem_exit(i8*) #2

declare i32 @ercCollect8PredBlocks(i32*, i32, i32, i32*, i32, i32, i32, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define internal i32 @concealByTrial(%struct.frame* %recfr, i16* %predMB, i32 %currMBNum, %struct.objectBuffer_t* %object_list, i32* %predBlocks, i32 %picSizeX, i32 %picSizeY, i32* %yCondition) #0 {
entry:
  %recfr.addr = alloca %struct.frame*, align 8
  %predMB.addr = alloca i16*, align 8
  %currMBNum.addr = alloca i32, align 4
  %object_list.addr = alloca %struct.objectBuffer_t*, align 8
  %predBlocks.addr = alloca i32*, align 8
  %picSizeX.addr = alloca i32, align 4
  %picSizeY.addr = alloca i32, align 4
  %yCondition.addr = alloca i32*, align 8
  %predMBNum = alloca i32, align 4
  %numMBPerLine = alloca i32, align 4
  %compSplit1 = alloca i32, align 4
  %compSplit2 = alloca i32, align 4
  %compLeft = alloca i32, align 4
  %comp = alloca i32, align 4
  %compPred = alloca i32, align 4
  %order = alloca i32, align 4
  %fInterNeighborExists = alloca i32, align 4
  %numIntraNeighbours = alloca i32, align 4
  %fZeroMotionChecked = alloca i32, align 4
  %predSplitted = alloca i32, align 4
  %threshold = alloca i32, align 4
  %minDist = alloca i32, align 4
  %currDist = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %bestDir = alloca i32, align 4
  %regionSize = alloca i32, align 4
  %currRegion = alloca %struct.objectBuffer_t*, align 8
  %mvBest = alloca [3 x i32], align 4
  %mvPred = alloca [3 x i32], align 4
  %mvptr = alloca i32*, align 8
  store %struct.frame* %recfr, %struct.frame** %recfr.addr, align 8
  store i16* %predMB, i16** %predMB.addr, align 8
  store i32 %currMBNum, i32* %currMBNum.addr, align 4
  store %struct.objectBuffer_t* %object_list, %struct.objectBuffer_t** %object_list.addr, align 8
  store i32* %predBlocks, i32** %predBlocks.addr, align 8
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store i32 %picSizeY, i32* %picSizeY.addr, align 4
  store i32* %yCondition, i32** %yCondition.addr, align 8
  store i32 0, i32* %predMBNum, align 4
  store i32 0, i32* %compSplit1, align 4
  store i32 0, i32* %compSplit2, align 4
  store i32 1, i32* %compLeft, align 4
  store i32 0, i32* %comp, align 4
  store i32 1, i32* %order, align 4
  store i32 0, i32* %predSplitted, align 4
  store i32 3, i32* %threshold, align 4
  %0 = load i32, i32* %picSizeX.addr, align 4
  %shr = ashr i32 %0, 4
  store i32 %shr, i32* %numMBPerLine, align 4
  store i32 0, i32* %comp, align 4
  store i32 16, i32* %regionSize, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.371, %entry
  %1 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %2 = load i32, i32* %currMBNum.addr, align 4
  %shl = shl i32 %2, 2
  %idx.ext = sext i32 %shl to i64
  %add.ptr = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %1, i64 %idx.ext
  %3 = load i32, i32* %comp, align 4
  %idx.ext1 = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr, i64 %idx.ext1
  store %struct.objectBuffer_t* %add.ptr2, %struct.objectBuffer_t** %currRegion, align 8
  %4 = load i32, i32* %currMBNum.addr, align 4
  %5 = load i32, i32* %picSizeX.addr, align 4
  %shr3 = ashr i32 %5, 4
  %div = sdiv i32 %4, %shr3
  %shl4 = shl i32 %div, 1
  %6 = load i32, i32* %comp, align 4
  %shr5 = ashr i32 %6, 1
  %add = add nsw i32 %shl4, %shr5
  %7 = load i32, i32* %picSizeX.addr, align 4
  %shr6 = ashr i32 %7, 3
  %mul = mul nsw i32 %add, %shr6
  %8 = load i32, i32* %currMBNum.addr, align 4
  %9 = load i32, i32* %picSizeX.addr, align 4
  %shr7 = ashr i32 %9, 4
  %rem = srem i32 %8, %shr7
  %shl8 = shl i32 %rem, 1
  %add9 = add nsw i32 %mul, %shl8
  %10 = load i32, i32* %comp, align 4
  %and = and i32 %10, 1
  %add10 = add nsw i32 %add9, %and
  %11 = load i32, i32* %picSizeX.addr, align 4
  %shr11 = ashr i32 %11, 3
  %rem12 = srem i32 %add10, %shr11
  %shl13 = shl i32 %rem12, 3
  %12 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %xMin = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %12, i32 0, i32 1
  store i32 %shl13, i32* %xMin, align 4
  %13 = load i32, i32* %currMBNum.addr, align 4
  %14 = load i32, i32* %picSizeX.addr, align 4
  %shr14 = ashr i32 %14, 4
  %div15 = sdiv i32 %13, %shr14
  %shl16 = shl i32 %div15, 1
  %15 = load i32, i32* %comp, align 4
  %shr17 = ashr i32 %15, 1
  %add18 = add nsw i32 %shl16, %shr17
  %16 = load i32, i32* %picSizeX.addr, align 4
  %shr19 = ashr i32 %16, 3
  %mul20 = mul nsw i32 %add18, %shr19
  %17 = load i32, i32* %currMBNum.addr, align 4
  %18 = load i32, i32* %picSizeX.addr, align 4
  %shr21 = ashr i32 %18, 4
  %rem22 = srem i32 %17, %shr21
  %shl23 = shl i32 %rem22, 1
  %add24 = add nsw i32 %mul20, %shl23
  %19 = load i32, i32* %comp, align 4
  %and25 = and i32 %19, 1
  %add26 = add nsw i32 %add24, %and25
  %20 = load i32, i32* %picSizeX.addr, align 4
  %shr27 = ashr i32 %20, 3
  %div28 = sdiv i32 %add26, %shr27
  %shl29 = shl i32 %div28, 3
  %21 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %yMin = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %21, i32 0, i32 2
  store i32 %shl29, i32* %yMin, align 4
  br label %do.body.30

do.body.30:                                       ; preds = %land.end, %do.body
  store i32 0, i32* %minDist, align 4
  store i32 0, i32* %fInterNeighborExists, align 4
  store i32 0, i32* %numIntraNeighbours, align 4
  store i32 0, i32* %fZeroMotionChecked, align 4
  store i32 4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.274, %do.body.30
  %22 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %22, 8
  br i1 %cmp, label %for.body, label %for.end.276

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %24, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4
  %26 = load i32, i32* %threshold, align 4
  %cmp31 = icmp sge i32 %25, %26
  br i1 %cmp31, label %if.then, label %if.end.273

if.then:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  switch i32 %27, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.32
    i32 6, label %sw.bb.34
    i32 7, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.then
  %28 = load i32, i32* %currMBNum.addr, align 4
  %29 = load i32, i32* %numMBPerLine, align 4
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %predMBNum, align 4
  store i32 2, i32* %compSplit1, align 4
  store i32 3, i32* %compSplit2, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.then
  %30 = load i32, i32* %currMBNum.addr, align 4
  %sub33 = sub nsw i32 %30, 1
  store i32 %sub33, i32* %predMBNum, align 4
  store i32 1, i32* %compSplit1, align 4
  store i32 3, i32* %compSplit2, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.then
  %31 = load i32, i32* %currMBNum.addr, align 4
  %32 = load i32, i32* %numMBPerLine, align 4
  %add35 = add nsw i32 %31, %32
  store i32 %add35, i32* %predMBNum, align 4
  store i32 0, i32* %compSplit1, align 4
  store i32 1, i32* %compSplit2, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.then
  %33 = load i32, i32* %currMBNum.addr, align 4
  %add37 = add nsw i32 %33, 1
  store i32 %add37, i32* %predMBNum, align 4
  store i32 0, i32* %compSplit1, align 4
  store i32 2, i32* %compSplit2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb
  %34 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %35 = load i32, i32* %predMBNum, align 4
  %shl38 = shl i32 %35, 2
  %idx.ext39 = sext i32 %shl38 to i64
  %add.ptr40 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %34, i64 %idx.ext39
  %regionMode = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr40, i32 0, i32 0
  %36 = load i8, i8* %regionMode, align 1
  %conv = zext i8 %36 to i32
  %cmp41 = icmp sge i32 %conv, 3
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %37 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %38 = load i32, i32* %predMBNum, align 4
  %shl43 = shl i32 %38, 2
  %idx.ext44 = sext i32 %shl43 to i64
  %add.ptr45 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %37, i64 %idx.ext44
  %39 = load i32, i32* %compSplit1, align 4
  %idx.ext46 = sext i32 %39 to i64
  %add.ptr47 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr45, i64 %idx.ext46
  %regionMode48 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr47, i32 0, i32 0
  %40 = load i8, i8* %regionMode48, align 1
  %conv49 = zext i8 %40 to i32
  %cmp50 = icmp eq i32 %conv49, 6
  br i1 %cmp50, label %if.then.84, label %lor.lhs.false

cond.false:                                       ; preds = %sw.epilog
  %41 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %42 = load i32, i32* %predMBNum, align 4
  %shl52 = shl i32 %42, 2
  %idx.ext53 = sext i32 %shl52 to i64
  %add.ptr54 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %41, i64 %idx.ext53
  %regionMode55 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr54, i32 0, i32 0
  %43 = load i8, i8* %regionMode55, align 1
  %conv56 = zext i8 %43 to i32
  %cmp57 = icmp eq i32 %conv56, 2
  br i1 %cmp57, label %if.then.84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %44 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %45 = load i32, i32* %predMBNum, align 4
  %shl59 = shl i32 %45, 2
  %idx.ext60 = sext i32 %shl59 to i64
  %add.ptr61 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %44, i64 %idx.ext60
  %regionMode62 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr61, i32 0, i32 0
  %46 = load i8, i8* %regionMode62, align 1
  %conv63 = zext i8 %46 to i32
  %cmp64 = icmp sge i32 %conv63, 3
  br i1 %cmp64, label %cond.true.66, label %cond.false.76

cond.true.66:                                     ; preds = %lor.lhs.false
  %47 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %48 = load i32, i32* %predMBNum, align 4
  %shl67 = shl i32 %48, 2
  %idx.ext68 = sext i32 %shl67 to i64
  %add.ptr69 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %47, i64 %idx.ext68
  %49 = load i32, i32* %compSplit2, align 4
  %idx.ext70 = sext i32 %49 to i64
  %add.ptr71 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr69, i64 %idx.ext70
  %regionMode72 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr71, i32 0, i32 0
  %50 = load i8, i8* %regionMode72, align 1
  %conv73 = zext i8 %50 to i32
  %cmp74 = icmp eq i32 %conv73, 6
  br i1 %cmp74, label %if.then.84, label %if.else

cond.false.76:                                    ; preds = %lor.lhs.false
  %51 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %52 = load i32, i32* %predMBNum, align 4
  %shl77 = shl i32 %52, 2
  %idx.ext78 = sext i32 %shl77 to i64
  %add.ptr79 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %51, i64 %idx.ext78
  %regionMode80 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr79, i32 0, i32 0
  %53 = load i8, i8* %regionMode80, align 1
  %conv81 = zext i8 %53 to i32
  %cmp82 = icmp eq i32 %conv81, 2
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %cond.false.76, %cond.true.66, %cond.false, %cond.true
  %54 = load i32, i32* %numIntraNeighbours, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %numIntraNeighbours, align 4
  br label %if.end.272

if.else:                                          ; preds = %cond.false.76, %cond.true.66
  %55 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %56 = load i32, i32* %predMBNum, align 4
  %shl85 = shl i32 %56, 2
  %idx.ext86 = sext i32 %shl85 to i64
  %add.ptr87 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %55, i64 %idx.ext86
  %regionMode88 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr87, i32 0, i32 0
  %57 = load i8, i8* %regionMode88, align 1
  %conv89 = zext i8 %57 to i32
  %cmp90 = icmp sge i32 %conv89, 3
  %conv91 = zext i1 %cmp90 to i32
  store i32 %conv91, i32* %predSplitted, align 4
  %58 = load i32, i32* %compSplit1, align 4
  store i32 %58, i32* %compPred, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.266, %if.else
  %59 = load i32, i32* %predSplitted, align 4
  %cmp93 = icmp sge i32 %59, 0
  br i1 %cmp93, label %for.body.95, label %for.end.271

for.body.95:                                      ; preds = %for.cond.92
  %60 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %61 = load i32, i32* %predMBNum, align 4
  %shl96 = shl i32 %61, 2
  %idx.ext97 = sext i32 %shl96 to i64
  %add.ptr98 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %60, i64 %idx.ext97
  %regionMode99 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr98, i32 0, i32 0
  %62 = load i8, i8* %regionMode99, align 1
  %conv100 = zext i8 %62 to i32
  %cmp101 = icmp sge i32 %conv100, 3
  br i1 %cmp101, label %cond.true.103, label %cond.false.113

cond.true.103:                                    ; preds = %for.body.95
  %63 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %64 = load i32, i32* %predMBNum, align 4
  %shl104 = shl i32 %64, 2
  %idx.ext105 = sext i32 %shl104 to i64
  %add.ptr106 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %63, i64 %idx.ext105
  %65 = load i32, i32* %compPred, align 4
  %idx.ext107 = sext i32 %65 to i64
  %add.ptr108 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr106, i64 %idx.ext107
  %regionMode109 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr108, i32 0, i32 0
  %66 = load i8, i8* %regionMode109, align 1
  %conv110 = zext i8 %66 to i32
  %cmp111 = icmp eq i32 %conv110, 4
  br i1 %cmp111, label %if.then.121, label %if.else.129

cond.false.113:                                   ; preds = %for.body.95
  %67 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %68 = load i32, i32* %predMBNum, align 4
  %shl114 = shl i32 %68, 2
  %idx.ext115 = sext i32 %shl114 to i64
  %add.ptr116 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %67, i64 %idx.ext115
  %regionMode117 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr116, i32 0, i32 0
  %69 = load i8, i8* %regionMode117, align 1
  %conv118 = zext i8 %69 to i32
  %cmp119 = icmp eq i32 %conv118, 0
  br i1 %cmp119, label %if.then.121, label %if.else.129

if.then.121:                                      ; preds = %cond.false.113, %cond.true.103
  %70 = load i32, i32* %fZeroMotionChecked, align 4
  %tobool = icmp ne i32 %70, 0
  br i1 %tobool, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %if.then.121
  br label %for.inc.266

if.else.123:                                      ; preds = %if.then.121
  store i32 1, i32* %fZeroMotionChecked, align 4
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 1
  store i32 0, i32* %arrayidx124, align 4
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 0
  store i32 0, i32* %arrayidx125, align 4
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 2
  store i32 0, i32* %arrayidx126, align 4
  %71 = load %struct.img_par*, %struct.img_par** @erc_img, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i32 0
  %72 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %xMin127 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %72, i32 0, i32 1
  %73 = load i32, i32* %xMin127, align 4
  %74 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %yMin128 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %74, i32 0, i32 2
  %75 = load i32, i32* %yMin128, align 4
  %76 = load i16*, i16** %predMB.addr, align 8
  call void @buildPredRegionYUV(%struct.img_par* %71, i32* %arraydecay, i32 %73, i32 %75, i16* %76)
  br label %if.end

if.end:                                           ; preds = %if.else.123
  br label %if.end.187

if.else.129:                                      ; preds = %cond.false.113, %cond.true.103
  %77 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %78 = load i32, i32* %predMBNum, align 4
  %shl130 = shl i32 %78, 2
  %idx.ext131 = sext i32 %shl130 to i64
  %add.ptr132 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %77, i64 %idx.ext131
  %regionMode133 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr132, i32 0, i32 0
  %79 = load i8, i8* %regionMode133, align 1
  %conv134 = zext i8 %79 to i32
  %cmp135 = icmp sge i32 %conv134, 3
  br i1 %cmp135, label %cond.true.137, label %cond.false.147

cond.true.137:                                    ; preds = %if.else.129
  %80 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %81 = load i32, i32* %predMBNum, align 4
  %shl138 = shl i32 %81, 2
  %idx.ext139 = sext i32 %shl138 to i64
  %add.ptr140 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %80, i64 %idx.ext139
  %82 = load i32, i32* %compPred, align 4
  %idx.ext141 = sext i32 %82 to i64
  %add.ptr142 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr140, i64 %idx.ext141
  %regionMode143 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr142, i32 0, i32 0
  %83 = load i8, i8* %regionMode143, align 1
  %conv144 = zext i8 %83 to i32
  %cmp145 = icmp eq i32 %conv144, 6
  br i1 %cmp145, label %if.then.155, label %if.else.156

cond.false.147:                                   ; preds = %if.else.129
  %84 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %85 = load i32, i32* %predMBNum, align 4
  %shl148 = shl i32 %85, 2
  %idx.ext149 = sext i32 %shl148 to i64
  %add.ptr150 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %84, i64 %idx.ext149
  %regionMode151 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr150, i32 0, i32 0
  %86 = load i8, i8* %regionMode151, align 1
  %conv152 = zext i8 %86 to i32
  %cmp153 = icmp eq i32 %conv152, 2
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %cond.false.147, %cond.true.137
  br label %for.inc.266

if.else.156:                                      ; preds = %cond.false.147, %cond.true.137
  %87 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %88 = load i32, i32* %predMBNum, align 4
  %shl157 = shl i32 %88, 2
  %idx.ext158 = sext i32 %shl157 to i64
  %add.ptr159 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %87, i64 %idx.ext158
  %regionMode160 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr159, i32 0, i32 0
  %89 = load i8, i8* %regionMode160, align 1
  %conv161 = zext i8 %89 to i32
  %cmp162 = icmp sge i32 %conv161, 3
  br i1 %cmp162, label %cond.true.164, label %cond.false.171

cond.true.164:                                    ; preds = %if.else.156
  %90 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %91 = load i32, i32* %predMBNum, align 4
  %shl165 = shl i32 %91, 2
  %idx.ext166 = sext i32 %shl165 to i64
  %add.ptr167 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %90, i64 %idx.ext166
  %92 = load i32, i32* %compPred, align 4
  %idx.ext168 = sext i32 %92 to i64
  %add.ptr169 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr167, i64 %idx.ext168
  %mv = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr169, i32 0, i32 3
  %arraydecay170 = getelementptr inbounds [3 x i32], [3 x i32]* %mv, i32 0, i32 0
  br label %cond.end

cond.false.171:                                   ; preds = %if.else.156
  %93 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %94 = load i32, i32* %predMBNum, align 4
  %shl172 = shl i32 %94, 2
  %idx.ext173 = sext i32 %shl172 to i64
  %add.ptr174 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %93, i64 %idx.ext173
  %mv175 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr174, i32 0, i32 3
  %arraydecay176 = getelementptr inbounds [3 x i32], [3 x i32]* %mv175, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.171, %cond.true.164
  %cond = phi i32* [ %arraydecay170, %cond.true.164 ], [ %arraydecay176, %cond.false.171 ]
  store i32* %cond, i32** %mvptr, align 8
  %95 = load i32*, i32** %mvptr, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %95, i64 0
  %96 = load i32, i32* %arrayidx177, align 4
  %arrayidx178 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 0
  store i32 %96, i32* %arrayidx178, align 4
  %97 = load i32*, i32** %mvptr, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %97, i64 1
  %98 = load i32, i32* %arrayidx179, align 4
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 1
  store i32 %98, i32* %arrayidx180, align 4
  %99 = load i32*, i32** %mvptr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %99, i64 2
  %100 = load i32, i32* %arrayidx181, align 4
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 2
  store i32 %100, i32* %arrayidx182, align 4
  %101 = load %struct.img_par*, %struct.img_par** @erc_img, align 8
  %arraydecay183 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i32 0
  %102 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %xMin184 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %102, i32 0, i32 1
  %103 = load i32, i32* %xMin184, align 4
  %104 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %yMin185 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %104, i32 0, i32 2
  %105 = load i32, i32* %yMin185, align 4
  %106 = load i16*, i16** %predMB.addr, align 8
  call void @buildPredRegionYUV(%struct.img_par* %101, i32* %arraydecay183, i32 %103, i32 %105, i16* %106)
  br label %if.end.186

if.end.186:                                       ; preds = %cond.end
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.end
  %107 = load i32*, i32** %predBlocks.addr, align 8
  %108 = load i32, i32* %currMBNum.addr, align 4
  %109 = load i32, i32* %picSizeX.addr, align 4
  %shr188 = ashr i32 %109, 4
  %div189 = sdiv i32 %108, %shr188
  %shl190 = shl i32 %div189, 1
  %110 = load i32, i32* %comp, align 4
  %shr191 = ashr i32 %110, 1
  %add192 = add nsw i32 %shl190, %shr191
  %111 = load i32, i32* %picSizeX.addr, align 4
  %shr193 = ashr i32 %111, 3
  %mul194 = mul nsw i32 %add192, %shr193
  %112 = load i32, i32* %currMBNum.addr, align 4
  %113 = load i32, i32* %picSizeX.addr, align 4
  %shr195 = ashr i32 %113, 4
  %rem196 = srem i32 %112, %shr195
  %shl197 = shl i32 %rem196, 1
  %add198 = add nsw i32 %mul194, %shl197
  %114 = load i32, i32* %comp, align 4
  %and199 = and i32 %114, 1
  %add200 = add nsw i32 %add198, %and199
  %115 = load i16*, i16** %predMB.addr, align 8
  %116 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %yptr = getelementptr inbounds %struct.frame, %struct.frame* %116, i32 0, i32 0
  %117 = load i16*, i16** %yptr, align 8
  %118 = load i32, i32* %picSizeX.addr, align 4
  %119 = load i32, i32* %regionSize, align 4
  %call = call i32 @edgeDistortion(i32* %107, i32 %add200, i16* %115, i16* %117, i32 %118, i32 %119)
  store i32 %call, i32* %currDist, align 4
  %120 = load i32, i32* %currDist, align 4
  %121 = load i32, i32* %minDist, align 4
  %cmp201 = icmp slt i32 %120, %121
  br i1 %cmp201, label %if.then.205, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %if.end.187
  %122 = load i32, i32* %fInterNeighborExists, align 4
  %tobool204 = icmp ne i32 %122, 0
  br i1 %tobool204, label %if.end.265, label %if.then.205

if.then.205:                                      ; preds = %lor.lhs.false.203, %if.end.187
  %123 = load i32, i32* %currDist, align 4
  store i32 %123, i32* %minDist, align 4
  %124 = load i32, i32* %i, align 4
  store i32 %124, i32* %bestDir, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc, %if.then.205
  %125 = load i32, i32* %k, align 4
  %cmp207 = icmp slt i32 %125, 3
  br i1 %cmp207, label %for.body.209, label %for.end

for.body.209:                                     ; preds = %for.cond.206
  %126 = load i32, i32* %k, align 4
  %idxprom210 = sext i32 %126 to i64
  %arrayidx211 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 %idxprom210
  %127 = load i32, i32* %arrayidx211, align 4
  %128 = load i32, i32* %k, align 4
  %idxprom212 = sext i32 %128 to i64
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %mvBest, i32 0, i64 %idxprom212
  store i32 %127, i32* %arrayidx213, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.209
  %129 = load i32, i32* %k, align 4
  %inc214 = add nsw i32 %129, 1
  store i32 %inc214, i32* %k, align 4
  br label %for.cond.206

for.end:                                          ; preds = %for.cond.206
  %130 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %131 = load i32, i32* %predMBNum, align 4
  %shl215 = shl i32 %131, 2
  %idx.ext216 = sext i32 %shl215 to i64
  %add.ptr217 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %130, i64 %idx.ext216
  %regionMode218 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr217, i32 0, i32 0
  %132 = load i8, i8* %regionMode218, align 1
  %conv219 = zext i8 %132 to i32
  %cmp220 = icmp sge i32 %conv219, 3
  br i1 %cmp220, label %cond.true.222, label %cond.false.232

cond.true.222:                                    ; preds = %for.end
  %133 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %134 = load i32, i32* %predMBNum, align 4
  %shl223 = shl i32 %134, 2
  %idx.ext224 = sext i32 %shl223 to i64
  %add.ptr225 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %133, i64 %idx.ext224
  %135 = load i32, i32* %compPred, align 4
  %idx.ext226 = sext i32 %135 to i64
  %add.ptr227 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr225, i64 %idx.ext226
  %regionMode228 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr227, i32 0, i32 0
  %136 = load i8, i8* %regionMode228, align 1
  %conv229 = zext i8 %136 to i32
  %cmp230 = icmp eq i32 %conv229, 4
  br i1 %cmp230, label %cond.true.240, label %cond.false.244

cond.false.232:                                   ; preds = %for.end
  %137 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %138 = load i32, i32* %predMBNum, align 4
  %shl233 = shl i32 %138, 2
  %idx.ext234 = sext i32 %shl233 to i64
  %add.ptr235 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %137, i64 %idx.ext234
  %regionMode236 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %add.ptr235, i32 0, i32 0
  %139 = load i8, i8* %regionMode236, align 1
  %conv237 = zext i8 %139 to i32
  %cmp238 = icmp eq i32 %conv237, 0
  br i1 %cmp238, label %cond.true.240, label %cond.false.244

cond.true.240:                                    ; preds = %cond.false.232, %cond.true.222
  %140 = load i32, i32* %regionSize, align 4
  %cmp241 = icmp eq i32 %140, 16
  %cond243 = select i1 %cmp241, i32 0, i32 4
  br label %cond.end.248

cond.false.244:                                   ; preds = %cond.false.232, %cond.true.222
  %141 = load i32, i32* %regionSize, align 4
  %cmp245 = icmp eq i32 %141, 16
  %cond247 = select i1 %cmp245, i32 1, i32 5
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.244, %cond.true.240
  %cond249 = phi i32 [ %cond243, %cond.true.240 ], [ %cond247, %cond.false.244 ]
  %conv250 = trunc i32 %cond249 to i8
  %142 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %regionMode251 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %142, i32 0, i32 0
  store i8 %conv250, i8* %regionMode251, align 1
  %143 = load i32, i32* %currMBNum.addr, align 4
  %144 = load i32, i32* %picSizeX.addr, align 4
  %shr252 = ashr i32 %144, 4
  %div253 = sdiv i32 %143, %shr252
  %shl254 = shl i32 %div253, 1
  %145 = load i32, i32* %comp, align 4
  %shr255 = ashr i32 %145, 1
  %add256 = add nsw i32 %shl254, %shr255
  %146 = load i32, i32* %picSizeX.addr, align 4
  %shr257 = ashr i32 %146, 3
  %mul258 = mul nsw i32 %add256, %shr257
  %147 = load i32, i32* %currMBNum.addr, align 4
  %148 = load i32, i32* %picSizeX.addr, align 4
  %shr259 = ashr i32 %148, 4
  %rem260 = srem i32 %147, %shr259
  %shl261 = shl i32 %rem260, 1
  %add262 = add nsw i32 %mul258, %shl261
  %149 = load i32, i32* %comp, align 4
  %and263 = and i32 %149, 1
  %add264 = add nsw i32 %add262, %and263
  %150 = load i16*, i16** %predMB.addr, align 8
  %151 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %152 = load i32, i32* %picSizeX.addr, align 4
  %153 = load i32, i32* %regionSize, align 4
  call void @copyPredMB(i32 %add264, i16* %150, %struct.frame* %151, i32 %152, i32 %153)
  br label %if.end.265

if.end.265:                                       ; preds = %cond.end.248, %lor.lhs.false.203
  store i32 1, i32* %fInterNeighborExists, align 4
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.265, %if.then.155, %if.then.122
  %154 = load i32, i32* %compSplit2, align 4
  store i32 %154, i32* %compPred, align 4
  %155 = load i32, i32* %compSplit1, align 4
  %156 = load i32, i32* %compSplit2, align 4
  %cmp267 = icmp eq i32 %155, %156
  %cond269 = select i1 %cmp267, i32 2, i32 1
  %157 = load i32, i32* %predSplitted, align 4
  %sub270 = sub nsw i32 %157, %cond269
  store i32 %sub270, i32* %predSplitted, align 4
  br label %for.cond.92

for.end.271:                                      ; preds = %for.cond.92
  br label %if.end.272

if.end.272:                                       ; preds = %for.end.271, %if.then.84
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %for.body
  br label %for.inc.274

for.inc.274:                                      ; preds = %if.end.273
  %158 = load i32, i32* %i, align 4
  %inc275 = add nsw i32 %158, 1
  store i32 %inc275, i32* %i, align 4
  br label %for.cond

for.end.276:                                      ; preds = %for.cond
  %159 = load i32, i32* %threshold, align 4
  %dec = add nsw i32 %159, -1
  store i32 %dec, i32* %threshold, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end.276
  %160 = load i32, i32* %threshold, align 4
  %cmp277 = icmp sge i32 %160, 2
  br i1 %cmp277, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %161 = load i32, i32* %fInterNeighborExists, align 4
  %cmp279 = icmp eq i32 %161, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %162 = phi i1 [ false, %do.cond ], [ %cmp279, %land.rhs ]
  br i1 %162, label %do.body.30, label %do.end

do.end:                                           ; preds = %land.end
  %163 = load i32, i32* %fZeroMotionChecked, align 4
  %tobool281 = icmp ne i32 %163, 0
  br i1 %tobool281, label %if.end.339, label %if.then.282

if.then.282:                                      ; preds = %do.end
  %arrayidx283 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 1
  store i32 0, i32* %arrayidx283, align 4
  %arrayidx284 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 0
  store i32 0, i32* %arrayidx284, align 4
  %arrayidx285 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 2
  store i32 0, i32* %arrayidx285, align 4
  %164 = load %struct.img_par*, %struct.img_par** @erc_img, align 8
  %arraydecay286 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i32 0
  %165 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %xMin287 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %165, i32 0, i32 1
  %166 = load i32, i32* %xMin287, align 4
  %167 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %yMin288 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %167, i32 0, i32 2
  %168 = load i32, i32* %yMin288, align 4
  %169 = load i16*, i16** %predMB.addr, align 8
  call void @buildPredRegionYUV(%struct.img_par* %164, i32* %arraydecay286, i32 %166, i32 %168, i16* %169)
  %170 = load i32*, i32** %predBlocks.addr, align 8
  %171 = load i32, i32* %currMBNum.addr, align 4
  %172 = load i32, i32* %picSizeX.addr, align 4
  %shr289 = ashr i32 %172, 4
  %div290 = sdiv i32 %171, %shr289
  %shl291 = shl i32 %div290, 1
  %173 = load i32, i32* %comp, align 4
  %shr292 = ashr i32 %173, 1
  %add293 = add nsw i32 %shl291, %shr292
  %174 = load i32, i32* %picSizeX.addr, align 4
  %shr294 = ashr i32 %174, 3
  %mul295 = mul nsw i32 %add293, %shr294
  %175 = load i32, i32* %currMBNum.addr, align 4
  %176 = load i32, i32* %picSizeX.addr, align 4
  %shr296 = ashr i32 %176, 4
  %rem297 = srem i32 %175, %shr296
  %shl298 = shl i32 %rem297, 1
  %add299 = add nsw i32 %mul295, %shl298
  %177 = load i32, i32* %comp, align 4
  %and300 = and i32 %177, 1
  %add301 = add nsw i32 %add299, %and300
  %178 = load i16*, i16** %predMB.addr, align 8
  %179 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %yptr302 = getelementptr inbounds %struct.frame, %struct.frame* %179, i32 0, i32 0
  %180 = load i16*, i16** %yptr302, align 8
  %181 = load i32, i32* %picSizeX.addr, align 4
  %182 = load i32, i32* %regionSize, align 4
  %call303 = call i32 @edgeDistortion(i32* %170, i32 %add301, i16* %178, i16* %180, i32 %181, i32 %182)
  store i32 %call303, i32* %currDist, align 4
  %183 = load i32, i32* %currDist, align 4
  %184 = load i32, i32* %minDist, align 4
  %cmp304 = icmp slt i32 %183, %184
  br i1 %cmp304, label %if.then.308, label %lor.lhs.false.306

lor.lhs.false.306:                                ; preds = %if.then.282
  %185 = load i32, i32* %fInterNeighborExists, align 4
  %tobool307 = icmp ne i32 %185, 0
  br i1 %tobool307, label %if.end.338, label %if.then.308

if.then.308:                                      ; preds = %lor.lhs.false.306, %if.then.282
  %186 = load i32, i32* %currDist, align 4
  store i32 %186, i32* %minDist, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.317, %if.then.308
  %187 = load i32, i32* %k, align 4
  %cmp310 = icmp slt i32 %187, 3
  br i1 %cmp310, label %for.body.312, label %for.end.319

for.body.312:                                     ; preds = %for.cond.309
  %188 = load i32, i32* %k, align 4
  %idxprom313 = sext i32 %188 to i64
  %arrayidx314 = getelementptr inbounds [3 x i32], [3 x i32]* %mvPred, i32 0, i64 %idxprom313
  %189 = load i32, i32* %arrayidx314, align 4
  %190 = load i32, i32* %k, align 4
  %idxprom315 = sext i32 %190 to i64
  %arrayidx316 = getelementptr inbounds [3 x i32], [3 x i32]* %mvBest, i32 0, i64 %idxprom315
  store i32 %189, i32* %arrayidx316, align 4
  br label %for.inc.317

for.inc.317:                                      ; preds = %for.body.312
  %191 = load i32, i32* %k, align 4
  %inc318 = add nsw i32 %191, 1
  store i32 %inc318, i32* %k, align 4
  br label %for.cond.309

for.end.319:                                      ; preds = %for.cond.309
  %192 = load i32, i32* %regionSize, align 4
  %cmp320 = icmp eq i32 %192, 16
  %cond322 = select i1 %cmp320, i32 0, i32 4
  %conv323 = trunc i32 %cond322 to i8
  %193 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %regionMode324 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %193, i32 0, i32 0
  store i8 %conv323, i8* %regionMode324, align 1
  %194 = load i32, i32* %currMBNum.addr, align 4
  %195 = load i32, i32* %picSizeX.addr, align 4
  %shr325 = ashr i32 %195, 4
  %div326 = sdiv i32 %194, %shr325
  %shl327 = shl i32 %div326, 1
  %196 = load i32, i32* %comp, align 4
  %shr328 = ashr i32 %196, 1
  %add329 = add nsw i32 %shl327, %shr328
  %197 = load i32, i32* %picSizeX.addr, align 4
  %shr330 = ashr i32 %197, 3
  %mul331 = mul nsw i32 %add329, %shr330
  %198 = load i32, i32* %currMBNum.addr, align 4
  %199 = load i32, i32* %picSizeX.addr, align 4
  %shr332 = ashr i32 %199, 4
  %rem333 = srem i32 %198, %shr332
  %shl334 = shl i32 %rem333, 1
  %add335 = add nsw i32 %mul331, %shl334
  %200 = load i32, i32* %comp, align 4
  %and336 = and i32 %200, 1
  %add337 = add nsw i32 %add335, %and336
  %201 = load i16*, i16** %predMB.addr, align 8
  %202 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %203 = load i32, i32* %picSizeX.addr, align 4
  %204 = load i32, i32* %regionSize, align 4
  call void @copyPredMB(i32 %add337, i16* %201, %struct.frame* %202, i32 %203, i32 %204)
  br label %if.end.338

if.end.338:                                       ; preds = %for.end.319, %lor.lhs.false.306
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond.340

for.cond.340:                                     ; preds = %for.inc.349, %if.end.339
  %205 = load i32, i32* %i, align 4
  %cmp341 = icmp slt i32 %205, 3
  br i1 %cmp341, label %for.body.343, label %for.end.351

for.body.343:                                     ; preds = %for.cond.340
  %206 = load i32, i32* %i, align 4
  %idxprom344 = sext i32 %206 to i64
  %arrayidx345 = getelementptr inbounds [3 x i32], [3 x i32]* %mvBest, i32 0, i64 %idxprom344
  %207 = load i32, i32* %arrayidx345, align 4
  %208 = load i32, i32* %i, align 4
  %idxprom346 = sext i32 %208 to i64
  %209 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %mv347 = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %209, i32 0, i32 3
  %arrayidx348 = getelementptr inbounds [3 x i32], [3 x i32]* %mv347, i32 0, i64 %idxprom346
  store i32 %207, i32* %arrayidx348, align 4
  br label %for.inc.349

for.inc.349:                                      ; preds = %for.body.343
  %210 = load i32, i32* %i, align 4
  %inc350 = add nsw i32 %210, 1
  store i32 %inc350, i32* %i, align 4
  br label %for.cond.340

for.end.351:                                      ; preds = %for.cond.340
  %211 = load i32, i32* %currMBNum.addr, align 4
  %212 = load i32, i32* %picSizeX.addr, align 4
  %shr352 = ashr i32 %212, 4
  %div353 = sdiv i32 %211, %shr352
  %shl354 = shl i32 %div353, 1
  %213 = load i32, i32* %comp, align 4
  %shr355 = ashr i32 %213, 1
  %add356 = add nsw i32 %shl354, %shr355
  %214 = load i32, i32* %picSizeX.addr, align 4
  %shr357 = ashr i32 %214, 3
  %mul358 = mul nsw i32 %add356, %shr357
  %215 = load i32, i32* %currMBNum.addr, align 4
  %216 = load i32, i32* %picSizeX.addr, align 4
  %shr359 = ashr i32 %216, 4
  %rem360 = srem i32 %215, %shr359
  %shl361 = shl i32 %rem360, 1
  %add362 = add nsw i32 %mul358, %shl361
  %217 = load i32, i32* %comp, align 4
  %and363 = and i32 %217, 1
  %add364 = add nsw i32 %add362, %and363
  %idxprom365 = sext i32 %add364 to i64
  %218 = load i32*, i32** %yCondition.addr, align 8
  %arrayidx366 = getelementptr inbounds i32, i32* %218, i64 %idxprom365
  store i32 2, i32* %arrayidx366, align 4
  %219 = load i32, i32* %comp, align 4
  %220 = load i32, i32* %order, align 4
  %add367 = add nsw i32 %219, %220
  %add368 = add nsw i32 %add367, 4
  %rem369 = srem i32 %add368, 4
  store i32 %rem369, i32* %comp, align 4
  %221 = load i32, i32* %compLeft, align 4
  %dec370 = add nsw i32 %221, -1
  store i32 %dec370, i32* %compLeft, align 4
  br label %do.cond.371

do.cond.371:                                      ; preds = %for.end.351
  %222 = load i32, i32* %compLeft, align 4
  %tobool372 = icmp ne i32 %222, 0
  br i1 %tobool372, label %do.body, label %do.end.373

do.end.373:                                       ; preds = %do.cond.371
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @concealByCopy(%struct.frame* %recfr, i32 %currMBNum, %struct.objectBuffer_t* %object_list, i32 %picSizeX) #0 {
entry:
  %recfr.addr = alloca %struct.frame*, align 8
  %currMBNum.addr = alloca i32, align 4
  %object_list.addr = alloca %struct.objectBuffer_t*, align 8
  %picSizeX.addr = alloca i32, align 4
  %currRegion = alloca %struct.objectBuffer_t*, align 8
  store %struct.frame* %recfr, %struct.frame** %recfr.addr, align 8
  store i32 %currMBNum, i32* %currMBNum.addr, align 4
  store %struct.objectBuffer_t* %object_list, %struct.objectBuffer_t** %object_list.addr, align 8
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  %0 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %object_list.addr, align 8
  %1 = load i32, i32* %currMBNum.addr, align 4
  %shl = shl i32 %1, 2
  %idx.ext = sext i32 %shl to i64
  %add.ptr = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %0, i64 %idx.ext
  store %struct.objectBuffer_t* %add.ptr, %struct.objectBuffer_t** %currRegion, align 8
  %2 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %regionMode = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %2, i32 0, i32 0
  store i8 0, i8* %regionMode, align 1
  %3 = load i32, i32* %currMBNum.addr, align 4
  %4 = load i32, i32* %picSizeX.addr, align 4
  %shr = ashr i32 %4, 4
  %rem = srem i32 %3, %shr
  %shl1 = shl i32 %rem, 4
  %5 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %xMin = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %5, i32 0, i32 1
  store i32 %shl1, i32* %xMin, align 4
  %6 = load i32, i32* %currMBNum.addr, align 4
  %7 = load i32, i32* %picSizeX.addr, align 4
  %shr2 = ashr i32 %7, 4
  %div = sdiv i32 %6, %shr2
  %shl3 = shl i32 %div, 4
  %8 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** %currRegion, align 8
  %yMin = getelementptr inbounds %struct.objectBuffer_t, %struct.objectBuffer_t* %8, i32 0, i32 2
  store i32 %shl3, i32* %yMin, align 4
  %9 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %10 = load i32, i32* %currMBNum.addr, align 4
  %11 = load i32, i32* %picSizeX.addr, align 4
  %shr4 = ashr i32 %11, 4
  %div5 = sdiv i32 %10, %shr4
  %shl6 = shl i32 %div5, 1
  %add = add nsw i32 %shl6, 0
  %12 = load i32, i32* %picSizeX.addr, align 4
  %shr7 = ashr i32 %12, 3
  %mul = mul nsw i32 %add, %shr7
  %13 = load i32, i32* %currMBNum.addr, align 4
  %14 = load i32, i32* %picSizeX.addr, align 4
  %shr8 = ashr i32 %14, 4
  %rem9 = srem i32 %13, %shr8
  %shl10 = shl i32 %rem9, 1
  %add11 = add nsw i32 %mul, %shl10
  %add12 = add nsw i32 %add11, 0
  %15 = load i32, i32* %picSizeX.addr, align 4
  call void @copyBetweenFrames(%struct.frame* %9, i32 %add12, i32 %15, i32 16)
  ret i32 0
}

declare void @ercMarkCurrMBConcealed(i32, i32, i32, %struct.ercVariables_s*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @conceal_lost_frames(%struct.img_par* %img) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %CurrFrameNum = alloca i32, align 4
  %UnusedShortTermFrameNum = alloca i32, align 4
  %picture = alloca %struct.storable_picture*, align 8
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.storable_picture* null, %struct.storable_picture** %picture, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 61
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %tmp1, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt1 = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 61
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt1, i32 0, i64 1
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %tmp2, align 4
  %4 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt3 = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 61
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt3, i32 0, i64 1
  store i32 0, i32* %arrayidx4, align 4
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt5 = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 61
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt5, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4
  %6 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %IDR_concealment_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 133
  %7 = load i32, i32* %IDR_concealment_flag, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %UnusedShortTermFrameNum, align 4
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %poc_gap = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 129
  %9 = load i32, i32* %poc_gap, align 4
  %sub = sub nsw i32 0, %9
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %last_ref_pic_poc = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 127
  store i32 %sub, i32* %last_ref_pic_poc, align 4
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %earlier_missing_poc = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 131
  store i32 0, i32* %earlier_missing_poc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pre_frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 52
  %13 = load i32, i32* %pre_frame_num, align 4
  %add = add i32 %13, 1
  %14 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MaxFrameNum = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 86
  %15 = load i32, i32* %MaxFrameNum, align 4
  %rem = urem i32 %add, %15
  store i32 %rem, i32* %UnusedShortTermFrameNum, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 56
  %17 = load i32, i32* %frame_num, align 4
  store i32 %17, i32* %CurrFrameNum, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %18 = load i32, i32* %CurrFrameNum, align 4
  %19 = load i32, i32* %UnusedShortTermFrameNum, align 4
  %cmp7 = icmp ne i32 %18, %19
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 11
  %21 = load i32, i32* %width, align 4
  %22 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 12
  %23 = load i32, i32* %height, align 4
  %24 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %24, i32 0, i32 13
  %25 = load i32, i32* %width_cr, align 4
  %26 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 15
  %27 = load i32, i32* %height_cr, align 4
  %call = call %struct.storable_picture* @alloc_storable_picture(i32 0, i32 %21, i32 %23, i32 %25, i32 %27)
  store %struct.storable_picture* %call, %struct.storable_picture** %picture, align 8
  %28 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %coded_frame = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %28, i32 0, i32 28
  store i32 1, i32* %coded_frame, align 4
  %29 = load i32, i32* %UnusedShortTermFrameNum, align 4
  %30 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %30, i32 0, i32 11
  store i32 %29, i32* %pic_num, align 4
  %31 = load i32, i32* %UnusedShortTermFrameNum, align 4
  %32 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %frame_num8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %32, i32 0, i32 9
  store i32 %31, i32* %frame_num8, align 4
  %33 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %non_existing = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 17
  store i32 0, i32* %non_existing, align 4
  %34 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %is_output = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %34, i32 0, i32 16
  store i32 0, i32* %is_output, align 4
  %35 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %used_for_reference = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 15
  store i32 1, i32* %used_for_reference, align 4
  %36 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %concealed_pic = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %36, i32 0, i32 61
  store i32 1, i32* %concealed_pic, align 4
  %37 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 49
  store i32 0, i32* %adaptive_ref_pic_buffering_flag, align 4
  %38 = load i32, i32* %UnusedShortTermFrameNum, align 4
  %39 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num9 = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 56
  store i32 %38, i32* %frame_num9, align 4
  %40 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %last_ref_pic_poc10 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 127
  %41 = load i32, i32* %last_ref_pic_poc10, align 4
  %42 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ref_poc_gap = getelementptr inbounds %struct.img_par, %struct.img_par* %42, i32 0, i32 128
  %43 = load i32, i32* %ref_poc_gap, align 4
  %add11 = add nsw i32 %41, %43
  %44 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %top_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %44, i32 0, i32 2
  store i32 %add11, i32* %top_poc, align 4
  %45 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %top_poc12 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 2
  %46 = load i32, i32* %top_poc12, align 4
  %47 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %bottom_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %47, i32 0, i32 3
  store i32 %46, i32* %bottom_poc, align 4
  %48 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %top_poc13 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %48, i32 0, i32 2
  %49 = load i32, i32* %top_poc13, align 4
  %50 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 4
  store i32 %49, i32* %frame_poc, align 4
  %51 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %top_poc14 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 2
  %52 = load i32, i32* %top_poc14, align 4
  %53 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 1
  store i32 %52, i32* %poc, align 4
  %54 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %poc15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %54, i32 0, i32 1
  %55 = load i32, i32* %poc15, align 4
  %56 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %last_ref_pic_poc16 = getelementptr inbounds %struct.img_par, %struct.img_par* %56, i32 0, i32 127
  store i32 %55, i32* %last_ref_pic_poc16, align 4
  %57 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %58 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @copy_prev_pic_to_concealed_pic(%struct.storable_picture* %57, %struct.img_par* %58)
  %59 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %IDR_concealment_flag17 = getelementptr inbounds %struct.img_par, %struct.img_par* %59, i32 0, i32 133
  %60 = load i32, i32* %IDR_concealment_flag17, align 4
  %cmp18 = icmp eq i32 %60, 1
  br i1 %cmp18, label %if.then.19, label %if.end.29

if.then.19:                                       ; preds = %while.body
  %61 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %slice_type = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %61, i32 0, i32 45
  store i32 2, i32* %slice_type, align 4
  %62 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %idr_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %62, i32 0, i32 46
  store i32 1, i32* %idr_flag, align 4
  call void @flush_dpb()
  %63 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %top_poc20 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 2
  store i32 0, i32* %top_poc20, align 4
  %64 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %top_poc21 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %64, i32 0, i32 2
  %65 = load i32, i32* %top_poc21, align 4
  %66 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %bottom_poc22 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %66, i32 0, i32 3
  store i32 %65, i32* %bottom_poc22, align 4
  %67 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %top_poc23 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 2
  %68 = load i32, i32* %top_poc23, align 4
  %69 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %frame_poc24 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %69, i32 0, i32 4
  store i32 %68, i32* %frame_poc24, align 4
  %70 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %top_poc25 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %70, i32 0, i32 2
  %71 = load i32, i32* %top_poc25, align 4
  %72 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %poc26 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 1
  store i32 %71, i32* %poc26, align 4
  %73 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %poc27 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %73, i32 0, i32 1
  %74 = load i32, i32* %poc27, align 4
  %75 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %last_ref_pic_poc28 = getelementptr inbounds %struct.img_par, %struct.img_par* %75, i32 0, i32 127
  store i32 %74, i32* %last_ref_pic_poc28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.19, %while.body
  %76 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %76)
  store %struct.storable_picture* null, %struct.storable_picture** %picture, align 8
  %77 = load i32, i32* %UnusedShortTermFrameNum, align 4
  %78 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pre_frame_num30 = getelementptr inbounds %struct.img_par, %struct.img_par* %78, i32 0, i32 52
  store i32 %77, i32* %pre_frame_num30, align 4
  %79 = load i32, i32* %UnusedShortTermFrameNum, align 4
  %add31 = add nsw i32 %79, 1
  %80 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MaxFrameNum32 = getelementptr inbounds %struct.img_par, %struct.img_par* %80, i32 0, i32 86
  %81 = load i32, i32* %MaxFrameNum32, align 4
  %rem33 = srem i32 %add31, %81
  store i32 %rem33, i32* %UnusedShortTermFrameNum, align 4
  store i32 16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %82 = load i32, i32* %i, align 4
  %cmp34 = icmp sgt i32 %82, 0
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load i32, i32* %i, align 4
  %sub35 = sub nsw i32 %83, 1
  %idxprom = sext i32 %sub35 to i64
  %arrayidx36 = getelementptr inbounds [17 x i32], [17 x i32]* @ref_flag, i32 0, i64 %idxprom
  %84 = load i32, i32* %arrayidx36, align 4
  %85 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %85 to i64
  %arrayidx38 = getelementptr inbounds [17 x i32], [17 x i32]* @ref_flag, i32 0, i64 %idxprom37
  store i32 %84, i32* %arrayidx38, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %86 = load i32, i32* %i, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @ref_flag, i32 0, i64 0), align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %87 = load i32, i32* %tmp1, align 4
  %88 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt39 = getelementptr inbounds %struct.img_par, %struct.img_par* %88, i32 0, i32 61
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt39, i32 0, i64 0
  store i32 %87, i32* %arrayidx40, align 4
  %89 = load i32, i32* %tmp2, align 4
  %90 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt41 = getelementptr inbounds %struct.img_par, %struct.img_par* %90, i32 0, i32 61
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt41, i32 0, i64 1
  store i32 %89, i32* %arrayidx42, align 4
  %91 = load i32, i32* %CurrFrameNum, align 4
  %92 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num43 = getelementptr inbounds %struct.img_par, %struct.img_par* %92, i32 0, i32 56
  store i32 %91, i32* %frame_num43, align 4
  ret void
}

declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @copy_prev_pic_to_concealed_pic(%struct.storable_picture* %picture, %struct.img_par* %img) #0 {
entry:
  %picture.addr = alloca %struct.storable_picture*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %ref_pic = alloca %struct.storable_picture*, align 8
  store %struct.storable_picture* %picture, %struct.storable_picture** %picture.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call %struct.storable_picture* @get_last_ref_pic_from_dpb()
  store %struct.storable_picture* %call, %struct.storable_picture** %ref_pic, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %conceal_slice_type = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 134
  store i32 0, i32* %conceal_slice_type, align 4
  %1 = load %struct.storable_picture*, %struct.storable_picture** %ref_pic, align 8
  %2 = load %struct.storable_picture*, %struct.storable_picture** %picture.addr, align 8
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @copy_to_conceal(%struct.storable_picture* %1, %struct.storable_picture* %2, %struct.img_par* %3)
  ret void
}

declare void @flush_dpb() #2

declare void @store_picture_in_dpb(%struct.storable_picture*) #2

; Function Attrs: nounwind uwtable
define void @update_ref_list_for_concealment() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %3, i64 %idxprom
  %4 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %concealment_reference = getelementptr inbounds %struct.frame_store, %struct.frame_store* %4, i32 0, i32 11
  %5 = load i32, i32* %concealment_reference, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %6 to i64
  %7 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx2 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %7, i64 %idxprom1
  %8 = load %struct.frame_store*, %struct.frame_store** %arrayidx2, align 8
  %9 = load i32, i32* %j, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %j, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx4 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %10, i64 %idxprom3
  store %struct.frame_store* %8, %struct.frame_store** %arrayidx4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %12, i32 0, i32 21
  %13 = load i32, i32* %num_ref_idx_l0_active_minus1, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_lists_for_non_reference_loss(i32 %currSliceType, i32 %currPicStructure) #0 {
entry:
  %currSliceType.addr = alloca i32, align 4
  %currPicStructure.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %MaxFrameNum = alloca i32, align 4
  %diff = alloca i32, align 4
  %list0idx = alloca i32, align 4
  %list0idx_1 = alloca i32, align 4
  %tmp_s = alloca %struct.storable_picture*, align 8
  store i32 %currSliceType, i32* %currSliceType.addr, align 4
  store i32 %currPicStructure, i32* %currPicStructure.addr, align 4
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 17
  %1 = load i32, i32* %log2_max_frame_num_minus4, align 4
  %add = add i32 %1, 4
  %shl = shl i32 1, %add
  store i32 %shl, i32* %MaxFrameNum, align 4
  store i32 0, i32* %list0idx, align 4
  store i32 0, i32* %list0idx_1, align 4
  %2 = load i32, i32* %currPicStructure.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  %cmp1 = icmp ult i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %6, i64 %idxprom
  %7 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %concealment_reference = getelementptr inbounds %struct.frame_store, %struct.frame_store* %7, i32 0, i32 11
  %8 = load i32, i32* %concealment_reference, align 4
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then.3, label %if.end.24

if.then.3:                                        ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %9 to i64
  %10 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx5 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %10, i64 %idxprom4
  %11 = load %struct.frame_store*, %struct.frame_store** %arrayidx5, align 8
  %frame_num = getelementptr inbounds %struct.frame_store, %struct.frame_store* %11, i32 0, i32 5
  %12 = load i32, i32* %frame_num, align 4
  %13 = load %struct.img_par*, %struct.img_par** @img, align 8
  %frame_to_conceal = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 132
  %14 = load i32, i32* %frame_to_conceal, align 4
  %cmp6 = icmp ugt i32 %12, %14
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.3
  %15 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %15 to i64
  %16 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx9 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %16, i64 %idxprom8
  %17 = load %struct.frame_store*, %struct.frame_store** %arrayidx9, align 8
  %frame_num10 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %17, i32 0, i32 5
  %18 = load i32, i32* %frame_num10, align 4
  %19 = load i32, i32* %MaxFrameNum, align 4
  %sub = sub i32 %18, %19
  %20 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %20 to i64
  %21 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx12 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %21, i64 %idxprom11
  %22 = load %struct.frame_store*, %struct.frame_store** %arrayidx12, align 8
  %frame_num_wrap = getelementptr inbounds %struct.frame_store, %struct.frame_store* %22, i32 0, i32 7
  store i32 %sub, i32* %frame_num_wrap, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %23 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %23 to i64
  %24 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx14 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %24, i64 %idxprom13
  %25 = load %struct.frame_store*, %struct.frame_store** %arrayidx14, align 8
  %frame_num15 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %25, i32 0, i32 5
  %26 = load i32, i32* %frame_num15, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %27 to i64
  %28 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx17 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %28, i64 %idxprom16
  %29 = load %struct.frame_store*, %struct.frame_store** %arrayidx17, align 8
  %frame_num_wrap18 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %29, i32 0, i32 7
  store i32 %26, i32* %frame_num_wrap18, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %30 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %30 to i64
  %31 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx20 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %31, i64 %idxprom19
  %32 = load %struct.frame_store*, %struct.frame_store** %arrayidx20, align 8
  %frame_num_wrap21 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %32, i32 0, i32 7
  %33 = load i32, i32* %frame_num_wrap21, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %34 to i64
  %35 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx23 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %35, i64 %idxprom22
  %36 = load %struct.frame_store*, %struct.frame_store** %arrayidx23, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %36, i32 0, i32 12
  %37 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 11
  store i32 %33, i32* %pic_num, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %38 = load i32, i32* %i, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %entry
  %39 = load i32, i32* %currSliceType.addr, align 4
  %cmp26 = icmp eq i32 %39, 0
  br i1 %cmp26, label %if.then.27, label %if.end.49

if.then.27:                                       ; preds = %if.end.25
  %40 = load i32, i32* %currPicStructure.addr, align 4
  %cmp28 = icmp eq i32 %40, 0
  br i1 %cmp28, label %if.then.29, label %if.end.48

if.then.29:                                       ; preds = %if.then.27
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.45, %if.then.29
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp31 = icmp ult i32 %41, %42
  br i1 %cmp31, label %for.body.32, label %for.end.47

for.body.32:                                      ; preds = %for.cond.30
  %43 = load i32, i32* %i, align 4
  %idxprom33 = zext i32 %43 to i64
  %44 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx34 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %44, i64 %idxprom33
  %45 = load %struct.frame_store*, %struct.frame_store** %arrayidx34, align 8
  %concealment_reference35 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %45, i32 0, i32 11
  %46 = load i32, i32* %concealment_reference35, align 4
  %cmp36 = icmp eq i32 %46, 1
  br i1 %cmp36, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %for.body.32
  %47 = load i32, i32* %i, align 4
  %idxprom38 = zext i32 %47 to i64
  %48 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx39 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %48, i64 %idxprom38
  %49 = load %struct.frame_store*, %struct.frame_store** %arrayidx39, align 8
  %frame40 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %49, i32 0, i32 12
  %50 = load %struct.storable_picture*, %struct.storable_picture** %frame40, align 8
  %51 = load i32, i32* %list0idx, align 4
  %inc41 = add nsw i32 %51, 1
  store i32 %inc41, i32* %list0idx, align 4
  %idxprom42 = sext i32 %51 to i64
  %52 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx43 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %52, i64 %idxprom42
  store %struct.storable_picture* %50, %struct.storable_picture** %arrayidx43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %for.body.32
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %53 = load i32, i32* %i, align 4
  %inc46 = add i32 %53, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.30

for.end.47:                                       ; preds = %for.cond.30
  %54 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %55 = bitcast %struct.storable_picture** %54 to i8*
  %56 = load i32, i32* %list0idx, align 4
  %conv = sext i32 %56 to i64
  call void @qsort(i8* %55, i64 %conv, i64 8, i32 (i8*, i8*)* @compare_pic_by_pic_num_desc)
  %57 = load i32, i32* %list0idx, align 4
  store i32 %57, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %if.then.27
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.25
  %58 = load i32, i32* %currSliceType.addr, align 4
  %cmp50 = icmp eq i32 %58, 1
  br i1 %cmp50, label %if.then.52, label %if.end.151

if.then.52:                                       ; preds = %if.end.49
  %59 = load i32, i32* %currPicStructure.addr, align 4
  %cmp53 = icmp eq i32 %59, 0
  br i1 %cmp53, label %if.then.55, label %if.end.150

if.then.55:                                       ; preds = %if.then.52
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.80, %if.then.55
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp57 = icmp ult i32 %60, %61
  br i1 %cmp57, label %for.body.59, label %for.end.82

for.body.59:                                      ; preds = %for.cond.56
  %62 = load i32, i32* %i, align 4
  %idxprom60 = zext i32 %62 to i64
  %63 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx61 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %63, i64 %idxprom60
  %64 = load %struct.frame_store*, %struct.frame_store** %arrayidx61, align 8
  %concealment_reference62 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %64, i32 0, i32 11
  %65 = load i32, i32* %concealment_reference62, align 4
  %cmp63 = icmp eq i32 %65, 1
  br i1 %cmp63, label %if.then.65, label %if.end.79

if.then.65:                                       ; preds = %for.body.59
  %66 = load %struct.img_par*, %struct.img_par** @img, align 8
  %earlier_missing_poc = getelementptr inbounds %struct.img_par, %struct.img_par* %66, i32 0, i32 131
  %67 = load i32, i32* %earlier_missing_poc, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom66 = zext i32 %68 to i64
  %69 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx67 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %69, i64 %idxprom66
  %70 = load %struct.frame_store*, %struct.frame_store** %arrayidx67, align 8
  %frame68 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %70, i32 0, i32 12
  %71 = load %struct.storable_picture*, %struct.storable_picture** %frame68, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 1
  %72 = load i32, i32* %poc, align 4
  %cmp69 = icmp sgt i32 %67, %72
  br i1 %cmp69, label %if.then.71, label %if.end.78

if.then.71:                                       ; preds = %if.then.65
  %73 = load i32, i32* %i, align 4
  %idxprom72 = zext i32 %73 to i64
  %74 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx73 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %74, i64 %idxprom72
  %75 = load %struct.frame_store*, %struct.frame_store** %arrayidx73, align 8
  %frame74 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %75, i32 0, i32 12
  %76 = load %struct.storable_picture*, %struct.storable_picture** %frame74, align 8
  %77 = load i32, i32* %list0idx, align 4
  %inc75 = add nsw i32 %77, 1
  store i32 %inc75, i32* %list0idx, align 4
  %idxprom76 = sext i32 %77 to i64
  %78 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx77 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %78, i64 %idxprom76
  store %struct.storable_picture* %76, %struct.storable_picture** %arrayidx77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.71, %if.then.65
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %for.body.59
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %79 = load i32, i32* %i, align 4
  %inc81 = add i32 %79, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.56

for.end.82:                                       ; preds = %for.cond.56
  %80 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %81 = bitcast %struct.storable_picture** %80 to i8*
  %82 = load i32, i32* %list0idx, align 4
  %conv83 = sext i32 %82 to i64
  call void @qsort(i8* %81, i64 %conv83, i64 8, i32 (i8*, i8*)* @compare_pic_by_poc_desc)
  %83 = load i32, i32* %list0idx, align 4
  store i32 %83, i32* %list0idx_1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.110, %for.end.82
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp85 = icmp ult i32 %84, %85
  br i1 %cmp85, label %for.body.87, label %for.end.112

for.body.87:                                      ; preds = %for.cond.84
  %86 = load i32, i32* %i, align 4
  %idxprom88 = zext i32 %86 to i64
  %87 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx89 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %87, i64 %idxprom88
  %88 = load %struct.frame_store*, %struct.frame_store** %arrayidx89, align 8
  %concealment_reference90 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %88, i32 0, i32 11
  %89 = load i32, i32* %concealment_reference90, align 4
  %cmp91 = icmp eq i32 %89, 1
  br i1 %cmp91, label %if.then.93, label %if.end.109

if.then.93:                                       ; preds = %for.body.87
  %90 = load %struct.img_par*, %struct.img_par** @img, align 8
  %earlier_missing_poc94 = getelementptr inbounds %struct.img_par, %struct.img_par* %90, i32 0, i32 131
  %91 = load i32, i32* %earlier_missing_poc94, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom95 = zext i32 %92 to i64
  %93 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx96 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %93, i64 %idxprom95
  %94 = load %struct.frame_store*, %struct.frame_store** %arrayidx96, align 8
  %frame97 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %94, i32 0, i32 12
  %95 = load %struct.storable_picture*, %struct.storable_picture** %frame97, align 8
  %poc98 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %95, i32 0, i32 1
  %96 = load i32, i32* %poc98, align 4
  %cmp99 = icmp slt i32 %91, %96
  br i1 %cmp99, label %if.then.101, label %if.end.108

if.then.101:                                      ; preds = %if.then.93
  %97 = load i32, i32* %i, align 4
  %idxprom102 = zext i32 %97 to i64
  %98 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx103 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %98, i64 %idxprom102
  %99 = load %struct.frame_store*, %struct.frame_store** %arrayidx103, align 8
  %frame104 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %99, i32 0, i32 12
  %100 = load %struct.storable_picture*, %struct.storable_picture** %frame104, align 8
  %101 = load i32, i32* %list0idx, align 4
  %inc105 = add nsw i32 %101, 1
  store i32 %inc105, i32* %list0idx, align 4
  %idxprom106 = sext i32 %101 to i64
  %102 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx107 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %102, i64 %idxprom106
  store %struct.storable_picture* %100, %struct.storable_picture** %arrayidx107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.101, %if.then.93
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %for.body.87
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %103 = load i32, i32* %i, align 4
  %inc111 = add i32 %103, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.84

for.end.112:                                      ; preds = %for.cond.84
  %104 = load i32, i32* %list0idx_1, align 4
  %idxprom113 = sext i32 %104 to i64
  %105 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx114 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %105, i64 %idxprom113
  %106 = bitcast %struct.storable_picture** %arrayidx114 to i8*
  %107 = load i32, i32* %list0idx, align 4
  %108 = load i32, i32* %list0idx_1, align 4
  %sub115 = sub nsw i32 %107, %108
  %conv116 = sext i32 %sub115 to i64
  call void @qsort(i8* %106, i64 %conv116, i64 8, i32 (i8*, i8*)* @compare_pic_by_poc_asc)
  store i32 0, i32* %j, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.127, %for.end.112
  %109 = load i32, i32* %j, align 4
  %110 = load i32, i32* %list0idx_1, align 4
  %cmp118 = icmp slt i32 %109, %110
  br i1 %cmp118, label %for.body.120, label %for.end.129

for.body.120:                                     ; preds = %for.cond.117
  %111 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %111 to i64
  %112 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx122 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %112, i64 %idxprom121
  %113 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx122, align 8
  %114 = load i32, i32* %list0idx, align 4
  %115 = load i32, i32* %list0idx_1, align 4
  %sub123 = sub nsw i32 %114, %115
  %116 = load i32, i32* %j, align 4
  %add124 = add nsw i32 %sub123, %116
  %idxprom125 = sext i32 %add124 to i64
  %117 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx126 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %117, i64 %idxprom125
  store %struct.storable_picture* %113, %struct.storable_picture** %arrayidx126, align 8
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.120
  %118 = load i32, i32* %j, align 4
  %inc128 = add nsw i32 %118, 1
  store i32 %inc128, i32* %j, align 4
  br label %for.cond.117

for.end.129:                                      ; preds = %for.cond.117
  %119 = load i32, i32* %list0idx_1, align 4
  store i32 %119, i32* %j, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.139, %for.end.129
  %120 = load i32, i32* %j, align 4
  %121 = load i32, i32* %list0idx, align 4
  %cmp131 = icmp slt i32 %120, %121
  br i1 %cmp131, label %for.body.133, label %for.end.141

for.body.133:                                     ; preds = %for.cond.130
  %122 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %122 to i64
  %123 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx135 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %123, i64 %idxprom134
  %124 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx135, align 8
  %125 = load i32, i32* %j, align 4
  %126 = load i32, i32* %list0idx_1, align 4
  %sub136 = sub nsw i32 %125, %126
  %idxprom137 = sext i32 %sub136 to i64
  %127 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx138 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %127, i64 %idxprom137
  store %struct.storable_picture* %124, %struct.storable_picture** %arrayidx138, align 8
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.133
  %128 = load i32, i32* %j, align 4
  %inc140 = add nsw i32 %128, 1
  store i32 %inc140, i32* %j, align 4
  br label %for.cond.130

for.end.141:                                      ; preds = %for.cond.130
  %129 = load i32, i32* %list0idx, align 4
  store i32 %129, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  store i32 %129, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %130 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %idxprom142 = sext i32 %130 to i64
  %131 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx143 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %131, i64 %idxprom142
  %132 = bitcast %struct.storable_picture** %arrayidx143 to i8*
  %133 = load i32, i32* %list0idx, align 4
  %134 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %sub144 = sub nsw i32 %133, %134
  %conv145 = sext i32 %sub144 to i64
  call void @qsort(i8* %132, i64 %conv145, i64 8, i32 (i8*, i8*)* @compare_pic_by_lt_pic_num_asc)
  %135 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %idxprom146 = sext i32 %135 to i64
  %136 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx147 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %136, i64 %idxprom146
  %137 = bitcast %struct.storable_picture** %arrayidx147 to i8*
  %138 = load i32, i32* %list0idx, align 4
  %139 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %sub148 = sub nsw i32 %138, %139
  %conv149 = sext i32 %sub148 to i64
  call void @qsort(i8* %137, i64 %conv149, i64 8, i32 (i8*, i8*)* @compare_pic_by_lt_pic_num_asc)
  %140 = load i32, i32* %list0idx, align 4
  store i32 %140, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  store i32 %140, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  br label %if.end.150

if.end.150:                                       ; preds = %for.end.141, %if.then.52
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.49
  %141 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %142 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp152 = icmp eq i32 %141, %142
  br i1 %cmp152, label %land.lhs.true, label %if.end.178

land.lhs.true:                                    ; preds = %if.end.151
  %143 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp154 = icmp sgt i32 %143, 1
  br i1 %cmp154, label %if.then.156, label %if.end.178

if.then.156:                                      ; preds = %land.lhs.true
  store i32 0, i32* %diff, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.169, %if.then.156
  %144 = load i32, i32* %j, align 4
  %145 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp158 = icmp slt i32 %144, %145
  br i1 %cmp158, label %for.body.160, label %for.end.171

for.body.160:                                     ; preds = %for.cond.157
  %146 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %146 to i64
  %147 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx162 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %147, i64 %idxprom161
  %148 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx162, align 8
  %149 = load i32, i32* %j, align 4
  %idxprom163 = sext i32 %149 to i64
  %150 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx164 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %150, i64 %idxprom163
  %151 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx164, align 8
  %cmp165 = icmp ne %struct.storable_picture* %148, %151
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %for.body.160
  store i32 1, i32* %diff, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %for.body.160
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %152 = load i32, i32* %j, align 4
  %inc170 = add nsw i32 %152, 1
  store i32 %inc170, i32* %j, align 4
  br label %for.cond.157

for.end.171:                                      ; preds = %for.cond.157
  %153 = load i32, i32* %diff, align 4
  %tobool = icmp ne i32 %153, 0
  br i1 %tobool, label %if.end.177, label %if.then.172

if.then.172:                                      ; preds = %for.end.171
  %154 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx173 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %154, i64 0
  %155 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx173, align 8
  store %struct.storable_picture* %155, %struct.storable_picture** %tmp_s, align 8
  %156 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx174 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %156, i64 1
  %157 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx174, align 8
  %158 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx175 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %158, i64 0
  store %struct.storable_picture* %157, %struct.storable_picture** %arrayidx175, align 8
  %159 = load %struct.storable_picture*, %struct.storable_picture** %tmp_s, align 8
  %160 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx176 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %160, i64 1
  store %struct.storable_picture* %159, %struct.storable_picture** %arrayidx176, align 8
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.172, %for.end.171
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %land.lhs.true, %if.end.151
  %161 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %162 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %162, i32 0, i32 25
  %163 = load i32, i32* %num_ref_frames, align 4
  %call = call i32 @imin(i32 %161, i32 %163)
  store i32 %call, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %164 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %165 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames179 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %165, i32 0, i32 25
  %166 = load i32, i32* %num_ref_frames179, align 4
  %call180 = call i32 @imin(i32 %164, i32 %166)
  store i32 %call180, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  store i32 0, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %167 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  store i32 %167, i32* %i, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.187, %if.end.178
  %168 = load i32, i32* %i, align 4
  %cmp182 = icmp ult i32 %168, 33
  br i1 %cmp182, label %for.body.184, label %for.end.189

for.body.184:                                     ; preds = %for.cond.181
  %169 = load i32, i32* %i, align 4
  %idxprom185 = zext i32 %169 to i64
  %170 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx186 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %170, i64 %idxprom185
  store %struct.storable_picture* null, %struct.storable_picture** %arrayidx186, align 8
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.184
  %171 = load i32, i32* %i, align 4
  %inc188 = add i32 %171, 1
  store i32 %inc188, i32* %i, align 4
  br label %for.cond.181

for.end.189:                                      ; preds = %for.cond.181
  %172 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  store i32 %172, i32* %i, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.196, %for.end.189
  %173 = load i32, i32* %i, align 4
  %cmp191 = icmp ult i32 %173, 33
  br i1 %cmp191, label %for.body.193, label %for.end.198

for.body.193:                                     ; preds = %for.cond.190
  %174 = load i32, i32* %i, align 4
  %idxprom194 = zext i32 %174 to i64
  %175 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx195 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %175, i64 %idxprom194
  store %struct.storable_picture* null, %struct.storable_picture** %arrayidx195, align 8
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.193
  %176 = load i32, i32* %i, align 4
  %inc197 = add i32 %176, 1
  store i32 %inc197, i32* %i, align 4
  br label %for.cond.190

for.end.198:                                      ; preds = %for.cond.190
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @compare_pic_by_pic_num_desc(i8* %arg1, i8* %arg2) #0 {
entry:
  %retval = alloca i32, align 4
  %arg1.addr = alloca i8*, align 8
  %arg2.addr = alloca i8*, align 8
  store i8* %arg1, i8** %arg1.addr, align 8
  store i8* %arg2, i8** %arg2.addr, align 8
  %0 = load i8*, i8** %arg1.addr, align 8
  %1 = bitcast i8* %0 to %struct.storable_picture**
  %2 = load %struct.storable_picture*, %struct.storable_picture** %1, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 11
  %3 = load i32, i32* %pic_num, align 4
  %4 = load i8*, i8** %arg2.addr, align 8
  %5 = bitcast i8* %4 to %struct.storable_picture**
  %6 = load %struct.storable_picture*, %struct.storable_picture** %5, align 8
  %pic_num1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 11
  %7 = load i32, i32* %pic_num1, align 4
  %cmp = icmp slt i32 %3, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %arg1.addr, align 8
  %9 = bitcast i8* %8 to %struct.storable_picture**
  %10 = load %struct.storable_picture*, %struct.storable_picture** %9, align 8
  %pic_num2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 11
  %11 = load i32, i32* %pic_num2, align 4
  %12 = load i8*, i8** %arg2.addr, align 8
  %13 = bitcast i8* %12 to %struct.storable_picture**
  %14 = load %struct.storable_picture*, %struct.storable_picture** %13, align 8
  %pic_num3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 11
  %15 = load i32, i32* %pic_num3, align 4
  %cmp4 = icmp sgt i32 %11, %15
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_pic_by_poc_desc(i8* %arg1, i8* %arg2) #0 {
entry:
  %retval = alloca i32, align 4
  %arg1.addr = alloca i8*, align 8
  %arg2.addr = alloca i8*, align 8
  store i8* %arg1, i8** %arg1.addr, align 8
  store i8* %arg2, i8** %arg2.addr, align 8
  %0 = load i8*, i8** %arg1.addr, align 8
  %1 = bitcast i8* %0 to %struct.storable_picture**
  %2 = load %struct.storable_picture*, %struct.storable_picture** %1, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 1
  %3 = load i32, i32* %poc, align 4
  %4 = load i8*, i8** %arg2.addr, align 8
  %5 = bitcast i8* %4 to %struct.storable_picture**
  %6 = load %struct.storable_picture*, %struct.storable_picture** %5, align 8
  %poc1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 1
  %7 = load i32, i32* %poc1, align 4
  %cmp = icmp slt i32 %3, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %arg1.addr, align 8
  %9 = bitcast i8* %8 to %struct.storable_picture**
  %10 = load %struct.storable_picture*, %struct.storable_picture** %9, align 8
  %poc2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 1
  %11 = load i32, i32* %poc2, align 4
  %12 = load i8*, i8** %arg2.addr, align 8
  %13 = bitcast i8* %12 to %struct.storable_picture**
  %14 = load %struct.storable_picture*, %struct.storable_picture** %13, align 8
  %poc3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 1
  %15 = load i32, i32* %poc3, align 4
  %cmp4 = icmp sgt i32 %11, %15
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_pic_by_poc_asc(i8* %arg1, i8* %arg2) #0 {
entry:
  %retval = alloca i32, align 4
  %arg1.addr = alloca i8*, align 8
  %arg2.addr = alloca i8*, align 8
  store i8* %arg1, i8** %arg1.addr, align 8
  store i8* %arg2, i8** %arg2.addr, align 8
  %0 = load i8*, i8** %arg1.addr, align 8
  %1 = bitcast i8* %0 to %struct.storable_picture**
  %2 = load %struct.storable_picture*, %struct.storable_picture** %1, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 1
  %3 = load i32, i32* %poc, align 4
  %4 = load i8*, i8** %arg2.addr, align 8
  %5 = bitcast i8* %4 to %struct.storable_picture**
  %6 = load %struct.storable_picture*, %struct.storable_picture** %5, align 8
  %poc1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 1
  %7 = load i32, i32* %poc1, align 4
  %cmp = icmp slt i32 %3, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %arg1.addr, align 8
  %9 = bitcast i8* %8 to %struct.storable_picture**
  %10 = load %struct.storable_picture*, %struct.storable_picture** %9, align 8
  %poc2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 1
  %11 = load i32, i32* %poc2, align 4
  %12 = load i8*, i8** %arg2.addr, align 8
  %13 = bitcast i8* %12 to %struct.storable_picture**
  %14 = load %struct.storable_picture*, %struct.storable_picture** %13, align 8
  %poc3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 1
  %15 = load i32, i32* %poc3, align 4
  %cmp4 = icmp sgt i32 %11, %15
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_pic_by_lt_pic_num_asc(i8* %arg1, i8* %arg2) #0 {
entry:
  %retval = alloca i32, align 4
  %arg1.addr = alloca i8*, align 8
  %arg2.addr = alloca i8*, align 8
  store i8* %arg1, i8** %arg1.addr, align 8
  store i8* %arg2, i8** %arg2.addr, align 8
  %0 = load i8*, i8** %arg1.addr, align 8
  %1 = bitcast i8* %0 to %struct.storable_picture**
  %2 = load %struct.storable_picture*, %struct.storable_picture** %1, align 8
  %long_term_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 12
  %3 = load i32, i32* %long_term_pic_num, align 4
  %4 = load i8*, i8** %arg2.addr, align 8
  %5 = bitcast i8* %4 to %struct.storable_picture**
  %6 = load %struct.storable_picture*, %struct.storable_picture** %5, align 8
  %long_term_pic_num1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 12
  %7 = load i32, i32* %long_term_pic_num1, align 4
  %cmp = icmp slt i32 %3, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %arg1.addr, align 8
  %9 = bitcast i8* %8 to %struct.storable_picture**
  %10 = load %struct.storable_picture*, %struct.storable_picture** %9, align 8
  %long_term_pic_num2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 12
  %11 = load i32, i32* %long_term_pic_num2, align 4
  %12 = load i8*, i8** %arg2.addr, align 8
  %13 = bitcast i8* %12 to %struct.storable_picture**
  %14 = load %struct.storable_picture*, %struct.storable_picture** %13, align 8
  %long_term_pic_num3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 12
  %15 = load i32, i32* %long_term_pic_num3, align 4
  %cmp4 = icmp sgt i32 %11, %15
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
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

; Function Attrs: nounwind uwtable
define %struct.storable_picture* @get_pic_from_dpb(i32 %missingpoc, i32* %pos) #0 {
entry:
  %retval = alloca %struct.storable_picture*, align 8
  %missingpoc.addr = alloca i32, align 4
  %pos.addr = alloca i32*, align 8
  %used_size = alloca i32, align 4
  %i = alloca i32, align 4
  %concealfrom = alloca i32, align 4
  store i32 %missingpoc, i32* %missingpoc.addr, align 4
  store i32* %pos, i32** %pos.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %sub = sub i32 %0, 1
  store i32 %sub, i32* %used_size, align 4
  store i32 0, i32* %concealfrom, align 4
  %1 = load %struct.img_par*, %struct.img_par** @img, align 8
  %conceal_mode = getelementptr inbounds %struct.img_par, %struct.img_par* %1, i32 0, i32 130
  %2 = load i32, i32* %conceal_mode, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %missingpoc.addr, align 4
  %4 = load %struct.img_par*, %struct.img_par** @img, align 8
  %poc_gap = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 129
  %5 = load i32, i32* %poc_gap, align 4
  %sub1 = sub nsw i32 %3, %5
  store i32 %sub1, i32* %concealfrom, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %6 = load %struct.img_par*, %struct.img_par** @img, align 8
  %conceal_mode2 = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 130
  %7 = load i32, i32* %conceal_mode2, align 4
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load i32, i32* %missingpoc.addr, align 4
  %9 = load %struct.img_par*, %struct.img_par** @img, align 8
  %poc_gap5 = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 129
  %10 = load i32, i32* %poc_gap5, align 4
  %add = add nsw i32 %8, %10
  store i32 %add, i32* %concealfrom, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %used_size, align 4
  store i32 %11, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %12 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %12, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %14, i64 %idxprom
  %15 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %poc = getelementptr inbounds %struct.frame_store, %struct.frame_store* %15, i32 0, i32 10
  %16 = load i32, i32* %poc, align 4
  %17 = load i32, i32* %concealfrom, align 4
  %cmp8 = icmp eq i32 %16, %17
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %19 = load i32*, i32** %pos.addr, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx11 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %21, i64 %idxprom10
  %22 = load %struct.frame_store*, %struct.frame_store** %arrayidx11, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %22, i32 0, i32 12
  %23 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  store %struct.storable_picture* %23, %struct.storable_picture** %retval
  br label %return

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %24 = load i32, i32* %i, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.storable_picture* null, %struct.storable_picture** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9
  %25 = load %struct.storable_picture*, %struct.storable_picture** %retval
  ret %struct.storable_picture* %25
}

; Function Attrs: nounwind uwtable
define i32 @comp(i8* %i, i8* %j) #0 {
entry:
  %i.addr = alloca i8*, align 8
  %j.addr = alloca i8*, align 8
  store i8* %i, i8** %i.addr, align 8
  store i8* %j, i8** %j.addr, align 8
  %0 = load i8*, i8** %i.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %3 = load i8*, i8** %j.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %sub = sub nsw i32 %2, %5
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define %struct.concealment_node* @init_node(%struct.storable_picture* %picture, i32 %missingpoc) #0 {
entry:
  %retval = alloca %struct.concealment_node*, align 8
  %picture.addr = alloca %struct.storable_picture*, align 8
  %missingpoc.addr = alloca i32, align 4
  %ptr = alloca %struct.concealment_node*, align 8
  store %struct.storable_picture* %picture, %struct.storable_picture** %picture.addr, align 8
  store i32 %missingpoc, i32* %missingpoc.addr, align 4
  %call = call noalias i8* @calloc(i64 1, i64 24) #4
  %0 = bitcast i8* %call to %struct.concealment_node*
  store %struct.concealment_node* %0, %struct.concealment_node** %ptr, align 8
  %1 = load %struct.concealment_node*, %struct.concealment_node** %ptr, align 8
  %cmp = icmp eq %struct.concealment_node* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.concealment_node* null, %struct.concealment_node** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.storable_picture*, %struct.storable_picture** %picture.addr, align 8
  %3 = load %struct.concealment_node*, %struct.concealment_node** %ptr, align 8
  %picture1 = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %3, i32 0, i32 0
  store %struct.storable_picture* %2, %struct.storable_picture** %picture1, align 8
  %4 = load i32, i32* %missingpoc.addr, align 4
  %5 = load %struct.concealment_node*, %struct.concealment_node** %ptr, align 8
  %missingpocs = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %5, i32 0, i32 1
  store i32 %4, i32* %missingpocs, align 4
  %6 = load %struct.concealment_node*, %struct.concealment_node** %ptr, align 8
  %next = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %6, i32 0, i32 2
  store %struct.concealment_node* null, %struct.concealment_node** %next, align 8
  %7 = load %struct.concealment_node*, %struct.concealment_node** %ptr, align 8
  store %struct.concealment_node* %7, %struct.concealment_node** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load %struct.concealment_node*, %struct.concealment_node** %retval
  ret %struct.concealment_node* %8
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @print_node(%struct.concealment_node* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.concealment_node*, align 8
  store %struct.concealment_node* %ptr, %struct.concealment_node** %ptr.addr, align 8
  %0 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %missingpocs = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %0, i32 0, i32 1
  %1 = load i32, i32* %missingpocs, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 %1)
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @print_list(%struct.concealment_node* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.concealment_node*, align 8
  store %struct.concealment_node* %ptr, %struct.concealment_node** %ptr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %cmp = icmp ne %struct.concealment_node* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  call void @print_node(%struct.concealment_node* %1)
  %2 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %next = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %2, i32 0, i32 2
  %3 = load %struct.concealment_node*, %struct.concealment_node** %next, align 8
  store %struct.concealment_node* %3, %struct.concealment_node** %ptr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_node(%struct.concealment_node* %concealment_new) #0 {
entry:
  %concealment_new.addr = alloca %struct.concealment_node*, align 8
  store %struct.concealment_node* %concealment_new, %struct.concealment_node** %concealment_new.addr, align 8
  %0 = load %struct.concealment_node*, %struct.concealment_node** @concealment_head, align 8
  %cmp = icmp eq %struct.concealment_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.concealment_node*, %struct.concealment_node** %concealment_new.addr, align 8
  store %struct.concealment_node* %1, %struct.concealment_node** @concealment_head, align 8
  store %struct.concealment_node* %1, %struct.concealment_node** @concealment_end, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.concealment_node*, %struct.concealment_node** %concealment_new.addr, align 8
  %3 = load %struct.concealment_node*, %struct.concealment_node** @concealment_end, align 8
  %next = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %3, i32 0, i32 2
  store %struct.concealment_node* %2, %struct.concealment_node** %next, align 8
  %4 = load %struct.concealment_node*, %struct.concealment_node** %concealment_new.addr, align 8
  store %struct.concealment_node* %4, %struct.concealment_node** @concealment_end, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @delete_node(%struct.concealment_node* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.concealment_node*, align 8
  store %struct.concealment_node* %ptr, %struct.concealment_node** %ptr.addr, align 8
  %0 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %1 = load %struct.concealment_node*, %struct.concealment_node** @concealment_head, align 8
  %cmp = icmp eq %struct.concealment_node* %0, %1
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.concealment_node*, %struct.concealment_node** @concealment_head, align 8
  %next = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %2, i32 0, i32 2
  %3 = load %struct.concealment_node*, %struct.concealment_node** %next, align 8
  store %struct.concealment_node* %3, %struct.concealment_node** @concealment_head, align 8
  %4 = load %struct.concealment_node*, %struct.concealment_node** @concealment_end, align 8
  %5 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %cmp1 = icmp eq %struct.concealment_node* %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.concealment_node*, %struct.concealment_node** @concealment_end, align 8
  %next3 = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %6, i32 0, i32 2
  %7 = load %struct.concealment_node*, %struct.concealment_node** %next3, align 8
  store %struct.concealment_node* %7, %struct.concealment_node** @concealment_end, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %9 = bitcast %struct.concealment_node* %8 to i8*
  call void @free(i8* %9) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @delete_list(%struct.concealment_node* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.concealment_node*, align 8
  %temp = alloca %struct.concealment_node*, align 8
  store %struct.concealment_node* %ptr, %struct.concealment_node** %ptr.addr, align 8
  %0 = load %struct.concealment_node*, %struct.concealment_node** @concealment_head, align 8
  %cmp = icmp eq %struct.concealment_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end.10

if.end:                                           ; preds = %entry
  %1 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %2 = load %struct.concealment_node*, %struct.concealment_node** @concealment_head, align 8
  %cmp1 = icmp eq %struct.concealment_node* %1, %2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store %struct.concealment_node* null, %struct.concealment_node** @concealment_head, align 8
  store %struct.concealment_node* null, %struct.concealment_node** @concealment_end, align 8
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %3 = load %struct.concealment_node*, %struct.concealment_node** @concealment_head, align 8
  store %struct.concealment_node* %3, %struct.concealment_node** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %4 = load %struct.concealment_node*, %struct.concealment_node** %temp, align 8
  %next = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %4, i32 0, i32 2
  %5 = load %struct.concealment_node*, %struct.concealment_node** %next, align 8
  %6 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %cmp3 = icmp ne %struct.concealment_node* %5, %6
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.concealment_node*, %struct.concealment_node** %temp, align 8
  %next4 = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %7, i32 0, i32 2
  %8 = load %struct.concealment_node*, %struct.concealment_node** %next4, align 8
  store %struct.concealment_node* %8, %struct.concealment_node** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.concealment_node*, %struct.concealment_node** %temp, align 8
  store %struct.concealment_node* %9, %struct.concealment_node** @concealment_end, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %while.end, %if.then.2
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.8, %if.end.5
  %10 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %cmp7 = icmp ne %struct.concealment_node* %10, null
  br i1 %cmp7, label %while.body.8, label %while.end.10

while.body.8:                                     ; preds = %while.cond.6
  %11 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %next9 = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %11, i32 0, i32 2
  %12 = load %struct.concealment_node*, %struct.concealment_node** %next9, align 8
  store %struct.concealment_node* %12, %struct.concealment_node** %temp, align 8
  %13 = load %struct.concealment_node*, %struct.concealment_node** %ptr.addr, align 8
  %14 = bitcast %struct.concealment_node* %13 to i8*
  call void @free(i8* %14) #4
  %15 = load %struct.concealment_node*, %struct.concealment_node** %temp, align 8
  store %struct.concealment_node* %15, %struct.concealment_node** %ptr.addr, align 8
  br label %while.cond.6

while.end.10:                                     ; preds = %if.then, %while.cond.6
  ret void
}

; Function Attrs: nounwind uwtable
define void @conceal_non_ref_pics(i32 %diff) #0 {
entry:
  %diff.addr = alloca i32, align 4
  %missingpoc = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %conceal_from_picture = alloca %struct.storable_picture*, align 8
  %conceal_to_picture = alloca %struct.storable_picture*, align 8
  %concealment_ptr = alloca %struct.concealment_node*, align 8
  %temp_used_size = alloca i32, align 4
  store i32 %diff, i32* %diff.addr, align 4
  store i32 0, i32* %missingpoc, align 4
  store %struct.storable_picture* null, %struct.storable_picture** %conceal_from_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** %conceal_to_picture, align 8
  store %struct.concealment_node* null, %struct.concealment_node** %concealment_ptr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  store i32 %0, i32* %temp_used_size, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 3), align 4
  %conv = zext i32 %2 to i64
  call void @qsort(i8* bitcast ([100 x i32]* @pocs_in_dpb to i8*), i64 %conv, i64 4, i32 (i8*, i8*)* @comp)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 3), align 4
  %5 = load i32, i32* %diff.addr, align 4
  %sub = sub i32 %4, %5
  %cmp1 = icmp ult i32 %3, %sub
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 3), align 4
  store i32 %6, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %7 = load i32, i32* %i, align 4
  %add = add i32 %7, 1
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @pocs_in_dpb, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* @pocs_in_dpb, i32 0, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  %sub5 = sub nsw i32 %8, %10
  %11 = load %struct.img_par*, %struct.img_par** @img, align 8
  %poc_gap = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 129
  %12 = load i32, i32* %poc_gap, align 4
  %cmp6 = icmp sgt i32 %sub5, %12
  br i1 %cmp6, label %if.then.8, label %if.end.22

if.then.8:                                        ; preds = %for.body
  %13 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 11
  %14 = load i32, i32* %width, align 4
  %15 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height = getelementptr inbounds %struct.img_par, %struct.img_par* %15, i32 0, i32 12
  %16 = load i32, i32* %height, align 4
  %17 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 13
  %18 = load i32, i32* %width_cr, align 4
  %19 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 15
  %20 = load i32, i32* %height_cr, align 4
  %call = call %struct.storable_picture* @alloc_storable_picture(i32 0, i32 %14, i32 %16, i32 %18, i32 %20)
  store %struct.storable_picture* %call, %struct.storable_picture** %conceal_to_picture, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* @pocs_in_dpb, i32 0, i64 %idxprom9
  %22 = load i32, i32* %arrayidx10, align 4
  %23 = load %struct.img_par*, %struct.img_par** @img, align 8
  %poc_gap11 = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 129
  %24 = load i32, i32* %poc_gap11, align 4
  %add12 = add nsw i32 %22, %24
  store i32 %add12, i32* %missingpoc, align 4
  %25 = load i32, i32* %missingpoc, align 4
  %26 = load %struct.img_par*, %struct.img_par** @img, align 8
  %earlier_missing_poc = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 131
  %27 = load i32, i32* %earlier_missing_poc, align 4
  %cmp13 = icmp sgt i32 %25, %27
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.then.8
  %28 = load i32, i32* %missingpoc, align 4
  %29 = load %struct.img_par*, %struct.img_par** @img, align 8
  %earlier_missing_poc16 = getelementptr inbounds %struct.img_par, %struct.img_par* %29, i32 0, i32 131
  store i32 %28, i32* %earlier_missing_poc16, align 4
  %30 = load i32, i32* %missingpoc, align 4
  %31 = load %struct.storable_picture*, %struct.storable_picture** %conceal_to_picture, align 8
  %top_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %31, i32 0, i32 2
  store i32 %30, i32* %top_poc, align 4
  %32 = load i32, i32* %missingpoc, align 4
  %33 = load %struct.storable_picture*, %struct.storable_picture** %conceal_to_picture, align 8
  %bottom_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 3
  store i32 %32, i32* %bottom_poc, align 4
  %34 = load i32, i32* %missingpoc, align 4
  %35 = load %struct.storable_picture*, %struct.storable_picture** %conceal_to_picture, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 4
  store i32 %34, i32* %frame_poc, align 4
  %36 = load i32, i32* %missingpoc, align 4
  %37 = load %struct.storable_picture*, %struct.storable_picture** %conceal_to_picture, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 1
  store i32 %36, i32* %poc, align 4
  %38 = load i32, i32* %missingpoc, align 4
  %call17 = call %struct.storable_picture* @get_pic_from_dpb(i32 %38, i32* %pos)
  store %struct.storable_picture* %call17, %struct.storable_picture** %conceal_from_picture, align 8
  %39 = load i32, i32* %pos, align 4
  %add18 = add i32 %39, 1
  store i32 %add18, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %40 = load %struct.storable_picture*, %struct.storable_picture** %conceal_from_picture, align 8
  %frame_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %40, i32 0, i32 9
  %41 = load i32, i32* %frame_num, align 4
  %add19 = add i32 %41, 1
  %42 = load %struct.img_par*, %struct.img_par** @img, align 8
  %frame_to_conceal = getelementptr inbounds %struct.img_par, %struct.img_par* %42, i32 0, i32 132
  store i32 %add19, i32* %frame_to_conceal, align 4
  call void @update_ref_list_for_concealment()
  %43 = load %struct.img_par*, %struct.img_par** @img, align 8
  %conceal_slice_type = getelementptr inbounds %struct.img_par, %struct.img_par* %43, i32 0, i32 134
  store i32 1, i32* %conceal_slice_type, align 4
  %44 = load %struct.storable_picture*, %struct.storable_picture** %conceal_from_picture, align 8
  %45 = load %struct.storable_picture*, %struct.storable_picture** %conceal_to_picture, align 8
  %46 = load %struct.img_par*, %struct.img_par** @img, align 8
  call void @copy_to_conceal(%struct.storable_picture* %44, %struct.storable_picture* %45, %struct.img_par* %46)
  %47 = load %struct.storable_picture*, %struct.storable_picture** %conceal_to_picture, align 8
  %48 = load i32, i32* %missingpoc, align 4
  %call20 = call %struct.concealment_node* @init_node(%struct.storable_picture* %47, i32 %48)
  store %struct.concealment_node* %call20, %struct.concealment_node** %concealment_ptr, align 8
  %49 = load %struct.concealment_node*, %struct.concealment_node** %concealment_ptr, align 8
  call void @add_node(%struct.concealment_node* %49)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %if.then.8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %50 = load i32, i32* %i, align 4
  %inc = add i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %temp_used_size, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_to_conceal(%struct.storable_picture* %src, %struct.storable_picture* %dst, %struct.img_par* %img) #0 {
entry:
  %src.addr = alloca %struct.storable_picture*, align 8
  %dst.addr = alloca %struct.storable_picture*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %i = alloca i32, align 4
  %mv = alloca [3 x i32], align 4
  %multiplier = alloca i32, align 4
  %predMB = alloca i16*, align 8
  %storeYUV = alloca i16*, align 8
  %j = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %mb_height = alloca i32, align 4
  %mb_width = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %uv = alloca i32, align 4
  %mm = alloca i32, align 4
  %nn = alloca i32, align 4
  %scale = alloca i32, align 4
  store %struct.storable_picture* %src, %struct.storable_picture** %src.addr, align 8
  store %struct.storable_picture* %dst, %struct.storable_picture** %dst.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %ii, align 4
  store i32 0, i32* %jj, align 4
  store i32 1, i32* %scale, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 1
  store i32 0, i32* %current_mb_nr, align 4
  %1 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1, i32 0, i32 31
  %2 = load i32, i32* %PicSizeInMbs, align 4
  %3 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %PicSizeInMbs1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %3, i32 0, i32 31
  store i32 %2, i32* %PicSizeInMbs1, align 4
  %4 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %conceal_slice_type = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 134
  %5 = load i32, i32* %conceal_slice_type, align 4
  %6 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %slice_type = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 45
  store i32 %5, i32* %slice_type, align 4
  %7 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %slice_type2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %7, i32 0, i32 45
  store i32 %5, i32* %slice_type2, align 4
  %8 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %idr_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 46
  store i32 0, i32* %idr_flag, align 4
  %9 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %no_output_of_prior_pics_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 47
  %10 = load i32, i32* %no_output_of_prior_pics_flag, align 4
  %11 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %no_output_of_prior_pics_flag3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %11, i32 0, i32 47
  store i32 %10, i32* %no_output_of_prior_pics_flag3, align 4
  %12 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %long_term_reference_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 48
  %13 = load i32, i32* %long_term_reference_flag, align 4
  %14 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %long_term_reference_flag4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 48
  store i32 %13, i32* %long_term_reference_flag4, align 4
  %15 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 49
  store i32 0, i32* %adaptive_ref_pic_buffering_flag, align 4
  %16 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %adaptive_ref_pic_buffering_flag5 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 49
  store i32 0, i32* %adaptive_ref_pic_buffering_flag5, align 4
  %17 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %17, i32 0, i32 50
  %18 = load i32, i32* %chroma_format_idc, align 4
  %19 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %chroma_format_idc6 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 50
  store i32 %18, i32* %chroma_format_idc6, align 4
  %20 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %20, i32 0, i32 51
  %21 = load i32, i32* %frame_mbs_only_flag, align 4
  %22 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %frame_mbs_only_flag7 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 51
  store i32 %21, i32* %frame_mbs_only_flag7, align 4
  %23 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 52
  %24 = load i32, i32* %frame_cropping_flag, align 4
  %25 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %frame_cropping_flag8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 52
  store i32 %24, i32* %frame_cropping_flag8, align 4
  %26 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %26, i32 0, i32 53
  %27 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %28 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %frame_cropping_rect_left_offset9 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %28, i32 0, i32 53
  store i32 %27, i32* %frame_cropping_rect_left_offset9, align 4
  %29 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 54
  %30 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %31 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %frame_cropping_rect_right_offset10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %31, i32 0, i32 54
  store i32 %30, i32* %frame_cropping_rect_right_offset10, align 4
  %32 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %32, i32 0, i32 56
  %33 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %34 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %frame_cropping_rect_bottom_offset11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %34, i32 0, i32 56
  store i32 %33, i32* %frame_cropping_rect_bottom_offset11, align 4
  %35 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 55
  %36 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %37 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %frame_cropping_rect_top_offset12 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 55
  store i32 %36, i32* %frame_cropping_rect_top_offset12, align 4
  %38 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %qp = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 57
  %39 = load i32, i32* %qp, align 4
  %40 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %qp13 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %40, i32 0, i32 57
  store i32 %39, i32* %qp13, align 4
  %41 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %slice_qp_delta = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %41, i32 0, i32 59
  %42 = load i32, i32* %slice_qp_delta, align 4
  %43 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %slice_qp_delta14 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 59
  store i32 %42, i32* %slice_qp_delta14, align 4
  %44 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  store %struct.storable_picture* %44, %struct.storable_picture** @dec_picture, align 8
  %45 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %conceal_mode = getelementptr inbounds %struct.img_par, %struct.img_par* %45, i32 0, i32 130
  %46 = load i32, i32* %conceal_mode, align 4
  %cmp = icmp eq i32 %46, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %47 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %47, i32 0, i32 30
  %48 = load i32, i32* %PicWidthInMbs, align 4
  %49 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %PicWidthInMbs15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 30
  store i32 %48, i32* %PicWidthInMbs15, align 4
  %50 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %PicSizeInMbs16 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 31
  %51 = load i32, i32* %PicSizeInMbs16, align 4
  %52 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %PicSizeInMbs17 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %52, i32 0, i32 31
  store i32 %51, i32* %PicSizeInMbs17, align 4
  %53 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 32
  %54 = load i16**, i16*** %imgY, align 8
  %55 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %55, i32 0, i32 33
  %56 = load i16***, i16**** %imgUV, align 8
  %57 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %imgY18 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 32
  %58 = load i16**, i16*** %imgY18, align 8
  %59 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %imgUV19 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 33
  %60 = load i16***, i16**** %imgUV19, align 8
  %61 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width = getelementptr inbounds %struct.img_par, %struct.img_par* %61, i32 0, i32 11
  %62 = load i32, i32* %width, align 4
  %63 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 12
  %64 = load i32, i32* %height, align 4
  call void @CopyImgData(i16** %54, i16*** %56, i16** %58, i16*** %60, i32 %62, i32 %64)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %65 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %conceal_mode20 = getelementptr inbounds %struct.img_par, %struct.img_par* %65, i32 0, i32 130
  %66 = load i32, i32* %conceal_mode20, align 4
  %cmp21 = icmp eq i32 %66, 2
  br i1 %cmp21, label %if.then.22, label %if.end.210

if.then.22:                                       ; preds = %if.end
  %67 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc23 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 50
  %68 = load i32, i32* %chroma_format_idc23, align 4
  %cmp24 = icmp ne i32 %68, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.22
  %69 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.img_par, %struct.img_par* %69, i32 0, i32 115
  %70 = load i32, i32* %mb_cr_size_x, align 4
  %71 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.img_par, %struct.img_par* %71, i32 0, i32 116
  %72 = load i32, i32* %mb_cr_size_y, align 4
  %mul = mul nsw i32 %70, %72
  %mul26 = mul nsw i32 %mul, 2
  %div = sdiv i32 %mul26, 16
  %add = add nsw i32 16, %div
  %conv = sext i32 %add to i64
  %mul27 = mul i64 %conv, 2
  %call = call noalias i8* @malloc(i64 %mul27) #4
  %73 = bitcast i8* %call to i16*
  store i16* %73, i16** %storeYUV, align 8
  br label %if.end.29

if.else:                                          ; preds = %if.then.22
  %call28 = call noalias i8* @malloc(i64 32) #4
  %74 = bitcast i8* %call28 to i16*
  store i16* %74, i16** %storeYUV, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.25
  %75 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  store %struct.img_par* %75, %struct.img_par** @erc_img, align 8
  %76 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %PicWidthInMbs30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %76, i32 0, i32 30
  %77 = load i32, i32* %PicWidthInMbs30, align 4
  %78 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %PicWidthInMbs31 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %78, i32 0, i32 30
  store i32 %77, i32* %PicWidthInMbs31, align 4
  %79 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %PicSizeInMbs32 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %79, i32 0, i32 31
  %80 = load i32, i32* %PicSizeInMbs32, align 4
  %81 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %PicSizeInMbs33 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %81, i32 0, i32 31
  store i32 %80, i32* %PicSizeInMbs33, align 4
  %82 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %PicWidthInMbs34 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %82, i32 0, i32 30
  %83 = load i32, i32* %PicWidthInMbs34, align 4
  store i32 %83, i32* %mb_width, align 4
  %84 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %PicSizeInMbs35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %84, i32 0, i32 31
  %85 = load i32, i32* %PicSizeInMbs35, align 4
  %86 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %PicWidthInMbs36 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %86, i32 0, i32 30
  %87 = load i32, i32* %PicWidthInMbs36, align 4
  %div37 = udiv i32 %85, %87
  store i32 %div37, i32* %mb_height, align 4
  %88 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %conceal_slice_type38 = getelementptr inbounds %struct.img_par, %struct.img_par* %88, i32 0, i32 134
  %89 = load i32, i32* %conceal_slice_type38, align 4
  %cmp39 = icmp eq i32 %89, 1
  %cond = select i1 %cmp39, i32 2, i32 1
  store i32 %cond, i32* %scale, align 4
  %90 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %conceal_slice_type41 = getelementptr inbounds %struct.img_par, %struct.img_par* %90, i32 0, i32 134
  %91 = load i32, i32* %conceal_slice_type41, align 4
  %cmp42 = icmp eq i32 %91, 1
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.end.29
  %92 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %slice_type45 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %92, i32 0, i32 45
  %93 = load i32, i32* %slice_type45, align 4
  %94 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %94, i32 0, i32 38
  %95 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %structure = getelementptr inbounds %struct.Slice, %struct.Slice* %95, i32 0, i32 4
  %96 = load i32, i32* %structure, align 4
  call void @init_lists_for_non_reference_loss(i32 %93, i32 %96)
  br label %if.end.50

if.else.46:                                       ; preds = %if.end.29
  %97 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %slice_type47 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %97, i32 0, i32 45
  %98 = load i32, i32* %slice_type47, align 4
  %99 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice48 = getelementptr inbounds %struct.img_par, %struct.img_par* %99, i32 0, i32 38
  %100 = load %struct.Slice*, %struct.Slice** %currentSlice48, align 8
  %structure49 = getelementptr inbounds %struct.Slice, %struct.Slice* %100, i32 0, i32 4
  %101 = load i32, i32* %structure49, align 4
  call void @init_lists(i32 %98, i32 %101)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.46, %if.then.44
  store i32 4, i32* %multiplier, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.207, %if.end.50
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %mb_height, align 4
  %mul51 = mul nsw i32 %103, 4
  %cmp52 = icmp slt i32 %102, %mul51
  br i1 %cmp52, label %for.body, label %for.end.209

for.body:                                         ; preds = %for.cond
  %104 = load i32, i32* %i, align 4
  %mul54 = mul nsw i32 %104, 4
  store i32 %mul54, i32* %mm, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.204, %for.body
  %105 = load i32, i32* %j, align 4
  %106 = load i32, i32* %mb_width, align 4
  %mul56 = mul nsw i32 %106, 4
  %cmp57 = icmp slt i32 %105, %mul56
  br i1 %cmp57, label %for.body.59, label %for.end.206

for.body.59:                                      ; preds = %for.cond.55
  %107 = load i32, i32* %j, align 4
  %mul60 = mul nsw i32 %107, 4
  store i32 %mul60, i32* %nn, align 4
  %108 = load i32, i32* %j, align 4
  %idxprom = sext i32 %108 to i64
  %109 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %109 to i64
  %110 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %mv62 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %110, i32 0, i32 39
  %111 = load i16****, i16***** %mv62, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %111, i64 0
  %112 = load i16***, i16**** %arrayidx, align 8
  %arrayidx63 = getelementptr inbounds i16**, i16*** %112, i64 %idxprom61
  %113 = load i16**, i16*** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i16*, i16** %113, i64 %idxprom
  %114 = load i16*, i16** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %114, i64 0
  %115 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %115 to i32
  %116 = load i32, i32* %scale, align 4
  %div67 = sdiv i32 %conv66, %116
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %mv, i32 0, i64 0
  store i32 %div67, i32* %arrayidx68, align 4
  %117 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %117 to i64
  %118 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %118 to i64
  %119 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %mv71 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %119, i32 0, i32 39
  %120 = load i16****, i16***** %mv71, align 8
  %arrayidx72 = getelementptr inbounds i16***, i16**** %120, i64 0
  %121 = load i16***, i16**** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i16**, i16*** %121, i64 %idxprom70
  %122 = load i16**, i16*** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i16*, i16** %122, i64 %idxprom69
  %123 = load i16*, i16** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i16, i16* %123, i64 1
  %124 = load i16, i16* %arrayidx75, align 2
  %conv76 = sext i16 %124 to i32
  %125 = load i32, i32* %scale, align 4
  %div77 = sdiv i32 %conv76, %125
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %mv, i32 0, i64 1
  store i32 %div77, i32* %arrayidx78, align 4
  %126 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %126 to i64
  %127 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %127 to i64
  %128 = load %struct.storable_picture*, %struct.storable_picture** %src.addr, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %128, i32 0, i32 36
  %129 = load i8***, i8**** %ref_idx, align 8
  %arrayidx81 = getelementptr inbounds i8**, i8*** %129, i64 0
  %130 = load i8**, i8*** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %130, i64 %idxprom80
  %131 = load i8*, i8** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %131, i64 %idxprom79
  %132 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %132 to i32
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %mv, i32 0, i64 2
  store i32 %conv84, i32* %arrayidx85, align 4
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %mv, i32 0, i64 2
  %133 = load i32, i32* %arrayidx86, align 4
  %cmp87 = icmp slt i32 %133, 0
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %for.body.59
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %mv, i32 0, i64 2
  store i32 0, i32* %arrayidx90, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %for.body.59
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %mv, i32 0, i64 0
  %134 = load i32, i32* %arrayidx92, align 4
  %conv93 = trunc i32 %134 to i16
  %135 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %135 to i64
  %136 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %136 to i64
  %137 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %mv96 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %137, i32 0, i32 39
  %138 = load i16****, i16***** %mv96, align 8
  %arrayidx97 = getelementptr inbounds i16***, i16**** %138, i64 0
  %139 = load i16***, i16**** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i16**, i16*** %139, i64 %idxprom95
  %140 = load i16**, i16*** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i16*, i16** %140, i64 %idxprom94
  %141 = load i16*, i16** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i16, i16* %141, i64 0
  store i16 %conv93, i16* %arrayidx100, align 2
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %mv, i32 0, i64 1
  %142 = load i32, i32* %arrayidx101, align 4
  %conv102 = trunc i32 %142 to i16
  %143 = load i32, i32* %j, align 4
  %idxprom103 = sext i32 %143 to i64
  %144 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %144 to i64
  %145 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %mv105 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %145, i32 0, i32 39
  %146 = load i16****, i16***** %mv105, align 8
  %arrayidx106 = getelementptr inbounds i16***, i16**** %146, i64 0
  %147 = load i16***, i16**** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i16**, i16*** %147, i64 %idxprom104
  %148 = load i16**, i16*** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i16*, i16** %148, i64 %idxprom103
  %149 = load i16*, i16** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i16, i16* %149, i64 1
  store i16 %conv102, i16* %arrayidx109, align 2
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %mv, i32 0, i64 2
  %150 = load i32, i32* %arrayidx110, align 4
  %conv111 = trunc i32 %150 to i8
  %151 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %151 to i64
  %152 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %152 to i64
  %153 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %ref_idx114 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %153, i32 0, i32 36
  %154 = load i8***, i8**** %ref_idx114, align 8
  %arrayidx115 = getelementptr inbounds i8**, i8*** %154, i64 0
  %155 = load i8**, i8*** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i8*, i8** %155, i64 %idxprom113
  %156 = load i8*, i8** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %156, i64 %idxprom112
  store i8 %conv111, i8* %arrayidx117, align 1
  %157 = load i32, i32* %j, align 4
  %158 = load i32, i32* %multiplier, align 4
  %mul118 = mul nsw i32 %157, %158
  store i32 %mul118, i32* %x, align 4
  %159 = load i32, i32* %i, align 4
  %160 = load i32, i32* %multiplier, align 4
  %mul119 = mul nsw i32 %159, %160
  store i32 %mul119, i32* %y, align 4
  %161 = load i32, i32* %mm, align 4
  %rem = srem i32 %161, 16
  %cmp120 = icmp eq i32 %rem, 0
  br i1 %cmp120, label %land.lhs.true, label %if.end.127

land.lhs.true:                                    ; preds = %if.end.91
  %162 = load i32, i32* %nn, align 4
  %rem122 = srem i32 %162, 16
  %cmp123 = icmp eq i32 %rem122, 0
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %land.lhs.true
  %163 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr126 = getelementptr inbounds %struct.img_par, %struct.img_par* %163, i32 0, i32 1
  %164 = load i32, i32* %current_mb_nr126, align 4
  %inc = add i32 %164, 1
  store i32 %inc, i32* %current_mb_nr126, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %land.lhs.true, %if.end.91
  %165 = load %struct.img_par*, %struct.img_par** @erc_img, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %mv, i32 0, i32 0
  %166 = load i32, i32* %x, align 4
  %167 = load i32, i32* %y, align 4
  %168 = load i16*, i16** %storeYUV, align 8
  call void @buildPredblockRegionYUV(%struct.img_par* %165, i32* %arraydecay, i32 %166, i32 %167, i16* %168, i32 0)
  %169 = load i16*, i16** %storeYUV, align 8
  store i16* %169, i16** %predMB, align 8
  store i32 0, i32* %ii, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.150, %if.end.127
  %170 = load i32, i32* %ii, align 4
  %171 = load i32, i32* %multiplier, align 4
  %cmp129 = icmp slt i32 %170, %171
  br i1 %cmp129, label %for.body.131, label %for.end.152

for.body.131:                                     ; preds = %for.cond.128
  store i32 0, i32* %jj, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc, %for.body.131
  %172 = load i32, i32* %jj, align 4
  %173 = load i32, i32* %multiplier, align 4
  %cmp133 = icmp slt i32 %172, %173
  br i1 %cmp133, label %for.body.135, label %for.end

for.body.135:                                     ; preds = %for.cond.132
  %174 = load i32, i32* %ii, align 4
  %175 = load i32, i32* %multiplier, align 4
  %mul136 = mul nsw i32 %174, %175
  %176 = load i32, i32* %jj, align 4
  %add137 = add nsw i32 %mul136, %176
  %idxprom138 = sext i32 %add137 to i64
  %177 = load i16*, i16** %predMB, align 8
  %arrayidx139 = getelementptr inbounds i16, i16* %177, i64 %idxprom138
  %178 = load i16, i16* %arrayidx139, align 2
  %179 = load i32, i32* %j, align 4
  %180 = load i32, i32* %multiplier, align 4
  %mul140 = mul nsw i32 %179, %180
  %181 = load i32, i32* %jj, align 4
  %add141 = add nsw i32 %mul140, %181
  %idxprom142 = sext i32 %add141 to i64
  %182 = load i32, i32* %i, align 4
  %183 = load i32, i32* %multiplier, align 4
  %mul143 = mul nsw i32 %182, %183
  %184 = load i32, i32* %ii, align 4
  %add144 = add nsw i32 %mul143, %184
  %idxprom145 = sext i32 %add144 to i64
  %185 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %imgY146 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %185, i32 0, i32 32
  %186 = load i16**, i16*** %imgY146, align 8
  %arrayidx147 = getelementptr inbounds i16*, i16** %186, i64 %idxprom145
  %187 = load i16*, i16** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i16, i16* %187, i64 %idxprom142
  store i16 %178, i16* %arrayidx148, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.135
  %188 = load i32, i32* %jj, align 4
  %inc149 = add nsw i32 %188, 1
  store i32 %inc149, i32* %jj, align 4
  br label %for.cond.132

for.end:                                          ; preds = %for.cond.132
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end
  %189 = load i32, i32* %ii, align 4
  %inc151 = add nsw i32 %189, 1
  store i32 %inc151, i32* %ii, align 4
  br label %for.cond.128

for.end.152:                                      ; preds = %for.cond.128
  %190 = load i16*, i16** %predMB, align 8
  %191 = load i32, i32* %multiplier, align 4
  %192 = load i32, i32* %multiplier, align 4
  %mul153 = mul nsw i32 %191, %192
  %idx.ext = sext i32 %mul153 to i64
  %add.ptr = getelementptr inbounds i16, i16* %190, i64 %idx.ext
  store i16* %add.ptr, i16** %predMB, align 8
  %193 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc154 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %193, i32 0, i32 50
  %194 = load i32, i32* %chroma_format_idc154, align 4
  %cmp155 = icmp ne i32 %194, 0
  br i1 %cmp155, label %if.then.157, label %if.end.203

if.then.157:                                      ; preds = %for.end.152
  store i32 0, i32* %uv, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.200, %if.then.157
  %195 = load i32, i32* %uv, align 4
  %cmp159 = icmp slt i32 %195, 2
  br i1 %cmp159, label %for.body.161, label %for.end.202

for.body.161:                                     ; preds = %for.cond.158
  store i32 0, i32* %ii, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.193, %for.body.161
  %196 = load i32, i32* %ii, align 4
  %197 = load i32, i32* %multiplier, align 4
  %div163 = sdiv i32 %197, 2
  %cmp164 = icmp slt i32 %196, %div163
  br i1 %cmp164, label %for.body.166, label %for.end.195

for.body.166:                                     ; preds = %for.cond.162
  store i32 0, i32* %jj, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.190, %for.body.166
  %198 = load i32, i32* %jj, align 4
  %199 = load i32, i32* %multiplier, align 4
  %div168 = sdiv i32 %199, 2
  %cmp169 = icmp slt i32 %198, %div168
  br i1 %cmp169, label %for.body.171, label %for.end.192

for.body.171:                                     ; preds = %for.cond.167
  %200 = load i32, i32* %ii, align 4
  %201 = load i32, i32* %multiplier, align 4
  %div172 = sdiv i32 %201, 2
  %mul173 = mul nsw i32 %200, %div172
  %202 = load i32, i32* %jj, align 4
  %add174 = add nsw i32 %mul173, %202
  %idxprom175 = sext i32 %add174 to i64
  %203 = load i16*, i16** %predMB, align 8
  %arrayidx176 = getelementptr inbounds i16, i16* %203, i64 %idxprom175
  %204 = load i16, i16* %arrayidx176, align 2
  %205 = load i32, i32* %j, align 4
  %206 = load i32, i32* %multiplier, align 4
  %mul177 = mul nsw i32 %205, %206
  %div178 = sdiv i32 %mul177, 2
  %207 = load i32, i32* %jj, align 4
  %add179 = add nsw i32 %div178, %207
  %idxprom180 = sext i32 %add179 to i64
  %208 = load i32, i32* %i, align 4
  %209 = load i32, i32* %multiplier, align 4
  %mul181 = mul nsw i32 %208, %209
  %div182 = sdiv i32 %mul181, 2
  %210 = load i32, i32* %ii, align 4
  %add183 = add nsw i32 %div182, %210
  %idxprom184 = sext i32 %add183 to i64
  %211 = load i32, i32* %uv, align 4
  %idxprom185 = sext i32 %211 to i64
  %212 = load %struct.storable_picture*, %struct.storable_picture** %dst.addr, align 8
  %imgUV186 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %212, i32 0, i32 33
  %213 = load i16***, i16**** %imgUV186, align 8
  %arrayidx187 = getelementptr inbounds i16**, i16*** %213, i64 %idxprom185
  %214 = load i16**, i16*** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i16*, i16** %214, i64 %idxprom184
  %215 = load i16*, i16** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i16, i16* %215, i64 %idxprom180
  store i16 %204, i16* %arrayidx189, align 2
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.171
  %216 = load i32, i32* %jj, align 4
  %inc191 = add nsw i32 %216, 1
  store i32 %inc191, i32* %jj, align 4
  br label %for.cond.167

for.end.192:                                      ; preds = %for.cond.167
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.192
  %217 = load i32, i32* %ii, align 4
  %inc194 = add nsw i32 %217, 1
  store i32 %inc194, i32* %ii, align 4
  br label %for.cond.162

for.end.195:                                      ; preds = %for.cond.162
  %218 = load i16*, i16** %predMB, align 8
  %219 = load i32, i32* %multiplier, align 4
  %220 = load i32, i32* %multiplier, align 4
  %mul196 = mul nsw i32 %219, %220
  %div197 = sdiv i32 %mul196, 4
  %idx.ext198 = sext i32 %div197 to i64
  %add.ptr199 = getelementptr inbounds i16, i16* %218, i64 %idx.ext198
  store i16* %add.ptr199, i16** %predMB, align 8
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end.195
  %221 = load i32, i32* %uv, align 4
  %inc201 = add nsw i32 %221, 1
  store i32 %inc201, i32* %uv, align 4
  br label %for.cond.158

for.end.202:                                      ; preds = %for.cond.158
  br label %if.end.203

if.end.203:                                       ; preds = %for.end.202, %for.end.152
  br label %for.inc.204

for.inc.204:                                      ; preds = %if.end.203
  %222 = load i32, i32* %j, align 4
  %inc205 = add nsw i32 %222, 1
  store i32 %inc205, i32* %j, align 4
  br label %for.cond.55

for.end.206:                                      ; preds = %for.cond.55
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.end.206
  %223 = load i32, i32* %i, align 4
  %inc208 = add nsw i32 %223, 1
  store i32 %inc208, i32* %i, align 4
  br label %for.cond

for.end.209:                                      ; preds = %for.cond
  %224 = load i16*, i16** %storeYUV, align 8
  %225 = bitcast i16* %224 to i8*
  call void @free(i8* %225) #4
  br label %if.end.210

if.end.210:                                       ; preds = %for.end.209, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @sliding_window_poc_management(%struct.storable_picture* %p) #0 {
entry:
  %p.addr = alloca %struct.storable_picture*, align 8
  %i = alloca i32, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 3), align 4
  %sub = sub i32 %3, 1
  %cmp1 = icmp ult i32 %2, %sub
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %add = add i32 %4, 1
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @pocs_in_dpb, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* @pocs_in_dpb, i32 0, i64 %idxprom2
  store i32 %5, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_lost_non_ref_pic(i32 %poc, i32 %p_out) #0 {
entry:
  %poc.addr = alloca i32, align 4
  %p_out.addr = alloca i32, align 4
  %concealment_fs = alloca %struct.frame_store, align 8
  store i32 %poc, i32* %poc.addr, align 4
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = load i32, i32* %poc.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %poc.addr, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 7), align 4
  %sub = sub nsw i32 %1, %2
  %3 = load %struct.img_par*, %struct.img_par** @img, align 8
  %poc_gap = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 129
  %4 = load i32, i32* %poc_gap, align 4
  %cmp1 = icmp sgt i32 %sub, %4
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.concealment_node*, %struct.concealment_node** @concealment_head, align 8
  %picture = getelementptr inbounds %struct.concealment_node, %struct.concealment_node* %5, i32 0, i32 0
  %6 = load %struct.storable_picture*, %struct.storable_picture** %picture, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %concealment_fs, i32 0, i32 12
  store %struct.storable_picture* %6, %struct.storable_picture** %frame, align 8
  %is_output = getelementptr inbounds %struct.frame_store, %struct.frame_store* %concealment_fs, i32 0, i32 9
  store i32 0, i32* %is_output, align 4
  %is_reference = getelementptr inbounds %struct.frame_store, %struct.frame_store* %concealment_fs, i32 0, i32 1
  store i32 0, i32* %is_reference, align 4
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %concealment_fs, i32 0, i32 0
  store i32 3, i32* %is_used, align 4
  %7 = load i32, i32* %p_out.addr, align 4
  call void @write_stored_frame(%struct.frame_store* %concealment_fs, i32 %7)
  %8 = load %struct.concealment_node*, %struct.concealment_node** @concealment_head, align 8
  call void @delete_node(%struct.concealment_node* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  ret void
}

declare void @write_stored_frame(%struct.frame_store*, i32) #2

; Function Attrs: nounwind uwtable
define void @write_lost_ref_after_idr(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 1, i32* %temp, align 4
  %0 = load %struct.frame_store*, %struct.frame_store** @last_out_fs, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %0, i32 0, i32 12
  %1 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %cmp = icmp eq %struct.storable_picture* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 11
  %3 = load i32, i32* %width, align 4
  %4 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 12
  %5 = load i32, i32* %height, align 4
  %6 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 13
  %7 = load i32, i32* %width_cr, align 4
  %8 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 15
  %9 = load i32, i32* %height_cr, align 4
  %call = call %struct.storable_picture* @alloc_storable_picture(i32 0, i32 %3, i32 %5, i32 %7, i32 %9)
  %10 = load %struct.frame_store*, %struct.frame_store** @last_out_fs, align 8
  %frame1 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %10, i32 0, i32 12
  store %struct.storable_picture* %call, %struct.storable_picture** %frame1, align 8
  %11 = load %struct.frame_store*, %struct.frame_store** @last_out_fs, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %11, i32 0, i32 0
  store i32 3, i32* %is_used, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.img_par*, %struct.img_par** @img, align 8
  %conceal_mode = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 130
  %13 = load i32, i32* %conceal_mode, align 4
  %cmp2 = icmp eq i32 %13, 2
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  store i32 2, i32* %temp, align 4
  %14 = load %struct.img_par*, %struct.img_par** @img, align 8
  %conceal_mode4 = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 130
  store i32 1, i32* %conceal_mode4, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %16, i64 %idxprom
  %17 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %frame6 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %17, i32 0, i32 12
  %18 = load %struct.storable_picture*, %struct.storable_picture** %frame6, align 8
  %19 = load %struct.frame_store*, %struct.frame_store** @last_out_fs, align 8
  %frame7 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %19, i32 0, i32 12
  %20 = load %struct.storable_picture*, %struct.storable_picture** %frame7, align 8
  %21 = load %struct.img_par*, %struct.img_par** @img, align 8
  call void @copy_to_conceal(%struct.storable_picture* %18, %struct.storable_picture* %20, %struct.img_par* %21)
  %22 = load i32, i32* %temp, align 4
  %23 = load %struct.img_par*, %struct.img_par** @img, align 8
  %conceal_mode8 = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 130
  store i32 %22, i32* %conceal_mode8, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copyBetweenFrames(%struct.frame* %recfr, i32 %currYBlockNum, i32 %picSizeX, i32 %regionSize) #0 {
entry:
  %recfr.addr = alloca %struct.frame*, align 8
  %currYBlockNum.addr = alloca i32, align 4
  %picSizeX.addr = alloca i32, align 4
  %regionSize.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %location = alloca i32, align 4
  %xmin = alloca i32, align 4
  %ymin = alloca i32, align 4
  %refPic = alloca %struct.storable_picture*, align 8
  store %struct.frame* %recfr, %struct.frame** %recfr.addr, align 8
  store i32 %currYBlockNum, i32* %currYBlockNum.addr, align 4
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store i32 %regionSize, i32* %regionSize.addr, align 4
  %0 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %0, i64 0
  %1 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx, align 8
  store %struct.storable_picture* %1, %struct.storable_picture** %refPic, align 8
  %2 = load i32, i32* %currYBlockNum.addr, align 4
  %3 = load i32, i32* %picSizeX.addr, align 4
  %shr = ashr i32 %3, 3
  %rem = srem i32 %2, %shr
  %shl = shl i32 %rem, 3
  store i32 %shl, i32* %xmin, align 4
  %4 = load i32, i32* %currYBlockNum.addr, align 4
  %5 = load i32, i32* %picSizeX.addr, align 4
  %shr1 = ashr i32 %5, 3
  %div = sdiv i32 %4, %shr1
  %shl2 = shl i32 %div, 3
  store i32 %shl2, i32* %ymin, align 4
  %6 = load i32, i32* %ymin, align 4
  store i32 %6, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %ymin, align 4
  %9 = load i32, i32* %regionSize.addr, align 4
  %add = add nsw i32 %8, %9
  %cmp = icmp slt i32 %7, %add
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %xmin, align 4
  store i32 %10, i32* %k, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %k, align 4
  %12 = load i32, i32* %xmin, align 4
  %13 = load i32, i32* %regionSize.addr, align 4
  %add4 = add nsw i32 %12, %13
  %cmp5 = icmp slt i32 %11, %add4
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %picSizeX.addr, align 4
  %mul = mul nsw i32 %14, %15
  %16 = load i32, i32* %k, align 4
  %add7 = add nsw i32 %mul, %16
  store i32 %add7, i32* %location, align 4
  %17 = load i32, i32* %k, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.storable_picture*, %struct.storable_picture** %refPic, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 32
  %20 = load i16**, i16*** %imgY, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %20, i64 %idxprom8
  %21 = load i16*, i16** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %21, i64 %idxprom
  %22 = load i16, i16* %arrayidx10, align 2
  %23 = load i32, i32* %location, align 4
  %idxprom11 = sext i32 %23 to i64
  %24 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %yptr = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 0
  %25 = load i16*, i16** %yptr, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %25, i64 %idxprom11
  store i16 %22, i16* %arrayidx12, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %27 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %27, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %28 = load i32, i32* %ymin, align 4
  %29 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 50
  %30 = load i32, i32* %chroma_format_idc, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds ([2 x [4 x i32]], [2 x [4 x i32]]* @uv_div, i32 0, i64 1), i32 0, i64 %idxprom16
  %31 = load i32, i32* %arrayidx17, align 4
  %shr18 = ashr i32 %28, %31
  store i32 %shr18, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.63, %for.end.15
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %ymin, align 4
  %34 = load i32, i32* %regionSize.addr, align 4
  %add20 = add nsw i32 %33, %34
  %35 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc21 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 50
  %36 = load i32, i32* %chroma_format_idc21, align 4
  %idxprom22 = sext i32 %36 to i64
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds ([2 x [4 x i32]], [2 x [4 x i32]]* @uv_div, i32 0, i64 1), i32 0, i64 %idxprom22
  %37 = load i32, i32* %arrayidx23, align 4
  %shr24 = ashr i32 %add20, %37
  %cmp25 = icmp slt i32 %32, %shr24
  br i1 %cmp25, label %for.body.26, label %for.end.65

for.body.26:                                      ; preds = %for.cond.19
  %38 = load i32, i32* %xmin, align 4
  %39 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc27 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %39, i32 0, i32 50
  %40 = load i32, i32* %chroma_format_idc27, align 4
  %idxprom28 = sext i32 %40 to i64
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds ([2 x [4 x i32]], [2 x [4 x i32]]* @uv_div, i32 0, i64 0), i32 0, i64 %idxprom28
  %41 = load i32, i32* %arrayidx29, align 4
  %shr30 = ashr i32 %38, %41
  store i32 %shr30, i32* %k, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.60, %for.body.26
  %42 = load i32, i32* %k, align 4
  %43 = load i32, i32* %xmin, align 4
  %44 = load i32, i32* %regionSize.addr, align 4
  %add32 = add nsw i32 %43, %44
  %45 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc33 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 50
  %46 = load i32, i32* %chroma_format_idc33, align 4
  %idxprom34 = sext i32 %46 to i64
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds ([2 x [4 x i32]], [2 x [4 x i32]]* @uv_div, i32 0, i64 0), i32 0, i64 %idxprom34
  %47 = load i32, i32* %arrayidx35, align 4
  %shr36 = ashr i32 %add32, %47
  %cmp37 = icmp slt i32 %42, %shr36
  br i1 %cmp37, label %for.body.38, label %for.end.62

for.body.38:                                      ; preds = %for.cond.31
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* %picSizeX.addr, align 4
  %mul39 = mul nsw i32 %48, %49
  %50 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc40 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 50
  %51 = load i32, i32* %chroma_format_idc40, align 4
  %idxprom41 = sext i32 %51 to i64
  %arrayidx42 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds ([2 x [4 x i32]], [2 x [4 x i32]]* @uv_div, i32 0, i64 0), i32 0, i64 %idxprom41
  %52 = load i32, i32* %arrayidx42, align 4
  %shr43 = ashr i32 %mul39, %52
  %53 = load i32, i32* %k, align 4
  %add44 = add nsw i32 %shr43, %53
  store i32 %add44, i32* %location, align 4
  %54 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %55 to i64
  %56 = load %struct.storable_picture*, %struct.storable_picture** %refPic, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 33
  %57 = load i16***, i16**** %imgUV, align 8
  %arrayidx47 = getelementptr inbounds i16**, i16*** %57, i64 0
  %58 = load i16**, i16*** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16*, i16** %58, i64 %idxprom46
  %59 = load i16*, i16** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %59, i64 %idxprom45
  %60 = load i16, i16* %arrayidx49, align 2
  %61 = load i32, i32* %location, align 4
  %idxprom50 = sext i32 %61 to i64
  %62 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %uptr = getelementptr inbounds %struct.frame, %struct.frame* %62, i32 0, i32 1
  %63 = load i16*, i16** %uptr, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %63, i64 %idxprom50
  store i16 %60, i16* %arrayidx51, align 2
  %64 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %64 to i64
  %65 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %65 to i64
  %66 = load %struct.storable_picture*, %struct.storable_picture** %refPic, align 8
  %imgUV54 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %66, i32 0, i32 33
  %67 = load i16***, i16**** %imgUV54, align 8
  %arrayidx55 = getelementptr inbounds i16**, i16*** %67, i64 1
  %68 = load i16**, i16*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16*, i16** %68, i64 %idxprom53
  %69 = load i16*, i16** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %69, i64 %idxprom52
  %70 = load i16, i16* %arrayidx57, align 2
  %71 = load i32, i32* %location, align 4
  %idxprom58 = sext i32 %71 to i64
  %72 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %vptr = getelementptr inbounds %struct.frame, %struct.frame* %72, i32 0, i32 2
  %73 = load i16*, i16** %vptr, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %73, i64 %idxprom58
  store i16 %70, i16* %arrayidx59, align 2
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.38
  %74 = load i32, i32* %k, align 4
  %inc61 = add nsw i32 %74, 1
  store i32 %inc61, i32* %k, align 4
  br label %for.cond.31

for.end.62:                                       ; preds = %for.cond.31
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %75 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %75, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond.19

for.end.65:                                       ; preds = %for.cond.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @buildPredRegionYUV(%struct.img_par* %img, i32* %mv, i32 %x, i32 %y, i16* %predMB) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %mv.addr = alloca i32*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %predMB.addr = alloca i16*, align 8
  %tmp_block = alloca [4 x [4 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %jf = alloca i32, align 4
  %uv = alloca i32, align 4
  %vec1_x = alloca i32, align 4
  %vec1_y = alloca i32, align 4
  %ioff = alloca i32, align 4
  %joff = alloca i32, align 4
  %pMB = alloca i16*, align 8
  %ii0 = alloca i32, align 4
  %jj0 = alloca i32, align 4
  %ii1 = alloca i32, align 4
  %jj1 = alloca i32, align 4
  %if1 = alloca i32, align 4
  %jf1 = alloca i32, align 4
  %if0 = alloca i32, align 4
  %jf0 = alloca i32, align 4
  %mv_mul = alloca i32, align 4
  %f1_x = alloca i32, align 4
  %f1_y = alloca i32, align 4
  %f2_x = alloca i32, align 4
  %f2_y = alloca i32, align 4
  %f3 = alloca i32, align 4
  %f4 = alloca i32, align 4
  %ifx = alloca i32, align 4
  %b8 = alloca i32, align 4
  %b4 = alloca i32, align 4
  %yuv = alloca i32, align 4
  %ref_frame = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32* %mv, i32** %mv.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i16* %predMB, i16** %predMB.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %ii, align 4
  store i32 0, i32* %jj, align 4
  store i32 0, i32* %i1, align 4
  store i32 0, i32* %j1, align 4
  store i32 0, i32* %j4, align 4
  store i32 0, i32* %i4, align 4
  store i32 0, i32* %jf, align 4
  store i32 0, i32* %vec1_x, align 4
  store i32 0, i32* %vec1_y, align 4
  %0 = load i16*, i16** %predMB.addr, align 8
  store i16* %0, i16** %pMB, align 8
  %1 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1, i32 0, i32 50
  %2 = load i32, i32* %chroma_format_idc, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %yuv, align 4
  %3 = load i32*, i32** %mv.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 2
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 @imax(i32 %4, i32 0)
  store i32 %call, i32* %ref_frame, align 4
  %5 = load i32, i32* %x.addr, align 4
  %div = sdiv i32 %5, 16
  %6 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_x = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 17
  store i32 %div, i32* %mb_x, align 4
  %7 = load i32, i32* %y.addr, align 4
  %div1 = sdiv i32 %7, 16
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_y = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 16
  store i32 %div1, i32* %mb_y, align 4
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_y2 = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 16
  %10 = load i32, i32* %mb_y2, align 4
  %mul = mul nsw i32 %10, 4
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %block_y = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 18
  store i32 %mul, i32* %block_y, align 4
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_y3 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 16
  %13 = load i32, i32* %mb_y3, align 4
  %14 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 116
  %15 = load i32, i32* %mb_cr_size_y, align 4
  %mul4 = mul nsw i32 %13, %15
  %16 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_c_y = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 21
  store i32 %mul4, i32* %pix_c_y, align 4
  %17 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_x5 = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 17
  %18 = load i32, i32* %mb_x5, align 4
  %mul6 = mul nsw i32 %18, 4
  %19 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %block_x = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 22
  store i32 %mul6, i32* %block_x, align 4
  %20 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_x7 = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 17
  %21 = load i32, i32* %mb_x7, align 4
  %22 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 115
  %23 = load i32, i32* %mb_cr_size_x, align 4
  %mul8 = mul nsw i32 %21, %23
  %24 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_c_x = getelementptr inbounds %struct.img_par, %struct.img_par* %24, i32 0, i32 23
  store i32 %mul8, i32* %pix_c_x, align 4
  store i32 4, i32* %mv_mul, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %entry
  %25 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %25, 4
  br i1 %cmp, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %j, align 4
  %mul9 = mul nsw i32 %26, 4
  store i32 %mul9, i32* %joff, align 4
  %27 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %block_y10 = getelementptr inbounds %struct.img_par, %struct.img_par* %27, i32 0, i32 18
  %28 = load i32, i32* %block_y10, align 4
  %29 = load i32, i32* %j, align 4
  %add = add nsw i32 %28, %29
  store i32 %add, i32* %j4, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.43, %for.body
  %30 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %30, 4
  br i1 %cmp12, label %for.body.13, label %for.end.45

for.body.13:                                      ; preds = %for.cond.11
  %31 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 %31, 4
  store i32 %mul14, i32* %ioff, align 4
  %32 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %block_x15 = getelementptr inbounds %struct.img_par, %struct.img_par* %32, i32 0, i32 22
  %33 = load i32, i32* %block_x15, align 4
  %34 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %33, %34
  store i32 %add16, i32* %i4, align 4
  %35 = load i32, i32* %i4, align 4
  %mul17 = mul nsw i32 %35, 4
  %36 = load i32, i32* %mv_mul, align 4
  %mul18 = mul nsw i32 %mul17, %36
  %37 = load i32*, i32** %mv.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %mul18, %38
  store i32 %add20, i32* %vec1_x, align 4
  %39 = load i32, i32* %j4, align 4
  %mul21 = mul nsw i32 %39, 4
  %40 = load i32, i32* %mv_mul, align 4
  %mul22 = mul nsw i32 %mul21, %40
  %41 = load i32*, i32** %mv.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %41, i64 1
  %42 = load i32, i32* %arrayidx23, align 4
  %add24 = add nsw i32 %mul22, %42
  store i32 %add24, i32* %vec1_y, align 4
  %43 = load i32, i32* %ref_frame, align 4
  %44 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %45 = load i32, i32* %vec1_x, align 4
  %46 = load i32, i32* %vec1_y, align 4
  %47 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp_block, i32 0, i32 0
  call void @get_block(i32 %43, %struct.storable_picture** %44, i32 %45, i32 %46, %struct.img_par* %47, [4 x i32]* %arraydecay)
  store i32 0, i32* %ii, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.40, %for.body.13
  %48 = load i32, i32* %ii, align 4
  %cmp26 = icmp slt i32 %48, 4
  br i1 %cmp26, label %for.body.27, label %for.end.42

for.body.27:                                      ; preds = %for.cond.25
  store i32 0, i32* %jj, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body.27
  %49 = load i32, i32* %jj, align 4
  %cmp29 = icmp slt i32 %49, 4
  br i1 %cmp29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %50 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load i32, i32* %jj, align 4
  %idxprom31 = sext i32 %51 to i64
  %arrayidx32 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp_block, i32 0, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx32, i32 0, i64 %idxprom
  %52 = load i32, i32* %arrayidx33, align 4
  %conv = trunc i32 %52 to i16
  %53 = load i32, i32* %ii, align 4
  %54 = load i32, i32* %ioff, align 4
  %add34 = add nsw i32 %53, %54
  %idxprom35 = sext i32 %add34 to i64
  %55 = load i32, i32* %jj, align 4
  %56 = load i32, i32* %joff, align 4
  %add36 = add nsw i32 %55, %56
  %idxprom37 = sext i32 %add36 to i64
  %57 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr = getelementptr inbounds %struct.img_par, %struct.img_par* %57, i32 0, i32 25
  %arrayidx38 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx38, i32 0, i64 %idxprom35
  store i16 %conv, i16* %arrayidx39, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %58 = load i32, i32* %jj, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %jj, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %59 = load i32, i32* %ii, align 4
  %inc41 = add nsw i32 %59, 1
  store i32 %inc41, i32* %ii, align 4
  br label %for.cond.25

for.end.42:                                       ; preds = %for.cond.25
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.42
  %60 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %60, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.11

for.end.45:                                       ; preds = %for.cond.11
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %61 = load i32, i32* %j, align 4
  %inc47 = add nsw i32 %61, 1
  store i32 %inc47, i32* %j, align 4
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.69, %for.end.48
  %62 = load i32, i32* %j, align 4
  %cmp50 = icmp slt i32 %62, 16
  br i1 %cmp50, label %for.body.52, label %for.end.71

for.body.52:                                      ; preds = %for.cond.49
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.66, %for.body.52
  %63 = load i32, i32* %i, align 4
  %cmp54 = icmp slt i32 %63, 16
  br i1 %cmp54, label %for.body.56, label %for.end.68

for.body.56:                                      ; preds = %for.cond.53
  %64 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %64 to i64
  %65 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %65 to i64
  %66 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr59 = getelementptr inbounds %struct.img_par, %struct.img_par* %66, i32 0, i32 25
  %arrayidx60 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr59, i32 0, i64 %idxprom58
  %arrayidx61 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx60, i32 0, i64 %idxprom57
  %67 = load i16, i16* %arrayidx61, align 2
  %68 = load i32, i32* %j, align 4
  %mul62 = mul nsw i32 %68, 16
  %69 = load i32, i32* %i, align 4
  %add63 = add nsw i32 %mul62, %69
  %idxprom64 = sext i32 %add63 to i64
  %70 = load i16*, i16** %pMB, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %70, i64 %idxprom64
  store i16 %67, i16* %arrayidx65, align 2
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.56
  %71 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %71, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.53

for.end.68:                                       ; preds = %for.cond.53
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.68
  %72 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %72, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond.49

for.end.71:                                       ; preds = %for.cond.49
  %73 = load i16*, i16** %pMB, align 8
  %add.ptr = getelementptr inbounds i16, i16* %73, i64 256
  store i16* %add.ptr, i16** %pMB, align 8
  %74 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc72 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %74, i32 0, i32 50
  %75 = load i32, i32* %chroma_format_idc72, align 4
  %cmp73 = icmp ne i32 %75, 0
  br i1 %cmp73, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.71
  %76 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_x75 = getelementptr inbounds %struct.img_par, %struct.img_par* %76, i32 0, i32 115
  %77 = load i32, i32* %mb_cr_size_x75, align 4
  %div76 = sdiv i32 64, %77
  store i32 %div76, i32* %f1_x, align 4
  %78 = load i32, i32* %f1_x, align 4
  %sub77 = sub nsw i32 %78, 1
  store i32 %sub77, i32* %f2_x, align 4
  %79 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_y78 = getelementptr inbounds %struct.img_par, %struct.img_par* %79, i32 0, i32 116
  %80 = load i32, i32* %mb_cr_size_y78, align 4
  %div79 = sdiv i32 64, %80
  store i32 %div79, i32* %f1_y, align 4
  %81 = load i32, i32* %f1_y, align 4
  %sub80 = sub nsw i32 %81, 1
  store i32 %sub80, i32* %f2_y, align 4
  %82 = load i32, i32* %f1_x, align 4
  %83 = load i32, i32* %f1_y, align 4
  %mul81 = mul nsw i32 %82, %83
  store i32 %mul81, i32* %f3, align 4
  %84 = load i32, i32* %f3, align 4
  %shr = ashr i32 %84, 1
  store i32 %shr, i32* %f4, align 4
  store i32 0, i32* %uv, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.252, %if.then
  %85 = load i32, i32* %uv, align 4
  %cmp83 = icmp slt i32 %85, 2
  br i1 %cmp83, label %for.body.85, label %for.end.254

for.body.85:                                      ; preds = %for.cond.82
  store i32 0, i32* %b8, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.225, %for.body.85
  %86 = load i32, i32* %b8, align 4
  %87 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %87, i32 0, i32 113
  %88 = load i32, i32* %num_blk8x8_uv, align 4
  %div87 = sdiv i32 %88, 2
  %cmp88 = icmp slt i32 %86, %div87
  br i1 %cmp88, label %for.body.90, label %for.end.227

for.body.90:                                      ; preds = %for.cond.86
  store i32 0, i32* %b4, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.222, %for.body.90
  %89 = load i32, i32* %b4, align 4
  %cmp92 = icmp slt i32 %89, 4
  br i1 %cmp92, label %for.body.94, label %for.end.224

for.body.94:                                      ; preds = %for.cond.91
  %90 = load i32, i32* %b4, align 4
  %idxprom95 = sext i32 %90 to i64
  %91 = load i32, i32* %b8, align 4
  %idxprom96 = sext i32 %91 to i64
  %92 = load i32, i32* %yuv, align 4
  %idxprom97 = sext i32 %92 to i64
  %arrayidx98 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_y, i32 0, i64 %idxprom97
  %arrayidx99 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx98, i32 0, i64 %idxprom96
  %arrayidx100 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx99, i32 0, i64 %idxprom95
  %93 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %93 to i32
  store i32 %conv101, i32* %joff, align 4
  %94 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_c_y102 = getelementptr inbounds %struct.img_par, %struct.img_par* %94, i32 0, i32 21
  %95 = load i32, i32* %pix_c_y102, align 4
  %96 = load i32, i32* %joff, align 4
  %add103 = add nsw i32 %95, %96
  store i32 %add103, i32* %j4, align 4
  %97 = load i32, i32* %b4, align 4
  %idxprom104 = sext i32 %97 to i64
  %98 = load i32, i32* %b8, align 4
  %idxprom105 = sext i32 %98 to i64
  %99 = load i32, i32* %yuv, align 4
  %idxprom106 = sext i32 %99 to i64
  %arrayidx107 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_x, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx107, i32 0, i64 %idxprom105
  %arrayidx109 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx108, i32 0, i64 %idxprom104
  %100 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %100 to i32
  store i32 %conv110, i32* %ioff, align 4
  %101 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_c_x111 = getelementptr inbounds %struct.img_par, %struct.img_par* %101, i32 0, i32 23
  %102 = load i32, i32* %pix_c_x111, align 4
  %103 = load i32, i32* %ioff, align 4
  %add112 = add nsw i32 %102, %103
  store i32 %add112, i32* %i4, align 4
  store i32 0, i32* %jj, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.219, %for.body.94
  %104 = load i32, i32* %jj, align 4
  %cmp114 = icmp slt i32 %104, 4
  br i1 %cmp114, label %for.body.116, label %for.end.221

for.body.116:                                     ; preds = %for.cond.113
  %105 = load i32, i32* %j4, align 4
  %106 = load i32, i32* %jj, align 4
  %add117 = add nsw i32 %105, %106
  %107 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_y118 = getelementptr inbounds %struct.img_par, %struct.img_par* %107, i32 0, i32 116
  %108 = load i32, i32* %mb_cr_size_y118, align 4
  %div119 = sdiv i32 %108, 4
  %div120 = sdiv i32 %add117, %div119
  store i32 %div120, i32* %jf, align 4
  store i32 0, i32* %ii, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.216, %for.body.116
  %109 = load i32, i32* %ii, align 4
  %cmp122 = icmp slt i32 %109, 4
  br i1 %cmp122, label %for.body.124, label %for.end.218

for.body.124:                                     ; preds = %for.cond.121
  %110 = load i32, i32* %i4, align 4
  %111 = load i32, i32* %ii, align 4
  %add125 = add nsw i32 %110, %111
  %112 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_x126 = getelementptr inbounds %struct.img_par, %struct.img_par* %112, i32 0, i32 115
  %113 = load i32, i32* %mb_cr_size_x126, align 4
  %div127 = sdiv i32 %113, 4
  %div128 = sdiv i32 %add125, %div127
  store i32 %div128, i32* %ifx, align 4
  %114 = load i32, i32* %i4, align 4
  %115 = load i32, i32* %ii, align 4
  %add129 = add nsw i32 %114, %115
  %116 = load i32, i32* %f1_x, align 4
  %mul130 = mul nsw i32 %add129, %116
  %117 = load i32*, i32** %mv.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %117, i64 0
  %118 = load i32, i32* %arrayidx131, align 4
  %add132 = add nsw i32 %mul130, %118
  store i32 %add132, i32* %i1, align 4
  %119 = load i32, i32* %j4, align 4
  %120 = load i32, i32* %jj, align 4
  %add133 = add nsw i32 %119, %120
  %121 = load i32, i32* %f1_y, align 4
  %mul134 = mul nsw i32 %add133, %121
  %122 = load i32*, i32** %mv.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %122, i64 1
  %123 = load i32, i32* %arrayidx135, align 4
  %add136 = add nsw i32 %mul134, %123
  store i32 %add136, i32* %j1, align 4
  %124 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %124, i32 0, i32 21
  %125 = load i32, i32* %size_x_cr, align 4
  %sub137 = sub nsw i32 %125, 1
  %126 = load i32, i32* %i1, align 4
  %127 = load i32, i32* %f1_x, align 4
  %div138 = sdiv i32 %126, %127
  %call139 = call i32 @iClip3(i32 0, i32 %sub137, i32 %div138)
  store i32 %call139, i32* %ii0, align 4
  %128 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %128, i32 0, i32 22
  %129 = load i32, i32* %size_y_cr, align 4
  %sub140 = sub nsw i32 %129, 1
  %130 = load i32, i32* %j1, align 4
  %131 = load i32, i32* %f1_y, align 4
  %div141 = sdiv i32 %130, %131
  %call142 = call i32 @iClip3(i32 0, i32 %sub140, i32 %div141)
  store i32 %call142, i32* %jj0, align 4
  %132 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x_cr143 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %132, i32 0, i32 21
  %133 = load i32, i32* %size_x_cr143, align 4
  %sub144 = sub nsw i32 %133, 1
  %134 = load i32, i32* %i1, align 4
  %135 = load i32, i32* %f2_x, align 4
  %add145 = add nsw i32 %134, %135
  %136 = load i32, i32* %f1_x, align 4
  %div146 = sdiv i32 %add145, %136
  %call147 = call i32 @iClip3(i32 0, i32 %sub144, i32 %div146)
  store i32 %call147, i32* %ii1, align 4
  %137 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_y_cr148 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %137, i32 0, i32 22
  %138 = load i32, i32* %size_y_cr148, align 4
  %sub149 = sub nsw i32 %138, 1
  %139 = load i32, i32* %j1, align 4
  %140 = load i32, i32* %f2_y, align 4
  %add150 = add nsw i32 %139, %140
  %141 = load i32, i32* %f1_y, align 4
  %div151 = sdiv i32 %add150, %141
  %call152 = call i32 @iClip3(i32 0, i32 %sub149, i32 %div151)
  store i32 %call152, i32* %jj1, align 4
  %142 = load i32, i32* %i1, align 4
  %143 = load i32, i32* %f2_x, align 4
  %and = and i32 %142, %143
  store i32 %and, i32* %if1, align 4
  %144 = load i32, i32* %j1, align 4
  %145 = load i32, i32* %f2_y, align 4
  %and153 = and i32 %144, %145
  store i32 %and153, i32* %jf1, align 4
  %146 = load i32, i32* %f1_x, align 4
  %147 = load i32, i32* %if1, align 4
  %sub154 = sub nsw i32 %146, %147
  store i32 %sub154, i32* %if0, align 4
  %148 = load i32, i32* %f1_y, align 4
  %149 = load i32, i32* %jf1, align 4
  %sub155 = sub nsw i32 %148, %149
  store i32 %sub155, i32* %jf0, align 4
  %150 = load i32, i32* %if0, align 4
  %151 = load i32, i32* %jf0, align 4
  %mul156 = mul nsw i32 %150, %151
  %152 = load i32, i32* %ii0, align 4
  %idxprom157 = sext i32 %152 to i64
  %153 = load i32, i32* %jj0, align 4
  %idxprom158 = sext i32 %153 to i64
  %154 = load i32, i32* %uv, align 4
  %idxprom159 = sext i32 %154 to i64
  %155 = load i32, i32* %ref_frame, align 4
  %idxprom160 = sext i32 %155 to i64
  %156 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx161 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %156, i64 %idxprom160
  %157 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx161, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %157, i32 0, i32 33
  %158 = load i16***, i16**** %imgUV, align 8
  %arrayidx162 = getelementptr inbounds i16**, i16*** %158, i64 %idxprom159
  %159 = load i16**, i16*** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i16*, i16** %159, i64 %idxprom158
  %160 = load i16*, i16** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i16, i16* %160, i64 %idxprom157
  %161 = load i16, i16* %arrayidx164, align 2
  %conv165 = zext i16 %161 to i32
  %mul166 = mul nsw i32 %mul156, %conv165
  %162 = load i32, i32* %if1, align 4
  %163 = load i32, i32* %jf0, align 4
  %mul167 = mul nsw i32 %162, %163
  %164 = load i32, i32* %ii1, align 4
  %idxprom168 = sext i32 %164 to i64
  %165 = load i32, i32* %jj0, align 4
  %idxprom169 = sext i32 %165 to i64
  %166 = load i32, i32* %uv, align 4
  %idxprom170 = sext i32 %166 to i64
  %167 = load i32, i32* %ref_frame, align 4
  %idxprom171 = sext i32 %167 to i64
  %168 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx172 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %168, i64 %idxprom171
  %169 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx172, align 8
  %imgUV173 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %169, i32 0, i32 33
  %170 = load i16***, i16**** %imgUV173, align 8
  %arrayidx174 = getelementptr inbounds i16**, i16*** %170, i64 %idxprom170
  %171 = load i16**, i16*** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i16*, i16** %171, i64 %idxprom169
  %172 = load i16*, i16** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds i16, i16* %172, i64 %idxprom168
  %173 = load i16, i16* %arrayidx176, align 2
  %conv177 = zext i16 %173 to i32
  %mul178 = mul nsw i32 %mul167, %conv177
  %add179 = add nsw i32 %mul166, %mul178
  %174 = load i32, i32* %if0, align 4
  %175 = load i32, i32* %jf1, align 4
  %mul180 = mul nsw i32 %174, %175
  %176 = load i32, i32* %ii0, align 4
  %idxprom181 = sext i32 %176 to i64
  %177 = load i32, i32* %jj1, align 4
  %idxprom182 = sext i32 %177 to i64
  %178 = load i32, i32* %uv, align 4
  %idxprom183 = sext i32 %178 to i64
  %179 = load i32, i32* %ref_frame, align 4
  %idxprom184 = sext i32 %179 to i64
  %180 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx185 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %180, i64 %idxprom184
  %181 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx185, align 8
  %imgUV186 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %181, i32 0, i32 33
  %182 = load i16***, i16**** %imgUV186, align 8
  %arrayidx187 = getelementptr inbounds i16**, i16*** %182, i64 %idxprom183
  %183 = load i16**, i16*** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i16*, i16** %183, i64 %idxprom182
  %184 = load i16*, i16** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i16, i16* %184, i64 %idxprom181
  %185 = load i16, i16* %arrayidx189, align 2
  %conv190 = zext i16 %185 to i32
  %mul191 = mul nsw i32 %mul180, %conv190
  %add192 = add nsw i32 %add179, %mul191
  %186 = load i32, i32* %if1, align 4
  %187 = load i32, i32* %jf1, align 4
  %mul193 = mul nsw i32 %186, %187
  %188 = load i32, i32* %ii1, align 4
  %idxprom194 = sext i32 %188 to i64
  %189 = load i32, i32* %jj1, align 4
  %idxprom195 = sext i32 %189 to i64
  %190 = load i32, i32* %uv, align 4
  %idxprom196 = sext i32 %190 to i64
  %191 = load i32, i32* %ref_frame, align 4
  %idxprom197 = sext i32 %191 to i64
  %192 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx198 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %192, i64 %idxprom197
  %193 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx198, align 8
  %imgUV199 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %193, i32 0, i32 33
  %194 = load i16***, i16**** %imgUV199, align 8
  %arrayidx200 = getelementptr inbounds i16**, i16*** %194, i64 %idxprom196
  %195 = load i16**, i16*** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i16*, i16** %195, i64 %idxprom195
  %196 = load i16*, i16** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds i16, i16* %196, i64 %idxprom194
  %197 = load i16, i16* %arrayidx202, align 2
  %conv203 = zext i16 %197 to i32
  %mul204 = mul nsw i32 %mul193, %conv203
  %add205 = add nsw i32 %add192, %mul204
  %198 = load i32, i32* %f4, align 4
  %add206 = add nsw i32 %add205, %198
  %199 = load i32, i32* %f3, align 4
  %div207 = sdiv i32 %add206, %199
  %conv208 = trunc i32 %div207 to i16
  %200 = load i32, i32* %ii, align 4
  %201 = load i32, i32* %ioff, align 4
  %add209 = add nsw i32 %200, %201
  %idxprom210 = sext i32 %add209 to i64
  %202 = load i32, i32* %jj, align 4
  %203 = load i32, i32* %joff, align 4
  %add211 = add nsw i32 %202, %203
  %idxprom212 = sext i32 %add211 to i64
  %204 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr213 = getelementptr inbounds %struct.img_par, %struct.img_par* %204, i32 0, i32 25
  %arrayidx214 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr213, i32 0, i64 %idxprom212
  %arrayidx215 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx214, i32 0, i64 %idxprom210
  store i16 %conv208, i16* %arrayidx215, align 2
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.body.124
  %205 = load i32, i32* %ii, align 4
  %inc217 = add nsw i32 %205, 1
  store i32 %inc217, i32* %ii, align 4
  br label %for.cond.121

for.end.218:                                      ; preds = %for.cond.121
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.end.218
  %206 = load i32, i32* %jj, align 4
  %inc220 = add nsw i32 %206, 1
  store i32 %inc220, i32* %jj, align 4
  br label %for.cond.113

for.end.221:                                      ; preds = %for.cond.113
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.end.221
  %207 = load i32, i32* %b4, align 4
  %inc223 = add nsw i32 %207, 1
  store i32 %inc223, i32* %b4, align 4
  br label %for.cond.91

for.end.224:                                      ; preds = %for.cond.91
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.end.224
  %208 = load i32, i32* %b8, align 4
  %inc226 = add nsw i32 %208, 1
  store i32 %inc226, i32* %b8, align 4
  br label %for.cond.86

for.end.227:                                      ; preds = %for.cond.86
  store i32 0, i32* %j, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.248, %for.end.227
  %209 = load i32, i32* %j, align 4
  %cmp229 = icmp slt i32 %209, 8
  br i1 %cmp229, label %for.body.231, label %for.end.250

for.body.231:                                     ; preds = %for.cond.228
  store i32 0, i32* %i, align 4
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.245, %for.body.231
  %210 = load i32, i32* %i, align 4
  %cmp233 = icmp slt i32 %210, 8
  br i1 %cmp233, label %for.body.235, label %for.end.247

for.body.235:                                     ; preds = %for.cond.232
  %211 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %211 to i64
  %212 = load i32, i32* %j, align 4
  %idxprom237 = sext i32 %212 to i64
  %213 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr238 = getelementptr inbounds %struct.img_par, %struct.img_par* %213, i32 0, i32 25
  %arrayidx239 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr238, i32 0, i64 %idxprom237
  %arrayidx240 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx239, i32 0, i64 %idxprom236
  %214 = load i16, i16* %arrayidx240, align 2
  %215 = load i32, i32* %j, align 4
  %mul241 = mul nsw i32 %215, 8
  %216 = load i32, i32* %i, align 4
  %add242 = add nsw i32 %mul241, %216
  %idxprom243 = sext i32 %add242 to i64
  %217 = load i16*, i16** %pMB, align 8
  %arrayidx244 = getelementptr inbounds i16, i16* %217, i64 %idxprom243
  store i16 %214, i16* %arrayidx244, align 2
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.235
  %218 = load i32, i32* %i, align 4
  %inc246 = add nsw i32 %218, 1
  store i32 %inc246, i32* %i, align 4
  br label %for.cond.232

for.end.247:                                      ; preds = %for.cond.232
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.end.247
  %219 = load i32, i32* %j, align 4
  %inc249 = add nsw i32 %219, 1
  store i32 %inc249, i32* %j, align 4
  br label %for.cond.228

for.end.250:                                      ; preds = %for.cond.228
  %220 = load i16*, i16** %pMB, align 8
  %add.ptr251 = getelementptr inbounds i16, i16* %220, i64 64
  store i16* %add.ptr251, i16** %pMB, align 8
  br label %for.inc.252

for.inc.252:                                      ; preds = %for.end.250
  %221 = load i32, i32* %uv, align 4
  %inc253 = add nsw i32 %221, 1
  store i32 %inc253, i32* %uv, align 4
  br label %for.cond.82

for.end.254:                                      ; preds = %for.cond.82
  br label %if.end

if.end:                                           ; preds = %for.end.254, %for.end.71
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @edgeDistortion(i32* %predBlocks, i32 %currYBlockNum, i16* %predMB, i16* %recY, i32 %picSizeX, i32 %regionSize) #0 {
entry:
  %retval = alloca i32, align 4
  %predBlocks.addr = alloca i32*, align 8
  %currYBlockNum.addr = alloca i32, align 4
  %predMB.addr = alloca i16*, align 8
  %recY.addr = alloca i16*, align 8
  %picSizeX.addr = alloca i32, align 4
  %regionSize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %distortion = alloca i32, align 4
  %numOfPredBlocks = alloca i32, align 4
  %threshold = alloca i32, align 4
  %currBlock = alloca i16*, align 8
  %neighbor = alloca i16*, align 8
  %currBlockOffset = alloca i32, align 4
  store i32* %predBlocks, i32** %predBlocks.addr, align 8
  store i32 %currYBlockNum, i32* %currYBlockNum.addr, align 4
  store i16* %predMB, i16** %predMB.addr, align 8
  store i16* %recY, i16** %recY.addr, align 8
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store i32 %regionSize, i32* %regionSize.addr, align 4
  store i32 3, i32* %threshold, align 4
  store i16* null, i16** %currBlock, align 8
  store i16* null, i16** %neighbor, align 8
  store i32 0, i32* %currBlockOffset, align 4
  %0 = load i16*, i16** %recY.addr, align 8
  %1 = load i32, i32* %currYBlockNum.addr, align 4
  %2 = load i32, i32* %picSizeX.addr, align 4
  %shr = ashr i32 %2, 3
  %div = sdiv i32 %1, %shr
  %shl = shl i32 %div, 3
  %3 = load i32, i32* %picSizeX.addr, align 4
  %mul = mul nsw i32 %shl, %3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  %4 = load i32, i32* %currYBlockNum.addr, align 4
  %5 = load i32, i32* %picSizeX.addr, align 4
  %shr1 = ashr i32 %5, 3
  %rem = srem i32 %4, %shr1
  %shl2 = shl i32 %rem, 3
  %idx.ext3 = sext i32 %shl2 to i64
  %add.ptr4 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext3
  store i16* %add.ptr4, i16** %currBlock, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %distortion, align 4
  store i32 0, i32* %numOfPredBlocks, align 4
  store i32 4, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.172, %do.body
  %6 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %6, 8
  br i1 %cmp, label %for.body, label %for.end.174

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %threshold, align 4
  %cmp5 = icmp sge i32 %9, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  switch i32 %11, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.33
    i32 6, label %sw.bb.77
    i32 7, label %sw.bb.122
  ]

sw.bb:                                            ; preds = %if.then
  %12 = load i16*, i16** %currBlock, align 8
  %13 = load i32, i32* %picSizeX.addr, align 4
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg = sub i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds i16, i16* %12, i64 %idx.neg
  store i16* %add.ptr7, i16** %neighbor, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %sw.bb
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %regionSize.addr, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load i16*, i16** %predMB.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %17, i64 %idxprom11
  %18 = load i16, i16* %arrayidx12, align 2
  %conv = zext i16 %18 to i32
  %19 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load i16*, i16** %neighbor, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %20, i64 %idxprom13
  %21 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %21 to i32
  %sub = sub nsw i32 %conv, %conv15
  %cmp16 = icmp slt i32 %sub, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.10
  %22 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load i16*, i16** %predMB.addr, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %23, i64 %idxprom18
  %24 = load i16, i16* %arrayidx19, align 2
  %conv20 = zext i16 %24 to i32
  %25 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i16*, i16** %neighbor, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %26, i64 %idxprom21
  %27 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %27 to i32
  %sub24 = sub nsw i32 %conv20, %conv23
  %sub25 = sub nsw i32 0, %sub24
  br label %cond.end

cond.false:                                       ; preds = %for.body.10
  %28 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load i16*, i16** %predMB.addr, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %29, i64 %idxprom26
  %30 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %30 to i32
  %31 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %31 to i64
  %32 = load i16*, i16** %neighbor, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %32, i64 %idxprom29
  %33 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %33 to i32
  %sub32 = sub nsw i32 %conv28, %conv31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub25, %cond.true ], [ %sub32, %cond.false ]
  %34 = load i32, i32* %distortion, align 4
  %add = add nsw i32 %34, %cond
  store i32 %add, i32* %distortion, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.then
  %36 = load i16*, i16** %currBlock, align 8
  %add.ptr34 = getelementptr inbounds i16, i16* %36, i64 -1
  store i16* %add.ptr34, i16** %neighbor, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.74, %sw.bb.33
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %regionSize.addr, align 4
  %cmp36 = icmp slt i32 %37, %38
  br i1 %cmp36, label %for.body.38, label %for.end.76

for.body.38:                                      ; preds = %for.cond.35
  %39 = load i32, i32* %i, align 4
  %mul39 = mul nsw i32 %39, 16
  %idxprom40 = sext i32 %mul39 to i64
  %40 = load i16*, i16** %predMB.addr, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %40, i64 %idxprom40
  %41 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %41 to i32
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %picSizeX.addr, align 4
  %mul43 = mul nsw i32 %42, %43
  %idxprom44 = sext i32 %mul43 to i64
  %44 = load i16*, i16** %neighbor, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %44, i64 %idxprom44
  %45 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %45 to i32
  %sub47 = sub nsw i32 %conv42, %conv46
  %cmp48 = icmp slt i32 %sub47, 0
  br i1 %cmp48, label %cond.true.50, label %cond.false.61

cond.true.50:                                     ; preds = %for.body.38
  %46 = load i32, i32* %i, align 4
  %mul51 = mul nsw i32 %46, 16
  %idxprom52 = sext i32 %mul51 to i64
  %47 = load i16*, i16** %predMB.addr, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %47, i64 %idxprom52
  %48 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %48 to i32
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %picSizeX.addr, align 4
  %mul55 = mul nsw i32 %49, %50
  %idxprom56 = sext i32 %mul55 to i64
  %51 = load i16*, i16** %neighbor, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %51, i64 %idxprom56
  %52 = load i16, i16* %arrayidx57, align 2
  %conv58 = zext i16 %52 to i32
  %sub59 = sub nsw i32 %conv54, %conv58
  %sub60 = sub nsw i32 0, %sub59
  br label %cond.end.71

cond.false.61:                                    ; preds = %for.body.38
  %53 = load i32, i32* %i, align 4
  %mul62 = mul nsw i32 %53, 16
  %idxprom63 = sext i32 %mul62 to i64
  %54 = load i16*, i16** %predMB.addr, align 8
  %arrayidx64 = getelementptr inbounds i16, i16* %54, i64 %idxprom63
  %55 = load i16, i16* %arrayidx64, align 2
  %conv65 = zext i16 %55 to i32
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %picSizeX.addr, align 4
  %mul66 = mul nsw i32 %56, %57
  %idxprom67 = sext i32 %mul66 to i64
  %58 = load i16*, i16** %neighbor, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %58, i64 %idxprom67
  %59 = load i16, i16* %arrayidx68, align 2
  %conv69 = zext i16 %59 to i32
  %sub70 = sub nsw i32 %conv65, %conv69
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.61, %cond.true.50
  %cond72 = phi i32 [ %sub60, %cond.true.50 ], [ %sub70, %cond.false.61 ]
  %60 = load i32, i32* %distortion, align 4
  %add73 = add nsw i32 %60, %cond72
  store i32 %add73, i32* %distortion, align 4
  br label %for.inc.74

for.inc.74:                                       ; preds = %cond.end.71
  %61 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %61, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond.35

for.end.76:                                       ; preds = %for.cond.35
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.then
  %62 = load i16*, i16** %currBlock, align 8
  %63 = load i32, i32* %regionSize.addr, align 4
  %64 = load i32, i32* %picSizeX.addr, align 4
  %mul78 = mul nsw i32 %63, %64
  %idx.ext79 = sext i32 %mul78 to i64
  %add.ptr80 = getelementptr inbounds i16, i16* %62, i64 %idx.ext79
  store i16* %add.ptr80, i16** %neighbor, align 8
  %65 = load i32, i32* %regionSize.addr, align 4
  %sub81 = sub nsw i32 %65, 1
  %mul82 = mul nsw i32 %sub81, 16
  store i32 %mul82, i32* %currBlockOffset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.119, %sw.bb.77
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %regionSize.addr, align 4
  %cmp84 = icmp slt i32 %66, %67
  br i1 %cmp84, label %for.body.86, label %for.end.121

for.body.86:                                      ; preds = %for.cond.83
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %currBlockOffset, align 4
  %add87 = add nsw i32 %68, %69
  %idxprom88 = sext i32 %add87 to i64
  %70 = load i16*, i16** %predMB.addr, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %70, i64 %idxprom88
  %71 = load i16, i16* %arrayidx89, align 2
  %conv90 = zext i16 %71 to i32
  %72 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %72 to i64
  %73 = load i16*, i16** %neighbor, align 8
  %arrayidx92 = getelementptr inbounds i16, i16* %73, i64 %idxprom91
  %74 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %74 to i32
  %sub94 = sub nsw i32 %conv90, %conv93
  %cmp95 = icmp slt i32 %sub94, 0
  br i1 %cmp95, label %cond.true.97, label %cond.false.107

cond.true.97:                                     ; preds = %for.body.86
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %currBlockOffset, align 4
  %add98 = add nsw i32 %75, %76
  %idxprom99 = sext i32 %add98 to i64
  %77 = load i16*, i16** %predMB.addr, align 8
  %arrayidx100 = getelementptr inbounds i16, i16* %77, i64 %idxprom99
  %78 = load i16, i16* %arrayidx100, align 2
  %conv101 = zext i16 %78 to i32
  %79 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %79 to i64
  %80 = load i16*, i16** %neighbor, align 8
  %arrayidx103 = getelementptr inbounds i16, i16* %80, i64 %idxprom102
  %81 = load i16, i16* %arrayidx103, align 2
  %conv104 = zext i16 %81 to i32
  %sub105 = sub nsw i32 %conv101, %conv104
  %sub106 = sub nsw i32 0, %sub105
  br label %cond.end.116

cond.false.107:                                   ; preds = %for.body.86
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %currBlockOffset, align 4
  %add108 = add nsw i32 %82, %83
  %idxprom109 = sext i32 %add108 to i64
  %84 = load i16*, i16** %predMB.addr, align 8
  %arrayidx110 = getelementptr inbounds i16, i16* %84, i64 %idxprom109
  %85 = load i16, i16* %arrayidx110, align 2
  %conv111 = zext i16 %85 to i32
  %86 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %86 to i64
  %87 = load i16*, i16** %neighbor, align 8
  %arrayidx113 = getelementptr inbounds i16, i16* %87, i64 %idxprom112
  %88 = load i16, i16* %arrayidx113, align 2
  %conv114 = zext i16 %88 to i32
  %sub115 = sub nsw i32 %conv111, %conv114
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.107, %cond.true.97
  %cond117 = phi i32 [ %sub106, %cond.true.97 ], [ %sub115, %cond.false.107 ]
  %89 = load i32, i32* %distortion, align 4
  %add118 = add nsw i32 %89, %cond117
  store i32 %add118, i32* %distortion, align 4
  br label %for.inc.119

for.inc.119:                                      ; preds = %cond.end.116
  %90 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %90, 1
  store i32 %inc120, i32* %i, align 4
  br label %for.cond.83

for.end.121:                                      ; preds = %for.cond.83
  br label %sw.epilog

sw.bb.122:                                        ; preds = %if.then
  %91 = load i16*, i16** %currBlock, align 8
  %92 = load i32, i32* %regionSize.addr, align 4
  %idx.ext123 = sext i32 %92 to i64
  %add.ptr124 = getelementptr inbounds i16, i16* %91, i64 %idx.ext123
  store i16* %add.ptr124, i16** %neighbor, align 8
  %93 = load i32, i32* %regionSize.addr, align 4
  %sub125 = sub nsw i32 %93, 1
  store i32 %sub125, i32* %currBlockOffset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.168, %sw.bb.122
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %regionSize.addr, align 4
  %cmp127 = icmp slt i32 %94, %95
  br i1 %cmp127, label %for.body.129, label %for.end.170

for.body.129:                                     ; preds = %for.cond.126
  %96 = load i32, i32* %i, align 4
  %mul130 = mul nsw i32 %96, 16
  %97 = load i32, i32* %currBlockOffset, align 4
  %add131 = add nsw i32 %mul130, %97
  %idxprom132 = sext i32 %add131 to i64
  %98 = load i16*, i16** %predMB.addr, align 8
  %arrayidx133 = getelementptr inbounds i16, i16* %98, i64 %idxprom132
  %99 = load i16, i16* %arrayidx133, align 2
  %conv134 = zext i16 %99 to i32
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %picSizeX.addr, align 4
  %mul135 = mul nsw i32 %100, %101
  %idxprom136 = sext i32 %mul135 to i64
  %102 = load i16*, i16** %neighbor, align 8
  %arrayidx137 = getelementptr inbounds i16, i16* %102, i64 %idxprom136
  %103 = load i16, i16* %arrayidx137, align 2
  %conv138 = zext i16 %103 to i32
  %sub139 = sub nsw i32 %conv134, %conv138
  %cmp140 = icmp slt i32 %sub139, 0
  br i1 %cmp140, label %cond.true.142, label %cond.false.154

cond.true.142:                                    ; preds = %for.body.129
  %104 = load i32, i32* %i, align 4
  %mul143 = mul nsw i32 %104, 16
  %105 = load i32, i32* %currBlockOffset, align 4
  %add144 = add nsw i32 %mul143, %105
  %idxprom145 = sext i32 %add144 to i64
  %106 = load i16*, i16** %predMB.addr, align 8
  %arrayidx146 = getelementptr inbounds i16, i16* %106, i64 %idxprom145
  %107 = load i16, i16* %arrayidx146, align 2
  %conv147 = zext i16 %107 to i32
  %108 = load i32, i32* %i, align 4
  %109 = load i32, i32* %picSizeX.addr, align 4
  %mul148 = mul nsw i32 %108, %109
  %idxprom149 = sext i32 %mul148 to i64
  %110 = load i16*, i16** %neighbor, align 8
  %arrayidx150 = getelementptr inbounds i16, i16* %110, i64 %idxprom149
  %111 = load i16, i16* %arrayidx150, align 2
  %conv151 = zext i16 %111 to i32
  %sub152 = sub nsw i32 %conv147, %conv151
  %sub153 = sub nsw i32 0, %sub152
  br label %cond.end.165

cond.false.154:                                   ; preds = %for.body.129
  %112 = load i32, i32* %i, align 4
  %mul155 = mul nsw i32 %112, 16
  %113 = load i32, i32* %currBlockOffset, align 4
  %add156 = add nsw i32 %mul155, %113
  %idxprom157 = sext i32 %add156 to i64
  %114 = load i16*, i16** %predMB.addr, align 8
  %arrayidx158 = getelementptr inbounds i16, i16* %114, i64 %idxprom157
  %115 = load i16, i16* %arrayidx158, align 2
  %conv159 = zext i16 %115 to i32
  %116 = load i32, i32* %i, align 4
  %117 = load i32, i32* %picSizeX.addr, align 4
  %mul160 = mul nsw i32 %116, %117
  %idxprom161 = sext i32 %mul160 to i64
  %118 = load i16*, i16** %neighbor, align 8
  %arrayidx162 = getelementptr inbounds i16, i16* %118, i64 %idxprom161
  %119 = load i16, i16* %arrayidx162, align 2
  %conv163 = zext i16 %119 to i32
  %sub164 = sub nsw i32 %conv159, %conv163
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.154, %cond.true.142
  %cond166 = phi i32 [ %sub153, %cond.true.142 ], [ %sub164, %cond.false.154 ]
  %120 = load i32, i32* %distortion, align 4
  %add167 = add nsw i32 %120, %cond166
  store i32 %add167, i32* %distortion, align 4
  br label %for.inc.168

for.inc.168:                                      ; preds = %cond.end.165
  %121 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %121, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.126

for.end.170:                                      ; preds = %for.cond.126
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %for.end.170, %for.end.121, %for.end.76, %for.end
  %122 = load i32, i32* %numOfPredBlocks, align 4
  %inc171 = add nsw i32 %122, 1
  store i32 %inc171, i32* %numOfPredBlocks, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.body
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end
  %123 = load i32, i32* %j, align 4
  %inc173 = add nsw i32 %123, 1
  store i32 %inc173, i32* %j, align 4
  br label %for.cond

for.end.174:                                      ; preds = %for.cond
  %124 = load i32, i32* %threshold, align 4
  %dec = add nsw i32 %124, -1
  store i32 %dec, i32* %threshold, align 4
  %125 = load i32, i32* %threshold, align 4
  %cmp175 = icmp slt i32 %125, 2
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %for.end.174
  br label %do.end

if.end.178:                                       ; preds = %for.end.174
  br label %do.cond

do.cond:                                          ; preds = %if.end.178
  %126 = load i32, i32* %numOfPredBlocks, align 4
  %cmp179 = icmp eq i32 %126, 0
  br i1 %cmp179, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.177
  %127 = load i32, i32* %numOfPredBlocks, align 4
  %cmp181 = icmp eq i32 %127, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.184:                                       ; preds = %do.end
  %128 = load i32, i32* %distortion, align 4
  %129 = load i32, i32* %numOfPredBlocks, align 4
  %div185 = sdiv i32 %128, %129
  store i32 %div185, i32* %retval
  br label %return

return:                                           ; preds = %if.end.184, %if.then.183
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define internal void @copyPredMB(i32 %currYBlockNum, i16* %predMB, %struct.frame* %recfr, i32 %picSizeX, i32 %regionSize) #0 {
entry:
  %currYBlockNum.addr = alloca i32, align 4
  %predMB.addr = alloca i16*, align 8
  %recfr.addr = alloca %struct.frame*, align 8
  %picSizeX.addr = alloca i32, align 4
  %regionSize.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %xmin = alloca i32, align 4
  %ymin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %ymax = alloca i32, align 4
  %locationTmp = alloca i32, align 4
  %locationPred = alloca i32, align 4
  %uv_x = alloca i32, align 4
  %uv_y = alloca i32, align 4
  store i32 %currYBlockNum, i32* %currYBlockNum.addr, align 4
  store i16* %predMB, i16** %predMB.addr, align 8
  store %struct.frame* %recfr, %struct.frame** %recfr.addr, align 8
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store i32 %regionSize, i32* %regionSize.addr, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 50
  %1 = load i32, i32* %chroma_format_idc, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds ([2 x [4 x i32]], [2 x [4 x i32]]* @uv_div, i32 0, i64 0), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %uv_x, align 4
  %3 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %3, i32 0, i32 50
  %4 = load i32, i32* %chroma_format_idc1, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds ([2 x [4 x i32]], [2 x [4 x i32]]* @uv_div, i32 0, i64 1), i32 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %uv_y, align 4
  %6 = load i32, i32* %currYBlockNum.addr, align 4
  %7 = load i32, i32* %picSizeX.addr, align 4
  %shr = ashr i32 %7, 3
  %rem = srem i32 %6, %shr
  %shl = shl i32 %rem, 3
  store i32 %shl, i32* %xmin, align 4
  %8 = load i32, i32* %currYBlockNum.addr, align 4
  %9 = load i32, i32* %picSizeX.addr, align 4
  %shr4 = ashr i32 %9, 3
  %div = sdiv i32 %8, %shr4
  %shl5 = shl i32 %div, 3
  store i32 %shl5, i32* %ymin, align 4
  %10 = load i32, i32* %xmin, align 4
  %11 = load i32, i32* %regionSize.addr, align 4
  %add = add nsw i32 %10, %11
  %sub = sub nsw i32 %add, 1
  store i32 %sub, i32* %xmax, align 4
  %12 = load i32, i32* %ymin, align 4
  %13 = load i32, i32* %regionSize.addr, align 4
  %add6 = add nsw i32 %12, %13
  %sub7 = sub nsw i32 %add6, 1
  store i32 %sub7, i32* %ymax, align 4
  %14 = load i32, i32* %ymin, align 4
  store i32 %14, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %ymax, align 4
  %cmp = icmp sle i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %xmin, align 4
  store i32 %17, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %xmax, align 4
  %cmp9 = icmp sle i32 %18, %19
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %picSizeX.addr, align 4
  %mul = mul nsw i32 %20, %21
  %22 = load i32, i32* %k, align 4
  %add11 = add nsw i32 %mul, %22
  store i32 %add11, i32* %locationPred, align 4
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %ymin, align 4
  %sub12 = sub nsw i32 %23, %24
  %mul13 = mul nsw i32 %sub12, 16
  %25 = load i32, i32* %k, align 4
  %26 = load i32, i32* %xmin, align 4
  %sub14 = sub nsw i32 %25, %26
  %add15 = add nsw i32 %mul13, %sub14
  store i32 %add15, i32* %locationTmp, align 4
  %27 = load i32, i32* %locationTmp, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load i16*, i16** %predMB.addr, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %28, i64 %idxprom16
  %29 = load i16, i16* %arrayidx17, align 2
  %30 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %31 to i64
  %32 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %32, i32 0, i32 32
  %33 = load i16**, i16*** %imgY, align 8
  %arrayidx20 = getelementptr inbounds i16*, i16** %33, i64 %idxprom19
  %34 = load i16*, i16** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %34, i64 %idxprom18
  store i16 %29, i16* %arrayidx21, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %35 = load i32, i32* %k, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %36 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %36, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %37 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc25 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 50
  %38 = load i32, i32* %chroma_format_idc25, align 4
  %cmp26 = icmp ne i32 %38, 0
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.24
  %39 = load i32, i32* %ymin, align 4
  %40 = load i32, i32* %uv_y, align 4
  %shr27 = ashr i32 %39, %40
  store i32 %shr27, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.66, %if.then
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %ymax, align 4
  %43 = load i32, i32* %uv_y, align 4
  %shr29 = ashr i32 %42, %43
  %cmp30 = icmp sle i32 %41, %shr29
  br i1 %cmp30, label %for.body.31, label %for.end.68

for.body.31:                                      ; preds = %for.cond.28
  %44 = load i32, i32* %xmin, align 4
  %45 = load i32, i32* %uv_x, align 4
  %shr32 = ashr i32 %44, %45
  store i32 %shr32, i32* %k, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.63, %for.body.31
  %46 = load i32, i32* %k, align 4
  %47 = load i32, i32* %xmax, align 4
  %48 = load i32, i32* %uv_x, align 4
  %shr34 = ashr i32 %47, %48
  %cmp35 = icmp sle i32 %46, %shr34
  br i1 %cmp35, label %for.body.36, label %for.end.65

for.body.36:                                      ; preds = %for.cond.33
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %picSizeX.addr, align 4
  %mul37 = mul nsw i32 %49, %50
  %51 = load i32, i32* %uv_x, align 4
  %shr38 = ashr i32 %mul37, %51
  %52 = load i32, i32* %k, align 4
  %add39 = add nsw i32 %shr38, %52
  store i32 %add39, i32* %locationPred, align 4
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %ymin, align 4
  %55 = load i32, i32* %uv_y, align 4
  %shr40 = ashr i32 %54, %55
  %sub41 = sub nsw i32 %53, %shr40
  %56 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.img_par, %struct.img_par* %56, i32 0, i32 115
  %57 = load i32, i32* %mb_cr_size_x, align 4
  %mul42 = mul nsw i32 %sub41, %57
  %58 = load i32, i32* %k, align 4
  %59 = load i32, i32* %xmin, align 4
  %shr43 = ashr i32 %59, 1
  %sub44 = sub nsw i32 %58, %shr43
  %add45 = add nsw i32 %mul42, %sub44
  %add46 = add nsw i32 %add45, 256
  store i32 %add46, i32* %locationTmp, align 4
  %60 = load i32, i32* %locationTmp, align 4
  %idxprom47 = sext i32 %60 to i64
  %61 = load i16*, i16** %predMB.addr, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %61, i64 %idxprom47
  %62 = load i16, i16* %arrayidx48, align 2
  %63 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %63 to i64
  %64 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %64 to i64
  %65 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %65, i32 0, i32 33
  %66 = load i16***, i16**** %imgUV, align 8
  %arrayidx51 = getelementptr inbounds i16**, i16*** %66, i64 0
  %67 = load i16**, i16*** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i16*, i16** %67, i64 %idxprom50
  %68 = load i16*, i16** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %68, i64 %idxprom49
  store i16 %62, i16* %arrayidx53, align 2
  %69 = load i32, i32* %locationTmp, align 4
  %add54 = add nsw i32 %69, 64
  store i32 %add54, i32* %locationTmp, align 4
  %70 = load i32, i32* %locationTmp, align 4
  %idxprom55 = sext i32 %70 to i64
  %71 = load i16*, i16** %predMB.addr, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %71, i64 %idxprom55
  %72 = load i16, i16* %arrayidx56, align 2
  %73 = load i32, i32* %k, align 4
  %idxprom57 = sext i32 %73 to i64
  %74 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %74 to i64
  %75 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgUV59 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 33
  %76 = load i16***, i16**** %imgUV59, align 8
  %arrayidx60 = getelementptr inbounds i16**, i16*** %76, i64 1
  %77 = load i16**, i16*** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16*, i16** %77, i64 %idxprom58
  %78 = load i16*, i16** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %78, i64 %idxprom57
  store i16 %72, i16* %arrayidx62, align 2
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.36
  %79 = load i32, i32* %k, align 4
  %inc64 = add nsw i32 %79, 1
  store i32 %inc64, i32* %k, align 4
  br label %for.cond.33

for.end.65:                                       ; preds = %for.cond.33
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %80 = load i32, i32* %j, align 4
  %inc67 = add nsw i32 %80, 1
  store i32 %inc67, i32* %j, align 4
  br label %for.cond.28

for.end.68:                                       ; preds = %for.cond.28
  br label %if.end

if.end:                                           ; preds = %for.end.68, %for.end.24
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

declare void @get_block(i32, %struct.storable_picture**, i32, i32, %struct.img_par*, [4 x i32]*) #2

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

; Function Attrs: nounwind uwtable
define internal %struct.storable_picture* @get_last_ref_pic_from_dpb() #0 {
entry:
  %retval = alloca %struct.storable_picture*, align 8
  %used_size = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %sub = sub i32 %0, 1
  store i32 %sub, i32* %used_size, align 4
  %1 = load i32, i32* %used_size, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %4, i64 %idxprom
  %5 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %5, i32 0, i32 0
  %6 = load i32, i32* %is_used, align 4
  %cmp1 = icmp eq i32 %6, 3
  br i1 %cmp1, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx3 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %8, i64 %idxprom2
  %9 = load %struct.frame_store*, %struct.frame_store** %arrayidx3, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %9, i32 0, i32 12
  %10 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %used_for_reference = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 15
  %11 = load i32, i32* %used_for_reference, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx5 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %13, i64 %idxprom4
  %14 = load %struct.frame_store*, %struct.frame_store** %arrayidx5, align 8
  %frame6 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %14, i32 0, i32 12
  %15 = load %struct.storable_picture*, %struct.storable_picture** %frame6, align 8
  %is_long_term = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 14
  %16 = load i32, i32* %is_long_term, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx10 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %18, i64 %idxprom9
  %19 = load %struct.frame_store*, %struct.frame_store** %arrayidx10, align 8
  %frame11 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %19, i32 0, i32 12
  %20 = load %struct.storable_picture*, %struct.storable_picture** %frame11, align 8
  store %struct.storable_picture* %20, %struct.storable_picture** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %21 = load i32, i32* %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.storable_picture* null, %struct.storable_picture** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.8
  %22 = load %struct.storable_picture*, %struct.storable_picture** %retval
  ret %struct.storable_picture* %22
}

; Function Attrs: nounwind uwtable
define internal void @CopyImgData(i16** %inputY, i16*** %inputUV, i16** %outputY, i16*** %outputUV, i32 %img_width, i32 %img_height) #0 {
entry:
  %inputY.addr = alloca i16**, align 8
  %inputUV.addr = alloca i16***, align 8
  %outputY.addr = alloca i16**, align 8
  %outputUV.addr = alloca i16***, align 8
  %img_width.addr = alloca i32, align 4
  %img_height.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i16** %inputY, i16*** %inputY.addr, align 8
  store i16*** %inputUV, i16**** %inputUV.addr, align 8
  store i16** %outputY, i16*** %outputY.addr, align 8
  store i16*** %outputUV, i16**** %outputUV.addr, align 8
  store i32 %img_width, i32* %img_width.addr, align 4
  store i32 %img_height, i32* %img_height.addr, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %y, align 4
  %1 = load i32, i32* %img_height.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %img_width.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %x, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %y, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i16**, i16*** %inputY.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %6, i64 %idxprom4
  %7 = load i16*, i16** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx5, align 2
  %9 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32, i32* %y, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i16**, i16*** %outputY.addr, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %11, i64 %idxprom7
  %12 = load i16*, i16** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %12, i64 %idxprom6
  store i16 %8, i16* %arrayidx9, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %x, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %14 = load i32, i32* %y, align 4
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, i32* %y, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.43, %for.end.12
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %img_height.addr, align 4
  %div = sdiv i32 %16, 2
  %cmp14 = icmp slt i32 %15, %div
  br i1 %cmp14, label %for.body.15, label %for.end.45

for.body.15:                                      ; preds = %for.cond.13
  store i32 0, i32* %x, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.40, %for.body.15
  %17 = load i32, i32* %x, align 4
  %18 = load i32, i32* %img_width.addr, align 4
  %div17 = sdiv i32 %18, 2
  %cmp18 = icmp slt i32 %17, %div17
  br i1 %cmp18, label %for.body.19, label %for.end.42

for.body.19:                                      ; preds = %for.cond.16
  %19 = load i32, i32* %x, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load i32, i32* %y, align 4
  %idxprom21 = sext i32 %20 to i64
  %21 = load i16***, i16**** %inputUV.addr, align 8
  %arrayidx22 = getelementptr inbounds i16**, i16*** %21, i64 0
  %22 = load i16**, i16*** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16*, i16** %22, i64 %idxprom21
  %23 = load i16*, i16** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %23, i64 %idxprom20
  %24 = load i16, i16* %arrayidx24, align 2
  %25 = load i32, i32* %x, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load i32, i32* %y, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load i16***, i16**** %outputUV.addr, align 8
  %arrayidx27 = getelementptr inbounds i16**, i16*** %27, i64 0
  %28 = load i16**, i16*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i16*, i16** %28, i64 %idxprom26
  %29 = load i16*, i16** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %29, i64 %idxprom25
  store i16 %24, i16* %arrayidx29, align 2
  %30 = load i32, i32* %x, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load i32, i32* %y, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i16***, i16**** %inputUV.addr, align 8
  %arrayidx32 = getelementptr inbounds i16**, i16*** %32, i64 1
  %33 = load i16**, i16*** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i16*, i16** %33, i64 %idxprom31
  %34 = load i16*, i16** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %34, i64 %idxprom30
  %35 = load i16, i16* %arrayidx34, align 2
  %36 = load i32, i32* %x, align 4
  %idxprom35 = sext i32 %36 to i64
  %37 = load i32, i32* %y, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load i16***, i16**** %outputUV.addr, align 8
  %arrayidx37 = getelementptr inbounds i16**, i16*** %38, i64 1
  %39 = load i16**, i16*** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i16*, i16** %39, i64 %idxprom36
  %40 = load i16*, i16** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %40, i64 %idxprom35
  store i16 %35, i16* %arrayidx39, align 2
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.19
  %41 = load i32, i32* %x, align 4
  %inc41 = add nsw i32 %41, 1
  store i32 %inc41, i32* %x, align 4
  br label %for.cond.16

for.end.42:                                       ; preds = %for.cond.16
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.42
  %42 = load i32, i32* %y, align 4
  %inc44 = add nsw i32 %42, 1
  store i32 %inc44, i32* %y, align 4
  br label %for.cond.13

for.end.45:                                       ; preds = %for.cond.13
  ret void
}

declare void @init_lists(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @buildPredblockRegionYUV(%struct.img_par* %img, i32* %mv, i32 %x, i32 %y, i16* %predMB, i32 %list) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %mv.addr = alloca i32*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %predMB.addr = alloca i16*, align 8
  %list.addr = alloca i32, align 4
  %tmp_block = alloca [4 x [4 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %jf = alloca i32, align 4
  %uv = alloca i32, align 4
  %vec1_x = alloca i32, align 4
  %vec1_y = alloca i32, align 4
  %ioff = alloca i32, align 4
  %joff = alloca i32, align 4
  %pMB = alloca i16*, align 8
  %ii0 = alloca i32, align 4
  %jj0 = alloca i32, align 4
  %ii1 = alloca i32, align 4
  %jj1 = alloca i32, align 4
  %if1 = alloca i32, align 4
  %jf1 = alloca i32, align 4
  %if0 = alloca i32, align 4
  %jf0 = alloca i32, align 4
  %mv_mul = alloca i32, align 4
  %f1_x = alloca i32, align 4
  %f1_y = alloca i32, align 4
  %f2_x = alloca i32, align 4
  %f2_y = alloca i32, align 4
  %f3 = alloca i32, align 4
  %f4 = alloca i32, align 4
  %ifx = alloca i32, align 4
  %yuv = alloca i32, align 4
  %ref_frame = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32* %mv, i32** %mv.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i16* %predMB, i16** %predMB.addr, align 8
  store i32 %list, i32* %list.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %ii, align 4
  store i32 0, i32* %jj, align 4
  store i32 0, i32* %i1, align 4
  store i32 0, i32* %j1, align 4
  store i32 0, i32* %j4, align 4
  store i32 0, i32* %i4, align 4
  store i32 0, i32* %jf, align 4
  store i32 0, i32* %vec1_x, align 4
  store i32 0, i32* %vec1_y, align 4
  %0 = load i16*, i16** %predMB.addr, align 8
  store i16* %0, i16** %pMB, align 8
  %1 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1, i32 0, i32 50
  %2 = load i32, i32* %chroma_format_idc, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %yuv, align 4
  %3 = load i32*, i32** %mv.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 2
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %ref_frame, align 4
  %5 = load i32, i32* %x.addr, align 4
  %div = sdiv i32 %5, 4
  %6 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_x = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 17
  store i32 %div, i32* %mb_x, align 4
  %7 = load i32, i32* %y.addr, align 4
  %div1 = sdiv i32 %7, 4
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_y = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 16
  store i32 %div1, i32* %mb_y, align 4
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_y2 = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 16
  %10 = load i32, i32* %mb_y2, align 4
  %mul = mul nsw i32 %10, 4
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %block_y = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 18
  store i32 %mul, i32* %block_y, align 4
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_y3 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 16
  %13 = load i32, i32* %mb_y3, align 4
  %14 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 116
  %15 = load i32, i32* %mb_cr_size_y, align 4
  %mul4 = mul nsw i32 %13, %15
  %div5 = sdiv i32 %mul4, 4
  %16 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_c_y = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 21
  store i32 %div5, i32* %pix_c_y, align 4
  %17 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_x6 = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 17
  %18 = load i32, i32* %mb_x6, align 4
  %mul7 = mul nsw i32 %18, 4
  %19 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %block_x = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 22
  store i32 %mul7, i32* %block_x, align 4
  %20 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_x8 = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 17
  %21 = load i32, i32* %mb_x8, align 4
  %22 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 115
  %23 = load i32, i32* %mb_cr_size_x, align 4
  %mul9 = mul nsw i32 %21, %23
  %div10 = sdiv i32 %mul9, 4
  %24 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_c_x = getelementptr inbounds %struct.img_par, %struct.img_par* %24, i32 0, i32 23
  store i32 %div10, i32* %pix_c_x, align 4
  store i32 4, i32* %mv_mul, align 4
  %25 = load i32, i32* %x.addr, align 4
  %26 = load i32, i32* %mv_mul, align 4
  %mul11 = mul nsw i32 %25, %26
  %27 = load i32*, i32** %mv.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32, i32* %arrayidx12, align 4
  %add = add nsw i32 %mul11, %28
  store i32 %add, i32* %vec1_x, align 4
  %29 = load i32, i32* %y.addr, align 4
  %30 = load i32, i32* %mv_mul, align 4
  %mul13 = mul nsw i32 %29, %30
  %31 = load i32*, i32** %mv.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %31, i64 1
  %32 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %mul13, %32
  store i32 %add15, i32* %vec1_y, align 4
  %33 = load i32, i32* %ref_frame, align 4
  %34 = load i32, i32* %list.addr, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx16 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom
  %35 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx16, align 8
  %36 = load i32, i32* %vec1_x, align 4
  %37 = load i32, i32* %vec1_y, align 4
  %38 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp_block, i32 0, i32 0
  call void @get_block(i32 %33, %struct.storable_picture** %35, i32 %36, i32 %37, %struct.img_par* %38, [4 x i32]* %arraydecay)
  store i32 0, i32* %jj, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %39 = load i32, i32* %jj, align 4
  %cmp = icmp slt i32 %39, 4
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ii, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %40 = load i32, i32* %ii, align 4
  %cmp18 = icmp slt i32 %40, 4
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %41 = load i32, i32* %ii, align 4
  %idxprom20 = sext i32 %41 to i64
  %42 = load i32, i32* %jj, align 4
  %idxprom21 = sext i32 %42 to i64
  %arrayidx22 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp_block, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx22, i32 0, i64 %idxprom20
  %43 = load i32, i32* %arrayidx23, align 4
  %conv = trunc i32 %43 to i16
  %44 = load i32, i32* %ii, align 4
  %idxprom24 = sext i32 %44 to i64
  %45 = load i32, i32* %jj, align 4
  %idxprom25 = sext i32 %45 to i64
  %46 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr = getelementptr inbounds %struct.img_par, %struct.img_par* %46, i32 0, i32 25
  %arrayidx26 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx26, i32 0, i64 %idxprom24
  store i16 %conv, i16* %arrayidx27, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %47 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %48 = load i32, i32* %jj, align 4
  %inc29 = add nsw i32 %48, 1
  store i32 %inc29, i32* %jj, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.51, %for.end.30
  %49 = load i32, i32* %j, align 4
  %cmp32 = icmp slt i32 %49, 4
  br i1 %cmp32, label %for.body.34, label %for.end.53

for.body.34:                                      ; preds = %for.cond.31
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.48, %for.body.34
  %50 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %50, 4
  br i1 %cmp36, label %for.body.38, label %for.end.50

for.body.38:                                      ; preds = %for.cond.35
  %51 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %51 to i64
  %52 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %52 to i64
  %53 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr41 = getelementptr inbounds %struct.img_par, %struct.img_par* %53, i32 0, i32 25
  %arrayidx42 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr41, i32 0, i64 %idxprom40
  %arrayidx43 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx42, i32 0, i64 %idxprom39
  %54 = load i16, i16* %arrayidx43, align 2
  %55 = load i32, i32* %j, align 4
  %mul44 = mul nsw i32 %55, 4
  %56 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %mul44, %56
  %idxprom46 = sext i32 %add45 to i64
  %57 = load i16*, i16** %pMB, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %57, i64 %idxprom46
  store i16 %54, i16* %arrayidx47, align 2
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.38
  %58 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %58, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.35

for.end.50:                                       ; preds = %for.cond.35
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %59 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %59, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond.31

for.end.53:                                       ; preds = %for.cond.31
  %60 = load i16*, i16** %pMB, align 8
  %add.ptr = getelementptr inbounds i16, i16* %60, i64 16
  store i16* %add.ptr, i16** %pMB, align 8
  %61 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc54 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %61, i32 0, i32 50
  %62 = load i32, i32* %chroma_format_idc54, align 4
  %cmp55 = icmp ne i32 %62, 0
  br i1 %cmp55, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.53
  %63 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_x57 = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 115
  %64 = load i32, i32* %mb_cr_size_x57, align 4
  %div58 = sdiv i32 64, %64
  store i32 %div58, i32* %f1_x, align 4
  %65 = load i32, i32* %f1_x, align 4
  %sub59 = sub nsw i32 %65, 1
  store i32 %sub59, i32* %f2_x, align 4
  %66 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_y60 = getelementptr inbounds %struct.img_par, %struct.img_par* %66, i32 0, i32 116
  %67 = load i32, i32* %mb_cr_size_y60, align 4
  %div61 = sdiv i32 64, %67
  store i32 %div61, i32* %f1_y, align 4
  %68 = load i32, i32* %f1_y, align 4
  %sub62 = sub nsw i32 %68, 1
  store i32 %sub62, i32* %f2_y, align 4
  %69 = load i32, i32* %f1_x, align 4
  %70 = load i32, i32* %f1_y, align 4
  %mul63 = mul nsw i32 %69, %70
  store i32 %mul63, i32* %f3, align 4
  %71 = load i32, i32* %f3, align 4
  %shr = ashr i32 %71, 1
  store i32 %shr, i32* %f4, align 4
  store i32 0, i32* %uv, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.220, %if.then
  %72 = load i32, i32* %uv, align 4
  %cmp65 = icmp slt i32 %72, 2
  br i1 %cmp65, label %for.body.67, label %for.end.222

for.body.67:                                      ; preds = %for.cond.64
  %73 = load i32, i32* %yuv, align 4
  %idxprom68 = sext i32 %73 to i64
  %arrayidx69 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_y, i32 0, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx69, i32 0, i64 0
  %arrayidx71 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx70, i32 0, i64 0
  %74 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %74 to i32
  store i32 %conv72, i32* %joff, align 4
  %75 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_c_y73 = getelementptr inbounds %struct.img_par, %struct.img_par* %75, i32 0, i32 21
  %76 = load i32, i32* %pix_c_y73, align 4
  %77 = load i32, i32* %joff, align 4
  %add74 = add nsw i32 %76, %77
  store i32 %add74, i32* %j4, align 4
  %78 = load i32, i32* %yuv, align 4
  %idxprom75 = sext i32 %78 to i64
  %arrayidx76 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_x, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx76, i32 0, i64 0
  %arrayidx78 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx77, i32 0, i64 0
  %79 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %79 to i32
  store i32 %conv79, i32* %ioff, align 4
  %80 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_c_x80 = getelementptr inbounds %struct.img_par, %struct.img_par* %80, i32 0, i32 23
  %81 = load i32, i32* %pix_c_x80, align 4
  %82 = load i32, i32* %ioff, align 4
  %add81 = add nsw i32 %81, %82
  store i32 %add81, i32* %i4, align 4
  store i32 0, i32* %jj, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.193, %for.body.67
  %83 = load i32, i32* %jj, align 4
  %cmp83 = icmp slt i32 %83, 2
  br i1 %cmp83, label %for.body.85, label %for.end.195

for.body.85:                                      ; preds = %for.cond.82
  %84 = load i32, i32* %j4, align 4
  %85 = load i32, i32* %jj, align 4
  %add86 = add nsw i32 %84, %85
  %86 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_y87 = getelementptr inbounds %struct.img_par, %struct.img_par* %86, i32 0, i32 116
  %87 = load i32, i32* %mb_cr_size_y87, align 4
  %div88 = sdiv i32 %87, 4
  %div89 = sdiv i32 %add86, %div88
  store i32 %div89, i32* %jf, align 4
  store i32 0, i32* %ii, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.190, %for.body.85
  %88 = load i32, i32* %ii, align 4
  %cmp91 = icmp slt i32 %88, 2
  br i1 %cmp91, label %for.body.93, label %for.end.192

for.body.93:                                      ; preds = %for.cond.90
  %89 = load i32, i32* %i4, align 4
  %90 = load i32, i32* %ii, align 4
  %add94 = add nsw i32 %89, %90
  %91 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_x95 = getelementptr inbounds %struct.img_par, %struct.img_par* %91, i32 0, i32 115
  %92 = load i32, i32* %mb_cr_size_x95, align 4
  %div96 = sdiv i32 %92, 4
  %div97 = sdiv i32 %add94, %div96
  store i32 %div97, i32* %ifx, align 4
  %93 = load i32, i32* %i4, align 4
  %94 = load i32, i32* %ii, align 4
  %add98 = add nsw i32 %93, %94
  %95 = load i32, i32* %f1_x, align 4
  %mul99 = mul nsw i32 %add98, %95
  %96 = load i32*, i32** %mv.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %96, i64 0
  %97 = load i32, i32* %arrayidx100, align 4
  %add101 = add nsw i32 %mul99, %97
  store i32 %add101, i32* %i1, align 4
  %98 = load i32, i32* %j4, align 4
  %99 = load i32, i32* %jj, align 4
  %add102 = add nsw i32 %98, %99
  %100 = load i32, i32* %f1_y, align 4
  %mul103 = mul nsw i32 %add102, %100
  %101 = load i32*, i32** %mv.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %101, i64 1
  %102 = load i32, i32* %arrayidx104, align 4
  %add105 = add nsw i32 %mul103, %102
  store i32 %add105, i32* %j1, align 4
  %103 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %103, i32 0, i32 21
  %104 = load i32, i32* %size_x_cr, align 4
  %sub106 = sub nsw i32 %104, 1
  %105 = load i32, i32* %i1, align 4
  %106 = load i32, i32* %f1_x, align 4
  %div107 = sdiv i32 %105, %106
  %call = call i32 @iClip3(i32 0, i32 %sub106, i32 %div107)
  store i32 %call, i32* %ii0, align 4
  %107 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %107, i32 0, i32 22
  %108 = load i32, i32* %size_y_cr, align 4
  %sub108 = sub nsw i32 %108, 1
  %109 = load i32, i32* %j1, align 4
  %110 = load i32, i32* %f1_y, align 4
  %div109 = sdiv i32 %109, %110
  %call110 = call i32 @iClip3(i32 0, i32 %sub108, i32 %div109)
  store i32 %call110, i32* %jj0, align 4
  %111 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_x_cr111 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %111, i32 0, i32 21
  %112 = load i32, i32* %size_x_cr111, align 4
  %sub112 = sub nsw i32 %112, 1
  %113 = load i32, i32* %i1, align 4
  %114 = load i32, i32* %f2_x, align 4
  %add113 = add nsw i32 %113, %114
  %115 = load i32, i32* %f1_x, align 4
  %div114 = sdiv i32 %add113, %115
  %call115 = call i32 @iClip3(i32 0, i32 %sub112, i32 %div114)
  store i32 %call115, i32* %ii1, align 4
  %116 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %size_y_cr116 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %116, i32 0, i32 22
  %117 = load i32, i32* %size_y_cr116, align 4
  %sub117 = sub nsw i32 %117, 1
  %118 = load i32, i32* %j1, align 4
  %119 = load i32, i32* %f2_y, align 4
  %add118 = add nsw i32 %118, %119
  %120 = load i32, i32* %f1_y, align 4
  %div119 = sdiv i32 %add118, %120
  %call120 = call i32 @iClip3(i32 0, i32 %sub117, i32 %div119)
  store i32 %call120, i32* %jj1, align 4
  %121 = load i32, i32* %i1, align 4
  %122 = load i32, i32* %f2_x, align 4
  %and = and i32 %121, %122
  store i32 %and, i32* %if1, align 4
  %123 = load i32, i32* %j1, align 4
  %124 = load i32, i32* %f2_y, align 4
  %and121 = and i32 %123, %124
  store i32 %and121, i32* %jf1, align 4
  %125 = load i32, i32* %f1_x, align 4
  %126 = load i32, i32* %if1, align 4
  %sub122 = sub nsw i32 %125, %126
  store i32 %sub122, i32* %if0, align 4
  %127 = load i32, i32* %f1_y, align 4
  %128 = load i32, i32* %jf1, align 4
  %sub123 = sub nsw i32 %127, %128
  store i32 %sub123, i32* %jf0, align 4
  %129 = load i32, i32* %if0, align 4
  %130 = load i32, i32* %jf0, align 4
  %mul124 = mul nsw i32 %129, %130
  %131 = load i32, i32* %ii0, align 4
  %idxprom125 = sext i32 %131 to i64
  %132 = load i32, i32* %jj0, align 4
  %idxprom126 = sext i32 %132 to i64
  %133 = load i32, i32* %uv, align 4
  %idxprom127 = sext i32 %133 to i64
  %134 = load i32, i32* %ref_frame, align 4
  %idxprom128 = sext i32 %134 to i64
  %135 = load i32, i32* %list.addr, align 4
  %idxprom129 = sext i32 %135 to i64
  %arrayidx130 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom129
  %136 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %136, i64 %idxprom128
  %137 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx131, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %137, i32 0, i32 33
  %138 = load i16***, i16**** %imgUV, align 8
  %arrayidx132 = getelementptr inbounds i16**, i16*** %138, i64 %idxprom127
  %139 = load i16**, i16*** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i16*, i16** %139, i64 %idxprom126
  %140 = load i16*, i16** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i16, i16* %140, i64 %idxprom125
  %141 = load i16, i16* %arrayidx134, align 2
  %conv135 = zext i16 %141 to i32
  %mul136 = mul nsw i32 %mul124, %conv135
  %142 = load i32, i32* %if1, align 4
  %143 = load i32, i32* %jf0, align 4
  %mul137 = mul nsw i32 %142, %143
  %144 = load i32, i32* %ii1, align 4
  %idxprom138 = sext i32 %144 to i64
  %145 = load i32, i32* %jj0, align 4
  %idxprom139 = sext i32 %145 to i64
  %146 = load i32, i32* %uv, align 4
  %idxprom140 = sext i32 %146 to i64
  %147 = load i32, i32* %ref_frame, align 4
  %idxprom141 = sext i32 %147 to i64
  %148 = load i32, i32* %list.addr, align 4
  %idxprom142 = sext i32 %148 to i64
  %arrayidx143 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom142
  %149 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %149, i64 %idxprom141
  %150 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx144, align 8
  %imgUV145 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %150, i32 0, i32 33
  %151 = load i16***, i16**** %imgUV145, align 8
  %arrayidx146 = getelementptr inbounds i16**, i16*** %151, i64 %idxprom140
  %152 = load i16**, i16*** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i16*, i16** %152, i64 %idxprom139
  %153 = load i16*, i16** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i16, i16* %153, i64 %idxprom138
  %154 = load i16, i16* %arrayidx148, align 2
  %conv149 = zext i16 %154 to i32
  %mul150 = mul nsw i32 %mul137, %conv149
  %add151 = add nsw i32 %mul136, %mul150
  %155 = load i32, i32* %if0, align 4
  %156 = load i32, i32* %jf1, align 4
  %mul152 = mul nsw i32 %155, %156
  %157 = load i32, i32* %ii0, align 4
  %idxprom153 = sext i32 %157 to i64
  %158 = load i32, i32* %jj1, align 4
  %idxprom154 = sext i32 %158 to i64
  %159 = load i32, i32* %uv, align 4
  %idxprom155 = sext i32 %159 to i64
  %160 = load i32, i32* %ref_frame, align 4
  %idxprom156 = sext i32 %160 to i64
  %161 = load i32, i32* %list.addr, align 4
  %idxprom157 = sext i32 %161 to i64
  %arrayidx158 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom157
  %162 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %162, i64 %idxprom156
  %163 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx159, align 8
  %imgUV160 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %163, i32 0, i32 33
  %164 = load i16***, i16**** %imgUV160, align 8
  %arrayidx161 = getelementptr inbounds i16**, i16*** %164, i64 %idxprom155
  %165 = load i16**, i16*** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i16*, i16** %165, i64 %idxprom154
  %166 = load i16*, i16** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i16, i16* %166, i64 %idxprom153
  %167 = load i16, i16* %arrayidx163, align 2
  %conv164 = zext i16 %167 to i32
  %mul165 = mul nsw i32 %mul152, %conv164
  %add166 = add nsw i32 %add151, %mul165
  %168 = load i32, i32* %if1, align 4
  %169 = load i32, i32* %jf1, align 4
  %mul167 = mul nsw i32 %168, %169
  %170 = load i32, i32* %ii1, align 4
  %idxprom168 = sext i32 %170 to i64
  %171 = load i32, i32* %jj1, align 4
  %idxprom169 = sext i32 %171 to i64
  %172 = load i32, i32* %uv, align 4
  %idxprom170 = sext i32 %172 to i64
  %173 = load i32, i32* %ref_frame, align 4
  %idxprom171 = sext i32 %173 to i64
  %174 = load i32, i32* %list.addr, align 4
  %idxprom172 = sext i32 %174 to i64
  %arrayidx173 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom172
  %175 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %175, i64 %idxprom171
  %176 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx174, align 8
  %imgUV175 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %176, i32 0, i32 33
  %177 = load i16***, i16**** %imgUV175, align 8
  %arrayidx176 = getelementptr inbounds i16**, i16*** %177, i64 %idxprom170
  %178 = load i16**, i16*** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds i16*, i16** %178, i64 %idxprom169
  %179 = load i16*, i16** %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds i16, i16* %179, i64 %idxprom168
  %180 = load i16, i16* %arrayidx178, align 2
  %conv179 = zext i16 %180 to i32
  %mul180 = mul nsw i32 %mul167, %conv179
  %add181 = add nsw i32 %add166, %mul180
  %181 = load i32, i32* %f4, align 4
  %add182 = add nsw i32 %add181, %181
  %182 = load i32, i32* %f3, align 4
  %div183 = sdiv i32 %add182, %182
  %conv184 = trunc i32 %div183 to i16
  %183 = load i32, i32* %ii, align 4
  %idxprom185 = sext i32 %183 to i64
  %184 = load i32, i32* %jj, align 4
  %idxprom186 = sext i32 %184 to i64
  %185 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr187 = getelementptr inbounds %struct.img_par, %struct.img_par* %185, i32 0, i32 25
  %arrayidx188 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr187, i32 0, i64 %idxprom186
  %arrayidx189 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx188, i32 0, i64 %idxprom185
  store i16 %conv184, i16* %arrayidx189, align 2
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.93
  %186 = load i32, i32* %ii, align 4
  %inc191 = add nsw i32 %186, 1
  store i32 %inc191, i32* %ii, align 4
  br label %for.cond.90

for.end.192:                                      ; preds = %for.cond.90
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.192
  %187 = load i32, i32* %jj, align 4
  %inc194 = add nsw i32 %187, 1
  store i32 %inc194, i32* %jj, align 4
  br label %for.cond.82

for.end.195:                                      ; preds = %for.cond.82
  store i32 0, i32* %j, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.216, %for.end.195
  %188 = load i32, i32* %j, align 4
  %cmp197 = icmp slt i32 %188, 2
  br i1 %cmp197, label %for.body.199, label %for.end.218

for.body.199:                                     ; preds = %for.cond.196
  store i32 0, i32* %i, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.213, %for.body.199
  %189 = load i32, i32* %i, align 4
  %cmp201 = icmp slt i32 %189, 2
  br i1 %cmp201, label %for.body.203, label %for.end.215

for.body.203:                                     ; preds = %for.cond.200
  %190 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %190 to i64
  %191 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %191 to i64
  %192 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr206 = getelementptr inbounds %struct.img_par, %struct.img_par* %192, i32 0, i32 25
  %arrayidx207 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr206, i32 0, i64 %idxprom205
  %arrayidx208 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx207, i32 0, i64 %idxprom204
  %193 = load i16, i16* %arrayidx208, align 2
  %194 = load i32, i32* %j, align 4
  %mul209 = mul nsw i32 %194, 2
  %195 = load i32, i32* %i, align 4
  %add210 = add nsw i32 %mul209, %195
  %idxprom211 = sext i32 %add210 to i64
  %196 = load i16*, i16** %pMB, align 8
  %arrayidx212 = getelementptr inbounds i16, i16* %196, i64 %idxprom211
  store i16 %193, i16* %arrayidx212, align 2
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.203
  %197 = load i32, i32* %i, align 4
  %inc214 = add nsw i32 %197, 1
  store i32 %inc214, i32* %i, align 4
  br label %for.cond.200

for.end.215:                                      ; preds = %for.cond.200
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.end.215
  %198 = load i32, i32* %j, align 4
  %inc217 = add nsw i32 %198, 1
  store i32 %inc217, i32* %j, align 4
  br label %for.cond.196

for.end.218:                                      ; preds = %for.cond.196
  %199 = load i16*, i16** %pMB, align 8
  %add.ptr219 = getelementptr inbounds i16, i16* %199, i64 4
  store i16* %add.ptr219, i16** %pMB, align 8
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.end.218
  %200 = load i32, i32* %uv, align 4
  %inc221 = add nsw i32 %200, 1
  store i32 %inc221, i32* %uv, align 4
  br label %for.cond.64

for.end.222:                                      ; preds = %for.cond.64
  br label %if.end

if.end:                                           ; preds = %for.end.222, %for.end.53
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
