; ModuleID = 'q_matrix.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@matrix4x4_check = global [6 x i32] zeroinitializer, align 16
@matrix8x8_check = global [2 x i32] zeroinitializer, align 4
@MatrixType4x4 = internal constant [6 x [20 x i8]] [[20 x i8] c"INTRA4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAV\00\00\00\00", [20 x i8] c"INTER4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAV\00\00\00\00"], align 16
@MatrixType8x8 = internal constant [2 x [20 x i8]] [[20 x i8] c"INTRA8X8_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER8X8_LUMA\00\00\00\00\00\00\00"], align 16
@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@ScalingList4x4input = common global [6 x [16 x i16]] zeroinitializer, align 16
@ScalingList8x8input = common global [2 x [64 x i16]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@input = external global %struct.InputParameters*, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"\0A%s value exceed range. (Value must be 1 to 255)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Setting default values for this matrix.\00", align 1
@Quant_inter_default = internal constant [16 x i16] [i16 10, i16 14, i16 20, i16 24, i16 14, i16 20, i16 24, i16 27, i16 20, i16 24, i16 27, i16 30, i16 24, i16 27, i16 30, i16 34], align 16
@Quant_intra_default = internal constant [16 x i16] [i16 6, i16 13, i16 20, i16 28, i16 13, i16 20, i16 28, i16 32, i16 20, i16 28, i16 32, i16 37, i16 28, i16 32, i16 37, i16 42], align 16
@.str.8 = private unnamed_addr constant [57 x i8] c"\0A%s matrix definition not found. Setting default values.\00", align 1
@Quant8_inter_default = internal constant [64 x i16] [i16 9, i16 13, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 13, i16 13, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 35], align 16
@Quant8_intra_default = internal constant [64 x i16] [i16 6, i16 10, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 10, i16 11, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 42], align 16
@.str.9 = private unnamed_addr constant [25 x i8] c"Parsing QMatrix file %s \00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UseDefaultScalingMatrix4x4Flag = common global [6 x i16] zeroinitializer, align 2
@UseDefaultScalingMatrix8x8Flag = common global [2 x i16] zeroinitializer, align 2
@active_sps = external global %struct.seq_parameter_set_rbsp_t*, align 8
@active_pps = external global %struct.pic_parameter_set_rbsp_t*, align 8
@quant_coef = external constant [6 x [4 x [4 x i32]]], align 16
@LevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@dequant_coef = external constant [6 x [4 x [4 x i32]]], align 16
@InvLevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@LevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@ScalingList4x4 = common global [6 x [16 x i16]] zeroinitializer, align 16
@quant_coef8 = external constant [6 x [8 x [8 x i32]]], align 16
@LevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@dequant_coef8 = external constant [6 x [8 x [8 x i32]]], align 16
@InvLevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@LevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@ScalingList8x8 = common global [2 x [64 x i16]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @CheckParameterName(i8* %s, i32* %type) #0 {
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
  %arrayidx = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx, i32 0, i32 0
  %cmp = icmp ne i8* %arraydecay, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i32 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx3, i32 0, i32 0
  %5 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* %arraydecay4, i8* %5) #5
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
  %arrayidx8 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i32 0, i64 %idxprom7
  %arraydecay9 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx8, i32 0, i32 0
  %cmp10 = icmp ne i8* %arraydecay9, null
  br i1 %cmp10, label %land.rhs.11, label %land.end.13

land.rhs.11:                                      ; preds = %while.cond.6
  %10 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %10, 2
  br label %land.end.13

land.end.13:                                      ; preds = %land.rhs.11, %while.cond.6
  %11 = phi i1 [ false, %while.cond.6 ], [ %cmp12, %land.rhs.11 ]
  br i1 %11, label %while.body.14, label %while.end.24

while.body.14:                                    ; preds = %land.end.13
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i32 0, i64 %idxprom15
  %arraydecay17 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx16, i32 0, i32 0
  %13 = load i8*, i8** %s.addr, align 8
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* %13) #5
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
define void @ParseMatrix(i8* %buf, i32 %bufsize) #0 {
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
  %ScalingList = alloca i16*, align 8
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
  %call = call i32 @CheckParameterName(i8* %36, i32* %type)
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
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i32 0, i32 0), i8* %39) #4
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
  %call51 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %43) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.46
  %call54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i32 0, i32 0)) #4
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
  %arrayidx60 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4input, i32 0, i64 %idxprom59
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx60, i32 0, i32 0
  store i16* %arraydecay, i16** %ScalingList, align 8
  %47 = load i32, i32* %MapIdx, align 4
  %idxprom61 = sext i32 %47 to i64
  %arrayidx62 = getelementptr inbounds [6 x i32], [6 x i32]* @matrix4x4_check, i32 0, i64 %idxprom61
  store i32 1, i32* %arrayidx62, align 4
  br label %if.end.69

if.else.63:                                       ; preds = %if.end.55
  store i32 64, i32* %range, align 4
  %48 = load i32, i32* %MapIdx, align 4
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8input, i32 0, i64 %idxprom64
  %arraydecay66 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx65, i32 0, i32 0
  store i16* %arraydecay66, i16** %ScalingList, align 8
  %49 = load i32, i32* %MapIdx, align 4
  %idxprom67 = sext i32 %49 to i64
  %arrayidx68 = getelementptr inbounds [2 x i32], [2 x i32]* @matrix8x8_check, i32 0, i64 %idxprom67
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
  %call78 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %IntContent) #4
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
  %call88 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i32 0, i32 0), i8* %57, i8* %61) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.81, %for.body.73
  %62 = load i32, i32* %IntContent, align 4
  %conv90 = trunc i32 %62 to i16
  %63 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %63 to i64
  %64 = load i16*, i16** %ScalingList, align 8
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
define void @PatchMatrix() #0 {
entry:
  %ScalingList = alloca i16*, align 8
  %i = alloca i32, align 4
  %cnt = alloca i32, align 4
  %fail = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.102, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingListPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 133
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %ScalingListPresentFlag, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.42

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4input, i32 0, i64 %idxprom1
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx2, i32 0, i32 0
  store i16* %arraydecay, i16** %ScalingList, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [6 x i32], [6 x i32]* @matrix4x4_check, i32 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then.6, label %if.else.31

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %fail, align 4
  store i32 0, i32* %cnt, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.then.6
  %7 = load i32, i32* %cnt, align 4
  %cmp8 = icmp slt i32 %7, 16
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %8 = load i32, i32* %cnt, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load i16*, i16** %ScalingList, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %9, i64 %idxprom10
  %10 = load i16, i16* %arrayidx11, align 2
  %conv = sext i16 %10 to i32
  %cmp12 = icmp slt i32 %conv, 0
  br i1 %cmp12, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.9
  %11 = load i32, i32* %cnt, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load i16*, i16** %ScalingList, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %12, i64 %idxprom14
  %13 = load i16, i16* %arrayidx15, align 2
  %conv16 = sext i16 %13 to i32
  %cmp17 = icmp sgt i32 %conv16, 255
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %lor.lhs.false, %for.body.9
  store i32 1, i32* %fail, align 4
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond.7

for.end:                                          ; preds = %if.then.19, %for.cond.7
  %15 = load i32, i32* %fail, align 4
  %tobool20 = icmp ne i32 %15, 0
  br i1 %tobool20, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i32 0, i64 %idxprom22
  %arraydecay24 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx23, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay24)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  %17 = load i32, i32* %i, align 4
  %cmp26 = icmp sgt i32 %17, 2
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.21
  %18 = load i16*, i16** %ScalingList, align 8
  %19 = bitcast i16* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i32 2, i1 false)
  br label %if.end.29

if.else:                                          ; preds = %if.then.21
  %20 = load i16*, i16** %ScalingList, align 8
  %21 = bitcast i16* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i32 2, i1 false)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %for.end
  br label %if.end.41

if.else.31:                                       ; preds = %if.then
  %22 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i32 0, i64 %idxprom32
  %arraydecay34 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx33, i32 0, i32 0
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay34)
  %23 = load i32, i32* %i, align 4
  %cmp36 = icmp sgt i32 %23, 2
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.31
  %24 = load i16*, i16** %ScalingList, align 8
  %25 = bitcast i16* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i32 2, i1 false)
  br label %if.end.40

if.else.39:                                       ; preds = %if.else.31
  %26 = load i16*, i16** %ScalingList, align 8
  %27 = bitcast i16* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i32 2, i1 false)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.30
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %for.body
  %28 = load i32, i32* %i, align 4
  %cmp43 = icmp slt i32 %28, 2
  br i1 %cmp43, label %land.lhs.true, label %if.end.101

land.lhs.true:                                    ; preds = %if.end.42
  %29 = load i32, i32* %i, align 4
  %add = add nsw i32 %29, 6
  %idxprom45 = sext i32 %add to i64
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingListPresentFlag46 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 133
  %arrayidx47 = getelementptr inbounds [8 x i32], [8 x i32]* %ScalingListPresentFlag46, i32 0, i64 %idxprom45
  %31 = load i32, i32* %arrayidx47, align 4
  %tobool48 = icmp ne i32 %31, 0
  br i1 %tobool48, label %if.then.49, label %if.end.101

if.then.49:                                       ; preds = %land.lhs.true
  %32 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8input, i32 0, i64 %idxprom50
  %arraydecay52 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx51, i32 0, i32 0
  store i16* %arraydecay52, i16** %ScalingList, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %33 to i64
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* @matrix8x8_check, i32 0, i64 %idxprom53
  %34 = load i32, i32* %arrayidx54, align 4
  %tobool55 = icmp ne i32 %34, 0
  br i1 %tobool55, label %if.then.56, label %if.else.90

if.then.56:                                       ; preds = %if.then.49
  store i32 0, i32* %fail, align 4
  store i32 0, i32* %cnt, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.74, %if.then.56
  %35 = load i32, i32* %cnt, align 4
  %cmp58 = icmp slt i32 %35, 64
  br i1 %cmp58, label %for.body.60, label %for.end.76

for.body.60:                                      ; preds = %for.cond.57
  %36 = load i32, i32* %cnt, align 4
  %idxprom61 = sext i32 %36 to i64
  %37 = load i16*, i16** %ScalingList, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %37, i64 %idxprom61
  %38 = load i16, i16* %arrayidx62, align 2
  %conv63 = sext i16 %38 to i32
  %cmp64 = icmp slt i32 %conv63, 0
  br i1 %cmp64, label %if.then.72, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %for.body.60
  %39 = load i32, i32* %cnt, align 4
  %idxprom67 = sext i32 %39 to i64
  %40 = load i16*, i16** %ScalingList, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %40, i64 %idxprom67
  %41 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %41 to i32
  %cmp70 = icmp sgt i32 %conv69, 255
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.66, %for.body.60
  store i32 1, i32* %fail, align 4
  br label %for.end.76

if.end.73:                                        ; preds = %lor.lhs.false.66
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %42 = load i32, i32* %cnt, align 4
  %inc75 = add nsw i32 %42, 1
  store i32 %inc75, i32* %cnt, align 4
  br label %for.cond.57

for.end.76:                                       ; preds = %if.then.72, %for.cond.57
  %43 = load i32, i32* %fail, align 4
  %tobool77 = icmp ne i32 %43, 0
  br i1 %tobool77, label %if.then.78, label %if.end.89

if.then.78:                                       ; preds = %for.end.76
  %44 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %44 to i64
  %arrayidx80 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i32 0, i64 %idxprom79
  %arraydecay81 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx80, i32 0, i32 0
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay81)
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  %45 = load i32, i32* %i, align 4
  %cmp84 = icmp eq i32 %45, 7
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.then.78
  %46 = load i16*, i16** %ScalingList, align 8
  %47 = bitcast i16* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast ([64 x i16]* @Quant8_inter_default to i8*), i64 128, i32 2, i1 false)
  br label %if.end.88

if.else.87:                                       ; preds = %if.then.78
  %48 = load i16*, i16** %ScalingList, align 8
  %49 = bitcast i16* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i32 2, i1 false)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %for.end.76
  br label %if.end.100

if.else.90:                                       ; preds = %if.then.49
  %50 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %50 to i64
  %arrayidx92 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i32 0, i64 %idxprom91
  %arraydecay93 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx92, i32 0, i32 0
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay93)
  %51 = load i32, i32* %i, align 4
  %cmp95 = icmp eq i32 %51, 7
  br i1 %cmp95, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %if.else.90
  %52 = load i16*, i16** %ScalingList, align 8
  %53 = bitcast i16* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast ([64 x i16]* @Quant8_inter_default to i8*), i64 128, i32 2, i1 false)
  br label %if.end.99

if.else.98:                                       ; preds = %if.else.90
  %54 = load i16*, i16** %ScalingList, align 8
  %55 = bitcast i16* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i32 2, i1 false)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.then.97
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.89
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %land.lhs.true, %if.end.42
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %56 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %56, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @Init_QMatrix() #0 {
entry:
  %content = alloca i8*, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 132
  %1 = load i32, i32* %ScalingMatrixPresentFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %QmatrixFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 30
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %QmatrixFile, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay)
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %QmatrixFile1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 30
  %arraydecay2 = getelementptr inbounds [200 x i8], [200 x i8]* %QmatrixFile1, i32 0, i32 0
  %call3 = call i8* @GetConfigFileContent(i8* %arraydecay2, i32 0)
  store i8* %call3, i8** %content, align 8
  %4 = load i8*, i8** %content, align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %5 = load i8*, i8** %content, align 8
  %6 = load i8*, i8** %content, align 8
  %call5 = call i64 @strlen(i8* %6) #5
  %conv = trunc i64 %call5 to i32
  call void @ParseMatrix(i8* %5, i32 %conv)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  call void @PatchMatrix()
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i16]* @UseDefaultScalingMatrix4x4Flag to i8*), i8 0, i64 12, i32 2, i1 false)
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 1), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 0), align 2
  %7 = load i8*, i8** %content, align 8
  call void @free(i8* %7) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  ret void
}

declare i8* @GetConfigFileContent(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @CalculateQuantParam() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %present = alloca [6 x i32], align 16
  %no_q_matrix = alloca i32, align 4
  store i32 0, i32* %no_q_matrix, align 4
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 9
  %1 = load i32, i32* %seq_scaling_matrix_present_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 5
  %3 = load i32, i32* %pic_scaling_matrix_present_flag, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %no_q_matrix, align 4
  br label %if.end.31

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = bitcast [6 x i32]* %present to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 16, i1 false)
  %5 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_matrix_present_flag2 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %5, i32 0, i32 9
  %6 = load i32, i32* %seq_scaling_matrix_present_flag2, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_list_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 %idxprom5
  store i32 %10, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  %13 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_matrix_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %13, i32 0, i32 5
  %14 = load i32, i32* %pic_scaling_matrix_present_flag7, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.end.30

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.27, %if.then.9
  %15 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %15, 6
  br i1 %cmp11, label %for.body.12, label %for.end.29

for.body.12:                                      ; preds = %for.cond.10
  %16 = load i32, i32* %i, align 4
  %cmp13 = icmp eq i32 %16, 0
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.12
  %17 = load i32, i32* %i, align 4
  %cmp14 = icmp eq i32 %17, 3
  br i1 %cmp14, label %if.then.15, label %if.else.20

if.then.15:                                       ; preds = %lor.lhs.false, %for.body.12
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_list_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %19, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag, i32 0, i64 %idxprom16
  %20 = load i32, i32* %arrayidx17, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 %idxprom18
  %22 = load i32, i32* %arrayidx19, align 4
  %or = or i32 %22, %20
  store i32 %or, i32* %arrayidx19, align 4
  br label %if.end.26

if.else.20:                                       ; preds = %lor.lhs.false
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_list_present_flag22 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %24, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag22, i32 0, i64 %idxprom21
  %25 = load i32, i32* %arrayidx23, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 %idxprom24
  store i32 %25, i32* %arrayidx25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.20, %if.then.15
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %27 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.10

for.end.29:                                       ; preds = %for.cond.10
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then
  %28 = load i32, i32* %no_q_matrix, align 4
  %cmp32 = icmp eq i32 %28, 1
  br i1 %cmp32, label %if.then.33, label %if.else.201

if.then.33:                                       ; preds = %if.end.31
  store i32 0, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.198, %if.then.33
  %29 = load i32, i32* %k, align 4
  %cmp35 = icmp slt i32 %29, 6
  br i1 %cmp35, label %for.body.36, label %for.end.200

for.body.36:                                      ; preds = %for.cond.34
  store i32 0, i32* %j, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.195, %for.body.36
  %30 = load i32, i32* %j, align 4
  %cmp38 = icmp slt i32 %30, 4
  br i1 %cmp38, label %for.body.39, label %for.end.197

for.body.39:                                      ; preds = %for.cond.37
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.192, %for.body.39
  %31 = load i32, i32* %i, align 4
  %cmp41 = icmp slt i32 %31, 4
  br i1 %cmp41, label %for.body.42, label %for.end.194

for.body.42:                                      ; preds = %for.cond.40
  %32 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %32 to i64
  %33 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %33 to i64
  %34 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx46, i32 0, i64 %idxprom44
  %arrayidx48 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx47, i32 0, i64 %idxprom43
  %35 = load i32, i32* %arrayidx48, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i32 0, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx52, i32 0, i64 %idxprom50
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx53, i32 0, i64 %idxprom49
  store i32 %35, i32* %arrayidx54, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %39 to i64
  %40 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %40 to i64
  %41 = load i32, i32* %k, align 4
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx58, i32 0, i64 %idxprom56
  %arrayidx60 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx59, i32 0, i64 %idxprom55
  %42 = load i32, i32* %arrayidx60, align 4
  %shl = shl i32 %42, 4
  %43 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %44 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %44 to i64
  %45 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %45 to i64
  %arrayidx64 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i32 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx64, i32 0, i64 %idxprom62
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx65, i32 0, i64 %idxprom61
  store i32 %shl, i32* %arrayidx66, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %46 to i64
  %47 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %47 to i64
  %48 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %48 to i64
  %arrayidx70 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx70, i32 0, i64 %idxprom68
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx71, i32 0, i64 %idxprom67
  %49 = load i32, i32* %arrayidx72, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %50 to i64
  %51 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %51 to i64
  %52 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %52 to i64
  %arrayidx76 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx76, i32 0, i64 %idxprom74
  %arrayidx78 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx77, i32 0, i64 %idxprom73
  store i32 %49, i32* %arrayidx78, align 4
  %53 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %53 to i64
  %54 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %54 to i64
  %55 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %55 to i64
  %arrayidx82 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx82, i32 0, i64 %idxprom80
  %arrayidx84 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx83, i32 0, i64 %idxprom79
  %56 = load i32, i32* %arrayidx84, align 4
  %shl85 = shl i32 %56, 4
  %57 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %57 to i64
  %58 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %58 to i64
  %59 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %59 to i64
  %arrayidx89 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx89, i32 0, i64 %idxprom87
  %arrayidx91 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx90, i32 0, i64 %idxprom86
  store i32 %shl85, i32* %arrayidx91, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %60 to i64
  %61 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %61 to i64
  %62 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %62 to i64
  %arrayidx95 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom94
  %arrayidx96 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx95, i32 0, i64 %idxprom93
  %arrayidx97 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx96, i32 0, i64 %idxprom92
  %63 = load i32, i32* %arrayidx97, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %64 to i64
  %65 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %65 to i64
  %66 = load i32, i32* %k, align 4
  %idxprom100 = sext i32 %66 to i64
  %arrayidx101 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx101, i32 0, i64 %idxprom99
  %arrayidx103 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx102, i32 0, i64 %idxprom98
  store i32 %63, i32* %arrayidx103, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %67 to i64
  %68 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %68 to i64
  %69 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %69 to i64
  %arrayidx107 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx107, i32 0, i64 %idxprom105
  %arrayidx109 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx108, i32 0, i64 %idxprom104
  %70 = load i32, i32* %arrayidx109, align 4
  %shl110 = shl i32 %70, 4
  %71 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %71 to i64
  %72 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %72 to i64
  %73 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %73 to i64
  %arrayidx114 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom113
  %arrayidx115 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx114, i32 0, i64 %idxprom112
  %arrayidx116 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx115, i32 0, i64 %idxprom111
  store i32 %shl110, i32* %arrayidx116, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %74 to i64
  %75 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %75 to i64
  %76 = load i32, i32* %k, align 4
  %idxprom119 = sext i32 %76 to i64
  %arrayidx120 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom119
  %arrayidx121 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx120, i32 0, i64 %idxprom118
  %arrayidx122 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx121, i32 0, i64 %idxprom117
  %77 = load i32, i32* %arrayidx122, align 4
  %78 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %78 to i64
  %79 = load i32, i32* %j, align 4
  %idxprom124 = sext i32 %79 to i64
  %80 = load i32, i32* %k, align 4
  %idxprom125 = sext i32 %80 to i64
  %arrayidx126 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i32 0, i64 %idxprom125
  %arrayidx127 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx126, i32 0, i64 %idxprom124
  %arrayidx128 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx127, i32 0, i64 %idxprom123
  store i32 %77, i32* %arrayidx128, align 4
  %81 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %81 to i64
  %82 = load i32, i32* %j, align 4
  %idxprom130 = sext i32 %82 to i64
  %83 = load i32, i32* %k, align 4
  %idxprom131 = sext i32 %83 to i64
  %arrayidx132 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx132, i32 0, i64 %idxprom130
  %arrayidx134 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx133, i32 0, i64 %idxprom129
  %84 = load i32, i32* %arrayidx134, align 4
  %shl135 = shl i32 %84, 4
  %85 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %85 to i64
  %86 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %86 to i64
  %87 = load i32, i32* %k, align 4
  %idxprom138 = sext i32 %87 to i64
  %arrayidx139 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i32 0, i64 %idxprom138
  %arrayidx140 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx139, i32 0, i64 %idxprom137
  %arrayidx141 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx140, i32 0, i64 %idxprom136
  store i32 %shl135, i32* %arrayidx141, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %88 to i64
  %89 = load i32, i32* %j, align 4
  %idxprom143 = sext i32 %89 to i64
  %90 = load i32, i32* %k, align 4
  %idxprom144 = sext i32 %90 to i64
  %arrayidx145 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom144
  %arrayidx146 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx145, i32 0, i64 %idxprom143
  %arrayidx147 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx146, i32 0, i64 %idxprom142
  %91 = load i32, i32* %arrayidx147, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %92 to i64
  %93 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %93 to i64
  %94 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %94 to i64
  %arrayidx151 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom150
  %arrayidx152 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx151, i32 0, i64 %idxprom149
  %arrayidx153 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx152, i32 0, i64 %idxprom148
  store i32 %91, i32* %arrayidx153, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %95 to i64
  %96 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %96 to i64
  %97 = load i32, i32* %k, align 4
  %idxprom156 = sext i32 %97 to i64
  %arrayidx157 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom156
  %arrayidx158 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx157, i32 0, i64 %idxprom155
  %arrayidx159 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx158, i32 0, i64 %idxprom154
  %98 = load i32, i32* %arrayidx159, align 4
  %shl160 = shl i32 %98, 4
  %99 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %100 to i64
  %101 = load i32, i32* %k, align 4
  %idxprom163 = sext i32 %101 to i64
  %arrayidx164 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx164, i32 0, i64 %idxprom162
  %arrayidx166 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx165, i32 0, i64 %idxprom161
  store i32 %shl160, i32* %arrayidx166, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %102 to i64
  %103 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %103 to i64
  %104 = load i32, i32* %k, align 4
  %idxprom169 = sext i32 %104 to i64
  %arrayidx170 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom169
  %arrayidx171 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx170, i32 0, i64 %idxprom168
  %arrayidx172 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx171, i32 0, i64 %idxprom167
  %105 = load i32, i32* %arrayidx172, align 4
  %106 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %106 to i64
  %107 = load i32, i32* %j, align 4
  %idxprom174 = sext i32 %107 to i64
  %108 = load i32, i32* %k, align 4
  %idxprom175 = sext i32 %108 to i64
  %arrayidx176 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i32 0, i64 1), i32 0, i64 %idxprom175
  %arrayidx177 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx176, i32 0, i64 %idxprom174
  %arrayidx178 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx177, i32 0, i64 %idxprom173
  store i32 %105, i32* %arrayidx178, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %109 to i64
  %110 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %110 to i64
  %111 = load i32, i32* %k, align 4
  %idxprom181 = sext i32 %111 to i64
  %arrayidx182 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom181
  %arrayidx183 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx182, i32 0, i64 %idxprom180
  %arrayidx184 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx183, i32 0, i64 %idxprom179
  %112 = load i32, i32* %arrayidx184, align 4
  %shl185 = shl i32 %112, 4
  %113 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %113 to i64
  %114 = load i32, i32* %j, align 4
  %idxprom187 = sext i32 %114 to i64
  %115 = load i32, i32* %k, align 4
  %idxprom188 = sext i32 %115 to i64
  %arrayidx189 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i32 0, i64 1), i32 0, i64 %idxprom188
  %arrayidx190 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx189, i32 0, i64 %idxprom187
  %arrayidx191 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx190, i32 0, i64 %idxprom186
  store i32 %shl185, i32* %arrayidx191, align 4
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.42
  %116 = load i32, i32* %i, align 4
  %inc193 = add nsw i32 %116, 1
  store i32 %inc193, i32* %i, align 4
  br label %for.cond.40

for.end.194:                                      ; preds = %for.cond.40
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.end.194
  %117 = load i32, i32* %j, align 4
  %inc196 = add nsw i32 %117, 1
  store i32 %inc196, i32* %j, align 4
  br label %for.cond.37

for.end.197:                                      ; preds = %for.cond.37
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.end.197
  %118 = load i32, i32* %k, align 4
  %inc199 = add nsw i32 %118, 1
  store i32 %inc199, i32* %k, align 4
  br label %for.cond.34

for.end.200:                                      ; preds = %for.cond.34
  br label %if.end.682

if.else.201:                                      ; preds = %if.end.31
  store i32 0, i32* %k, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.679, %if.else.201
  %119 = load i32, i32* %k, align 4
  %cmp203 = icmp slt i32 %119, 6
  br i1 %cmp203, label %for.body.204, label %for.end.681

for.body.204:                                     ; preds = %for.cond.202
  store i32 0, i32* %j, align 4
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.676, %for.body.204
  %120 = load i32, i32* %j, align 4
  %cmp206 = icmp slt i32 %120, 4
  br i1 %cmp206, label %for.body.207, label %for.end.678

for.body.207:                                     ; preds = %for.cond.205
  store i32 0, i32* %i, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.673, %for.body.207
  %121 = load i32, i32* %i, align 4
  %cmp209 = icmp slt i32 %121, 4
  br i1 %cmp209, label %for.body.210, label %for.end.675

for.body.210:                                     ; preds = %for.cond.208
  %122 = load i32, i32* %i, align 4
  %shl211 = shl i32 %122, 2
  %123 = load i32, i32* %j, align 4
  %add = add nsw i32 %shl211, %123
  store i32 %add, i32* %temp, align 4
  %arrayidx212 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 0
  %124 = load i32, i32* %arrayidx212, align 4
  %tobool213 = icmp ne i32 %124, 0
  br i1 %tobool213, label %lor.lhs.false.214, label %if.then.216

lor.lhs.false.214:                                ; preds = %for.body.210
  %125 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 0), align 2
  %conv = sext i16 %125 to i32
  %tobool215 = icmp ne i32 %conv, 0
  br i1 %tobool215, label %if.then.216, label %if.else.248

if.then.216:                                      ; preds = %lor.lhs.false.214, %for.body.210
  %126 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %126 to i64
  %127 = load i32, i32* %j, align 4
  %idxprom218 = sext i32 %127 to i64
  %128 = load i32, i32* %k, align 4
  %idxprom219 = sext i32 %128 to i64
  %arrayidx220 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom219
  %arrayidx221 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx220, i32 0, i64 %idxprom218
  %arrayidx222 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx221, i32 0, i64 %idxprom217
  %129 = load i32, i32* %arrayidx222, align 4
  %shl223 = shl i32 %129, 4
  %130 = load i32, i32* %temp, align 4
  %idxprom224 = sext i32 %130 to i64
  %arrayidx225 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom224
  %131 = load i16, i16* %arrayidx225, align 2
  %conv226 = sext i16 %131 to i32
  %div = sdiv i32 %shl223, %conv226
  %132 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %132 to i64
  %133 = load i32, i32* %j, align 4
  %idxprom228 = sext i32 %133 to i64
  %134 = load i32, i32* %k, align 4
  %idxprom229 = sext i32 %134 to i64
  %arrayidx230 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i32 0, i64 %idxprom229
  %arrayidx231 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx230, i32 0, i64 %idxprom228
  %arrayidx232 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx231, i32 0, i64 %idxprom227
  store i32 %div, i32* %arrayidx232, align 4
  %135 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %135 to i64
  %136 = load i32, i32* %j, align 4
  %idxprom234 = sext i32 %136 to i64
  %137 = load i32, i32* %k, align 4
  %idxprom235 = sext i32 %137 to i64
  %arrayidx236 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom235
  %arrayidx237 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx236, i32 0, i64 %idxprom234
  %arrayidx238 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx237, i32 0, i64 %idxprom233
  %138 = load i32, i32* %arrayidx238, align 4
  %139 = load i32, i32* %temp, align 4
  %idxprom239 = sext i32 %139 to i64
  %arrayidx240 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom239
  %140 = load i16, i16* %arrayidx240, align 2
  %conv241 = sext i16 %140 to i32
  %mul = mul nsw i32 %138, %conv241
  %141 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %141 to i64
  %142 = load i32, i32* %j, align 4
  %idxprom243 = sext i32 %142 to i64
  %143 = load i32, i32* %k, align 4
  %idxprom244 = sext i32 %143 to i64
  %arrayidx245 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i32 0, i64 %idxprom244
  %arrayidx246 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx245, i32 0, i64 %idxprom243
  %arrayidx247 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx246, i32 0, i64 %idxprom242
  store i32 %mul, i32* %arrayidx247, align 4
  br label %if.end.282

if.else.248:                                      ; preds = %lor.lhs.false.214
  %144 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %144 to i64
  %145 = load i32, i32* %j, align 4
  %idxprom250 = sext i32 %145 to i64
  %146 = load i32, i32* %k, align 4
  %idxprom251 = sext i32 %146 to i64
  %arrayidx252 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom251
  %arrayidx253 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx252, i32 0, i64 %idxprom250
  %arrayidx254 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx253, i32 0, i64 %idxprom249
  %147 = load i32, i32* %arrayidx254, align 4
  %shl255 = shl i32 %147, 4
  %148 = load i32, i32* %temp, align 4
  %idxprom256 = sext i32 %148 to i64
  %arrayidx257 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 0), i32 0, i64 %idxprom256
  %149 = load i16, i16* %arrayidx257, align 2
  %conv258 = sext i16 %149 to i32
  %div259 = sdiv i32 %shl255, %conv258
  %150 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %150 to i64
  %151 = load i32, i32* %j, align 4
  %idxprom261 = sext i32 %151 to i64
  %152 = load i32, i32* %k, align 4
  %idxprom262 = sext i32 %152 to i64
  %arrayidx263 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i32 0, i64 %idxprom262
  %arrayidx264 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx263, i32 0, i64 %idxprom261
  %arrayidx265 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx264, i32 0, i64 %idxprom260
  store i32 %div259, i32* %arrayidx265, align 4
  %153 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %153 to i64
  %154 = load i32, i32* %j, align 4
  %idxprom267 = sext i32 %154 to i64
  %155 = load i32, i32* %k, align 4
  %idxprom268 = sext i32 %155 to i64
  %arrayidx269 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom268
  %arrayidx270 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx269, i32 0, i64 %idxprom267
  %arrayidx271 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx270, i32 0, i64 %idxprom266
  %156 = load i32, i32* %arrayidx271, align 4
  %157 = load i32, i32* %temp, align 4
  %idxprom272 = sext i32 %157 to i64
  %arrayidx273 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 0), i32 0, i64 %idxprom272
  %158 = load i16, i16* %arrayidx273, align 2
  %conv274 = sext i16 %158 to i32
  %mul275 = mul nsw i32 %156, %conv274
  %159 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %159 to i64
  %160 = load i32, i32* %j, align 4
  %idxprom277 = sext i32 %160 to i64
  %161 = load i32, i32* %k, align 4
  %idxprom278 = sext i32 %161 to i64
  %arrayidx279 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i32 0, i64 %idxprom278
  %arrayidx280 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx279, i32 0, i64 %idxprom277
  %arrayidx281 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx280, i32 0, i64 %idxprom276
  store i32 %mul275, i32* %arrayidx281, align 4
  br label %if.end.282

if.end.282:                                       ; preds = %if.else.248, %if.then.216
  %arrayidx283 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 1
  %162 = load i32, i32* %arrayidx283, align 4
  %tobool284 = icmp ne i32 %162, 0
  br i1 %tobool284, label %if.else.310, label %if.then.285

if.then.285:                                      ; preds = %if.end.282
  %163 = load i32, i32* %i, align 4
  %idxprom286 = sext i32 %163 to i64
  %164 = load i32, i32* %j, align 4
  %idxprom287 = sext i32 %164 to i64
  %165 = load i32, i32* %k, align 4
  %idxprom288 = sext i32 %165 to i64
  %arrayidx289 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i32 0, i64 %idxprom288
  %arrayidx290 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx289, i32 0, i64 %idxprom287
  %arrayidx291 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx290, i32 0, i64 %idxprom286
  %166 = load i32, i32* %arrayidx291, align 4
  %167 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %167 to i64
  %168 = load i32, i32* %j, align 4
  %idxprom293 = sext i32 %168 to i64
  %169 = load i32, i32* %k, align 4
  %idxprom294 = sext i32 %169 to i64
  %arrayidx295 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom294
  %arrayidx296 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx295, i32 0, i64 %idxprom293
  %arrayidx297 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx296, i32 0, i64 %idxprom292
  store i32 %166, i32* %arrayidx297, align 4
  %170 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %170 to i64
  %171 = load i32, i32* %j, align 4
  %idxprom299 = sext i32 %171 to i64
  %172 = load i32, i32* %k, align 4
  %idxprom300 = sext i32 %172 to i64
  %arrayidx301 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i32 0, i64 %idxprom300
  %arrayidx302 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx301, i32 0, i64 %idxprom299
  %arrayidx303 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx302, i32 0, i64 %idxprom298
  %173 = load i32, i32* %arrayidx303, align 4
  %174 = load i32, i32* %i, align 4
  %idxprom304 = sext i32 %174 to i64
  %175 = load i32, i32* %j, align 4
  %idxprom305 = sext i32 %175 to i64
  %176 = load i32, i32* %k, align 4
  %idxprom306 = sext i32 %176 to i64
  %arrayidx307 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom306
  %arrayidx308 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx307, i32 0, i64 %idxprom305
  %arrayidx309 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx308, i32 0, i64 %idxprom304
  store i32 %173, i32* %arrayidx309, align 4
  br label %if.end.358

if.else.310:                                      ; preds = %if.end.282
  %177 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %177 to i64
  %178 = load i32, i32* %j, align 4
  %idxprom312 = sext i32 %178 to i64
  %179 = load i32, i32* %k, align 4
  %idxprom313 = sext i32 %179 to i64
  %arrayidx314 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom313
  %arrayidx315 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx314, i32 0, i64 %idxprom312
  %arrayidx316 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx315, i32 0, i64 %idxprom311
  %180 = load i32, i32* %arrayidx316, align 4
  %shl317 = shl i32 %180, 4
  %181 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 1), align 2
  %conv318 = sext i16 %181 to i32
  %tobool319 = icmp ne i32 %conv318, 0
  br i1 %tobool319, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.310
  %182 = load i32, i32* %temp, align 4
  %idxprom320 = sext i32 %182 to i64
  %arrayidx321 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom320
  %183 = load i16, i16* %arrayidx321, align 2
  %conv322 = sext i16 %183 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else.310
  %184 = load i32, i32* %temp, align 4
  %idxprom323 = sext i32 %184 to i64
  %arrayidx324 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 1), i32 0, i64 %idxprom323
  %185 = load i16, i16* %arrayidx324, align 2
  %conv325 = sext i16 %185 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv322, %cond.true ], [ %conv325, %cond.false ]
  %div326 = sdiv i32 %shl317, %cond
  %186 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %186 to i64
  %187 = load i32, i32* %j, align 4
  %idxprom328 = sext i32 %187 to i64
  %188 = load i32, i32* %k, align 4
  %idxprom329 = sext i32 %188 to i64
  %arrayidx330 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom329
  %arrayidx331 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx330, i32 0, i64 %idxprom328
  %arrayidx332 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx331, i32 0, i64 %idxprom327
  store i32 %div326, i32* %arrayidx332, align 4
  %189 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %189 to i64
  %190 = load i32, i32* %j, align 4
  %idxprom334 = sext i32 %190 to i64
  %191 = load i32, i32* %k, align 4
  %idxprom335 = sext i32 %191 to i64
  %arrayidx336 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom335
  %arrayidx337 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx336, i32 0, i64 %idxprom334
  %arrayidx338 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx337, i32 0, i64 %idxprom333
  %192 = load i32, i32* %arrayidx338, align 4
  %193 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 1), align 2
  %conv339 = sext i16 %193 to i32
  %tobool340 = icmp ne i32 %conv339, 0
  br i1 %tobool340, label %cond.true.341, label %cond.false.345

cond.true.341:                                    ; preds = %cond.end
  %194 = load i32, i32* %temp, align 4
  %idxprom342 = sext i32 %194 to i64
  %arrayidx343 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom342
  %195 = load i16, i16* %arrayidx343, align 2
  %conv344 = sext i16 %195 to i32
  br label %cond.end.349

cond.false.345:                                   ; preds = %cond.end
  %196 = load i32, i32* %temp, align 4
  %idxprom346 = sext i32 %196 to i64
  %arrayidx347 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 1), i32 0, i64 %idxprom346
  %197 = load i16, i16* %arrayidx347, align 2
  %conv348 = sext i16 %197 to i32
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.false.345, %cond.true.341
  %cond350 = phi i32 [ %conv344, %cond.true.341 ], [ %conv348, %cond.false.345 ]
  %mul351 = mul nsw i32 %192, %cond350
  %198 = load i32, i32* %i, align 4
  %idxprom352 = sext i32 %198 to i64
  %199 = load i32, i32* %j, align 4
  %idxprom353 = sext i32 %199 to i64
  %200 = load i32, i32* %k, align 4
  %idxprom354 = sext i32 %200 to i64
  %arrayidx355 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom354
  %arrayidx356 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx355, i32 0, i64 %idxprom353
  %arrayidx357 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx356, i32 0, i64 %idxprom352
  store i32 %mul351, i32* %arrayidx357, align 4
  br label %if.end.358

if.end.358:                                       ; preds = %cond.end.349, %if.then.285
  %arrayidx359 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 2
  %201 = load i32, i32* %arrayidx359, align 4
  %tobool360 = icmp ne i32 %201, 0
  br i1 %tobool360, label %if.else.386, label %if.then.361

if.then.361:                                      ; preds = %if.end.358
  %202 = load i32, i32* %i, align 4
  %idxprom362 = sext i32 %202 to i64
  %203 = load i32, i32* %j, align 4
  %idxprom363 = sext i32 %203 to i64
  %204 = load i32, i32* %k, align 4
  %idxprom364 = sext i32 %204 to i64
  %arrayidx365 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom364
  %arrayidx366 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx365, i32 0, i64 %idxprom363
  %arrayidx367 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx366, i32 0, i64 %idxprom362
  %205 = load i32, i32* %arrayidx367, align 4
  %206 = load i32, i32* %i, align 4
  %idxprom368 = sext i32 %206 to i64
  %207 = load i32, i32* %j, align 4
  %idxprom369 = sext i32 %207 to i64
  %208 = load i32, i32* %k, align 4
  %idxprom370 = sext i32 %208 to i64
  %arrayidx371 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom370
  %arrayidx372 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx371, i32 0, i64 %idxprom369
  %arrayidx373 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx372, i32 0, i64 %idxprom368
  store i32 %205, i32* %arrayidx373, align 4
  %209 = load i32, i32* %i, align 4
  %idxprom374 = sext i32 %209 to i64
  %210 = load i32, i32* %j, align 4
  %idxprom375 = sext i32 %210 to i64
  %211 = load i32, i32* %k, align 4
  %idxprom376 = sext i32 %211 to i64
  %arrayidx377 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom376
  %arrayidx378 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx377, i32 0, i64 %idxprom375
  %arrayidx379 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx378, i32 0, i64 %idxprom374
  %212 = load i32, i32* %arrayidx379, align 4
  %213 = load i32, i32* %i, align 4
  %idxprom380 = sext i32 %213 to i64
  %214 = load i32, i32* %j, align 4
  %idxprom381 = sext i32 %214 to i64
  %215 = load i32, i32* %k, align 4
  %idxprom382 = sext i32 %215 to i64
  %arrayidx383 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom382
  %arrayidx384 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx383, i32 0, i64 %idxprom381
  %arrayidx385 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx384, i32 0, i64 %idxprom380
  store i32 %212, i32* %arrayidx385, align 4
  br label %if.end.438

if.else.386:                                      ; preds = %if.end.358
  %216 = load i32, i32* %i, align 4
  %idxprom387 = sext i32 %216 to i64
  %217 = load i32, i32* %j, align 4
  %idxprom388 = sext i32 %217 to i64
  %218 = load i32, i32* %k, align 4
  %idxprom389 = sext i32 %218 to i64
  %arrayidx390 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom389
  %arrayidx391 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx390, i32 0, i64 %idxprom388
  %arrayidx392 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx391, i32 0, i64 %idxprom387
  %219 = load i32, i32* %arrayidx392, align 4
  %shl393 = shl i32 %219, 4
  %220 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 2), align 2
  %conv394 = sext i16 %220 to i32
  %tobool395 = icmp ne i32 %conv394, 0
  br i1 %tobool395, label %cond.true.396, label %cond.false.400

cond.true.396:                                    ; preds = %if.else.386
  %221 = load i32, i32* %temp, align 4
  %idxprom397 = sext i32 %221 to i64
  %arrayidx398 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom397
  %222 = load i16, i16* %arrayidx398, align 2
  %conv399 = sext i16 %222 to i32
  br label %cond.end.404

cond.false.400:                                   ; preds = %if.else.386
  %223 = load i32, i32* %temp, align 4
  %idxprom401 = sext i32 %223 to i64
  %arrayidx402 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 2), i32 0, i64 %idxprom401
  %224 = load i16, i16* %arrayidx402, align 2
  %conv403 = sext i16 %224 to i32
  br label %cond.end.404

cond.end.404:                                     ; preds = %cond.false.400, %cond.true.396
  %cond405 = phi i32 [ %conv399, %cond.true.396 ], [ %conv403, %cond.false.400 ]
  %div406 = sdiv i32 %shl393, %cond405
  %225 = load i32, i32* %i, align 4
  %idxprom407 = sext i32 %225 to i64
  %226 = load i32, i32* %j, align 4
  %idxprom408 = sext i32 %226 to i64
  %227 = load i32, i32* %k, align 4
  %idxprom409 = sext i32 %227 to i64
  %arrayidx410 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom409
  %arrayidx411 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx410, i32 0, i64 %idxprom408
  %arrayidx412 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx411, i32 0, i64 %idxprom407
  store i32 %div406, i32* %arrayidx412, align 4
  %228 = load i32, i32* %i, align 4
  %idxprom413 = sext i32 %228 to i64
  %229 = load i32, i32* %j, align 4
  %idxprom414 = sext i32 %229 to i64
  %230 = load i32, i32* %k, align 4
  %idxprom415 = sext i32 %230 to i64
  %arrayidx416 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom415
  %arrayidx417 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx416, i32 0, i64 %idxprom414
  %arrayidx418 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx417, i32 0, i64 %idxprom413
  %231 = load i32, i32* %arrayidx418, align 4
  %232 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 2), align 2
  %conv419 = sext i16 %232 to i32
  %tobool420 = icmp ne i32 %conv419, 0
  br i1 %tobool420, label %cond.true.421, label %cond.false.425

cond.true.421:                                    ; preds = %cond.end.404
  %233 = load i32, i32* %temp, align 4
  %idxprom422 = sext i32 %233 to i64
  %arrayidx423 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i32 0, i64 %idxprom422
  %234 = load i16, i16* %arrayidx423, align 2
  %conv424 = sext i16 %234 to i32
  br label %cond.end.429

cond.false.425:                                   ; preds = %cond.end.404
  %235 = load i32, i32* %temp, align 4
  %idxprom426 = sext i32 %235 to i64
  %arrayidx427 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 2), i32 0, i64 %idxprom426
  %236 = load i16, i16* %arrayidx427, align 2
  %conv428 = sext i16 %236 to i32
  br label %cond.end.429

cond.end.429:                                     ; preds = %cond.false.425, %cond.true.421
  %cond430 = phi i32 [ %conv424, %cond.true.421 ], [ %conv428, %cond.false.425 ]
  %mul431 = mul nsw i32 %231, %cond430
  %237 = load i32, i32* %i, align 4
  %idxprom432 = sext i32 %237 to i64
  %238 = load i32, i32* %j, align 4
  %idxprom433 = sext i32 %238 to i64
  %239 = load i32, i32* %k, align 4
  %idxprom434 = sext i32 %239 to i64
  %arrayidx435 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom434
  %arrayidx436 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx435, i32 0, i64 %idxprom433
  %arrayidx437 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx436, i32 0, i64 %idxprom432
  store i32 %mul431, i32* %arrayidx437, align 4
  br label %if.end.438

if.end.438:                                       ; preds = %cond.end.429, %if.then.361
  %arrayidx439 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 3
  %240 = load i32, i32* %arrayidx439, align 4
  %tobool440 = icmp ne i32 %240, 0
  br i1 %tobool440, label %lor.lhs.false.441, label %if.then.444

lor.lhs.false.441:                                ; preds = %if.end.438
  %241 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 3), align 2
  %conv442 = sext i16 %241 to i32
  %tobool443 = icmp ne i32 %conv442, 0
  br i1 %tobool443, label %if.then.444, label %if.else.478

if.then.444:                                      ; preds = %lor.lhs.false.441, %if.end.438
  %242 = load i32, i32* %i, align 4
  %idxprom445 = sext i32 %242 to i64
  %243 = load i32, i32* %j, align 4
  %idxprom446 = sext i32 %243 to i64
  %244 = load i32, i32* %k, align 4
  %idxprom447 = sext i32 %244 to i64
  %arrayidx448 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom447
  %arrayidx449 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx448, i32 0, i64 %idxprom446
  %arrayidx450 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx449, i32 0, i64 %idxprom445
  %245 = load i32, i32* %arrayidx450, align 4
  %shl451 = shl i32 %245, 4
  %246 = load i32, i32* %temp, align 4
  %idxprom452 = sext i32 %246 to i64
  %arrayidx453 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom452
  %247 = load i16, i16* %arrayidx453, align 2
  %conv454 = sext i16 %247 to i32
  %div455 = sdiv i32 %shl451, %conv454
  %248 = load i32, i32* %i, align 4
  %idxprom456 = sext i32 %248 to i64
  %249 = load i32, i32* %j, align 4
  %idxprom457 = sext i32 %249 to i64
  %250 = load i32, i32* %k, align 4
  %idxprom458 = sext i32 %250 to i64
  %arrayidx459 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i32 0, i64 %idxprom458
  %arrayidx460 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx459, i32 0, i64 %idxprom457
  %arrayidx461 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx460, i32 0, i64 %idxprom456
  store i32 %div455, i32* %arrayidx461, align 4
  %251 = load i32, i32* %i, align 4
  %idxprom462 = sext i32 %251 to i64
  %252 = load i32, i32* %j, align 4
  %idxprom463 = sext i32 %252 to i64
  %253 = load i32, i32* %k, align 4
  %idxprom464 = sext i32 %253 to i64
  %arrayidx465 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom464
  %arrayidx466 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx465, i32 0, i64 %idxprom463
  %arrayidx467 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx466, i32 0, i64 %idxprom462
  %254 = load i32, i32* %arrayidx467, align 4
  %255 = load i32, i32* %temp, align 4
  %idxprom468 = sext i32 %255 to i64
  %arrayidx469 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom468
  %256 = load i16, i16* %arrayidx469, align 2
  %conv470 = sext i16 %256 to i32
  %mul471 = mul nsw i32 %254, %conv470
  %257 = load i32, i32* %i, align 4
  %idxprom472 = sext i32 %257 to i64
  %258 = load i32, i32* %j, align 4
  %idxprom473 = sext i32 %258 to i64
  %259 = load i32, i32* %k, align 4
  %idxprom474 = sext i32 %259 to i64
  %arrayidx475 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i32 0, i64 %idxprom474
  %arrayidx476 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx475, i32 0, i64 %idxprom473
  %arrayidx477 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx476, i32 0, i64 %idxprom472
  store i32 %mul471, i32* %arrayidx477, align 4
  br label %if.end.512

if.else.478:                                      ; preds = %lor.lhs.false.441
  %260 = load i32, i32* %i, align 4
  %idxprom479 = sext i32 %260 to i64
  %261 = load i32, i32* %j, align 4
  %idxprom480 = sext i32 %261 to i64
  %262 = load i32, i32* %k, align 4
  %idxprom481 = sext i32 %262 to i64
  %arrayidx482 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom481
  %arrayidx483 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx482, i32 0, i64 %idxprom480
  %arrayidx484 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx483, i32 0, i64 %idxprom479
  %263 = load i32, i32* %arrayidx484, align 4
  %shl485 = shl i32 %263, 4
  %264 = load i32, i32* %temp, align 4
  %idxprom486 = sext i32 %264 to i64
  %arrayidx487 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 3), i32 0, i64 %idxprom486
  %265 = load i16, i16* %arrayidx487, align 2
  %conv488 = sext i16 %265 to i32
  %div489 = sdiv i32 %shl485, %conv488
  %266 = load i32, i32* %i, align 4
  %idxprom490 = sext i32 %266 to i64
  %267 = load i32, i32* %j, align 4
  %idxprom491 = sext i32 %267 to i64
  %268 = load i32, i32* %k, align 4
  %idxprom492 = sext i32 %268 to i64
  %arrayidx493 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i32 0, i64 %idxprom492
  %arrayidx494 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx493, i32 0, i64 %idxprom491
  %arrayidx495 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx494, i32 0, i64 %idxprom490
  store i32 %div489, i32* %arrayidx495, align 4
  %269 = load i32, i32* %i, align 4
  %idxprom496 = sext i32 %269 to i64
  %270 = load i32, i32* %j, align 4
  %idxprom497 = sext i32 %270 to i64
  %271 = load i32, i32* %k, align 4
  %idxprom498 = sext i32 %271 to i64
  %arrayidx499 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom498
  %arrayidx500 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx499, i32 0, i64 %idxprom497
  %arrayidx501 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx500, i32 0, i64 %idxprom496
  %272 = load i32, i32* %arrayidx501, align 4
  %273 = load i32, i32* %temp, align 4
  %idxprom502 = sext i32 %273 to i64
  %arrayidx503 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 3), i32 0, i64 %idxprom502
  %274 = load i16, i16* %arrayidx503, align 2
  %conv504 = sext i16 %274 to i32
  %mul505 = mul nsw i32 %272, %conv504
  %275 = load i32, i32* %i, align 4
  %idxprom506 = sext i32 %275 to i64
  %276 = load i32, i32* %j, align 4
  %idxprom507 = sext i32 %276 to i64
  %277 = load i32, i32* %k, align 4
  %idxprom508 = sext i32 %277 to i64
  %arrayidx509 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i32 0, i64 %idxprom508
  %arrayidx510 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx509, i32 0, i64 %idxprom507
  %arrayidx511 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx510, i32 0, i64 %idxprom506
  store i32 %mul505, i32* %arrayidx511, align 4
  br label %if.end.512

if.end.512:                                       ; preds = %if.else.478, %if.then.444
  %arrayidx513 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 4
  %278 = load i32, i32* %arrayidx513, align 4
  %tobool514 = icmp ne i32 %278, 0
  br i1 %tobool514, label %if.else.540, label %if.then.515

if.then.515:                                      ; preds = %if.end.512
  %279 = load i32, i32* %i, align 4
  %idxprom516 = sext i32 %279 to i64
  %280 = load i32, i32* %j, align 4
  %idxprom517 = sext i32 %280 to i64
  %281 = load i32, i32* %k, align 4
  %idxprom518 = sext i32 %281 to i64
  %arrayidx519 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i32 0, i64 %idxprom518
  %arrayidx520 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx519, i32 0, i64 %idxprom517
  %arrayidx521 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx520, i32 0, i64 %idxprom516
  %282 = load i32, i32* %arrayidx521, align 4
  %283 = load i32, i32* %i, align 4
  %idxprom522 = sext i32 %283 to i64
  %284 = load i32, i32* %j, align 4
  %idxprom523 = sext i32 %284 to i64
  %285 = load i32, i32* %k, align 4
  %idxprom524 = sext i32 %285 to i64
  %arrayidx525 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom524
  %arrayidx526 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx525, i32 0, i64 %idxprom523
  %arrayidx527 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx526, i32 0, i64 %idxprom522
  store i32 %282, i32* %arrayidx527, align 4
  %286 = load i32, i32* %i, align 4
  %idxprom528 = sext i32 %286 to i64
  %287 = load i32, i32* %j, align 4
  %idxprom529 = sext i32 %287 to i64
  %288 = load i32, i32* %k, align 4
  %idxprom530 = sext i32 %288 to i64
  %arrayidx531 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i32 0, i64 %idxprom530
  %arrayidx532 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx531, i32 0, i64 %idxprom529
  %arrayidx533 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx532, i32 0, i64 %idxprom528
  %289 = load i32, i32* %arrayidx533, align 4
  %290 = load i32, i32* %i, align 4
  %idxprom534 = sext i32 %290 to i64
  %291 = load i32, i32* %j, align 4
  %idxprom535 = sext i32 %291 to i64
  %292 = load i32, i32* %k, align 4
  %idxprom536 = sext i32 %292 to i64
  %arrayidx537 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom536
  %arrayidx538 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx537, i32 0, i64 %idxprom535
  %arrayidx539 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx538, i32 0, i64 %idxprom534
  store i32 %289, i32* %arrayidx539, align 4
  br label %if.end.592

if.else.540:                                      ; preds = %if.end.512
  %293 = load i32, i32* %i, align 4
  %idxprom541 = sext i32 %293 to i64
  %294 = load i32, i32* %j, align 4
  %idxprom542 = sext i32 %294 to i64
  %295 = load i32, i32* %k, align 4
  %idxprom543 = sext i32 %295 to i64
  %arrayidx544 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom543
  %arrayidx545 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx544, i32 0, i64 %idxprom542
  %arrayidx546 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx545, i32 0, i64 %idxprom541
  %296 = load i32, i32* %arrayidx546, align 4
  %shl547 = shl i32 %296, 4
  %297 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 4), align 2
  %conv548 = sext i16 %297 to i32
  %tobool549 = icmp ne i32 %conv548, 0
  br i1 %tobool549, label %cond.true.550, label %cond.false.554

cond.true.550:                                    ; preds = %if.else.540
  %298 = load i32, i32* %temp, align 4
  %idxprom551 = sext i32 %298 to i64
  %arrayidx552 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom551
  %299 = load i16, i16* %arrayidx552, align 2
  %conv553 = sext i16 %299 to i32
  br label %cond.end.558

cond.false.554:                                   ; preds = %if.else.540
  %300 = load i32, i32* %temp, align 4
  %idxprom555 = sext i32 %300 to i64
  %arrayidx556 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 4), i32 0, i64 %idxprom555
  %301 = load i16, i16* %arrayidx556, align 2
  %conv557 = sext i16 %301 to i32
  br label %cond.end.558

cond.end.558:                                     ; preds = %cond.false.554, %cond.true.550
  %cond559 = phi i32 [ %conv553, %cond.true.550 ], [ %conv557, %cond.false.554 ]
  %div560 = sdiv i32 %shl547, %cond559
  %302 = load i32, i32* %i, align 4
  %idxprom561 = sext i32 %302 to i64
  %303 = load i32, i32* %j, align 4
  %idxprom562 = sext i32 %303 to i64
  %304 = load i32, i32* %k, align 4
  %idxprom563 = sext i32 %304 to i64
  %arrayidx564 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom563
  %arrayidx565 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx564, i32 0, i64 %idxprom562
  %arrayidx566 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx565, i32 0, i64 %idxprom561
  store i32 %div560, i32* %arrayidx566, align 4
  %305 = load i32, i32* %i, align 4
  %idxprom567 = sext i32 %305 to i64
  %306 = load i32, i32* %j, align 4
  %idxprom568 = sext i32 %306 to i64
  %307 = load i32, i32* %k, align 4
  %idxprom569 = sext i32 %307 to i64
  %arrayidx570 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom569
  %arrayidx571 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx570, i32 0, i64 %idxprom568
  %arrayidx572 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx571, i32 0, i64 %idxprom567
  %308 = load i32, i32* %arrayidx572, align 4
  %309 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 4), align 2
  %conv573 = sext i16 %309 to i32
  %tobool574 = icmp ne i32 %conv573, 0
  br i1 %tobool574, label %cond.true.575, label %cond.false.579

cond.true.575:                                    ; preds = %cond.end.558
  %310 = load i32, i32* %temp, align 4
  %idxprom576 = sext i32 %310 to i64
  %arrayidx577 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom576
  %311 = load i16, i16* %arrayidx577, align 2
  %conv578 = sext i16 %311 to i32
  br label %cond.end.583

cond.false.579:                                   ; preds = %cond.end.558
  %312 = load i32, i32* %temp, align 4
  %idxprom580 = sext i32 %312 to i64
  %arrayidx581 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 4), i32 0, i64 %idxprom580
  %313 = load i16, i16* %arrayidx581, align 2
  %conv582 = sext i16 %313 to i32
  br label %cond.end.583

cond.end.583:                                     ; preds = %cond.false.579, %cond.true.575
  %cond584 = phi i32 [ %conv578, %cond.true.575 ], [ %conv582, %cond.false.579 ]
  %mul585 = mul nsw i32 %308, %cond584
  %314 = load i32, i32* %i, align 4
  %idxprom586 = sext i32 %314 to i64
  %315 = load i32, i32* %j, align 4
  %idxprom587 = sext i32 %315 to i64
  %316 = load i32, i32* %k, align 4
  %idxprom588 = sext i32 %316 to i64
  %arrayidx589 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom588
  %arrayidx590 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx589, i32 0, i64 %idxprom587
  %arrayidx591 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx590, i32 0, i64 %idxprom586
  store i32 %mul585, i32* %arrayidx591, align 4
  br label %if.end.592

if.end.592:                                       ; preds = %cond.end.583, %if.then.515
  %arrayidx593 = getelementptr inbounds [6 x i32], [6 x i32]* %present, i32 0, i64 5
  %317 = load i32, i32* %arrayidx593, align 4
  %tobool594 = icmp ne i32 %317, 0
  br i1 %tobool594, label %if.else.620, label %if.then.595

if.then.595:                                      ; preds = %if.end.592
  %318 = load i32, i32* %i, align 4
  %idxprom596 = sext i32 %318 to i64
  %319 = load i32, i32* %j, align 4
  %idxprom597 = sext i32 %319 to i64
  %320 = load i32, i32* %k, align 4
  %idxprom598 = sext i32 %320 to i64
  %arrayidx599 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom598
  %arrayidx600 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx599, i32 0, i64 %idxprom597
  %arrayidx601 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx600, i32 0, i64 %idxprom596
  %321 = load i32, i32* %arrayidx601, align 4
  %322 = load i32, i32* %i, align 4
  %idxprom602 = sext i32 %322 to i64
  %323 = load i32, i32* %j, align 4
  %idxprom603 = sext i32 %323 to i64
  %324 = load i32, i32* %k, align 4
  %idxprom604 = sext i32 %324 to i64
  %arrayidx605 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i32 0, i64 1), i32 0, i64 %idxprom604
  %arrayidx606 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx605, i32 0, i64 %idxprom603
  %arrayidx607 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx606, i32 0, i64 %idxprom602
  store i32 %321, i32* %arrayidx607, align 4
  %325 = load i32, i32* %i, align 4
  %idxprom608 = sext i32 %325 to i64
  %326 = load i32, i32* %j, align 4
  %idxprom609 = sext i32 %326 to i64
  %327 = load i32, i32* %k, align 4
  %idxprom610 = sext i32 %327 to i64
  %arrayidx611 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom610
  %arrayidx612 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx611, i32 0, i64 %idxprom609
  %arrayidx613 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx612, i32 0, i64 %idxprom608
  %328 = load i32, i32* %arrayidx613, align 4
  %329 = load i32, i32* %i, align 4
  %idxprom614 = sext i32 %329 to i64
  %330 = load i32, i32* %j, align 4
  %idxprom615 = sext i32 %330 to i64
  %331 = load i32, i32* %k, align 4
  %idxprom616 = sext i32 %331 to i64
  %arrayidx617 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i32 0, i64 1), i32 0, i64 %idxprom616
  %arrayidx618 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx617, i32 0, i64 %idxprom615
  %arrayidx619 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx618, i32 0, i64 %idxprom614
  store i32 %328, i32* %arrayidx619, align 4
  br label %if.end.672

if.else.620:                                      ; preds = %if.end.592
  %332 = load i32, i32* %i, align 4
  %idxprom621 = sext i32 %332 to i64
  %333 = load i32, i32* %j, align 4
  %idxprom622 = sext i32 %333 to i64
  %334 = load i32, i32* %k, align 4
  %idxprom623 = sext i32 %334 to i64
  %arrayidx624 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom623
  %arrayidx625 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx624, i32 0, i64 %idxprom622
  %arrayidx626 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx625, i32 0, i64 %idxprom621
  %335 = load i32, i32* %arrayidx626, align 4
  %shl627 = shl i32 %335, 4
  %336 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 5), align 2
  %conv628 = sext i16 %336 to i32
  %tobool629 = icmp ne i32 %conv628, 0
  br i1 %tobool629, label %cond.true.630, label %cond.false.634

cond.true.630:                                    ; preds = %if.else.620
  %337 = load i32, i32* %temp, align 4
  %idxprom631 = sext i32 %337 to i64
  %arrayidx632 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom631
  %338 = load i16, i16* %arrayidx632, align 2
  %conv633 = sext i16 %338 to i32
  br label %cond.end.638

cond.false.634:                                   ; preds = %if.else.620
  %339 = load i32, i32* %temp, align 4
  %idxprom635 = sext i32 %339 to i64
  %arrayidx636 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 5), i32 0, i64 %idxprom635
  %340 = load i16, i16* %arrayidx636, align 2
  %conv637 = sext i16 %340 to i32
  br label %cond.end.638

cond.end.638:                                     ; preds = %cond.false.634, %cond.true.630
  %cond639 = phi i32 [ %conv633, %cond.true.630 ], [ %conv637, %cond.false.634 ]
  %div640 = sdiv i32 %shl627, %cond639
  %341 = load i32, i32* %i, align 4
  %idxprom641 = sext i32 %341 to i64
  %342 = load i32, i32* %j, align 4
  %idxprom642 = sext i32 %342 to i64
  %343 = load i32, i32* %k, align 4
  %idxprom643 = sext i32 %343 to i64
  %arrayidx644 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i32 0, i64 1), i32 0, i64 %idxprom643
  %arrayidx645 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx644, i32 0, i64 %idxprom642
  %arrayidx646 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx645, i32 0, i64 %idxprom641
  store i32 %div640, i32* %arrayidx646, align 4
  %344 = load i32, i32* %i, align 4
  %idxprom647 = sext i32 %344 to i64
  %345 = load i32, i32* %j, align 4
  %idxprom648 = sext i32 %345 to i64
  %346 = load i32, i32* %k, align 4
  %idxprom649 = sext i32 %346 to i64
  %arrayidx650 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom649
  %arrayidx651 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx650, i32 0, i64 %idxprom648
  %arrayidx652 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx651, i32 0, i64 %idxprom647
  %347 = load i32, i32* %arrayidx652, align 4
  %348 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 5), align 2
  %conv653 = sext i16 %348 to i32
  %tobool654 = icmp ne i32 %conv653, 0
  br i1 %tobool654, label %cond.true.655, label %cond.false.659

cond.true.655:                                    ; preds = %cond.end.638
  %349 = load i32, i32* %temp, align 4
  %idxprom656 = sext i32 %349 to i64
  %arrayidx657 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i32 0, i64 %idxprom656
  %350 = load i16, i16* %arrayidx657, align 2
  %conv658 = sext i16 %350 to i32
  br label %cond.end.663

cond.false.659:                                   ; preds = %cond.end.638
  %351 = load i32, i32* %temp, align 4
  %idxprom660 = sext i32 %351 to i64
  %arrayidx661 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 5), i32 0, i64 %idxprom660
  %352 = load i16, i16* %arrayidx661, align 2
  %conv662 = sext i16 %352 to i32
  br label %cond.end.663

cond.end.663:                                     ; preds = %cond.false.659, %cond.true.655
  %cond664 = phi i32 [ %conv658, %cond.true.655 ], [ %conv662, %cond.false.659 ]
  %mul665 = mul nsw i32 %347, %cond664
  %353 = load i32, i32* %i, align 4
  %idxprom666 = sext i32 %353 to i64
  %354 = load i32, i32* %j, align 4
  %idxprom667 = sext i32 %354 to i64
  %355 = load i32, i32* %k, align 4
  %idxprom668 = sext i32 %355 to i64
  %arrayidx669 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i32 0, i64 1), i32 0, i64 %idxprom668
  %arrayidx670 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx669, i32 0, i64 %idxprom667
  %arrayidx671 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx670, i32 0, i64 %idxprom666
  store i32 %mul665, i32* %arrayidx671, align 4
  br label %if.end.672

if.end.672:                                       ; preds = %cond.end.663, %if.then.595
  br label %for.inc.673

for.inc.673:                                      ; preds = %if.end.672
  %356 = load i32, i32* %i, align 4
  %inc674 = add nsw i32 %356, 1
  store i32 %inc674, i32* %i, align 4
  br label %for.cond.208

for.end.675:                                      ; preds = %for.cond.208
  br label %for.inc.676

for.inc.676:                                      ; preds = %for.end.675
  %357 = load i32, i32* %j, align 4
  %inc677 = add nsw i32 %357, 1
  store i32 %inc677, i32* %j, align 4
  br label %for.cond.205

for.end.678:                                      ; preds = %for.cond.205
  br label %for.inc.679

for.inc.679:                                      ; preds = %for.end.678
  %358 = load i32, i32* %k, align 4
  %inc680 = add nsw i32 %358, 1
  store i32 %inc680, i32* %k, align 4
  br label %for.cond.202

for.end.681:                                      ; preds = %for.cond.202
  br label %if.end.682

if.end.682:                                       ; preds = %for.end.681, %for.end.200
  ret void
}

; Function Attrs: nounwind uwtable
define void @CalculateQuant8Param() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %present = alloca [2 x i32], align 4
  %no_q_matrix = alloca i32, align 4
  store i32 0, i32* %no_q_matrix, align 4
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 9
  %1 = load i32, i32* %seq_scaling_matrix_present_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 5
  %3 = load i32, i32* %pic_scaling_matrix_present_flag, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %no_q_matrix, align 4
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = bitcast [2 x i32]* %present to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 8, i32 4, i1 false)
  %5 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_matrix_present_flag2 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %5, i32 0, i32 9
  %6 = load i32, i32* %seq_scaling_matrix_present_flag2, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 6
  %idxprom = sext i32 %add to i64
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_scaling_list_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %present, i32 0, i64 %idxprom5
  store i32 %10, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  %13 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_matrix_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %13, i32 0, i32 5
  %14 = load i32, i32* %pic_scaling_matrix_present_flag7, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.18, %if.then.9
  %15 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %15, 2
  br i1 %cmp11, label %for.body.12, label %for.end.20

for.body.12:                                      ; preds = %for.cond.10
  %16 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %16, 6
  %idxprom14 = sext i32 %add13 to i64
  %17 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_scaling_list_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %17, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag, i32 0, i64 %idxprom14
  %18 = load i32, i32* %arrayidx15, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %present, i32 0, i64 %idxprom16
  %20 = load i32, i32* %arrayidx17, align 4
  %or = or i32 %20, %18
  store i32 %or, i32* %arrayidx17, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.12
  %21 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.10

for.end.20:                                       ; preds = %for.cond.10
  br label %if.end.21

if.end.21:                                        ; preds = %for.end.20, %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  %22 = load i32, i32* %no_q_matrix, align 4
  %cmp23 = icmp eq i32 %22, 1
  br i1 %cmp23, label %if.then.24, label %if.else.92

if.then.24:                                       ; preds = %if.end.22
  store i32 0, i32* %k, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.89, %if.then.24
  %23 = load i32, i32* %k, align 4
  %cmp26 = icmp slt i32 %23, 6
  br i1 %cmp26, label %for.body.27, label %for.end.91

for.body.27:                                      ; preds = %for.cond.25
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.86, %for.body.27
  %24 = load i32, i32* %j, align 4
  %cmp29 = icmp slt i32 %24, 8
  br i1 %cmp29, label %for.body.30, label %for.end.88

for.body.30:                                      ; preds = %for.cond.28
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.83, %for.body.30
  %25 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %25, 8
  br i1 %cmp32, label %for.body.33, label %for.end.85

for.body.33:                                      ; preds = %for.cond.31
  %26 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx37, i32 0, i64 %idxprom35
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx38, i32 0, i64 %idxprom34
  %29 = load i32, i32* %arrayidx39, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %31 to i64
  %32 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i32 0, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx43, i32 0, i64 %idxprom41
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx44, i32 0, i64 %idxprom40
  store i32 %29, i32* %arrayidx45, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %33 to i64
  %34 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %34 to i64
  %35 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx49, i32 0, i64 %idxprom47
  %arrayidx51 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx50, i32 0, i64 %idxprom46
  %36 = load i32, i32* %arrayidx51, align 4
  %shl = shl i32 %36, 4
  %37 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %37 to i64
  %38 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %38 to i64
  %39 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %39 to i64
  %arrayidx55 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx55, i32 0, i64 %idxprom53
  %arrayidx57 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx56, i32 0, i64 %idxprom52
  store i32 %shl, i32* %arrayidx57, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %40 to i64
  %41 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %41 to i64
  %42 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %42 to i64
  %arrayidx61 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom60
  %arrayidx62 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx61, i32 0, i64 %idxprom59
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx62, i32 0, i64 %idxprom58
  %43 = load i32, i32* %arrayidx63, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %44 to i64
  %45 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %45 to i64
  %46 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %46 to i64
  %arrayidx67 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i32 0, i64 %idxprom66
  %arrayidx68 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx67, i32 0, i64 %idxprom65
  %arrayidx69 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx68, i32 0, i64 %idxprom64
  store i32 %43, i32* %arrayidx69, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %47 to i64
  %48 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %48 to i64
  %49 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %49 to i64
  %arrayidx73 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx73, i32 0, i64 %idxprom71
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx74, i32 0, i64 %idxprom70
  %50 = load i32, i32* %arrayidx75, align 4
  %shl76 = shl i32 %50, 4
  %51 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %51 to i64
  %52 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %52 to i64
  %53 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %53 to i64
  %arrayidx80 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i32 0, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx80, i32 0, i64 %idxprom78
  %arrayidx82 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx81, i32 0, i64 %idxprom77
  store i32 %shl76, i32* %arrayidx82, align 4
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.33
  %54 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %54, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.31

for.end.85:                                       ; preds = %for.cond.31
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end.85
  %55 = load i32, i32* %j, align 4
  %inc87 = add nsw i32 %55, 1
  store i32 %inc87, i32* %j, align 4
  br label %for.cond.28

for.end.88:                                       ; preds = %for.cond.28
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end.88
  %56 = load i32, i32* %k, align 4
  %inc90 = add nsw i32 %56, 1
  store i32 %inc90, i32* %k, align 4
  br label %for.cond.25

for.end.91:                                       ; preds = %for.cond.25
  br label %if.end.257

if.else.92:                                       ; preds = %if.end.22
  store i32 0, i32* %k, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.254, %if.else.92
  %57 = load i32, i32* %k, align 4
  %cmp94 = icmp slt i32 %57, 6
  br i1 %cmp94, label %for.body.95, label %for.end.256

for.body.95:                                      ; preds = %for.cond.93
  store i32 0, i32* %j, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.251, %for.body.95
  %58 = load i32, i32* %j, align 4
  %cmp97 = icmp slt i32 %58, 8
  br i1 %cmp97, label %for.body.98, label %for.end.253

for.body.98:                                      ; preds = %for.cond.96
  store i32 0, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.248, %for.body.98
  %59 = load i32, i32* %i, align 4
  %cmp100 = icmp slt i32 %59, 8
  br i1 %cmp100, label %for.body.101, label %for.end.250

for.body.101:                                     ; preds = %for.cond.99
  %60 = load i32, i32* %i, align 4
  %shl102 = shl i32 %60, 3
  %61 = load i32, i32* %j, align 4
  %add103 = add nsw i32 %shl102, %61
  store i32 %add103, i32* %temp, align 4
  %arrayidx104 = getelementptr inbounds [2 x i32], [2 x i32]* %present, i32 0, i64 0
  %62 = load i32, i32* %arrayidx104, align 4
  %tobool105 = icmp ne i32 %62, 0
  br i1 %tobool105, label %lor.lhs.false, label %if.then.107

lor.lhs.false:                                    ; preds = %for.body.101
  %63 = load i16, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 0), align 2
  %conv = sext i16 %63 to i32
  %tobool106 = icmp ne i32 %conv, 0
  br i1 %tobool106, label %if.then.107, label %if.else.139

if.then.107:                                      ; preds = %lor.lhs.false, %for.body.101
  %64 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %64 to i64
  %65 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %65 to i64
  %66 = load i32, i32* %k, align 4
  %idxprom110 = sext i32 %66 to i64
  %arrayidx111 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx111, i32 0, i64 %idxprom109
  %arrayidx113 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx112, i32 0, i64 %idxprom108
  %67 = load i32, i32* %arrayidx113, align 4
  %shl114 = shl i32 %67, 4
  %68 = load i32, i32* %temp, align 4
  %idxprom115 = sext i32 %68 to i64
  %arrayidx116 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_intra_default, i32 0, i64 %idxprom115
  %69 = load i16, i16* %arrayidx116, align 2
  %conv117 = sext i16 %69 to i32
  %div = sdiv i32 %shl114, %conv117
  %70 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %70 to i64
  %71 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %71 to i64
  %72 = load i32, i32* %k, align 4
  %idxprom120 = sext i32 %72 to i64
  %arrayidx121 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i32 0, i64 %idxprom120
  %arrayidx122 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx121, i32 0, i64 %idxprom119
  %arrayidx123 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx122, i32 0, i64 %idxprom118
  store i32 %div, i32* %arrayidx123, align 4
  %73 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %73 to i64
  %74 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %74 to i64
  %75 = load i32, i32* %k, align 4
  %idxprom126 = sext i32 %75 to i64
  %arrayidx127 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx127, i32 0, i64 %idxprom125
  %arrayidx129 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx128, i32 0, i64 %idxprom124
  %76 = load i32, i32* %arrayidx129, align 4
  %77 = load i32, i32* %temp, align 4
  %idxprom130 = sext i32 %77 to i64
  %arrayidx131 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_intra_default, i32 0, i64 %idxprom130
  %78 = load i16, i16* %arrayidx131, align 2
  %conv132 = sext i16 %78 to i32
  %mul = mul nsw i32 %76, %conv132
  %79 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %79 to i64
  %80 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %80 to i64
  %81 = load i32, i32* %k, align 4
  %idxprom135 = sext i32 %81 to i64
  %arrayidx136 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i32 0, i64 %idxprom135
  %arrayidx137 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx136, i32 0, i64 %idxprom134
  %arrayidx138 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx137, i32 0, i64 %idxprom133
  store i32 %mul, i32* %arrayidx138, align 4
  br label %if.end.173

if.else.139:                                      ; preds = %lor.lhs.false
  %82 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %82 to i64
  %83 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %83 to i64
  %84 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %84 to i64
  %arrayidx143 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx143, i32 0, i64 %idxprom141
  %arrayidx145 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx144, i32 0, i64 %idxprom140
  %85 = load i32, i32* %arrayidx145, align 4
  %shl146 = shl i32 %85, 4
  %86 = load i32, i32* %temp, align 4
  %idxprom147 = sext i32 %86 to i64
  %arrayidx148 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 0), i32 0, i64 %idxprom147
  %87 = load i16, i16* %arrayidx148, align 2
  %conv149 = sext i16 %87 to i32
  %div150 = sdiv i32 %shl146, %conv149
  %88 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %88 to i64
  %89 = load i32, i32* %j, align 4
  %idxprom152 = sext i32 %89 to i64
  %90 = load i32, i32* %k, align 4
  %idxprom153 = sext i32 %90 to i64
  %arrayidx154 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i32 0, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx154, i32 0, i64 %idxprom152
  %arrayidx156 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx155, i32 0, i64 %idxprom151
  store i32 %div150, i32* %arrayidx156, align 4
  %91 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %91 to i64
  %92 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %92 to i64
  %93 = load i32, i32* %k, align 4
  %idxprom159 = sext i32 %93 to i64
  %arrayidx160 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx160, i32 0, i64 %idxprom158
  %arrayidx162 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx161, i32 0, i64 %idxprom157
  %94 = load i32, i32* %arrayidx162, align 4
  %95 = load i32, i32* %temp, align 4
  %idxprom163 = sext i32 %95 to i64
  %arrayidx164 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 0), i32 0, i64 %idxprom163
  %96 = load i16, i16* %arrayidx164, align 2
  %conv165 = sext i16 %96 to i32
  %mul166 = mul nsw i32 %94, %conv165
  %97 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %97 to i64
  %98 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %98 to i64
  %99 = load i32, i32* %k, align 4
  %idxprom169 = sext i32 %99 to i64
  %arrayidx170 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i32 0, i64 %idxprom169
  %arrayidx171 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx170, i32 0, i64 %idxprom168
  %arrayidx172 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx171, i32 0, i64 %idxprom167
  store i32 %mul166, i32* %arrayidx172, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.139, %if.then.107
  %arrayidx174 = getelementptr inbounds [2 x i32], [2 x i32]* %present, i32 0, i64 1
  %100 = load i32, i32* %arrayidx174, align 4
  %tobool175 = icmp ne i32 %100, 0
  br i1 %tobool175, label %lor.lhs.false.176, label %if.then.179

lor.lhs.false.176:                                ; preds = %if.end.173
  %101 = load i16, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 1), align 2
  %conv177 = sext i16 %101 to i32
  %tobool178 = icmp ne i32 %conv177, 0
  br i1 %tobool178, label %if.then.179, label %if.else.213

if.then.179:                                      ; preds = %lor.lhs.false.176, %if.end.173
  %102 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %102 to i64
  %103 = load i32, i32* %j, align 4
  %idxprom181 = sext i32 %103 to i64
  %104 = load i32, i32* %k, align 4
  %idxprom182 = sext i32 %104 to i64
  %arrayidx183 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom182
  %arrayidx184 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx183, i32 0, i64 %idxprom181
  %arrayidx185 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx184, i32 0, i64 %idxprom180
  %105 = load i32, i32* %arrayidx185, align 4
  %shl186 = shl i32 %105, 4
  %106 = load i32, i32* %temp, align 4
  %idxprom187 = sext i32 %106 to i64
  %arrayidx188 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_inter_default, i32 0, i64 %idxprom187
  %107 = load i16, i16* %arrayidx188, align 2
  %conv189 = sext i16 %107 to i32
  %div190 = sdiv i32 %shl186, %conv189
  %108 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %idxprom192 = sext i32 %109 to i64
  %110 = load i32, i32* %k, align 4
  %idxprom193 = sext i32 %110 to i64
  %arrayidx194 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i32 0, i64 %idxprom193
  %arrayidx195 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx194, i32 0, i64 %idxprom192
  %arrayidx196 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx195, i32 0, i64 %idxprom191
  store i32 %div190, i32* %arrayidx196, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom197 = sext i32 %111 to i64
  %112 = load i32, i32* %j, align 4
  %idxprom198 = sext i32 %112 to i64
  %113 = load i32, i32* %k, align 4
  %idxprom199 = sext i32 %113 to i64
  %arrayidx200 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom199
  %arrayidx201 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx200, i32 0, i64 %idxprom198
  %arrayidx202 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx201, i32 0, i64 %idxprom197
  %114 = load i32, i32* %arrayidx202, align 4
  %115 = load i32, i32* %temp, align 4
  %idxprom203 = sext i32 %115 to i64
  %arrayidx204 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_inter_default, i32 0, i64 %idxprom203
  %116 = load i16, i16* %arrayidx204, align 2
  %conv205 = sext i16 %116 to i32
  %mul206 = mul nsw i32 %114, %conv205
  %117 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %117 to i64
  %118 = load i32, i32* %j, align 4
  %idxprom208 = sext i32 %118 to i64
  %119 = load i32, i32* %k, align 4
  %idxprom209 = sext i32 %119 to i64
  %arrayidx210 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i32 0, i64 %idxprom209
  %arrayidx211 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx210, i32 0, i64 %idxprom208
  %arrayidx212 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx211, i32 0, i64 %idxprom207
  store i32 %mul206, i32* %arrayidx212, align 4
  br label %if.end.247

if.else.213:                                      ; preds = %lor.lhs.false.176
  %120 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom215 = sext i32 %121 to i64
  %122 = load i32, i32* %k, align 4
  %idxprom216 = sext i32 %122 to i64
  %arrayidx217 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i32 0, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx217, i32 0, i64 %idxprom215
  %arrayidx219 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx218, i32 0, i64 %idxprom214
  %123 = load i32, i32* %arrayidx219, align 4
  %shl220 = shl i32 %123, 4
  %124 = load i32, i32* %temp, align 4
  %idxprom221 = sext i32 %124 to i64
  %arrayidx222 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 1), i32 0, i64 %idxprom221
  %125 = load i16, i16* %arrayidx222, align 2
  %conv223 = sext i16 %125 to i32
  %div224 = sdiv i32 %shl220, %conv223
  %126 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %126 to i64
  %127 = load i32, i32* %j, align 4
  %idxprom226 = sext i32 %127 to i64
  %128 = load i32, i32* %k, align 4
  %idxprom227 = sext i32 %128 to i64
  %arrayidx228 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i32 0, i64 %idxprom227
  %arrayidx229 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx228, i32 0, i64 %idxprom226
  %arrayidx230 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx229, i32 0, i64 %idxprom225
  store i32 %div224, i32* %arrayidx230, align 4
  %129 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %129 to i64
  %130 = load i32, i32* %j, align 4
  %idxprom232 = sext i32 %130 to i64
  %131 = load i32, i32* %k, align 4
  %idxprom233 = sext i32 %131 to i64
  %arrayidx234 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i32 0, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx234, i32 0, i64 %idxprom232
  %arrayidx236 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx235, i32 0, i64 %idxprom231
  %132 = load i32, i32* %arrayidx236, align 4
  %133 = load i32, i32* %temp, align 4
  %idxprom237 = sext i32 %133 to i64
  %arrayidx238 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 1), i32 0, i64 %idxprom237
  %134 = load i16, i16* %arrayidx238, align 2
  %conv239 = sext i16 %134 to i32
  %mul240 = mul nsw i32 %132, %conv239
  %135 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %135 to i64
  %136 = load i32, i32* %j, align 4
  %idxprom242 = sext i32 %136 to i64
  %137 = load i32, i32* %k, align 4
  %idxprom243 = sext i32 %137 to i64
  %arrayidx244 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i32 0, i64 %idxprom243
  %arrayidx245 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx244, i32 0, i64 %idxprom242
  %arrayidx246 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx245, i32 0, i64 %idxprom241
  store i32 %mul240, i32* %arrayidx246, align 4
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.213, %if.then.179
  br label %for.inc.248

for.inc.248:                                      ; preds = %if.end.247
  %138 = load i32, i32* %i, align 4
  %inc249 = add nsw i32 %138, 1
  store i32 %inc249, i32* %i, align 4
  br label %for.cond.99

for.end.250:                                      ; preds = %for.cond.99
  br label %for.inc.251

for.inc.251:                                      ; preds = %for.end.250
  %139 = load i32, i32* %j, align 4
  %inc252 = add nsw i32 %139, 1
  store i32 %inc252, i32* %j, align 4
  br label %for.cond.96

for.end.253:                                      ; preds = %for.cond.96
  br label %for.inc.254

for.inc.254:                                      ; preds = %for.end.253
  %140 = load i32, i32* %k, align 4
  %inc255 = add nsw i32 %140, 1
  store i32 %inc255, i32* %k, align 4
  br label %for.cond.93

for.end.256:                                      ; preds = %for.cond.93
  br label %if.end.257

if.end.257:                                       ; preds = %for.end.256, %for.end.91
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
