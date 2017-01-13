; ModuleID = './MultiSource.Applications.JM/24.ldecod.mb_access.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@dec_picture = external global %struct.storable_picture*, align 8
@img = external global %struct.img_par*, align 8
@PicPos = common global i32** null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@imgY_ref = common global i16** null, align 8
@imgUV_ref = common global i16*** null, align 8
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
define i32 @mb_is_available(i32 %mbAddr, i32 %currMbAddr) #0 {
entry:
  %retval = alloca i32, align 4
  %mbAddr.addr = alloca i32, align 4
  %currMbAddr.addr = alloca i32, align 4
  store i32 %mbAddr, i32* %mbAddr.addr, align 4
  store i32 %currMbAddr, i32* %currMbAddr.addr, align 4
  %0 = load i32, i32* %mbAddr.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %mbAddr.addr, align 4
  %2 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 31
  %3 = load i32, i32* %PicSizeInMbs, align 4
  %sub = sub nsw i32 %3, 1
  %cmp1 = icmp sgt i32 %1, %sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.img_par*, %struct.img_par** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 45
  %5 = load i32, i32* %DeblockCall, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.10, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %mbAddr.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 39
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 2
  %9 = load i32, i32* %slice_nr, align 4
  %10 = load i32, i32* %currMbAddr.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data4 = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 39
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_data4, align 8
  %arrayidx5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i64 %idxprom3
  %slice_nr6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx5, i32 0, i32 2
  %13 = load i32, i32* %slice_nr6, align 4
  %cmp7 = icmp ne i32 %9, %13
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @CheckAvailabilityOfNeighbors() #0 {
entry:
  %mb_nr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %cur_mb_pair = alloca i32, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 1
  %1 = load i32, i32* %current_mb_nr, align 4
  store i32 %1, i32* %mb_nr, align 4
  %2 = load i32, i32* %mb_nr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 39
  %4 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %5 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i32 0, i32 4
  store %struct.macroblock* null, %struct.macroblock** %mb_available_up, align 8
  %6 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i32 0, i32 5
  store %struct.macroblock* null, %struct.macroblock** %mb_available_left, align 8
  %7 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %7, i32 0, i32 29
  %8 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %mb_nr, align 4
  %shr = ashr i32 %9, 1
  store i32 %shr, i32* %cur_mb_pair, align 4
  %10 = load i32, i32* %cur_mb_pair, align 4
  %sub = sub nsw i32 %10, 1
  %mul = mul nsw i32 2, %sub
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 22
  store i32 %mul, i32* %mbAddrA, align 4
  %12 = load i32, i32* %cur_mb_pair, align 4
  %13 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 30
  %14 = load i32, i32* %PicWidthInMbs, align 4
  %sub1 = sub i32 %12, %14
  %mul2 = mul i32 2, %sub1
  %15 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 23
  store i32 %mul2, i32* %mbAddrB, align 4
  %16 = load i32, i32* %cur_mb_pair, align 4
  %17 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicWidthInMbs3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %17, i32 0, i32 30
  %18 = load i32, i32* %PicWidthInMbs3, align 4
  %sub4 = sub i32 %16, %18
  %add = add i32 %sub4, 1
  %mul5 = mul i32 2, %add
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 24
  store i32 %mul5, i32* %mbAddrC, align 4
  %20 = load i32, i32* %cur_mb_pair, align 4
  %21 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicWidthInMbs6 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %21, i32 0, i32 30
  %22 = load i32, i32* %PicWidthInMbs6, align 4
  %sub7 = sub i32 %20, %22
  %sub8 = sub i32 %sub7, 1
  %mul9 = mul i32 2, %sub8
  %23 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 25
  store i32 %mul9, i32* %mbAddrD, align 4
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 22
  %25 = load i32, i32* %mbAddrA10, align 4
  %26 = load i32, i32* %mb_nr, align 4
  %call = call i32 @mb_is_available(i32 %25, i32 %26)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %27 = load i32, i32* %cur_mb_pair, align 4
  %idxprom12 = sext i32 %27 to i64
  %28 = load i32**, i32*** @PicPos, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %28, i64 %idxprom12
  %29 = load i32*, i32** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx14, align 4
  %cmp = icmp ne i32 %30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %31 = phi i1 [ false, %if.then ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  %32 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i32 0, i32 26
  store i32 %land.ext, i32* %mbAvailA, align 4
  %33 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB15 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %33, i32 0, i32 23
  %34 = load i32, i32* %mbAddrB15, align 4
  %35 = load i32, i32* %mb_nr, align 4
  %call16 = call i32 @mb_is_available(i32 %34, i32 %35)
  %36 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %36, i32 0, i32 27
  store i32 %call16, i32* %mbAvailB, align 4
  %37 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC17 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i32 0, i32 24
  %38 = load i32, i32* %mbAddrC17, align 4
  %39 = load i32, i32* %mb_nr, align 4
  %call18 = call i32 @mb_is_available(i32 %38, i32 %39)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.rhs.20, label %land.end.26

land.rhs.20:                                      ; preds = %land.end
  %40 = load i32, i32* %cur_mb_pair, align 4
  %add21 = add nsw i32 %40, 1
  %idxprom22 = sext i32 %add21 to i64
  %41 = load i32**, i32*** @PicPos, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %41, i64 %idxprom22
  %42 = load i32*, i32** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %42, i64 0
  %43 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp ne i32 %43, 0
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.20, %land.end
  %44 = phi i1 [ false, %land.end ], [ %cmp25, %land.rhs.20 ]
  %land.ext27 = zext i1 %44 to i32
  %45 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %45, i32 0, i32 28
  store i32 %land.ext27, i32* %mbAvailC, align 4
  %46 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %46, i32 0, i32 25
  %47 = load i32, i32* %mbAddrD28, align 4
  %48 = load i32, i32* %mb_nr, align 4
  %call29 = call i32 @mb_is_available(i32 %47, i32 %48)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.rhs.31, label %land.end.36

land.rhs.31:                                      ; preds = %land.end.26
  %49 = load i32, i32* %cur_mb_pair, align 4
  %idxprom32 = sext i32 %49 to i64
  %50 = load i32**, i32*** @PicPos, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %50, i64 %idxprom32
  %51 = load i32*, i32** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %51, i64 0
  %52 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp ne i32 %52, 0
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.31, %land.end.26
  %53 = phi i1 [ false, %land.end.26 ], [ %cmp35, %land.rhs.31 ]
  %land.ext37 = zext i1 %53 to i32
  %54 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %54, i32 0, i32 29
  store i32 %land.ext37, i32* %mbAvailD, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %55 = load i32, i32* %mb_nr, align 4
  %sub38 = sub nsw i32 %55, 1
  %56 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA39 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %56, i32 0, i32 22
  store i32 %sub38, i32* %mbAddrA39, align 4
  %57 = load i32, i32* %mb_nr, align 4
  %58 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicWidthInMbs40 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 30
  %59 = load i32, i32* %PicWidthInMbs40, align 4
  %sub41 = sub i32 %57, %59
  %60 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB42 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 23
  store i32 %sub41, i32* %mbAddrB42, align 4
  %61 = load i32, i32* %mb_nr, align 4
  %62 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicWidthInMbs43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %62, i32 0, i32 30
  %63 = load i32, i32* %PicWidthInMbs43, align 4
  %sub44 = sub i32 %61, %63
  %add45 = add i32 %sub44, 1
  %64 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC46 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %64, i32 0, i32 24
  store i32 %add45, i32* %mbAddrC46, align 4
  %65 = load i32, i32* %mb_nr, align 4
  %66 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %PicWidthInMbs47 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %66, i32 0, i32 30
  %67 = load i32, i32* %PicWidthInMbs47, align 4
  %sub48 = sub i32 %65, %67
  %sub49 = sub i32 %sub48, 1
  %68 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD50 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %68, i32 0, i32 25
  store i32 %sub49, i32* %mbAddrD50, align 4
  %69 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA51 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %69, i32 0, i32 22
  %70 = load i32, i32* %mbAddrA51, align 4
  %71 = load i32, i32* %mb_nr, align 4
  %call52 = call i32 @mb_is_available(i32 %70, i32 %71)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %land.rhs.54, label %land.end.59

land.rhs.54:                                      ; preds = %if.else
  %72 = load i32, i32* %mb_nr, align 4
  %idxprom55 = sext i32 %72 to i64
  %73 = load i32**, i32*** @PicPos, align 8
  %arrayidx56 = getelementptr inbounds i32*, i32** %73, i64 %idxprom55
  %74 = load i32*, i32** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %74, i64 0
  %75 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp ne i32 %75, 0
  br label %land.end.59

land.end.59:                                      ; preds = %land.rhs.54, %if.else
  %76 = phi i1 [ false, %if.else ], [ %cmp58, %land.rhs.54 ]
  %land.ext60 = zext i1 %76 to i32
  %77 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA61 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %77, i32 0, i32 26
  store i32 %land.ext60, i32* %mbAvailA61, align 4
  %78 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB62 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %78, i32 0, i32 23
  %79 = load i32, i32* %mbAddrB62, align 4
  %80 = load i32, i32* %mb_nr, align 4
  %call63 = call i32 @mb_is_available(i32 %79, i32 %80)
  %81 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB64 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i32 0, i32 27
  store i32 %call63, i32* %mbAvailB64, align 4
  %82 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrC65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 24
  %83 = load i32, i32* %mbAddrC65, align 4
  %84 = load i32, i32* %mb_nr, align 4
  %call66 = call i32 @mb_is_available(i32 %83, i32 %84)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %land.rhs.68, label %land.end.74

land.rhs.68:                                      ; preds = %land.end.59
  %85 = load i32, i32* %mb_nr, align 4
  %add69 = add nsw i32 %85, 1
  %idxprom70 = sext i32 %add69 to i64
  %86 = load i32**, i32*** @PicPos, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %86, i64 %idxprom70
  %87 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %87, i64 0
  %88 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp ne i32 %88, 0
  br label %land.end.74

land.end.74:                                      ; preds = %land.rhs.68, %land.end.59
  %89 = phi i1 [ false, %land.end.59 ], [ %cmp73, %land.rhs.68 ]
  %land.ext75 = zext i1 %89 to i32
  %90 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailC76 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %90, i32 0, i32 28
  store i32 %land.ext75, i32* %mbAvailC76, align 4
  %91 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrD77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %91, i32 0, i32 25
  %92 = load i32, i32* %mbAddrD77, align 4
  %93 = load i32, i32* %mb_nr, align 4
  %call78 = call i32 @mb_is_available(i32 %92, i32 %93)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %land.rhs.80, label %land.end.85

land.rhs.80:                                      ; preds = %land.end.74
  %94 = load i32, i32* %mb_nr, align 4
  %idxprom81 = sext i32 %94 to i64
  %95 = load i32**, i32*** @PicPos, align 8
  %arrayidx82 = getelementptr inbounds i32*, i32** %95, i64 %idxprom81
  %96 = load i32*, i32** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %96, i64 0
  %97 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp ne i32 %97, 0
  br label %land.end.85

land.end.85:                                      ; preds = %land.rhs.80, %land.end.74
  %98 = phi i1 [ false, %land.end.74 ], [ %cmp84, %land.rhs.80 ]
  %land.ext86 = zext i1 %98 to i32
  %99 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailD87 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 29
  store i32 %land.ext86, i32* %mbAvailD87, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.85, %land.end.36
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_mb_block_pos_normal(i32 %mb_addr, i32* %x, i32* %y) #0 {
entry:
  %mb_addr.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32 %mb_addr, i32* %mb_addr.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32, i32* %mb_addr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32**, i32*** @PicPos, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %4 = load i32*, i32** %x.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %mb_addr.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32**, i32*** @PicPos, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %6, i64 %idxprom2
  %7 = load i32*, i32** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32*, i32** %y.addr, align 8
  store i32 %8, i32* %9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_mb_block_pos_mbaff(i32 %mb_addr, i32* %x, i32* %y) #0 {
entry:
  %mb_addr.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32 %mb_addr, i32* %mb_addr.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32, i32* %mb_addr.addr, align 4
  %shr = ashr i32 %0, 1
  %idxprom = sext i32 %shr to i64
  %1 = load i32**, i32*** @PicPos, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %4 = load i32*, i32** %x.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %mb_addr.addr, align 4
  %shr2 = ashr i32 %5, 1
  %idxprom3 = sext i32 %shr2 to i64
  %6 = load i32**, i32*** @PicPos, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %6, i64 %idxprom3
  %7 = load i32*, i32** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx5, align 4
  %shl = shl i32 %8, 1
  %9 = load i32, i32* %mb_addr.addr, align 4
  %and = and i32 %9, 1
  %add = add nsw i32 %shl, %and
  %10 = load i32*, i32** %y.addr, align 8
  store i32 %add, i32* %10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_mb_pos(i32 %mb_addr, i32* %x, i32* %y, i32 %is_chroma) #0 {
entry:
  %mb_addr.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %is_chroma.addr = alloca i32, align 4
  store i32 %mb_addr, i32* %mb_addr.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32 %is_chroma, i32* %is_chroma.addr, align 4
  %0 = load void (i32, i32*, i32*)*, void (i32, i32*, i32*)** @get_mb_block_pos, align 8
  %1 = load i32, i32* %mb_addr.addr, align 4
  %2 = load i32*, i32** %x.addr, align 8
  %3 = load i32*, i32** %y.addr, align 8
  call void %0(i32 %1, i32* %2, i32* %3)
  %4 = load i32, i32* %is_chroma.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_size = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 119
  %arrayidx = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %6 = load i32, i32* %arrayidx1, align 4
  %7 = load i32*, i32** %x.addr, align 8
  %8 = load i32, i32* %7, align 4
  %mul = mul nsw i32 %8, %6
  store i32 %mul, i32* %7, align 4
  %9 = load i32, i32* %is_chroma.addr, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_size3 = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 119
  %arrayidx4 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size3, i32 0, i64 %idxprom2
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 1
  %11 = load i32, i32* %arrayidx5, align 4
  %12 = load i32*, i32** %y.addr, align 8
  %13 = load i32, i32* %12, align 4
  %mul6 = mul nsw i32 %13, %11
  store i32 %mul6, i32* %12, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @getNonAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %is_chroma, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %xN.addr = alloca i32, align 4
  %yN.addr = alloca i32, align 4
  %is_chroma.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  %currMb = alloca %struct.macroblock*, align 8
  %maxW = alloca i32, align 4
  %maxH = alloca i32, align 4
  %CurPos = alloca i32*, align 8
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %xN, i32* %xN.addr, align 4
  store i32 %yN, i32* %yN.addr, align 4
  store i32 %is_chroma, i32* %is_chroma.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load i32, i32* %curr_mb_nr.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %1, i32 0, i32 39
  %2 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %2, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMb, align 8
  %3 = load i32, i32* %is_chroma.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_size = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 119
  %arrayidx2 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size, i32 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %maxW, align 4
  %6 = load i32, i32* %is_chroma.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_size5 = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 119
  %arrayidx6 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size5, i32 0, i64 %idxprom4
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 1
  %8 = load i32, i32* %arrayidx7, align 4
  store i32 %8, i32* %maxH, align 4
  %9 = load i32, i32* %xN.addr, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else.17

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %yN.addr, align 4
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %11 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 25
  %12 = load i32, i32* %mbAddrD, align 4
  %13 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %13, i32 0, i32 1
  store i32 %12, i32* %mb_addr, align 4
  %14 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 29
  %15 = load i32, i32* %mbAvailD, align 4
  %16 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %16, i32 0, i32 0
  store i32 %15, i32* %available, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* %yN.addr, align 4
  %18 = load i32, i32* %maxH, align 4
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.else
  %19 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 22
  %20 = load i32, i32* %mbAddrA, align 4
  %21 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr12 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %21, i32 0, i32 1
  store i32 %20, i32* %mb_addr12, align 4
  %22 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 26
  %23 = load i32, i32* %mbAvailA, align 4
  %24 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available13 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %24, i32 0, i32 0
  store i32 %23, i32* %available13, align 4
  br label %if.end

if.else.14:                                       ; preds = %if.else
  %25 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available15 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %25, i32 0, i32 0
  store i32 0, i32* %available15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.9
  br label %if.end.43

if.else.17:                                       ; preds = %entry
  %26 = load i32, i32* %xN.addr, align 4
  %27 = load i32, i32* %maxW, align 4
  %cmp18 = icmp slt i32 %26, %27
  br i1 %cmp18, label %if.then.19, label %if.else.33

if.then.19:                                       ; preds = %if.else.17
  %28 = load i32, i32* %yN.addr, align 4
  %cmp20 = icmp slt i32 %28, 0
  br i1 %cmp20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.then.19
  %29 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 23
  %30 = load i32, i32* %mbAddrB, align 4
  %31 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr22 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %31, i32 0, i32 1
  store i32 %30, i32* %mb_addr22, align 4
  %32 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i32 0, i32 27
  %33 = load i32, i32* %mbAvailB, align 4
  %34 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available23 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %34, i32 0, i32 0
  store i32 %33, i32* %available23, align 4
  br label %if.end.32

if.else.24:                                       ; preds = %if.then.19
  %35 = load i32, i32* %yN.addr, align 4
  %36 = load i32, i32* %maxH, align 4
  %cmp25 = icmp slt i32 %35, %36
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.else.24
  %37 = load i32, i32* %curr_mb_nr.addr, align 4
  %38 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr27 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %38, i32 0, i32 1
  store i32 %37, i32* %mb_addr27, align 4
  %39 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available28 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %39, i32 0, i32 0
  store i32 1, i32* %available28, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %if.else.24
  %40 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available30 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %40, i32 0, i32 0
  store i32 0, i32* %available30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.21
  br label %if.end.42

if.else.33:                                       ; preds = %if.else.17
  %41 = load i32, i32* %xN.addr, align 4
  %42 = load i32, i32* %maxW, align 4
  %cmp34 = icmp sge i32 %41, %42
  br i1 %cmp34, label %land.lhs.true, label %if.else.39

land.lhs.true:                                    ; preds = %if.else.33
  %43 = load i32, i32* %yN.addr, align 4
  %cmp35 = icmp slt i32 %43, 0
  br i1 %cmp35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %land.lhs.true
  %44 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %44, i32 0, i32 24
  %45 = load i32, i32* %mbAddrC, align 4
  %46 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr37 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %46, i32 0, i32 1
  store i32 %45, i32* %mb_addr37, align 4
  %47 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 28
  %48 = load i32, i32* %mbAvailC, align 4
  %49 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available38 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %49, i32 0, i32 0
  store i32 %48, i32* %available38, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true, %if.else.33
  %50 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available40 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %50, i32 0, i32 0
  store i32 0, i32* %available40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.32
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.16
  %51 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available44 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %51, i32 0, i32 0
  %52 = load i32, i32* %available44, align 4
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %53 = load %struct.img_par*, %struct.img_par** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.img_par, %struct.img_par* %53, i32 0, i32 45
  %54 = load i32, i32* %DeblockCall, align 4
  %tobool45 = icmp ne i32 %54, 0
  br i1 %tobool45, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %lor.lhs.false, %if.end.43
  %55 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr47 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %55, i32 0, i32 1
  %56 = load i32, i32* %mb_addr47, align 4
  %idxprom48 = sext i32 %56 to i64
  %57 = load i32**, i32*** @PicPos, align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %57, i64 %idxprom48
  %58 = load i32*, i32** %arrayidx49, align 8
  store i32* %58, i32** %CurPos, align 8
  %59 = load i32, i32* %xN.addr, align 4
  %60 = load i32, i32* %maxW, align 4
  %sub = sub nsw i32 %60, 1
  %and = and i32 %59, %sub
  %61 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %61, i32 0, i32 2
  store i32 %and, i32* %x, align 4
  %62 = load i32, i32* %yN.addr, align 4
  %63 = load i32, i32* %maxH, align 4
  %sub50 = sub nsw i32 %63, 1
  %and51 = and i32 %62, %sub50
  %64 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %64, i32 0, i32 3
  store i32 %and51, i32* %y, align 4
  %65 = load i32*, i32** %CurPos, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %65, i64 0
  %66 = load i32, i32* %arrayidx52, align 4
  %67 = load i32, i32* %maxW, align 4
  %mul = mul nsw i32 %66, %67
  %68 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x53 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %68, i32 0, i32 2
  %69 = load i32, i32* %x53, align 4
  %add = add nsw i32 %mul, %69
  %70 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %70, i32 0, i32 4
  store i32 %add, i32* %pos_x, align 4
  %71 = load i32*, i32** %CurPos, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %71, i64 1
  %72 = load i32, i32* %arrayidx54, align 4
  %73 = load i32, i32* %maxH, align 4
  %mul55 = mul nsw i32 %72, %73
  %74 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y56 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %74, i32 0, i32 3
  %75 = load i32, i32* %y56, align 4
  %add57 = add nsw i32 %mul55, %75
  %76 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %76, i32 0, i32 5
  store i32 %add57, i32* %pos_y, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.46, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define void @getAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %is_chroma, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %xN.addr = alloca i32, align 4
  %yN.addr = alloca i32, align 4
  %is_chroma.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  %currMb = alloca %struct.macroblock*, align 8
  %maxW = alloca i32, align 4
  %maxH = alloca i32, align 4
  %yM = alloca i32, align 4
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %xN, i32* %xN.addr, align 4
  store i32 %yN, i32* %yN.addr, align 4
  store i32 %is_chroma, i32* %is_chroma.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load i32, i32* %curr_mb_nr.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %1, i32 0, i32 39
  %2 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %2, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMb, align 8
  store i32 -1, i32* %yM, align 4
  %3 = load i32, i32* %is_chroma.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_size = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 119
  %arrayidx2 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size, i32 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %maxW, align 4
  %6 = load i32, i32* %is_chroma.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_size5 = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 119
  %arrayidx6 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size5, i32 0, i64 %idxprom4
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 1
  %8 = load i32, i32* %arrayidx7, align 4
  store i32 %8, i32* %maxH, align 4
  %9 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %9, i32 0, i32 0
  store i32 0, i32* %available, align 4
  %10 = load i32, i32* %yN.addr, align 4
  %11 = load i32, i32* %maxH, align 4
  %sub = sub nsw i32 %11, 1
  %cmp = icmp sgt i32 %10, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.362

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %xN.addr, align 4
  %13 = load i32, i32* %maxW, align 4
  %sub8 = sub nsw i32 %13, 1
  %cmp9 = icmp sgt i32 %12, %sub8
  br i1 %cmp9, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, i32* %yN.addr, align 4
  %cmp10 = icmp sge i32 %14, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %15 = load i32, i32* %yN.addr, align 4
  %16 = load i32, i32* %maxH, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11
  br label %if.end.362

if.end.14:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end
  %17 = load i32, i32* %xN.addr, align 4
  %cmp15 = icmp slt i32 %17, 0
  br i1 %cmp15, label %if.then.16, label %if.else.207

if.then.16:                                       ; preds = %if.end.14
  %18 = load i32, i32* %yN.addr, align 4
  %cmp17 = icmp slt i32 %18, 0
  br i1 %cmp17, label %if.then.18, label %if.else.72

if.then.18:                                       ; preds = %if.then.16
  %19 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 20
  %20 = load i32, i32* %mb_field, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.else.41, label %if.then.19

if.then.19:                                       ; preds = %if.then.18
  %21 = load i32, i32* %curr_mb_nr.addr, align 4
  %and = and i32 %21, 1
  %cmp20 = icmp eq i32 %and, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.19
  %22 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 25
  %23 = load i32, i32* %mbAddrD, align 4
  %add = add nsw i32 %23, 1
  %24 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %24, i32 0, i32 1
  store i32 %add, i32* %mb_addr, align 4
  %25 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i32 0, i32 29
  %26 = load i32, i32* %mbAvailD, align 4
  %27 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available22 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %27, i32 0, i32 0
  store i32 %26, i32* %available22, align 4
  %28 = load i32, i32* %yN.addr, align 4
  store i32 %28, i32* %yM, align 4
  br label %if.end.40

if.else:                                          ; preds = %if.then.19
  %29 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 22
  %30 = load i32, i32* %mbAddrA, align 4
  %31 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr23 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %31, i32 0, i32 1
  store i32 %30, i32* %mb_addr23, align 4
  %32 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i32 0, i32 26
  %33 = load i32, i32* %mbAvailA, align 4
  %34 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available24 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %34, i32 0, i32 0
  store i32 %33, i32* %available24, align 4
  %35 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA25 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 26
  %36 = load i32, i32* %mbAvailA25, align 4
  %tobool26 = icmp ne i32 %36, 0
  br i1 %tobool26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.else
  %37 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i32 0, i32 22
  %38 = load i32, i32* %mbAddrA28, align 4
  %idxprom29 = sext i32 %38 to i64
  %39 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data30 = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 39
  %40 = load %struct.macroblock*, %struct.macroblock** %mb_data30, align 8
  %arrayidx31 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %40, i64 %idxprom29
  %mb_field32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx31, i32 0, i32 20
  %41 = load i32, i32* %mb_field32, align 4
  %tobool33 = icmp ne i32 %41, 0
  br i1 %tobool33, label %if.else.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.27
  %42 = load i32, i32* %yN.addr, align 4
  store i32 %42, i32* %yM, align 4
  br label %if.end.38

if.else.35:                                       ; preds = %if.then.27
  %43 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr36 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %43, i32 0, i32 1
  %44 = load i32, i32* %mb_addr36, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %mb_addr36, align 4
  %45 = load i32, i32* %yN.addr, align 4
  %46 = load i32, i32* %maxH, align 4
  %add37 = add nsw i32 %45, %46
  %shr = ashr i32 %add37, 1
  store i32 %shr, i32* %yM, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.21
  br label %if.end.71

if.else.41:                                       ; preds = %if.then.18
  %47 = load i32, i32* %curr_mb_nr.addr, align 4
  %and42 = and i32 %47, 1
  %cmp43 = icmp eq i32 %and42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.64

if.then.44:                                       ; preds = %if.else.41
  %48 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD45 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %48, i32 0, i32 25
  %49 = load i32, i32* %mbAddrD45, align 4
  %50 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr46 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %50, i32 0, i32 1
  store i32 %49, i32* %mb_addr46, align 4
  %51 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD47 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 29
  %52 = load i32, i32* %mbAvailD47, align 4
  %53 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available48 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %53, i32 0, i32 0
  store i32 %52, i32* %available48, align 4
  %54 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD49 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %54, i32 0, i32 29
  %55 = load i32, i32* %mbAvailD49, align 4
  %tobool50 = icmp ne i32 %55, 0
  br i1 %tobool50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %if.then.44
  %56 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD52 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %56, i32 0, i32 25
  %57 = load i32, i32* %mbAddrD52, align 4
  %idxprom53 = sext i32 %57 to i64
  %58 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data54 = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 39
  %59 = load %struct.macroblock*, %struct.macroblock** %mb_data54, align 8
  %arrayidx55 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %59, i64 %idxprom53
  %mb_field56 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx55, i32 0, i32 20
  %60 = load i32, i32* %mb_field56, align 4
  %tobool57 = icmp ne i32 %60, 0
  br i1 %tobool57, label %if.else.61, label %if.then.58

if.then.58:                                       ; preds = %if.then.51
  %61 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr59 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %61, i32 0, i32 1
  %62 = load i32, i32* %mb_addr59, align 4
  %inc60 = add nsw i32 %62, 1
  store i32 %inc60, i32* %mb_addr59, align 4
  %63 = load i32, i32* %yN.addr, align 4
  %mul = mul nsw i32 2, %63
  store i32 %mul, i32* %yM, align 4
  br label %if.end.62

if.else.61:                                       ; preds = %if.then.51
  %64 = load i32, i32* %yN.addr, align 4
  store i32 %64, i32* %yM, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.58
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.44
  br label %if.end.70

if.else.64:                                       ; preds = %if.else.41
  %65 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrD65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i32 0, i32 25
  %66 = load i32, i32* %mbAddrD65, align 4
  %add66 = add nsw i32 %66, 1
  %67 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr67 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %67, i32 0, i32 1
  store i32 %add66, i32* %mb_addr67, align 4
  %68 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailD68 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %68, i32 0, i32 29
  %69 = load i32, i32* %mbAvailD68, align 4
  %70 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available69 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %70, i32 0, i32 0
  store i32 %69, i32* %available69, align 4
  %71 = load i32, i32* %yN.addr, align 4
  store i32 %71, i32* %yM, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.64, %if.end.63
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.40
  br label %if.end.206

if.else.72:                                       ; preds = %if.then.16
  %72 = load i32, i32* %yN.addr, align 4
  %cmp73 = icmp sge i32 %72, 0
  br i1 %cmp73, label %land.lhs.true.74, label %if.end.205

land.lhs.true.74:                                 ; preds = %if.else.72
  %73 = load i32, i32* %yN.addr, align 4
  %74 = load i32, i32* %maxH, align 4
  %cmp75 = icmp slt i32 %73, %74
  br i1 %cmp75, label %if.then.76, label %if.end.205

if.then.76:                                       ; preds = %land.lhs.true.74
  %75 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %75, i32 0, i32 20
  %76 = load i32, i32* %mb_field77, align 4
  %tobool78 = icmp ne i32 %76, 0
  br i1 %tobool78, label %if.else.141, label %if.then.79

if.then.79:                                       ; preds = %if.then.76
  %77 = load i32, i32* %curr_mb_nr.addr, align 4
  %and80 = and i32 %77, 1
  %cmp81 = icmp eq i32 %and80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.109

if.then.82:                                       ; preds = %if.then.79
  %78 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA83 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %78, i32 0, i32 22
  %79 = load i32, i32* %mbAddrA83, align 4
  %80 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr84 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %80, i32 0, i32 1
  store i32 %79, i32* %mb_addr84, align 4
  %81 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA85 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i32 0, i32 26
  %82 = load i32, i32* %mbAvailA85, align 4
  %83 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available86 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %83, i32 0, i32 0
  store i32 %82, i32* %available86, align 4
  %84 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA87 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i32 0, i32 26
  %85 = load i32, i32* %mbAvailA87, align 4
  %tobool88 = icmp ne i32 %85, 0
  br i1 %tobool88, label %if.then.89, label %if.end.108

if.then.89:                                       ; preds = %if.then.82
  %86 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA90 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i32 0, i32 22
  %87 = load i32, i32* %mbAddrA90, align 4
  %idxprom91 = sext i32 %87 to i64
  %88 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data92 = getelementptr inbounds %struct.img_par, %struct.img_par* %88, i32 0, i32 39
  %89 = load %struct.macroblock*, %struct.macroblock** %mb_data92, align 8
  %arrayidx93 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %89, i64 %idxprom91
  %mb_field94 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx93, i32 0, i32 20
  %90 = load i32, i32* %mb_field94, align 4
  %tobool95 = icmp ne i32 %90, 0
  br i1 %tobool95, label %if.else.97, label %if.then.96

if.then.96:                                       ; preds = %if.then.89
  %91 = load i32, i32* %yN.addr, align 4
  store i32 %91, i32* %yM, align 4
  br label %if.end.107

if.else.97:                                       ; preds = %if.then.89
  %92 = load i32, i32* %yN.addr, align 4
  %and98 = and i32 %92, 1
  %cmp99 = icmp eq i32 %and98, 0
  br i1 %cmp99, label %if.then.100, label %if.else.102

if.then.100:                                      ; preds = %if.else.97
  %93 = load i32, i32* %yN.addr, align 4
  %shr101 = ashr i32 %93, 1
  store i32 %shr101, i32* %yM, align 4
  br label %if.end.106

if.else.102:                                      ; preds = %if.else.97
  %94 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr103 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %94, i32 0, i32 1
  %95 = load i32, i32* %mb_addr103, align 4
  %inc104 = add nsw i32 %95, 1
  store i32 %inc104, i32* %mb_addr103, align 4
  %96 = load i32, i32* %yN.addr, align 4
  %shr105 = ashr i32 %96, 1
  store i32 %shr105, i32* %yM, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.102, %if.then.100
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.96
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.82
  br label %if.end.140

if.else.109:                                      ; preds = %if.then.79
  %97 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA110 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %97, i32 0, i32 22
  %98 = load i32, i32* %mbAddrA110, align 4
  %99 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr111 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %99, i32 0, i32 1
  store i32 %98, i32* %mb_addr111, align 4
  %100 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA112 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %100, i32 0, i32 26
  %101 = load i32, i32* %mbAvailA112, align 4
  %102 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available113 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %102, i32 0, i32 0
  store i32 %101, i32* %available113, align 4
  %103 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA114 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %103, i32 0, i32 26
  %104 = load i32, i32* %mbAvailA114, align 4
  %tobool115 = icmp ne i32 %104, 0
  br i1 %tobool115, label %if.then.116, label %if.end.139

if.then.116:                                      ; preds = %if.else.109
  %105 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA117 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %105, i32 0, i32 22
  %106 = load i32, i32* %mbAddrA117, align 4
  %idxprom118 = sext i32 %106 to i64
  %107 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data119 = getelementptr inbounds %struct.img_par, %struct.img_par* %107, i32 0, i32 39
  %108 = load %struct.macroblock*, %struct.macroblock** %mb_data119, align 8
  %arrayidx120 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %108, i64 %idxprom118
  %mb_field121 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx120, i32 0, i32 20
  %109 = load i32, i32* %mb_field121, align 4
  %tobool122 = icmp ne i32 %109, 0
  br i1 %tobool122, label %if.else.126, label %if.then.123

if.then.123:                                      ; preds = %if.then.116
  %110 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr124 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %110, i32 0, i32 1
  %111 = load i32, i32* %mb_addr124, align 4
  %inc125 = add nsw i32 %111, 1
  store i32 %inc125, i32* %mb_addr124, align 4
  %112 = load i32, i32* %yN.addr, align 4
  store i32 %112, i32* %yM, align 4
  br label %if.end.138

if.else.126:                                      ; preds = %if.then.116
  %113 = load i32, i32* %yN.addr, align 4
  %and127 = and i32 %113, 1
  %cmp128 = icmp eq i32 %and127, 0
  br i1 %cmp128, label %if.then.129, label %if.else.132

if.then.129:                                      ; preds = %if.else.126
  %114 = load i32, i32* %yN.addr, align 4
  %115 = load i32, i32* %maxH, align 4
  %add130 = add nsw i32 %114, %115
  %shr131 = ashr i32 %add130, 1
  store i32 %shr131, i32* %yM, align 4
  br label %if.end.137

if.else.132:                                      ; preds = %if.else.126
  %116 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr133 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %116, i32 0, i32 1
  %117 = load i32, i32* %mb_addr133, align 4
  %inc134 = add nsw i32 %117, 1
  store i32 %inc134, i32* %mb_addr133, align 4
  %118 = load i32, i32* %yN.addr, align 4
  %119 = load i32, i32* %maxH, align 4
  %add135 = add nsw i32 %118, %119
  %shr136 = ashr i32 %add135, 1
  store i32 %shr136, i32* %yM, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.132, %if.then.129
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.123
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.else.109
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.108
  br label %if.end.204

if.else.141:                                      ; preds = %if.then.76
  %120 = load i32, i32* %curr_mb_nr.addr, align 4
  %and142 = and i32 %120, 1
  %cmp143 = icmp eq i32 %and142, 0
  br i1 %cmp143, label %if.then.144, label %if.else.171

if.then.144:                                      ; preds = %if.else.141
  %121 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA145 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %121, i32 0, i32 22
  %122 = load i32, i32* %mbAddrA145, align 4
  %123 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr146 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %123, i32 0, i32 1
  store i32 %122, i32* %mb_addr146, align 4
  %124 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA147 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %124, i32 0, i32 26
  %125 = load i32, i32* %mbAvailA147, align 4
  %126 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available148 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %126, i32 0, i32 0
  store i32 %125, i32* %available148, align 4
  %127 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA149 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %127, i32 0, i32 26
  %128 = load i32, i32* %mbAvailA149, align 4
  %tobool150 = icmp ne i32 %128, 0
  br i1 %tobool150, label %if.then.151, label %if.end.170

if.then.151:                                      ; preds = %if.then.144
  %129 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA152 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %129, i32 0, i32 22
  %130 = load i32, i32* %mbAddrA152, align 4
  %idxprom153 = sext i32 %130 to i64
  %131 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data154 = getelementptr inbounds %struct.img_par, %struct.img_par* %131, i32 0, i32 39
  %132 = load %struct.macroblock*, %struct.macroblock** %mb_data154, align 8
  %arrayidx155 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %132, i64 %idxprom153
  %mb_field156 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx155, i32 0, i32 20
  %133 = load i32, i32* %mb_field156, align 4
  %tobool157 = icmp ne i32 %133, 0
  br i1 %tobool157, label %if.else.168, label %if.then.158

if.then.158:                                      ; preds = %if.then.151
  %134 = load i32, i32* %yN.addr, align 4
  %135 = load i32, i32* %maxH, align 4
  %shr159 = ashr i32 %135, 1
  %cmp160 = icmp slt i32 %134, %shr159
  br i1 %cmp160, label %if.then.161, label %if.else.162

if.then.161:                                      ; preds = %if.then.158
  %136 = load i32, i32* %yN.addr, align 4
  %shl = shl i32 %136, 1
  store i32 %shl, i32* %yM, align 4
  br label %if.end.167

if.else.162:                                      ; preds = %if.then.158
  %137 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr163 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %137, i32 0, i32 1
  %138 = load i32, i32* %mb_addr163, align 4
  %inc164 = add nsw i32 %138, 1
  store i32 %inc164, i32* %mb_addr163, align 4
  %139 = load i32, i32* %yN.addr, align 4
  %shl165 = shl i32 %139, 1
  %140 = load i32, i32* %maxH, align 4
  %sub166 = sub nsw i32 %shl165, %140
  store i32 %sub166, i32* %yM, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.162, %if.then.161
  br label %if.end.169

if.else.168:                                      ; preds = %if.then.151
  %141 = load i32, i32* %yN.addr, align 4
  store i32 %141, i32* %yM, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.168, %if.end.167
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.144
  br label %if.end.203

if.else.171:                                      ; preds = %if.else.141
  %142 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA172 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %142, i32 0, i32 22
  %143 = load i32, i32* %mbAddrA172, align 4
  %144 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr173 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %144, i32 0, i32 1
  store i32 %143, i32* %mb_addr173, align 4
  %145 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA174 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %145, i32 0, i32 26
  %146 = load i32, i32* %mbAvailA174, align 4
  %147 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available175 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %147, i32 0, i32 0
  store i32 %146, i32* %available175, align 4
  %148 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailA176 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %148, i32 0, i32 26
  %149 = load i32, i32* %mbAvailA176, align 4
  %tobool177 = icmp ne i32 %149, 0
  br i1 %tobool177, label %if.then.178, label %if.end.202

if.then.178:                                      ; preds = %if.else.171
  %150 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrA179 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %150, i32 0, i32 22
  %151 = load i32, i32* %mbAddrA179, align 4
  %idxprom180 = sext i32 %151 to i64
  %152 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data181 = getelementptr inbounds %struct.img_par, %struct.img_par* %152, i32 0, i32 39
  %153 = load %struct.macroblock*, %struct.macroblock** %mb_data181, align 8
  %arrayidx182 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %153, i64 %idxprom180
  %mb_field183 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx182, i32 0, i32 20
  %154 = load i32, i32* %mb_field183, align 4
  %tobool184 = icmp ne i32 %154, 0
  br i1 %tobool184, label %if.else.198, label %if.then.185

if.then.185:                                      ; preds = %if.then.178
  %155 = load i32, i32* %yN.addr, align 4
  %156 = load i32, i32* %maxH, align 4
  %shr186 = ashr i32 %156, 1
  %cmp187 = icmp slt i32 %155, %shr186
  br i1 %cmp187, label %if.then.188, label %if.else.191

if.then.188:                                      ; preds = %if.then.185
  %157 = load i32, i32* %yN.addr, align 4
  %shl189 = shl i32 %157, 1
  %add190 = add nsw i32 %shl189, 1
  store i32 %add190, i32* %yM, align 4
  br label %if.end.197

if.else.191:                                      ; preds = %if.then.185
  %158 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr192 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %158, i32 0, i32 1
  %159 = load i32, i32* %mb_addr192, align 4
  %inc193 = add nsw i32 %159, 1
  store i32 %inc193, i32* %mb_addr192, align 4
  %160 = load i32, i32* %yN.addr, align 4
  %shl194 = shl i32 %160, 1
  %add195 = add nsw i32 %shl194, 1
  %161 = load i32, i32* %maxH, align 4
  %sub196 = sub nsw i32 %add195, %161
  store i32 %sub196, i32* %yM, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.191, %if.then.188
  br label %if.end.201

if.else.198:                                      ; preds = %if.then.178
  %162 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr199 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %162, i32 0, i32 1
  %163 = load i32, i32* %mb_addr199, align 4
  %inc200 = add nsw i32 %163, 1
  store i32 %inc200, i32* %mb_addr199, align 4
  %164 = load i32, i32* %yN.addr, align 4
  store i32 %164, i32* %yM, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.198, %if.end.197
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.else.171
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.170
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.140
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %land.lhs.true.74, %if.else.72
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.71
  br label %if.end.345

if.else.207:                                      ; preds = %if.end.14
  %165 = load i32, i32* %xN.addr, align 4
  %cmp208 = icmp sge i32 %165, 0
  br i1 %cmp208, label %land.lhs.true.209, label %if.else.296

land.lhs.true.209:                                ; preds = %if.else.207
  %166 = load i32, i32* %xN.addr, align 4
  %167 = load i32, i32* %maxW, align 4
  %cmp210 = icmp slt i32 %166, %167
  br i1 %cmp210, label %if.then.211, label %if.else.296

if.then.211:                                      ; preds = %land.lhs.true.209
  %168 = load i32, i32* %yN.addr, align 4
  %cmp212 = icmp slt i32 %168, 0
  br i1 %cmp212, label %if.then.213, label %if.else.275

if.then.213:                                      ; preds = %if.then.211
  %169 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field214 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %169, i32 0, i32 20
  %170 = load i32, i32* %mb_field214, align 4
  %tobool215 = icmp ne i32 %170, 0
  br i1 %tobool215, label %if.else.243, label %if.then.216

if.then.216:                                      ; preds = %if.then.213
  %171 = load i32, i32* %curr_mb_nr.addr, align 4
  %and217 = and i32 %171, 1
  %cmp218 = icmp eq i32 %and217, 0
  br i1 %cmp218, label %if.then.219, label %if.else.238

if.then.219:                                      ; preds = %if.then.216
  %172 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %172, i32 0, i32 23
  %173 = load i32, i32* %mbAddrB, align 4
  %174 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr220 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %174, i32 0, i32 1
  store i32 %173, i32* %mb_addr220, align 4
  %175 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %175, i32 0, i32 27
  %176 = load i32, i32* %mbAvailB, align 4
  %tobool221 = icmp ne i32 %176, 0
  br i1 %tobool221, label %if.then.222, label %if.end.235

if.then.222:                                      ; preds = %if.then.219
  %177 = load %struct.img_par*, %struct.img_par** @img, align 8
  %DeblockCall = getelementptr inbounds %struct.img_par, %struct.img_par* %177, i32 0, i32 45
  %178 = load i32, i32* %DeblockCall, align 4
  %cmp223 = icmp eq i32 %178, 1
  br i1 %cmp223, label %land.lhs.true.224, label %if.then.231

land.lhs.true.224:                                ; preds = %if.then.222
  %179 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB225 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %179, i32 0, i32 23
  %180 = load i32, i32* %mbAddrB225, align 4
  %idxprom226 = sext i32 %180 to i64
  %181 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data227 = getelementptr inbounds %struct.img_par, %struct.img_par* %181, i32 0, i32 39
  %182 = load %struct.macroblock*, %struct.macroblock** %mb_data227, align 8
  %arrayidx228 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %182, i64 %idxprom226
  %mb_field229 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx228, i32 0, i32 20
  %183 = load i32, i32* %mb_field229, align 4
  %tobool230 = icmp ne i32 %183, 0
  br i1 %tobool230, label %if.end.234, label %if.then.231

if.then.231:                                      ; preds = %land.lhs.true.224, %if.then.222
  %184 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr232 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %184, i32 0, i32 1
  %185 = load i32, i32* %mb_addr232, align 4
  %add233 = add nsw i32 %185, 1
  store i32 %add233, i32* %mb_addr232, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.231, %land.lhs.true.224
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.then.219
  %186 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB236 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %186, i32 0, i32 27
  %187 = load i32, i32* %mbAvailB236, align 4
  %188 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available237 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %188, i32 0, i32 0
  store i32 %187, i32* %available237, align 4
  %189 = load i32, i32* %yN.addr, align 4
  store i32 %189, i32* %yM, align 4
  br label %if.end.242

if.else.238:                                      ; preds = %if.then.216
  %190 = load i32, i32* %curr_mb_nr.addr, align 4
  %sub239 = sub i32 %190, 1
  %191 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr240 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %191, i32 0, i32 1
  store i32 %sub239, i32* %mb_addr240, align 4
  %192 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available241 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %192, i32 0, i32 0
  store i32 1, i32* %available241, align 4
  %193 = load i32, i32* %yN.addr, align 4
  store i32 %193, i32* %yM, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.238, %if.end.235
  br label %if.end.274

if.else.243:                                      ; preds = %if.then.213
  %194 = load i32, i32* %curr_mb_nr.addr, align 4
  %and244 = and i32 %194, 1
  %cmp245 = icmp eq i32 %and244, 0
  br i1 %cmp245, label %if.then.246, label %if.else.267

if.then.246:                                      ; preds = %if.else.243
  %195 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB247 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %195, i32 0, i32 23
  %196 = load i32, i32* %mbAddrB247, align 4
  %197 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr248 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %197, i32 0, i32 1
  store i32 %196, i32* %mb_addr248, align 4
  %198 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB249 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %198, i32 0, i32 27
  %199 = load i32, i32* %mbAvailB249, align 4
  %200 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available250 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %200, i32 0, i32 0
  store i32 %199, i32* %available250, align 4
  %201 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB251 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %201, i32 0, i32 27
  %202 = load i32, i32* %mbAvailB251, align 4
  %tobool252 = icmp ne i32 %202, 0
  br i1 %tobool252, label %if.then.253, label %if.end.266

if.then.253:                                      ; preds = %if.then.246
  %203 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB254 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %203, i32 0, i32 23
  %204 = load i32, i32* %mbAddrB254, align 4
  %idxprom255 = sext i32 %204 to i64
  %205 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data256 = getelementptr inbounds %struct.img_par, %struct.img_par* %205, i32 0, i32 39
  %206 = load %struct.macroblock*, %struct.macroblock** %mb_data256, align 8
  %arrayidx257 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %206, i64 %idxprom255
  %mb_field258 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx257, i32 0, i32 20
  %207 = load i32, i32* %mb_field258, align 4
  %tobool259 = icmp ne i32 %207, 0
  br i1 %tobool259, label %if.else.264, label %if.then.260

if.then.260:                                      ; preds = %if.then.253
  %208 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr261 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %208, i32 0, i32 1
  %209 = load i32, i32* %mb_addr261, align 4
  %inc262 = add nsw i32 %209, 1
  store i32 %inc262, i32* %mb_addr261, align 4
  %210 = load i32, i32* %yN.addr, align 4
  %mul263 = mul nsw i32 2, %210
  store i32 %mul263, i32* %yM, align 4
  br label %if.end.265

if.else.264:                                      ; preds = %if.then.253
  %211 = load i32, i32* %yN.addr, align 4
  store i32 %211, i32* %yM, align 4
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.264, %if.then.260
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.246
  br label %if.end.273

if.else.267:                                      ; preds = %if.else.243
  %212 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB268 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %212, i32 0, i32 23
  %213 = load i32, i32* %mbAddrB268, align 4
  %add269 = add nsw i32 %213, 1
  %214 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr270 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %214, i32 0, i32 1
  store i32 %add269, i32* %mb_addr270, align 4
  %215 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailB271 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %215, i32 0, i32 27
  %216 = load i32, i32* %mbAvailB271, align 4
  %217 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available272 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %217, i32 0, i32 0
  store i32 %216, i32* %available272, align 4
  %218 = load i32, i32* %yN.addr, align 4
  store i32 %218, i32* %yM, align 4
  br label %if.end.273

if.end.273:                                       ; preds = %if.else.267, %if.end.266
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %if.end.242
  br label %if.end.295

if.else.275:                                      ; preds = %if.then.211
  %219 = load i32, i32* %yN.addr, align 4
  %cmp276 = icmp eq i32 %219, 0
  br i1 %cmp276, label %land.lhs.true.277, label %if.else.286

land.lhs.true.277:                                ; preds = %if.else.275
  %220 = load %struct.img_par*, %struct.img_par** @img, align 8
  %DeblockCall278 = getelementptr inbounds %struct.img_par, %struct.img_par* %220, i32 0, i32 45
  %221 = load i32, i32* %DeblockCall278, align 4
  %cmp279 = icmp eq i32 %221, 2
  br i1 %cmp279, label %if.then.280, label %if.else.286

if.then.280:                                      ; preds = %land.lhs.true.277
  %222 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrB281 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %222, i32 0, i32 23
  %223 = load i32, i32* %mbAddrB281, align 4
  %add282 = add nsw i32 %223, 1
  %224 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr283 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %224, i32 0, i32 1
  store i32 %add282, i32* %mb_addr283, align 4
  %225 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available284 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %225, i32 0, i32 0
  store i32 1, i32* %available284, align 4
  %226 = load i32, i32* %yN.addr, align 4
  %sub285 = sub nsw i32 %226, 1
  store i32 %sub285, i32* %yM, align 4
  br label %if.end.294

if.else.286:                                      ; preds = %land.lhs.true.277, %if.else.275
  %227 = load i32, i32* %yN.addr, align 4
  %cmp287 = icmp sge i32 %227, 0
  br i1 %cmp287, label %land.lhs.true.288, label %if.end.293

land.lhs.true.288:                                ; preds = %if.else.286
  %228 = load i32, i32* %yN.addr, align 4
  %229 = load i32, i32* %maxH, align 4
  %cmp289 = icmp slt i32 %228, %229
  br i1 %cmp289, label %if.then.290, label %if.end.293

if.then.290:                                      ; preds = %land.lhs.true.288
  %230 = load i32, i32* %curr_mb_nr.addr, align 4
  %231 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr291 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %231, i32 0, i32 1
  store i32 %230, i32* %mb_addr291, align 4
  %232 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available292 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %232, i32 0, i32 0
  store i32 1, i32* %available292, align 4
  %233 = load i32, i32* %yN.addr, align 4
  store i32 %233, i32* %yM, align 4
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.290, %land.lhs.true.288, %if.else.286
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.then.280
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.end.274
  br label %if.end.344

if.else.296:                                      ; preds = %land.lhs.true.209, %if.else.207
  %234 = load i32, i32* %yN.addr, align 4
  %cmp297 = icmp slt i32 %234, 0
  br i1 %cmp297, label %if.then.298, label %if.end.343

if.then.298:                                      ; preds = %if.else.296
  %235 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mb_field299 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %235, i32 0, i32 20
  %236 = load i32, i32* %mb_field299, align 4
  %tobool300 = icmp ne i32 %236, 0
  br i1 %tobool300, label %if.else.311, label %if.then.301

if.then.301:                                      ; preds = %if.then.298
  %237 = load i32, i32* %curr_mb_nr.addr, align 4
  %and302 = and i32 %237, 1
  %cmp303 = icmp eq i32 %and302, 0
  br i1 %cmp303, label %if.then.304, label %if.else.308

if.then.304:                                      ; preds = %if.then.301
  %238 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %238, i32 0, i32 24
  %239 = load i32, i32* %mbAddrC, align 4
  %add305 = add nsw i32 %239, 1
  %240 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr306 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %240, i32 0, i32 1
  store i32 %add305, i32* %mb_addr306, align 4
  %241 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC = getelementptr inbounds %struct.macroblock, %struct.macroblock* %241, i32 0, i32 28
  %242 = load i32, i32* %mbAvailC, align 4
  %243 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available307 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %243, i32 0, i32 0
  store i32 %242, i32* %available307, align 4
  %244 = load i32, i32* %yN.addr, align 4
  store i32 %244, i32* %yM, align 4
  br label %if.end.310

if.else.308:                                      ; preds = %if.then.301
  %245 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available309 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %245, i32 0, i32 0
  store i32 0, i32* %available309, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.308, %if.then.304
  br label %if.end.342

if.else.311:                                      ; preds = %if.then.298
  %246 = load i32, i32* %curr_mb_nr.addr, align 4
  %and312 = and i32 %246, 1
  %cmp313 = icmp eq i32 %and312, 0
  br i1 %cmp313, label %if.then.314, label %if.else.335

if.then.314:                                      ; preds = %if.else.311
  %247 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC315 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %247, i32 0, i32 24
  %248 = load i32, i32* %mbAddrC315, align 4
  %249 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr316 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %249, i32 0, i32 1
  store i32 %248, i32* %mb_addr316, align 4
  %250 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC317 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %250, i32 0, i32 28
  %251 = load i32, i32* %mbAvailC317, align 4
  %252 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available318 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %252, i32 0, i32 0
  store i32 %251, i32* %available318, align 4
  %253 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC319 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %253, i32 0, i32 28
  %254 = load i32, i32* %mbAvailC319, align 4
  %tobool320 = icmp ne i32 %254, 0
  br i1 %tobool320, label %if.then.321, label %if.end.334

if.then.321:                                      ; preds = %if.then.314
  %255 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC322 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %255, i32 0, i32 24
  %256 = load i32, i32* %mbAddrC322, align 4
  %idxprom323 = sext i32 %256 to i64
  %257 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data324 = getelementptr inbounds %struct.img_par, %struct.img_par* %257, i32 0, i32 39
  %258 = load %struct.macroblock*, %struct.macroblock** %mb_data324, align 8
  %arrayidx325 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %258, i64 %idxprom323
  %mb_field326 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx325, i32 0, i32 20
  %259 = load i32, i32* %mb_field326, align 4
  %tobool327 = icmp ne i32 %259, 0
  br i1 %tobool327, label %if.else.332, label %if.then.328

if.then.328:                                      ; preds = %if.then.321
  %260 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr329 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %260, i32 0, i32 1
  %261 = load i32, i32* %mb_addr329, align 4
  %inc330 = add nsw i32 %261, 1
  store i32 %inc330, i32* %mb_addr329, align 4
  %262 = load i32, i32* %yN.addr, align 4
  %mul331 = mul nsw i32 2, %262
  store i32 %mul331, i32* %yM, align 4
  br label %if.end.333

if.else.332:                                      ; preds = %if.then.321
  %263 = load i32, i32* %yN.addr, align 4
  store i32 %263, i32* %yM, align 4
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.332, %if.then.328
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.then.314
  br label %if.end.341

if.else.335:                                      ; preds = %if.else.311
  %264 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAddrC336 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %264, i32 0, i32 24
  %265 = load i32, i32* %mbAddrC336, align 4
  %add337 = add nsw i32 %265, 1
  %266 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr338 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %266, i32 0, i32 1
  store i32 %add337, i32* %mb_addr338, align 4
  %267 = load %struct.macroblock*, %struct.macroblock** %currMb, align 8
  %mbAvailC339 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %267, i32 0, i32 28
  %268 = load i32, i32* %mbAvailC339, align 4
  %269 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available340 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %269, i32 0, i32 0
  store i32 %268, i32* %available340, align 4
  %270 = load i32, i32* %yN.addr, align 4
  store i32 %270, i32* %yM, align 4
  br label %if.end.341

if.end.341:                                       ; preds = %if.else.335, %if.end.334
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %if.end.310
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %if.else.296
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %if.end.295
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.end.206
  %271 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available346 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %271, i32 0, i32 0
  %272 = load i32, i32* %available346, align 4
  %tobool347 = icmp ne i32 %272, 0
  br i1 %tobool347, label %if.then.350, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.345
  %273 = load %struct.img_par*, %struct.img_par** @img, align 8
  %DeblockCall348 = getelementptr inbounds %struct.img_par, %struct.img_par* %273, i32 0, i32 45
  %274 = load i32, i32* %DeblockCall348, align 4
  %tobool349 = icmp ne i32 %274, 0
  br i1 %tobool349, label %if.then.350, label %if.end.362

if.then.350:                                      ; preds = %lor.lhs.false, %if.end.345
  %275 = load i32, i32* %xN.addr, align 4
  %276 = load i32, i32* %maxW, align 4
  %sub351 = sub nsw i32 %276, 1
  %and352 = and i32 %275, %sub351
  %277 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %277, i32 0, i32 2
  store i32 %and352, i32* %x, align 4
  %278 = load i32, i32* %yM, align 4
  %279 = load i32, i32* %maxH, align 4
  %sub353 = sub nsw i32 %279, 1
  %and354 = and i32 %278, %sub353
  %280 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %280, i32 0, i32 3
  store i32 %and354, i32* %y, align 4
  %281 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %mb_addr355 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %281, i32 0, i32 1
  %282 = load i32, i32* %mb_addr355, align 4
  %283 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %283, i32 0, i32 4
  %284 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %284, i32 0, i32 5
  %285 = load i32, i32* %is_chroma.addr, align 4
  call void @get_mb_pos(i32 %282, i32* %pos_x, i32* %pos_y, i32 %285)
  %286 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x356 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %286, i32 0, i32 2
  %287 = load i32, i32* %x356, align 4
  %288 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x357 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %288, i32 0, i32 4
  %289 = load i32, i32* %pos_x357, align 4
  %add358 = add nsw i32 %289, %287
  store i32 %add358, i32* %pos_x357, align 4
  %290 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y359 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %290, i32 0, i32 3
  %291 = load i32, i32* %y359, align 4
  %292 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y360 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %292, i32 0, i32 5
  %293 = load i32, i32* %pos_y360, align 4
  %add361 = add nsw i32 %293, %291
  store i32 %add361, i32* %pos_y360, align 4
  br label %if.end.362

if.end.362:                                       ; preds = %if.then, %if.then.13, %if.then.350, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define void @getLuma4x4Neighbour(i32 %curr_mb_nr, i32 %block_x, i32 %block_y, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %1 = load i32, i32* %curr_mb_nr.addr, align 4
  %2 = load i32, i32* %block_x.addr, align 4
  %3 = load i32, i32* %block_y.addr, align 4
  %4 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  call void %0(i32 %1, i32 %2, i32 %3, i32 0, %struct.pix_pos* %4)
  %5 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %5, i32 0, i32 0
  %6 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %7, i32 0, i32 2
  %8 = load i32, i32* %x, align 4
  %shr = ashr i32 %8, 2
  store i32 %shr, i32* %x, align 4
  %9 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %9, i32 0, i32 3
  %10 = load i32, i32* %y, align 4
  %shr1 = ashr i32 %10, 2
  store i32 %shr1, i32* %y, align 4
  %11 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %11, i32 0, i32 4
  %12 = load i32, i32* %pos_x, align 4
  %shr2 = ashr i32 %12, 2
  store i32 %shr2, i32* %pos_x, align 4
  %13 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %13, i32 0, i32 5
  %14 = load i32, i32* %pos_y, align 4
  %shr3 = ashr i32 %14, 2
  store i32 %shr3, i32* %pos_y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @getChroma4x4Neighbour(i32 %curr_mb_nr, i32 %block_x, i32 %block_y, %struct.pix_pos* %pix) #0 {
entry:
  %curr_mb_nr.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %pix.addr = alloca %struct.pix_pos*, align 8
  store i32 %curr_mb_nr, i32* %curr_mb_nr.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store %struct.pix_pos* %pix, %struct.pix_pos** %pix.addr, align 8
  %0 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %1 = load i32, i32* %curr_mb_nr.addr, align 4
  %2 = load i32, i32* %block_x.addr, align 4
  %3 = load i32, i32* %block_y.addr, align 4
  %4 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  call void %0(i32 %1, i32 %2, i32 %3, i32 1, %struct.pix_pos* %4)
  %5 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %5, i32 0, i32 0
  %6 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %7, i32 0, i32 2
  %8 = load i32, i32* %x, align 4
  %shr = ashr i32 %8, 2
  store i32 %shr, i32* %x, align 4
  %9 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %9, i32 0, i32 3
  %10 = load i32, i32* %y, align 4
  %shr1 = ashr i32 %10, 2
  store i32 %shr1, i32* %y, align 4
  %11 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %11, i32 0, i32 4
  %12 = load i32, i32* %pos_x, align 4
  %shr2 = ashr i32 %12, 2
  store i32 %shr2, i32* %pos_x, align 4
  %13 = load %struct.pix_pos*, %struct.pix_pos** %pix.addr, align 8
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %13, i32 0, i32 5
  %14 = load i32, i32* %pos_y, align 4
  %shr3 = ashr i32 %14, 2
  store i32 %shr3, i32* %pos_y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
