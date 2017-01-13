; ModuleID = './MultiSource.Applications.JM/28.ldecod.loopFilter.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }

@DeblockMb.filterNon8x8LumaEdgesFlag = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@chroma_edge = internal constant [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\FF\FF\01", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\FF\FF\03"], [4 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\FF\01\01", [4 x i8] c"\FF\01\02\02", [4 x i8] c"\FF\FF\03\03"]], align 16
@mixedModeEdgeFlag = common global i8 0, align 1
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@EdgeLoop.pelnum_cr = internal constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 16
@fieldModeFilteringFlag = common global i8 0, align 1
@ALPHA_TABLE = internal constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 16
@BETA_TABLE = internal constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 16
@CLIP_TAB = internal constant [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 16
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

; Function Attrs: nounwind uwtable
define void @DeblockPicture(%struct.img_par* %img, %struct.storable_picture* %p) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %p.addr = alloca %struct.storable_picture*, align 8
  %i = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1, i32 0, i32 31
  %2 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %4 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %5 = load i32, i32* %i, align 4
  call void @DeblockMb(%struct.img_par* %3, %struct.storable_picture* %4, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DeblockMb(%struct.img_par* %img, %struct.storable_picture* %p, i32 %MbQAddr) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %p.addr = alloca %struct.storable_picture*, align 8
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
  %imgY = alloca i16**, align 8
  %imgUV = alloca i16***, align 8
  %edge_cr = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 %MbQAddr, i32* %MbQAddr.addr, align 4
  %0 = bitcast [4 x i32]* %filterNon8x8LumaEdgesFlag to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i32]* @DeblockMb.filterNon8x8LumaEdgesFlag to i8*), i64 16, i32 16, i1 false)
  store i32 4, i32* %mvlimit, align 4
  %1 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgY1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1, i32 0, i32 32
  %2 = load i16**, i16*** %imgY1, align 8
  store i16** %2, i16*** %imgY, align 8
  %3 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %3, i32 0, i32 33
  %4 = load i16***, i16**** %imgUV2, align 8
  store i16*** %4, i16**** %imgUV, align 8
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %DeblockCall = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 45
  store i32 1, i32* %DeblockCall, align 4
  %6 = load i32, i32* %MbQAddr.addr, align 4
  call void @get_mb_pos(i32 %6, i32* %mb_x, i32* %mb_y, i32 0)
  %7 = load i32, i32* %mb_x, align 4
  %cmp = icmp ne i32 %7, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %filterLeftMbEdgeFlag, align 4
  %8 = load i32, i32* %mb_y, align 4
  %cmp3 = icmp ne i32 %8, 0
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, i32* %filterTopMbEdgeFlag, align 4
  %9 = load i32, i32* %MbQAddr.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 39
  %11 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %MbQ, align 8
  %12 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 6
  %13 = load i32, i32* %mb_type, align 4
  %cmp5 = icmp eq i32 %13, 13
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 30
  %15 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  %tobool = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 3
  store i32 %lnot.ext, i32* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 1
  store i32 %lnot.ext, i32* %arrayidx8, align 4
  %16 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 29
  %17 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %18 = load i32, i32* %mb_y, align 4
  %cmp10 = icmp eq i32 %18, 16
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %19 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 20
  %20 = load i32, i32* %mb_field, align 4
  %tobool13 = icmp ne i32 %20, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.12
  store i32 0, i32* %filterTopMbEdgeFlag, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.12, %land.lhs.true, %if.end
  %21 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %21, i32 0, i32 0
  %22 = load i32, i32* %structure, align 4
  %cmp16 = icmp ne i32 %22, 0
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.15
  %23 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %MbaffFrameFlag18 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 29
  %24 = load i32, i32* %MbaffFrameFlag18, align 4
  %tobool19 = icmp ne i32 %24, 0
  br i1 %tobool19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %25 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field20 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i32 0, i32 20
  %26 = load i32, i32* %mb_field20, align 4
  %tobool21 = icmp ne i32 %26, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %27 = phi i1 [ false, %lor.rhs ], [ %tobool21, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.end.15
  %28 = phi i1 [ true, %if.end.15 ], [ %27, %land.end ]
  %lor.ext = zext i1 %28 to i32
  store i32 %lor.ext, i32* %fieldModeMbFlag, align 4
  %29 = load i32, i32* %fieldModeMbFlag, align 4
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.end
  store i32 2, i32* %mvlimit, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %lor.end
  %30 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFDisableIdc = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i32 0, i32 16
  %31 = load i32, i32* %LFDisableIdc, align 4
  %cmp25 = icmp eq i32 %31, 1
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %32 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %DeblockCall28 = getelementptr inbounds %struct.img_par, %struct.img_par* %32, i32 0, i32 45
  store i32 0, i32* %DeblockCall28, align 4
  br label %return

if.end.29:                                        ; preds = %if.end.24
  %33 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFDisableIdc30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %33, i32 0, i32 16
  %34 = load i32, i32* %LFDisableIdc30, align 4
  %cmp31 = icmp eq i32 %34, 2
  br i1 %cmp31, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.end.29
  %35 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 26
  %36 = load i32, i32* %mbAvailA, align 4
  store i32 %36, i32* %filterLeftMbEdgeFlag, align 4
  %37 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %MbaffFrameFlag34 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 29
  %38 = load i32, i32* %MbaffFrameFlag34, align 4
  %tobool35 = icmp ne i32 %38, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.else

land.lhs.true.36:                                 ; preds = %if.then.33
  %39 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field37 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 20
  %40 = load i32, i32* %mb_field37, align 4
  %tobool38 = icmp ne i32 %40, 0
  br i1 %tobool38, label %if.else, label %land.lhs.true.39

land.lhs.true.39:                                 ; preds = %land.lhs.true.36
  %41 = load i32, i32* %MbQAddr.addr, align 4
  %and = and i32 %41, 1
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %land.lhs.true.39
  store i32 1, i32* %filterTopMbEdgeFlag, align 4
  br label %if.end.42

if.else:                                          ; preds = %land.lhs.true.39, %land.lhs.true.36, %if.then.33
  %42 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i32 0, i32 27
  %43 = load i32, i32* %mbAvailB, align 4
  store i32 %43, i32* %filterTopMbEdgeFlag, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.41
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.29
  %44 = load i32, i32* %MbQAddr.addr, align 4
  %45 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %45, i32 0, i32 1
  store i32 %44, i32* %current_mb_nr, align 4
  call void @CheckAvailabilityOfNeighbors()
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.151, %if.end.43
  %46 = load i32, i32* %dir, align 4
  %cmp44 = icmp slt i32 %46, 2
  br i1 %cmp44, label %for.body, label %for.end.153

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %dir, align 4
  %tobool46 = icmp ne i32 %47, 0
  br i1 %tobool46, label %land.lhs.true.47, label %lor.rhs.49

land.lhs.true.47:                                 ; preds = %for.body
  %48 = load i32, i32* %filterTopMbEdgeFlag, align 4
  %tobool48 = icmp ne i32 %48, 0
  br i1 %tobool48, label %lor.end.54, label %lor.rhs.49

lor.rhs.49:                                       ; preds = %land.lhs.true.47, %for.body
  %49 = load i32, i32* %dir, align 4
  %tobool50 = icmp ne i32 %49, 0
  br i1 %tobool50, label %land.end.53, label %land.rhs.51

land.rhs.51:                                      ; preds = %lor.rhs.49
  %50 = load i32, i32* %filterLeftMbEdgeFlag, align 4
  %tobool52 = icmp ne i32 %50, 0
  br label %land.end.53

land.end.53:                                      ; preds = %land.rhs.51, %lor.rhs.49
  %51 = phi i1 [ false, %lor.rhs.49 ], [ %tobool52, %land.rhs.51 ]
  br label %lor.end.54

lor.end.54:                                       ; preds = %land.end.53, %land.lhs.true.47
  %52 = phi i1 [ true, %land.lhs.true.47 ], [ %51, %land.end.53 ]
  %lor.ext55 = zext i1 %52 to i32
  store i32 %lor.ext55, i32* %EdgeCondition, align 4
  store i32 0, i32* %edge, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.148, %lor.end.54
  %53 = load i32, i32* %edge, align 4
  %cmp57 = icmp slt i32 %53, 4
  br i1 %cmp57, label %for.body.59, label %for.end.150

for.body.59:                                      ; preds = %for.cond.56
  %54 = load i32, i32* %edge, align 4
  %tobool60 = icmp ne i32 %54, 0
  br i1 %tobool60, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.59
  %55 = load i32, i32* %EdgeCondition, align 4
  %tobool61 = icmp ne i32 %55, 0
  br i1 %tobool61, label %if.then.62, label %if.end.147

if.then.62:                                       ; preds = %lor.lhs.false, %for.body.59
  %56 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 50
  %57 = load i32, i32* %chroma_format_idc, align 4
  %idxprom63 = sext i32 %57 to i64
  %58 = load i32, i32* %edge, align 4
  %idxprom64 = sext i32 %58 to i64
  %59 = load i32, i32* %dir, align 4
  %idxprom65 = sext i32 %59 to i64
  %arrayidx66 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* @chroma_edge, i32 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx66, i32 0, i64 %idxprom64
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx67, i32 0, i64 %idxprom63
  %60 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %60 to i32
  store i32 %conv69, i32* %edge_cr, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %61 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %62 = load i32, i32* %MbQAddr.addr, align 4
  %63 = load i32, i32* %dir, align 4
  %64 = load i32, i32* %edge, align 4
  %65 = load i32, i32* %mvlimit, align 4
  %66 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @GetStrength(i8* %arraydecay, %struct.img_par* %61, i32 %62, i32 %63, i32 %64, i32 %65, %struct.storable_picture* %66)
  %arrayidx70 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i64 0
  %67 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %67 to i32
  store i32 %conv71, i32* %StrengthSum, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc, %if.then.62
  %68 = load i32, i32* %i, align 4
  %cmp73 = icmp slt i32 %68, 16
  br i1 %cmp73, label %for.body.75, label %for.end

for.body.75:                                      ; preds = %for.cond.72
  %69 = load i32, i32* %StrengthSum, align 4
  %tobool76 = icmp ne i32 %69, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.body.75
  br label %for.end

if.end.78:                                        ; preds = %for.body.75
  %70 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %70 to i64
  %arrayidx80 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i64 %idxprom79
  %71 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %71 to i32
  %72 = load i32, i32* %StrengthSum, align 4
  %add = add nsw i32 %72, %conv81
  store i32 %add, i32* %StrengthSum, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %73 = load i32, i32* %i, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.72

for.end:                                          ; preds = %if.then.77, %for.cond.72
  %74 = load i32, i32* %StrengthSum, align 4
  %tobool82 = icmp ne i32 %74, 0
  br i1 %tobool82, label %if.then.83, label %if.end.106

if.then.83:                                       ; preds = %for.end
  %75 = load i32, i32* %edge, align 4
  %idxprom84 = sext i32 %75 to i64
  %arrayidx85 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 %idxprom84
  %76 = load i32, i32* %arrayidx85, align 4
  %tobool86 = icmp ne i32 %76, 0
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.then.83
  %77 = load i16**, i16*** %imgY, align 8
  %arraydecay88 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %78 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %79 = load i32, i32* %MbQAddr.addr, align 4
  %80 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %80, i32 0, i32 17
  %81 = load i32, i32* %LFAlphaC0Offset, align 4
  %82 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 18
  %83 = load i32, i32* %LFBetaOffset, align 4
  %84 = load i32, i32* %dir, align 4
  %85 = load i32, i32* %edge, align 4
  %86 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %86, i32 0, i32 19
  %87 = load i32, i32* %size_x, align 4
  %88 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @EdgeLoop(i16** %77, i8* %arraydecay88, %struct.img_par* %78, i32 %79, i32 %81, i32 %83, i32 %84, i32 %85, i32 %87, i32 0, i32 0, %struct.storable_picture* %88)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.then.83
  %89 = load i16***, i16**** %imgUV, align 8
  %cmp90 = icmp ne i16*** %89, null
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.105

land.lhs.true.92:                                 ; preds = %if.end.89
  %90 = load i32, i32* %edge_cr, align 4
  %cmp93 = icmp sge i32 %90, 0
  br i1 %cmp93, label %if.then.95, label %if.end.105

if.then.95:                                       ; preds = %land.lhs.true.92
  %91 = load i16***, i16**** %imgUV, align 8
  %arrayidx96 = getelementptr inbounds i16**, i16*** %91, i64 0
  %92 = load i16**, i16*** %arrayidx96, align 8
  %arraydecay97 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %93 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %94 = load i32, i32* %MbQAddr.addr, align 4
  %95 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset98 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %95, i32 0, i32 17
  %96 = load i32, i32* %LFAlphaC0Offset98, align 4
  %97 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset99 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %97, i32 0, i32 18
  %98 = load i32, i32* %LFBetaOffset99, align 4
  %99 = load i32, i32* %dir, align 4
  %100 = load i32, i32* %edge_cr, align 4
  %101 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 21
  %102 = load i32, i32* %size_x_cr, align 4
  %103 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @EdgeLoop(i16** %92, i8* %arraydecay97, %struct.img_par* %93, i32 %94, i32 %96, i32 %98, i32 %99, i32 %100, i32 %102, i32 1, i32 0, %struct.storable_picture* %103)
  %104 = load i16***, i16**** %imgUV, align 8
  %arrayidx100 = getelementptr inbounds i16**, i16*** %104, i64 1
  %105 = load i16**, i16*** %arrayidx100, align 8
  %arraydecay101 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %106 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %107 = load i32, i32* %MbQAddr.addr, align 4
  %108 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset102 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %108, i32 0, i32 17
  %109 = load i32, i32* %LFAlphaC0Offset102, align 4
  %110 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset103 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %110, i32 0, i32 18
  %111 = load i32, i32* %LFBetaOffset103, align 4
  %112 = load i32, i32* %dir, align 4
  %113 = load i32, i32* %edge_cr, align 4
  %114 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr104 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %114, i32 0, i32 21
  %115 = load i32, i32* %size_x_cr104, align 4
  %116 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @EdgeLoop(i16** %105, i8* %arraydecay101, %struct.img_par* %106, i32 %107, i32 %109, i32 %111, i32 %112, i32 %113, i32 %115, i32 1, i32 1, %struct.storable_picture* %116)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.95, %land.lhs.true.92, %if.end.89
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %for.end
  %117 = load i32, i32* %dir, align 4
  %tobool107 = icmp ne i32 %117, 0
  br i1 %tobool107, label %land.lhs.true.108, label %if.end.146

land.lhs.true.108:                                ; preds = %if.end.106
  %118 = load i32, i32* %edge, align 4
  %tobool109 = icmp ne i32 %118, 0
  br i1 %tobool109, label %if.end.146, label %land.lhs.true.110

land.lhs.true.110:                                ; preds = %land.lhs.true.108
  %119 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field111 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %119, i32 0, i32 20
  %120 = load i32, i32* %mb_field111, align 4
  %tobool112 = icmp ne i32 %120, 0
  br i1 %tobool112, label %if.end.146, label %land.lhs.true.113

land.lhs.true.113:                                ; preds = %land.lhs.true.110
  %121 = load i8, i8* @mixedModeEdgeFlag, align 1
  %conv114 = zext i8 %121 to i32
  %tobool115 = icmp ne i32 %conv114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.146

if.then.116:                                      ; preds = %land.lhs.true.113
  %122 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %DeblockCall117 = getelementptr inbounds %struct.img_par, %struct.img_par* %122, i32 0, i32 45
  store i32 2, i32* %DeblockCall117, align 4
  %arraydecay118 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %123 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %124 = load i32, i32* %MbQAddr.addr, align 4
  %125 = load i32, i32* %dir, align 4
  %126 = load i32, i32* %mvlimit, align 4
  %127 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @GetStrength(i8* %arraydecay118, %struct.img_par* %123, i32 %124, i32 %125, i32 4, i32 %126, %struct.storable_picture* %127)
  %128 = load i32, i32* %edge, align 4
  %idxprom119 = sext i32 %128 to i64
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 %idxprom119
  %129 = load i32, i32* %arrayidx120, align 4
  %tobool121 = icmp ne i32 %129, 0
  br i1 %tobool121, label %if.then.122, label %if.end.127

if.then.122:                                      ; preds = %if.then.116
  %130 = load i16**, i16*** %imgY, align 8
  %arraydecay123 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %131 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %132 = load i32, i32* %MbQAddr.addr, align 4
  %133 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset124 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %133, i32 0, i32 17
  %134 = load i32, i32* %LFAlphaC0Offset124, align 4
  %135 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset125 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %135, i32 0, i32 18
  %136 = load i32, i32* %LFBetaOffset125, align 4
  %137 = load i32, i32* %dir, align 4
  %138 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x126 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %138, i32 0, i32 19
  %139 = load i32, i32* %size_x126, align 4
  %140 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @EdgeLoop(i16** %130, i8* %arraydecay123, %struct.img_par* %131, i32 %132, i32 %134, i32 %136, i32 %137, i32 4, i32 %139, i32 0, i32 0, %struct.storable_picture* %140)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.122, %if.then.116
  %141 = load i16***, i16**** %imgUV, align 8
  %cmp128 = icmp ne i16*** %141, null
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.144

land.lhs.true.130:                                ; preds = %if.end.127
  %142 = load i32, i32* %edge_cr, align 4
  %cmp131 = icmp sge i32 %142, 0
  br i1 %cmp131, label %if.then.133, label %if.end.144

if.then.133:                                      ; preds = %land.lhs.true.130
  %143 = load i16***, i16**** %imgUV, align 8
  %arrayidx134 = getelementptr inbounds i16**, i16*** %143, i64 0
  %144 = load i16**, i16*** %arrayidx134, align 8
  %arraydecay135 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %145 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %146 = load i32, i32* %MbQAddr.addr, align 4
  %147 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset136 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %147, i32 0, i32 17
  %148 = load i32, i32* %LFAlphaC0Offset136, align 4
  %149 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset137 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %149, i32 0, i32 18
  %150 = load i32, i32* %LFBetaOffset137, align 4
  %151 = load i32, i32* %dir, align 4
  %152 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr138 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %152, i32 0, i32 21
  %153 = load i32, i32* %size_x_cr138, align 4
  %154 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @EdgeLoop(i16** %144, i8* %arraydecay135, %struct.img_par* %145, i32 %146, i32 %148, i32 %150, i32 %151, i32 4, i32 %153, i32 1, i32 0, %struct.storable_picture* %154)
  %155 = load i16***, i16**** %imgUV, align 8
  %arrayidx139 = getelementptr inbounds i16**, i16*** %155, i64 1
  %156 = load i16**, i16*** %arrayidx139, align 8
  %arraydecay140 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %157 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %158 = load i32, i32* %MbQAddr.addr, align 4
  %159 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset141 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %159, i32 0, i32 17
  %160 = load i32, i32* %LFAlphaC0Offset141, align 4
  %161 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset142 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %161, i32 0, i32 18
  %162 = load i32, i32* %LFBetaOffset142, align 4
  %163 = load i32, i32* %dir, align 4
  %164 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr143 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %164, i32 0, i32 21
  %165 = load i32, i32* %size_x_cr143, align 4
  %166 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @EdgeLoop(i16** %156, i8* %arraydecay140, %struct.img_par* %157, i32 %158, i32 %160, i32 %162, i32 %163, i32 4, i32 %165, i32 1, i32 1, %struct.storable_picture* %166)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.133, %land.lhs.true.130, %if.end.127
  %167 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %DeblockCall145 = getelementptr inbounds %struct.img_par, %struct.img_par* %167, i32 0, i32 45
  store i32 1, i32* %DeblockCall145, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.144, %land.lhs.true.113, %land.lhs.true.110, %land.lhs.true.108, %if.end.106
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %lor.lhs.false
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %168 = load i32, i32* %edge, align 4
  %inc149 = add nsw i32 %168, 1
  store i32 %inc149, i32* %edge, align 4
  br label %for.cond.56

for.end.150:                                      ; preds = %for.cond.56
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.end.150
  %169 = load i32, i32* %dir, align 4
  %inc152 = add nsw i32 %169, 1
  store i32 %inc152, i32* %dir, align 4
  br label %for.cond

for.end.153:                                      ; preds = %for.cond
  %170 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %DeblockCall154 = getelementptr inbounds %struct.img_par, %struct.img_par* %170, i32 0, i32 45
  store i32 0, i32* %DeblockCall154, align 4
  br label %return

return:                                           ; preds = %for.end.153, %if.then.27
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @get_mb_pos(i32, i32*, i32*, i32) #2

declare void @CheckAvailabilityOfNeighbors() #2

; Function Attrs: nounwind uwtable
define void @GetStrength(i8* %Strength, %struct.img_par* %img, i32 %MbQAddr, i32 %dir, i32 %edge, i32 %mvlimit, %struct.storable_picture* %p) #0 {
entry:
  %Strength.addr = alloca i8*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %MbQAddr.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %mvlimit.addr = alloca i32, align 4
  %p.addr = alloca %struct.storable_picture*, align 8
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
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %MbQAddr, i32* %MbQAddr.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  store i32 %mvlimit, i32* %mvlimit.addr, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  %0 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 39
  %1 = load i16****, i16***** %mv, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %1, i64 0
  %2 = load i16***, i16**** %arrayidx, align 8
  store i16*** %2, i16**** %list0_mv, align 8
  %3 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %mv1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %3, i32 0, i32 39
  %4 = load i16****, i16***** %mv1, align 8
  %arrayidx2 = getelementptr inbounds i16***, i16**** %4, i64 1
  %5 = load i16***, i16**** %arrayidx2, align 8
  store i16*** %5, i16**** %list1_mv, align 8
  %6 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 36
  %7 = load i8***, i8**** %ref_idx, align 8
  %arrayidx3 = getelementptr inbounds i8**, i8*** %7, i64 0
  %8 = load i8**, i8*** %arrayidx3, align 8
  store i8** %8, i8*** %list0_refIdxArr, align 8
  %9 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %ref_idx4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 36
  %10 = load i8***, i8**** %ref_idx4, align 8
  %arrayidx5 = getelementptr inbounds i8**, i8*** %10, i64 1
  %11 = load i8**, i8*** %arrayidx5, align 8
  store i8** %11, i8*** %list1_refIdxArr, align 8
  %12 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %ref_pic_id = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 37
  %13 = load i64***, i64**** %ref_pic_id, align 8
  %arrayidx6 = getelementptr inbounds i64**, i64*** %13, i64 0
  %14 = load i64**, i64*** %arrayidx6, align 8
  store i64** %14, i64*** %list0_refPicIdArr, align 8
  %15 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %ref_pic_id7 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 37
  %16 = load i64***, i64**** %ref_pic_id7, align 8
  %arrayidx8 = getelementptr inbounds i64**, i64*** %16, i64 1
  %17 = load i64**, i64*** %arrayidx8, align 8
  store i64** %17, i64*** %list1_refPicIdArr, align 8
  %18 = load i32, i32* %dir.addr, align 4
  %sub = sub nsw i32 1, %18
  store i32 %sub, i32* %dir_m1, align 4
  %19 = load i32, i32* %MbQAddr.addr, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 39
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
  %39 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data24 = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 39
  %40 = load %struct.macroblock*, %struct.macroblock** %mb_data24, align 8
  %arrayidx25 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %40, i64 %idxprom23
  store %struct.macroblock* %arrayidx25, %struct.macroblock** %MbP, align 8
  %41 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %41, i32 0, i32 20
  %42 = load i32, i32* %mb_field, align 4
  %43 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field26 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 20
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
  %49 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %slice_type = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 45
  %50 = load i32, i32* %slice_type, align 4
  %cmp35 = icmp eq i32 %50, 3
  br i1 %cmp35, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.19
  %51 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %slice_type37 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 45
  %52 = load i32, i32* %slice_type37, align 4
  %cmp38 = icmp eq i32 %52, 4
  br i1 %cmp38, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %cond.end.19
  %53 = load i32, i32* %edge.addr, align 4
  %cmp40 = icmp eq i32 %53, 0
  br i1 %cmp40, label %land.rhs, label %land.end.62

land.rhs:                                         ; preds = %if.then
  %54 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %54, i32 0, i32 29
  %55 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool42 = icmp ne i32 %55, 0
  br i1 %tobool42, label %lor.lhs.false.45, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.rhs
  %56 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 0
  %57 = load i32, i32* %structure, align 4
  %cmp43 = icmp eq i32 %57, 0
  br i1 %cmp43, label %lor.end, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true, %land.rhs
  %58 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %MbaffFrameFlag46 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 29
  %59 = load i32, i32* %MbaffFrameFlag46, align 4
  %tobool47 = icmp ne i32 %59, 0
  br i1 %tobool47, label %land.lhs.true.48, label %lor.rhs

land.lhs.true.48:                                 ; preds = %lor.lhs.false.45
  %60 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field49 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 20
  %61 = load i32, i32* %mb_field49, align 4
  %tobool50 = icmp ne i32 %61, 0
  br i1 %tobool50, label %lor.rhs, label %land.lhs.true.51

land.lhs.true.51:                                 ; preds = %land.lhs.true.48
  %62 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field52 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %62, i32 0, i32 20
  %63 = load i32, i32* %mb_field52, align 4
  %tobool53 = icmp ne i32 %63, 0
  br i1 %tobool53, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true.51, %land.lhs.true.48, %lor.lhs.false.45
  %64 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %MbaffFrameFlag54 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %64, i32 0, i32 29
  %65 = load i32, i32* %MbaffFrameFlag54, align 4
  %tobool55 = icmp ne i32 %65, 0
  br i1 %tobool55, label %land.rhs.60, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.rhs
  %66 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure57 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %66, i32 0, i32 0
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
  %75 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %MbaffFrameFlag70 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 29
  %76 = load i32, i32* %MbaffFrameFlag70, align 4
  %tobool71 = icmp ne i32 %76, 0
  br i1 %tobool71, label %lor.lhs.false.76, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %land.rhs.69
  %77 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure73 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 0
  %78 = load i32, i32* %structure73, align 4
  %cmp74 = icmp eq i32 %78, 0
  br i1 %cmp74, label %lor.end.96, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.72, %land.rhs.69
  %79 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %MbaffFrameFlag77 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %79, i32 0, i32 29
  %80 = load i32, i32* %MbaffFrameFlag77, align 4
  %tobool78 = icmp ne i32 %80, 0
  br i1 %tobool78, label %land.lhs.true.79, label %lor.rhs.85

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76
  %81 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field80 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i32 0, i32 20
  %82 = load i32, i32* %mb_field80, align 4
  %tobool81 = icmp ne i32 %82, 0
  br i1 %tobool81, label %lor.rhs.85, label %land.lhs.true.82

land.lhs.true.82:                                 ; preds = %land.lhs.true.79
  %83 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field83 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %83, i32 0, i32 20
  %84 = load i32, i32* %mb_field83, align 4
  %tobool84 = icmp ne i32 %84, 0
  br i1 %tobool84, label %lor.rhs.85, label %lor.end.96

lor.rhs.85:                                       ; preds = %land.lhs.true.82, %land.lhs.true.79, %lor.lhs.false.76
  %85 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %MbaffFrameFlag86 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %85, i32 0, i32 29
  %86 = load i32, i32* %MbaffFrameFlag86, align 4
  %tobool87 = icmp ne i32 %86, 0
  br i1 %tobool87, label %land.rhs.92, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.rhs.85
  %87 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure89 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %87, i32 0, i32 0
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
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %95, i32 0, i32 6
  %96 = load i32, i32* %mb_type, align 4
  %cmp102 = icmp eq i32 %96, 9
  br i1 %cmp102, label %if.end.528, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.end.97
  %97 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type105 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %97, i32 0, i32 6
  %98 = load i32, i32* %mb_type105, align 4
  %cmp106 = icmp eq i32 %98, 10
  br i1 %cmp106, label %if.end.528, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %lor.lhs.false.104
  %99 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type109 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 6
  %100 = load i32, i32* %mb_type109, align 4
  %cmp110 = icmp eq i32 %100, 13
  br i1 %cmp110, label %if.end.528, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.108
  %101 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type113 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %101, i32 0, i32 6
  %102 = load i32, i32* %mb_type113, align 4
  %cmp114 = icmp eq i32 %102, 14
  br i1 %cmp114, label %if.end.528, label %land.lhs.true.116

land.lhs.true.116:                                ; preds = %lor.lhs.false.112
  %103 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type117 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %103, i32 0, i32 6
  %104 = load i32, i32* %mb_type117, align 4
  %cmp118 = icmp eq i32 %104, 9
  br i1 %cmp118, label %if.end.528, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %land.lhs.true.116
  %105 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type121 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %105, i32 0, i32 6
  %106 = load i32, i32* %mb_type121, align 4
  %cmp122 = icmp eq i32 %106, 10
  br i1 %cmp122, label %if.end.528, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %lor.lhs.false.120
  %107 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type125 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %107, i32 0, i32 6
  %108 = load i32, i32* %mb_type125, align 4
  %cmp126 = icmp eq i32 %108, 13
  br i1 %cmp126, label %if.end.528, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %lor.lhs.false.124
  %109 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type129 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %109, i32 0, i32 6
  %110 = load i32, i32* %mb_type129, align 4
  %cmp130 = icmp eq i32 %110, 14
  br i1 %cmp130, label %if.end.528, label %if.then.132

if.then.132:                                      ; preds = %lor.lhs.false.128
  %111 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %cbp_blk = getelementptr inbounds %struct.macroblock, %struct.macroblock* %111, i32 0, i32 9
  %112 = load i64, i64* %cbp_blk, align 8
  %113 = load i32, i32* %blkQ, align 4
  %sh_prom = zext i32 %113 to i64
  %shl133 = shl i64 1, %sh_prom
  %and = and i64 %112, %shl133
  %cmp134 = icmp ne i64 %and, 0
  br i1 %cmp134, label %if.then.143, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %if.then.132
  %114 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %cbp_blk137 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %114, i32 0, i32 9
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
define void @EdgeLoop(i16** %Img, i8* %Strength, %struct.img_par* %img, i32 %MbQAddr, i32 %AlphaC0Offset, i32 %BetaOffset, i32 %dir, i32 %edge, i32 %width, i32 %yuv, i32 %uv, %struct.storable_picture* %p) #0 {
entry:
  %Img.addr = alloca i16**, align 8
  %Strength.addr = alloca i8*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %MbQAddr.addr = alloca i32, align 4
  %AlphaC0Offset.addr = alloca i32, align 4
  %BetaOffset.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %yuv.addr = alloca i32, align 4
  %uv.addr = alloca i32, align 4
  %p.addr = alloca %struct.storable_picture*, align 8
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
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %MbQAddr, i32* %MbQAddr.addr, align 4
  store i32 %AlphaC0Offset, i32* %AlphaC0Offset.addr, align 4
  store i32 %BetaOffset, i32* %BetaOffset.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %yuv, i32* %yuv.addr, align 4
  store i32 %uv, i32* %uv.addr, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
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
  %1 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %1, i32 0, i32 101
  %2 = load i32, i32* %bitdepth_luma, align 4
  %sub = sub nsw i32 %2, 8
  %shl = shl i32 1, %sub
  store i32 %shl, i32* %bitdepth_scale, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 102
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
  %6 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 50
  %7 = load i32, i32* %chroma_format_idc, align 4
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
  %34 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 39
  %35 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx27 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i64 %idxprom26
  store %struct.macroblock* %arrayidx27, %struct.macroblock** %MbQ, align 8
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 1
  %36 = load i32, i32* %mb_addr, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data29 = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 39
  %38 = load %struct.macroblock*, %struct.macroblock** %mb_data29, align 8
  %arrayidx30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %38, i64 %idxprom28
  store %struct.macroblock* %arrayidx30, %struct.macroblock** %MbP, align 8
  %39 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 20
  %40 = load i32, i32* %mb_field, align 4
  %tobool31 = icmp ne i32 %40, 0
  br i1 %tobool31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.21
  %41 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %41, i32 0, i32 20
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
  %mb_field38 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %46, i32 0, i32 20
  %47 = load i32, i32* %mb_field38, align 4
  %tobool39 = icmp ne i32 %47, 0
  br i1 %tobool39, label %land.lhs.true.40, label %cond.false.45

land.lhs.true.40:                                 ; preds = %cond.true.37
  %48 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field41 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %48, i32 0, i32 20
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
  %LFDisableIdc = getelementptr inbounds %struct.macroblock, %struct.macroblock* %55, i32 0, i32 16
  %56 = load i32, i32* %LFDisableIdc, align 4
  %cmp53 = icmp eq i32 %56, 0
  br i1 %cmp53, label %if.then.55, label %if.end.391

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
  %mb_field61 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %59, i32 0, i32 20
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
  %mb_field75 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i32 0, i32 20
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
  %qpc = getelementptr inbounds %struct.macroblock, %struct.macroblock* %79, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [2 x i32], [2 x i32]* %qpc, i32 0, i64 %idxprom97
  %80 = load i32, i32* %arrayidx98, align 4
  %81 = load i32, i32* %uv.addr, align 4
  %idxprom99 = sext i32 %81 to i64
  %82 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %qpc100 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [2 x i32], [2 x i32]* %qpc100, i32 0, i64 %idxprom99
  %83 = load i32, i32* %arrayidx101, align 4
  %add102 = add nsw i32 %80, %83
  %add103 = add nsw i32 %add102, 1
  %shr104 = ashr i32 %add103, 1
  br label %cond.end.110

cond.false.105:                                   ; preds = %cond.end.83
  %84 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i32 0, i32 0
  %85 = load i32, i32* %qp, align 4
  %86 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %qp106 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i32 0, i32 0
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
  %cmp157 = icmp ne i32 %conv156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.390

if.then.159:                                      ; preds = %cond.end.110
  %124 = load i32, i32* %R0, align 4
  %125 = load i32, i32* %L0, align 4
  %sub160 = sub nsw i32 %124, %125
  store i32 %sub160, i32* %Delta, align 4
  %call161 = call i32 @iabs(i32 %sub160)
  store i32 %call161, i32* %AbsDelta, align 4
  %126 = load i32, i32* %AbsDelta, align 4
  %127 = load i32, i32* %Alpha, align 4
  %cmp162 = icmp slt i32 %126, %127
  br i1 %cmp162, label %if.then.164, label %if.end.389

if.then.164:                                      ; preds = %if.then.159
  %128 = load i32, i32* %Strng, align 4
  %idxprom165 = sext i32 %128 to i64
  %129 = load i8*, i8** %ClipTab, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %129, i64 %idxprom165
  %130 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %130 to i32
  %131 = load i32, i32* %bitdepth_scale, align 4
  %mul168 = mul nsw i32 %conv167, %131
  store i32 %mul168, i32* %C0, align 4
  %132 = load i32, i32* %R0, align 4
  %133 = load i32, i32* %R1, align 4
  %sub169 = sub nsw i32 %132, %133
  %call170 = call i32 @iabs(i32 %sub169)
  %134 = load i32, i32* %Beta, align 4
  %sub171 = sub nsw i32 %call170, %134
  %135 = load i32, i32* %L0, align 4
  %136 = load i32, i32* %L1, align 4
  %sub172 = sub nsw i32 %135, %136
  %call173 = call i32 @iabs(i32 %sub172)
  %137 = load i32, i32* %Beta, align 4
  %sub174 = sub nsw i32 %call173, %137
  %and175 = and i32 %sub171, %sub174
  %cmp176 = icmp slt i32 %and175, 0
  br i1 %cmp176, label %if.then.178, label %if.end.388

if.then.178:                                      ; preds = %if.then.164
  %138 = load i32, i32* %yuv.addr, align 4
  %tobool179 = icmp ne i32 %138, 0
  br i1 %tobool179, label %if.end.191, label %if.then.180

if.then.180:                                      ; preds = %if.then.178
  %139 = load i32, i32* %R0, align 4
  %140 = load i32, i32* %R2, align 4
  %sub181 = sub nsw i32 %139, %140
  %call182 = call i32 @iabs(i32 %sub181)
  %141 = load i32, i32* %Beta, align 4
  %sub183 = sub nsw i32 %call182, %141
  %cmp184 = icmp slt i32 %sub183, 0
  %conv185 = zext i1 %cmp184 to i32
  store i32 %conv185, i32* %aq, align 4
  %142 = load i32, i32* %L0, align 4
  %143 = load i32, i32* %L2, align 4
  %sub186 = sub nsw i32 %142, %143
  %call187 = call i32 @iabs(i32 %sub186)
  %144 = load i32, i32* %Beta, align 4
  %sub188 = sub nsw i32 %call187, %144
  %cmp189 = icmp slt i32 %sub188, 0
  %conv190 = zext i1 %cmp189 to i32
  store i32 %conv190, i32* %ap, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.180, %if.then.178
  %145 = load i32, i32* %L0, align 4
  %146 = load i32, i32* %R0, align 4
  %add192 = add nsw i32 %145, %146
  store i32 %add192, i32* %RL0, align 4
  %147 = load i32, i32* %Strng, align 4
  %cmp193 = icmp eq i32 %147, 4
  br i1 %cmp193, label %if.then.195, label %if.else.316

if.then.195:                                      ; preds = %if.end.191
  %148 = load i32, i32* %yuv.addr, align 4
  %tobool196 = icmp ne i32 %148, 0
  br i1 %tobool196, label %if.then.197, label %if.else.212

if.then.197:                                      ; preds = %if.then.195
  %149 = load i32, i32* %R1, align 4
  %shl198 = shl i32 %149, 1
  %150 = load i32, i32* %R0, align 4
  %add199 = add nsw i32 %shl198, %150
  %151 = load i32, i32* %L1, align 4
  %add200 = add nsw i32 %add199, %151
  %add201 = add nsw i32 %add200, 2
  %shr202 = ashr i32 %add201, 2
  %conv203 = trunc i32 %shr202 to i16
  %152 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx204 = getelementptr inbounds i16, i16* %152, i64 0
  store i16 %conv203, i16* %arrayidx204, align 2
  %153 = load i32, i32* %L1, align 4
  %shl205 = shl i32 %153, 1
  %154 = load i32, i32* %L0, align 4
  %add206 = add nsw i32 %shl205, %154
  %155 = load i32, i32* %R1, align 4
  %add207 = add nsw i32 %add206, %155
  %add208 = add nsw i32 %add207, 2
  %shr209 = ashr i32 %add208, 2
  %conv210 = trunc i32 %shr209 to i16
  %156 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx211 = getelementptr inbounds i16, i16* %156, i64 0
  store i16 %conv210, i16* %arrayidx211, align 2
  br label %if.end.315

if.else.212:                                      ; preds = %if.then.195
  %157 = load i32, i32* %AbsDelta, align 4
  %158 = load i32, i32* %Alpha, align 4
  %shr213 = ashr i32 %158, 2
  %add214 = add nsw i32 %shr213, 2
  %cmp215 = icmp slt i32 %157, %add214
  %conv216 = zext i1 %cmp215 to i32
  store i32 %conv216, i32* %small_gap, align 4
  %159 = load i32, i32* %small_gap, align 4
  %160 = load i32, i32* %aq, align 4
  %and217 = and i32 %160, %159
  store i32 %and217, i32* %aq, align 4
  %161 = load i32, i32* %small_gap, align 4
  %162 = load i32, i32* %ap, align 4
  %and218 = and i32 %162, %161
  store i32 %and218, i32* %ap, align 4
  %163 = load i32, i32* %aq, align 4
  %tobool219 = icmp ne i32 %163, 0
  br i1 %tobool219, label %cond.true.220, label %cond.false.227

cond.true.220:                                    ; preds = %if.else.212
  %164 = load i32, i32* %L1, align 4
  %165 = load i32, i32* %R1, align 4
  %166 = load i32, i32* %RL0, align 4
  %add221 = add nsw i32 %165, %166
  %shl222 = shl i32 %add221, 1
  %add223 = add nsw i32 %164, %shl222
  %167 = load i32, i32* %R2, align 4
  %add224 = add nsw i32 %add223, %167
  %add225 = add nsw i32 %add224, 4
  %shr226 = ashr i32 %add225, 3
  br label %cond.end.233

cond.false.227:                                   ; preds = %if.else.212
  %168 = load i32, i32* %R1, align 4
  %shl228 = shl i32 %168, 1
  %169 = load i32, i32* %R0, align 4
  %add229 = add nsw i32 %shl228, %169
  %170 = load i32, i32* %L1, align 4
  %add230 = add nsw i32 %add229, %170
  %add231 = add nsw i32 %add230, 2
  %shr232 = ashr i32 %add231, 2
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.227, %cond.true.220
  %cond234 = phi i32 [ %shr226, %cond.true.220 ], [ %shr232, %cond.false.227 ]
  %conv235 = trunc i32 %cond234 to i16
  %171 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx236 = getelementptr inbounds i16, i16* %171, i64 0
  store i16 %conv235, i16* %arrayidx236, align 2
  %172 = load i32, i32* %ap, align 4
  %tobool237 = icmp ne i32 %172, 0
  br i1 %tobool237, label %cond.true.238, label %cond.false.245

cond.true.238:                                    ; preds = %cond.end.233
  %173 = load i32, i32* %R1, align 4
  %174 = load i32, i32* %L1, align 4
  %175 = load i32, i32* %RL0, align 4
  %add239 = add nsw i32 %174, %175
  %shl240 = shl i32 %add239, 1
  %add241 = add nsw i32 %173, %shl240
  %176 = load i32, i32* %L2, align 4
  %add242 = add nsw i32 %add241, %176
  %add243 = add nsw i32 %add242, 4
  %shr244 = ashr i32 %add243, 3
  br label %cond.end.251

cond.false.245:                                   ; preds = %cond.end.233
  %177 = load i32, i32* %L1, align 4
  %shl246 = shl i32 %177, 1
  %178 = load i32, i32* %L0, align 4
  %add247 = add nsw i32 %shl246, %178
  %179 = load i32, i32* %R1, align 4
  %add248 = add nsw i32 %add247, %179
  %add249 = add nsw i32 %add248, 2
  %shr250 = ashr i32 %add249, 2
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.245, %cond.true.238
  %cond252 = phi i32 [ %shr244, %cond.true.238 ], [ %shr250, %cond.false.245 ]
  %conv253 = trunc i32 %cond252 to i16
  %180 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx254 = getelementptr inbounds i16, i16* %180, i64 0
  store i16 %conv253, i16* %arrayidx254, align 2
  %181 = load i32, i32* %aq, align 4
  %tobool255 = icmp ne i32 %181, 0
  br i1 %tobool255, label %cond.true.256, label %cond.false.262

cond.true.256:                                    ; preds = %cond.end.251
  %182 = load i32, i32* %R2, align 4
  %183 = load i32, i32* %R0, align 4
  %add257 = add nsw i32 %182, %183
  %184 = load i32, i32* %R1, align 4
  %add258 = add nsw i32 %add257, %184
  %185 = load i32, i32* %L0, align 4
  %add259 = add nsw i32 %add258, %185
  %add260 = add nsw i32 %add259, 2
  %shr261 = ashr i32 %add260, 2
  br label %cond.end.263

cond.false.262:                                   ; preds = %cond.end.251
  %186 = load i32, i32* %R1, align 4
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.262, %cond.true.256
  %cond264 = phi i32 [ %shr261, %cond.true.256 ], [ %186, %cond.false.262 ]
  %conv265 = trunc i32 %cond264 to i16
  %187 = load i32, i32* %incQ, align 4
  %idxprom266 = sext i32 %187 to i64
  %188 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx267 = getelementptr inbounds i16, i16* %188, i64 %idxprom266
  store i16 %conv265, i16* %arrayidx267, align 2
  %189 = load i32, i32* %ap, align 4
  %tobool268 = icmp ne i32 %189, 0
  br i1 %tobool268, label %cond.true.269, label %cond.false.275

cond.true.269:                                    ; preds = %cond.end.263
  %190 = load i32, i32* %L2, align 4
  %191 = load i32, i32* %L1, align 4
  %add270 = add nsw i32 %190, %191
  %192 = load i32, i32* %L0, align 4
  %add271 = add nsw i32 %add270, %192
  %193 = load i32, i32* %R0, align 4
  %add272 = add nsw i32 %add271, %193
  %add273 = add nsw i32 %add272, 2
  %shr274 = ashr i32 %add273, 2
  br label %cond.end.276

cond.false.275:                                   ; preds = %cond.end.263
  %194 = load i32, i32* %L1, align 4
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.275, %cond.true.269
  %cond277 = phi i32 [ %shr274, %cond.true.269 ], [ %194, %cond.false.275 ]
  %conv278 = trunc i32 %cond277 to i16
  %195 = load i32, i32* %incP, align 4
  %sub279 = sub nsw i32 0, %195
  %idxprom280 = sext i32 %sub279 to i64
  %196 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx281 = getelementptr inbounds i16, i16* %196, i64 %idxprom280
  store i16 %conv278, i16* %arrayidx281, align 2
  %197 = load i32, i32* %aq, align 4
  %tobool282 = icmp ne i32 %197, 0
  br i1 %tobool282, label %cond.true.283, label %cond.false.291

cond.true.283:                                    ; preds = %cond.end.276
  %198 = load i32, i32* %R3, align 4
  %199 = load i32, i32* %R2, align 4
  %add284 = add nsw i32 %198, %199
  %shl285 = shl i32 %add284, 1
  %200 = load i32, i32* %R2, align 4
  %add286 = add nsw i32 %shl285, %200
  %201 = load i32, i32* %R1, align 4
  %add287 = add nsw i32 %add286, %201
  %202 = load i32, i32* %RL0, align 4
  %add288 = add nsw i32 %add287, %202
  %add289 = add nsw i32 %add288, 4
  %shr290 = ashr i32 %add289, 3
  br label %cond.end.292

cond.false.291:                                   ; preds = %cond.end.276
  %203 = load i32, i32* %R2, align 4
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.false.291, %cond.true.283
  %cond293 = phi i32 [ %shr290, %cond.true.283 ], [ %203, %cond.false.291 ]
  %conv294 = trunc i32 %cond293 to i16
  %204 = load i32, i32* %incQ, align 4
  %mul295 = mul nsw i32 %204, 2
  %idxprom296 = sext i32 %mul295 to i64
  %205 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx297 = getelementptr inbounds i16, i16* %205, i64 %idxprom296
  store i16 %conv294, i16* %arrayidx297, align 2
  %206 = load i32, i32* %ap, align 4
  %tobool298 = icmp ne i32 %206, 0
  br i1 %tobool298, label %cond.true.299, label %cond.false.307

cond.true.299:                                    ; preds = %cond.end.292
  %207 = load i32, i32* %L3, align 4
  %208 = load i32, i32* %L2, align 4
  %add300 = add nsw i32 %207, %208
  %shl301 = shl i32 %add300, 1
  %209 = load i32, i32* %L2, align 4
  %add302 = add nsw i32 %shl301, %209
  %210 = load i32, i32* %L1, align 4
  %add303 = add nsw i32 %add302, %210
  %211 = load i32, i32* %RL0, align 4
  %add304 = add nsw i32 %add303, %211
  %add305 = add nsw i32 %add304, 4
  %shr306 = ashr i32 %add305, 3
  br label %cond.end.308

cond.false.307:                                   ; preds = %cond.end.292
  %212 = load i32, i32* %L2, align 4
  br label %cond.end.308

cond.end.308:                                     ; preds = %cond.false.307, %cond.true.299
  %cond309 = phi i32 [ %shr306, %cond.true.299 ], [ %212, %cond.false.307 ]
  %conv310 = trunc i32 %cond309 to i16
  %213 = load i32, i32* %incP, align 4
  %sub311 = sub nsw i32 0, %213
  %mul312 = mul nsw i32 %sub311, 2
  %idxprom313 = sext i32 %mul312 to i64
  %214 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx314 = getelementptr inbounds i16, i16* %214, i64 %idxprom313
  store i16 %conv310, i16* %arrayidx314, align 2
  br label %if.end.315

if.end.315:                                       ; preds = %cond.end.308, %if.then.197
  br label %if.end.387

if.else.316:                                      ; preds = %if.end.191
  %215 = load i32, i32* %yuv.addr, align 4
  %tobool317 = icmp ne i32 %215, 0
  br i1 %tobool317, label %cond.true.318, label %cond.false.320

cond.true.318:                                    ; preds = %if.else.316
  %216 = load i32, i32* %C0, align 4
  %add319 = add nsw i32 %216, 1
  br label %cond.end.323

cond.false.320:                                   ; preds = %if.else.316
  %217 = load i32, i32* %C0, align 4
  %218 = load i32, i32* %ap, align 4
  %add321 = add nsw i32 %217, %218
  %219 = load i32, i32* %aq, align 4
  %add322 = add nsw i32 %add321, %219
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.320, %cond.true.318
  %cond324 = phi i32 [ %add319, %cond.true.318 ], [ %add322, %cond.false.320 ]
  store i32 %cond324, i32* %c0, align 4
  %220 = load i32, i32* %c0, align 4
  %sub325 = sub nsw i32 0, %220
  %221 = load i32, i32* %c0, align 4
  %222 = load i32, i32* %Delta, align 4
  %shl326 = shl i32 %222, 2
  %223 = load i32, i32* %L1, align 4
  %224 = load i32, i32* %R1, align 4
  %sub327 = sub nsw i32 %223, %224
  %add328 = add nsw i32 %shl326, %sub327
  %add329 = add nsw i32 %add328, 4
  %shr330 = ashr i32 %add329, 3
  %call331 = call i32 @iClip3(i32 %sub325, i32 %221, i32 %shr330)
  store i32 %call331, i32* %dif, align 4
  %225 = load i32, i32* %yuv.addr, align 4
  %tobool332 = icmp ne i32 %225, 0
  br i1 %tobool332, label %if.else.376, label %if.then.333

if.then.333:                                      ; preds = %cond.end.323
  %226 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value = getelementptr inbounds %struct.img_par, %struct.img_par* %226, i32 0, i32 107
  %227 = load i32, i32* %max_imgpel_value, align 4
  %228 = load i32, i32* %L0, align 4
  %229 = load i32, i32* %dif, align 4
  %add334 = add nsw i32 %228, %229
  %call335 = call i32 @iClip3(i32 0, i32 %227, i32 %add334)
  %conv336 = trunc i32 %call335 to i16
  %230 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx337 = getelementptr inbounds i16, i16* %230, i64 0
  store i16 %conv336, i16* %arrayidx337, align 2
  %231 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value338 = getelementptr inbounds %struct.img_par, %struct.img_par* %231, i32 0, i32 107
  %232 = load i32, i32* %max_imgpel_value338, align 4
  %233 = load i32, i32* %R0, align 4
  %234 = load i32, i32* %dif, align 4
  %sub339 = sub nsw i32 %233, %234
  %call340 = call i32 @iClip3(i32 0, i32 %232, i32 %sub339)
  %conv341 = trunc i32 %call340 to i16
  %235 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx342 = getelementptr inbounds i16, i16* %235, i64 0
  store i16 %conv341, i16* %arrayidx342, align 2
  %236 = load i32, i32* %ap, align 4
  %tobool343 = icmp ne i32 %236, 0
  br i1 %tobool343, label %if.then.344, label %if.end.359

if.then.344:                                      ; preds = %if.then.333
  %237 = load i32, i32* %C0, align 4
  %sub345 = sub nsw i32 0, %237
  %238 = load i32, i32* %C0, align 4
  %239 = load i32, i32* %L2, align 4
  %240 = load i32, i32* %RL0, align 4
  %add346 = add nsw i32 %240, 1
  %shr347 = ashr i32 %add346, 1
  %add348 = add nsw i32 %239, %shr347
  %241 = load i32, i32* %L1, align 4
  %shl349 = shl i32 %241, 1
  %sub350 = sub nsw i32 %add348, %shl349
  %shr351 = ashr i32 %sub350, 1
  %call352 = call i32 @iClip3(i32 %sub345, i32 %238, i32 %shr351)
  %242 = load i32, i32* %incP, align 4
  %sub353 = sub nsw i32 0, %242
  %idxprom354 = sext i32 %sub353 to i64
  %243 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx355 = getelementptr inbounds i16, i16* %243, i64 %idxprom354
  %244 = load i16, i16* %arrayidx355, align 2
  %conv356 = zext i16 %244 to i32
  %add357 = add nsw i32 %conv356, %call352
  %conv358 = trunc i32 %add357 to i16
  store i16 %conv358, i16* %arrayidx355, align 2
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.344, %if.then.333
  %245 = load i32, i32* %aq, align 4
  %tobool360 = icmp ne i32 %245, 0
  br i1 %tobool360, label %if.then.361, label %if.end.375

if.then.361:                                      ; preds = %if.end.359
  %246 = load i32, i32* %C0, align 4
  %sub362 = sub nsw i32 0, %246
  %247 = load i32, i32* %C0, align 4
  %248 = load i32, i32* %R2, align 4
  %249 = load i32, i32* %RL0, align 4
  %add363 = add nsw i32 %249, 1
  %shr364 = ashr i32 %add363, 1
  %add365 = add nsw i32 %248, %shr364
  %250 = load i32, i32* %R1, align 4
  %shl366 = shl i32 %250, 1
  %sub367 = sub nsw i32 %add365, %shl366
  %shr368 = ashr i32 %sub367, 1
  %call369 = call i32 @iClip3(i32 %sub362, i32 %247, i32 %shr368)
  %251 = load i32, i32* %incQ, align 4
  %idxprom370 = sext i32 %251 to i64
  %252 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx371 = getelementptr inbounds i16, i16* %252, i64 %idxprom370
  %253 = load i16, i16* %arrayidx371, align 2
  %conv372 = zext i16 %253 to i32
  %add373 = add nsw i32 %conv372, %call369
  %conv374 = trunc i32 %add373 to i16
  store i16 %conv374, i16* %arrayidx371, align 2
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.361, %if.end.359
  br label %if.end.386

if.else.376:                                      ; preds = %cond.end.323
  %254 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %254, i32 0, i32 108
  %255 = load i32, i32* %max_imgpel_value_uv, align 4
  %256 = load i32, i32* %L0, align 4
  %257 = load i32, i32* %dif, align 4
  %add377 = add nsw i32 %256, %257
  %call378 = call i32 @iClip3(i32 0, i32 %255, i32 %add377)
  %conv379 = trunc i32 %call378 to i16
  %258 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx380 = getelementptr inbounds i16, i16* %258, i64 0
  store i16 %conv379, i16* %arrayidx380, align 2
  %259 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value_uv381 = getelementptr inbounds %struct.img_par, %struct.img_par* %259, i32 0, i32 108
  %260 = load i32, i32* %max_imgpel_value_uv381, align 4
  %261 = load i32, i32* %R0, align 4
  %262 = load i32, i32* %dif, align 4
  %sub382 = sub nsw i32 %261, %262
  %call383 = call i32 @iClip3(i32 0, i32 %260, i32 %sub382)
  %conv384 = trunc i32 %call383 to i16
  %263 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx385 = getelementptr inbounds i16, i16* %263, i64 0
  store i16 %conv384, i16* %arrayidx385, align 2
  br label %if.end.386

if.end.386:                                       ; preds = %if.else.376, %if.end.375
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %if.end.315
  br label %if.end.388

if.end.388:                                       ; preds = %if.end.387, %if.then.164
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %if.then.159
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %cond.end.110
  br label %if.end.391

if.end.391:                                       ; preds = %if.end.390, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.391
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
