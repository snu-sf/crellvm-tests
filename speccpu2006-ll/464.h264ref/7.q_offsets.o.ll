; ModuleID = 'q_offsets.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
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

@offset4x4_check = global [6 x i32] zeroinitializer, align 16
@offset8x8_check = global [2 x i32] zeroinitializer, align 4
@OffsetType4x4 = internal constant [9 x [24 x i8]] [[24 x i8] c"INTRA4X4_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTRA\00\00", [24 x i8] c"INTRA4X4_CHROMAV_INTRA\00\00", [24 x i8] c"INTRA4X4_LUMA_INTER\00\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTER\00\00", [24 x i8] c"INTRA4X4_CHROMAV_INTER\00\00", [24 x i8] c"INTER4X4_LUMA\00\00\00\00\00\00\00\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU\00\00\00\00\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAV\00\00\00\00\00\00\00\00"], align 16
@OffsetType8x8 = internal constant [3 x [24 x i8]] [[24 x i8] c"INTRA8X8_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTER\00\00\00\00\00", [24 x i8] c"INTER8X8_LUMA\00\00\00\00\00\00\00\00\00\00\00"], align 16
@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@OffsetList4x4input = common global [9 x [16 x i16]] zeroinitializer, align 16
@OffsetList8x8input = common global [3 x [64 x i16]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@input = external global %struct.InputParameters*, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"Parsing Quantization Offset Matrix file %s \00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@img = external global %struct.ImageParameters*, align 8
@LevelOffset4x4Luma_Intra = common global [13 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelOffset4x4Chroma_Intra = common global [2 x [13 x [4 x [4 x i32]]]] zeroinitializer, align 16
@LevelOffset4x4Luma_Inter = common global [13 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelOffset4x4Chroma_Inter = common global [2 x [13 x [4 x [4 x i32]]]] zeroinitializer, align 16
@Offset_intra_default_intra = internal constant [16 x i16] [i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341], align 16
@Offset_intra_default_inter = internal constant [16 x i16] [i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171], align 16
@Offset_inter_default = internal constant [16 x i16] [i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171], align 16
@LevelOffset8x8Luma_Intra = common global [13 x [8 x [8 x i32]]] zeroinitializer, align 16
@LevelOffset8x8Luma_Inter = common global [13 x [8 x [8 x i32]]] zeroinitializer, align 16
@Offset8_intra_default_intra = internal constant [64 x i16] [i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341], align 16
@Offset8_intra_default_inter = internal constant [64 x i16] [i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171], align 16
@Offset8_inter_default = internal constant [64 x i16] [i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171], align 16
@OffsetList4x4 = common global [9 x [16 x i16]] zeroinitializer, align 16
@OffsetList8x8 = common global [3 x [64 x i16]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @CheckOffsetParameterName(i8* %s, i32* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %type.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32* %type, i32** %type.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i32*, i32** %type.addr, align 8
  store i32 0, i32* %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x [24 x i8]], [9 x [24 x i8]]* @OffsetType4x4, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %arrayidx, i32 0, i32 0
  %cmp = icmp ne i8* %arraydecay, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [9 x [24 x i8]], [9 x [24 x i8]]* @OffsetType4x4, i32 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [24 x i8], [24 x i8]* %arrayidx3, i32 0, i32 0
  %5 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* %arraydecay4, i8* %5) #4
  %cmp5 = icmp eq i32 0, %call
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* %i, align 4
  %8 = load i32*, i32** %type.addr, align 8
  store i32 1, i32* %8, align 4
  br label %while.cond.6

while.cond.6:                                     ; preds = %if.end.23, %while.end
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [3 x [24 x i8]], [3 x [24 x i8]]* @OffsetType8x8, i32 0, i64 %idxprom7
  %arraydecay9 = getelementptr inbounds [24 x i8], [24 x i8]* %arrayidx8, i32 0, i32 0
  %cmp10 = icmp ne i8* %arraydecay9, null
  br i1 %cmp10, label %land.rhs.11, label %land.end.13

land.rhs.11:                                      ; preds = %while.cond.6
  %10 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %10, 3
  br label %land.end.13

land.end.13:                                      ; preds = %land.rhs.11, %while.cond.6
  %11 = phi i1 [ false, %while.cond.6 ], [ %cmp12, %land.rhs.11 ]
  br i1 %11, label %while.body.14, label %while.end.24

while.body.14:                                    ; preds = %land.end.13
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [3 x [24 x i8]], [3 x [24 x i8]]* @OffsetType8x8, i32 0, i64 %idxprom15
  %arraydecay17 = getelementptr inbounds [24 x i8], [24 x i8]* %arrayidx16, i32 0, i32 0
  %13 = load i8*, i8** %s.addr, align 8
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* %13) #4
  %cmp19 = icmp eq i32 0, %call18
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %while.body.14
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %retval
  br label %return

if.else.21:                                       ; preds = %while.body.14
  %15 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %15, 1
  store i32 %inc22, i32* %i, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21
  br label %while.cond.6

while.end.24:                                     ; preds = %land.end.13
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.24, %if.then.20, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @ParseQOffsetMatrix(i8* %buf, i32 %bufsize) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %items = alloca [1000 x i8*], align 16
  %MapIdx = alloca i32, align 4
  %item = alloca i32, align 4
  %InString = alloca i32, align 4
  %InItem = alloca i32, align 4
  %p = alloca i8*, align 8
  %bufend = alloca i8*, align 8
  %IntContent = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %range = alloca i32, align 4
  %type = alloca i32, align 4
  %cnt = alloca i32, align 4
  %OffsetList = alloca i16*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 0, i32* %item, align 4
  store i32 0, i32* %InString, align 4
  store i32 0, i32* %InItem, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i32, i32* %bufsize.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8* %arrayidx, i8** %bufend, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8*, i8** %bufend, align 8
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %while.body, label %while.end.34

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 35, label %sw.bb.1
    i32 10, label %sw.bb.10
    i32 32, label %sw.bb.12
    i32 9, label %sw.bb.12
    i32 34, label %sw.bb.15
    i32 44, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %8 = load i8*, i8** %p, align 8
  store i8 0, i8* %8, align 1
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.8, %sw.bb.1
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp ne i32 %conv3, 10
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.2
  %11 = load i8*, i8** %p, align 8
  %12 = load i8*, i8** %bufend, align 8
  %cmp6 = icmp ult i8* %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.2
  %13 = phi i1 [ false, %while.cond.2 ], [ %cmp6, %land.rhs ]
  br i1 %13, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %land.end
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8
  br label %while.cond.2

while.end:                                        ; preds = %land.end
  store i32 0, i32* %InString, align 4
  store i32 0, i32* %InItem, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  store i32 0, i32* %InItem, align 4
  store i32 0, i32* %InString, align 4
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  store i8 0, i8* %15, align 1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body, %while.body
  %16 = load i32, i32* %InString, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.12
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.12
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr14, i8** %p, align 8
  store i8 0, i8* %18, align 1
  store i32 0, i32* %InItem, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %InString, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %if.else.21, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.15
  %21 = load i8*, i8** %p, align 8
  %22 = load i32, i32* %item, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %item, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom19
  store i8* %21, i8** %arrayidx20, align 8
  %23 = load i32, i32* %InItem, align 4
  %neg = xor i32 %23, -1
  store i32 %neg, i32* %InItem, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %sw.bb.15
  store i32 0, i32* %InItem, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.18
  %24 = load i32, i32* %InString, align 4
  %neg23 = xor i32 %24, -1
  store i32 %neg23, i32* %InString, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %while.body
  %25 = load i8*, i8** %p, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr25, i8** %p, align 8
  store i32 0, i32* %InItem, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %26 = load i32, i32* %InItem, align 4
  %tobool26 = icmp ne i32 %26, 0
  br i1 %tobool26, label %if.end.32, label %if.then.27

if.then.27:                                       ; preds = %sw.default
  %27 = load i8*, i8** %p, align 8
  %28 = load i32, i32* %item, align 4
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, i32* %item, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom29
  store i8* %27, i8** %arrayidx30, align 8
  %29 = load i32, i32* %InItem, align 4
  %neg31 = xor i32 %29, -1
  store i32 %neg31, i32* %InItem, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %sw.default
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr33, i8** %p, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.32, %sw.bb.24, %if.end.22, %if.end, %sw.bb.10, %while.end, %sw.bb
  br label %while.cond

while.end.34:                                     ; preds = %while.cond
  %31 = load i32, i32* %item, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %item, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %while.end.34
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %item, align 4
  %cmp35 = icmp slt i32 %32, %33
  br i1 %cmp35, label %for.body, label %for.end.98

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %cnt, align 4
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %cnt, align 4
  %add = add nsw i32 %34, %35
  %idxprom37 = sext i32 %add to i64
  %arrayidx38 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom37
  %36 = load i8*, i8** %arrayidx38, align 8
  %call = call i32 @CheckOffsetParameterName(i8* %36, i32* %type)
  store i32 %call, i32* %MapIdx, align 4
  %cmp39 = icmp sgt i32 0, %call
  br i1 %cmp39, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %cnt, align 4
  %add42 = add nsw i32 %37, %38
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom43
  %39 = load i8*, i8** %arrayidx44, align 8
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i32 0, i32 0), i8* %39) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %for.body
  %40 = load i32, i32* %cnt, align 4
  %inc47 = add nsw i32 %40, 1
  store i32 %inc47, i32* %cnt, align 4
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %cnt, align 4
  %add48 = add nsw i32 %41, %42
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom49
  %43 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %43) #4
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.46
  %call54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.46
  %44 = load i32, i32* %cnt, align 4
  %inc56 = add nsw i32 %44, 1
  store i32 %inc56, i32* %cnt, align 4
  %45 = load i32, i32* %type, align 4
  %tobool57 = icmp ne i32 %45, 0
  br i1 %tobool57, label %if.else.63, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  store i32 16, i32* %range, align 4
  %46 = load i32, i32* %MapIdx, align 4
  %idxprom59 = sext i32 %46 to i64
  %arrayidx60 = getelementptr inbounds [9 x [16 x i16]], [9 x [16 x i16]]* @OffsetList4x4input, i32 0, i64 %idxprom59
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx60, i32 0, i32 0
  store i16* %arraydecay, i16** %OffsetList, align 8
  %47 = load i32, i32* %MapIdx, align 4
  %idxprom61 = sext i32 %47 to i64
  %arrayidx62 = getelementptr inbounds [6 x i32], [6 x i32]* @offset4x4_check, i32 0, i64 %idxprom61
  store i32 1, i32* %arrayidx62, align 4
  br label %if.end.69

if.else.63:                                       ; preds = %if.end.55
  store i32 64, i32* %range, align 4
  %48 = load i32, i32* %MapIdx, align 4
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [3 x [64 x i16]], [3 x [64 x i16]]* @OffsetList8x8input, i32 0, i64 %idxprom64
  %arraydecay66 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx65, i32 0, i32 0
  store i16* %arraydecay66, i16** %OffsetList, align 8
  %49 = load i32, i32* %MapIdx, align 4
  %idxprom67 = sext i32 %49 to i64
  %arrayidx68 = getelementptr inbounds [2 x i32], [2 x i32]* @offset8x8_check, i32 0, i64 %idxprom67
  store i32 1, i32* %arrayidx68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.63, %if.then.58
  store i32 0, i32* %j, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %if.end.69
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %range, align 4
  %cmp71 = icmp slt i32 %50, %51
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %cnt, align 4
  %add74 = add nsw i32 %52, %53
  %54 = load i32, i32* %j, align 4
  %add75 = add nsw i32 %add74, %54
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom76
  %55 = load i8*, i8** %arrayidx77, align 8
  %call78 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %IntContent) #5
  %cmp79 = icmp ne i32 1, %call78
  br i1 %cmp79, label %if.then.81, label %if.end.89

if.then.81:                                       ; preds = %for.body.73
  %56 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %56 to i64
  %arrayidx83 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom82
  %57 = load i8*, i8** %arrayidx83, align 8
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %cnt, align 4
  %add84 = add nsw i32 %58, %59
  %60 = load i32, i32* %j, align 4
  %add85 = add nsw i32 %add84, %60
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %items, i32 0, i64 %idxprom86
  %61 = load i8*, i8** %arrayidx87, align 8
  %call88 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i32 0, i32 0), i8* %57, i8* %61) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.81, %for.body.73
  %62 = load i32, i32* %IntContent, align 4
  %conv90 = trunc i32 %62 to i16
  %63 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %63 to i64
  %64 = load i16*, i16** %OffsetList, align 8
  %arrayidx92 = getelementptr inbounds i16, i16* %64, i64 %idxprom91
  store i16 %conv90, i16* %arrayidx92, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.89
  %65 = load i32, i32* %j, align 4
  %inc93 = add nsw i32 %65, 1
  store i32 %inc93, i32* %j, align 4
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %cnt, align 4
  %add94 = add nsw i32 %67, %66
  store i32 %add94, i32* %cnt, align 4
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end
  %68 = load i32, i32* %cnt, align 4
  %69 = load i32, i32* %i, align 4
  %add97 = add nsw i32 %69, %68
  store i32 %add97, i32* %i, align 4
  br label %for.cond

for.end.98:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @Init_QOffsetMatrix() #0 {
entry:
  %content = alloca i8*, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 147
  %1 = load i32, i32* %OffsetMatrixPresentFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %QOffsetMatrixFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 146
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %QOffsetMatrixFile, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay)
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %QOffsetMatrixFile1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 146
  %arraydecay2 = getelementptr inbounds [200 x i8], [200 x i8]* %QOffsetMatrixFile1, i32 0, i32 0
  %call3 = call i8* @GetConfigFileContent(i8* %arraydecay2, i32 0)
  store i8* %call3, i8** %content, align 8
  %4 = load i8*, i8** %content, align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %5 = load i8*, i8** %content, align 8
  %6 = load i8*, i8** %content, align 8
  %call5 = call i64 @strlen(i8* %6) #4
  %conv = trunc i64 %call5 to i32
  call void @ParseQOffsetMatrix(i8* %5, i32 %conv)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0))
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %OffsetMatrixPresentFlag7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 147
  store i32 0, i32* %OffsetMatrixPresentFlag7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %8 = load i8*, i8** %content, align 8
  call void @free(i8* %8) #5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

declare i8* @GetConfigFileContent(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @CalculateOffsetParam() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %qp_per = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 147
  %1 = load i32, i32* %OffsetMatrixPresentFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.103

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.100, %if.then
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 13
  br i1 %cmp, label %for.body, label %for.end.102

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %add = add nsw i32 15, %3
  %sub = sub nsw i32 %add, 10
  store i32 %sub, i32* %qp_per, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.97, %for.body
  %4 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %4, 4
  br i1 %cmp2, label %for.body.3, label %for.end.99

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 4
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %i, align 4
  %shl = shl i32 %6, 2
  %7 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %shl, %7
  store i32 %add7, i32* %temp, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 6
  %9 = load i32, i32* %type, align 4
  %cmp8 = icmp eq i32 %9, 2
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body.6
  %10 = load i32, i32* %temp, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([9 x [16 x i16]], [9 x [16 x i16]]* @OffsetList4x4input, i32 0, i64 0), i32 0, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %11 to i32
  %12 = load i32, i32* %qp_per, align 4
  %shl10 = shl i32 %conv, %12
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx14, i32 0, i64 %idxprom12
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx15, i32 0, i64 %idxprom11
  store i32 %shl10, i32* %arrayidx16, align 4
  %16 = load i32, i32* %temp, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([9 x [16 x i16]], [9 x [16 x i16]]* @OffsetList4x4input, i32 0, i64 1), i32 0, i64 %idxprom17
  %17 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %17 to i32
  %18 = load i32, i32* %qp_per, align 4
  %shl20 = shl i32 %conv19, %18
  %19 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx24, i32 0, i64 %idxprom22
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx25, i32 0, i64 %idxprom21
  store i32 %shl20, i32* %arrayidx26, align 4
  %22 = load i32, i32* %temp, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([9 x [16 x i16]], [9 x [16 x i16]]* @OffsetList4x4input, i32 0, i64 2), i32 0, i64 %idxprom27
  %23 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %23 to i32
  %24 = load i32, i32* %qp_per, align 4
  %shl30 = shl i32 %conv29, %24
  %25 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %26 to i64
  %27 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx34, i32 0, i64 %idxprom32
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx35, i32 0, i64 %idxprom31
  store i32 %shl30, i32* %arrayidx36, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.6
  %28 = load i32, i32* %temp, align 4
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([9 x [16 x i16]], [9 x [16 x i16]]* @OffsetList4x4input, i32 0, i64 3), i32 0, i64 %idxprom37
  %29 = load i16, i16* %arrayidx38, align 2
  %conv39 = sext i16 %29 to i32
  %30 = load i32, i32* %qp_per, align 4
  %shl40 = shl i32 %conv39, %30
  %31 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %31 to i64
  %32 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %32 to i64
  %33 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i32 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx44, i32 0, i64 %idxprom42
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx45, i32 0, i64 %idxprom41
  store i32 %shl40, i32* %arrayidx46, align 4
  %34 = load i32, i32* %temp, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([9 x [16 x i16]], [9 x [16 x i16]]* @OffsetList4x4input, i32 0, i64 4), i32 0, i64 %idxprom47
  %35 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %35 to i32
  %36 = load i32, i32* %qp_per, align 4
  %shl50 = shl i32 %conv49, %36
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %38 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %38 to i64
  %39 = load i32, i32* %k, align 4
  %idxprom53 = sext i32 %39 to i64
  %arrayidx54 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx54, i32 0, i64 %idxprom52
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx55, i32 0, i64 %idxprom51
  store i32 %shl50, i32* %arrayidx56, align 4
  %40 = load i32, i32* %temp, align 4
  %idxprom57 = sext i32 %40 to i64
  %arrayidx58 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([9 x [16 x i16]], [9 x [16 x i16]]* @OffsetList4x4input, i32 0, i64 5), i32 0, i64 %idxprom57
  %41 = load i16, i16* %arrayidx58, align 2
  %conv59 = sext i16 %41 to i32
  %42 = load i32, i32* %qp_per, align 4
  %shl60 = shl i32 %conv59, %42
  %43 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %44 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %44 to i64
  %45 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %45 to i64
  %arrayidx64 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx64, i32 0, i64 %idxprom62
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx65, i32 0, i64 %idxprom61
  store i32 %shl60, i32* %arrayidx66, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  %46 = load i32, i32* %temp, align 4
  %idxprom67 = sext i32 %46 to i64
  %arrayidx68 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([9 x [16 x i16]], [9 x [16 x i16]]* @OffsetList4x4input, i32 0, i64 6), i32 0, i64 %idxprom67
  %47 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %47 to i32
  %48 = load i32, i32* %qp_per, align 4
  %shl70 = shl i32 %conv69, %48
  %49 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %49 to i64
  %50 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %50 to i64
  %51 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %51 to i64
  %arrayidx74 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Inter, i32 0, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx74, i32 0, i64 %idxprom72
  %arrayidx76 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx75, i32 0, i64 %idxprom71
  store i32 %shl70, i32* %arrayidx76, align 4
  %52 = load i32, i32* %temp, align 4
  %idxprom77 = sext i32 %52 to i64
  %arrayidx78 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([9 x [16 x i16]], [9 x [16 x i16]]* @OffsetList4x4input, i32 0, i64 7), i32 0, i64 %idxprom77
  %53 = load i16, i16* %arrayidx78, align 2
  %conv79 = sext i16 %53 to i32
  %54 = load i32, i32* %qp_per, align 4
  %shl80 = shl i32 %conv79, %54
  %55 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %55 to i64
  %56 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %56 to i64
  %57 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %57 to i64
  %arrayidx84 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx84, i32 0, i64 %idxprom82
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx85, i32 0, i64 %idxprom81
  store i32 %shl80, i32* %arrayidx86, align 4
  %58 = load i32, i32* %temp, align 4
  %idxprom87 = sext i32 %58 to i64
  %arrayidx88 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([9 x [16 x i16]], [9 x [16 x i16]]* @OffsetList4x4input, i32 0, i64 8), i32 0, i64 %idxprom87
  %59 = load i16, i16* %arrayidx88, align 2
  %conv89 = sext i16 %59 to i32
  %60 = load i32, i32* %qp_per, align 4
  %shl90 = shl i32 %conv89, %60
  %61 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %61 to i64
  %62 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %62 to i64
  %63 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %63 to i64
  %arrayidx94 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i32 0, i64 1), i32 0, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx94, i32 0, i64 %idxprom92
  %arrayidx96 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx95, i32 0, i64 %idxprom91
  store i32 %shl90, i32* %arrayidx96, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %64 = load i32, i32* %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end
  %65 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %65, 1
  store i32 %inc98, i32* %j, align 4
  br label %for.cond.1

for.end.99:                                       ; preds = %for.cond.1
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.99
  %66 = load i32, i32* %k, align 4
  %inc101 = add nsw i32 %66, 1
  store i32 %inc101, i32* %k, align 4
  br label %for.cond

for.end.102:                                      ; preds = %for.cond
  br label %if.end.225

if.else.103:                                      ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.222, %if.else.103
  %67 = load i32, i32* %k, align 4
  %cmp105 = icmp slt i32 %67, 13
  br i1 %cmp105, label %for.body.107, label %for.end.224

for.body.107:                                     ; preds = %for.cond.104
  %68 = load i32, i32* %k, align 4
  %add108 = add nsw i32 15, %68
  %sub109 = sub nsw i32 %add108, 10
  store i32 %sub109, i32* %qp_per, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.219, %for.body.107
  %69 = load i32, i32* %j, align 4
  %cmp111 = icmp slt i32 %69, 4
  br i1 %cmp111, label %for.body.113, label %for.end.221

for.body.113:                                     ; preds = %for.cond.110
  store i32 0, i32* %i, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.216, %for.body.113
  %70 = load i32, i32* %i, align 4
  %cmp115 = icmp slt i32 %70, 4
  br i1 %cmp115, label %for.body.117, label %for.end.218

for.body.117:                                     ; preds = %for.cond.114
  %71 = load i32, i32* %i, align 4
  %shl118 = shl i32 %71, 2
  %72 = load i32, i32* %j, align 4
  %add119 = add nsw i32 %shl118, %72
  store i32 %add119, i32* %temp, align 4
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type120 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 6
  %74 = load i32, i32* %type120, align 4
  %cmp121 = icmp eq i32 %74, 2
  br i1 %cmp121, label %if.then.123, label %if.else.154

if.then.123:                                      ; preds = %for.body.117
  %75 = load i32, i32* %temp, align 4
  %idxprom124 = sext i32 %75 to i64
  %arrayidx125 = getelementptr inbounds [16 x i16], [16 x i16]* @Offset_intra_default_intra, i32 0, i64 %idxprom124
  %76 = load i16, i16* %arrayidx125, align 2
  %conv126 = sext i16 %76 to i32
  %77 = load i32, i32* %qp_per, align 4
  %shl127 = shl i32 %conv126, %77
  %78 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %78 to i64
  %79 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %79 to i64
  %80 = load i32, i32* %k, align 4
  %idxprom130 = sext i32 %80 to i64
  %arrayidx131 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i32 0, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx131, i32 0, i64 %idxprom129
  %arrayidx133 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx132, i32 0, i64 %idxprom128
  store i32 %shl127, i32* %arrayidx133, align 4
  %81 = load i32, i32* %temp, align 4
  %idxprom134 = sext i32 %81 to i64
  %arrayidx135 = getelementptr inbounds [16 x i16], [16 x i16]* @Offset_intra_default_intra, i32 0, i64 %idxprom134
  %82 = load i16, i16* %arrayidx135, align 2
  %conv136 = sext i16 %82 to i32
  %83 = load i32, i32* %qp_per, align 4
  %shl137 = shl i32 %conv136, %83
  %84 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %84 to i64
  %85 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %85 to i64
  %86 = load i32, i32* %k, align 4
  %idxprom140 = sext i32 %86 to i64
  %arrayidx141 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx141, i32 0, i64 %idxprom139
  %arrayidx143 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx142, i32 0, i64 %idxprom138
  store i32 %shl137, i32* %arrayidx143, align 4
  %87 = load i32, i32* %temp, align 4
  %idxprom144 = sext i32 %87 to i64
  %arrayidx145 = getelementptr inbounds [16 x i16], [16 x i16]* @Offset_intra_default_intra, i32 0, i64 %idxprom144
  %88 = load i16, i16* %arrayidx145, align 2
  %conv146 = sext i16 %88 to i32
  %89 = load i32, i32* %qp_per, align 4
  %shl147 = shl i32 %conv146, %89
  %90 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %90 to i64
  %91 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %91 to i64
  %92 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %92 to i64
  %arrayidx151 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom150
  %arrayidx152 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx151, i32 0, i64 %idxprom149
  %arrayidx153 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx152, i32 0, i64 %idxprom148
  store i32 %shl147, i32* %arrayidx153, align 4
  br label %if.end.185

if.else.154:                                      ; preds = %for.body.117
  %93 = load i32, i32* %temp, align 4
  %idxprom155 = sext i32 %93 to i64
  %arrayidx156 = getelementptr inbounds [16 x i16], [16 x i16]* @Offset_intra_default_inter, i32 0, i64 %idxprom155
  %94 = load i16, i16* %arrayidx156, align 2
  %conv157 = sext i16 %94 to i32
  %95 = load i32, i32* %qp_per, align 4
  %shl158 = shl i32 %conv157, %95
  %96 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %96 to i64
  %97 = load i32, i32* %j, align 4
  %idxprom160 = sext i32 %97 to i64
  %98 = load i32, i32* %k, align 4
  %idxprom161 = sext i32 %98 to i64
  %arrayidx162 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i32 0, i64 %idxprom161
  %arrayidx163 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx162, i32 0, i64 %idxprom160
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx163, i32 0, i64 %idxprom159
  store i32 %shl158, i32* %arrayidx164, align 4
  %99 = load i32, i32* %temp, align 4
  %idxprom165 = sext i32 %99 to i64
  %arrayidx166 = getelementptr inbounds [16 x i16], [16 x i16]* @Offset_intra_default_inter, i32 0, i64 %idxprom165
  %100 = load i16, i16* %arrayidx166, align 2
  %conv167 = sext i16 %100 to i32
  %101 = load i32, i32* %qp_per, align 4
  %shl168 = shl i32 %conv167, %101
  %102 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %102 to i64
  %103 = load i32, i32* %j, align 4
  %idxprom170 = sext i32 %103 to i64
  %104 = load i32, i32* %k, align 4
  %idxprom171 = sext i32 %104 to i64
  %arrayidx172 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom171
  %arrayidx173 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx172, i32 0, i64 %idxprom170
  %arrayidx174 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx173, i32 0, i64 %idxprom169
  store i32 %shl168, i32* %arrayidx174, align 4
  %105 = load i32, i32* %temp, align 4
  %idxprom175 = sext i32 %105 to i64
  %arrayidx176 = getelementptr inbounds [16 x i16], [16 x i16]* @Offset_intra_default_inter, i32 0, i64 %idxprom175
  %106 = load i16, i16* %arrayidx176, align 2
  %conv177 = sext i16 %106 to i32
  %107 = load i32, i32* %qp_per, align 4
  %shl178 = shl i32 %conv177, %107
  %108 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %109 to i64
  %110 = load i32, i32* %k, align 4
  %idxprom181 = sext i32 %110 to i64
  %arrayidx182 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom181
  %arrayidx183 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx182, i32 0, i64 %idxprom180
  %arrayidx184 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx183, i32 0, i64 %idxprom179
  store i32 %shl178, i32* %arrayidx184, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.154, %if.then.123
  %111 = load i32, i32* %temp, align 4
  %idxprom186 = sext i32 %111 to i64
  %arrayidx187 = getelementptr inbounds [16 x i16], [16 x i16]* @Offset_inter_default, i32 0, i64 %idxprom186
  %112 = load i16, i16* %arrayidx187, align 2
  %conv188 = sext i16 %112 to i32
  %113 = load i32, i32* %qp_per, align 4
  %shl189 = shl i32 %conv188, %113
  %114 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %114 to i64
  %115 = load i32, i32* %j, align 4
  %idxprom191 = sext i32 %115 to i64
  %116 = load i32, i32* %k, align 4
  %idxprom192 = sext i32 %116 to i64
  %arrayidx193 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Inter, i32 0, i64 %idxprom192
  %arrayidx194 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx193, i32 0, i64 %idxprom191
  %arrayidx195 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx194, i32 0, i64 %idxprom190
  store i32 %shl189, i32* %arrayidx195, align 4
  %117 = load i32, i32* %temp, align 4
  %idxprom196 = sext i32 %117 to i64
  %arrayidx197 = getelementptr inbounds [16 x i16], [16 x i16]* @Offset_inter_default, i32 0, i64 %idxprom196
  %118 = load i16, i16* %arrayidx197, align 2
  %conv198 = sext i16 %118 to i32
  %119 = load i32, i32* %qp_per, align 4
  %shl199 = shl i32 %conv198, %119
  %120 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom201 = sext i32 %121 to i64
  %122 = load i32, i32* %k, align 4
  %idxprom202 = sext i32 %122 to i64
  %arrayidx203 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom202
  %arrayidx204 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx203, i32 0, i64 %idxprom201
  %arrayidx205 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx204, i32 0, i64 %idxprom200
  store i32 %shl199, i32* %arrayidx205, align 4
  %123 = load i32, i32* %temp, align 4
  %idxprom206 = sext i32 %123 to i64
  %arrayidx207 = getelementptr inbounds [16 x i16], [16 x i16]* @Offset_inter_default, i32 0, i64 %idxprom206
  %124 = load i16, i16* %arrayidx207, align 2
  %conv208 = sext i16 %124 to i32
  %125 = load i32, i32* %qp_per, align 4
  %shl209 = shl i32 %conv208, %125
  %126 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %126 to i64
  %127 = load i32, i32* %j, align 4
  %idxprom211 = sext i32 %127 to i64
  %128 = load i32, i32* %k, align 4
  %idxprom212 = sext i32 %128 to i64
  %arrayidx213 = getelementptr inbounds [13 x [4 x [4 x i32]]], [13 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [13 x [4 x [4 x i32]]]], [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i32 0, i64 1), i32 0, i64 %idxprom212
  %arrayidx214 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx213, i32 0, i64 %idxprom211
  %arrayidx215 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx214, i32 0, i64 %idxprom210
  store i32 %shl209, i32* %arrayidx215, align 4
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.185
  %129 = load i32, i32* %i, align 4
  %inc217 = add nsw i32 %129, 1
  store i32 %inc217, i32* %i, align 4
  br label %for.cond.114

for.end.218:                                      ; preds = %for.cond.114
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.end.218
  %130 = load i32, i32* %j, align 4
  %inc220 = add nsw i32 %130, 1
  store i32 %inc220, i32* %j, align 4
  br label %for.cond.110

for.end.221:                                      ; preds = %for.cond.110
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.end.221
  %131 = load i32, i32* %k, align 4
  %inc223 = add nsw i32 %131, 1
  store i32 %inc223, i32* %k, align 4
  br label %for.cond.104

for.end.224:                                      ; preds = %for.cond.104
  br label %if.end.225

if.end.225:                                       ; preds = %for.end.224, %for.end.102
  ret void
}

; Function Attrs: nounwind uwtable
define void @CalculateOffset8Param() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %q_bits = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 147
  %1 = load i32, i32* %OffsetMatrixPresentFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.43

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %if.then
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 13
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %add = add nsw i32 16, %3
  %sub = sub nsw i32 %add, 10
  store i32 %sub, i32* %q_bits, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.37, %for.body
  %4 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %4, 8
  br i1 %cmp2, label %for.body.3, label %for.end.39

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 8
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %i, align 4
  %shl = shl i32 %6, 3
  %7 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %shl, %7
  store i32 %add7, i32* %temp, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 6
  %9 = load i32, i32* %type, align 4
  %cmp8 = icmp eq i32 %9, 2
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body.6
  %10 = load i32, i32* %temp, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([3 x [64 x i16]], [3 x [64 x i16]]* @OffsetList8x8input, i32 0, i64 0), i32 0, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %11 to i32
  %12 = load i32, i32* %q_bits, align 4
  %shl10 = shl i32 %conv, %12
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [13 x [8 x [8 x i32]]], [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx14, i32 0, i64 %idxprom12
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx15, i32 0, i64 %idxprom11
  store i32 %shl10, i32* %arrayidx16, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.6
  %16 = load i32, i32* %temp, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([3 x [64 x i16]], [3 x [64 x i16]]* @OffsetList8x8input, i32 0, i64 1), i32 0, i64 %idxprom17
  %17 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %17 to i32
  %18 = load i32, i32* %q_bits, align 4
  %shl20 = shl i32 %conv19, %18
  %19 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [13 x [8 x [8 x i32]]], [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx24, i32 0, i64 %idxprom22
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx25, i32 0, i64 %idxprom21
  store i32 %shl20, i32* %arrayidx26, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  %22 = load i32, i32* %temp, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([3 x [64 x i16]], [3 x [64 x i16]]* @OffsetList8x8input, i32 0, i64 2), i32 0, i64 %idxprom27
  %23 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %23 to i32
  %24 = load i32, i32* %q_bits, align 4
  %shl30 = shl i32 %conv29, %24
  %25 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %26 to i64
  %27 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [13 x [8 x [8 x i32]]], [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Inter, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx34, i32 0, i64 %idxprom32
  %arrayidx36 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx35, i32 0, i64 %idxprom31
  store i32 %shl30, i32* %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %29 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.1

for.end.39:                                       ; preds = %for.cond.1
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %30 = load i32, i32* %k, align 4
  %inc41 = add nsw i32 %30, 1
  store i32 %inc41, i32* %k, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  br label %if.end.105

if.else.43:                                       ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.102, %if.else.43
  %31 = load i32, i32* %k, align 4
  %cmp45 = icmp slt i32 %31, 13
  br i1 %cmp45, label %for.body.47, label %for.end.104

for.body.47:                                      ; preds = %for.cond.44
  %32 = load i32, i32* %k, align 4
  %add48 = add nsw i32 16, %32
  %sub49 = sub nsw i32 %add48, 10
  store i32 %sub49, i32* %q_bits, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.99, %for.body.47
  %33 = load i32, i32* %j, align 4
  %cmp51 = icmp slt i32 %33, 8
  br i1 %cmp51, label %for.body.53, label %for.end.101

for.body.53:                                      ; preds = %for.cond.50
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.96, %for.body.53
  %34 = load i32, i32* %i, align 4
  %cmp55 = icmp slt i32 %34, 8
  br i1 %cmp55, label %for.body.57, label %for.end.98

for.body.57:                                      ; preds = %for.cond.54
  %35 = load i32, i32* %i, align 4
  %shl58 = shl i32 %35, 3
  %36 = load i32, i32* %j, align 4
  %add59 = add nsw i32 %shl58, %36
  store i32 %add59, i32* %temp, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 6
  %38 = load i32, i32* %type60, align 4
  %cmp61 = icmp eq i32 %38, 2
  br i1 %cmp61, label %if.then.63, label %if.else.74

if.then.63:                                       ; preds = %for.body.57
  %39 = load i32, i32* %temp, align 4
  %idxprom64 = sext i32 %39 to i64
  %arrayidx65 = getelementptr inbounds [64 x i16], [64 x i16]* @Offset8_intra_default_intra, i32 0, i64 %idxprom64
  %40 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %40 to i32
  %41 = load i32, i32* %q_bits, align 4
  %shl67 = shl i32 %conv66, %41
  %42 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %42 to i64
  %43 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %43 to i64
  %44 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %44 to i64
  %arrayidx71 = getelementptr inbounds [13 x [8 x [8 x i32]]], [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i32 0, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx71, i32 0, i64 %idxprom69
  %arrayidx73 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx72, i32 0, i64 %idxprom68
  store i32 %shl67, i32* %arrayidx73, align 4
  br label %if.end.85

if.else.74:                                       ; preds = %for.body.57
  %45 = load i32, i32* %temp, align 4
  %idxprom75 = sext i32 %45 to i64
  %arrayidx76 = getelementptr inbounds [64 x i16], [64 x i16]* @Offset8_intra_default_inter, i32 0, i64 %idxprom75
  %46 = load i16, i16* %arrayidx76, align 2
  %conv77 = sext i16 %46 to i32
  %47 = load i32, i32* %q_bits, align 4
  %shl78 = shl i32 %conv77, %47
  %48 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %48 to i64
  %49 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %49 to i64
  %50 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %50 to i64
  %arrayidx82 = getelementptr inbounds [13 x [8 x [8 x i32]]], [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i32 0, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx82, i32 0, i64 %idxprom80
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx83, i32 0, i64 %idxprom79
  store i32 %shl78, i32* %arrayidx84, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.74, %if.then.63
  %51 = load i32, i32* %temp, align 4
  %idxprom86 = sext i32 %51 to i64
  %arrayidx87 = getelementptr inbounds [64 x i16], [64 x i16]* @Offset8_inter_default, i32 0, i64 %idxprom86
  %52 = load i16, i16* %arrayidx87, align 2
  %conv88 = sext i16 %52 to i32
  %53 = load i32, i32* %q_bits, align 4
  %shl89 = shl i32 %conv88, %53
  %54 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %55 to i64
  %56 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %56 to i64
  %arrayidx93 = getelementptr inbounds [13 x [8 x [8 x i32]]], [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Inter, i32 0, i64 %idxprom92
  %arrayidx94 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx93, i32 0, i64 %idxprom91
  %arrayidx95 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx94, i32 0, i64 %idxprom90
  store i32 %shl89, i32* %arrayidx95, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.85
  %57 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %57, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.54

for.end.98:                                       ; preds = %for.cond.54
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.end.98
  %58 = load i32, i32* %j, align 4
  %inc100 = add nsw i32 %58, 1
  store i32 %inc100, i32* %j, align 4
  br label %for.cond.50

for.end.101:                                      ; preds = %for.cond.50
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %59 = load i32, i32* %k, align 4
  %inc103 = add nsw i32 %59, 1
  store i32 %inc103, i32* %k, align 4
  br label %for.cond.44

for.end.104:                                      ; preds = %for.cond.44
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %for.end.42
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
