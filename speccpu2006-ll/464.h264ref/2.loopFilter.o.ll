; ModuleID = 'loopFilter.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@ALPHA_TABLE = global [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 16
@BETA_TABLE = global [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 16
@CLIP_TAB = global [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 16
@chroma_edge = global [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\FF\FF\01", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\FF\FF\03"], [4 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\FF\01\01", [4 x i8] c"\FF\01\02\02", [4 x i8] c"\FF\FF\03\03"]], align 16
@DeblockMb.filterNon8x8LumaEdgesFlag = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@mixedModeEdgeFlag = common global i8 0, align 1
@ININT_STRENGTH = global [4 x i32] [i32 67372036, i32 50529027, i32 50529027, i32 50529027], align 16
@BLK_NUM = global [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\00\04\08\0C", [4 x i8] c"\01\05\09\0D", [4 x i8] c"\02\06\0A\0E", [4 x i8] c"\03\07\0B\0F"], [4 x [4 x i8]] [[4 x i8] c"\00\01\02\03", [4 x i8] c"\04\05\06\07", [4 x i8] c"\08\09\0A\0B", [4 x i8] c"\0C\0D\0E\0F"]], align 16
@BLK_4_TO_8 = global [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16
@enc_picture = external global %struct.storable_picture*, align 8
@EdgeLoop.pelnum_cr = private unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 16
@fieldModeFilteringFlag = common global i8 0, align 1
@QP_SCALE_CR = external constant [52 x i8], align 16

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
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 110
  %2 = load i32, i32* %PicSizeInMbs, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %4 = load i16**, i16*** %imgY.addr, align 8
  %5 = load i16***, i16**** %imgUV.addr, align 8
  %6 = load i32, i32* %i, align 4
  call void @DeblockMb(%struct.ImageParameters* %3, i16** %4, i16*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
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
  %DeblockCall = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 143
  store i32 1, i32* %DeblockCall, align 4
  %2 = load i32, i32* %MbQAddr.addr, align 4
  call void @get_mb_pos(i32 %2, i32* %mb_x, i32* %mb_y)
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
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 51
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
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 32
  %11 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  %tobool = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 3
  store i32 %lnot.ext, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 1
  store i32 %lnot.ext, i32* %arrayidx6, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 90
  %13 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, i32* %mb_y, align 4
  %cmp8 = icmp eq i32 %14, 16
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.13

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %15 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 22
  %16 = load i32, i32* %mb_field, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.10
  store i32 0, i32* %filterTopMbEdgeFlag, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true.10, %land.lhs.true, %if.end
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 7
  %18 = load i32, i32* %structure, align 4
  %cmp14 = icmp ne i32 %18, 0
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.13
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 90
  %20 = load i32, i32* %MbaffFrameFlag16, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %21 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 22
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
  %LFDisableIdc = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i32 0, i32 41
  %27 = load i32, i32* %LFDisableIdc, align 4
  %cmp23 = icmp eq i32 %27, 1
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %DeblockCall26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 143
  store i32 0, i32* %DeblockCall26, align 4
  br label %return

if.end.27:                                        ; preds = %if.end.22
  %29 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFDisableIdc28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 41
  %30 = load i32, i32* %LFDisableIdc28, align 4
  %cmp29 = icmp eq i32 %30, 2
  br i1 %cmp29, label %if.then.31, label %if.end.41

if.then.31:                                       ; preds = %if.end.27
  %31 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 27
  %32 = load i32, i32* %mbAvailA, align 4
  store i32 %32, i32* %filterLeftMbEdgeFlag, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 90
  %34 = load i32, i32* %MbaffFrameFlag32, align 4
  %tobool33 = icmp ne i32 %34, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.else

land.lhs.true.34:                                 ; preds = %if.then.31
  %35 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field35 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 22
  %36 = load i32, i32* %mb_field35, align 4
  %tobool36 = icmp ne i32 %36, 0
  br i1 %tobool36, label %if.else, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %37 = load i32, i32* %MbQAddr.addr, align 4
  %rem = srem i32 %37, 2
  %tobool38 = icmp ne i32 %rem, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.lhs.true.37
  store i32 1, i32* %filterTopMbEdgeFlag, align 4
  br label %if.end.40

if.else:                                          ; preds = %land.lhs.true.37, %land.lhs.true.34, %if.then.31
  %38 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %38, i32 0, i32 28
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
  call void (...) @CheckAvailabilityOfNeighbors()
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.150, %if.end.41
  %42 = load i32, i32* %dir, align 4
  %cmp42 = icmp slt i32 %42, 2
  br i1 %cmp42, label %for.body, label %for.end.152

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

for.cond.54:                                      ; preds = %for.inc.147, %lor.end.52
  %49 = load i32, i32* %edge, align 4
  %cmp55 = icmp slt i32 %49, 4
  br i1 %cmp55, label %for.body.57, label %for.end.149

for.body.57:                                      ; preds = %for.cond.54
  %50 = load i32, i32* %edge, align 4
  %tobool58 = icmp ne i32 %50, 0
  br i1 %tobool58, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.57
  %51 = load i32, i32* %EdgeCondition, align 4
  %tobool59 = icmp ne i32 %51, 0
  br i1 %tobool59, label %if.then.60, label %if.end.146

if.then.60:                                       ; preds = %lor.lhs.false, %for.body.57
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 159
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
  %64 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %64 to i64
  %arrayidx75 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i64 %idxprom74
  %65 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %65 to i32
  %66 = load i32, i32* %StrengthSum, align 4
  %add = add nsw i32 %66, %conv76
  store i32 %add, i32* %StrengthSum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.73
  %67 = load i32, i32* %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  %68 = load i32, i32* %StrengthSum, align 4
  %tobool77 = icmp ne i32 %68, 0
  br i1 %tobool77, label %if.then.78, label %if.end.101

if.then.78:                                       ; preds = %for.end
  %69 = load i32, i32* %edge, align 4
  %idxprom79 = sext i32 %69 to i64
  %arrayidx80 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 %idxprom79
  %70 = load i32, i32* %arrayidx80, align 4
  %tobool81 = icmp ne i32 %70, 0
  br i1 %tobool81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.then.78
  %71 = load i16**, i16*** %imgY.addr, align 8
  %arraydecay83 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %73 = load i32, i32* %MbQAddr.addr, align 4
  %74 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %74, i32 0, i32 42
  %75 = load i32, i32* %LFAlphaC0Offset, align 4
  %76 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %76, i32 0, i32 43
  %77 = load i32, i32* %LFBetaOffset, align 4
  %78 = load i32, i32* %dir, align 4
  %79 = load i32, i32* %edge, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 13
  %81 = load i32, i32* %width, align 4
  call void @EdgeLoop(i16** %71, i8* %arraydecay83, %struct.ImageParameters* %72, i32 %73, i32 %75, i32 %77, i32 %78, i32 %79, i32 %81, i32 0, i32 0)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.then.78
  %82 = load i16***, i16**** %imgUV.addr, align 8
  %cmp85 = icmp ne i16*** %82, null
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.100

land.lhs.true.87:                                 ; preds = %if.end.84
  %83 = load i32, i32* %edge_cr, align 4
  %cmp88 = icmp sge i32 %83, 0
  br i1 %cmp88, label %if.then.90, label %if.end.100

if.then.90:                                       ; preds = %land.lhs.true.87
  %84 = load i16***, i16**** %imgUV.addr, align 8
  %arrayidx91 = getelementptr inbounds i16**, i16*** %84, i64 0
  %85 = load i16**, i16*** %arrayidx91, align 8
  %arraydecay92 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %87 = load i32, i32* %MbQAddr.addr, align 4
  %88 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset93 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %88, i32 0, i32 42
  %89 = load i32, i32* %LFAlphaC0Offset93, align 4
  %90 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset94 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %90, i32 0, i32 43
  %91 = load i32, i32* %LFBetaOffset94, align 4
  %92 = load i32, i32* %dir, align 4
  %93 = load i32, i32* %edge_cr, align 4
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 14
  %95 = load i32, i32* %width_cr, align 4
  call void @EdgeLoop(i16** %85, i8* %arraydecay92, %struct.ImageParameters* %86, i32 %87, i32 %89, i32 %91, i32 %92, i32 %93, i32 %95, i32 1, i32 0)
  %96 = load i16***, i16**** %imgUV.addr, align 8
  %arrayidx95 = getelementptr inbounds i16**, i16*** %96, i64 1
  %97 = load i16**, i16*** %arrayidx95, align 8
  %arraydecay96 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %99 = load i32, i32* %MbQAddr.addr, align 4
  %100 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset97 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %100, i32 0, i32 42
  %101 = load i32, i32* %LFAlphaC0Offset97, align 4
  %102 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset98 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %102, i32 0, i32 43
  %103 = load i32, i32* %LFBetaOffset98, align 4
  %104 = load i32, i32* %dir, align 4
  %105 = load i32, i32* %edge_cr, align 4
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width_cr99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 14
  %107 = load i32, i32* %width_cr99, align 4
  call void @EdgeLoop(i16** %97, i8* %arraydecay96, %struct.ImageParameters* %98, i32 %99, i32 %101, i32 %103, i32 %104, i32 %105, i32 %107, i32 1, i32 1)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.90, %land.lhs.true.87, %if.end.84
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %for.end
  %108 = load i32, i32* %dir, align 4
  %tobool102 = icmp ne i32 %108, 0
  br i1 %tobool102, label %land.lhs.true.103, label %if.end.145

land.lhs.true.103:                                ; preds = %if.end.101
  %109 = load i32, i32* %edge, align 4
  %tobool104 = icmp ne i32 %109, 0
  br i1 %tobool104, label %if.end.145, label %land.lhs.true.105

land.lhs.true.105:                                ; preds = %land.lhs.true.103
  %110 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field106 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %110, i32 0, i32 22
  %111 = load i32, i32* %mb_field106, align 4
  %tobool107 = icmp ne i32 %111, 0
  br i1 %tobool107, label %if.end.145, label %land.lhs.true.108

land.lhs.true.108:                                ; preds = %land.lhs.true.105
  %112 = load i8, i8* @mixedModeEdgeFlag, align 1
  %conv109 = zext i8 %112 to i32
  %tobool110 = icmp ne i32 %conv109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.145

if.then.111:                                      ; preds = %land.lhs.true.108
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %DeblockCall112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 143
  store i32 2, i32* %DeblockCall112, align 4
  %arraydecay113 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %115 = load i32, i32* %MbQAddr.addr, align 4
  %116 = load i32, i32* %dir, align 4
  %117 = load i32, i32* %mvlimit, align 4
  call void @GetStrength(i8* %arraydecay113, %struct.ImageParameters* %114, i32 %115, i32 %116, i32 4, i32 %117)
  %arraydecay114 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %118 = bitcast i8* %arraydecay114 to i32*
  %119 = load i32, i32* %118, align 4
  %tobool115 = icmp ne i32 %119, 0
  br i1 %tobool115, label %if.then.116, label %if.end.143

if.then.116:                                      ; preds = %if.then.111
  %120 = load i32, i32* %edge, align 4
  %idxprom117 = sext i32 %120 to i64
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %filterNon8x8LumaEdgesFlag, i32 0, i64 %idxprom117
  %121 = load i32, i32* %arrayidx118, align 4
  %tobool119 = icmp ne i32 %121, 0
  br i1 %tobool119, label %if.then.120, label %if.end.125

if.then.120:                                      ; preds = %if.then.116
  %122 = load i16**, i16*** %imgY.addr, align 8
  %arraydecay121 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %124 = load i32, i32* %MbQAddr.addr, align 4
  %125 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset122 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %125, i32 0, i32 42
  %126 = load i32, i32* %LFAlphaC0Offset122, align 4
  %127 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset123 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %127, i32 0, i32 43
  %128 = load i32, i32* %LFBetaOffset123, align 4
  %129 = load i32, i32* %dir, align 4
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 13
  %131 = load i32, i32* %width124, align 4
  call void @EdgeLoop(i16** %122, i8* %arraydecay121, %struct.ImageParameters* %123, i32 %124, i32 %126, i32 %128, i32 %129, i32 4, i32 %131, i32 0, i32 0)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.120, %if.then.116
  %132 = load i16***, i16**** %imgUV.addr, align 8
  %cmp126 = icmp ne i16*** %132, null
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.142

land.lhs.true.128:                                ; preds = %if.end.125
  %133 = load i32, i32* %edge_cr, align 4
  %cmp129 = icmp sge i32 %133, 0
  br i1 %cmp129, label %if.then.131, label %if.end.142

if.then.131:                                      ; preds = %land.lhs.true.128
  %134 = load i16***, i16**** %imgUV.addr, align 8
  %arrayidx132 = getelementptr inbounds i16**, i16*** %134, i64 0
  %135 = load i16**, i16*** %arrayidx132, align 8
  %arraydecay133 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %137 = load i32, i32* %MbQAddr.addr, align 4
  %138 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset134 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %138, i32 0, i32 42
  %139 = load i32, i32* %LFAlphaC0Offset134, align 4
  %140 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset135 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %140, i32 0, i32 43
  %141 = load i32, i32* %LFBetaOffset135, align 4
  %142 = load i32, i32* %dir, align 4
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width_cr136 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 14
  %144 = load i32, i32* %width_cr136, align 4
  call void @EdgeLoop(i16** %135, i8* %arraydecay133, %struct.ImageParameters* %136, i32 %137, i32 %139, i32 %141, i32 %142, i32 4, i32 %144, i32 1, i32 0)
  %145 = load i16***, i16**** %imgUV.addr, align 8
  %arrayidx137 = getelementptr inbounds i16**, i16*** %145, i64 1
  %146 = load i16**, i16*** %arrayidx137, align 8
  %arraydecay138 = getelementptr inbounds [16 x i8], [16 x i8]* %Strength, i32 0, i32 0
  %147 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %148 = load i32, i32* %MbQAddr.addr, align 4
  %149 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFAlphaC0Offset139 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %149, i32 0, i32 42
  %150 = load i32, i32* %LFAlphaC0Offset139, align 4
  %151 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFBetaOffset140 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %151, i32 0, i32 43
  %152 = load i32, i32* %LFBetaOffset140, align 4
  %153 = load i32, i32* %dir, align 4
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %width_cr141 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 14
  %155 = load i32, i32* %width_cr141, align 4
  call void @EdgeLoop(i16** %146, i8* %arraydecay138, %struct.ImageParameters* %147, i32 %148, i32 %150, i32 %152, i32 %153, i32 4, i32 %155, i32 1, i32 1)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.131, %land.lhs.true.128, %if.end.125
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.111
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %DeblockCall144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 143
  store i32 1, i32* %DeblockCall144, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.143, %land.lhs.true.108, %land.lhs.true.105, %land.lhs.true.103, %if.end.101
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %lor.lhs.false
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %157 = load i32, i32* %edge, align 4
  %inc148 = add nsw i32 %157, 1
  store i32 %inc148, i32* %edge, align 4
  br label %for.cond.54

for.end.149:                                      ; preds = %for.cond.54
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.149
  %158 = load i32, i32* %dir, align 4
  %inc151 = add nsw i32 %158, 1
  store i32 %inc151, i32* %dir, align 4
  br label %for.cond

for.end.152:                                      ; preds = %for.cond
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %DeblockCall153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 143
  store i32 0, i32* %DeblockCall153, align 4
  br label %return

return:                                           ; preds = %for.end.152, %if.then.25
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @get_mb_pos(i32, i32*, i32*) #2

declare void @CheckAvailabilityOfNeighbors(...) #2

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
  %list0_refIdxArr = alloca i16**, align 8
  %list1_refIdxArr = alloca i16**, align 8
  %list0_refPicIdArr = alloca i64**, align 8
  %list1_refPicIdArr = alloca i64**, align 8
  %xQ = alloca i32, align 4
  %xP = alloca i32, align 4
  %yQ = alloca i32, align 4
  %yP = alloca i32, align 4
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %MbQ = alloca %struct.macroblock*, align 8
  %MbP = alloca %struct.macroblock*, align 8
  %pixP = alloca %struct.pix_pos, align 4
  %ref_p0 = alloca i64, align 8
  %ref_p1 = alloca i64, align 8
  %ref_q0 = alloca i64, align 8
  %ref_q1 = alloca i64, align 8
  store i8* %Strength, i8** %Strength.addr, align 8
  store %struct.ImageParameters* %img, %struct.ImageParameters** %img.addr, align 8
  store i32 %MbQAddr, i32* %MbQAddr.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  store i32 %mvlimit, i32* %mvlimit.addr, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 35
  %1 = load i16****, i16***** %mv, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %1, i64 0
  %2 = load i16***, i16**** %arrayidx, align 8
  store i16*** %2, i16**** %list0_mv, align 8
  %3 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %3, i32 0, i32 35
  %4 = load i16****, i16***** %mv1, align 8
  %arrayidx2 = getelementptr inbounds i16***, i16**** %4, i64 1
  %5 = load i16***, i16**** %arrayidx2, align 8
  store i16*** %5, i16**** %list1_mv, align 8
  %6 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 32
  %7 = load i16***, i16**** %ref_idx, align 8
  %arrayidx3 = getelementptr inbounds i16**, i16*** %7, i64 0
  %8 = load i16**, i16*** %arrayidx3, align 8
  store i16** %8, i16*** %list0_refIdxArr, align 8
  %9 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 32
  %10 = load i16***, i16**** %ref_idx4, align 8
  %arrayidx5 = getelementptr inbounds i16**, i16*** %10, i64 1
  %11 = load i16**, i16*** %arrayidx5, align 8
  store i16** %11, i16*** %list1_refIdxArr, align 8
  %12 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_id = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 33
  %13 = load i64***, i64**** %ref_pic_id, align 8
  %arrayidx6 = getelementptr inbounds i64**, i64*** %13, i64 0
  %14 = load i64**, i64*** %arrayidx6, align 8
  store i64** %14, i64*** %list0_refPicIdArr, align 8
  %15 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_id7 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 33
  %16 = load i64***, i64**** %ref_pic_id7, align 8
  %arrayidx8 = getelementptr inbounds i64**, i64*** %16, i64 1
  %17 = load i64**, i64*** %arrayidx8, align 8
  store i64** %17, i64*** %list1_refPicIdArr, align 8
  %18 = load i32, i32* %MbQAddr.addr, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 51
  %20 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i64 %idxprom
  store %struct.macroblock* %arrayidx9, %struct.macroblock** %MbQ, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %idx, align 4
  %cmp = icmp slt i32 %21, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %dir.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %23 = load i32, i32* %idx, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %24 = load i32, i32* %edge.addr, align 4
  %shl = shl i32 %24, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %shl, %cond.false ]
  store i32 %cond, i32* %xQ, align 4
  %25 = load i32, i32* %dir.addr, align 4
  %tobool10 = icmp ne i32 %25, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.18

cond.true.11:                                     ; preds = %cond.end
  %26 = load i32, i32* %edge.addr, align 4
  %cmp12 = icmp slt i32 %26, 4
  br i1 %cmp12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %cond.true.11
  %27 = load i32, i32* %edge.addr, align 4
  %shl14 = shl i32 %27, 2
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.true.11
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond17 = phi i32 [ %shl14, %cond.true.13 ], [ 1, %cond.false.15 ]
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.end
  %28 = load i32, i32* %idx, align 4
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.end.16
  %cond20 = phi i32 [ %cond17, %cond.end.16 ], [ %28, %cond.false.18 ]
  store i32 %cond20, i32* %yQ, align 4
  %29 = load i32, i32* %MbQAddr.addr, align 4
  %30 = load i32, i32* %xQ, align 4
  %31 = load i32, i32* %dir.addr, align 4
  %sub = sub nsw i32 1, %31
  %sub21 = sub nsw i32 %30, %sub
  %32 = load i32, i32* %yQ, align 4
  %33 = load i32, i32* %dir.addr, align 4
  %sub22 = sub nsw i32 %32, %33
  call void @getNeighbour(i32 %29, i32 %sub21, i32 %sub22, i32 1, %struct.pix_pos* %pixP)
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 2
  %34 = load i32, i32* %x, align 4
  store i32 %34, i32* %xP, align 4
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 3
  %35 = load i32, i32* %y, align 4
  store i32 %35, i32* %yP, align 4
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 1
  %36 = load i32, i32* %mb_addr, align 4
  %idxprom23 = sext i32 %36 to i64
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 51
  %38 = load %struct.macroblock*, %struct.macroblock** %mb_data24, align 8
  %arrayidx25 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %38, i64 %idxprom23
  store %struct.macroblock* %arrayidx25, %struct.macroblock** %MbP, align 8
  %39 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 22
  %40 = load i32, i32* %mb_field, align 4
  %41 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field26 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %41, i32 0, i32 22
  %42 = load i32, i32* %mb_field26, align 4
  %cmp27 = icmp ne i32 %40, %42
  %conv = zext i1 %cmp27 to i32
  %conv28 = trunc i32 %conv to i8
  store i8 %conv28, i8* @mixedModeEdgeFlag, align 1
  %43 = load i32, i32* %yQ, align 4
  %shr = ashr i32 %43, 2
  %shl29 = shl i32 %shr, 2
  %44 = load i32, i32* %xQ, align 4
  %shr30 = ashr i32 %44, 2
  %add = add nsw i32 %shl29, %shr30
  store i32 %add, i32* %blkQ, align 4
  %45 = load i32, i32* %yP, align 4
  %shr31 = ashr i32 %45, 2
  %shl32 = shl i32 %shr31, 2
  %46 = load i32, i32* %xP, align 4
  %shr33 = ashr i32 %46, 2
  %add34 = add nsw i32 %shl32, %shr33
  store i32 %add34, i32* %blkP, align 4
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 6
  %48 = load i32, i32* %type, align 4
  %cmp35 = icmp eq i32 %48, 3
  br i1 %cmp35, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.19
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %type37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 6
  %50 = load i32, i32* %type37, align 4
  %cmp38 = icmp eq i32 %50, 4
  br i1 %cmp38, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %cond.end.19
  %51 = load i32, i32* %edge.addr, align 4
  %cmp40 = icmp eq i32 %51, 0
  br i1 %cmp40, label %land.rhs, label %land.end.62

land.rhs:                                         ; preds = %if.then
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 90
  %53 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool42 = icmp ne i32 %53, 0
  br i1 %tobool42, label %lor.lhs.false.45, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.rhs
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 7
  %55 = load i32, i32* %structure, align 4
  %cmp43 = icmp eq i32 %55, 0
  br i1 %cmp43, label %lor.end, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true, %land.rhs
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag46 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 90
  %57 = load i32, i32* %MbaffFrameFlag46, align 4
  %tobool47 = icmp ne i32 %57, 0
  br i1 %tobool47, label %land.lhs.true.48, label %lor.rhs

land.lhs.true.48:                                 ; preds = %lor.lhs.false.45
  %58 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field49 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %58, i32 0, i32 22
  %59 = load i32, i32* %mb_field49, align 4
  %tobool50 = icmp ne i32 %59, 0
  br i1 %tobool50, label %lor.rhs, label %land.lhs.true.51

land.lhs.true.51:                                 ; preds = %land.lhs.true.48
  %60 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field52 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 22
  %61 = load i32, i32* %mb_field52, align 4
  %tobool53 = icmp ne i32 %61, 0
  br i1 %tobool53, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true.51, %land.lhs.true.48, %lor.lhs.false.45
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 90
  %63 = load i32, i32* %MbaffFrameFlag54, align 4
  %tobool55 = icmp ne i32 %63, 0
  br i1 %tobool55, label %land.rhs.60, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.rhs
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %structure57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 7
  %65 = load i32, i32* %structure57, align 4
  %cmp58 = icmp ne i32 %65, 0
  br i1 %cmp58, label %land.rhs.60, label %land.end

land.rhs.60:                                      ; preds = %lor.lhs.false.56, %lor.rhs
  %66 = load i32, i32* %dir.addr, align 4
  %tobool61 = icmp ne i32 %66, 0
  %lnot = xor i1 %tobool61, true
  br label %land.end

land.end:                                         ; preds = %land.rhs.60, %lor.lhs.false.56
  %67 = phi i1 [ false, %lor.lhs.false.56 ], [ %lnot, %land.rhs.60 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.51, %land.lhs.true
  %68 = phi i1 [ true, %land.lhs.true.51 ], [ true, %land.lhs.true ], [ %67, %land.end ]
  br label %land.end.62

land.end.62:                                      ; preds = %lor.end, %if.then
  %69 = phi i1 [ false, %if.then ], [ %68, %lor.end ]
  %cond63 = select i1 %69, i32 4, i32 3
  %conv64 = trunc i32 %cond63 to i8
  %70 = load i32, i32* %idx, align 4
  %idxprom65 = sext i32 %70 to i64
  %71 = load i8*, i8** %Strength.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %71, i64 %idxprom65
  store i8 %conv64, i8* %arrayidx66, align 1
  br label %if.end.530

if.else:                                          ; preds = %lor.lhs.false
  %72 = load i32, i32* %edge.addr, align 4
  %cmp67 = icmp eq i32 %72, 0
  br i1 %cmp67, label %land.rhs.69, label %land.end.97

land.rhs.69:                                      ; preds = %if.else
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 90
  %74 = load i32, i32* %MbaffFrameFlag70, align 4
  %tobool71 = icmp ne i32 %74, 0
  br i1 %tobool71, label %lor.lhs.false.76, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %land.rhs.69
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %structure73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 7
  %76 = load i32, i32* %structure73, align 4
  %cmp74 = icmp eq i32 %76, 0
  br i1 %cmp74, label %lor.end.96, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.72, %land.rhs.69
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag77 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 90
  %78 = load i32, i32* %MbaffFrameFlag77, align 4
  %tobool78 = icmp ne i32 %78, 0
  br i1 %tobool78, label %land.lhs.true.79, label %lor.rhs.85

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76
  %79 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field80 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %79, i32 0, i32 22
  %80 = load i32, i32* %mb_field80, align 4
  %tobool81 = icmp ne i32 %80, 0
  br i1 %tobool81, label %lor.rhs.85, label %land.lhs.true.82

land.lhs.true.82:                                 ; preds = %land.lhs.true.79
  %81 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field83 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i32 0, i32 22
  %82 = load i32, i32* %mb_field83, align 4
  %tobool84 = icmp ne i32 %82, 0
  br i1 %tobool84, label %lor.rhs.85, label %lor.end.96

lor.rhs.85:                                       ; preds = %land.lhs.true.82, %land.lhs.true.79, %lor.lhs.false.76
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %MbaffFrameFlag86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 90
  %84 = load i32, i32* %MbaffFrameFlag86, align 4
  %tobool87 = icmp ne i32 %84, 0
  br i1 %tobool87, label %land.rhs.92, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.rhs.85
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %structure89 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 7
  %86 = load i32, i32* %structure89, align 4
  %cmp90 = icmp ne i32 %86, 0
  br i1 %cmp90, label %land.rhs.92, label %land.end.95

land.rhs.92:                                      ; preds = %lor.lhs.false.88, %lor.rhs.85
  %87 = load i32, i32* %dir.addr, align 4
  %tobool93 = icmp ne i32 %87, 0
  %lnot94 = xor i1 %tobool93, true
  br label %land.end.95

land.end.95:                                      ; preds = %land.rhs.92, %lor.lhs.false.88
  %88 = phi i1 [ false, %lor.lhs.false.88 ], [ %lnot94, %land.rhs.92 ]
  br label %lor.end.96

lor.end.96:                                       ; preds = %land.end.95, %land.lhs.true.82, %land.lhs.true.72
  %89 = phi i1 [ true, %land.lhs.true.82 ], [ true, %land.lhs.true.72 ], [ %88, %land.end.95 ]
  br label %land.end.97

land.end.97:                                      ; preds = %lor.end.96, %if.else
  %90 = phi i1 [ false, %if.else ], [ %89, %lor.end.96 ]
  %cond98 = select i1 %90, i32 4, i32 3
  %conv99 = trunc i32 %cond98 to i8
  %91 = load i32, i32* %idx, align 4
  %idxprom100 = sext i32 %91 to i64
  %92 = load i8*, i8** %Strength.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %92, i64 %idxprom100
  store i8 %conv99, i8* %arrayidx101, align 1
  %93 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %93, i32 0, i32 8
  %94 = load i32, i32* %mb_type, align 4
  %cmp102 = icmp eq i32 %94, 9
  br i1 %cmp102, label %if.end.529, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.end.97
  %95 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type105 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %95, i32 0, i32 8
  %96 = load i32, i32* %mb_type105, align 4
  %cmp106 = icmp eq i32 %96, 10
  br i1 %cmp106, label %if.end.529, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %lor.lhs.false.104
  %97 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type109 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %97, i32 0, i32 8
  %98 = load i32, i32* %mb_type109, align 4
  %cmp110 = icmp eq i32 %98, 14
  br i1 %cmp110, label %if.end.529, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.108
  %99 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_type113 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 8
  %100 = load i32, i32* %mb_type113, align 4
  %cmp114 = icmp eq i32 %100, 13
  br i1 %cmp114, label %if.end.529, label %land.lhs.true.116

land.lhs.true.116:                                ; preds = %lor.lhs.false.112
  %101 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type117 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %101, i32 0, i32 8
  %102 = load i32, i32* %mb_type117, align 4
  %cmp118 = icmp eq i32 %102, 9
  br i1 %cmp118, label %if.end.529, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %land.lhs.true.116
  %103 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type121 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %103, i32 0, i32 8
  %104 = load i32, i32* %mb_type121, align 4
  %cmp122 = icmp eq i32 %104, 10
  br i1 %cmp122, label %if.end.529, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %lor.lhs.false.120
  %105 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type125 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %105, i32 0, i32 8
  %106 = load i32, i32* %mb_type125, align 4
  %cmp126 = icmp eq i32 %106, 14
  br i1 %cmp126, label %if.end.529, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %lor.lhs.false.124
  %107 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_type129 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %107, i32 0, i32 8
  %108 = load i32, i32* %mb_type129, align 4
  %cmp130 = icmp eq i32 %108, 13
  br i1 %cmp130, label %if.end.529, label %if.then.132

if.then.132:                                      ; preds = %lor.lhs.false.128
  %109 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %cbp_blk = getelementptr inbounds %struct.macroblock, %struct.macroblock* %109, i32 0, i32 13
  %110 = load i64, i64* %cbp_blk, align 8
  %111 = load i32, i32* %blkQ, align 4
  %shl133 = shl i32 1, %111
  %conv134 = sext i32 %shl133 to i64
  %and = and i64 %110, %conv134
  %cmp135 = icmp ne i64 %and, 0
  br i1 %cmp135, label %if.then.144, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %if.then.132
  %112 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %cbp_blk138 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %112, i32 0, i32 13
  %113 = load i64, i64* %cbp_blk138, align 8
  %114 = load i32, i32* %blkP, align 4
  %shl139 = shl i32 1, %114
  %conv140 = sext i32 %shl139 to i64
  %and141 = and i64 %113, %conv140
  %cmp142 = icmp ne i64 %and141, 0
  br i1 %cmp142, label %if.then.144, label %if.else.147

if.then.144:                                      ; preds = %lor.lhs.false.137, %if.then.132
  %115 = load i32, i32* %idx, align 4
  %idxprom145 = sext i32 %115 to i64
  %116 = load i8*, i8** %Strength.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %116, i64 %idxprom145
  store i8 2, i8* %arrayidx146, align 1
  br label %if.end.528

if.else.147:                                      ; preds = %lor.lhs.false.137
  %117 = load i8, i8* @mixedModeEdgeFlag, align 1
  %tobool148 = icmp ne i8 %117, 0
  br i1 %tobool148, label %if.then.149, label %if.else.152

if.then.149:                                      ; preds = %if.else.147
  %118 = load i32, i32* %idx, align 4
  %idxprom150 = sext i32 %118 to i64
  %119 = load i8*, i8** %Strength.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %119, i64 %idxprom150
  store i8 1, i8* %arrayidx151, align 1
  br label %if.end.527

if.else.152:                                      ; preds = %if.else.147
  %120 = load i32, i32* %MbQAddr.addr, align 4
  call void @get_mb_block_pos(i32 %120, i32* %mb_x, i32* %mb_y)
  %121 = load i32, i32* %mb_y, align 4
  %shl153 = shl i32 %121, 2
  %122 = load i32, i32* %blkQ, align 4
  %shr154 = ashr i32 %122, 2
  %add155 = add nsw i32 %shl153, %shr154
  store i32 %add155, i32* %blk_y, align 4
  %123 = load i32, i32* %mb_x, align 4
  %shl156 = shl i32 %123, 2
  %124 = load i32, i32* %blkQ, align 4
  %and157 = and i32 %124, 3
  %add158 = add nsw i32 %shl156, %and157
  store i32 %add158, i32* %blk_x, align 4
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 5
  %125 = load i32, i32* %pos_y, align 4
  %shr159 = ashr i32 %125, 2
  store i32 %shr159, i32* %blk_y2, align 4
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 4
  %126 = load i32, i32* %pos_x, align 4
  %shr160 = ashr i32 %126, 2
  store i32 %shr160, i32* %blk_x2, align 4
  %127 = load i32, i32* %blk_y, align 4
  %idxprom161 = sext i32 %127 to i64
  %128 = load i32, i32* %blk_x, align 4
  %idxprom162 = sext i32 %128 to i64
  %129 = load i16**, i16*** %list0_refIdxArr, align 8
  %arrayidx163 = getelementptr inbounds i16*, i16** %129, i64 %idxprom162
  %130 = load i16*, i16** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i16, i16* %130, i64 %idxprom161
  %131 = load i16, i16* %arrayidx164, align 2
  %conv165 = sext i16 %131 to i32
  %cmp166 = icmp slt i32 %conv165, 0
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %if.else.152
  br label %cond.end.174

cond.false.169:                                   ; preds = %if.else.152
  %132 = load i32, i32* %blk_y, align 4
  %idxprom170 = sext i32 %132 to i64
  %133 = load i32, i32* %blk_x, align 4
  %idxprom171 = sext i32 %133 to i64
  %134 = load i64**, i64*** %list0_refPicIdArr, align 8
  %arrayidx172 = getelementptr inbounds i64*, i64** %134, i64 %idxprom171
  %135 = load i64*, i64** %arrayidx172, align 8
  %arrayidx173 = getelementptr inbounds i64, i64* %135, i64 %idxprom170
  %136 = load i64, i64* %arrayidx173, align 8
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.169, %cond.true.168
  %cond175 = phi i64 [ -1, %cond.true.168 ], [ %136, %cond.false.169 ]
  store i64 %cond175, i64* %ref_p0, align 8
  %137 = load i32, i32* %blk_y2, align 4
  %idxprom176 = sext i32 %137 to i64
  %138 = load i32, i32* %blk_x2, align 4
  %idxprom177 = sext i32 %138 to i64
  %139 = load i16**, i16*** %list0_refIdxArr, align 8
  %arrayidx178 = getelementptr inbounds i16*, i16** %139, i64 %idxprom177
  %140 = load i16*, i16** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i16, i16* %140, i64 %idxprom176
  %141 = load i16, i16* %arrayidx179, align 2
  %conv180 = sext i16 %141 to i32
  %cmp181 = icmp slt i32 %conv180, 0
  br i1 %cmp181, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %cond.end.174
  br label %cond.end.189

cond.false.184:                                   ; preds = %cond.end.174
  %142 = load i32, i32* %blk_y2, align 4
  %idxprom185 = sext i32 %142 to i64
  %143 = load i32, i32* %blk_x2, align 4
  %idxprom186 = sext i32 %143 to i64
  %144 = load i64**, i64*** %list0_refPicIdArr, align 8
  %arrayidx187 = getelementptr inbounds i64*, i64** %144, i64 %idxprom186
  %145 = load i64*, i64** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i64, i64* %145, i64 %idxprom185
  %146 = load i64, i64* %arrayidx188, align 8
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.184, %cond.true.183
  %cond190 = phi i64 [ -1, %cond.true.183 ], [ %146, %cond.false.184 ]
  store i64 %cond190, i64* %ref_q0, align 8
  %147 = load i32, i32* %blk_y, align 4
  %idxprom191 = sext i32 %147 to i64
  %148 = load i32, i32* %blk_x, align 4
  %idxprom192 = sext i32 %148 to i64
  %149 = load i16**, i16*** %list1_refIdxArr, align 8
  %arrayidx193 = getelementptr inbounds i16*, i16** %149, i64 %idxprom192
  %150 = load i16*, i16** %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds i16, i16* %150, i64 %idxprom191
  %151 = load i16, i16* %arrayidx194, align 2
  %conv195 = sext i16 %151 to i32
  %cmp196 = icmp slt i32 %conv195, 0
  br i1 %cmp196, label %cond.true.198, label %cond.false.199

cond.true.198:                                    ; preds = %cond.end.189
  br label %cond.end.204

cond.false.199:                                   ; preds = %cond.end.189
  %152 = load i32, i32* %blk_y, align 4
  %idxprom200 = sext i32 %152 to i64
  %153 = load i32, i32* %blk_x, align 4
  %idxprom201 = sext i32 %153 to i64
  %154 = load i64**, i64*** %list1_refPicIdArr, align 8
  %arrayidx202 = getelementptr inbounds i64*, i64** %154, i64 %idxprom201
  %155 = load i64*, i64** %arrayidx202, align 8
  %arrayidx203 = getelementptr inbounds i64, i64* %155, i64 %idxprom200
  %156 = load i64, i64* %arrayidx203, align 8
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.199, %cond.true.198
  %cond205 = phi i64 [ -1, %cond.true.198 ], [ %156, %cond.false.199 ]
  store i64 %cond205, i64* %ref_p1, align 8
  %157 = load i32, i32* %blk_y2, align 4
  %idxprom206 = sext i32 %157 to i64
  %158 = load i32, i32* %blk_x2, align 4
  %idxprom207 = sext i32 %158 to i64
  %159 = load i16**, i16*** %list1_refIdxArr, align 8
  %arrayidx208 = getelementptr inbounds i16*, i16** %159, i64 %idxprom207
  %160 = load i16*, i16** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds i16, i16* %160, i64 %idxprom206
  %161 = load i16, i16* %arrayidx209, align 2
  %conv210 = sext i16 %161 to i32
  %cmp211 = icmp slt i32 %conv210, 0
  br i1 %cmp211, label %cond.true.213, label %cond.false.214

cond.true.213:                                    ; preds = %cond.end.204
  br label %cond.end.219

cond.false.214:                                   ; preds = %cond.end.204
  %162 = load i32, i32* %blk_y2, align 4
  %idxprom215 = sext i32 %162 to i64
  %163 = load i32, i32* %blk_x2, align 4
  %idxprom216 = sext i32 %163 to i64
  %164 = load i64**, i64*** %list1_refPicIdArr, align 8
  %arrayidx217 = getelementptr inbounds i64*, i64** %164, i64 %idxprom216
  %165 = load i64*, i64** %arrayidx217, align 8
  %arrayidx218 = getelementptr inbounds i64, i64* %165, i64 %idxprom215
  %166 = load i64, i64* %arrayidx218, align 8
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.214, %cond.true.213
  %cond220 = phi i64 [ -1, %cond.true.213 ], [ %166, %cond.false.214 ]
  store i64 %cond220, i64* %ref_q1, align 8
  %167 = load i64, i64* %ref_p0, align 8
  %168 = load i64, i64* %ref_q0, align 8
  %cmp221 = icmp eq i64 %167, %168
  br i1 %cmp221, label %land.lhs.true.223, label %lor.lhs.false.226

land.lhs.true.223:                                ; preds = %cond.end.219
  %169 = load i64, i64* %ref_p1, align 8
  %170 = load i64, i64* %ref_q1, align 8
  %cmp224 = icmp eq i64 %169, %170
  br i1 %cmp224, label %if.then.232, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %land.lhs.true.223, %cond.end.219
  %171 = load i64, i64* %ref_p0, align 8
  %172 = load i64, i64* %ref_q1, align 8
  %cmp227 = icmp eq i64 %171, %172
  br i1 %cmp227, label %land.lhs.true.229, label %if.else.523

land.lhs.true.229:                                ; preds = %lor.lhs.false.226
  %173 = load i64, i64* %ref_p1, align 8
  %174 = load i64, i64* %ref_q0, align 8
  %cmp230 = icmp eq i64 %173, %174
  br i1 %cmp230, label %if.then.232, label %if.else.523

if.then.232:                                      ; preds = %land.lhs.true.229, %land.lhs.true.223
  %175 = load i32, i32* %idx, align 4
  %idxprom233 = sext i32 %175 to i64
  %176 = load i8*, i8** %Strength.addr, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %176, i64 %idxprom233
  store i8 0, i8* %arrayidx234, align 1
  %177 = load i64, i64* %ref_p0, align 8
  %178 = load i64, i64* %ref_p1, align 8
  %cmp235 = icmp ne i64 %177, %178
  br i1 %cmp235, label %if.then.237, label %if.else.380

if.then.237:                                      ; preds = %if.then.232
  %179 = load i64, i64* %ref_p0, align 8
  %180 = load i64, i64* %ref_q0, align 8
  %cmp238 = icmp eq i64 %179, %180
  br i1 %cmp238, label %if.then.240, label %if.else.309

if.then.240:                                      ; preds = %if.then.237
  %181 = load i32, i32* %blk_y, align 4
  %idxprom241 = sext i32 %181 to i64
  %182 = load i32, i32* %blk_x, align 4
  %idxprom242 = sext i32 %182 to i64
  %183 = load i16***, i16**** %list0_mv, align 8
  %arrayidx243 = getelementptr inbounds i16**, i16*** %183, i64 %idxprom242
  %184 = load i16**, i16*** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds i16*, i16** %184, i64 %idxprom241
  %185 = load i16*, i16** %arrayidx244, align 8
  %arrayidx245 = getelementptr inbounds i16, i16* %185, i64 0
  %186 = load i16, i16* %arrayidx245, align 2
  %conv246 = sext i16 %186 to i32
  %187 = load i32, i32* %blk_y2, align 4
  %idxprom247 = sext i32 %187 to i64
  %188 = load i32, i32* %blk_x2, align 4
  %idxprom248 = sext i32 %188 to i64
  %189 = load i16***, i16**** %list0_mv, align 8
  %arrayidx249 = getelementptr inbounds i16**, i16*** %189, i64 %idxprom248
  %190 = load i16**, i16*** %arrayidx249, align 8
  %arrayidx250 = getelementptr inbounds i16*, i16** %190, i64 %idxprom247
  %191 = load i16*, i16** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i16, i16* %191, i64 0
  %192 = load i16, i16* %arrayidx251, align 2
  %conv252 = sext i16 %192 to i32
  %sub253 = sub nsw i32 %conv246, %conv252
  %call = call i32 @abs(i32 %sub253) #4
  %cmp254 = icmp sge i32 %call, 4
  %conv255 = zext i1 %cmp254 to i32
  %193 = load i32, i32* %blk_y, align 4
  %idxprom256 = sext i32 %193 to i64
  %194 = load i32, i32* %blk_x, align 4
  %idxprom257 = sext i32 %194 to i64
  %195 = load i16***, i16**** %list0_mv, align 8
  %arrayidx258 = getelementptr inbounds i16**, i16*** %195, i64 %idxprom257
  %196 = load i16**, i16*** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i16*, i16** %196, i64 %idxprom256
  %197 = load i16*, i16** %arrayidx259, align 8
  %arrayidx260 = getelementptr inbounds i16, i16* %197, i64 1
  %198 = load i16, i16* %arrayidx260, align 2
  %conv261 = sext i16 %198 to i32
  %199 = load i32, i32* %blk_y2, align 4
  %idxprom262 = sext i32 %199 to i64
  %200 = load i32, i32* %blk_x2, align 4
  %idxprom263 = sext i32 %200 to i64
  %201 = load i16***, i16**** %list0_mv, align 8
  %arrayidx264 = getelementptr inbounds i16**, i16*** %201, i64 %idxprom263
  %202 = load i16**, i16*** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i16*, i16** %202, i64 %idxprom262
  %203 = load i16*, i16** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i16, i16* %203, i64 1
  %204 = load i16, i16* %arrayidx266, align 2
  %conv267 = sext i16 %204 to i32
  %sub268 = sub nsw i32 %conv261, %conv267
  %call269 = call i32 @abs(i32 %sub268) #4
  %205 = load i32, i32* %mvlimit.addr, align 4
  %cmp270 = icmp sge i32 %call269, %205
  %conv271 = zext i1 %cmp270 to i32
  %or = or i32 %conv255, %conv271
  %206 = load i32, i32* %blk_y, align 4
  %idxprom272 = sext i32 %206 to i64
  %207 = load i32, i32* %blk_x, align 4
  %idxprom273 = sext i32 %207 to i64
  %208 = load i16***, i16**** %list1_mv, align 8
  %arrayidx274 = getelementptr inbounds i16**, i16*** %208, i64 %idxprom273
  %209 = load i16**, i16*** %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds i16*, i16** %209, i64 %idxprom272
  %210 = load i16*, i16** %arrayidx275, align 8
  %arrayidx276 = getelementptr inbounds i16, i16* %210, i64 0
  %211 = load i16, i16* %arrayidx276, align 2
  %conv277 = sext i16 %211 to i32
  %212 = load i32, i32* %blk_y2, align 4
  %idxprom278 = sext i32 %212 to i64
  %213 = load i32, i32* %blk_x2, align 4
  %idxprom279 = sext i32 %213 to i64
  %214 = load i16***, i16**** %list1_mv, align 8
  %arrayidx280 = getelementptr inbounds i16**, i16*** %214, i64 %idxprom279
  %215 = load i16**, i16*** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds i16*, i16** %215, i64 %idxprom278
  %216 = load i16*, i16** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i16, i16* %216, i64 0
  %217 = load i16, i16* %arrayidx282, align 2
  %conv283 = sext i16 %217 to i32
  %sub284 = sub nsw i32 %conv277, %conv283
  %call285 = call i32 @abs(i32 %sub284) #4
  %cmp286 = icmp sge i32 %call285, 4
  %conv287 = zext i1 %cmp286 to i32
  %or288 = or i32 %or, %conv287
  %218 = load i32, i32* %blk_y, align 4
  %idxprom289 = sext i32 %218 to i64
  %219 = load i32, i32* %blk_x, align 4
  %idxprom290 = sext i32 %219 to i64
  %220 = load i16***, i16**** %list1_mv, align 8
  %arrayidx291 = getelementptr inbounds i16**, i16*** %220, i64 %idxprom290
  %221 = load i16**, i16*** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i16*, i16** %221, i64 %idxprom289
  %222 = load i16*, i16** %arrayidx292, align 8
  %arrayidx293 = getelementptr inbounds i16, i16* %222, i64 1
  %223 = load i16, i16* %arrayidx293, align 2
  %conv294 = sext i16 %223 to i32
  %224 = load i32, i32* %blk_y2, align 4
  %idxprom295 = sext i32 %224 to i64
  %225 = load i32, i32* %blk_x2, align 4
  %idxprom296 = sext i32 %225 to i64
  %226 = load i16***, i16**** %list1_mv, align 8
  %arrayidx297 = getelementptr inbounds i16**, i16*** %226, i64 %idxprom296
  %227 = load i16**, i16*** %arrayidx297, align 8
  %arrayidx298 = getelementptr inbounds i16*, i16** %227, i64 %idxprom295
  %228 = load i16*, i16** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds i16, i16* %228, i64 1
  %229 = load i16, i16* %arrayidx299, align 2
  %conv300 = sext i16 %229 to i32
  %sub301 = sub nsw i32 %conv294, %conv300
  %call302 = call i32 @abs(i32 %sub301) #4
  %230 = load i32, i32* %mvlimit.addr, align 4
  %cmp303 = icmp sge i32 %call302, %230
  %conv304 = zext i1 %cmp303 to i32
  %or305 = or i32 %or288, %conv304
  %conv306 = trunc i32 %or305 to i8
  %231 = load i32, i32* %idx, align 4
  %idxprom307 = sext i32 %231 to i64
  %232 = load i8*, i8** %Strength.addr, align 8
  %arrayidx308 = getelementptr inbounds i8, i8* %232, i64 %idxprom307
  store i8 %conv306, i8* %arrayidx308, align 1
  br label %if.end

if.else.309:                                      ; preds = %if.then.237
  %233 = load i32, i32* %blk_y, align 4
  %idxprom310 = sext i32 %233 to i64
  %234 = load i32, i32* %blk_x, align 4
  %idxprom311 = sext i32 %234 to i64
  %235 = load i16***, i16**** %list0_mv, align 8
  %arrayidx312 = getelementptr inbounds i16**, i16*** %235, i64 %idxprom311
  %236 = load i16**, i16*** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i16*, i16** %236, i64 %idxprom310
  %237 = load i16*, i16** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i16, i16* %237, i64 0
  %238 = load i16, i16* %arrayidx314, align 2
  %conv315 = sext i16 %238 to i32
  %239 = load i32, i32* %blk_y2, align 4
  %idxprom316 = sext i32 %239 to i64
  %240 = load i32, i32* %blk_x2, align 4
  %idxprom317 = sext i32 %240 to i64
  %241 = load i16***, i16**** %list1_mv, align 8
  %arrayidx318 = getelementptr inbounds i16**, i16*** %241, i64 %idxprom317
  %242 = load i16**, i16*** %arrayidx318, align 8
  %arrayidx319 = getelementptr inbounds i16*, i16** %242, i64 %idxprom316
  %243 = load i16*, i16** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds i16, i16* %243, i64 0
  %244 = load i16, i16* %arrayidx320, align 2
  %conv321 = sext i16 %244 to i32
  %sub322 = sub nsw i32 %conv315, %conv321
  %call323 = call i32 @abs(i32 %sub322) #4
  %cmp324 = icmp sge i32 %call323, 4
  %conv325 = zext i1 %cmp324 to i32
  %245 = load i32, i32* %blk_y, align 4
  %idxprom326 = sext i32 %245 to i64
  %246 = load i32, i32* %blk_x, align 4
  %idxprom327 = sext i32 %246 to i64
  %247 = load i16***, i16**** %list0_mv, align 8
  %arrayidx328 = getelementptr inbounds i16**, i16*** %247, i64 %idxprom327
  %248 = load i16**, i16*** %arrayidx328, align 8
  %arrayidx329 = getelementptr inbounds i16*, i16** %248, i64 %idxprom326
  %249 = load i16*, i16** %arrayidx329, align 8
  %arrayidx330 = getelementptr inbounds i16, i16* %249, i64 1
  %250 = load i16, i16* %arrayidx330, align 2
  %conv331 = sext i16 %250 to i32
  %251 = load i32, i32* %blk_y2, align 4
  %idxprom332 = sext i32 %251 to i64
  %252 = load i32, i32* %blk_x2, align 4
  %idxprom333 = sext i32 %252 to i64
  %253 = load i16***, i16**** %list1_mv, align 8
  %arrayidx334 = getelementptr inbounds i16**, i16*** %253, i64 %idxprom333
  %254 = load i16**, i16*** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds i16*, i16** %254, i64 %idxprom332
  %255 = load i16*, i16** %arrayidx335, align 8
  %arrayidx336 = getelementptr inbounds i16, i16* %255, i64 1
  %256 = load i16, i16* %arrayidx336, align 2
  %conv337 = sext i16 %256 to i32
  %sub338 = sub nsw i32 %conv331, %conv337
  %call339 = call i32 @abs(i32 %sub338) #4
  %257 = load i32, i32* %mvlimit.addr, align 4
  %cmp340 = icmp sge i32 %call339, %257
  %conv341 = zext i1 %cmp340 to i32
  %or342 = or i32 %conv325, %conv341
  %258 = load i32, i32* %blk_y, align 4
  %idxprom343 = sext i32 %258 to i64
  %259 = load i32, i32* %blk_x, align 4
  %idxprom344 = sext i32 %259 to i64
  %260 = load i16***, i16**** %list1_mv, align 8
  %arrayidx345 = getelementptr inbounds i16**, i16*** %260, i64 %idxprom344
  %261 = load i16**, i16*** %arrayidx345, align 8
  %arrayidx346 = getelementptr inbounds i16*, i16** %261, i64 %idxprom343
  %262 = load i16*, i16** %arrayidx346, align 8
  %arrayidx347 = getelementptr inbounds i16, i16* %262, i64 0
  %263 = load i16, i16* %arrayidx347, align 2
  %conv348 = sext i16 %263 to i32
  %264 = load i32, i32* %blk_y2, align 4
  %idxprom349 = sext i32 %264 to i64
  %265 = load i32, i32* %blk_x2, align 4
  %idxprom350 = sext i32 %265 to i64
  %266 = load i16***, i16**** %list0_mv, align 8
  %arrayidx351 = getelementptr inbounds i16**, i16*** %266, i64 %idxprom350
  %267 = load i16**, i16*** %arrayidx351, align 8
  %arrayidx352 = getelementptr inbounds i16*, i16** %267, i64 %idxprom349
  %268 = load i16*, i16** %arrayidx352, align 8
  %arrayidx353 = getelementptr inbounds i16, i16* %268, i64 0
  %269 = load i16, i16* %arrayidx353, align 2
  %conv354 = sext i16 %269 to i32
  %sub355 = sub nsw i32 %conv348, %conv354
  %call356 = call i32 @abs(i32 %sub355) #4
  %cmp357 = icmp sge i32 %call356, 4
  %conv358 = zext i1 %cmp357 to i32
  %or359 = or i32 %or342, %conv358
  %270 = load i32, i32* %blk_y, align 4
  %idxprom360 = sext i32 %270 to i64
  %271 = load i32, i32* %blk_x, align 4
  %idxprom361 = sext i32 %271 to i64
  %272 = load i16***, i16**** %list1_mv, align 8
  %arrayidx362 = getelementptr inbounds i16**, i16*** %272, i64 %idxprom361
  %273 = load i16**, i16*** %arrayidx362, align 8
  %arrayidx363 = getelementptr inbounds i16*, i16** %273, i64 %idxprom360
  %274 = load i16*, i16** %arrayidx363, align 8
  %arrayidx364 = getelementptr inbounds i16, i16* %274, i64 1
  %275 = load i16, i16* %arrayidx364, align 2
  %conv365 = sext i16 %275 to i32
  %276 = load i32, i32* %blk_y2, align 4
  %idxprom366 = sext i32 %276 to i64
  %277 = load i32, i32* %blk_x2, align 4
  %idxprom367 = sext i32 %277 to i64
  %278 = load i16***, i16**** %list0_mv, align 8
  %arrayidx368 = getelementptr inbounds i16**, i16*** %278, i64 %idxprom367
  %279 = load i16**, i16*** %arrayidx368, align 8
  %arrayidx369 = getelementptr inbounds i16*, i16** %279, i64 %idxprom366
  %280 = load i16*, i16** %arrayidx369, align 8
  %arrayidx370 = getelementptr inbounds i16, i16* %280, i64 1
  %281 = load i16, i16* %arrayidx370, align 2
  %conv371 = sext i16 %281 to i32
  %sub372 = sub nsw i32 %conv365, %conv371
  %call373 = call i32 @abs(i32 %sub372) #4
  %282 = load i32, i32* %mvlimit.addr, align 4
  %cmp374 = icmp sge i32 %call373, %282
  %conv375 = zext i1 %cmp374 to i32
  %or376 = or i32 %or359, %conv375
  %conv377 = trunc i32 %or376 to i8
  %283 = load i32, i32* %idx, align 4
  %idxprom378 = sext i32 %283 to i64
  %284 = load i8*, i8** %Strength.addr, align 8
  %arrayidx379 = getelementptr inbounds i8, i8* %284, i64 %idxprom378
  store i8 %conv377, i8* %arrayidx379, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.309, %if.then.240
  br label %if.end.522

if.else.380:                                      ; preds = %if.then.232
  %285 = load i32, i32* %blk_y, align 4
  %idxprom381 = sext i32 %285 to i64
  %286 = load i32, i32* %blk_x, align 4
  %idxprom382 = sext i32 %286 to i64
  %287 = load i16***, i16**** %list0_mv, align 8
  %arrayidx383 = getelementptr inbounds i16**, i16*** %287, i64 %idxprom382
  %288 = load i16**, i16*** %arrayidx383, align 8
  %arrayidx384 = getelementptr inbounds i16*, i16** %288, i64 %idxprom381
  %289 = load i16*, i16** %arrayidx384, align 8
  %arrayidx385 = getelementptr inbounds i16, i16* %289, i64 0
  %290 = load i16, i16* %arrayidx385, align 2
  %conv386 = sext i16 %290 to i32
  %291 = load i32, i32* %blk_y2, align 4
  %idxprom387 = sext i32 %291 to i64
  %292 = load i32, i32* %blk_x2, align 4
  %idxprom388 = sext i32 %292 to i64
  %293 = load i16***, i16**** %list0_mv, align 8
  %arrayidx389 = getelementptr inbounds i16**, i16*** %293, i64 %idxprom388
  %294 = load i16**, i16*** %arrayidx389, align 8
  %arrayidx390 = getelementptr inbounds i16*, i16** %294, i64 %idxprom387
  %295 = load i16*, i16** %arrayidx390, align 8
  %arrayidx391 = getelementptr inbounds i16, i16* %295, i64 0
  %296 = load i16, i16* %arrayidx391, align 2
  %conv392 = sext i16 %296 to i32
  %sub393 = sub nsw i32 %conv386, %conv392
  %call394 = call i32 @abs(i32 %sub393) #4
  %cmp395 = icmp sge i32 %call394, 4
  %conv396 = zext i1 %cmp395 to i32
  %297 = load i32, i32* %blk_y, align 4
  %idxprom397 = sext i32 %297 to i64
  %298 = load i32, i32* %blk_x, align 4
  %idxprom398 = sext i32 %298 to i64
  %299 = load i16***, i16**** %list0_mv, align 8
  %arrayidx399 = getelementptr inbounds i16**, i16*** %299, i64 %idxprom398
  %300 = load i16**, i16*** %arrayidx399, align 8
  %arrayidx400 = getelementptr inbounds i16*, i16** %300, i64 %idxprom397
  %301 = load i16*, i16** %arrayidx400, align 8
  %arrayidx401 = getelementptr inbounds i16, i16* %301, i64 1
  %302 = load i16, i16* %arrayidx401, align 2
  %conv402 = sext i16 %302 to i32
  %303 = load i32, i32* %blk_y2, align 4
  %idxprom403 = sext i32 %303 to i64
  %304 = load i32, i32* %blk_x2, align 4
  %idxprom404 = sext i32 %304 to i64
  %305 = load i16***, i16**** %list0_mv, align 8
  %arrayidx405 = getelementptr inbounds i16**, i16*** %305, i64 %idxprom404
  %306 = load i16**, i16*** %arrayidx405, align 8
  %arrayidx406 = getelementptr inbounds i16*, i16** %306, i64 %idxprom403
  %307 = load i16*, i16** %arrayidx406, align 8
  %arrayidx407 = getelementptr inbounds i16, i16* %307, i64 1
  %308 = load i16, i16* %arrayidx407, align 2
  %conv408 = sext i16 %308 to i32
  %sub409 = sub nsw i32 %conv402, %conv408
  %call410 = call i32 @abs(i32 %sub409) #4
  %309 = load i32, i32* %mvlimit.addr, align 4
  %cmp411 = icmp sge i32 %call410, %309
  %conv412 = zext i1 %cmp411 to i32
  %or413 = or i32 %conv396, %conv412
  %310 = load i32, i32* %blk_y, align 4
  %idxprom414 = sext i32 %310 to i64
  %311 = load i32, i32* %blk_x, align 4
  %idxprom415 = sext i32 %311 to i64
  %312 = load i16***, i16**** %list1_mv, align 8
  %arrayidx416 = getelementptr inbounds i16**, i16*** %312, i64 %idxprom415
  %313 = load i16**, i16*** %arrayidx416, align 8
  %arrayidx417 = getelementptr inbounds i16*, i16** %313, i64 %idxprom414
  %314 = load i16*, i16** %arrayidx417, align 8
  %arrayidx418 = getelementptr inbounds i16, i16* %314, i64 0
  %315 = load i16, i16* %arrayidx418, align 2
  %conv419 = sext i16 %315 to i32
  %316 = load i32, i32* %blk_y2, align 4
  %idxprom420 = sext i32 %316 to i64
  %317 = load i32, i32* %blk_x2, align 4
  %idxprom421 = sext i32 %317 to i64
  %318 = load i16***, i16**** %list1_mv, align 8
  %arrayidx422 = getelementptr inbounds i16**, i16*** %318, i64 %idxprom421
  %319 = load i16**, i16*** %arrayidx422, align 8
  %arrayidx423 = getelementptr inbounds i16*, i16** %319, i64 %idxprom420
  %320 = load i16*, i16** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds i16, i16* %320, i64 0
  %321 = load i16, i16* %arrayidx424, align 2
  %conv425 = sext i16 %321 to i32
  %sub426 = sub nsw i32 %conv419, %conv425
  %call427 = call i32 @abs(i32 %sub426) #4
  %cmp428 = icmp sge i32 %call427, 4
  %conv429 = zext i1 %cmp428 to i32
  %or430 = or i32 %or413, %conv429
  %322 = load i32, i32* %blk_y, align 4
  %idxprom431 = sext i32 %322 to i64
  %323 = load i32, i32* %blk_x, align 4
  %idxprom432 = sext i32 %323 to i64
  %324 = load i16***, i16**** %list1_mv, align 8
  %arrayidx433 = getelementptr inbounds i16**, i16*** %324, i64 %idxprom432
  %325 = load i16**, i16*** %arrayidx433, align 8
  %arrayidx434 = getelementptr inbounds i16*, i16** %325, i64 %idxprom431
  %326 = load i16*, i16** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds i16, i16* %326, i64 1
  %327 = load i16, i16* %arrayidx435, align 2
  %conv436 = sext i16 %327 to i32
  %328 = load i32, i32* %blk_y2, align 4
  %idxprom437 = sext i32 %328 to i64
  %329 = load i32, i32* %blk_x2, align 4
  %idxprom438 = sext i32 %329 to i64
  %330 = load i16***, i16**** %list1_mv, align 8
  %arrayidx439 = getelementptr inbounds i16**, i16*** %330, i64 %idxprom438
  %331 = load i16**, i16*** %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds i16*, i16** %331, i64 %idxprom437
  %332 = load i16*, i16** %arrayidx440, align 8
  %arrayidx441 = getelementptr inbounds i16, i16* %332, i64 1
  %333 = load i16, i16* %arrayidx441, align 2
  %conv442 = sext i16 %333 to i32
  %sub443 = sub nsw i32 %conv436, %conv442
  %call444 = call i32 @abs(i32 %sub443) #4
  %334 = load i32, i32* %mvlimit.addr, align 4
  %cmp445 = icmp sge i32 %call444, %334
  %conv446 = zext i1 %cmp445 to i32
  %or447 = or i32 %or430, %conv446
  %tobool448 = icmp ne i32 %or447, 0
  br i1 %tobool448, label %land.rhs.449, label %land.end.518

land.rhs.449:                                     ; preds = %if.else.380
  %335 = load i32, i32* %blk_y, align 4
  %idxprom450 = sext i32 %335 to i64
  %336 = load i32, i32* %blk_x, align 4
  %idxprom451 = sext i32 %336 to i64
  %337 = load i16***, i16**** %list0_mv, align 8
  %arrayidx452 = getelementptr inbounds i16**, i16*** %337, i64 %idxprom451
  %338 = load i16**, i16*** %arrayidx452, align 8
  %arrayidx453 = getelementptr inbounds i16*, i16** %338, i64 %idxprom450
  %339 = load i16*, i16** %arrayidx453, align 8
  %arrayidx454 = getelementptr inbounds i16, i16* %339, i64 0
  %340 = load i16, i16* %arrayidx454, align 2
  %conv455 = sext i16 %340 to i32
  %341 = load i32, i32* %blk_y2, align 4
  %idxprom456 = sext i32 %341 to i64
  %342 = load i32, i32* %blk_x2, align 4
  %idxprom457 = sext i32 %342 to i64
  %343 = load i16***, i16**** %list1_mv, align 8
  %arrayidx458 = getelementptr inbounds i16**, i16*** %343, i64 %idxprom457
  %344 = load i16**, i16*** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds i16*, i16** %344, i64 %idxprom456
  %345 = load i16*, i16** %arrayidx459, align 8
  %arrayidx460 = getelementptr inbounds i16, i16* %345, i64 0
  %346 = load i16, i16* %arrayidx460, align 2
  %conv461 = sext i16 %346 to i32
  %sub462 = sub nsw i32 %conv455, %conv461
  %call463 = call i32 @abs(i32 %sub462) #4
  %cmp464 = icmp sge i32 %call463, 4
  %conv465 = zext i1 %cmp464 to i32
  %347 = load i32, i32* %blk_y, align 4
  %idxprom466 = sext i32 %347 to i64
  %348 = load i32, i32* %blk_x, align 4
  %idxprom467 = sext i32 %348 to i64
  %349 = load i16***, i16**** %list0_mv, align 8
  %arrayidx468 = getelementptr inbounds i16**, i16*** %349, i64 %idxprom467
  %350 = load i16**, i16*** %arrayidx468, align 8
  %arrayidx469 = getelementptr inbounds i16*, i16** %350, i64 %idxprom466
  %351 = load i16*, i16** %arrayidx469, align 8
  %arrayidx470 = getelementptr inbounds i16, i16* %351, i64 1
  %352 = load i16, i16* %arrayidx470, align 2
  %conv471 = sext i16 %352 to i32
  %353 = load i32, i32* %blk_y2, align 4
  %idxprom472 = sext i32 %353 to i64
  %354 = load i32, i32* %blk_x2, align 4
  %idxprom473 = sext i32 %354 to i64
  %355 = load i16***, i16**** %list1_mv, align 8
  %arrayidx474 = getelementptr inbounds i16**, i16*** %355, i64 %idxprom473
  %356 = load i16**, i16*** %arrayidx474, align 8
  %arrayidx475 = getelementptr inbounds i16*, i16** %356, i64 %idxprom472
  %357 = load i16*, i16** %arrayidx475, align 8
  %arrayidx476 = getelementptr inbounds i16, i16* %357, i64 1
  %358 = load i16, i16* %arrayidx476, align 2
  %conv477 = sext i16 %358 to i32
  %sub478 = sub nsw i32 %conv471, %conv477
  %call479 = call i32 @abs(i32 %sub478) #4
  %359 = load i32, i32* %mvlimit.addr, align 4
  %cmp480 = icmp sge i32 %call479, %359
  %conv481 = zext i1 %cmp480 to i32
  %or482 = or i32 %conv465, %conv481
  %360 = load i32, i32* %blk_y, align 4
  %idxprom483 = sext i32 %360 to i64
  %361 = load i32, i32* %blk_x, align 4
  %idxprom484 = sext i32 %361 to i64
  %362 = load i16***, i16**** %list1_mv, align 8
  %arrayidx485 = getelementptr inbounds i16**, i16*** %362, i64 %idxprom484
  %363 = load i16**, i16*** %arrayidx485, align 8
  %arrayidx486 = getelementptr inbounds i16*, i16** %363, i64 %idxprom483
  %364 = load i16*, i16** %arrayidx486, align 8
  %arrayidx487 = getelementptr inbounds i16, i16* %364, i64 0
  %365 = load i16, i16* %arrayidx487, align 2
  %conv488 = sext i16 %365 to i32
  %366 = load i32, i32* %blk_y2, align 4
  %idxprom489 = sext i32 %366 to i64
  %367 = load i32, i32* %blk_x2, align 4
  %idxprom490 = sext i32 %367 to i64
  %368 = load i16***, i16**** %list0_mv, align 8
  %arrayidx491 = getelementptr inbounds i16**, i16*** %368, i64 %idxprom490
  %369 = load i16**, i16*** %arrayidx491, align 8
  %arrayidx492 = getelementptr inbounds i16*, i16** %369, i64 %idxprom489
  %370 = load i16*, i16** %arrayidx492, align 8
  %arrayidx493 = getelementptr inbounds i16, i16* %370, i64 0
  %371 = load i16, i16* %arrayidx493, align 2
  %conv494 = sext i16 %371 to i32
  %sub495 = sub nsw i32 %conv488, %conv494
  %call496 = call i32 @abs(i32 %sub495) #4
  %cmp497 = icmp sge i32 %call496, 4
  %conv498 = zext i1 %cmp497 to i32
  %or499 = or i32 %or482, %conv498
  %372 = load i32, i32* %blk_y, align 4
  %idxprom500 = sext i32 %372 to i64
  %373 = load i32, i32* %blk_x, align 4
  %idxprom501 = sext i32 %373 to i64
  %374 = load i16***, i16**** %list1_mv, align 8
  %arrayidx502 = getelementptr inbounds i16**, i16*** %374, i64 %idxprom501
  %375 = load i16**, i16*** %arrayidx502, align 8
  %arrayidx503 = getelementptr inbounds i16*, i16** %375, i64 %idxprom500
  %376 = load i16*, i16** %arrayidx503, align 8
  %arrayidx504 = getelementptr inbounds i16, i16* %376, i64 1
  %377 = load i16, i16* %arrayidx504, align 2
  %conv505 = sext i16 %377 to i32
  %378 = load i32, i32* %blk_y2, align 4
  %idxprom506 = sext i32 %378 to i64
  %379 = load i32, i32* %blk_x2, align 4
  %idxprom507 = sext i32 %379 to i64
  %380 = load i16***, i16**** %list0_mv, align 8
  %arrayidx508 = getelementptr inbounds i16**, i16*** %380, i64 %idxprom507
  %381 = load i16**, i16*** %arrayidx508, align 8
  %arrayidx509 = getelementptr inbounds i16*, i16** %381, i64 %idxprom506
  %382 = load i16*, i16** %arrayidx509, align 8
  %arrayidx510 = getelementptr inbounds i16, i16* %382, i64 1
  %383 = load i16, i16* %arrayidx510, align 2
  %conv511 = sext i16 %383 to i32
  %sub512 = sub nsw i32 %conv505, %conv511
  %call513 = call i32 @abs(i32 %sub512) #4
  %384 = load i32, i32* %mvlimit.addr, align 4
  %cmp514 = icmp sge i32 %call513, %384
  %conv515 = zext i1 %cmp514 to i32
  %or516 = or i32 %or499, %conv515
  %tobool517 = icmp ne i32 %or516, 0
  br label %land.end.518

land.end.518:                                     ; preds = %land.rhs.449, %if.else.380
  %385 = phi i1 [ false, %if.else.380 ], [ %tobool517, %land.rhs.449 ]
  %land.ext = zext i1 %385 to i32
  %conv519 = trunc i32 %land.ext to i8
  %386 = load i32, i32* %idx, align 4
  %idxprom520 = sext i32 %386 to i64
  %387 = load i8*, i8** %Strength.addr, align 8
  %arrayidx521 = getelementptr inbounds i8, i8* %387, i64 %idxprom520
  store i8 %conv519, i8* %arrayidx521, align 1
  br label %if.end.522

if.end.522:                                       ; preds = %land.end.518, %if.end
  br label %if.end.526

if.else.523:                                      ; preds = %land.lhs.true.229, %lor.lhs.false.226
  %388 = load i32, i32* %idx, align 4
  %idxprom524 = sext i32 %388 to i64
  %389 = load i8*, i8** %Strength.addr, align 8
  %arrayidx525 = getelementptr inbounds i8, i8* %389, i64 %idxprom524
  store i8 1, i8* %arrayidx525, align 1
  br label %if.end.526

if.end.526:                                       ; preds = %if.else.523, %if.end.522
  br label %if.end.527

if.end.527:                                       ; preds = %if.end.526, %if.then.149
  br label %if.end.528

if.end.528:                                       ; preds = %if.end.527, %if.then.144
  br label %if.end.529

if.end.529:                                       ; preds = %if.end.528, %lor.lhs.false.128, %lor.lhs.false.124, %lor.lhs.false.120, %land.lhs.true.116, %lor.lhs.false.112, %lor.lhs.false.108, %lor.lhs.false.104, %land.end.97
  br label %if.end.530

if.end.530:                                       ; preds = %if.end.529, %land.end.62
  br label %for.inc

for.inc:                                          ; preds = %if.end.530
  %390 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %390, 1
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
  %pelnum_cr = alloca [2 x [4 x i32]], align 16
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
  %0 = bitcast [2 x [4 x i32]]* %pelnum_cr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([2 x [4 x i32]]* @EdgeLoop.pelnum_cr to i8*), i64 32, i32 16, i1 false)
  %1 = load i32, i32* %yuv.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 149
  %3 = load i32, i32* %bitdepth_luma, align 4
  %sub = sub nsw i32 %3, 8
  %shl = shl i32 1, %sub
  store i32 %shl, i32* %bitdepth_scale, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 150
  %5 = load i32, i32* %bitdepth_chroma, align 4
  %sub1 = sub nsw i32 %5, 8
  %shl2 = shl i32 1, %sub1
  store i32 %shl2, i32* %bitdepth_scale, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %yuv.addr, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 159
  %8 = load i32, i32* %yuv_format, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %dir.addr, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %pelnum_cr, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx5, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 16, %cond.false ]
  store i32 %cond, i32* %PelNum, align 4
  store i32 0, i32* %pel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i32, i32* %pel, align 4
  %12 = load i32, i32* %PelNum, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %dir.addr, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %for.body
  %14 = load i32, i32* %pel, align 4
  br label %cond.end.10

cond.false.8:                                     ; preds = %for.body
  %15 = load i32, i32* %edge.addr, align 4
  %shl9 = shl i32 %15, 2
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i32 [ %14, %cond.true.7 ], [ %shl9, %cond.false.8 ]
  store i32 %cond11, i32* %xQ, align 4
  %16 = load i32, i32* %dir.addr, align 4
  %tobool12 = icmp ne i32 %16, 0
  br i1 %tobool12, label %cond.true.13, label %cond.false.20

cond.true.13:                                     ; preds = %cond.end.10
  %17 = load i32, i32* %edge.addr, align 4
  %cmp14 = icmp slt i32 %17, 4
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.true.13
  %18 = load i32, i32* %edge.addr, align 4
  %shl16 = shl i32 %18, 2
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.true.13
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi i32 [ %shl16, %cond.true.15 ], [ 1, %cond.false.17 ]
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.10
  %19 = load i32, i32* %pel, align 4
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.end.18
  %cond22 = phi i32 [ %cond19, %cond.end.18 ], [ %19, %cond.false.20 ]
  store i32 %cond22, i32* %yQ, align 4
  %20 = load i32, i32* %MbQAddr.addr, align 4
  %21 = load i32, i32* %xQ, align 4
  %22 = load i32, i32* %yQ, align 4
  %23 = load i32, i32* %yuv.addr, align 4
  %sub23 = sub nsw i32 1, %23
  call void @getNeighbour(i32 %20, i32 %21, i32 %22, i32 %sub23, %struct.pix_pos* %pixQ)
  %24 = load i32, i32* %MbQAddr.addr, align 4
  %25 = load i32, i32* %xQ, align 4
  %26 = load i32, i32* %dir.addr, align 4
  %sub24 = sub nsw i32 1, %26
  %sub25 = sub nsw i32 %25, %sub24
  %27 = load i32, i32* %yQ, align 4
  %28 = load i32, i32* %dir.addr, align 4
  %sub26 = sub nsw i32 %27, %28
  %29 = load i32, i32* %yuv.addr, align 4
  %sub27 = sub nsw i32 1, %29
  call void @getNeighbour(i32 %24, i32 %sub25, i32 %sub26, i32 %sub27, %struct.pix_pos* %pixP)
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 2
  %30 = load i32, i32* %x, align 4
  store i32 %30, i32* %xP, align 4
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 3
  %31 = load i32, i32* %y, align 4
  store i32 %31, i32* %yP, align 4
  %32 = load i32, i32* %MbQAddr.addr, align 4
  %idxprom28 = sext i32 %32 to i64
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 51
  %34 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx29 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i64 %idxprom28
  store %struct.macroblock* %arrayidx29, %struct.macroblock** %MbQ, align 8
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 1
  %35 = load i32, i32* %mb_addr, align 4
  %idxprom30 = sext i32 %35 to i64
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %mb_data31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 51
  %37 = load %struct.macroblock*, %struct.macroblock** %mb_data31, align 8
  %arrayidx32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i64 %idxprom30
  store %struct.macroblock* %arrayidx32, %struct.macroblock** %MbP, align 8
  %38 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %38, i32 0, i32 22
  %39 = load i32, i32* %mb_field, align 4
  %tobool33 = icmp ne i32 %39, 0
  br i1 %tobool33, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.21
  %40 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %40, i32 0, i32 22
  %41 = load i32, i32* %mb_field34, align 4
  %tobool35 = icmp ne i32 %41, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.21
  %42 = phi i1 [ true, %cond.end.21 ], [ %tobool35, %lor.rhs ]
  %lor.ext = zext i1 %42 to i32
  %conv = trunc i32 %lor.ext to i8
  store i8 %conv, i8* @fieldModeFilteringFlag, align 1
  %43 = load i32, i32* %yuv.addr, align 4
  %tobool36 = icmp ne i32 %43, 0
  br i1 %tobool36, label %land.lhs.true, label %cond.false.51

land.lhs.true:                                    ; preds = %lor.end
  %44 = load i32, i32* %PelNum, align 4
  %cmp37 = icmp eq i32 %44, 8
  br i1 %cmp37, label %cond.true.39, label %cond.false.51

cond.true.39:                                     ; preds = %land.lhs.true
  %45 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %45, i32 0, i32 22
  %46 = load i32, i32* %mb_field40, align 4
  %tobool41 = icmp ne i32 %46, 0
  br i1 %tobool41, label %land.lhs.true.42, label %cond.false.47

land.lhs.true.42:                                 ; preds = %cond.true.39
  %47 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field43 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 22
  %48 = load i32, i32* %mb_field43, align 4
  %tobool44 = icmp ne i32 %48, 0
  br i1 %tobool44, label %cond.false.47, label %cond.true.45

cond.true.45:                                     ; preds = %land.lhs.true.42
  %49 = load i32, i32* %pel, align 4
  %shl46 = shl i32 %49, 1
  br label %cond.end.49

cond.false.47:                                    ; preds = %land.lhs.true.42, %cond.true.39
  %50 = load i32, i32* %pel, align 4
  %shr = ashr i32 %50, 1
  %shl48 = shl i32 %shr, 2
  %51 = load i32, i32* %pel, align 4
  %rem = srem i32 %51, 2
  %add = add nsw i32 %shl48, %rem
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.45
  %cond50 = phi i32 [ %shl46, %cond.true.45 ], [ %add, %cond.false.47 ]
  br label %cond.end.52

cond.false.51:                                    ; preds = %land.lhs.true, %lor.end
  %52 = load i32, i32* %pel, align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.end.49
  %cond53 = phi i32 [ %cond50, %cond.end.49 ], [ %52, %cond.false.51 ]
  store i32 %cond53, i32* %StrengthIdx, align 4
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 0
  %53 = load i32, i32* %available, align 4
  %tobool54 = icmp ne i32 %53, 0
  br i1 %tobool54, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.52
  %54 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %LFDisableIdc = getelementptr inbounds %struct.macroblock, %struct.macroblock* %54, i32 0, i32 41
  %55 = load i32, i32* %LFDisableIdc, align 4
  %cmp55 = icmp eq i32 %55, 0
  br i1 %cmp55, label %if.then.57, label %if.end.600

if.then.57:                                       ; preds = %lor.lhs.false, %cond.end.52
  %56 = load i32, i32* %dir.addr, align 4
  %tobool58 = icmp ne i32 %56, 0
  br i1 %tobool58, label %cond.true.59, label %cond.false.69

cond.true.59:                                     ; preds = %if.then.57
  %57 = load i8, i8* @fieldModeFilteringFlag, align 1
  %conv60 = zext i8 %57 to i32
  %tobool61 = icmp ne i32 %conv60, 0
  br i1 %tobool61, label %land.lhs.true.62, label %cond.false.66

land.lhs.true.62:                                 ; preds = %cond.true.59
  %58 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %mb_field63 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %58, i32 0, i32 22
  %59 = load i32, i32* %mb_field63, align 4
  %tobool64 = icmp ne i32 %59, 0
  br i1 %tobool64, label %cond.false.66, label %cond.true.65

cond.true.65:                                     ; preds = %land.lhs.true.62
  %60 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %60
  br label %cond.end.67

cond.false.66:                                    ; preds = %land.lhs.true.62, %cond.true.59
  %61 = load i32, i32* %width.addr, align 4
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i32 [ %mul, %cond.true.65 ], [ %61, %cond.false.66 ]
  br label %cond.end.70

cond.false.69:                                    ; preds = %if.then.57
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.end.67
  %cond71 = phi i32 [ %cond68, %cond.end.67 ], [ 1, %cond.false.69 ]
  store i32 %cond71, i32* %incQ, align 4
  %62 = load i32, i32* %dir.addr, align 4
  %tobool72 = icmp ne i32 %62, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.84

cond.true.73:                                     ; preds = %cond.end.70
  %63 = load i8, i8* @fieldModeFilteringFlag, align 1
  %conv74 = zext i8 %63 to i32
  %tobool75 = icmp ne i32 %conv74, 0
  br i1 %tobool75, label %land.lhs.true.76, label %cond.false.81

land.lhs.true.76:                                 ; preds = %cond.true.73
  %64 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %mb_field77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %64, i32 0, i32 22
  %65 = load i32, i32* %mb_field77, align 4
  %tobool78 = icmp ne i32 %65, 0
  br i1 %tobool78, label %cond.false.81, label %cond.true.79

cond.true.79:                                     ; preds = %land.lhs.true.76
  %66 = load i32, i32* %width.addr, align 4
  %mul80 = mul nsw i32 2, %66
  br label %cond.end.82

cond.false.81:                                    ; preds = %land.lhs.true.76, %cond.true.73
  %67 = load i32, i32* %width.addr, align 4
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.79
  %cond83 = phi i32 [ %mul80, %cond.true.79 ], [ %67, %cond.false.81 ]
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end.70
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.end.82
  %cond86 = phi i32 [ %cond83, %cond.end.82 ], [ 1, %cond.false.84 ]
  store i32 %cond86, i32* %incP, align 4
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixQ, i32 0, i32 4
  %68 = load i32, i32* %pos_x, align 4
  %idxprom87 = sext i32 %68 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixQ, i32 0, i32 5
  %69 = load i32, i32* %pos_y, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load i16**, i16*** %Img.addr, align 8
  %arrayidx89 = getelementptr inbounds i16*, i16** %70, i64 %idxprom88
  %71 = load i16*, i16** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i16, i16* %71, i64 %idxprom87
  store i16* %arrayidx90, i16** %SrcPtrQ, align 8
  %pos_x91 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 4
  %72 = load i32, i32* %pos_x91, align 4
  %idxprom92 = sext i32 %72 to i64
  %pos_y93 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pixP, i32 0, i32 5
  %73 = load i32, i32* %pos_y93, align 4
  %idxprom94 = sext i32 %73 to i64
  %74 = load i16**, i16*** %Img.addr, align 8
  %arrayidx95 = getelementptr inbounds i16*, i16** %74, i64 %idxprom94
  %75 = load i16*, i16** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %75, i64 %idxprom92
  store i16* %arrayidx96, i16** %SrcPtrP, align 8
  %76 = load i32, i32* %yuv.addr, align 4
  %tobool97 = icmp ne i32 %76, 0
  br i1 %tobool97, label %cond.true.98, label %cond.false.160

cond.true.98:                                     ; preds = %cond.end.85
  %77 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %77, i32 0, i32 3
  %78 = load i32, i32* %qp, align 4
  %79 = load i32, i32* %uv.addr, align 4
  %idxprom99 = sext i32 %79 to i64
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %chroma_qp_offset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 163
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset, i32 0, i64 %idxprom99
  %81 = load i32, i32* %arrayidx100, align 4
  %add101 = add nsw i32 %78, %81
  %cmp102 = icmp slt i32 %add101, 0
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.true.98
  br label %cond.end.122

cond.false.105:                                   ; preds = %cond.true.98
  %82 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %qp106 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 3
  %83 = load i32, i32* %qp106, align 4
  %84 = load i32, i32* %uv.addr, align 4
  %idxprom107 = sext i32 %84 to i64
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %chroma_qp_offset108 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 163
  %arrayidx109 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset108, i32 0, i64 %idxprom107
  %86 = load i32, i32* %arrayidx109, align 4
  %add110 = add nsw i32 %83, %86
  %cmp111 = icmp sgt i32 %add110, 51
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.false.105
  br label %cond.end.120

cond.false.114:                                   ; preds = %cond.false.105
  %87 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %qp115 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %87, i32 0, i32 3
  %88 = load i32, i32* %qp115, align 4
  %89 = load i32, i32* %uv.addr, align 4
  %idxprom116 = sext i32 %89 to i64
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %chroma_qp_offset117 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 163
  %arrayidx118 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset117, i32 0, i64 %idxprom116
  %91 = load i32, i32* %arrayidx118, align 4
  %add119 = add nsw i32 %88, %91
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.114, %cond.true.113
  %cond121 = phi i32 [ 51, %cond.true.113 ], [ %add119, %cond.false.114 ]
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.end.120, %cond.true.104
  %cond123 = phi i32 [ 0, %cond.true.104 ], [ %cond121, %cond.end.120 ]
  %idxprom124 = sext i32 %cond123 to i64
  %arrayidx125 = getelementptr inbounds [52 x i8], [52 x i8]* @QP_SCALE_CR, i32 0, i64 %idxprom124
  %92 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %92 to i32
  %93 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %qp127 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %93, i32 0, i32 3
  %94 = load i32, i32* %qp127, align 4
  %95 = load i32, i32* %uv.addr, align 4
  %idxprom128 = sext i32 %95 to i64
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %chroma_qp_offset129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 163
  %arrayidx130 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset129, i32 0, i64 %idxprom128
  %97 = load i32, i32* %arrayidx130, align 4
  %add131 = add nsw i32 %94, %97
  %cmp132 = icmp slt i32 %add131, 0
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.end.122
  br label %cond.end.152

cond.false.135:                                   ; preds = %cond.end.122
  %98 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %qp136 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %98, i32 0, i32 3
  %99 = load i32, i32* %qp136, align 4
  %100 = load i32, i32* %uv.addr, align 4
  %idxprom137 = sext i32 %100 to i64
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %chroma_qp_offset138 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 163
  %arrayidx139 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset138, i32 0, i64 %idxprom137
  %102 = load i32, i32* %arrayidx139, align 4
  %add140 = add nsw i32 %99, %102
  %cmp141 = icmp sgt i32 %add140, 51
  br i1 %cmp141, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %cond.false.135
  br label %cond.end.150

cond.false.144:                                   ; preds = %cond.false.135
  %103 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %qp145 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %103, i32 0, i32 3
  %104 = load i32, i32* %qp145, align 4
  %105 = load i32, i32* %uv.addr, align 4
  %idxprom146 = sext i32 %105 to i64
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %chroma_qp_offset147 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 163
  %arrayidx148 = getelementptr inbounds [2 x i32], [2 x i32]* %chroma_qp_offset147, i32 0, i64 %idxprom146
  %107 = load i32, i32* %arrayidx148, align 4
  %add149 = add nsw i32 %104, %107
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.144, %cond.true.143
  %cond151 = phi i32 [ 51, %cond.true.143 ], [ %add149, %cond.false.144 ]
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.end.150, %cond.true.134
  %cond153 = phi i32 [ 0, %cond.true.134 ], [ %cond151, %cond.end.150 ]
  %idxprom154 = sext i32 %cond153 to i64
  %arrayidx155 = getelementptr inbounds [52 x i8], [52 x i8]* @QP_SCALE_CR, i32 0, i64 %idxprom154
  %108 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %108 to i32
  %add157 = add nsw i32 %conv126, %conv156
  %add158 = add nsw i32 %add157, 1
  %shr159 = ashr i32 %add158, 1
  br label %cond.end.166

cond.false.160:                                   ; preds = %cond.end.85
  %109 = load %struct.macroblock*, %struct.macroblock** %MbP, align 8
  %qp161 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %109, i32 0, i32 3
  %110 = load i32, i32* %qp161, align 4
  %111 = load %struct.macroblock*, %struct.macroblock** %MbQ, align 8
  %qp162 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %111, i32 0, i32 3
  %112 = load i32, i32* %qp162, align 4
  %add163 = add nsw i32 %110, %112
  %add164 = add nsw i32 %add163, 1
  %shr165 = ashr i32 %add164, 1
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.160, %cond.end.152
  %cond167 = phi i32 [ %shr159, %cond.end.152 ], [ %shr165, %cond.false.160 ]
  store i32 %cond167, i32* %QP, align 4
  %113 = load i32, i32* %QP, align 4
  %114 = load i32, i32* %AlphaC0Offset.addr, align 4
  %add168 = add nsw i32 %113, %114
  %cmp169 = icmp slt i32 %add168, 0
  br i1 %cmp169, label %cond.true.171, label %cond.false.172

cond.true.171:                                    ; preds = %cond.end.166
  br label %cond.end.181

cond.false.172:                                   ; preds = %cond.end.166
  %115 = load i32, i32* %QP, align 4
  %116 = load i32, i32* %AlphaC0Offset.addr, align 4
  %add173 = add nsw i32 %115, %116
  %cmp174 = icmp sgt i32 %add173, 51
  br i1 %cmp174, label %cond.true.176, label %cond.false.177

cond.true.176:                                    ; preds = %cond.false.172
  br label %cond.end.179

cond.false.177:                                   ; preds = %cond.false.172
  %117 = load i32, i32* %QP, align 4
  %118 = load i32, i32* %AlphaC0Offset.addr, align 4
  %add178 = add nsw i32 %117, %118
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.177, %cond.true.176
  %cond180 = phi i32 [ 51, %cond.true.176 ], [ %add178, %cond.false.177 ]
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.end.179, %cond.true.171
  %cond182 = phi i32 [ 0, %cond.true.171 ], [ %cond180, %cond.end.179 ]
  store i32 %cond182, i32* %indexA, align 4
  %119 = load i32, i32* %QP, align 4
  %120 = load i32, i32* %BetaOffset.addr, align 4
  %add183 = add nsw i32 %119, %120
  %cmp184 = icmp slt i32 %add183, 0
  br i1 %cmp184, label %cond.true.186, label %cond.false.187

cond.true.186:                                    ; preds = %cond.end.181
  br label %cond.end.196

cond.false.187:                                   ; preds = %cond.end.181
  %121 = load i32, i32* %QP, align 4
  %122 = load i32, i32* %BetaOffset.addr, align 4
  %add188 = add nsw i32 %121, %122
  %cmp189 = icmp sgt i32 %add188, 51
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %cond.false.187
  br label %cond.end.194

cond.false.192:                                   ; preds = %cond.false.187
  %123 = load i32, i32* %QP, align 4
  %124 = load i32, i32* %BetaOffset.addr, align 4
  %add193 = add nsw i32 %123, %124
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.192, %cond.true.191
  %cond195 = phi i32 [ 51, %cond.true.191 ], [ %add193, %cond.false.192 ]
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.end.194, %cond.true.186
  %cond197 = phi i32 [ 0, %cond.true.186 ], [ %cond195, %cond.end.194 ]
  store i32 %cond197, i32* %indexB, align 4
  %125 = load i32, i32* %indexA, align 4
  %idxprom198 = sext i32 %125 to i64
  %arrayidx199 = getelementptr inbounds [52 x i8], [52 x i8]* @ALPHA_TABLE, i32 0, i64 %idxprom198
  %126 = load i8, i8* %arrayidx199, align 1
  %conv200 = zext i8 %126 to i32
  %127 = load i32, i32* %bitdepth_scale, align 4
  %mul201 = mul nsw i32 %conv200, %127
  store i32 %mul201, i32* %Alpha, align 4
  %128 = load i32, i32* %indexB, align 4
  %idxprom202 = sext i32 %128 to i64
  %arrayidx203 = getelementptr inbounds [52 x i8], [52 x i8]* @BETA_TABLE, i32 0, i64 %idxprom202
  %129 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %129 to i32
  %130 = load i32, i32* %bitdepth_scale, align 4
  %mul205 = mul nsw i32 %conv204, %130
  store i32 %mul205, i32* %Beta, align 4
  %131 = load i32, i32* %indexA, align 4
  %idxprom206 = sext i32 %131 to i64
  %arrayidx207 = getelementptr inbounds [52 x [5 x i8]], [52 x [5 x i8]]* @CLIP_TAB, i32 0, i64 %idxprom206
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx207, i32 0, i32 0
  store i8* %arraydecay, i8** %ClipTab, align 8
  %132 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx208 = getelementptr inbounds i16, i16* %132, i64 0
  %133 = load i16, i16* %arrayidx208, align 2
  %conv209 = zext i16 %133 to i32
  store i32 %conv209, i32* %L0, align 4
  %134 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx210 = getelementptr inbounds i16, i16* %134, i64 0
  %135 = load i16, i16* %arrayidx210, align 2
  %conv211 = zext i16 %135 to i32
  store i32 %conv211, i32* %R0, align 4
  %136 = load i32, i32* %incP, align 4
  %sub212 = sub nsw i32 0, %136
  %idxprom213 = sext i32 %sub212 to i64
  %137 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx214 = getelementptr inbounds i16, i16* %137, i64 %idxprom213
  %138 = load i16, i16* %arrayidx214, align 2
  %conv215 = zext i16 %138 to i32
  store i32 %conv215, i32* %L1, align 4
  %139 = load i32, i32* %incQ, align 4
  %idxprom216 = sext i32 %139 to i64
  %140 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx217 = getelementptr inbounds i16, i16* %140, i64 %idxprom216
  %141 = load i16, i16* %arrayidx217, align 2
  %conv218 = zext i16 %141 to i32
  store i32 %conv218, i32* %R1, align 4
  %142 = load i32, i32* %incP, align 4
  %sub219 = sub nsw i32 0, %142
  %mul220 = mul nsw i32 %sub219, 2
  %idxprom221 = sext i32 %mul220 to i64
  %143 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx222 = getelementptr inbounds i16, i16* %143, i64 %idxprom221
  %144 = load i16, i16* %arrayidx222, align 2
  %conv223 = zext i16 %144 to i32
  store i32 %conv223, i32* %L2, align 4
  %145 = load i32, i32* %incQ, align 4
  %mul224 = mul nsw i32 %145, 2
  %idxprom225 = sext i32 %mul224 to i64
  %146 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx226 = getelementptr inbounds i16, i16* %146, i64 %idxprom225
  %147 = load i16, i16* %arrayidx226, align 2
  %conv227 = zext i16 %147 to i32
  store i32 %conv227, i32* %R2, align 4
  %148 = load i32, i32* %incP, align 4
  %sub228 = sub nsw i32 0, %148
  %mul229 = mul nsw i32 %sub228, 3
  %idxprom230 = sext i32 %mul229 to i64
  %149 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx231 = getelementptr inbounds i16, i16* %149, i64 %idxprom230
  %150 = load i16, i16* %arrayidx231, align 2
  %conv232 = zext i16 %150 to i32
  store i32 %conv232, i32* %L3, align 4
  %151 = load i32, i32* %incQ, align 4
  %mul233 = mul nsw i32 %151, 3
  %idxprom234 = sext i32 %mul233 to i64
  %152 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx235 = getelementptr inbounds i16, i16* %152, i64 %idxprom234
  %153 = load i16, i16* %arrayidx235, align 2
  %conv236 = zext i16 %153 to i32
  store i32 %conv236, i32* %R3, align 4
  %154 = load i32, i32* %StrengthIdx, align 4
  %idxprom237 = sext i32 %154 to i64
  %155 = load i8*, i8** %Strength.addr, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %155, i64 %idxprom237
  %156 = load i8, i8* %arrayidx238, align 1
  %conv239 = zext i8 %156 to i32
  store i32 %conv239, i32* %Strng, align 4
  %tobool240 = icmp ne i32 %conv239, 0
  br i1 %tobool240, label %if.then.241, label %if.end.599

if.then.241:                                      ; preds = %cond.end.196
  %157 = load i32, i32* %R0, align 4
  %158 = load i32, i32* %L0, align 4
  %sub242 = sub nsw i32 %157, %158
  store i32 %sub242, i32* %Delta, align 4
  %call = call i32 @abs(i32 %sub242) #4
  store i32 %call, i32* %AbsDelta, align 4
  %159 = load i32, i32* %AbsDelta, align 4
  %160 = load i32, i32* %Alpha, align 4
  %cmp243 = icmp slt i32 %159, %160
  br i1 %cmp243, label %if.then.245, label %if.end.598

if.then.245:                                      ; preds = %if.then.241
  %161 = load i32, i32* %Strng, align 4
  %idxprom246 = sext i32 %161 to i64
  %162 = load i8*, i8** %ClipTab, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %162, i64 %idxprom246
  %163 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %163 to i32
  %164 = load i32, i32* %bitdepth_scale, align 4
  %mul249 = mul nsw i32 %conv248, %164
  store i32 %mul249, i32* %C0, align 4
  %165 = load i32, i32* %R0, align 4
  %166 = load i32, i32* %R1, align 4
  %sub250 = sub nsw i32 %165, %166
  %call251 = call i32 @abs(i32 %sub250) #4
  %167 = load i32, i32* %Beta, align 4
  %sub252 = sub nsw i32 %call251, %167
  %168 = load i32, i32* %L0, align 4
  %169 = load i32, i32* %L1, align 4
  %sub253 = sub nsw i32 %168, %169
  %call254 = call i32 @abs(i32 %sub253) #4
  %170 = load i32, i32* %Beta, align 4
  %sub255 = sub nsw i32 %call254, %170
  %and = and i32 %sub252, %sub255
  %cmp256 = icmp slt i32 %and, 0
  br i1 %cmp256, label %if.then.258, label %if.end.597

if.then.258:                                      ; preds = %if.then.245
  %171 = load i32, i32* %yuv.addr, align 4
  %tobool259 = icmp ne i32 %171, 0
  br i1 %tobool259, label %if.end.271, label %if.then.260

if.then.260:                                      ; preds = %if.then.258
  %172 = load i32, i32* %R0, align 4
  %173 = load i32, i32* %R2, align 4
  %sub261 = sub nsw i32 %172, %173
  %call262 = call i32 @abs(i32 %sub261) #4
  %174 = load i32, i32* %Beta, align 4
  %sub263 = sub nsw i32 %call262, %174
  %cmp264 = icmp slt i32 %sub263, 0
  %conv265 = zext i1 %cmp264 to i32
  store i32 %conv265, i32* %aq, align 4
  %175 = load i32, i32* %L0, align 4
  %176 = load i32, i32* %L2, align 4
  %sub266 = sub nsw i32 %175, %176
  %call267 = call i32 @abs(i32 %sub266) #4
  %177 = load i32, i32* %Beta, align 4
  %sub268 = sub nsw i32 %call267, %177
  %cmp269 = icmp slt i32 %sub268, 0
  %conv270 = zext i1 %cmp269 to i32
  store i32 %conv270, i32* %ap, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.260, %if.then.258
  %178 = load i32, i32* %L0, align 4
  %179 = load i32, i32* %R0, align 4
  %add272 = add nsw i32 %178, %179
  store i32 %add272, i32* %RL0, align 4
  %180 = load i32, i32* %Strng, align 4
  %cmp273 = icmp eq i32 %180, 4
  br i1 %cmp273, label %if.then.275, label %if.else.396

if.then.275:                                      ; preds = %if.end.271
  %181 = load i32, i32* %yuv.addr, align 4
  %tobool276 = icmp ne i32 %181, 0
  br i1 %tobool276, label %if.then.277, label %if.else.292

if.then.277:                                      ; preds = %if.then.275
  %182 = load i32, i32* %R1, align 4
  %shl278 = shl i32 %182, 1
  %183 = load i32, i32* %R0, align 4
  %add279 = add nsw i32 %shl278, %183
  %184 = load i32, i32* %L1, align 4
  %add280 = add nsw i32 %add279, %184
  %add281 = add nsw i32 %add280, 2
  %shr282 = ashr i32 %add281, 2
  %conv283 = trunc i32 %shr282 to i16
  %185 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx284 = getelementptr inbounds i16, i16* %185, i64 0
  store i16 %conv283, i16* %arrayidx284, align 2
  %186 = load i32, i32* %L1, align 4
  %shl285 = shl i32 %186, 1
  %187 = load i32, i32* %L0, align 4
  %add286 = add nsw i32 %shl285, %187
  %188 = load i32, i32* %R1, align 4
  %add287 = add nsw i32 %add286, %188
  %add288 = add nsw i32 %add287, 2
  %shr289 = ashr i32 %add288, 2
  %conv290 = trunc i32 %shr289 to i16
  %189 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx291 = getelementptr inbounds i16, i16* %189, i64 0
  store i16 %conv290, i16* %arrayidx291, align 2
  br label %if.end.395

if.else.292:                                      ; preds = %if.then.275
  %190 = load i32, i32* %AbsDelta, align 4
  %191 = load i32, i32* %Alpha, align 4
  %shr293 = ashr i32 %191, 2
  %add294 = add nsw i32 %shr293, 2
  %cmp295 = icmp slt i32 %190, %add294
  %conv296 = zext i1 %cmp295 to i32
  store i32 %conv296, i32* %small_gap, align 4
  %192 = load i32, i32* %small_gap, align 4
  %193 = load i32, i32* %aq, align 4
  %and297 = and i32 %193, %192
  store i32 %and297, i32* %aq, align 4
  %194 = load i32, i32* %small_gap, align 4
  %195 = load i32, i32* %ap, align 4
  %and298 = and i32 %195, %194
  store i32 %and298, i32* %ap, align 4
  %196 = load i32, i32* %aq, align 4
  %tobool299 = icmp ne i32 %196, 0
  br i1 %tobool299, label %cond.true.300, label %cond.false.307

cond.true.300:                                    ; preds = %if.else.292
  %197 = load i32, i32* %L1, align 4
  %198 = load i32, i32* %R1, align 4
  %199 = load i32, i32* %RL0, align 4
  %add301 = add nsw i32 %198, %199
  %shl302 = shl i32 %add301, 1
  %add303 = add nsw i32 %197, %shl302
  %200 = load i32, i32* %R2, align 4
  %add304 = add nsw i32 %add303, %200
  %add305 = add nsw i32 %add304, 4
  %shr306 = ashr i32 %add305, 3
  br label %cond.end.313

cond.false.307:                                   ; preds = %if.else.292
  %201 = load i32, i32* %R1, align 4
  %shl308 = shl i32 %201, 1
  %202 = load i32, i32* %R0, align 4
  %add309 = add nsw i32 %shl308, %202
  %203 = load i32, i32* %L1, align 4
  %add310 = add nsw i32 %add309, %203
  %add311 = add nsw i32 %add310, 2
  %shr312 = ashr i32 %add311, 2
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.false.307, %cond.true.300
  %cond314 = phi i32 [ %shr306, %cond.true.300 ], [ %shr312, %cond.false.307 ]
  %conv315 = trunc i32 %cond314 to i16
  %204 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx316 = getelementptr inbounds i16, i16* %204, i64 0
  store i16 %conv315, i16* %arrayidx316, align 2
  %205 = load i32, i32* %ap, align 4
  %tobool317 = icmp ne i32 %205, 0
  br i1 %tobool317, label %cond.true.318, label %cond.false.325

cond.true.318:                                    ; preds = %cond.end.313
  %206 = load i32, i32* %R1, align 4
  %207 = load i32, i32* %L1, align 4
  %208 = load i32, i32* %RL0, align 4
  %add319 = add nsw i32 %207, %208
  %shl320 = shl i32 %add319, 1
  %add321 = add nsw i32 %206, %shl320
  %209 = load i32, i32* %L2, align 4
  %add322 = add nsw i32 %add321, %209
  %add323 = add nsw i32 %add322, 4
  %shr324 = ashr i32 %add323, 3
  br label %cond.end.331

cond.false.325:                                   ; preds = %cond.end.313
  %210 = load i32, i32* %L1, align 4
  %shl326 = shl i32 %210, 1
  %211 = load i32, i32* %L0, align 4
  %add327 = add nsw i32 %shl326, %211
  %212 = load i32, i32* %R1, align 4
  %add328 = add nsw i32 %add327, %212
  %add329 = add nsw i32 %add328, 2
  %shr330 = ashr i32 %add329, 2
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.325, %cond.true.318
  %cond332 = phi i32 [ %shr324, %cond.true.318 ], [ %shr330, %cond.false.325 ]
  %conv333 = trunc i32 %cond332 to i16
  %213 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx334 = getelementptr inbounds i16, i16* %213, i64 0
  store i16 %conv333, i16* %arrayidx334, align 2
  %214 = load i32, i32* %aq, align 4
  %tobool335 = icmp ne i32 %214, 0
  br i1 %tobool335, label %cond.true.336, label %cond.false.342

cond.true.336:                                    ; preds = %cond.end.331
  %215 = load i32, i32* %R2, align 4
  %216 = load i32, i32* %R0, align 4
  %add337 = add nsw i32 %215, %216
  %217 = load i32, i32* %R1, align 4
  %add338 = add nsw i32 %add337, %217
  %218 = load i32, i32* %L0, align 4
  %add339 = add nsw i32 %add338, %218
  %add340 = add nsw i32 %add339, 2
  %shr341 = ashr i32 %add340, 2
  br label %cond.end.343

cond.false.342:                                   ; preds = %cond.end.331
  %219 = load i32, i32* %R1, align 4
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.false.342, %cond.true.336
  %cond344 = phi i32 [ %shr341, %cond.true.336 ], [ %219, %cond.false.342 ]
  %conv345 = trunc i32 %cond344 to i16
  %220 = load i32, i32* %incQ, align 4
  %idxprom346 = sext i32 %220 to i64
  %221 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx347 = getelementptr inbounds i16, i16* %221, i64 %idxprom346
  store i16 %conv345, i16* %arrayidx347, align 2
  %222 = load i32, i32* %ap, align 4
  %tobool348 = icmp ne i32 %222, 0
  br i1 %tobool348, label %cond.true.349, label %cond.false.355

cond.true.349:                                    ; preds = %cond.end.343
  %223 = load i32, i32* %L2, align 4
  %224 = load i32, i32* %L1, align 4
  %add350 = add nsw i32 %223, %224
  %225 = load i32, i32* %L0, align 4
  %add351 = add nsw i32 %add350, %225
  %226 = load i32, i32* %R0, align 4
  %add352 = add nsw i32 %add351, %226
  %add353 = add nsw i32 %add352, 2
  %shr354 = ashr i32 %add353, 2
  br label %cond.end.356

cond.false.355:                                   ; preds = %cond.end.343
  %227 = load i32, i32* %L1, align 4
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.355, %cond.true.349
  %cond357 = phi i32 [ %shr354, %cond.true.349 ], [ %227, %cond.false.355 ]
  %conv358 = trunc i32 %cond357 to i16
  %228 = load i32, i32* %incP, align 4
  %sub359 = sub nsw i32 0, %228
  %idxprom360 = sext i32 %sub359 to i64
  %229 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx361 = getelementptr inbounds i16, i16* %229, i64 %idxprom360
  store i16 %conv358, i16* %arrayidx361, align 2
  %230 = load i32, i32* %aq, align 4
  %tobool362 = icmp ne i32 %230, 0
  br i1 %tobool362, label %cond.true.363, label %cond.false.371

cond.true.363:                                    ; preds = %cond.end.356
  %231 = load i32, i32* %R3, align 4
  %232 = load i32, i32* %R2, align 4
  %add364 = add nsw i32 %231, %232
  %shl365 = shl i32 %add364, 1
  %233 = load i32, i32* %R2, align 4
  %add366 = add nsw i32 %shl365, %233
  %234 = load i32, i32* %R1, align 4
  %add367 = add nsw i32 %add366, %234
  %235 = load i32, i32* %RL0, align 4
  %add368 = add nsw i32 %add367, %235
  %add369 = add nsw i32 %add368, 4
  %shr370 = ashr i32 %add369, 3
  br label %cond.end.372

cond.false.371:                                   ; preds = %cond.end.356
  %236 = load i32, i32* %R2, align 4
  br label %cond.end.372

cond.end.372:                                     ; preds = %cond.false.371, %cond.true.363
  %cond373 = phi i32 [ %shr370, %cond.true.363 ], [ %236, %cond.false.371 ]
  %conv374 = trunc i32 %cond373 to i16
  %237 = load i32, i32* %incQ, align 4
  %mul375 = mul nsw i32 %237, 2
  %idxprom376 = sext i32 %mul375 to i64
  %238 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx377 = getelementptr inbounds i16, i16* %238, i64 %idxprom376
  store i16 %conv374, i16* %arrayidx377, align 2
  %239 = load i32, i32* %ap, align 4
  %tobool378 = icmp ne i32 %239, 0
  br i1 %tobool378, label %cond.true.379, label %cond.false.387

cond.true.379:                                    ; preds = %cond.end.372
  %240 = load i32, i32* %L3, align 4
  %241 = load i32, i32* %L2, align 4
  %add380 = add nsw i32 %240, %241
  %shl381 = shl i32 %add380, 1
  %242 = load i32, i32* %L2, align 4
  %add382 = add nsw i32 %shl381, %242
  %243 = load i32, i32* %L1, align 4
  %add383 = add nsw i32 %add382, %243
  %244 = load i32, i32* %RL0, align 4
  %add384 = add nsw i32 %add383, %244
  %add385 = add nsw i32 %add384, 4
  %shr386 = ashr i32 %add385, 3
  br label %cond.end.388

cond.false.387:                                   ; preds = %cond.end.372
  %245 = load i32, i32* %L2, align 4
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.false.387, %cond.true.379
  %cond389 = phi i32 [ %shr386, %cond.true.379 ], [ %245, %cond.false.387 ]
  %conv390 = trunc i32 %cond389 to i16
  %246 = load i32, i32* %incP, align 4
  %sub391 = sub nsw i32 0, %246
  %mul392 = mul nsw i32 %sub391, 2
  %idxprom393 = sext i32 %mul392 to i64
  %247 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx394 = getelementptr inbounds i16, i16* %247, i64 %idxprom393
  store i16 %conv390, i16* %arrayidx394, align 2
  br label %if.end.395

if.end.395:                                       ; preds = %cond.end.388, %if.then.277
  br label %if.end.596

if.else.396:                                      ; preds = %if.end.271
  %248 = load i32, i32* %yuv.addr, align 4
  %tobool397 = icmp ne i32 %248, 0
  br i1 %tobool397, label %cond.true.398, label %cond.false.400

cond.true.398:                                    ; preds = %if.else.396
  %249 = load i32, i32* %C0, align 4
  %add399 = add nsw i32 %249, 1
  br label %cond.end.403

cond.false.400:                                   ; preds = %if.else.396
  %250 = load i32, i32* %C0, align 4
  %251 = load i32, i32* %ap, align 4
  %add401 = add nsw i32 %250, %251
  %252 = load i32, i32* %aq, align 4
  %add402 = add nsw i32 %add401, %252
  br label %cond.end.403

cond.end.403:                                     ; preds = %cond.false.400, %cond.true.398
  %cond404 = phi i32 [ %add399, %cond.true.398 ], [ %add402, %cond.false.400 ]
  store i32 %cond404, i32* %c0, align 4
  %253 = load i32, i32* %Delta, align 4
  %shl405 = shl i32 %253, 2
  %254 = load i32, i32* %L1, align 4
  %255 = load i32, i32* %R1, align 4
  %sub406 = sub nsw i32 %254, %255
  %add407 = add nsw i32 %shl405, %sub406
  %add408 = add nsw i32 %add407, 4
  %shr409 = ashr i32 %add408, 3
  %256 = load i32, i32* %c0, align 4
  %sub410 = sub nsw i32 0, %256
  %cmp411 = icmp slt i32 %shr409, %sub410
  br i1 %cmp411, label %cond.true.413, label %cond.false.415

cond.true.413:                                    ; preds = %cond.end.403
  %257 = load i32, i32* %c0, align 4
  %sub414 = sub nsw i32 0, %257
  br label %cond.end.432

cond.false.415:                                   ; preds = %cond.end.403
  %258 = load i32, i32* %Delta, align 4
  %shl416 = shl i32 %258, 2
  %259 = load i32, i32* %L1, align 4
  %260 = load i32, i32* %R1, align 4
  %sub417 = sub nsw i32 %259, %260
  %add418 = add nsw i32 %shl416, %sub417
  %add419 = add nsw i32 %add418, 4
  %shr420 = ashr i32 %add419, 3
  %261 = load i32, i32* %c0, align 4
  %cmp421 = icmp sgt i32 %shr420, %261
  br i1 %cmp421, label %cond.true.423, label %cond.false.424

cond.true.423:                                    ; preds = %cond.false.415
  %262 = load i32, i32* %c0, align 4
  br label %cond.end.430

cond.false.424:                                   ; preds = %cond.false.415
  %263 = load i32, i32* %Delta, align 4
  %shl425 = shl i32 %263, 2
  %264 = load i32, i32* %L1, align 4
  %265 = load i32, i32* %R1, align 4
  %sub426 = sub nsw i32 %264, %265
  %add427 = add nsw i32 %shl425, %sub426
  %add428 = add nsw i32 %add427, 4
  %shr429 = ashr i32 %add428, 3
  br label %cond.end.430

cond.end.430:                                     ; preds = %cond.false.424, %cond.true.423
  %cond431 = phi i32 [ %262, %cond.true.423 ], [ %shr429, %cond.false.424 ]
  br label %cond.end.432

cond.end.432:                                     ; preds = %cond.end.430, %cond.true.413
  %cond433 = phi i32 [ %sub414, %cond.true.413 ], [ %cond431, %cond.end.430 ]
  store i32 %cond433, i32* %dif, align 4
  %266 = load i32, i32* %yuv.addr, align 4
  %tobool434 = icmp ne i32 %266, 0
  br i1 %tobool434, label %if.else.473, label %if.then.435

if.then.435:                                      ; preds = %cond.end.432
  %267 = load i32, i32* %L0, align 4
  %268 = load i32, i32* %dif, align 4
  %add436 = add nsw i32 %267, %268
  %cmp437 = icmp slt i32 %add436, 0
  br i1 %cmp437, label %cond.true.439, label %cond.false.440

cond.true.439:                                    ; preds = %if.then.435
  br label %cond.end.450

cond.false.440:                                   ; preds = %if.then.435
  %269 = load i32, i32* %L0, align 4
  %270 = load i32, i32* %dif, align 4
  %add441 = add nsw i32 %269, %270
  %271 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %271, i32 0, i32 155
  %272 = load i32, i32* %max_imgpel_value, align 4
  %cmp442 = icmp sgt i32 %add441, %272
  br i1 %cmp442, label %cond.true.444, label %cond.false.446

cond.true.444:                                    ; preds = %cond.false.440
  %273 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value445 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %273, i32 0, i32 155
  %274 = load i32, i32* %max_imgpel_value445, align 4
  br label %cond.end.448

cond.false.446:                                   ; preds = %cond.false.440
  %275 = load i32, i32* %L0, align 4
  %276 = load i32, i32* %dif, align 4
  %add447 = add nsw i32 %275, %276
  br label %cond.end.448

cond.end.448:                                     ; preds = %cond.false.446, %cond.true.444
  %cond449 = phi i32 [ %274, %cond.true.444 ], [ %add447, %cond.false.446 ]
  br label %cond.end.450

cond.end.450:                                     ; preds = %cond.end.448, %cond.true.439
  %cond451 = phi i32 [ 0, %cond.true.439 ], [ %cond449, %cond.end.448 ]
  %conv452 = trunc i32 %cond451 to i16
  %277 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx453 = getelementptr inbounds i16, i16* %277, i64 0
  store i16 %conv452, i16* %arrayidx453, align 2
  %278 = load i32, i32* %R0, align 4
  %279 = load i32, i32* %dif, align 4
  %sub454 = sub nsw i32 %278, %279
  %cmp455 = icmp slt i32 %sub454, 0
  br i1 %cmp455, label %cond.true.457, label %cond.false.458

cond.true.457:                                    ; preds = %cond.end.450
  br label %cond.end.469

cond.false.458:                                   ; preds = %cond.end.450
  %280 = load i32, i32* %R0, align 4
  %281 = load i32, i32* %dif, align 4
  %sub459 = sub nsw i32 %280, %281
  %282 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value460 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %282, i32 0, i32 155
  %283 = load i32, i32* %max_imgpel_value460, align 4
  %cmp461 = icmp sgt i32 %sub459, %283
  br i1 %cmp461, label %cond.true.463, label %cond.false.465

cond.true.463:                                    ; preds = %cond.false.458
  %284 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value464 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %284, i32 0, i32 155
  %285 = load i32, i32* %max_imgpel_value464, align 4
  br label %cond.end.467

cond.false.465:                                   ; preds = %cond.false.458
  %286 = load i32, i32* %R0, align 4
  %287 = load i32, i32* %dif, align 4
  %sub466 = sub nsw i32 %286, %287
  br label %cond.end.467

cond.end.467:                                     ; preds = %cond.false.465, %cond.true.463
  %cond468 = phi i32 [ %285, %cond.true.463 ], [ %sub466, %cond.false.465 ]
  br label %cond.end.469

cond.end.469:                                     ; preds = %cond.end.467, %cond.true.457
  %cond470 = phi i32 [ 0, %cond.true.457 ], [ %cond468, %cond.end.467 ]
  %conv471 = trunc i32 %cond470 to i16
  %288 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx472 = getelementptr inbounds i16, i16* %288, i64 0
  store i16 %conv471, i16* %arrayidx472, align 2
  br label %if.end.511

if.else.473:                                      ; preds = %cond.end.432
  %289 = load i32, i32* %L0, align 4
  %290 = load i32, i32* %dif, align 4
  %add474 = add nsw i32 %289, %290
  %cmp475 = icmp slt i32 %add474, 0
  br i1 %cmp475, label %cond.true.477, label %cond.false.478

cond.true.477:                                    ; preds = %if.else.473
  br label %cond.end.488

cond.false.478:                                   ; preds = %if.else.473
  %291 = load i32, i32* %L0, align 4
  %292 = load i32, i32* %dif, align 4
  %add479 = add nsw i32 %291, %292
  %293 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %293, i32 0, i32 156
  %294 = load i32, i32* %max_imgpel_value_uv, align 4
  %cmp480 = icmp sgt i32 %add479, %294
  br i1 %cmp480, label %cond.true.482, label %cond.false.484

cond.true.482:                                    ; preds = %cond.false.478
  %295 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value_uv483 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %295, i32 0, i32 156
  %296 = load i32, i32* %max_imgpel_value_uv483, align 4
  br label %cond.end.486

cond.false.484:                                   ; preds = %cond.false.478
  %297 = load i32, i32* %L0, align 4
  %298 = load i32, i32* %dif, align 4
  %add485 = add nsw i32 %297, %298
  br label %cond.end.486

cond.end.486:                                     ; preds = %cond.false.484, %cond.true.482
  %cond487 = phi i32 [ %296, %cond.true.482 ], [ %add485, %cond.false.484 ]
  br label %cond.end.488

cond.end.488:                                     ; preds = %cond.end.486, %cond.true.477
  %cond489 = phi i32 [ 0, %cond.true.477 ], [ %cond487, %cond.end.486 ]
  %conv490 = trunc i32 %cond489 to i16
  %299 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx491 = getelementptr inbounds i16, i16* %299, i64 0
  store i16 %conv490, i16* %arrayidx491, align 2
  %300 = load i32, i32* %R0, align 4
  %301 = load i32, i32* %dif, align 4
  %sub492 = sub nsw i32 %300, %301
  %cmp493 = icmp slt i32 %sub492, 0
  br i1 %cmp493, label %cond.true.495, label %cond.false.496

cond.true.495:                                    ; preds = %cond.end.488
  br label %cond.end.507

cond.false.496:                                   ; preds = %cond.end.488
  %302 = load i32, i32* %R0, align 4
  %303 = load i32, i32* %dif, align 4
  %sub497 = sub nsw i32 %302, %303
  %304 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value_uv498 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %304, i32 0, i32 156
  %305 = load i32, i32* %max_imgpel_value_uv498, align 4
  %cmp499 = icmp sgt i32 %sub497, %305
  br i1 %cmp499, label %cond.true.501, label %cond.false.503

cond.true.501:                                    ; preds = %cond.false.496
  %306 = load %struct.ImageParameters*, %struct.ImageParameters** %img.addr, align 8
  %max_imgpel_value_uv502 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %306, i32 0, i32 156
  %307 = load i32, i32* %max_imgpel_value_uv502, align 4
  br label %cond.end.505

cond.false.503:                                   ; preds = %cond.false.496
  %308 = load i32, i32* %R0, align 4
  %309 = load i32, i32* %dif, align 4
  %sub504 = sub nsw i32 %308, %309
  br label %cond.end.505

cond.end.505:                                     ; preds = %cond.false.503, %cond.true.501
  %cond506 = phi i32 [ %307, %cond.true.501 ], [ %sub504, %cond.false.503 ]
  br label %cond.end.507

cond.end.507:                                     ; preds = %cond.end.505, %cond.true.495
  %cond508 = phi i32 [ 0, %cond.true.495 ], [ %cond506, %cond.end.505 ]
  %conv509 = trunc i32 %cond508 to i16
  %310 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx510 = getelementptr inbounds i16, i16* %310, i64 0
  store i16 %conv509, i16* %arrayidx510, align 2
  br label %if.end.511

if.end.511:                                       ; preds = %cond.end.507, %cond.end.469
  %311 = load i32, i32* %yuv.addr, align 4
  %tobool512 = icmp ne i32 %311, 0
  br i1 %tobool512, label %if.end.595, label %if.then.513

if.then.513:                                      ; preds = %if.end.511
  %312 = load i32, i32* %ap, align 4
  %tobool514 = icmp ne i32 %312, 0
  br i1 %tobool514, label %if.then.515, label %if.end.554

if.then.515:                                      ; preds = %if.then.513
  %313 = load i32, i32* %L2, align 4
  %314 = load i32, i32* %RL0, align 4
  %add516 = add nsw i32 %314, 1
  %shr517 = ashr i32 %add516, 1
  %add518 = add nsw i32 %313, %shr517
  %315 = load i32, i32* %L1, align 4
  %shl519 = shl i32 %315, 1
  %sub520 = sub nsw i32 %add518, %shl519
  %shr521 = ashr i32 %sub520, 1
  %316 = load i32, i32* %C0, align 4
  %sub522 = sub nsw i32 0, %316
  %cmp523 = icmp slt i32 %shr521, %sub522
  br i1 %cmp523, label %cond.true.525, label %cond.false.527

cond.true.525:                                    ; preds = %if.then.515
  %317 = load i32, i32* %C0, align 4
  %sub526 = sub nsw i32 0, %317
  br label %cond.end.546

cond.false.527:                                   ; preds = %if.then.515
  %318 = load i32, i32* %L2, align 4
  %319 = load i32, i32* %RL0, align 4
  %add528 = add nsw i32 %319, 1
  %shr529 = ashr i32 %add528, 1
  %add530 = add nsw i32 %318, %shr529
  %320 = load i32, i32* %L1, align 4
  %shl531 = shl i32 %320, 1
  %sub532 = sub nsw i32 %add530, %shl531
  %shr533 = ashr i32 %sub532, 1
  %321 = load i32, i32* %C0, align 4
  %cmp534 = icmp sgt i32 %shr533, %321
  br i1 %cmp534, label %cond.true.536, label %cond.false.537

cond.true.536:                                    ; preds = %cond.false.527
  %322 = load i32, i32* %C0, align 4
  br label %cond.end.544

cond.false.537:                                   ; preds = %cond.false.527
  %323 = load i32, i32* %L2, align 4
  %324 = load i32, i32* %RL0, align 4
  %add538 = add nsw i32 %324, 1
  %shr539 = ashr i32 %add538, 1
  %add540 = add nsw i32 %323, %shr539
  %325 = load i32, i32* %L1, align 4
  %shl541 = shl i32 %325, 1
  %sub542 = sub nsw i32 %add540, %shl541
  %shr543 = ashr i32 %sub542, 1
  br label %cond.end.544

cond.end.544:                                     ; preds = %cond.false.537, %cond.true.536
  %cond545 = phi i32 [ %322, %cond.true.536 ], [ %shr543, %cond.false.537 ]
  br label %cond.end.546

cond.end.546:                                     ; preds = %cond.end.544, %cond.true.525
  %cond547 = phi i32 [ %sub526, %cond.true.525 ], [ %cond545, %cond.end.544 ]
  %326 = load i32, i32* %incP, align 4
  %sub548 = sub nsw i32 0, %326
  %idxprom549 = sext i32 %sub548 to i64
  %327 = load i16*, i16** %SrcPtrP, align 8
  %arrayidx550 = getelementptr inbounds i16, i16* %327, i64 %idxprom549
  %328 = load i16, i16* %arrayidx550, align 2
  %conv551 = zext i16 %328 to i32
  %add552 = add nsw i32 %conv551, %cond547
  %conv553 = trunc i32 %add552 to i16
  store i16 %conv553, i16* %arrayidx550, align 2
  br label %if.end.554

if.end.554:                                       ; preds = %cond.end.546, %if.then.513
  %329 = load i32, i32* %aq, align 4
  %tobool555 = icmp ne i32 %329, 0
  br i1 %tobool555, label %if.then.556, label %if.end.594

if.then.556:                                      ; preds = %if.end.554
  %330 = load i32, i32* %R2, align 4
  %331 = load i32, i32* %RL0, align 4
  %add557 = add nsw i32 %331, 1
  %shr558 = ashr i32 %add557, 1
  %add559 = add nsw i32 %330, %shr558
  %332 = load i32, i32* %R1, align 4
  %shl560 = shl i32 %332, 1
  %sub561 = sub nsw i32 %add559, %shl560
  %shr562 = ashr i32 %sub561, 1
  %333 = load i32, i32* %C0, align 4
  %sub563 = sub nsw i32 0, %333
  %cmp564 = icmp slt i32 %shr562, %sub563
  br i1 %cmp564, label %cond.true.566, label %cond.false.568

cond.true.566:                                    ; preds = %if.then.556
  %334 = load i32, i32* %C0, align 4
  %sub567 = sub nsw i32 0, %334
  br label %cond.end.587

cond.false.568:                                   ; preds = %if.then.556
  %335 = load i32, i32* %R2, align 4
  %336 = load i32, i32* %RL0, align 4
  %add569 = add nsw i32 %336, 1
  %shr570 = ashr i32 %add569, 1
  %add571 = add nsw i32 %335, %shr570
  %337 = load i32, i32* %R1, align 4
  %shl572 = shl i32 %337, 1
  %sub573 = sub nsw i32 %add571, %shl572
  %shr574 = ashr i32 %sub573, 1
  %338 = load i32, i32* %C0, align 4
  %cmp575 = icmp sgt i32 %shr574, %338
  br i1 %cmp575, label %cond.true.577, label %cond.false.578

cond.true.577:                                    ; preds = %cond.false.568
  %339 = load i32, i32* %C0, align 4
  br label %cond.end.585

cond.false.578:                                   ; preds = %cond.false.568
  %340 = load i32, i32* %R2, align 4
  %341 = load i32, i32* %RL0, align 4
  %add579 = add nsw i32 %341, 1
  %shr580 = ashr i32 %add579, 1
  %add581 = add nsw i32 %340, %shr580
  %342 = load i32, i32* %R1, align 4
  %shl582 = shl i32 %342, 1
  %sub583 = sub nsw i32 %add581, %shl582
  %shr584 = ashr i32 %sub583, 1
  br label %cond.end.585

cond.end.585:                                     ; preds = %cond.false.578, %cond.true.577
  %cond586 = phi i32 [ %339, %cond.true.577 ], [ %shr584, %cond.false.578 ]
  br label %cond.end.587

cond.end.587:                                     ; preds = %cond.end.585, %cond.true.566
  %cond588 = phi i32 [ %sub567, %cond.true.566 ], [ %cond586, %cond.end.585 ]
  %343 = load i32, i32* %incQ, align 4
  %idxprom589 = sext i32 %343 to i64
  %344 = load i16*, i16** %SrcPtrQ, align 8
  %arrayidx590 = getelementptr inbounds i16, i16* %344, i64 %idxprom589
  %345 = load i16, i16* %arrayidx590, align 2
  %conv591 = zext i16 %345 to i32
  %add592 = add nsw i32 %conv591, %cond588
  %conv593 = trunc i32 %add592 to i16
  store i16 %conv593, i16* %arrayidx590, align 2
  br label %if.end.594

if.end.594:                                       ; preds = %cond.end.587, %if.end.554
  br label %if.end.595

if.end.595:                                       ; preds = %if.end.594, %if.end.511
  br label %if.end.596

if.end.596:                                       ; preds = %if.end.595, %if.end.395
  br label %if.end.597

if.end.597:                                       ; preds = %if.end.596, %if.then.245
  br label %if.end.598

if.end.598:                                       ; preds = %if.end.597, %if.then.241
  br label %if.end.599

if.end.599:                                       ; preds = %if.end.598, %cond.end.196
  br label %if.end.600

if.end.600:                                       ; preds = %if.end.599, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.600
  %346 = load i32, i32* %pel, align 4
  %inc = add nsw i32 %346, 1
  store i32 %inc, i32* %pel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #2

declare void @get_mb_block_pos(i32, i32*, i32*) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
