; ModuleID = './MultiSource.Applications.JM/6.ldecod.annexb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.inp_par = type { [1000 x i8], [1000 x i8], [1000 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.img_par = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [16 x i16]], [6 x [32 x i32]], [16 x [16 x i32]], [4 x [12 x [4 x [4 x i32]]]], [16 x i32], i8**, i32*, i32***, i32**, i32, i32, i32, i32, %struct.Slice*, %struct.macroblock*, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32***, i32***, i32****, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i64, i64, %struct.timeb, %struct.timeb, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (%struct.img_par*, %struct.inp_par*)*, i32, i32, i32, i32 }
%struct.datapartition = type { %struct.Bitstream*, %struct.DecodingEnvironment, i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i32, i32, i8*, i32 }
%struct.DecodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32* }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.img_par*, %struct.DecodingEnvironment*)* }
%struct.MotionInfoContexts = type { [4 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.macroblock = type { i32, [2 x i32], i32, i32, %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], i32, i64, i64, i32, i32, [4 x i8], [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.timeb = type { i64, i16, i16, i16 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@bits = global %struct._IO_FILE* null, align 8
@IsFirstByteStreamNALU = global i32 1, align 4
@LastAccessUnitExists = global i32 0, align 4
@NALUCount = global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"GetAnnexbNALU: Buf\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"GetAnnexbNALU can't read start code\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"GetAnnexbNALU: no Start Code at the begin of the NALU, return -1\0A\00", align 1
@.str.3 = private unnamed_addr constant [111 x i8] c"GetAnnexbNALU: The leading_zero_8bits syntax can only be present in the first byte stream NAL unit, return -1\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c" Panic: Error in next start code search \0A\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [54 x i8] c"GetAnnexbNALU: Cannot fseek %d in the bit stream file\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Cannot open Annex B ByteStream file '%s'\00", align 1
@input = external global %struct.inp_par*, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"warning: zero_byte shall exist\0A\00", align 1
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
define i32 @GetAnnexbNALU(%struct.NALU_t* %nalu) #0 {
entry:
  %retval = alloca i32, align 4
  %nalu.addr = alloca %struct.NALU_t*, align 8
  %info2 = alloca i32, align 4
  %info3 = alloca i32, align 4
  %pos = alloca i32, align 4
  %StartCodeFound = alloca i32, align 4
  %rewind = alloca i32, align 4
  %Buf = alloca i8*, align 8
  %LeadingZero8BitsCount = alloca i32, align 4
  %TrailingZero8Bits = alloca i32, align 4
  store %struct.NALU_t* %nalu, %struct.NALU_t** %nalu.addr, align 8
  store i32 0, i32* %pos, align 4
  store i32 0, i32* %LeadingZero8BitsCount, align 4
  store i32 0, i32* %TrailingZero8Bits, align 4
  %0 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %max_size = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %0, i32 0, i32 2
  %1 = load i32, i32* %max_size, align 4
  %conv = zext i32 %1 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 1) #3
  store i8* %call, i8** %Buf, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call2 = call i32 @feof(%struct._IO_FILE* %2) #3
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call3 = call i32 @fgetc(%struct._IO_FILE* %3)
  %conv4 = trunc i32 %call3 to i8
  %4 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %Buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv4, i8* %arrayidx, align 1
  %conv5 = zext i8 %conv4 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call8 = call i32 @feof(%struct._IO_FILE* %7) #3
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %while.end
  %8 = load i32, i32* %pos, align 4
  %cmp11 = icmp eq i32 %8, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.10
  %9 = load i8*, i8** %Buf, align 8
  call void @free(i8* %9) #3
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.10
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  %10 = load i8*, i8** %Buf, align 8
  call void @free(i8* %10) #3
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %while.end
  %11 = load i32, i32* %pos, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom16 = sext i32 %sub to i64
  %12 = load i8*, i8** %Buf, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %idxprom16
  %13 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  %cmp19 = icmp ne i32 %conv18, 1
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.15
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0))
  %14 = load i8*, i8** %Buf, align 8
  call void @free(i8* %14) #3
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.15
  %15 = load i32, i32* %pos, align 4
  %cmp24 = icmp slt i32 %15, 3
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.end.23
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0))
  %16 = load i8*, i8** %Buf, align 8
  call void @free(i8* %16) #3
  store i32 -1, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.end.23
  %17 = load i32, i32* %pos, align 4
  %cmp29 = icmp eq i32 %17, 3
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.28
  %18 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %18, i32 0, i32 0
  store i32 3, i32* %startcodeprefix_len, align 4
  store i32 0, i32* %LeadingZero8BitsCount, align 4
  br label %if.end.35

if.else.32:                                       ; preds = %if.else.28
  %19 = load i32, i32* %pos, align 4
  %sub33 = sub nsw i32 %19, 4
  store i32 %sub33, i32* %LeadingZero8BitsCount, align 4
  %20 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %startcodeprefix_len34 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %20, i32 0, i32 0
  store i32 4, i32* %startcodeprefix_len34, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35
  %21 = load i32, i32* @IsFirstByteStreamNALU, align 4
  %tobool37 = icmp ne i32 %21, 0
  br i1 %tobool37, label %if.end.42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.36
  %22 = load i32, i32* %LeadingZero8BitsCount, align 4
  %cmp38 = icmp sgt i32 %22, 0
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i32 0, i32 0))
  %23 = load i8*, i8** %Buf, align 8
  call void @free(i8* %23) #3
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true, %if.end.36
  store i32 0, i32* @IsFirstByteStreamNALU, align 4
  store i32 0, i32* %StartCodeFound, align 4
  store i32 0, i32* %info2, align 4
  store i32 0, i32* %info3, align 4
  br label %while.cond.43

while.cond.43:                                    ; preds = %lor.end, %if.end.42
  %24 = load i32, i32* %StartCodeFound, align 4
  %tobool44 = icmp ne i32 %24, 0
  %lnot = xor i1 %tobool44, true
  br i1 %lnot, label %while.body.45, label %while.end.105

while.body.45:                                    ; preds = %while.cond.43
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call46 = call i32 @feof(%struct._IO_FILE* %25) #3
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.83

if.then.48:                                       ; preds = %while.body.45
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.57, %if.then.48
  %26 = load i32, i32* %pos, align 4
  %sub50 = sub nsw i32 %26, 2
  %27 = load i32, i32* %TrailingZero8Bits, align 4
  %sub51 = sub nsw i32 %sub50, %27
  %idxprom52 = sext i32 %sub51 to i64
  %28 = load i8*, i8** %Buf, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %28, i64 %idxprom52
  %29 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %29 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %while.body.57, label %while.end.59

while.body.57:                                    ; preds = %while.cond.49
  %30 = load i32, i32* %TrailingZero8Bits, align 4
  %inc58 = add nsw i32 %30, 1
  store i32 %inc58, i32* %TrailingZero8Bits, align 4
  br label %while.cond.49

while.end.59:                                     ; preds = %while.cond.49
  %31 = load i32, i32* %pos, align 4
  %sub60 = sub nsw i32 %31, 1
  %32 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %startcodeprefix_len61 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %32, i32 0, i32 0
  %33 = load i32, i32* %startcodeprefix_len61, align 4
  %sub62 = sub nsw i32 %sub60, %33
  %34 = load i32, i32* %LeadingZero8BitsCount, align 4
  %sub63 = sub nsw i32 %sub62, %34
  %35 = load i32, i32* %TrailingZero8Bits, align 4
  %sub64 = sub nsw i32 %sub63, %35
  %36 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %36, i32 0, i32 1
  store i32 %sub64, i32* %len, align 4
  %37 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %37, i32 0, i32 6
  %38 = load i8*, i8** %buf, align 8
  %39 = load i32, i32* %LeadingZero8BitsCount, align 4
  %40 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %startcodeprefix_len65 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %40, i32 0, i32 0
  %41 = load i32, i32* %startcodeprefix_len65, align 4
  %add = add nsw i32 %39, %41
  %idxprom66 = sext i32 %add to i64
  %42 = load i8*, i8** %Buf, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %42, i64 %idxprom66
  %43 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len68 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %43, i32 0, i32 1
  %44 = load i32, i32* %len68, align 4
  %conv69 = zext i32 %44 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %arrayidx67, i64 %conv69, i32 1, i1 false)
  %45 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf70 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %45, i32 0, i32 6
  %46 = load i8*, i8** %buf70, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %47 to i32
  %shr = ashr i32 %conv72, 7
  %and = and i32 %shr, 1
  %48 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %forbidden_bit = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %48, i32 0, i32 5
  store i32 %and, i32* %forbidden_bit, align 4
  %49 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf73 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %49, i32 0, i32 6
  %50 = load i8*, i8** %buf73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %50, i64 0
  %51 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %51 to i32
  %shr76 = ashr i32 %conv75, 5
  %and77 = and i32 %shr76, 3
  %52 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_reference_idc = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %52, i32 0, i32 4
  store i32 %and77, i32* %nal_reference_idc, align 4
  %53 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf78 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %53, i32 0, i32 6
  %54 = load i8*, i8** %buf78, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %55 to i32
  %and81 = and i32 %conv80, 31
  %56 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %56, i32 0, i32 3
  store i32 %and81, i32* %nal_unit_type, align 4
  %57 = load i8*, i8** %Buf, align 8
  call void @free(i8* %57) #3
  %58 = load i32, i32* %pos, align 4
  %sub82 = sub nsw i32 %58, 1
  store i32 %sub82, i32* %retval
  br label %return

if.end.83:                                        ; preds = %while.body.45
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call84 = call i32 @fgetc(%struct._IO_FILE* %59)
  %conv85 = trunc i32 %call84 to i8
  %60 = load i32, i32* %pos, align 4
  %inc86 = add nsw i32 %60, 1
  store i32 %inc86, i32* %pos, align 4
  %idxprom87 = sext i32 %60 to i64
  %61 = load i8*, i8** %Buf, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %61, i64 %idxprom87
  store i8 %conv85, i8* %arrayidx88, align 1
  %62 = load i32, i32* %pos, align 4
  %sub89 = sub nsw i32 %62, 4
  %idxprom90 = sext i32 %sub89 to i64
  %63 = load i8*, i8** %Buf, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %63, i64 %idxprom90
  %call92 = call i32 @FindStartCode(i8* %arrayidx91, i32 3)
  store i32 %call92, i32* %info3, align 4
  %64 = load i32, i32* %info3, align 4
  %cmp93 = icmp ne i32 %64, 1
  br i1 %cmp93, label %if.then.95, label %if.end.100

if.then.95:                                       ; preds = %if.end.83
  %65 = load i32, i32* %pos, align 4
  %sub96 = sub nsw i32 %65, 3
  %idxprom97 = sext i32 %sub96 to i64
  %66 = load i8*, i8** %Buf, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %66, i64 %idxprom97
  %call99 = call i32 @FindStartCode(i8* %arrayidx98, i32 2)
  store i32 %call99, i32* %info2, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %if.end.83
  %67 = load i32, i32* %info2, align 4
  %cmp101 = icmp eq i32 %67, 1
  br i1 %cmp101, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.100
  %68 = load i32, i32* %info3, align 4
  %cmp103 = icmp eq i32 %68, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.100
  %69 = phi i1 [ true, %if.end.100 ], [ %cmp103, %lor.rhs ]
  %lor.ext = zext i1 %69 to i32
  store i32 %lor.ext, i32* %StartCodeFound, align 4
  br label %while.cond.43

while.end.105:                                    ; preds = %while.cond.43
  %70 = load i32, i32* %info3, align 4
  %cmp106 = icmp eq i32 %70, 1
  br i1 %cmp106, label %if.then.108, label %if.end.120

if.then.108:                                      ; preds = %while.end.105
  br label %while.cond.109

while.cond.109:                                   ; preds = %while.body.117, %if.then.108
  %71 = load i32, i32* %pos, align 4
  %sub110 = sub nsw i32 %71, 5
  %72 = load i32, i32* %TrailingZero8Bits, align 4
  %sub111 = sub nsw i32 %sub110, %72
  %idxprom112 = sext i32 %sub111 to i64
  %73 = load i8*, i8** %Buf, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %73, i64 %idxprom112
  %74 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %74 to i32
  %cmp115 = icmp eq i32 %conv114, 0
  br i1 %cmp115, label %while.body.117, label %while.end.119

while.body.117:                                   ; preds = %while.cond.109
  %75 = load i32, i32* %TrailingZero8Bits, align 4
  %inc118 = add nsw i32 %75, 1
  store i32 %inc118, i32* %TrailingZero8Bits, align 4
  br label %while.cond.109

while.end.119:                                    ; preds = %while.cond.109
  br label %if.end.120

if.end.120:                                       ; preds = %while.end.119, %while.end.105
  store i32 0, i32* %rewind, align 4
  %76 = load i32, i32* %info3, align 4
  %cmp121 = icmp eq i32 %76, 1
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.end.120
  store i32 -4, i32* %rewind, align 4
  br label %if.end.131

if.else.124:                                      ; preds = %if.end.120
  %77 = load i32, i32* %info2, align 4
  %cmp125 = icmp eq i32 %77, 1
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %if.else.124
  store i32 -3, i32* %rewind, align 4
  br label %if.end.130

if.else.128:                                      ; preds = %if.else.124
  %call129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.127
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.123
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %79 = load i32, i32* %rewind, align 4
  %conv132 = sext i32 %79 to i64
  %call133 = call i32 @fseek(%struct._IO_FILE* %78, i64 %conv132, i32 1)
  %cmp134 = icmp ne i32 0, %call133
  br i1 %cmp134, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.end.131
  %80 = load i32, i32* %rewind, align 4
  %call137 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i32 %80) #3
  %81 = load i8*, i8** %Buf, align 8
  call void @free(i8* %81) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 600)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %if.end.131
  %82 = load i32, i32* %pos, align 4
  %83 = load i32, i32* %rewind, align 4
  %add139 = add nsw i32 %82, %83
  %84 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %startcodeprefix_len140 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %84, i32 0, i32 0
  %85 = load i32, i32* %startcodeprefix_len140, align 4
  %sub141 = sub nsw i32 %add139, %85
  %86 = load i32, i32* %LeadingZero8BitsCount, align 4
  %sub142 = sub nsw i32 %sub141, %86
  %87 = load i32, i32* %TrailingZero8Bits, align 4
  %sub143 = sub nsw i32 %sub142, %87
  %88 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len144 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %88, i32 0, i32 1
  store i32 %sub143, i32* %len144, align 4
  %89 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf145 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %89, i32 0, i32 6
  %90 = load i8*, i8** %buf145, align 8
  %91 = load i32, i32* %LeadingZero8BitsCount, align 4
  %92 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %startcodeprefix_len146 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %92, i32 0, i32 0
  %93 = load i32, i32* %startcodeprefix_len146, align 4
  %add147 = add nsw i32 %91, %93
  %idxprom148 = sext i32 %add147 to i64
  %94 = load i8*, i8** %Buf, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %94, i64 %idxprom148
  %95 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len150 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %95, i32 0, i32 1
  %96 = load i32, i32* %len150, align 4
  %conv151 = zext i32 %96 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %arrayidx149, i64 %conv151, i32 1, i1 false)
  %97 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf152 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %97, i32 0, i32 6
  %98 = load i8*, i8** %buf152, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %98, i64 0
  %99 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %99 to i32
  %shr155 = ashr i32 %conv154, 7
  %and156 = and i32 %shr155, 1
  %100 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %forbidden_bit157 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %100, i32 0, i32 5
  store i32 %and156, i32* %forbidden_bit157, align 4
  %101 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf158 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %101, i32 0, i32 6
  %102 = load i8*, i8** %buf158, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %102, i64 0
  %103 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %103 to i32
  %shr161 = ashr i32 %conv160, 5
  %and162 = and i32 %shr161, 3
  %104 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_reference_idc163 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %104, i32 0, i32 4
  store i32 %and162, i32* %nal_reference_idc163, align 4
  %105 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf164 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %105, i32 0, i32 6
  %106 = load i8*, i8** %buf164, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %106, i64 0
  %107 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %107 to i32
  %and167 = and i32 %conv166, 31
  %108 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type168 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %108, i32 0, i32 3
  store i32 %and167, i32* %nal_unit_type168, align 4
  %109 = load i8*, i8** %Buf, align 8
  call void @free(i8* %109) #3
  %110 = load i32, i32* %pos, align 4
  %111 = load i32, i32* %rewind, align 4
  %add169 = add nsw i32 %110, %111
  store i32 %add169, i32* %retval
  br label %return

return:                                           ; preds = %if.end.138, %while.end.59, %if.then.40, %if.then.26, %if.then.21, %if.else, %if.then.13
  %112 = load i32, i32* %retval
  ret i32 %112
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i32 @fgetc(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @FindStartCode(i8* %Buf, i32 %zeros_in_startcode) #0 {
entry:
  %Buf.addr = alloca i8*, align 8
  %zeros_in_startcode.addr = alloca i32, align 4
  %info = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %Buf, i8** %Buf.addr, align 8
  store i32 %zeros_in_startcode, i32* %zeros_in_startcode.addr, align 4
  store i32 1, i32* %info, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %zeros_in_startcode.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %Buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8*, i8** %Buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp ne i32 %conv5, 1
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  store i32 0, i32* %info, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  %9 = load i32, i32* %info, align 4
  ret i32 %9
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare void @error(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @OpenBitstreamFile(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call %struct._IO_FILE* @fopen64(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @bits, align 8
  %cmp = icmp eq %struct._IO_FILE* null, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %infile = getelementptr inbounds %struct.inp_par, %struct.inp_par* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %infile, i32 0, i32 0
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @CloseBitstreamFile() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @CheckZeroByteNonVCL(%struct.NALU_t* %nalu, i32* %ret) #0 {
entry:
  %nalu.addr = alloca %struct.NALU_t*, align 8
  %ret.addr = alloca i32*, align 8
  %CheckZeroByte = alloca i32, align 4
  store %struct.NALU_t* %nalu, %struct.NALU_t** %nalu.addr, align 8
  store i32* %ret, i32** %ret.addr, align 8
  store i32 0, i32* %CheckZeroByte, align 4
  %0 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %0, i32 0, i32 3
  %1 = load i32, i32* %nal_unit_type, align 4
  %cmp = icmp sge i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type1 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %2, i32 0, i32 3
  %3 = load i32, i32* %nal_unit_type1, align 4
  %cmp2 = icmp sle i32 %3, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.37

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type3 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %4, i32 0, i32 3
  %5 = load i32, i32* %nal_unit_type3, align 4
  %cmp4 = icmp eq i32 %5, 7
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type5 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %6, i32 0, i32 3
  %7 = load i32, i32* %nal_unit_type5, align 4
  %cmp6 = icmp eq i32 %7, 8
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %CheckZeroByte, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %lor.lhs.false
  %8 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type9 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %8, i32 0, i32 3
  %9 = load i32, i32* %nal_unit_type9, align 4
  %cmp10 = icmp eq i32 %9, 9
  br i1 %cmp10, label %if.then.26, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.8
  %10 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type12 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %10, i32 0, i32 3
  %11 = load i32, i32* %nal_unit_type12, align 4
  %cmp13 = icmp eq i32 %11, 7
  br i1 %cmp13, label %if.then.26, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %12 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type15 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %12, i32 0, i32 3
  %13 = load i32, i32* %nal_unit_type15, align 4
  %cmp16 = icmp eq i32 %13, 8
  br i1 %cmp16, label %if.then.26, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %14 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type18 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %14, i32 0, i32 3
  %15 = load i32, i32* %nal_unit_type18, align 4
  %cmp19 = icmp eq i32 %15, 6
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %16 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type21 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %16, i32 0, i32 3
  %17 = load i32, i32* %nal_unit_type21, align 4
  %cmp22 = icmp sge i32 %17, 13
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.29

land.lhs.true.23:                                 ; preds = %lor.lhs.false.20
  %18 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type24 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %18, i32 0, i32 3
  %19 = load i32, i32* %nal_unit_type24, align 4
  %cmp25 = icmp sle i32 %19, 18
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %land.lhs.true.23, %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %if.end.8
  %20 = load i32, i32* @LastAccessUnitExists, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.26
  store i32 0, i32* @LastAccessUnitExists, align 4
  store i32 0, i32* @NALUCount, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.26
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %land.lhs.true.23, %lor.lhs.false.20
  %21 = load i32, i32* @NALUCount, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* @NALUCount, align 4
  %22 = load i32, i32* @NALUCount, align 4
  %cmp30 = icmp eq i32 %22, 1
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  store i32 1, i32* %CheckZeroByte, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %23 = load i32, i32* %CheckZeroByte, align 4
  %tobool33 = icmp ne i32 %23, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.37

land.lhs.true.34:                                 ; preds = %if.end.32
  %24 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %24, i32 0, i32 0
  %25 = load i32, i32* %startcodeprefix_len, align 4
  %cmp35 = icmp eq i32 %25, 3
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.34
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then, %if.then.36, %land.lhs.true.34, %if.end.32
  ret void
}

; Function Attrs: nounwind uwtable
define void @CheckZeroByteVCL(%struct.NALU_t* %nalu, i32* %ret) #0 {
entry:
  %nalu.addr = alloca %struct.NALU_t*, align 8
  %ret.addr = alloca i32*, align 8
  %CheckZeroByte = alloca i32, align 4
  store %struct.NALU_t* %nalu, %struct.NALU_t** %nalu.addr, align 8
  store i32* %ret, i32** %ret.addr, align 8
  store i32 0, i32* %CheckZeroByte, align 4
  %0 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %0, i32 0, i32 3
  %1 = load i32, i32* %nal_unit_type, align 4
  %cmp = icmp sge i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type1 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %2, i32 0, i32 3
  %3 = load i32, i32* %nal_unit_type1, align 4
  %cmp2 = icmp sle i32 %3, 5
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %if.end.12

if.end:                                           ; preds = %land.lhs.true
  %4 = load i32, i32* @LastAccessUnitExists, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* @NALUCount, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %5 = load i32, i32* @NALUCount, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @NALUCount, align 4
  %6 = load i32, i32* @NALUCount, align 4
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 1, i32* %CheckZeroByte, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  store i32 1, i32* @LastAccessUnitExists, align 4
  %7 = load i32, i32* %CheckZeroByte, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.12

land.lhs.true.9:                                  ; preds = %if.end.7
  %8 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %8, i32 0, i32 0
  %9 = load i32, i32* %startcodeprefix_len, align 4
  %cmp10 = icmp eq i32 %9, 3
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.9
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then, %if.then.11, %land.lhs.true.9, %if.end.7
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
