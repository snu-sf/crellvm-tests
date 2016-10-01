; ModuleID = './MultiSource.Applications.JM/10.ldecod.erc_do_i.bc'
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
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }
%struct.frame = type { i16*, i16*, i16* }
%struct.ercVariables_s = type { i32, i32, i32*, i32*, i32*, %struct.ercSegment_s*, i32, i32*, i32, i32, i32 }
%struct.ercSegment_s = type { i32, i32, i32 }

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
@img = external global %struct.img_par*, align 8

; Function Attrs: nounwind uwtable
define i32 @ercConcealIntraFrame(%struct.frame* %recfr, i32 %picSizeX, i32 %picSizeY, %struct.ercVariables_s* %errorVar) #0 {
entry:
  %retval = alloca i32, align 4
  %recfr.addr = alloca %struct.frame*, align 8
  %picSizeX.addr = alloca i32, align 4
  %picSizeY.addr = alloca i32, align 4
  %errorVar.addr = alloca %struct.ercVariables_s*, align 8
  %lastColumn = alloca i32, align 4
  %lastRow = alloca i32, align 4
  store %struct.frame* %recfr, %struct.frame** %recfr.addr, align 8
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store i32 %picSizeY, i32* %picSizeY.addr, align 4
  store %struct.ercVariables_s* %errorVar, %struct.ercVariables_s** %errorVar.addr, align 8
  store i32 0, i32* %lastColumn, align 4
  store i32 0, i32* %lastRow, align 4
  %0 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %tobool = icmp ne %struct.ercVariables_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %concealment = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i32 0, i32 10
  %2 = load i32, i32* %concealment, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %nOfCorruptedSegments = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i32 0, i32 9
  %4 = load i32, i32* %nOfCorruptedSegments, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i32, i32* %picSizeY.addr, align 4
  %shr = ashr i32 %5, 3
  store i32 %shr, i32* %lastRow, align 4
  %6 = load i32, i32* %picSizeX.addr, align 4
  %shr4 = ashr i32 %6, 3
  store i32 %shr4, i32* %lastColumn, align 4
  %7 = load i32, i32* %lastColumn, align 4
  %8 = load i32, i32* %lastRow, align 4
  %9 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %10 = load i32, i32* %picSizeX.addr, align 4
  %11 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %yCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %11, i32 0, i32 2
  %12 = load i32*, i32** %yCondition, align 8
  call void @concealBlocks(i32 %7, i32 %8, i32 0, %struct.frame* %9, i32 %10, i32* %12)
  %13 = load i32, i32* %picSizeY.addr, align 4
  %shr5 = ashr i32 %13, 4
  store i32 %shr5, i32* %lastRow, align 4
  %14 = load i32, i32* %picSizeX.addr, align 4
  %shr6 = ashr i32 %14, 4
  store i32 %shr6, i32* %lastColumn, align 4
  %15 = load i32, i32* %lastColumn, align 4
  %16 = load i32, i32* %lastRow, align 4
  %17 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %18 = load i32, i32* %picSizeX.addr, align 4
  %19 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %uCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %19, i32 0, i32 3
  %20 = load i32*, i32** %uCondition, align 8
  call void @concealBlocks(i32 %15, i32 %16, i32 1, %struct.frame* %17, i32 %18, i32* %20)
  %21 = load i32, i32* %lastColumn, align 4
  %22 = load i32, i32* %lastRow, align 4
  %23 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %24 = load i32, i32* %picSizeX.addr, align 4
  %25 = load %struct.ercVariables_s*, %struct.ercVariables_s** %errorVar.addr, align 8
  %vCondition = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %25, i32 0, i32 4
  %26 = load i32*, i32** %vCondition, align 8
  call void @concealBlocks(i32 %21, i32 %22, i32 2, %struct.frame* %23, i32 %24, i32* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal void @concealBlocks(i32 %lastColumn, i32 %lastRow, i32 %comp, %struct.frame* %recfr, i32 %picSizeX, i32* %condition) #0 {
entry:
  %lastColumn.addr = alloca i32, align 4
  %lastRow.addr = alloca i32, align 4
  %comp.addr = alloca i32, align 4
  %recfr.addr = alloca %struct.frame*, align 8
  %picSizeX.addr = alloca i32, align 4
  %condition.addr = alloca i32*, align 8
  %row = alloca i32, align 4
  %column = alloca i32, align 4
  %srcCounter = alloca i32, align 4
  %thr = alloca i32, align 4
  %lastCorruptedRow = alloca i32, align 4
  %firstCorruptedRow = alloca i32, align 4
  %currRow = alloca i32, align 4
  %areaHeight = alloca i32, align 4
  %i = alloca i32, align 4
  %smoothColumn = alloca i32, align 4
  %predBlocks = alloca [8 x i32], align 16
  %step = alloca i32, align 4
  store i32 %lastColumn, i32* %lastColumn.addr, align 4
  store i32 %lastRow, i32* %lastRow.addr, align 4
  store i32 %comp, i32* %comp.addr, align 4
  store %struct.frame* %recfr, %struct.frame** %recfr.addr, align 8
  store i32 %picSizeX, i32* %picSizeX.addr, align 4
  store i32* %condition, i32** %condition.addr, align 8
  store i32 0, i32* %srcCounter, align 4
  store i32 1, i32* %thr, align 4
  store i32 -1, i32* %lastCorruptedRow, align 4
  store i32 -1, i32* %firstCorruptedRow, align 4
  store i32 0, i32* %currRow, align 4
  store i32 0, i32* %areaHeight, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %smoothColumn, align 4
  store i32 1, i32* %step, align 4
  %0 = load i32, i32* %comp.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %step, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %step, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %column, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.183, %if.end
  %1 = load i32, i32* %column, align 4
  %2 = load i32, i32* %lastColumn.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end.185

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %row, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.180, %for.body
  %3 = load i32, i32* %row, align 4
  %4 = load i32, i32* %lastRow.addr, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body.4, label %for.end.182

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %row, align 4
  %6 = load i32, i32* %lastColumn.addr, align 4
  %mul = mul nsw i32 %5, %6
  %7 = load i32, i32* %column, align 4
  %add = add nsw i32 %mul, %7
  %idxprom = sext i32 %add to i64
  %8 = load i32*, i32** %condition.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %thr, align 4
  %cmp5 = icmp sle i32 %9, %10
  br i1 %cmp5, label %if.then.6, label %if.end.179

if.then.6:                                        ; preds = %for.body.4
  %11 = load i32, i32* %row, align 4
  store i32 %11, i32* %firstCorruptedRow, align 4
  %12 = load i32, i32* %row, align 4
  %13 = load i32, i32* %step, align 4
  %add7 = add nsw i32 %12, %13
  store i32 %add7, i32* %lastCorruptedRow, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.then.6
  %14 = load i32, i32* %lastCorruptedRow, align 4
  %15 = load i32, i32* %lastRow.addr, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %16 = load i32, i32* %lastCorruptedRow, align 4
  %17 = load i32, i32* %lastColumn.addr, align 4
  %mul11 = mul nsw i32 %16, %17
  %18 = load i32, i32* %column, align 4
  %add12 = add nsw i32 %mul11, %18
  %idxprom13 = sext i32 %add12 to i64
  %19 = load i32*, i32** %condition.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %19, i64 %idxprom13
  %20 = load i32, i32* %arrayidx14, align 4
  %21 = load i32, i32* %thr, align 4
  %cmp15 = icmp sgt i32 %20, %21
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body.10
  %22 = load i32, i32* %step, align 4
  %23 = load i32, i32* %lastCorruptedRow, align 4
  %sub = sub nsw i32 %23, %22
  store i32 %sub, i32* %lastCorruptedRow, align 4
  br label %for.end

if.end.17:                                        ; preds = %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %24 = load i32, i32* %step, align 4
  %25 = load i32, i32* %lastCorruptedRow, align 4
  %add18 = add nsw i32 %25, %24
  store i32 %add18, i32* %lastCorruptedRow, align 4
  br label %for.cond.8

for.end:                                          ; preds = %if.then.16, %for.cond.8
  %26 = load i32, i32* %lastCorruptedRow, align 4
  %27 = load i32, i32* %lastRow.addr, align 4
  %cmp19 = icmp sge i32 %26, %27
  br i1 %cmp19, label %if.then.20, label %if.else.62

if.then.20:                                       ; preds = %for.end
  %28 = load i32, i32* %lastRow.addr, align 4
  %29 = load i32, i32* %step, align 4
  %sub21 = sub nsw i32 %28, %29
  store i32 %sub21, i32* %lastCorruptedRow, align 4
  %30 = load i32, i32* %firstCorruptedRow, align 4
  store i32 %30, i32* %currRow, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.59, %if.then.20
  %31 = load i32, i32* %currRow, align 4
  %32 = load i32, i32* %lastRow.addr, align 4
  %cmp23 = icmp slt i32 %31, %32
  br i1 %cmp23, label %for.body.24, label %for.end.61

for.body.24:                                      ; preds = %for.cond.22
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %33 = load i32, i32* %currRow, align 4
  %34 = load i32, i32* %column, align 4
  %35 = load i32*, i32** %condition.addr, align 8
  %36 = load i32, i32* %lastRow.addr, align 4
  %37 = load i32, i32* %lastColumn.addr, align 4
  %38 = load i32, i32* %step, align 4
  %call = call i32 @ercCollect8PredBlocks(i32* %arraydecay, i32 %33, i32 %34, i32* %35, i32 %36, i32 %37, i32 %38, i8 zeroext 1)
  store i32 %call, i32* %srcCounter, align 4
  %39 = load i32, i32* %comp.addr, align 4
  switch i32 %39, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.26
    i32 2, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %for.body.24
  %40 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %yptr = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 0
  %41 = load i16*, i16** %yptr, align 8
  %42 = load i32, i32* %currRow, align 4
  %43 = load i32, i32* %column, align 4
  %arraydecay25 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %44 = load i32, i32* %picSizeX.addr, align 4
  call void @ercPixConcealIMB(i16* %41, i32 %42, i32 %43, i32* %arraydecay25, i32 %44, i32 2)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body.24
  %45 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %uptr = getelementptr inbounds %struct.frame, %struct.frame* %45, i32 0, i32 1
  %46 = load i16*, i16** %uptr, align 8
  %47 = load i32, i32* %currRow, align 4
  %48 = load i32, i32* %column, align 4
  %arraydecay27 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %49 = load i32, i32* %picSizeX.addr, align 4
  %shr = ashr i32 %49, 1
  call void @ercPixConcealIMB(i16* %46, i32 %47, i32 %48, i32* %arraydecay27, i32 %shr, i32 1)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.body.24
  %50 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %vptr = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 2
  %51 = load i16*, i16** %vptr, align 8
  %52 = load i32, i32* %currRow, align 4
  %53 = load i32, i32* %column, align 4
  %arraydecay29 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %54 = load i32, i32* %picSizeX.addr, align 4
  %shr30 = ashr i32 %54, 1
  call void @ercPixConcealIMB(i16* %51, i32 %52, i32 %53, i32* %arraydecay29, i32 %shr30, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.24, %sw.bb.28, %sw.bb.26, %sw.bb
  %55 = load i32, i32* %comp.addr, align 4
  %cmp31 = icmp eq i32 %55, 0
  br i1 %cmp31, label %if.then.32, label %if.else.53

if.then.32:                                       ; preds = %sw.epilog
  %56 = load i32, i32* %currRow, align 4
  %57 = load i32, i32* %lastColumn.addr, align 4
  %mul33 = mul nsw i32 %56, %57
  %58 = load i32, i32* %column, align 4
  %add34 = add nsw i32 %mul33, %58
  %idxprom35 = sext i32 %add34 to i64
  %59 = load i32*, i32** %condition.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %59, i64 %idxprom35
  store i32 2, i32* %arrayidx36, align 4
  %60 = load i32, i32* %currRow, align 4
  %61 = load i32, i32* %lastColumn.addr, align 4
  %mul37 = mul nsw i32 %60, %61
  %62 = load i32, i32* %column, align 4
  %add38 = add nsw i32 %mul37, %62
  %add39 = add nsw i32 %add38, 1
  %idxprom40 = sext i32 %add39 to i64
  %63 = load i32*, i32** %condition.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %63, i64 %idxprom40
  store i32 2, i32* %arrayidx41, align 4
  %64 = load i32, i32* %currRow, align 4
  %65 = load i32, i32* %lastColumn.addr, align 4
  %mul42 = mul nsw i32 %64, %65
  %66 = load i32, i32* %column, align 4
  %add43 = add nsw i32 %mul42, %66
  %67 = load i32, i32* %lastColumn.addr, align 4
  %add44 = add nsw i32 %add43, %67
  %idxprom45 = sext i32 %add44 to i64
  %68 = load i32*, i32** %condition.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %68, i64 %idxprom45
  store i32 2, i32* %arrayidx46, align 4
  %69 = load i32, i32* %currRow, align 4
  %70 = load i32, i32* %lastColumn.addr, align 4
  %mul47 = mul nsw i32 %69, %70
  %71 = load i32, i32* %column, align 4
  %add48 = add nsw i32 %mul47, %71
  %72 = load i32, i32* %lastColumn.addr, align 4
  %add49 = add nsw i32 %add48, %72
  %add50 = add nsw i32 %add49, 1
  %idxprom51 = sext i32 %add50 to i64
  %73 = load i32*, i32** %condition.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %73, i64 %idxprom51
  store i32 2, i32* %arrayidx52, align 4
  br label %if.end.58

if.else.53:                                       ; preds = %sw.epilog
  %74 = load i32, i32* %currRow, align 4
  %75 = load i32, i32* %lastColumn.addr, align 4
  %mul54 = mul nsw i32 %74, %75
  %76 = load i32, i32* %column, align 4
  %add55 = add nsw i32 %mul54, %76
  %idxprom56 = sext i32 %add55 to i64
  %77 = load i32*, i32** %condition.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %77, i64 %idxprom56
  store i32 2, i32* %arrayidx57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.53, %if.then.32
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %78 = load i32, i32* %step, align 4
  %79 = load i32, i32* %currRow, align 4
  %add60 = add nsw i32 %79, %78
  store i32 %add60, i32* %currRow, align 4
  br label %for.cond.22

for.end.61:                                       ; preds = %for.cond.22
  %80 = load i32, i32* %lastRow.addr, align 4
  store i32 %80, i32* %row, align 4
  br label %if.end.178

if.else.62:                                       ; preds = %for.end
  %81 = load i32, i32* %firstCorruptedRow, align 4
  %cmp63 = icmp eq i32 %81, 0
  br i1 %cmp63, label %if.then.64, label %if.else.114

if.then.64:                                       ; preds = %if.else.62
  %82 = load i32, i32* %lastCorruptedRow, align 4
  store i32 %82, i32* %currRow, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.110, %if.then.64
  %83 = load i32, i32* %currRow, align 4
  %cmp66 = icmp sge i32 %83, 0
  br i1 %cmp66, label %for.body.67, label %for.end.112

for.body.67:                                      ; preds = %for.cond.65
  %arraydecay68 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %84 = load i32, i32* %currRow, align 4
  %85 = load i32, i32* %column, align 4
  %86 = load i32*, i32** %condition.addr, align 8
  %87 = load i32, i32* %lastRow.addr, align 4
  %88 = load i32, i32* %lastColumn.addr, align 4
  %89 = load i32, i32* %step, align 4
  %call69 = call i32 @ercCollect8PredBlocks(i32* %arraydecay68, i32 %84, i32 %85, i32* %86, i32 %87, i32 %88, i32 %89, i8 zeroext 1)
  store i32 %call69, i32* %srcCounter, align 4
  %90 = load i32, i32* %comp.addr, align 4
  switch i32 %90, label %sw.epilog.81 [
    i32 0, label %sw.bb.70
    i32 1, label %sw.bb.73
    i32 2, label %sw.bb.77
  ]

sw.bb.70:                                         ; preds = %for.body.67
  %91 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %yptr71 = getelementptr inbounds %struct.frame, %struct.frame* %91, i32 0, i32 0
  %92 = load i16*, i16** %yptr71, align 8
  %93 = load i32, i32* %currRow, align 4
  %94 = load i32, i32* %column, align 4
  %arraydecay72 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %95 = load i32, i32* %picSizeX.addr, align 4
  call void @ercPixConcealIMB(i16* %92, i32 %93, i32 %94, i32* %arraydecay72, i32 %95, i32 2)
  br label %sw.epilog.81

sw.bb.73:                                         ; preds = %for.body.67
  %96 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %uptr74 = getelementptr inbounds %struct.frame, %struct.frame* %96, i32 0, i32 1
  %97 = load i16*, i16** %uptr74, align 8
  %98 = load i32, i32* %currRow, align 4
  %99 = load i32, i32* %column, align 4
  %arraydecay75 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %100 = load i32, i32* %picSizeX.addr, align 4
  %shr76 = ashr i32 %100, 1
  call void @ercPixConcealIMB(i16* %97, i32 %98, i32 %99, i32* %arraydecay75, i32 %shr76, i32 1)
  br label %sw.epilog.81

sw.bb.77:                                         ; preds = %for.body.67
  %101 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %vptr78 = getelementptr inbounds %struct.frame, %struct.frame* %101, i32 0, i32 2
  %102 = load i16*, i16** %vptr78, align 8
  %103 = load i32, i32* %currRow, align 4
  %104 = load i32, i32* %column, align 4
  %arraydecay79 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %105 = load i32, i32* %picSizeX.addr, align 4
  %shr80 = ashr i32 %105, 1
  call void @ercPixConcealIMB(i16* %102, i32 %103, i32 %104, i32* %arraydecay79, i32 %shr80, i32 1)
  br label %sw.epilog.81

sw.epilog.81:                                     ; preds = %for.body.67, %sw.bb.77, %sw.bb.73, %sw.bb.70
  %106 = load i32, i32* %comp.addr, align 4
  %cmp82 = icmp eq i32 %106, 0
  br i1 %cmp82, label %if.then.83, label %if.else.104

if.then.83:                                       ; preds = %sw.epilog.81
  %107 = load i32, i32* %currRow, align 4
  %108 = load i32, i32* %lastColumn.addr, align 4
  %mul84 = mul nsw i32 %107, %108
  %109 = load i32, i32* %column, align 4
  %add85 = add nsw i32 %mul84, %109
  %idxprom86 = sext i32 %add85 to i64
  %110 = load i32*, i32** %condition.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %110, i64 %idxprom86
  store i32 2, i32* %arrayidx87, align 4
  %111 = load i32, i32* %currRow, align 4
  %112 = load i32, i32* %lastColumn.addr, align 4
  %mul88 = mul nsw i32 %111, %112
  %113 = load i32, i32* %column, align 4
  %add89 = add nsw i32 %mul88, %113
  %add90 = add nsw i32 %add89, 1
  %idxprom91 = sext i32 %add90 to i64
  %114 = load i32*, i32** %condition.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %114, i64 %idxprom91
  store i32 2, i32* %arrayidx92, align 4
  %115 = load i32, i32* %currRow, align 4
  %116 = load i32, i32* %lastColumn.addr, align 4
  %mul93 = mul nsw i32 %115, %116
  %117 = load i32, i32* %column, align 4
  %add94 = add nsw i32 %mul93, %117
  %118 = load i32, i32* %lastColumn.addr, align 4
  %add95 = add nsw i32 %add94, %118
  %idxprom96 = sext i32 %add95 to i64
  %119 = load i32*, i32** %condition.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %119, i64 %idxprom96
  store i32 2, i32* %arrayidx97, align 4
  %120 = load i32, i32* %currRow, align 4
  %121 = load i32, i32* %lastColumn.addr, align 4
  %mul98 = mul nsw i32 %120, %121
  %122 = load i32, i32* %column, align 4
  %add99 = add nsw i32 %mul98, %122
  %123 = load i32, i32* %lastColumn.addr, align 4
  %add100 = add nsw i32 %add99, %123
  %add101 = add nsw i32 %add100, 1
  %idxprom102 = sext i32 %add101 to i64
  %124 = load i32*, i32** %condition.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %124, i64 %idxprom102
  store i32 2, i32* %arrayidx103, align 4
  br label %if.end.109

if.else.104:                                      ; preds = %sw.epilog.81
  %125 = load i32, i32* %currRow, align 4
  %126 = load i32, i32* %lastColumn.addr, align 4
  %mul105 = mul nsw i32 %125, %126
  %127 = load i32, i32* %column, align 4
  %add106 = add nsw i32 %mul105, %127
  %idxprom107 = sext i32 %add106 to i64
  %128 = load i32*, i32** %condition.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %128, i64 %idxprom107
  store i32 2, i32* %arrayidx108, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.104, %if.then.83
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %129 = load i32, i32* %step, align 4
  %130 = load i32, i32* %currRow, align 4
  %sub111 = sub nsw i32 %130, %129
  store i32 %sub111, i32* %currRow, align 4
  br label %for.cond.65

for.end.112:                                      ; preds = %for.cond.65
  %131 = load i32, i32* %lastCorruptedRow, align 4
  %132 = load i32, i32* %step, align 4
  %add113 = add nsw i32 %131, %132
  store i32 %add113, i32* %row, align 4
  br label %if.end.177

if.else.114:                                      ; preds = %if.else.62
  %133 = load i32, i32* %lastCorruptedRow, align 4
  %134 = load i32, i32* %step, align 4
  %add115 = add nsw i32 %133, %134
  store i32 %add115, i32* %row, align 4
  %135 = load i32, i32* %lastCorruptedRow, align 4
  %136 = load i32, i32* %firstCorruptedRow, align 4
  %sub116 = sub nsw i32 %135, %136
  %137 = load i32, i32* %step, align 4
  %add117 = add nsw i32 %sub116, %137
  store i32 %add117, i32* %areaHeight, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.174, %if.else.114
  %138 = load i32, i32* %i, align 4
  %139 = load i32, i32* %areaHeight, align 4
  %cmp119 = icmp slt i32 %138, %139
  br i1 %cmp119, label %for.body.120, label %for.end.176

for.body.120:                                     ; preds = %for.cond.118
  %140 = load i32, i32* %i, align 4
  %rem = srem i32 %140, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then.121, label %if.else.123

if.then.121:                                      ; preds = %for.body.120
  %141 = load i32, i32* %lastCorruptedRow, align 4
  store i32 %141, i32* %currRow, align 4
  %142 = load i32, i32* %step, align 4
  %143 = load i32, i32* %lastCorruptedRow, align 4
  %sub122 = sub nsw i32 %143, %142
  store i32 %sub122, i32* %lastCorruptedRow, align 4
  br label %if.end.125

if.else.123:                                      ; preds = %for.body.120
  %144 = load i32, i32* %firstCorruptedRow, align 4
  store i32 %144, i32* %currRow, align 4
  %145 = load i32, i32* %step, align 4
  %146 = load i32, i32* %firstCorruptedRow, align 4
  %add124 = add nsw i32 %146, %145
  store i32 %add124, i32* %firstCorruptedRow, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.123, %if.then.121
  %147 = load i32, i32* %smoothColumn, align 4
  %cmp126 = icmp sgt i32 %147, 0
  br i1 %cmp126, label %if.then.127, label %if.else.130

if.then.127:                                      ; preds = %if.end.125
  %arraydecay128 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %148 = load i32, i32* %currRow, align 4
  %149 = load i32, i32* %column, align 4
  %150 = load i32*, i32** %condition.addr, align 8
  %151 = load i32, i32* %lastRow.addr, align 4
  %152 = load i32, i32* %lastColumn.addr, align 4
  %153 = load i32, i32* %step, align 4
  %call129 = call i32 @ercCollectColumnBlocks(i32* %arraydecay128, i32 %148, i32 %149, i32* %150, i32 %151, i32 %152, i32 %153)
  store i32 %call129, i32* %srcCounter, align 4
  br label %if.end.133

if.else.130:                                      ; preds = %if.end.125
  %arraydecay131 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %154 = load i32, i32* %currRow, align 4
  %155 = load i32, i32* %column, align 4
  %156 = load i32*, i32** %condition.addr, align 8
  %157 = load i32, i32* %lastRow.addr, align 4
  %158 = load i32, i32* %lastColumn.addr, align 4
  %159 = load i32, i32* %step, align 4
  %call132 = call i32 @ercCollect8PredBlocks(i32* %arraydecay131, i32 %154, i32 %155, i32* %156, i32 %157, i32 %158, i32 %159, i8 zeroext 1)
  store i32 %call132, i32* %srcCounter, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.127
  %160 = load i32, i32* %comp.addr, align 4
  switch i32 %160, label %sw.epilog.145 [
    i32 0, label %sw.bb.134
    i32 1, label %sw.bb.137
    i32 2, label %sw.bb.141
  ]

sw.bb.134:                                        ; preds = %if.end.133
  %161 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %yptr135 = getelementptr inbounds %struct.frame, %struct.frame* %161, i32 0, i32 0
  %162 = load i16*, i16** %yptr135, align 8
  %163 = load i32, i32* %currRow, align 4
  %164 = load i32, i32* %column, align 4
  %arraydecay136 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %165 = load i32, i32* %picSizeX.addr, align 4
  call void @ercPixConcealIMB(i16* %162, i32 %163, i32 %164, i32* %arraydecay136, i32 %165, i32 2)
  br label %sw.epilog.145

sw.bb.137:                                        ; preds = %if.end.133
  %166 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %uptr138 = getelementptr inbounds %struct.frame, %struct.frame* %166, i32 0, i32 1
  %167 = load i16*, i16** %uptr138, align 8
  %168 = load i32, i32* %currRow, align 4
  %169 = load i32, i32* %column, align 4
  %arraydecay139 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %170 = load i32, i32* %picSizeX.addr, align 4
  %shr140 = ashr i32 %170, 1
  call void @ercPixConcealIMB(i16* %167, i32 %168, i32 %169, i32* %arraydecay139, i32 %shr140, i32 1)
  br label %sw.epilog.145

sw.bb.141:                                        ; preds = %if.end.133
  %171 = load %struct.frame*, %struct.frame** %recfr.addr, align 8
  %vptr142 = getelementptr inbounds %struct.frame, %struct.frame* %171, i32 0, i32 2
  %172 = load i16*, i16** %vptr142, align 8
  %173 = load i32, i32* %currRow, align 4
  %174 = load i32, i32* %column, align 4
  %arraydecay143 = getelementptr inbounds [8 x i32], [8 x i32]* %predBlocks, i32 0, i32 0
  %175 = load i32, i32* %picSizeX.addr, align 4
  %shr144 = ashr i32 %175, 1
  call void @ercPixConcealIMB(i16* %172, i32 %173, i32 %174, i32* %arraydecay143, i32 %shr144, i32 1)
  br label %sw.epilog.145

sw.epilog.145:                                    ; preds = %if.end.133, %sw.bb.141, %sw.bb.137, %sw.bb.134
  %176 = load i32, i32* %comp.addr, align 4
  %cmp146 = icmp eq i32 %176, 0
  br i1 %cmp146, label %if.then.147, label %if.else.168

if.then.147:                                      ; preds = %sw.epilog.145
  %177 = load i32, i32* %currRow, align 4
  %178 = load i32, i32* %lastColumn.addr, align 4
  %mul148 = mul nsw i32 %177, %178
  %179 = load i32, i32* %column, align 4
  %add149 = add nsw i32 %mul148, %179
  %idxprom150 = sext i32 %add149 to i64
  %180 = load i32*, i32** %condition.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %180, i64 %idxprom150
  store i32 2, i32* %arrayidx151, align 4
  %181 = load i32, i32* %currRow, align 4
  %182 = load i32, i32* %lastColumn.addr, align 4
  %mul152 = mul nsw i32 %181, %182
  %183 = load i32, i32* %column, align 4
  %add153 = add nsw i32 %mul152, %183
  %add154 = add nsw i32 %add153, 1
  %idxprom155 = sext i32 %add154 to i64
  %184 = load i32*, i32** %condition.addr, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %184, i64 %idxprom155
  store i32 2, i32* %arrayidx156, align 4
  %185 = load i32, i32* %currRow, align 4
  %186 = load i32, i32* %lastColumn.addr, align 4
  %mul157 = mul nsw i32 %185, %186
  %187 = load i32, i32* %column, align 4
  %add158 = add nsw i32 %mul157, %187
  %188 = load i32, i32* %lastColumn.addr, align 4
  %add159 = add nsw i32 %add158, %188
  %idxprom160 = sext i32 %add159 to i64
  %189 = load i32*, i32** %condition.addr, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %189, i64 %idxprom160
  store i32 2, i32* %arrayidx161, align 4
  %190 = load i32, i32* %currRow, align 4
  %191 = load i32, i32* %lastColumn.addr, align 4
  %mul162 = mul nsw i32 %190, %191
  %192 = load i32, i32* %column, align 4
  %add163 = add nsw i32 %mul162, %192
  %193 = load i32, i32* %lastColumn.addr, align 4
  %add164 = add nsw i32 %add163, %193
  %add165 = add nsw i32 %add164, 1
  %idxprom166 = sext i32 %add165 to i64
  %194 = load i32*, i32** %condition.addr, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %194, i64 %idxprom166
  store i32 2, i32* %arrayidx167, align 4
  br label %if.end.173

if.else.168:                                      ; preds = %sw.epilog.145
  %195 = load i32, i32* %currRow, align 4
  %196 = load i32, i32* %lastColumn.addr, align 4
  %mul169 = mul nsw i32 %195, %196
  %197 = load i32, i32* %column, align 4
  %add170 = add nsw i32 %mul169, %197
  %idxprom171 = sext i32 %add170 to i64
  %198 = load i32*, i32** %condition.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %198, i64 %idxprom171
  store i32 2, i32* %arrayidx172, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.168, %if.then.147
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %199 = load i32, i32* %step, align 4
  %200 = load i32, i32* %i, align 4
  %add175 = add nsw i32 %200, %199
  store i32 %add175, i32* %i, align 4
  br label %for.cond.118

for.end.176:                                      ; preds = %for.cond.118
  br label %if.end.177

if.end.177:                                       ; preds = %for.end.176, %for.end.112
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %for.end.61
  store i32 -1, i32* %lastCorruptedRow, align 4
  store i32 -1, i32* %firstCorruptedRow, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %for.body.4
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %201 = load i32, i32* %step, align 4
  %202 = load i32, i32* %row, align 4
  %add181 = add nsw i32 %202, %201
  store i32 %add181, i32* %row, align 4
  br label %for.cond.2

for.end.182:                                      ; preds = %for.cond.2
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.end.182
  %203 = load i32, i32* %step, align 4
  %204 = load i32, i32* %column, align 4
  %add184 = add nsw i32 %204, %203
  store i32 %add184, i32* %column, align 4
  br label %for.cond

for.end.185:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ercPixConcealIMB(i16* %currFrame, i32 %row, i32 %column, i32* %predBlocks, i32 %frameWidth, i32 %mbWidthInBlocks) #0 {
entry:
  %currFrame.addr = alloca i16*, align 8
  %row.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  %predBlocks.addr = alloca i32*, align 8
  %frameWidth.addr = alloca i32, align 4
  %mbWidthInBlocks.addr = alloca i32, align 4
  %src = alloca [8 x i16*], align 16
  %currBlock = alloca i16*, align 8
  store i16* %currFrame, i16** %currFrame.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %column, i32* %column.addr, align 4
  store i32* %predBlocks, i32** %predBlocks.addr, align 8
  store i32 %frameWidth, i32* %frameWidth.addr, align 4
  store i32 %mbWidthInBlocks, i32* %mbWidthInBlocks.addr, align 4
  %0 = bitcast [8 x i16*]* %src to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 16, i1 false)
  store i16* null, i16** %currBlock, align 8
  %1 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i16*, i16** %currFrame.addr, align 8
  %4 = load i32, i32* %row.addr, align 4
  %5 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %sub = sub nsw i32 %4, %5
  %6 = load i32, i32* %frameWidth.addr, align 4
  %mul = mul nsw i32 %sub, %6
  %mul1 = mul nsw i32 %mul, 8
  %idx.ext = sext i32 %mul1 to i64
  %add.ptr = getelementptr inbounds i16, i16* %3, i64 %idx.ext
  %7 = load i32, i32* %column.addr, align 4
  %8 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %add = add nsw i32 %7, %8
  %mul2 = mul nsw i32 %add, 8
  %idx.ext3 = sext i32 %mul2 to i64
  %add.ptr4 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext3
  %arrayidx5 = getelementptr inbounds [8 x i16*], [8 x i16*]* %src, i32 0, i64 0
  store i16* %add.ptr4, i16** %arrayidx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = load i32, i32* %arrayidx6, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.end
  %11 = load i16*, i16** %currFrame.addr, align 8
  %12 = load i32, i32* %row.addr, align 4
  %13 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %sub9 = sub nsw i32 %12, %13
  %14 = load i32, i32* %frameWidth.addr, align 4
  %mul10 = mul nsw i32 %sub9, %14
  %mul11 = mul nsw i32 %mul10, 8
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds i16, i16* %11, i64 %idx.ext12
  %15 = load i32, i32* %column.addr, align 4
  %16 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %sub14 = sub nsw i32 %15, %16
  %mul15 = mul nsw i32 %sub14, 8
  %idx.ext16 = sext i32 %mul15 to i64
  %add.ptr17 = getelementptr inbounds i16, i16* %add.ptr13, i64 %idx.ext16
  %arrayidx18 = getelementptr inbounds [8 x i16*], [8 x i16*]* %src, i32 0, i64 1
  store i16* %add.ptr17, i16** %arrayidx18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.8, %if.end
  %17 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %17, i64 2
  %18 = load i32, i32* %arrayidx20, align 4
  %tobool21 = icmp ne i32 %18, 0
  br i1 %tobool21, label %if.then.22, label %if.end.33

if.then.22:                                       ; preds = %if.end.19
  %19 = load i16*, i16** %currFrame.addr, align 8
  %20 = load i32, i32* %row.addr, align 4
  %21 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %add23 = add nsw i32 %20, %21
  %22 = load i32, i32* %frameWidth.addr, align 4
  %mul24 = mul nsw i32 %add23, %22
  %mul25 = mul nsw i32 %mul24, 8
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds i16, i16* %19, i64 %idx.ext26
  %23 = load i32, i32* %column.addr, align 4
  %24 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %sub28 = sub nsw i32 %23, %24
  %mul29 = mul nsw i32 %sub28, 8
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds i16, i16* %add.ptr27, i64 %idx.ext30
  %arrayidx32 = getelementptr inbounds [8 x i16*], [8 x i16*]* %src, i32 0, i64 2
  store i16* %add.ptr31, i16** %arrayidx32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.22, %if.end.19
  %25 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %25, i64 3
  %26 = load i32, i32* %arrayidx34, align 4
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.end.47

if.then.36:                                       ; preds = %if.end.33
  %27 = load i16*, i16** %currFrame.addr, align 8
  %28 = load i32, i32* %row.addr, align 4
  %29 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %add37 = add nsw i32 %28, %29
  %30 = load i32, i32* %frameWidth.addr, align 4
  %mul38 = mul nsw i32 %add37, %30
  %mul39 = mul nsw i32 %mul38, 8
  %idx.ext40 = sext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds i16, i16* %27, i64 %idx.ext40
  %31 = load i32, i32* %column.addr, align 4
  %32 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %add42 = add nsw i32 %31, %32
  %mul43 = mul nsw i32 %add42, 8
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds i16, i16* %add.ptr41, i64 %idx.ext44
  %arrayidx46 = getelementptr inbounds [8 x i16*], [8 x i16*]* %src, i32 0, i64 3
  store i16* %add.ptr45, i16** %arrayidx46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.36, %if.end.33
  %33 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %33, i64 4
  %34 = load i32, i32* %arrayidx48, align 4
  %tobool49 = icmp ne i32 %34, 0
  br i1 %tobool49, label %if.then.50, label %if.end.60

if.then.50:                                       ; preds = %if.end.47
  %35 = load i16*, i16** %currFrame.addr, align 8
  %36 = load i32, i32* %row.addr, align 4
  %37 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %sub51 = sub nsw i32 %36, %37
  %38 = load i32, i32* %frameWidth.addr, align 4
  %mul52 = mul nsw i32 %sub51, %38
  %mul53 = mul nsw i32 %mul52, 8
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i16, i16* %35, i64 %idx.ext54
  %39 = load i32, i32* %column.addr, align 4
  %mul56 = mul nsw i32 %39, 8
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds i16, i16* %add.ptr55, i64 %idx.ext57
  %arrayidx59 = getelementptr inbounds [8 x i16*], [8 x i16*]* %src, i32 0, i64 4
  store i16* %add.ptr58, i16** %arrayidx59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.50, %if.end.47
  %40 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %40, i64 5
  %41 = load i32, i32* %arrayidx61, align 4
  %tobool62 = icmp ne i32 %41, 0
  br i1 %tobool62, label %if.then.63, label %if.end.73

if.then.63:                                       ; preds = %if.end.60
  %42 = load i16*, i16** %currFrame.addr, align 8
  %43 = load i32, i32* %row.addr, align 4
  %44 = load i32, i32* %frameWidth.addr, align 4
  %mul64 = mul nsw i32 %43, %44
  %mul65 = mul nsw i32 %mul64, 8
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds i16, i16* %42, i64 %idx.ext66
  %45 = load i32, i32* %column.addr, align 4
  %46 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %sub68 = sub nsw i32 %45, %46
  %mul69 = mul nsw i32 %sub68, 8
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds i16, i16* %add.ptr67, i64 %idx.ext70
  %arrayidx72 = getelementptr inbounds [8 x i16*], [8 x i16*]* %src, i32 0, i64 5
  store i16* %add.ptr71, i16** %arrayidx72, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.63, %if.end.60
  %47 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %47, i64 6
  %48 = load i32, i32* %arrayidx74, align 4
  %tobool75 = icmp ne i32 %48, 0
  br i1 %tobool75, label %if.then.76, label %if.end.86

if.then.76:                                       ; preds = %if.end.73
  %49 = load i16*, i16** %currFrame.addr, align 8
  %50 = load i32, i32* %row.addr, align 4
  %51 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %add77 = add nsw i32 %50, %51
  %52 = load i32, i32* %frameWidth.addr, align 4
  %mul78 = mul nsw i32 %add77, %52
  %mul79 = mul nsw i32 %mul78, 8
  %idx.ext80 = sext i32 %mul79 to i64
  %add.ptr81 = getelementptr inbounds i16, i16* %49, i64 %idx.ext80
  %53 = load i32, i32* %column.addr, align 4
  %mul82 = mul nsw i32 %53, 8
  %idx.ext83 = sext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds i16, i16* %add.ptr81, i64 %idx.ext83
  %arrayidx85 = getelementptr inbounds [8 x i16*], [8 x i16*]* %src, i32 0, i64 6
  store i16* %add.ptr84, i16** %arrayidx85, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.76, %if.end.73
  %54 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %54, i64 7
  %55 = load i32, i32* %arrayidx87, align 4
  %tobool88 = icmp ne i32 %55, 0
  br i1 %tobool88, label %if.then.89, label %if.end.99

if.then.89:                                       ; preds = %if.end.86
  %56 = load i16*, i16** %currFrame.addr, align 8
  %57 = load i32, i32* %row.addr, align 4
  %58 = load i32, i32* %frameWidth.addr, align 4
  %mul90 = mul nsw i32 %57, %58
  %mul91 = mul nsw i32 %mul90, 8
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds i16, i16* %56, i64 %idx.ext92
  %59 = load i32, i32* %column.addr, align 4
  %60 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %add94 = add nsw i32 %59, %60
  %mul95 = mul nsw i32 %add94, 8
  %idx.ext96 = sext i32 %mul95 to i64
  %add.ptr97 = getelementptr inbounds i16, i16* %add.ptr93, i64 %idx.ext96
  %arrayidx98 = getelementptr inbounds [8 x i16*], [8 x i16*]* %src, i32 0, i64 7
  store i16* %add.ptr97, i16** %arrayidx98, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.89, %if.end.86
  %61 = load i16*, i16** %currFrame.addr, align 8
  %62 = load i32, i32* %row.addr, align 4
  %63 = load i32, i32* %frameWidth.addr, align 4
  %mul100 = mul nsw i32 %62, %63
  %mul101 = mul nsw i32 %mul100, 8
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds i16, i16* %61, i64 %idx.ext102
  %64 = load i32, i32* %column.addr, align 4
  %mul104 = mul nsw i32 %64, 8
  %idx.ext105 = sext i32 %mul104 to i64
  %add.ptr106 = getelementptr inbounds i16, i16* %add.ptr103, i64 %idx.ext105
  store i16* %add.ptr106, i16** %currBlock, align 8
  %arraydecay = getelementptr inbounds [8 x i16*], [8 x i16*]* %src, i32 0, i32 0
  %65 = load i16*, i16** %currBlock, align 8
  %66 = load i32, i32* %mbWidthInBlocks.addr, align 4
  %mul107 = mul nsw i32 %66, 8
  %67 = load i32, i32* %frameWidth.addr, align 4
  call void @pixMeanInterpolateBlock(i16** %arraydecay, i16* %65, i32 %mul107, i32 %67)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @pixMeanInterpolateBlock(i16** %src, i16* %block, i32 %blockSize, i32 %frameWidth) #0 {
entry:
  %src.addr = alloca i16**, align 8
  %block.addr = alloca i16*, align 8
  %blockSize.addr = alloca i32, align 4
  %frameWidth.addr = alloca i32, align 4
  %row = alloca i32, align 4
  %column = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca i32, align 4
  %srcCounter = alloca i32, align 4
  %weight = alloca i32, align 4
  %bmax = alloca i32, align 4
  store i16** %src, i16*** %src.addr, align 8
  store i16* %block, i16** %block.addr, align 8
  store i32 %blockSize, i32* %blockSize.addr, align 4
  store i32 %frameWidth, i32* %frameWidth.addr, align 4
  store i32 0, i32* %srcCounter, align 4
  store i32 0, i32* %weight, align 4
  %0 = load i32, i32* %blockSize.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %bmax, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %entry
  %1 = load i32, i32* %row, align 4
  %2 = load i32, i32* %blockSize.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %column, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %column, align 4
  %4 = load i32, i32* %blockSize.addr, align 4
  %cmp5 = icmp slt i32 %3, %4
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %tmp, align 4
  store i32 0, i32* %srcCounter, align 4
  %5 = load i16**, i16*** %src.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %5, i64 4
  %6 = load i16*, i16** %arrayidx, align 8
  %cmp7 = icmp ne i16* %6, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %7 = load i32, i32* %blockSize.addr, align 4
  %8 = load i32, i32* %row, align 4
  %sub8 = sub nsw i32 %7, %8
  store i32 %sub8, i32* %weight, align 4
  %9 = load i32, i32* %weight, align 4
  %10 = load i16**, i16*** %src.addr, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %10, i64 4
  %11 = load i16*, i16** %arrayidx9, align 8
  %12 = load i32, i32* %bmax, align 4
  %13 = load i32, i32* %frameWidth.addr, align 4
  %mul = mul nsw i32 %12, %13
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %11, i64 %idx.ext
  %14 = load i32, i32* %column, align 4
  %idx.ext10 = sext i32 %14 to i64
  %add.ptr11 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext10
  %15 = load i16, i16* %add.ptr11, align 2
  %conv = zext i16 %15 to i32
  %mul12 = mul nsw i32 %9, %conv
  %16 = load i32, i32* %tmp, align 4
  %add = add nsw i32 %16, %mul12
  store i32 %add, i32* %tmp, align 4
  %17 = load i32, i32* %weight, align 4
  %18 = load i32, i32* %srcCounter, align 4
  %add13 = add nsw i32 %18, %17
  store i32 %add13, i32* %srcCounter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  %19 = load i16**, i16*** %src.addr, align 8
  %arrayidx14 = getelementptr inbounds i16*, i16** %19, i64 5
  %20 = load i16*, i16** %arrayidx14, align 8
  %cmp15 = icmp ne i16* %20, null
  br i1 %cmp15, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %if.end
  %21 = load i32, i32* %blockSize.addr, align 4
  %22 = load i32, i32* %column, align 4
  %sub18 = sub nsw i32 %21, %22
  store i32 %sub18, i32* %weight, align 4
  %23 = load i32, i32* %weight, align 4
  %24 = load i16**, i16*** %src.addr, align 8
  %arrayidx19 = getelementptr inbounds i16*, i16** %24, i64 5
  %25 = load i16*, i16** %arrayidx19, align 8
  %26 = load i32, i32* %row, align 4
  %27 = load i32, i32* %frameWidth.addr, align 4
  %mul20 = mul nsw i32 %26, %27
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds i16, i16* %25, i64 %idx.ext21
  %28 = load i32, i32* %bmax, align 4
  %idx.ext23 = sext i32 %28 to i64
  %add.ptr24 = getelementptr inbounds i16, i16* %add.ptr22, i64 %idx.ext23
  %29 = load i16, i16* %add.ptr24, align 2
  %conv25 = zext i16 %29 to i32
  %mul26 = mul nsw i32 %23, %conv25
  %30 = load i32, i32* %tmp, align 4
  %add27 = add nsw i32 %30, %mul26
  store i32 %add27, i32* %tmp, align 4
  %31 = load i32, i32* %weight, align 4
  %32 = load i32, i32* %srcCounter, align 4
  %add28 = add nsw i32 %32, %31
  store i32 %add28, i32* %srcCounter, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.17, %if.end
  %33 = load i16**, i16*** %src.addr, align 8
  %arrayidx30 = getelementptr inbounds i16*, i16** %33, i64 6
  %34 = load i16*, i16** %arrayidx30, align 8
  %cmp31 = icmp ne i16* %34, null
  br i1 %cmp31, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %if.end.29
  %35 = load i32, i32* %row, align 4
  %add34 = add nsw i32 %35, 1
  store i32 %add34, i32* %weight, align 4
  %36 = load i32, i32* %weight, align 4
  %37 = load i16**, i16*** %src.addr, align 8
  %arrayidx35 = getelementptr inbounds i16*, i16** %37, i64 6
  %38 = load i16*, i16** %arrayidx35, align 8
  %39 = load i32, i32* %column, align 4
  %idx.ext36 = sext i32 %39 to i64
  %add.ptr37 = getelementptr inbounds i16, i16* %38, i64 %idx.ext36
  %40 = load i16, i16* %add.ptr37, align 2
  %conv38 = zext i16 %40 to i32
  %mul39 = mul nsw i32 %36, %conv38
  %41 = load i32, i32* %tmp, align 4
  %add40 = add nsw i32 %41, %mul39
  store i32 %add40, i32* %tmp, align 4
  %42 = load i32, i32* %weight, align 4
  %43 = load i32, i32* %srcCounter, align 4
  %add41 = add nsw i32 %43, %42
  store i32 %add41, i32* %srcCounter, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.33, %if.end.29
  %44 = load i16**, i16*** %src.addr, align 8
  %arrayidx43 = getelementptr inbounds i16*, i16** %44, i64 7
  %45 = load i16*, i16** %arrayidx43, align 8
  %cmp44 = icmp ne i16* %45, null
  br i1 %cmp44, label %if.then.46, label %if.end.56

if.then.46:                                       ; preds = %if.end.42
  %46 = load i32, i32* %column, align 4
  %add47 = add nsw i32 %46, 1
  store i32 %add47, i32* %weight, align 4
  %47 = load i32, i32* %weight, align 4
  %48 = load i16**, i16*** %src.addr, align 8
  %arrayidx48 = getelementptr inbounds i16*, i16** %48, i64 7
  %49 = load i16*, i16** %arrayidx48, align 8
  %50 = load i32, i32* %row, align 4
  %51 = load i32, i32* %frameWidth.addr, align 4
  %mul49 = mul nsw i32 %50, %51
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i16, i16* %49, i64 %idx.ext50
  %52 = load i16, i16* %add.ptr51, align 2
  %conv52 = zext i16 %52 to i32
  %mul53 = mul nsw i32 %47, %conv52
  %53 = load i32, i32* %tmp, align 4
  %add54 = add nsw i32 %53, %mul53
  store i32 %add54, i32* %tmp, align 4
  %54 = load i32, i32* %weight, align 4
  %55 = load i32, i32* %srcCounter, align 4
  %add55 = add nsw i32 %55, %54
  store i32 %add55, i32* %srcCounter, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.46, %if.end.42
  %56 = load i32, i32* %srcCounter, align 4
  %cmp57 = icmp sgt i32 %56, 0
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.end.56
  %57 = load i32, i32* %tmp, align 4
  %58 = load i32, i32* %srcCounter, align 4
  %div = sdiv i32 %57, %58
  %conv60 = trunc i32 %div to i8
  %conv61 = zext i8 %conv60 to i16
  %59 = load i32, i32* %k, align 4
  %60 = load i32, i32* %column, align 4
  %add62 = add nsw i32 %59, %60
  %idxprom = sext i32 %add62 to i64
  %61 = load i16*, i16** %block.addr, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %61, i64 %idxprom
  store i16 %conv61, i16* %arrayidx63, align 2
  br label %if.end.70

if.else:                                          ; preds = %if.end.56
  %62 = load i32, i32* %blockSize.addr, align 4
  %cmp64 = icmp eq i32 %62, 8
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %63 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dc_pred_value_chroma = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 106
  %64 = load i32, i32* %dc_pred_value_chroma, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %65 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dc_pred_value_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %65, i32 0, i32 105
  %66 = load i32, i32* %dc_pred_value_luma, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %64, %cond.true ], [ %66, %cond.false ]
  %conv66 = trunc i32 %cond to i16
  %67 = load i32, i32* %k, align 4
  %68 = load i32, i32* %column, align 4
  %add67 = add nsw i32 %67, %68
  %idxprom68 = sext i32 %add67 to i64
  %69 = load i16*, i16** %block.addr, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %69, i64 %idxprom68
  store i16 %conv66, i16* %arrayidx69, align 2
  br label %if.end.70

if.end.70:                                        ; preds = %cond.end, %if.then.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %70 = load i32, i32* %column, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %column, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %71 = load i32, i32* %frameWidth.addr, align 4
  %72 = load i32, i32* %k, align 4
  %add71 = add nsw i32 %72, %71
  store i32 %add71, i32* %k, align 4
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end
  %73 = load i32, i32* %row, align 4
  %inc73 = add nsw i32 %73, 1
  store i32 %inc73, i32* %row, align 4
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ercCollect8PredBlocks(i32* %predBlocks, i32 %currRow, i32 %currColumn, i32* %condition, i32 %maxRow, i32 %maxColumn, i32 %step, i8 zeroext %fNoCornerNeigh) #0 {
entry:
  %predBlocks.addr = alloca i32*, align 8
  %currRow.addr = alloca i32, align 4
  %currColumn.addr = alloca i32, align 4
  %condition.addr = alloca i32*, align 8
  %maxRow.addr = alloca i32, align 4
  %maxColumn.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %fNoCornerNeigh.addr = alloca i8, align 1
  %srcCounter = alloca i32, align 4
  %srcCountMin = alloca i32, align 4
  %threshold = alloca i32, align 4
  store i32* %predBlocks, i32** %predBlocks.addr, align 8
  store i32 %currRow, i32* %currRow.addr, align 4
  store i32 %currColumn, i32* %currColumn.addr, align 4
  store i32* %condition, i32** %condition.addr, align 8
  store i32 %maxRow, i32* %maxRow.addr, align 4
  store i32 %maxColumn, i32* %maxColumn.addr, align 4
  store i32 %step, i32* %step.addr, align 4
  store i8 %fNoCornerNeigh, i8* %fNoCornerNeigh.addr, align 1
  store i32 0, i32* %srcCounter, align 4
  %0 = load i8, i8* %fNoCornerNeigh.addr, align 1
  %conv = zext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i32 2, i32 4
  store i32 %cond, i32* %srcCountMin, align 4
  store i32 3, i32* %threshold, align 4
  %1 = load i32*, i32** %predBlocks.addr, align 8
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 32, i32 4, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %srcCounter, align 4
  %3 = load i32, i32* %currRow.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load i32, i32* %currRow.addr, align 4
  %sub = sub nsw i32 %4, 1
  %5 = load i32, i32* %maxColumn.addr, align 4
  %mul = mul nsw i32 %sub, %5
  %6 = load i32, i32* %currColumn.addr, align 4
  %add = add nsw i32 %mul, %6
  %idxprom = sext i32 %add to i64
  %7 = load i32*, i32** %condition.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %threshold, align 4
  %cmp2 = icmp sge i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %currRow.addr, align 4
  %sub4 = sub nsw i32 %10, 1
  %11 = load i32, i32* %maxColumn.addr, align 4
  %mul5 = mul nsw i32 %sub4, %11
  %12 = load i32, i32* %currColumn.addr, align 4
  %add6 = add nsw i32 %mul5, %12
  %idxprom7 = sext i32 %add6 to i64
  %13 = load i32*, i32** %condition.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  %15 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %15, i64 4
  store i32 %14, i32* %arrayidx9, align 4
  %16 = load i32, i32* %srcCounter, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %srcCounter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  %17 = load i32, i32* %currRow.addr, align 4
  %18 = load i32, i32* %maxRow.addr, align 4
  %19 = load i32, i32* %step.addr, align 4
  %sub10 = sub nsw i32 %18, %19
  %cmp11 = icmp slt i32 %17, %sub10
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.29

land.lhs.true.13:                                 ; preds = %if.end
  %20 = load i32, i32* %currRow.addr, align 4
  %21 = load i32, i32* %step.addr, align 4
  %add14 = add nsw i32 %20, %21
  %22 = load i32, i32* %maxColumn.addr, align 4
  %mul15 = mul nsw i32 %add14, %22
  %23 = load i32, i32* %currColumn.addr, align 4
  %add16 = add nsw i32 %mul15, %23
  %idxprom17 = sext i32 %add16 to i64
  %24 = load i32*, i32** %condition.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %24, i64 %idxprom17
  %25 = load i32, i32* %arrayidx18, align 4
  %26 = load i32, i32* %threshold, align 4
  %cmp19 = icmp sge i32 %25, %26
  br i1 %cmp19, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %land.lhs.true.13
  %27 = load i32, i32* %currRow.addr, align 4
  %28 = load i32, i32* %step.addr, align 4
  %add22 = add nsw i32 %27, %28
  %29 = load i32, i32* %maxColumn.addr, align 4
  %mul23 = mul nsw i32 %add22, %29
  %30 = load i32, i32* %currColumn.addr, align 4
  %add24 = add nsw i32 %mul23, %30
  %idxprom25 = sext i32 %add24 to i64
  %31 = load i32*, i32** %condition.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %31, i64 %idxprom25
  %32 = load i32, i32* %arrayidx26, align 4
  %33 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %33, i64 6
  store i32 %32, i32* %arrayidx27, align 4
  %34 = load i32, i32* %srcCounter, align 4
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, i32* %srcCounter, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.21, %land.lhs.true.13, %if.end
  %35 = load i32, i32* %currColumn.addr, align 4
  %cmp30 = icmp sgt i32 %35, 0
  br i1 %cmp30, label %if.then.32, label %if.end.95

if.then.32:                                       ; preds = %if.end.29
  %36 = load i32, i32* %currRow.addr, align 4
  %37 = load i32, i32* %maxColumn.addr, align 4
  %mul33 = mul nsw i32 %36, %37
  %38 = load i32, i32* %currColumn.addr, align 4
  %add34 = add nsw i32 %mul33, %38
  %sub35 = sub nsw i32 %add34, 1
  %idxprom36 = sext i32 %sub35 to i64
  %39 = load i32*, i32** %condition.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %39, i64 %idxprom36
  %40 = load i32, i32* %arrayidx37, align 4
  %41 = load i32, i32* %threshold, align 4
  %cmp38 = icmp sge i32 %40, %41
  br i1 %cmp38, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %if.then.32
  %42 = load i32, i32* %currRow.addr, align 4
  %43 = load i32, i32* %maxColumn.addr, align 4
  %mul41 = mul nsw i32 %42, %43
  %44 = load i32, i32* %currColumn.addr, align 4
  %add42 = add nsw i32 %mul41, %44
  %sub43 = sub nsw i32 %add42, 1
  %idxprom44 = sext i32 %sub43 to i64
  %45 = load i32*, i32** %condition.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %45, i64 %idxprom44
  %46 = load i32, i32* %arrayidx45, align 4
  %47 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %47, i64 5
  store i32 %46, i32* %arrayidx46, align 4
  %48 = load i32, i32* %srcCounter, align 4
  %inc47 = add nsw i32 %48, 1
  store i32 %inc47, i32* %srcCounter, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.40, %if.then.32
  %49 = load i8, i8* %fNoCornerNeigh.addr, align 1
  %tobool49 = icmp ne i8 %49, 0
  br i1 %tobool49, label %if.end.94, label %if.then.50

if.then.50:                                       ; preds = %if.end.48
  %50 = load i32, i32* %currRow.addr, align 4
  %cmp51 = icmp sgt i32 %50, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.71

land.lhs.true.53:                                 ; preds = %if.then.50
  %51 = load i32, i32* %currRow.addr, align 4
  %sub54 = sub nsw i32 %51, 1
  %52 = load i32, i32* %maxColumn.addr, align 4
  %mul55 = mul nsw i32 %sub54, %52
  %53 = load i32, i32* %currColumn.addr, align 4
  %add56 = add nsw i32 %mul55, %53
  %sub57 = sub nsw i32 %add56, 1
  %idxprom58 = sext i32 %sub57 to i64
  %54 = load i32*, i32** %condition.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %54, i64 %idxprom58
  %55 = load i32, i32* %arrayidx59, align 4
  %56 = load i32, i32* %threshold, align 4
  %cmp60 = icmp sge i32 %55, %56
  br i1 %cmp60, label %if.then.62, label %if.end.71

if.then.62:                                       ; preds = %land.lhs.true.53
  %57 = load i32, i32* %currRow.addr, align 4
  %sub63 = sub nsw i32 %57, 1
  %58 = load i32, i32* %maxColumn.addr, align 4
  %mul64 = mul nsw i32 %sub63, %58
  %59 = load i32, i32* %currColumn.addr, align 4
  %add65 = add nsw i32 %mul64, %59
  %sub66 = sub nsw i32 %add65, 1
  %idxprom67 = sext i32 %sub66 to i64
  %60 = load i32*, i32** %condition.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %60, i64 %idxprom67
  %61 = load i32, i32* %arrayidx68, align 4
  %62 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %arrayidx69, align 4
  %63 = load i32, i32* %srcCounter, align 4
  %inc70 = add nsw i32 %63, 1
  store i32 %inc70, i32* %srcCounter, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.62, %land.lhs.true.53, %if.then.50
  %64 = load i32, i32* %currRow.addr, align 4
  %65 = load i32, i32* %maxRow.addr, align 4
  %66 = load i32, i32* %step.addr, align 4
  %sub72 = sub nsw i32 %65, %66
  %cmp73 = icmp slt i32 %64, %sub72
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.93

land.lhs.true.75:                                 ; preds = %if.end.71
  %67 = load i32, i32* %currRow.addr, align 4
  %68 = load i32, i32* %step.addr, align 4
  %add76 = add nsw i32 %67, %68
  %69 = load i32, i32* %maxColumn.addr, align 4
  %mul77 = mul nsw i32 %add76, %69
  %70 = load i32, i32* %currColumn.addr, align 4
  %add78 = add nsw i32 %mul77, %70
  %sub79 = sub nsw i32 %add78, 1
  %idxprom80 = sext i32 %sub79 to i64
  %71 = load i32*, i32** %condition.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %71, i64 %idxprom80
  %72 = load i32, i32* %arrayidx81, align 4
  %73 = load i32, i32* %threshold, align 4
  %cmp82 = icmp sge i32 %72, %73
  br i1 %cmp82, label %if.then.84, label %if.end.93

if.then.84:                                       ; preds = %land.lhs.true.75
  %74 = load i32, i32* %currRow.addr, align 4
  %75 = load i32, i32* %step.addr, align 4
  %add85 = add nsw i32 %74, %75
  %76 = load i32, i32* %maxColumn.addr, align 4
  %mul86 = mul nsw i32 %add85, %76
  %77 = load i32, i32* %currColumn.addr, align 4
  %add87 = add nsw i32 %mul86, %77
  %sub88 = sub nsw i32 %add87, 1
  %idxprom89 = sext i32 %sub88 to i64
  %78 = load i32*, i32** %condition.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %78, i64 %idxprom89
  %79 = load i32, i32* %arrayidx90, align 4
  %80 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %79, i32* %arrayidx91, align 4
  %81 = load i32, i32* %srcCounter, align 4
  %inc92 = add nsw i32 %81, 1
  store i32 %inc92, i32* %srcCounter, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.84, %land.lhs.true.75, %if.end.71
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.48
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.29
  %82 = load i32, i32* %currColumn.addr, align 4
  %83 = load i32, i32* %maxColumn.addr, align 4
  %84 = load i32, i32* %step.addr, align 4
  %sub96 = sub nsw i32 %83, %84
  %cmp97 = icmp slt i32 %82, %sub96
  br i1 %cmp97, label %if.then.99, label %if.end.162

if.then.99:                                       ; preds = %if.end.95
  %85 = load i32, i32* %currRow.addr, align 4
  %86 = load i32, i32* %maxColumn.addr, align 4
  %mul100 = mul nsw i32 %85, %86
  %87 = load i32, i32* %currColumn.addr, align 4
  %add101 = add nsw i32 %mul100, %87
  %88 = load i32, i32* %step.addr, align 4
  %add102 = add nsw i32 %add101, %88
  %idxprom103 = sext i32 %add102 to i64
  %89 = load i32*, i32** %condition.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %89, i64 %idxprom103
  %90 = load i32, i32* %arrayidx104, align 4
  %91 = load i32, i32* %threshold, align 4
  %cmp105 = icmp sge i32 %90, %91
  br i1 %cmp105, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %if.then.99
  %92 = load i32, i32* %currRow.addr, align 4
  %93 = load i32, i32* %maxColumn.addr, align 4
  %mul108 = mul nsw i32 %92, %93
  %94 = load i32, i32* %currColumn.addr, align 4
  %add109 = add nsw i32 %mul108, %94
  %95 = load i32, i32* %step.addr, align 4
  %add110 = add nsw i32 %add109, %95
  %idxprom111 = sext i32 %add110 to i64
  %96 = load i32*, i32** %condition.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %96, i64 %idxprom111
  %97 = load i32, i32* %arrayidx112, align 4
  %98 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %98, i64 7
  store i32 %97, i32* %arrayidx113, align 4
  %99 = load i32, i32* %srcCounter, align 4
  %inc114 = add nsw i32 %99, 1
  store i32 %inc114, i32* %srcCounter, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.107, %if.then.99
  %100 = load i8, i8* %fNoCornerNeigh.addr, align 1
  %tobool116 = icmp ne i8 %100, 0
  br i1 %tobool116, label %if.end.161, label %if.then.117

if.then.117:                                      ; preds = %if.end.115
  %101 = load i32, i32* %currRow.addr, align 4
  %cmp118 = icmp sgt i32 %101, 0
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.138

land.lhs.true.120:                                ; preds = %if.then.117
  %102 = load i32, i32* %currRow.addr, align 4
  %sub121 = sub nsw i32 %102, 1
  %103 = load i32, i32* %maxColumn.addr, align 4
  %mul122 = mul nsw i32 %sub121, %103
  %104 = load i32, i32* %currColumn.addr, align 4
  %add123 = add nsw i32 %mul122, %104
  %105 = load i32, i32* %step.addr, align 4
  %add124 = add nsw i32 %add123, %105
  %idxprom125 = sext i32 %add124 to i64
  %106 = load i32*, i32** %condition.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %106, i64 %idxprom125
  %107 = load i32, i32* %arrayidx126, align 4
  %108 = load i32, i32* %threshold, align 4
  %cmp127 = icmp sge i32 %107, %108
  br i1 %cmp127, label %if.then.129, label %if.end.138

if.then.129:                                      ; preds = %land.lhs.true.120
  %109 = load i32, i32* %currRow.addr, align 4
  %sub130 = sub nsw i32 %109, 1
  %110 = load i32, i32* %maxColumn.addr, align 4
  %mul131 = mul nsw i32 %sub130, %110
  %111 = load i32, i32* %currColumn.addr, align 4
  %add132 = add nsw i32 %mul131, %111
  %112 = load i32, i32* %step.addr, align 4
  %add133 = add nsw i32 %add132, %112
  %idxprom134 = sext i32 %add133 to i64
  %113 = load i32*, i32** %condition.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %113, i64 %idxprom134
  %114 = load i32, i32* %arrayidx135, align 4
  %115 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %114, i32* %arrayidx136, align 4
  %116 = load i32, i32* %srcCounter, align 4
  %inc137 = add nsw i32 %116, 1
  store i32 %inc137, i32* %srcCounter, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.129, %land.lhs.true.120, %if.then.117
  %117 = load i32, i32* %currRow.addr, align 4
  %118 = load i32, i32* %maxRow.addr, align 4
  %119 = load i32, i32* %step.addr, align 4
  %sub139 = sub nsw i32 %118, %119
  %cmp140 = icmp slt i32 %117, %sub139
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.160

land.lhs.true.142:                                ; preds = %if.end.138
  %120 = load i32, i32* %currRow.addr, align 4
  %121 = load i32, i32* %step.addr, align 4
  %add143 = add nsw i32 %120, %121
  %122 = load i32, i32* %maxColumn.addr, align 4
  %mul144 = mul nsw i32 %add143, %122
  %123 = load i32, i32* %currColumn.addr, align 4
  %add145 = add nsw i32 %mul144, %123
  %124 = load i32, i32* %step.addr, align 4
  %add146 = add nsw i32 %add145, %124
  %idxprom147 = sext i32 %add146 to i64
  %125 = load i32*, i32** %condition.addr, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %125, i64 %idxprom147
  %126 = load i32, i32* %arrayidx148, align 4
  %127 = load i32, i32* %threshold, align 4
  %cmp149 = icmp sge i32 %126, %127
  br i1 %cmp149, label %if.then.151, label %if.end.160

if.then.151:                                      ; preds = %land.lhs.true.142
  %128 = load i32, i32* %currRow.addr, align 4
  %129 = load i32, i32* %step.addr, align 4
  %add152 = add nsw i32 %128, %129
  %130 = load i32, i32* %maxColumn.addr, align 4
  %mul153 = mul nsw i32 %add152, %130
  %131 = load i32, i32* %currColumn.addr, align 4
  %add154 = add nsw i32 %mul153, %131
  %132 = load i32, i32* %step.addr, align 4
  %add155 = add nsw i32 %add154, %132
  %idxprom156 = sext i32 %add155 to i64
  %133 = load i32*, i32** %condition.addr, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %133, i64 %idxprom156
  %134 = load i32, i32* %arrayidx157, align 4
  %135 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %135, i64 3
  store i32 %134, i32* %arrayidx158, align 4
  %136 = load i32, i32* %srcCounter, align 4
  %inc159 = add nsw i32 %136, 1
  store i32 %inc159, i32* %srcCounter, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.151, %land.lhs.true.142, %if.end.138
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.end.115
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.95
  %137 = load i32, i32* %threshold, align 4
  %dec = add nsw i32 %137, -1
  store i32 %dec, i32* %threshold, align 4
  %138 = load i32, i32* %threshold, align 4
  %cmp163 = icmp slt i32 %138, 2
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.162
  br label %do.end

if.end.166:                                       ; preds = %if.end.162
  br label %do.cond

do.cond:                                          ; preds = %if.end.166
  %139 = load i32, i32* %srcCounter, align 4
  %140 = load i32, i32* %srcCountMin, align 4
  %cmp167 = icmp slt i32 %139, %140
  br i1 %cmp167, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.165
  %141 = load i32, i32* %srcCounter, align 4
  ret i32 %141
}

; Function Attrs: nounwind uwtable
define i32 @ercCollectColumnBlocks(i32* %predBlocks, i32 %currRow, i32 %currColumn, i32* %condition, i32 %maxRow, i32 %maxColumn, i32 %step) #0 {
entry:
  %predBlocks.addr = alloca i32*, align 8
  %currRow.addr = alloca i32, align 4
  %currColumn.addr = alloca i32, align 4
  %condition.addr = alloca i32*, align 8
  %maxRow.addr = alloca i32, align 4
  %maxColumn.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %srcCounter = alloca i32, align 4
  %threshold = alloca i32, align 4
  store i32* %predBlocks, i32** %predBlocks.addr, align 8
  store i32 %currRow, i32* %currRow.addr, align 4
  store i32 %currColumn, i32* %currColumn.addr, align 4
  store i32* %condition, i32** %condition.addr, align 8
  store i32 %maxRow, i32* %maxRow.addr, align 4
  store i32 %maxColumn, i32* %maxColumn.addr, align 4
  store i32 %step, i32* %step.addr, align 4
  store i32 0, i32* %srcCounter, align 4
  store i32 1, i32* %threshold, align 4
  %0 = load i32*, i32** %predBlocks.addr, align 8
  %1 = bitcast i32* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 4, i1 false)
  %2 = load i32, i32* %currRow.addr, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load i32, i32* %maxColumn.addr, align 4
  %mul = mul nsw i32 %sub, %3
  %4 = load i32, i32* %currColumn.addr, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %5 = load i32*, i32** %condition.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %threshold, align 4
  %cmp = icmp sgt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %8, i64 4
  store i32 1, i32* %arrayidx1, align 4
  %9 = load i32, i32* %srcCounter, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %srcCounter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %currRow.addr, align 4
  %11 = load i32, i32* %step.addr, align 4
  %add2 = add nsw i32 %10, %11
  %12 = load i32, i32* %maxColumn.addr, align 4
  %mul3 = mul nsw i32 %add2, %12
  %13 = load i32, i32* %currColumn.addr, align 4
  %add4 = add nsw i32 %mul3, %13
  %idxprom5 = sext i32 %add4 to i64
  %14 = load i32*, i32** %condition.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 %idxprom5
  %15 = load i32, i32* %arrayidx6, align 4
  %16 = load i32, i32* %threshold, align 4
  %cmp7 = icmp sgt i32 %15, %16
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %17 = load i32*, i32** %predBlocks.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 6
  store i32 1, i32* %arrayidx9, align 4
  %18 = load i32, i32* %srcCounter, align 4
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* %srcCounter, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %19 = load i32, i32* %srcCounter, align 4
  ret i32 %19
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
