; ModuleID = 'fast_me.c'
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }

@AlphaSec = common global [8 x float] zeroinitializer, align 16
@AlphaThird = common global [8 x float] zeroinitializer, align 16
@input = external global %struct.InputParameters*, align 8
@img = external global %struct.ImageParameters*, align 8
@quant_coef = internal constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243], [4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243]], [4 x [4 x i32]] [[4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660], [4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660]], [4 x [4 x i32]] [[4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194], [4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194]], [4 x [4 x i32]] [[4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647], [4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647]], [4 x [4 x i32]] [[4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355], [4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355]], [4 x [4 x i32]] [[4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893], [4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893]]], align 16
@Quantize_step = common global float 0.000000e+00, align 4
@Bsize = common global [8 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"get_mem_mv: mv\00", align 1
@flag_intra = common global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"get_mem_FME: flag_intra\00", align 1
@McostState = common global i32** null, align 8
@all_mincost = common global i32***** null, align 8
@all_bwmincost = common global i32***** null, align 8
@SearchState = common global i8** null, align 8
@byte_abs = external global i32*, align 8
@FastIntegerPelBlockMotionSearch.Diamond_x = internal global [4 x i32] [i32 -1, i32 0, i32 1, i32 0], align 16
@FastIntegerPelBlockMotionSearch.Diamond_y = internal global [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 16
@FastIntegerPelBlockMotionSearch.Hexagon_x = internal global [6 x i32] [i32 2, i32 1, i32 -1, i32 -2, i32 -1, i32 1], align 16
@FastIntegerPelBlockMotionSearch.Hexagon_y = internal global [6 x i32] [i32 0, i32 -2, i32 -2, i32 0, i32 2, i32 2], align 16
@FastIntegerPelBlockMotionSearch.Big_Hexagon_x = internal global [16 x i32] [i32 0, i32 -2, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -2, i32 0, i32 2, i32 4, i32 4, i32 4, i32 4, i32 4, i32 2], align 16
@FastIntegerPelBlockMotionSearch.Big_Hexagon_y = internal global [16 x i32] [i32 4, i32 3, i32 2, i32 1, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3], align 16
@listX = external global [6 x %struct.storable_picture**], align 16
@pred_SAD_ref = common global i32 0, align 4
@pred_SAD_space = common global i32 0, align 4
@pred_SAD_uplayer = common global i32 0, align 4
@mvbits = external global i32*, align 8
@pred_MV_uplayer = common global [2 x i32] zeroinitializer, align 4
@Bframe_ctr = external global i32, align 4
@pred_MV_time = common global [2 x i32] zeroinitializer, align 4
@pred_MV_ref = common global [2 x i32] zeroinitializer, align 4
@spiral_search_x = external global i32*, align 8
@spiral_search_y = external global i32*, align 8
@PelY_14 = internal global i16 (i16**, i32, i32, i32, i32)* null, align 8
@FastSubPelBlockMotionSearch.Diamond_x = internal global [4 x i32] [i32 -1, i32 0, i32 1, i32 0], align 16
@FastSubPelBlockMotionSearch.Diamond_y = internal global [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 16
@flag_intra_SAD = common global i32 0, align 4
@pred_SAD_time = common global i32 0, align 4
@FME_blocktype = common global i32 0, align 4
@Thresh4x4 = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @DefineThreshold() #0 {
entry:
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaSec, i32 0, i64 1), align 4
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaSec, i32 0, i64 2), align 4
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaSec, i32 0, i64 3), align 4
  store float 0x3F947AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaSec, i32 0, i64 4), align 4
  store float 0x3F9EB851E0000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaSec, i32 0, i64 5), align 4
  store float 0x3F9EB851E0000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaSec, i32 0, i64 6), align 4
  store float 0x3FA47AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaSec, i32 0, i64 7), align 4
  store float 0x3FAEB851E0000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaThird, i32 0, i64 1), align 4
  store float 0x3FB1EB8520000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaThird, i32 0, i64 2), align 4
  store float 0x3FB1EB8520000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaThird, i32 0, i64 3), align 4
  store float 0x3FB47AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaThird, i32 0, i64 4), align 4
  store float 0x3FBEB851E0000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaThird, i32 0, i64 5), align 4
  store float 0x3FBC28F5C0000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaThird, i32 0, i64 6), align 4
  store float 0x3FC3333340000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaThird, i32 0, i64 7), align 4
  call void @DefineThresholdMB()
  ret void
}

; Function Attrs: nounwind uwtable
define void @DefineThresholdMB() #0 {
entry:
  %gb_qp_per = alloca i32, align 4
  %gb_qp_rem = alloca i32, align 4
  %gb_q_bits = alloca i32, align 4
  %gb_qp_const = alloca i32, align 4
  %Thresh4x4 = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 4
  %1 = load i32, i32* %qpN, align 4
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 6
  store i32 %div, i32* %gb_qp_per, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 4
  %3 = load i32, i32* %qpN1, align 4
  %sub2 = sub nsw i32 %3, 0
  %rem = srem i32 %sub2, 6
  store i32 %rem, i32* %gb_qp_rem, align 4
  %4 = load i32, i32* %gb_qp_per, align 4
  %add = add nsw i32 15, %4
  store i32 %add, i32* %gb_q_bits, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 6
  %6 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %gb_q_bits, align 4
  %shl = shl i32 1, %7
  %div3 = sdiv i32 %shl, 3
  store i32 %div3, i32* %gb_qp_const, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %gb_q_bits, align 4
  %shl4 = shl i32 1, %8
  %div5 = sdiv i32 %shl4, 6
  store i32 %div5, i32* %gb_qp_const, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %gb_q_bits, align 4
  %shl6 = shl i32 1, %9
  %10 = load i32, i32* %gb_qp_const, align 4
  %sub7 = sub nsw i32 %shl6, %10
  %11 = load i32, i32* %gb_qp_rem, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom
  %arrayidx8 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx, i32 0, i64 0
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx8, i32 0, i64 0
  %12 = load i32, i32* %arrayidx9, align 4
  %div10 = sdiv i32 %sub7, %12
  store i32 %div10, i32* %Thresh4x4, align 4
  %13 = load i32, i32* %Thresh4x4, align 4
  %conv = sitofp i32 %13 to float
  %div11 = fdiv float %conv, 0x403670A3E0000000
  store float %div11, float* @Quantize_step, align 4
  %14 = load float, float* @Quantize_step, align 4
  %mul = fmul float 2.560000e+02, %14
  store float %mul, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 7), align 4
  %15 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 7), align 4
  %mul12 = fmul float %15, 4.000000e+00
  store float %mul12, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 6), align 4
  %16 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 7), align 4
  %mul13 = fmul float %16, 4.000000e+00
  store float %mul13, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 5), align 4
  %17 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 5), align 4
  %mul14 = fmul float %17, 4.000000e+00
  store float %mul14, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 4), align 4
  %18 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 4), align 4
  %mul15 = fmul float %18, 4.000000e+00
  store float %mul15, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 3), align 4
  %19 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 4), align 4
  %mul16 = fmul float %19, 4.000000e+00
  store float %mul16, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 2), align 4
  %20 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 2), align 4
  %mul17 = fmul float %20, 4.000000e+00
  store float %mul17, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 1), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_mem_mincost(i32****** %mv) #0 {
entry:
  %mv.addr = alloca i32******, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32****** %mv, i32******* %mv.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 13
  %1 = load i32, i32* %width, align 4
  %div = sdiv i32 %1, 4
  %conv = sext i32 %div to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %2 = bitcast i8* %call to i32*****
  %3 = load i32******, i32******* %mv.addr, align 8
  store i32***** %2, i32****** %3, align 8
  %cmp = icmp eq i32***** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 13
  %6 = load i32, i32* %width2, align 4
  %div3 = sdiv i32 %6, 4
  %cmp4 = icmp slt i32 %4, %div3
  br i1 %cmp4, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 15
  %8 = load i32, i32* %height, align 4
  %div6 = sdiv i32 %8, 4
  %conv7 = sext i32 %div6 to i64
  %call8 = call noalias i8* @calloc(i64 %conv7, i64 8) #3
  %9 = bitcast i8* %call8 to i32****
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32******, i32******* %mv.addr, align 8
  %12 = load i32*****, i32****** %11, align 8
  %arrayidx = getelementptr inbounds i32****, i32***** %12, i64 %idxprom
  store i32**** %9, i32***** %arrayidx, align 8
  %cmp9 = icmp eq i32**** %9, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.65, %if.end.12
  %13 = load i32, i32* %j, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 15
  %15 = load i32, i32* %height14, align 4
  %div15 = sdiv i32 %15, 4
  %cmp16 = icmp slt i32 %13, %div15
  br i1 %cmp16, label %for.body.18, label %for.end.67

for.body.18:                                      ; preds = %for.cond.13
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 9
  %17 = load i32, i32* %max_num_references, align 4
  %conv19 = sext i32 %17 to i64
  %call20 = call noalias i8* @calloc(i64 %conv19, i64 8) #3
  %18 = bitcast i8* %call20 to i32***
  %19 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load i32******, i32******* %mv.addr, align 8
  %22 = load i32*****, i32****** %21, align 8
  %arrayidx23 = getelementptr inbounds i32****, i32***** %22, i64 %idxprom22
  %23 = load i32****, i32***** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32***, i32**** %23, i64 %idxprom21
  store i32*** %18, i32**** %arrayidx24, align 8
  %cmp25 = icmp eq i32*** %18, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.18
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.body.18
  store i32 0, i32* %k, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.62, %if.end.28
  %24 = load i32, i32* %k, align 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 9
  %26 = load i32, i32* %max_num_references30, align 4
  %cmp31 = icmp slt i32 %24, %26
  br i1 %cmp31, label %for.body.33, label %for.end.64

for.body.33:                                      ; preds = %for.cond.29
  %call34 = call noalias i8* @calloc(i64 9, i64 8) #3
  %27 = bitcast i8* %call34 to i32**
  %28 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %30 to i64
  %31 = load i32******, i32******* %mv.addr, align 8
  %32 = load i32*****, i32****** %31, align 8
  %arrayidx38 = getelementptr inbounds i32****, i32***** %32, i64 %idxprom37
  %33 = load i32****, i32***** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i32***, i32**** %33, i64 %idxprom36
  %34 = load i32***, i32**** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32**, i32*** %34, i64 %idxprom35
  store i32** %27, i32*** %arrayidx40, align 8
  %cmp41 = icmp eq i32** %27, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body.33
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %for.body.33
  store i32 0, i32* %l, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %if.end.44
  %35 = load i32, i32* %l, align 4
  %cmp46 = icmp slt i32 %35, 9
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.45
  %call49 = call noalias i8* @calloc(i64 3, i64 4) #3
  %36 = bitcast i8* %call49 to i32*
  %37 = load i32, i32* %l, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %38 to i64
  %39 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %40 to i64
  %41 = load i32******, i32******* %mv.addr, align 8
  %42 = load i32*****, i32****** %41, align 8
  %arrayidx54 = getelementptr inbounds i32****, i32***** %42, i64 %idxprom53
  %43 = load i32****, i32***** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32***, i32**** %43, i64 %idxprom52
  %44 = load i32***, i32**** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32**, i32*** %44, i64 %idxprom51
  %45 = load i32**, i32*** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32*, i32** %45, i64 %idxprom50
  store i32* %36, i32** %arrayidx57, align 8
  %cmp58 = icmp eq i32* %36, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body.48
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %for.body.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %46 = load i32, i32* %l, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end
  %47 = load i32, i32* %k, align 4
  %inc63 = add nsw i32 %47, 1
  store i32 %inc63, i32* %k, align 4
  br label %for.cond.29

for.end.64:                                       ; preds = %for.cond.29
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.64
  %48 = load i32, i32* %j, align 4
  %inc66 = add nsw i32 %48, 1
  store i32 %inc66, i32* %j, align 4
  br label %for.cond.13

for.end.67:                                       ; preds = %for.cond.13
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %49 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %49, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 13
  %51 = load i32, i32* %width71, align 4
  %div72 = sdiv i32 %51, 4
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 15
  %53 = load i32, i32* %height73, align 4
  %mul = mul nsw i32 %div72, %53
  %div74 = sdiv i32 %mul, 4
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 9
  %55 = load i32, i32* %max_num_references75, align 4
  %mul76 = mul nsw i32 %div74, %55
  %mul77 = mul nsw i32 %mul76, 9
  %mul78 = mul nsw i32 %mul77, 3
  %conv79 = sext i32 %mul78 to i64
  %mul80 = mul i64 %conv79, 4
  %conv81 = trunc i64 %mul80 to i32
  ret i32 %conv81
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @get_mem_bwmincost(i32****** %mv) #0 {
entry:
  %mv.addr = alloca i32******, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32****** %mv, i32******* %mv.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 13
  %1 = load i32, i32* %width, align 4
  %div = sdiv i32 %1, 4
  %conv = sext i32 %div to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %2 = bitcast i8* %call to i32*****
  %3 = load i32******, i32******* %mv.addr, align 8
  store i32***** %2, i32****** %3, align 8
  %cmp = icmp eq i32***** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 13
  %6 = load i32, i32* %width2, align 4
  %div3 = sdiv i32 %6, 4
  %cmp4 = icmp slt i32 %4, %div3
  br i1 %cmp4, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 15
  %8 = load i32, i32* %height, align 4
  %div6 = sdiv i32 %8, 4
  %conv7 = sext i32 %div6 to i64
  %call8 = call noalias i8* @calloc(i64 %conv7, i64 8) #3
  %9 = bitcast i8* %call8 to i32****
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32******, i32******* %mv.addr, align 8
  %12 = load i32*****, i32****** %11, align 8
  %arrayidx = getelementptr inbounds i32****, i32***** %12, i64 %idxprom
  store i32**** %9, i32***** %arrayidx, align 8
  %cmp9 = icmp eq i32**** %9, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.65, %if.end.12
  %13 = load i32, i32* %j, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 15
  %15 = load i32, i32* %height14, align 4
  %div15 = sdiv i32 %15, 4
  %cmp16 = icmp slt i32 %13, %div15
  br i1 %cmp16, label %for.body.18, label %for.end.67

for.body.18:                                      ; preds = %for.cond.13
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 9
  %17 = load i32, i32* %max_num_references, align 4
  %conv19 = sext i32 %17 to i64
  %call20 = call noalias i8* @calloc(i64 %conv19, i64 8) #3
  %18 = bitcast i8* %call20 to i32***
  %19 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load i32******, i32******* %mv.addr, align 8
  %22 = load i32*****, i32****** %21, align 8
  %arrayidx23 = getelementptr inbounds i32****, i32***** %22, i64 %idxprom22
  %23 = load i32****, i32***** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32***, i32**** %23, i64 %idxprom21
  store i32*** %18, i32**** %arrayidx24, align 8
  %cmp25 = icmp eq i32*** %18, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.18
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.body.18
  store i32 0, i32* %k, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.62, %if.end.28
  %24 = load i32, i32* %k, align 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 9
  %26 = load i32, i32* %max_num_references30, align 4
  %cmp31 = icmp slt i32 %24, %26
  br i1 %cmp31, label %for.body.33, label %for.end.64

for.body.33:                                      ; preds = %for.cond.29
  %call34 = call noalias i8* @calloc(i64 9, i64 8) #3
  %27 = bitcast i8* %call34 to i32**
  %28 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %30 to i64
  %31 = load i32******, i32******* %mv.addr, align 8
  %32 = load i32*****, i32****** %31, align 8
  %arrayidx38 = getelementptr inbounds i32****, i32***** %32, i64 %idxprom37
  %33 = load i32****, i32***** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i32***, i32**** %33, i64 %idxprom36
  %34 = load i32***, i32**** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32**, i32*** %34, i64 %idxprom35
  store i32** %27, i32*** %arrayidx40, align 8
  %cmp41 = icmp eq i32** %27, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body.33
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %for.body.33
  store i32 0, i32* %l, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %if.end.44
  %35 = load i32, i32* %l, align 4
  %cmp46 = icmp slt i32 %35, 9
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.45
  %call49 = call noalias i8* @calloc(i64 3, i64 4) #3
  %36 = bitcast i8* %call49 to i32*
  %37 = load i32, i32* %l, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %38 to i64
  %39 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %40 to i64
  %41 = load i32******, i32******* %mv.addr, align 8
  %42 = load i32*****, i32****** %41, align 8
  %arrayidx54 = getelementptr inbounds i32****, i32***** %42, i64 %idxprom53
  %43 = load i32****, i32***** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32***, i32**** %43, i64 %idxprom52
  %44 = load i32***, i32**** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32**, i32*** %44, i64 %idxprom51
  %45 = load i32**, i32*** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32*, i32** %45, i64 %idxprom50
  store i32* %36, i32** %arrayidx57, align 8
  %cmp58 = icmp eq i32* %36, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body.48
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %for.body.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %46 = load i32, i32* %l, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end
  %47 = load i32, i32* %k, align 4
  %inc63 = add nsw i32 %47, 1
  store i32 %inc63, i32* %k, align 4
  br label %for.cond.29

for.end.64:                                       ; preds = %for.cond.29
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.64
  %48 = load i32, i32* %j, align 4
  %inc66 = add nsw i32 %48, 1
  store i32 %inc66, i32* %j, align 4
  br label %for.cond.13

for.end.67:                                       ; preds = %for.cond.13
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %49 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %49, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 13
  %51 = load i32, i32* %width71, align 4
  %div72 = sdiv i32 %51, 4
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 15
  %53 = load i32, i32* %height73, align 4
  %mul = mul nsw i32 %div72, %53
  %div74 = sdiv i32 %mul, 4
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 9
  %55 = load i32, i32* %max_num_references75, align 4
  %mul76 = mul nsw i32 %div74, %55
  %mul77 = mul nsw i32 %mul76, 9
  %mul78 = mul nsw i32 %mul77, 3
  %conv79 = sext i32 %mul78 to i64
  %mul80 = mul i64 %conv79, 4
  %conv81 = trunc i64 %mul80 to i32
  ret i32 %conv81
}

; Function Attrs: nounwind uwtable
define i32 @get_mem_FME() #0 {
entry:
  %memory_size = alloca i32, align 4
  store i32 0, i32* %memory_size, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 13
  %1 = load i32, i32* %width, align 4
  %shr = ashr i32 %1, 4
  %add = add nsw i32 %shr, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #3
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** @flag_intra, align 8
  %cmp = icmp eq i32* null, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 8
  %4 = load i32, i32* %search_range, align 4
  %mul = mul nsw i32 2, %4
  %add2 = add nsw i32 %mul, 1
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 8
  %6 = load i32, i32* %search_range3, align 4
  %mul4 = mul nsw i32 2, %6
  %add5 = add nsw i32 %mul4, 1
  %call6 = call i32 @get_mem2Dint(i32*** @McostState, i32 %add2, i32 %add5)
  %7 = load i32, i32* %memory_size, align 4
  %add7 = add nsw i32 %7, %call6
  store i32 %add7, i32* %memory_size, align 4
  %call8 = call i32 @get_mem_mincost(i32****** @all_mincost)
  %8 = load i32, i32* %memory_size, align 4
  %add9 = add nsw i32 %8, %call8
  store i32 %add9, i32* %memory_size, align 4
  %call10 = call i32 @get_mem_bwmincost(i32****** @all_bwmincost)
  %9 = load i32, i32* %memory_size, align 4
  %add11 = add nsw i32 %9, %call10
  store i32 %add11, i32* %memory_size, align 4
  %call12 = call i32 @get_mem2D(i8*** @SearchState, i32 7, i32 7)
  %10 = load i32, i32* %memory_size, align 4
  %add13 = add nsw i32 %10, %call12
  store i32 %add13, i32* %memory_size, align 4
  %11 = load i32, i32* %memory_size, align 4
  ret i32 %11
}

declare i32 @get_mem2Dint(i32***, i32, i32) #2

declare i32 @get_mem2D(i8***, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @free_mem_mincost(i32***** %mv) #0 {
entry:
  %mv.addr = alloca i32*****, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32***** %mv, i32****** %mv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4
  %div = sdiv i32 %2, 4
  %cmp = icmp slt i32 %0, %div
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.30, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 15
  %5 = load i32, i32* %height, align 4
  %div2 = sdiv i32 %5, 4
  %cmp3 = icmp slt i32 %3, %div2
  br i1 %cmp3, label %for.body.4, label %for.end.32

for.body.4:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.23, %for.body.4
  %6 = load i32, i32* %k, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 9
  %8 = load i32, i32* %max_num_references, align 4
  %cmp6 = icmp slt i32 %6, %8
  br i1 %cmp6, label %for.body.7, label %for.end.25

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %l, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %9 = load i32, i32* %l, align 4
  %cmp9 = icmp slt i32 %9, 9
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %10 = load i32, i32* %l, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i32*****, i32****** %mv.addr, align 8
  %arrayidx = getelementptr inbounds i32****, i32***** %14, i64 %idxprom13
  %15 = load i32****, i32***** %arrayidx, align 8
  %arrayidx14 = getelementptr inbounds i32***, i32**** %15, i64 %idxprom12
  %16 = load i32***, i32**** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32**, i32*** %16, i64 %idxprom11
  %17 = load i32**, i32*** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %17, i64 %idxprom
  %18 = load i32*, i32** %arrayidx16, align 8
  %19 = bitcast i32* %18 to i8*
  call void @free(i8* %19) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %20 = load i32, i32* %l, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %21 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load i32*****, i32****** %mv.addr, align 8
  %arrayidx20 = getelementptr inbounds i32****, i32***** %24, i64 %idxprom19
  %25 = load i32****, i32***** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32***, i32**** %25, i64 %idxprom18
  %26 = load i32***, i32**** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32**, i32*** %26, i64 %idxprom17
  %27 = load i32**, i32*** %arrayidx22, align 8
  %28 = bitcast i32** %27 to i8*
  call void @free(i8* %28) #3
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %29 = load i32, i32* %k, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %k, align 4
  br label %for.cond.5

for.end.25:                                       ; preds = %for.cond.5
  %30 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %31 to i64
  %32 = load i32*****, i32****** %mv.addr, align 8
  %arrayidx28 = getelementptr inbounds i32****, i32***** %32, i64 %idxprom27
  %33 = load i32****, i32***** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32***, i32**** %33, i64 %idxprom26
  %34 = load i32***, i32**** %arrayidx29, align 8
  %35 = bitcast i32*** %34 to i8*
  call void @free(i8* %35) #3
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.25
  %36 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond.1

for.end.32:                                       ; preds = %for.cond.1
  %37 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load i32*****, i32****** %mv.addr, align 8
  %arrayidx34 = getelementptr inbounds i32****, i32***** %38, i64 %idxprom33
  %39 = load i32****, i32***** %arrayidx34, align 8
  %40 = bitcast i32**** %39 to i8*
  call void @free(i8* %40) #3
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.32
  %41 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %41, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %42 = load i32*****, i32****** %mv.addr, align 8
  %43 = bitcast i32***** %42 to i8*
  call void @free(i8* %43) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @free_mem_bwmincost(i32***** %mv) #0 {
entry:
  %mv.addr = alloca i32*****, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32***** %mv, i32****** %mv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4
  %div = sdiv i32 %2, 4
  %cmp = icmp slt i32 %0, %div
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.30, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 15
  %5 = load i32, i32* %height, align 4
  %div2 = sdiv i32 %5, 4
  %cmp3 = icmp slt i32 %3, %div2
  br i1 %cmp3, label %for.body.4, label %for.end.32

for.body.4:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.23, %for.body.4
  %6 = load i32, i32* %k, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 9
  %8 = load i32, i32* %max_num_references, align 4
  %cmp6 = icmp slt i32 %6, %8
  br i1 %cmp6, label %for.body.7, label %for.end.25

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %l, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %9 = load i32, i32* %l, align 4
  %cmp9 = icmp slt i32 %9, 9
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %10 = load i32, i32* %l, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i32*****, i32****** %mv.addr, align 8
  %arrayidx = getelementptr inbounds i32****, i32***** %14, i64 %idxprom13
  %15 = load i32****, i32***** %arrayidx, align 8
  %arrayidx14 = getelementptr inbounds i32***, i32**** %15, i64 %idxprom12
  %16 = load i32***, i32**** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32**, i32*** %16, i64 %idxprom11
  %17 = load i32**, i32*** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %17, i64 %idxprom
  %18 = load i32*, i32** %arrayidx16, align 8
  %19 = bitcast i32* %18 to i8*
  call void @free(i8* %19) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %20 = load i32, i32* %l, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %21 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load i32*****, i32****** %mv.addr, align 8
  %arrayidx20 = getelementptr inbounds i32****, i32***** %24, i64 %idxprom19
  %25 = load i32****, i32***** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32***, i32**** %25, i64 %idxprom18
  %26 = load i32***, i32**** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32**, i32*** %26, i64 %idxprom17
  %27 = load i32**, i32*** %arrayidx22, align 8
  %28 = bitcast i32** %27 to i8*
  call void @free(i8* %28) #3
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %29 = load i32, i32* %k, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %k, align 4
  br label %for.cond.5

for.end.25:                                       ; preds = %for.cond.5
  %30 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %31 to i64
  %32 = load i32*****, i32****** %mv.addr, align 8
  %arrayidx28 = getelementptr inbounds i32****, i32***** %32, i64 %idxprom27
  %33 = load i32****, i32***** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32***, i32**** %33, i64 %idxprom26
  %34 = load i32***, i32**** %arrayidx29, align 8
  %35 = bitcast i32*** %34 to i8*
  call void @free(i8* %35) #3
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.25
  %36 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond.1

for.end.32:                                       ; preds = %for.cond.1
  %37 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load i32*****, i32****** %mv.addr, align 8
  %arrayidx34 = getelementptr inbounds i32****, i32***** %38, i64 %idxprom33
  %39 = load i32****, i32***** %arrayidx34, align 8
  %40 = bitcast i32**** %39 to i8*
  call void @free(i8* %40) #3
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.32
  %41 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %41, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %42 = load i32*****, i32****** %mv.addr, align 8
  %43 = bitcast i32***** %42 to i8*
  call void @free(i8* %43) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_mem_FME() #0 {
entry:
  %0 = load i32**, i32*** @McostState, align 8
  call void @free_mem2Dint(i32** %0)
  %1 = load i32*****, i32****** @all_mincost, align 8
  call void @free_mem_mincost(i32***** %1)
  %2 = load i32*****, i32****** @all_bwmincost, align 8
  call void @free_mem_bwmincost(i32***** %2)
  %3 = load i8**, i8*** @SearchState, align 8
  call void @free_mem2D(i8** %3)
  %4 = load i32*, i32** @flag_intra, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #3
  ret void
}

declare void @free_mem2Dint(i32**) #2

declare void @free_mem2D(i8**) #2

; Function Attrs: nounwind uwtable
define i32 @PartCalMad(i16* %ref_pic, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line, i32 %blocksize_y, i32 %blocksize_x, i32 %blocksize_x4, i32 %mcost, i32 %min_mcost, i32 %cand_x, i32 %cand_y) #0 {
entry:
  %ref_pic.addr = alloca i16*, align 8
  %orig_pic.addr = alloca i16**, align 8
  %get_ref_line.addr = alloca i16* (i32, i16*, i32, i32, i32, i32)*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %blocksize_x4.addr = alloca i32, align 4
  %mcost.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x.addr = alloca i32, align 4
  %cand_y.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %x4 = alloca i32, align 4
  %height = alloca i32, align 4
  %orig_line = alloca i16*, align 8
  %ref_line = alloca i16*, align 8
  store i16* %ref_pic, i16** %ref_pic.addr, align 8
  store i16** %orig_pic, i16*** %orig_pic.addr, align 8
  store i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %blocksize_x4, i32* %blocksize_x4.addr, align 4
  store i32 %mcost, i32* %mcost.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x, i32* %cand_x.addr, align 4
  store i32 %cand_y, i32* %cand_y.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 90
  %1 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 51
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 22
  %6 = load i32, i32* %mb_field, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 15
  %8 = load i32, i32* %height2, align 4
  %div = sdiv i32 %8, 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 15
  %10 = load i32, i32* %height3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, i32* %height, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %cond.end
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %blocksize_y.addr, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %13 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line.addr, align 8
  %14 = load i32, i32* %blocksize_x.addr, align 4
  %15 = load i16*, i16** %ref_pic.addr, align 8
  %16 = load i32, i32* %cand_y.addr, align 4
  %17 = load i32, i32* %y, align 4
  %add = add nsw i32 %16, %17
  %18 = load i32, i32* %cand_x.addr, align 4
  %19 = load i32, i32* %height, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4
  %call = call i16* %13(i32 %14, i16* %15, i32 %add, i32 %18, i32 %19, i32 %21)
  store i16* %call, i16** %ref_line, align 8
  %22 = load i32, i32* %y, align 4
  %idxprom4 = sext i32 %22 to i64
  %23 = load i16**, i16*** %orig_pic.addr, align 8
  %arrayidx5 = getelementptr inbounds i16*, i16** %23, i64 %idxprom4
  %24 = load i16*, i16** %arrayidx5, align 8
  store i16* %24, i16** %orig_line, align 8
  store i32 0, i32* %x4, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %25 = load i32, i32* %x4, align 4
  %26 = load i32, i32* %blocksize_x4.addr, align 4
  %cmp7 = icmp slt i32 %25, %26
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %27 = load i16*, i16** %orig_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %incdec.ptr, i16** %orig_line, align 8
  %28 = load i16, i16* %27, align 2
  %conv = zext i16 %28 to i32
  %29 = load i16*, i16** %ref_line, align 8
  %incdec.ptr9 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr9, i16** %ref_line, align 8
  %30 = load i16, i16* %29, align 2
  %conv10 = zext i16 %30 to i32
  %sub = sub nsw i32 %conv, %conv10
  %idxprom11 = sext i32 %sub to i64
  %31 = load i32*, i32** @byte_abs, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %31, i64 %idxprom11
  %32 = load i32, i32* %arrayidx12, align 4
  %33 = load i32, i32* %mcost.addr, align 4
  %add13 = add nsw i32 %33, %32
  store i32 %add13, i32* %mcost.addr, align 4
  %34 = load i16*, i16** %orig_line, align 8
  %incdec.ptr14 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %incdec.ptr14, i16** %orig_line, align 8
  %35 = load i16, i16* %34, align 2
  %conv15 = zext i16 %35 to i32
  %36 = load i16*, i16** %ref_line, align 8
  %incdec.ptr16 = getelementptr inbounds i16, i16* %36, i32 1
  store i16* %incdec.ptr16, i16** %ref_line, align 8
  %37 = load i16, i16* %36, align 2
  %conv17 = zext i16 %37 to i32
  %sub18 = sub nsw i32 %conv15, %conv17
  %idxprom19 = sext i32 %sub18 to i64
  %38 = load i32*, i32** @byte_abs, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %38, i64 %idxprom19
  %39 = load i32, i32* %arrayidx20, align 4
  %40 = load i32, i32* %mcost.addr, align 4
  %add21 = add nsw i32 %40, %39
  store i32 %add21, i32* %mcost.addr, align 4
  %41 = load i16*, i16** %orig_line, align 8
  %incdec.ptr22 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr22, i16** %orig_line, align 8
  %42 = load i16, i16* %41, align 2
  %conv23 = zext i16 %42 to i32
  %43 = load i16*, i16** %ref_line, align 8
  %incdec.ptr24 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %incdec.ptr24, i16** %ref_line, align 8
  %44 = load i16, i16* %43, align 2
  %conv25 = zext i16 %44 to i32
  %sub26 = sub nsw i32 %conv23, %conv25
  %idxprom27 = sext i32 %sub26 to i64
  %45 = load i32*, i32** @byte_abs, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %45, i64 %idxprom27
  %46 = load i32, i32* %arrayidx28, align 4
  %47 = load i32, i32* %mcost.addr, align 4
  %add29 = add nsw i32 %47, %46
  store i32 %add29, i32* %mcost.addr, align 4
  %48 = load i16*, i16** %orig_line, align 8
  %incdec.ptr30 = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %incdec.ptr30, i16** %orig_line, align 8
  %49 = load i16, i16* %48, align 2
  %conv31 = zext i16 %49 to i32
  %50 = load i16*, i16** %ref_line, align 8
  %incdec.ptr32 = getelementptr inbounds i16, i16* %50, i32 1
  store i16* %incdec.ptr32, i16** %ref_line, align 8
  %51 = load i16, i16* %50, align 2
  %conv33 = zext i16 %51 to i32
  %sub34 = sub nsw i32 %conv31, %conv33
  %idxprom35 = sext i32 %sub34 to i64
  %52 = load i32*, i32** @byte_abs, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %52, i64 %idxprom35
  %53 = load i32, i32* %arrayidx36, align 4
  %54 = load i32, i32* %mcost.addr, align 4
  %add37 = add nsw i32 %54, %53
  store i32 %add37, i32* %mcost.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %55 = load i32, i32* %x4, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %x4, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %56 = load i32, i32* %mcost.addr, align 4
  %57 = load i32, i32* %min_mcost.addr, align 4
  %cmp38 = icmp sge i32 %56, %57
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %for.end.42

if.end:                                           ; preds = %for.end
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end
  %58 = load i32, i32* %y, align 4
  %inc41 = add nsw i32 %58, 1
  store i32 %inc41, i32* %y, align 4
  br label %for.cond

for.end.42:                                       ; preds = %if.then, %for.cond
  %59 = load i32, i32* %mcost.addr, align 4
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @FastIntegerPelBlockMotionSearch(i16** %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i32 %search_range, i32 %min_mcost, double %lambda) #0 {
entry:
  %orig_pic.addr = alloca i16**, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv_x.addr = alloca i16, align 2
  %pred_mv_y.addr = alloca i16, align 2
  %mv_x.addr = alloca i16*, align 8
  %mv_y.addr = alloca i16*, align 8
  %search_range.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda.addr = alloca double, align 8
  %pos = alloca i32, align 4
  %cand_x = alloca i32, align 4
  %cand_y = alloca i32, align 4
  %mcost = alloca i32, align 4
  %get_ref_line = alloca i16* (i32, i16*, i32, i32, i32, i32)*, align 8
  %list_offset = alloca i32, align 4
  %ref_pic = alloca i16*, align 8
  %lambda_factor = alloca i32, align 4
  %mvshift = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %blocksize_x4 = alloca i32, align 4
  %pred_x = alloca i32, align 4
  %pred_y = alloca i32, align 4
  %center_x = alloca i32, align 4
  %center_y = alloca i32, align 4
  %best_x = alloca i32, align 4
  %best_y = alloca i32, align 4
  %search_step = alloca i32, align 4
  %iYMinNow = alloca i32, align 4
  %iXMinNow = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %iSADLayer = alloca i32, align 4
  %iAbort = alloca i32, align 4
  %N_Bframe = alloca i32, align 4
  %betaSec = alloca float, align 4
  %betaThird = alloca float, align 4
  %height = alloca i32, align 4
  store i16** %orig_pic, i16*** %orig_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16 %pred_mv_x, i16* %pred_mv_x.addr, align 2
  store i16 %pred_mv_y, i16* %pred_mv_y.addr, align 2
  store i16* %mv_x, i16** %mv_x.addr, align 8
  store i16* %mv_y, i16** %mv_y.addr, align 8
  store i32 %search_range, i32* %search_range.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store double %lambda, double* %lambda.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 90
  %1 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 51
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 22
  %6 = load i32, i32* %mb_field, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr2, align 4
  %rem = srem i32 %8, 2
  %tobool3 = icmp ne i32 %rem, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  %9 = load i16, i16* %ref.addr, align 2
  %idxprom5 = sext i16 %9 to i64
  %10 = load i32, i32* %list.addr, align 4
  %11 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 %10, %11
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom6
  %12 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %12, i64 %idxprom5
  %13 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx8, align 8
  %imgY_11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 26
  %14 = load i16*, i16** %imgY_11, align 8
  store i16* %14, i16** %ref_pic, align 8
  %15 = load double, double* %lambda.addr, align 8
  %mul = fmul double 6.553600e+04, %15
  %add9 = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add9 to i32
  store i32 %conv, i32* %lambda_factor, align 4
  store i32 2, i32* %mvshift, align 4
  %16 = load i32, i32* %blocktype.addr, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 20
  %arrayidx11 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx11, i32 0, i64 1
  %18 = load i32, i32* %arrayidx12, align 4
  store i32 %18, i32* %blocksize_y, align 4
  %19 = load i32, i32* %blocktype.addr, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 20
  %arrayidx15 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size14, i32 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx15, i32 0, i64 0
  %21 = load i32, i32* %arrayidx16, align 4
  store i32 %21, i32* %blocksize_x, align 4
  %22 = load i32, i32* %blocksize_x, align 4
  %shr = ashr i32 %22, 2
  store i32 %shr, i32* %blocksize_x4, align 4
  %23 = load i32, i32* %pic_pix_x.addr, align 4
  %24 = load i32, i32* %mvshift, align 4
  %shl = shl i32 %23, %24
  %25 = load i16, i16* %pred_mv_x.addr, align 2
  %conv17 = sext i16 %25 to i32
  %add18 = add nsw i32 %shl, %conv17
  store i32 %add18, i32* %pred_x, align 4
  %26 = load i32, i32* %pic_pix_y.addr, align 4
  %27 = load i32, i32* %mvshift, align 4
  %shl19 = shl i32 %26, %27
  %28 = load i16, i16* %pred_mv_y.addr, align 2
  %conv20 = sext i16 %28 to i32
  %add21 = add nsw i32 %shl19, %conv20
  store i32 %add21, i32* %pred_y, align 4
  %29 = load i32, i32* %pic_pix_x.addr, align 4
  %30 = load i16*, i16** %mv_x.addr, align 8
  %31 = load i16, i16* %30, align 2
  %conv22 = sext i16 %31 to i32
  %add23 = add nsw i32 %29, %conv22
  store i32 %add23, i32* %center_x, align 4
  %32 = load i32, i32* %pic_pix_y.addr, align 4
  %33 = load i16*, i16** %mv_y.addr, align 8
  %34 = load i16, i16* %33, align 2
  %conv24 = sext i16 %34 to i32
  %add25 = add nsw i32 %32, %conv24
  store i32 %add25, i32* %center_y, align 4
  store i32 0, i32* %best_x, align 4
  store i32 0, i32* %best_y, align 4
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 34
  %36 = load i32, i32* %successive_Bframe, align 4
  store i32 %36, i32* %N_Bframe, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 90
  %38 = load i32, i32* %MbaffFrameFlag26, align 4
  %tobool27 = icmp ne i32 %38, 0
  br i1 %tobool27, label %land.lhs.true.28, label %cond.false.37

land.lhs.true.28:                                 ; preds = %cond.end
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 3
  %40 = load i32, i32* %current_mb_nr29, align 4
  %idxprom30 = sext i32 %40 to i64
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 51
  %42 = load %struct.macroblock*, %struct.macroblock** %mb_data31, align 8
  %arrayidx32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i64 %idxprom30
  %mb_field33 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx32, i32 0, i32 22
  %43 = load i32, i32* %mb_field33, align 4
  %tobool34 = icmp ne i32 %43, 0
  br i1 %tobool34, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %land.lhs.true.28
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 15
  %45 = load i32, i32* %height36, align 4
  %div = sdiv i32 %45, 2
  br label %cond.end.39

cond.false.37:                                    ; preds = %land.lhs.true.28, %cond.end
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 15
  %47 = load i32, i32* %height38, align 4
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.35
  %cond40 = phi i32 [ %div, %cond.true.35 ], [ %47, %cond.false.37 ]
  store i32 %cond40, i32* %height, align 4
  %48 = load i32, i32* %center_x, align 4
  %49 = load i32, i32* %search_range.addr, align 4
  %cmp = icmp sgt i32 %48, %49
  br i1 %cmp, label %land.lhs.true.42, label %if.else

land.lhs.true.42:                                 ; preds = %cond.end.39
  %50 = load i32, i32* %center_x, align 4
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 13
  %52 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %52, 1
  %53 = load i32, i32* %search_range.addr, align 4
  %sub43 = sub nsw i32 %sub, %53
  %54 = load i32, i32* %blocksize_x, align 4
  %sub44 = sub nsw i32 %sub43, %54
  %cmp45 = icmp slt i32 %50, %sub44
  br i1 %cmp45, label %land.lhs.true.47, label %if.else

land.lhs.true.47:                                 ; preds = %land.lhs.true.42
  %55 = load i32, i32* %center_y, align 4
  %56 = load i32, i32* %search_range.addr, align 4
  %cmp48 = icmp sgt i32 %55, %56
  br i1 %cmp48, label %land.lhs.true.50, label %if.else

land.lhs.true.50:                                 ; preds = %land.lhs.true.47
  %57 = load i32, i32* %center_y, align 4
  %58 = load i32, i32* %height, align 4
  %sub51 = sub nsw i32 %58, 1
  %59 = load i32, i32* %search_range.addr, align 4
  %sub52 = sub nsw i32 %sub51, %59
  %60 = load i32, i32* %blocksize_y, align 4
  %sub53 = sub nsw i32 %sub52, %60
  %cmp54 = icmp slt i32 %57, %sub53
  br i1 %cmp54, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.50
  store i16* (i32, i16*, i32, i32, i32, i32)* @FastLineX, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.50, %land.lhs.true.47, %land.lhs.true.42, %cond.end.39
  store i16* (i32, i16*, i32, i32, i32, i32)* @UMVLineX, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %61 = load i32**, i32*** @McostState, align 8
  %arrayidx56 = getelementptr inbounds i32*, i32** %61, i64 0
  %62 = load i32*, i32** %arrayidx56, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load i32, i32* %search_range.addr, align 4
  %mul57 = mul nsw i32 2, %64
  %add58 = add nsw i32 %mul57, 1
  %65 = load i32, i32* %search_range.addr, align 4
  %mul59 = mul nsw i32 2, %65
  %add60 = add nsw i32 %mul59, 1
  %mul61 = mul nsw i32 %add58, %add60
  %mul62 = mul nsw i32 %mul61, 4
  %conv63 = sext i32 %mul62 to i64
  call void @llvm.memset.p0i8.i64(i8* %63, i8 0, i64 %conv63, i32 4, i1 false)
  %66 = load i16, i16* %ref.addr, align 2
  %conv64 = sext i16 %66 to i32
  %cmp65 = icmp sgt i32 %conv64, 0
  br i1 %cmp65, label %if.then.67, label %if.else.89

if.then.67:                                       ; preds = %if.end
  %67 = load i32, i32* @pred_SAD_ref, align 4
  %cmp68 = icmp ne i32 %67, 0
  br i1 %cmp68, label %if.then.70, label %if.else.87

if.then.70:                                       ; preds = %if.then.67
  %68 = load i32, i32* %blocktype.addr, align 4
  %idxprom71 = sext i32 %68 to i64
  %arrayidx72 = getelementptr inbounds [8 x float], [8 x float]* @Bsize, i32 0, i64 %idxprom71
  %69 = load float, float* %arrayidx72, align 4
  %70 = load i32, i32* @pred_SAD_ref, align 4
  %71 = load i32, i32* @pred_SAD_ref, align 4
  %mul73 = mul nsw i32 %70, %71
  %conv74 = sitofp i32 %mul73 to float
  %div75 = fdiv float %69, %conv74
  %72 = load i32, i32* %blocktype.addr, align 4
  %idxprom76 = sext i32 %72 to i64
  %arrayidx77 = getelementptr inbounds [8 x float], [8 x float]* @AlphaSec, i32 0, i64 %idxprom76
  %73 = load float, float* %arrayidx77, align 4
  %sub78 = fsub float %div75, %73
  store float %sub78, float* %betaSec, align 4
  %74 = load i32, i32* %blocktype.addr, align 4
  %idxprom79 = sext i32 %74 to i64
  %arrayidx80 = getelementptr inbounds [8 x float], [8 x float]* @Bsize, i32 0, i64 %idxprom79
  %75 = load float, float* %arrayidx80, align 4
  %76 = load i32, i32* @pred_SAD_ref, align 4
  %77 = load i32, i32* @pred_SAD_ref, align 4
  %mul81 = mul nsw i32 %76, %77
  %conv82 = sitofp i32 %mul81 to float
  %div83 = fdiv float %75, %conv82
  %78 = load i32, i32* %blocktype.addr, align 4
  %idxprom84 = sext i32 %78 to i64
  %arrayidx85 = getelementptr inbounds [8 x float], [8 x float]* @AlphaThird, i32 0, i64 %idxprom84
  %79 = load float, float* %arrayidx85, align 4
  %sub86 = fsub float %div83, %79
  store float %sub86, float* %betaThird, align 4
  br label %if.end.88

if.else.87:                                       ; preds = %if.then.67
  store float 0.000000e+00, float* %betaSec, align 4
  store float 0.000000e+00, float* %betaThird, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.87, %if.then.70
  br label %if.end.137

if.else.89:                                       ; preds = %if.end
  %80 = load i32, i32* %blocktype.addr, align 4
  %cmp90 = icmp eq i32 %80, 1
  br i1 %cmp90, label %if.then.92, label %if.else.114

if.then.92:                                       ; preds = %if.else.89
  %81 = load i32, i32* @pred_SAD_space, align 4
  %cmp93 = icmp ne i32 %81, 0
  br i1 %cmp93, label %if.then.95, label %if.else.112

if.then.95:                                       ; preds = %if.then.92
  %82 = load i32, i32* %blocktype.addr, align 4
  %idxprom96 = sext i32 %82 to i64
  %arrayidx97 = getelementptr inbounds [8 x float], [8 x float]* @Bsize, i32 0, i64 %idxprom96
  %83 = load float, float* %arrayidx97, align 4
  %84 = load i32, i32* @pred_SAD_space, align 4
  %85 = load i32, i32* @pred_SAD_space, align 4
  %mul98 = mul nsw i32 %84, %85
  %conv99 = sitofp i32 %mul98 to float
  %div100 = fdiv float %83, %conv99
  %86 = load i32, i32* %blocktype.addr, align 4
  %idxprom101 = sext i32 %86 to i64
  %arrayidx102 = getelementptr inbounds [8 x float], [8 x float]* @AlphaSec, i32 0, i64 %idxprom101
  %87 = load float, float* %arrayidx102, align 4
  %sub103 = fsub float %div100, %87
  store float %sub103, float* %betaSec, align 4
  %88 = load i32, i32* %blocktype.addr, align 4
  %idxprom104 = sext i32 %88 to i64
  %arrayidx105 = getelementptr inbounds [8 x float], [8 x float]* @Bsize, i32 0, i64 %idxprom104
  %89 = load float, float* %arrayidx105, align 4
  %90 = load i32, i32* @pred_SAD_space, align 4
  %91 = load i32, i32* @pred_SAD_space, align 4
  %mul106 = mul nsw i32 %90, %91
  %conv107 = sitofp i32 %mul106 to float
  %div108 = fdiv float %89, %conv107
  %92 = load i32, i32* %blocktype.addr, align 4
  %idxprom109 = sext i32 %92 to i64
  %arrayidx110 = getelementptr inbounds [8 x float], [8 x float]* @AlphaThird, i32 0, i64 %idxprom109
  %93 = load float, float* %arrayidx110, align 4
  %sub111 = fsub float %div108, %93
  store float %sub111, float* %betaThird, align 4
  br label %if.end.113

if.else.112:                                      ; preds = %if.then.92
  store float 0.000000e+00, float* %betaSec, align 4
  store float 0.000000e+00, float* %betaThird, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.then.95
  br label %if.end.136

if.else.114:                                      ; preds = %if.else.89
  %94 = load i32, i32* @pred_SAD_uplayer, align 4
  %cmp115 = icmp ne i32 %94, 0
  br i1 %cmp115, label %if.then.117, label %if.else.134

if.then.117:                                      ; preds = %if.else.114
  %95 = load i32, i32* %blocktype.addr, align 4
  %idxprom118 = sext i32 %95 to i64
  %arrayidx119 = getelementptr inbounds [8 x float], [8 x float]* @Bsize, i32 0, i64 %idxprom118
  %96 = load float, float* %arrayidx119, align 4
  %97 = load i32, i32* @pred_SAD_uplayer, align 4
  %98 = load i32, i32* @pred_SAD_uplayer, align 4
  %mul120 = mul nsw i32 %97, %98
  %conv121 = sitofp i32 %mul120 to float
  %div122 = fdiv float %96, %conv121
  %99 = load i32, i32* %blocktype.addr, align 4
  %idxprom123 = sext i32 %99 to i64
  %arrayidx124 = getelementptr inbounds [8 x float], [8 x float]* @AlphaSec, i32 0, i64 %idxprom123
  %100 = load float, float* %arrayidx124, align 4
  %sub125 = fsub float %div122, %100
  store float %sub125, float* %betaSec, align 4
  %101 = load i32, i32* %blocktype.addr, align 4
  %idxprom126 = sext i32 %101 to i64
  %arrayidx127 = getelementptr inbounds [8 x float], [8 x float]* @Bsize, i32 0, i64 %idxprom126
  %102 = load float, float* %arrayidx127, align 4
  %103 = load i32, i32* @pred_SAD_uplayer, align 4
  %104 = load i32, i32* @pred_SAD_uplayer, align 4
  %mul128 = mul nsw i32 %103, %104
  %conv129 = sitofp i32 %mul128 to float
  %div130 = fdiv float %102, %conv129
  %105 = load i32, i32* %blocktype.addr, align 4
  %idxprom131 = sext i32 %105 to i64
  %arrayidx132 = getelementptr inbounds [8 x float], [8 x float]* @AlphaThird, i32 0, i64 %idxprom131
  %106 = load float, float* %arrayidx132, align 4
  %sub133 = fsub float %div130, %106
  store float %sub133, float* %betaThird, align 4
  br label %if.end.135

if.else.134:                                      ; preds = %if.else.114
  store float 0.000000e+00, float* %betaSec, align 4
  store float 0.000000e+00, float* %betaThird, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.134, %if.then.117
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.113
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.88
  %107 = load i32, i32* %center_x, align 4
  store i32 %107, i32* %cand_x, align 4
  %108 = load i32, i32* %center_y, align 4
  store i32 %108, i32* %cand_y, align 4
  %109 = load i32, i32* %lambda_factor, align 4
  %110 = load i32, i32* %cand_x, align 4
  %111 = load i32, i32* %mvshift, align 4
  %shl138 = shl i32 %110, %111
  %112 = load i32, i32* %pred_x, align 4
  %sub139 = sub nsw i32 %shl138, %112
  %idxprom140 = sext i32 %sub139 to i64
  %113 = load i32*, i32** @mvbits, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %113, i64 %idxprom140
  %114 = load i32, i32* %arrayidx141, align 4
  %115 = load i32, i32* %cand_y, align 4
  %116 = load i32, i32* %mvshift, align 4
  %shl142 = shl i32 %115, %116
  %117 = load i32, i32* %pred_y, align 4
  %sub143 = sub nsw i32 %shl142, %117
  %idxprom144 = sext i32 %sub143 to i64
  %118 = load i32*, i32** @mvbits, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %118, i64 %idxprom144
  %119 = load i32, i32* %arrayidx145, align 4
  %add146 = add nsw i32 %114, %119
  %mul147 = mul nsw i32 %109, %add146
  %shr148 = ashr i32 %mul147, 16
  store i32 %shr148, i32* %mcost, align 4
  %120 = load i16*, i16** %ref_pic, align 8
  %121 = load i16**, i16*** %orig_pic.addr, align 8
  %122 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %123 = load i32, i32* %blocksize_y, align 4
  %124 = load i32, i32* %blocksize_x, align 4
  %125 = load i32, i32* %blocksize_x4, align 4
  %126 = load i32, i32* %mcost, align 4
  %127 = load i32, i32* %min_mcost.addr, align 4
  %128 = load i32, i32* %cand_x, align 4
  %129 = load i32, i32* %cand_y, align 4
  %call = call i32 @PartCalMad(i16* %120, i16** %121, i16* (i32, i16*, i32, i32, i32, i32)* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  store i32 %call, i32* %mcost, align 4
  %130 = load i32, i32* %mcost, align 4
  %131 = load i32, i32* %search_range.addr, align 4
  %idxprom149 = sext i32 %131 to i64
  %132 = load i32, i32* %search_range.addr, align 4
  %idxprom150 = sext i32 %132 to i64
  %133 = load i32**, i32*** @McostState, align 8
  %arrayidx151 = getelementptr inbounds i32*, i32** %133, i64 %idxprom150
  %134 = load i32*, i32** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %134, i64 %idxprom149
  store i32 %130, i32* %arrayidx152, align 4
  %135 = load i32, i32* %mcost, align 4
  %136 = load i32, i32* %min_mcost.addr, align 4
  %cmp153 = icmp slt i32 %135, %136
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.137
  %137 = load i32, i32* %mcost, align 4
  store i32 %137, i32* %min_mcost.addr, align 4
  %138 = load i32, i32* %cand_x, align 4
  store i32 %138, i32* %best_x, align 4
  %139 = load i32, i32* %cand_y, align 4
  store i32 %139, i32* %best_y, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %if.end.137
  %140 = load i32, i32* %best_x, align 4
  store i32 %140, i32* %iXMinNow, align 4
  %141 = load i32, i32* %best_y, align 4
  store i32 %141, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.156
  %142 = load i32, i32* %m, align 4
  %cmp157 = icmp slt i32 %142, 4
  br i1 %cmp157, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %143 = load i32, i32* %iXMinNow, align 4
  %144 = load i32, i32* %m, align 4
  %idxprom159 = sext i32 %144 to i64
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* @FastIntegerPelBlockMotionSearch.Diamond_x, i32 0, i64 %idxprom159
  %145 = load i32, i32* %arrayidx160, align 4
  %add161 = add nsw i32 %143, %145
  store i32 %add161, i32* %cand_x, align 4
  %146 = load i32, i32* %iYMinNow, align 4
  %147 = load i32, i32* %m, align 4
  %idxprom162 = sext i32 %147 to i64
  %arrayidx163 = getelementptr inbounds [4 x i32], [4 x i32]* @FastIntegerPelBlockMotionSearch.Diamond_y, i32 0, i64 %idxprom162
  %148 = load i32, i32* %arrayidx163, align 4
  %add164 = add nsw i32 %146, %148
  store i32 %add164, i32* %cand_y, align 4
  %149 = load i32, i32* %cand_x, align 4
  %150 = load i32, i32* %center_x, align 4
  %sub165 = sub nsw i32 %149, %150
  %call166 = call i32 @abs(i32 %sub165) #5
  %151 = load i32, i32* %search_range.addr, align 4
  %cmp167 = icmp sle i32 %call166, %151
  br i1 %cmp167, label %land.lhs.true.169, label %if.end.210

land.lhs.true.169:                                ; preds = %for.body
  %152 = load i32, i32* %cand_y, align 4
  %153 = load i32, i32* %center_y, align 4
  %sub170 = sub nsw i32 %152, %153
  %call171 = call i32 @abs(i32 %sub170) #5
  %154 = load i32, i32* %search_range.addr, align 4
  %cmp172 = icmp sle i32 %call171, %154
  br i1 %cmp172, label %if.then.174, label %if.end.210

if.then.174:                                      ; preds = %land.lhs.true.169
  %155 = load i32, i32* %cand_x, align 4
  %156 = load i32, i32* %center_x, align 4
  %sub175 = sub nsw i32 %155, %156
  %157 = load i32, i32* %search_range.addr, align 4
  %add176 = add nsw i32 %sub175, %157
  %idxprom177 = sext i32 %add176 to i64
  %158 = load i32, i32* %cand_y, align 4
  %159 = load i32, i32* %center_y, align 4
  %sub178 = sub nsw i32 %158, %159
  %160 = load i32, i32* %search_range.addr, align 4
  %add179 = add nsw i32 %sub178, %160
  %idxprom180 = sext i32 %add179 to i64
  %161 = load i32**, i32*** @McostState, align 8
  %arrayidx181 = getelementptr inbounds i32*, i32** %161, i64 %idxprom180
  %162 = load i32*, i32** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %162, i64 %idxprom177
  %163 = load i32, i32* %arrayidx182, align 4
  %tobool183 = icmp ne i32 %163, 0
  br i1 %tobool183, label %if.end.209, label %if.then.184

if.then.184:                                      ; preds = %if.then.174
  %164 = load i32, i32* %lambda_factor, align 4
  %165 = load i32, i32* %cand_x, align 4
  %166 = load i32, i32* %mvshift, align 4
  %shl185 = shl i32 %165, %166
  %167 = load i32, i32* %pred_x, align 4
  %sub186 = sub nsw i32 %shl185, %167
  %idxprom187 = sext i32 %sub186 to i64
  %168 = load i32*, i32** @mvbits, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %168, i64 %idxprom187
  %169 = load i32, i32* %arrayidx188, align 4
  %170 = load i32, i32* %cand_y, align 4
  %171 = load i32, i32* %mvshift, align 4
  %shl189 = shl i32 %170, %171
  %172 = load i32, i32* %pred_y, align 4
  %sub190 = sub nsw i32 %shl189, %172
  %idxprom191 = sext i32 %sub190 to i64
  %173 = load i32*, i32** @mvbits, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %173, i64 %idxprom191
  %174 = load i32, i32* %arrayidx192, align 4
  %add193 = add nsw i32 %169, %174
  %mul194 = mul nsw i32 %164, %add193
  %shr195 = ashr i32 %mul194, 16
  store i32 %shr195, i32* %mcost, align 4
  %175 = load i16*, i16** %ref_pic, align 8
  %176 = load i16**, i16*** %orig_pic.addr, align 8
  %177 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %178 = load i32, i32* %blocksize_y, align 4
  %179 = load i32, i32* %blocksize_x, align 4
  %180 = load i32, i32* %blocksize_x4, align 4
  %181 = load i32, i32* %mcost, align 4
  %182 = load i32, i32* %min_mcost.addr, align 4
  %183 = load i32, i32* %cand_x, align 4
  %184 = load i32, i32* %cand_y, align 4
  %call196 = call i32 @PartCalMad(i16* %175, i16** %176, i16* (i32, i16*, i32, i32, i32, i32)* %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
  store i32 %call196, i32* %mcost, align 4
  %185 = load i32, i32* %mcost, align 4
  %186 = load i32, i32* %cand_x, align 4
  %187 = load i32, i32* %center_x, align 4
  %sub197 = sub nsw i32 %186, %187
  %188 = load i32, i32* %search_range.addr, align 4
  %add198 = add nsw i32 %sub197, %188
  %idxprom199 = sext i32 %add198 to i64
  %189 = load i32, i32* %cand_y, align 4
  %190 = load i32, i32* %center_y, align 4
  %sub200 = sub nsw i32 %189, %190
  %191 = load i32, i32* %search_range.addr, align 4
  %add201 = add nsw i32 %sub200, %191
  %idxprom202 = sext i32 %add201 to i64
  %192 = load i32**, i32*** @McostState, align 8
  %arrayidx203 = getelementptr inbounds i32*, i32** %192, i64 %idxprom202
  %193 = load i32*, i32** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %193, i64 %idxprom199
  store i32 %185, i32* %arrayidx204, align 4
  %194 = load i32, i32* %mcost, align 4
  %195 = load i32, i32* %min_mcost.addr, align 4
  %cmp205 = icmp slt i32 %194, %195
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.then.184
  %196 = load i32, i32* %cand_x, align 4
  store i32 %196, i32* %best_x, align 4
  %197 = load i32, i32* %cand_y, align 4
  store i32 %197, i32* %best_y, align 4
  %198 = load i32, i32* %mcost, align 4
  store i32 %198, i32* %min_mcost.addr, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.207, %if.then.184
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.174
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %land.lhs.true.169, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.210
  %199 = load i32, i32* %m, align 4
  %inc = add nsw i32 %199, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %200 = load i32, i32* %center_x, align 4
  %201 = load i32, i32* %pic_pix_x.addr, align 4
  %cmp211 = icmp ne i32 %200, %201
  br i1 %cmp211, label %if.then.215, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %202 = load i32, i32* %center_y, align 4
  %203 = load i32, i32* %pic_pix_y.addr, align 4
  %cmp213 = icmp ne i32 %202, %203
  br i1 %cmp213, label %if.then.215, label %if.end.321

if.then.215:                                      ; preds = %lor.lhs.false, %for.end
  %204 = load i32, i32* %pic_pix_x.addr, align 4
  store i32 %204, i32* %cand_x, align 4
  %205 = load i32, i32* %pic_pix_y.addr, align 4
  store i32 %205, i32* %cand_y, align 4
  %206 = load i32, i32* %cand_x, align 4
  %207 = load i32, i32* %center_x, align 4
  %sub216 = sub nsw i32 %206, %207
  %call217 = call i32 @abs(i32 %sub216) #5
  %208 = load i32, i32* %search_range.addr, align 4
  %cmp218 = icmp sle i32 %call217, %208
  br i1 %cmp218, label %land.lhs.true.220, label %if.end.261

land.lhs.true.220:                                ; preds = %if.then.215
  %209 = load i32, i32* %cand_y, align 4
  %210 = load i32, i32* %center_y, align 4
  %sub221 = sub nsw i32 %209, %210
  %call222 = call i32 @abs(i32 %sub221) #5
  %211 = load i32, i32* %search_range.addr, align 4
  %cmp223 = icmp sle i32 %call222, %211
  br i1 %cmp223, label %if.then.225, label %if.end.261

if.then.225:                                      ; preds = %land.lhs.true.220
  %212 = load i32, i32* %cand_x, align 4
  %213 = load i32, i32* %center_x, align 4
  %sub226 = sub nsw i32 %212, %213
  %214 = load i32, i32* %search_range.addr, align 4
  %add227 = add nsw i32 %sub226, %214
  %idxprom228 = sext i32 %add227 to i64
  %215 = load i32, i32* %cand_y, align 4
  %216 = load i32, i32* %center_y, align 4
  %sub229 = sub nsw i32 %215, %216
  %217 = load i32, i32* %search_range.addr, align 4
  %add230 = add nsw i32 %sub229, %217
  %idxprom231 = sext i32 %add230 to i64
  %218 = load i32**, i32*** @McostState, align 8
  %arrayidx232 = getelementptr inbounds i32*, i32** %218, i64 %idxprom231
  %219 = load i32*, i32** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %219, i64 %idxprom228
  %220 = load i32, i32* %arrayidx233, align 4
  %tobool234 = icmp ne i32 %220, 0
  br i1 %tobool234, label %if.end.260, label %if.then.235

if.then.235:                                      ; preds = %if.then.225
  %221 = load i32, i32* %lambda_factor, align 4
  %222 = load i32, i32* %cand_x, align 4
  %223 = load i32, i32* %mvshift, align 4
  %shl236 = shl i32 %222, %223
  %224 = load i32, i32* %pred_x, align 4
  %sub237 = sub nsw i32 %shl236, %224
  %idxprom238 = sext i32 %sub237 to i64
  %225 = load i32*, i32** @mvbits, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %225, i64 %idxprom238
  %226 = load i32, i32* %arrayidx239, align 4
  %227 = load i32, i32* %cand_y, align 4
  %228 = load i32, i32* %mvshift, align 4
  %shl240 = shl i32 %227, %228
  %229 = load i32, i32* %pred_y, align 4
  %sub241 = sub nsw i32 %shl240, %229
  %idxprom242 = sext i32 %sub241 to i64
  %230 = load i32*, i32** @mvbits, align 8
  %arrayidx243 = getelementptr inbounds i32, i32* %230, i64 %idxprom242
  %231 = load i32, i32* %arrayidx243, align 4
  %add244 = add nsw i32 %226, %231
  %mul245 = mul nsw i32 %221, %add244
  %shr246 = ashr i32 %mul245, 16
  store i32 %shr246, i32* %mcost, align 4
  %232 = load i16*, i16** %ref_pic, align 8
  %233 = load i16**, i16*** %orig_pic.addr, align 8
  %234 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %235 = load i32, i32* %blocksize_y, align 4
  %236 = load i32, i32* %blocksize_x, align 4
  %237 = load i32, i32* %blocksize_x4, align 4
  %238 = load i32, i32* %mcost, align 4
  %239 = load i32, i32* %min_mcost.addr, align 4
  %240 = load i32, i32* %cand_x, align 4
  %241 = load i32, i32* %cand_y, align 4
  %call247 = call i32 @PartCalMad(i16* %232, i16** %233, i16* (i32, i16*, i32, i32, i32, i32)* %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241)
  store i32 %call247, i32* %mcost, align 4
  %242 = load i32, i32* %mcost, align 4
  %243 = load i32, i32* %cand_x, align 4
  %244 = load i32, i32* %center_x, align 4
  %sub248 = sub nsw i32 %243, %244
  %245 = load i32, i32* %search_range.addr, align 4
  %add249 = add nsw i32 %sub248, %245
  %idxprom250 = sext i32 %add249 to i64
  %246 = load i32, i32* %cand_y, align 4
  %247 = load i32, i32* %center_y, align 4
  %sub251 = sub nsw i32 %246, %247
  %248 = load i32, i32* %search_range.addr, align 4
  %add252 = add nsw i32 %sub251, %248
  %idxprom253 = sext i32 %add252 to i64
  %249 = load i32**, i32*** @McostState, align 8
  %arrayidx254 = getelementptr inbounds i32*, i32** %249, i64 %idxprom253
  %250 = load i32*, i32** %arrayidx254, align 8
  %arrayidx255 = getelementptr inbounds i32, i32* %250, i64 %idxprom250
  store i32 %242, i32* %arrayidx255, align 4
  %251 = load i32, i32* %mcost, align 4
  %252 = load i32, i32* %min_mcost.addr, align 4
  %cmp256 = icmp slt i32 %251, %252
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.then.235
  %253 = load i32, i32* %cand_x, align 4
  store i32 %253, i32* %best_x, align 4
  %254 = load i32, i32* %cand_y, align 4
  store i32 %254, i32* %best_y, align 4
  %255 = load i32, i32* %mcost, align 4
  store i32 %255, i32* %min_mcost.addr, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %if.then.235
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.then.225
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %land.lhs.true.220, %if.then.215
  %256 = load i32, i32* %best_x, align 4
  store i32 %256, i32* %iXMinNow, align 4
  %257 = load i32, i32* %best_y, align 4
  store i32 %257, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc.318, %if.end.261
  %258 = load i32, i32* %m, align 4
  %cmp263 = icmp slt i32 %258, 4
  br i1 %cmp263, label %for.body.265, label %for.end.320

for.body.265:                                     ; preds = %for.cond.262
  %259 = load i32, i32* %iXMinNow, align 4
  %260 = load i32, i32* %m, align 4
  %idxprom266 = sext i32 %260 to i64
  %arrayidx267 = getelementptr inbounds [4 x i32], [4 x i32]* @FastIntegerPelBlockMotionSearch.Diamond_x, i32 0, i64 %idxprom266
  %261 = load i32, i32* %arrayidx267, align 4
  %add268 = add nsw i32 %259, %261
  store i32 %add268, i32* %cand_x, align 4
  %262 = load i32, i32* %iYMinNow, align 4
  %263 = load i32, i32* %m, align 4
  %idxprom269 = sext i32 %263 to i64
  %arrayidx270 = getelementptr inbounds [4 x i32], [4 x i32]* @FastIntegerPelBlockMotionSearch.Diamond_y, i32 0, i64 %idxprom269
  %264 = load i32, i32* %arrayidx270, align 4
  %add271 = add nsw i32 %262, %264
  store i32 %add271, i32* %cand_y, align 4
  %265 = load i32, i32* %cand_x, align 4
  %266 = load i32, i32* %center_x, align 4
  %sub272 = sub nsw i32 %265, %266
  %call273 = call i32 @abs(i32 %sub272) #5
  %267 = load i32, i32* %search_range.addr, align 4
  %cmp274 = icmp sle i32 %call273, %267
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.317

land.lhs.true.276:                                ; preds = %for.body.265
  %268 = load i32, i32* %cand_y, align 4
  %269 = load i32, i32* %center_y, align 4
  %sub277 = sub nsw i32 %268, %269
  %call278 = call i32 @abs(i32 %sub277) #5
  %270 = load i32, i32* %search_range.addr, align 4
  %cmp279 = icmp sle i32 %call278, %270
  br i1 %cmp279, label %if.then.281, label %if.end.317

if.then.281:                                      ; preds = %land.lhs.true.276
  %271 = load i32, i32* %cand_x, align 4
  %272 = load i32, i32* %center_x, align 4
  %sub282 = sub nsw i32 %271, %272
  %273 = load i32, i32* %search_range.addr, align 4
  %add283 = add nsw i32 %sub282, %273
  %idxprom284 = sext i32 %add283 to i64
  %274 = load i32, i32* %cand_y, align 4
  %275 = load i32, i32* %center_y, align 4
  %sub285 = sub nsw i32 %274, %275
  %276 = load i32, i32* %search_range.addr, align 4
  %add286 = add nsw i32 %sub285, %276
  %idxprom287 = sext i32 %add286 to i64
  %277 = load i32**, i32*** @McostState, align 8
  %arrayidx288 = getelementptr inbounds i32*, i32** %277, i64 %idxprom287
  %278 = load i32*, i32** %arrayidx288, align 8
  %arrayidx289 = getelementptr inbounds i32, i32* %278, i64 %idxprom284
  %279 = load i32, i32* %arrayidx289, align 4
  %tobool290 = icmp ne i32 %279, 0
  br i1 %tobool290, label %if.end.316, label %if.then.291

if.then.291:                                      ; preds = %if.then.281
  %280 = load i32, i32* %lambda_factor, align 4
  %281 = load i32, i32* %cand_x, align 4
  %282 = load i32, i32* %mvshift, align 4
  %shl292 = shl i32 %281, %282
  %283 = load i32, i32* %pred_x, align 4
  %sub293 = sub nsw i32 %shl292, %283
  %idxprom294 = sext i32 %sub293 to i64
  %284 = load i32*, i32** @mvbits, align 8
  %arrayidx295 = getelementptr inbounds i32, i32* %284, i64 %idxprom294
  %285 = load i32, i32* %arrayidx295, align 4
  %286 = load i32, i32* %cand_y, align 4
  %287 = load i32, i32* %mvshift, align 4
  %shl296 = shl i32 %286, %287
  %288 = load i32, i32* %pred_y, align 4
  %sub297 = sub nsw i32 %shl296, %288
  %idxprom298 = sext i32 %sub297 to i64
  %289 = load i32*, i32** @mvbits, align 8
  %arrayidx299 = getelementptr inbounds i32, i32* %289, i64 %idxprom298
  %290 = load i32, i32* %arrayidx299, align 4
  %add300 = add nsw i32 %285, %290
  %mul301 = mul nsw i32 %280, %add300
  %shr302 = ashr i32 %mul301, 16
  store i32 %shr302, i32* %mcost, align 4
  %291 = load i16*, i16** %ref_pic, align 8
  %292 = load i16**, i16*** %orig_pic.addr, align 8
  %293 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %294 = load i32, i32* %blocksize_y, align 4
  %295 = load i32, i32* %blocksize_x, align 4
  %296 = load i32, i32* %blocksize_x4, align 4
  %297 = load i32, i32* %mcost, align 4
  %298 = load i32, i32* %min_mcost.addr, align 4
  %299 = load i32, i32* %cand_x, align 4
  %300 = load i32, i32* %cand_y, align 4
  %call303 = call i32 @PartCalMad(i16* %291, i16** %292, i16* (i32, i16*, i32, i32, i32, i32)* %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300)
  store i32 %call303, i32* %mcost, align 4
  %301 = load i32, i32* %mcost, align 4
  %302 = load i32, i32* %cand_x, align 4
  %303 = load i32, i32* %center_x, align 4
  %sub304 = sub nsw i32 %302, %303
  %304 = load i32, i32* %search_range.addr, align 4
  %add305 = add nsw i32 %sub304, %304
  %idxprom306 = sext i32 %add305 to i64
  %305 = load i32, i32* %cand_y, align 4
  %306 = load i32, i32* %center_y, align 4
  %sub307 = sub nsw i32 %305, %306
  %307 = load i32, i32* %search_range.addr, align 4
  %add308 = add nsw i32 %sub307, %307
  %idxprom309 = sext i32 %add308 to i64
  %308 = load i32**, i32*** @McostState, align 8
  %arrayidx310 = getelementptr inbounds i32*, i32** %308, i64 %idxprom309
  %309 = load i32*, i32** %arrayidx310, align 8
  %arrayidx311 = getelementptr inbounds i32, i32* %309, i64 %idxprom306
  store i32 %301, i32* %arrayidx311, align 4
  %310 = load i32, i32* %mcost, align 4
  %311 = load i32, i32* %min_mcost.addr, align 4
  %cmp312 = icmp slt i32 %310, %311
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.then.291
  %312 = load i32, i32* %cand_x, align 4
  store i32 %312, i32* %best_x, align 4
  %313 = load i32, i32* %cand_y, align 4
  store i32 %313, i32* %best_y, align 4
  %314 = load i32, i32* %mcost, align 4
  store i32 %314, i32* %min_mcost.addr, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %if.then.291
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.then.281
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %land.lhs.true.276, %for.body.265
  br label %for.inc.318

for.inc.318:                                      ; preds = %if.end.317
  %315 = load i32, i32* %m, align 4
  %inc319 = add nsw i32 %315, 1
  store i32 %inc319, i32* %m, align 4
  br label %for.cond.262

for.end.320:                                      ; preds = %for.cond.262
  br label %if.end.321

if.end.321:                                       ; preds = %for.end.320, %lor.lhs.false
  %316 = load i32, i32* %blocktype.addr, align 4
  %cmp322 = icmp sgt i32 %316, 1
  br i1 %cmp322, label %if.then.324, label %if.end.392

if.then.324:                                      ; preds = %if.end.321
  %317 = load i32, i32* %pic_pix_x.addr, align 4
  %318 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_uplayer, i32 0, i64 0), align 4
  %div325 = sdiv i32 %318, 4
  %add326 = add nsw i32 %317, %div325
  store i32 %add326, i32* %cand_x, align 4
  %319 = load i32, i32* %pic_pix_y.addr, align 4
  %320 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_uplayer, i32 0, i64 1), align 4
  %div327 = sdiv i32 %320, 4
  %add328 = add nsw i32 %319, %div327
  store i32 %add328, i32* %cand_y, align 4
  %321 = load i32, i32* %cand_x, align 4
  %322 = load i32, i32* %center_x, align 4
  %sub329 = sub nsw i32 %321, %322
  %call330 = call i32 @abs(i32 %sub329) #5
  %323 = load i32, i32* %search_range.addr, align 4
  %cmp331 = icmp sle i32 %call330, %323
  br i1 %cmp331, label %land.lhs.true.333, label %if.end.374

land.lhs.true.333:                                ; preds = %if.then.324
  %324 = load i32, i32* %cand_y, align 4
  %325 = load i32, i32* %center_y, align 4
  %sub334 = sub nsw i32 %324, %325
  %call335 = call i32 @abs(i32 %sub334) #5
  %326 = load i32, i32* %search_range.addr, align 4
  %cmp336 = icmp sle i32 %call335, %326
  br i1 %cmp336, label %if.then.338, label %if.end.374

if.then.338:                                      ; preds = %land.lhs.true.333
  %327 = load i32, i32* %cand_x, align 4
  %328 = load i32, i32* %center_x, align 4
  %sub339 = sub nsw i32 %327, %328
  %329 = load i32, i32* %search_range.addr, align 4
  %add340 = add nsw i32 %sub339, %329
  %idxprom341 = sext i32 %add340 to i64
  %330 = load i32, i32* %cand_y, align 4
  %331 = load i32, i32* %center_y, align 4
  %sub342 = sub nsw i32 %330, %331
  %332 = load i32, i32* %search_range.addr, align 4
  %add343 = add nsw i32 %sub342, %332
  %idxprom344 = sext i32 %add343 to i64
  %333 = load i32**, i32*** @McostState, align 8
  %arrayidx345 = getelementptr inbounds i32*, i32** %333, i64 %idxprom344
  %334 = load i32*, i32** %arrayidx345, align 8
  %arrayidx346 = getelementptr inbounds i32, i32* %334, i64 %idxprom341
  %335 = load i32, i32* %arrayidx346, align 4
  %tobool347 = icmp ne i32 %335, 0
  br i1 %tobool347, label %if.end.373, label %if.then.348

if.then.348:                                      ; preds = %if.then.338
  %336 = load i32, i32* %lambda_factor, align 4
  %337 = load i32, i32* %cand_x, align 4
  %338 = load i32, i32* %mvshift, align 4
  %shl349 = shl i32 %337, %338
  %339 = load i32, i32* %pred_x, align 4
  %sub350 = sub nsw i32 %shl349, %339
  %idxprom351 = sext i32 %sub350 to i64
  %340 = load i32*, i32** @mvbits, align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %340, i64 %idxprom351
  %341 = load i32, i32* %arrayidx352, align 4
  %342 = load i32, i32* %cand_y, align 4
  %343 = load i32, i32* %mvshift, align 4
  %shl353 = shl i32 %342, %343
  %344 = load i32, i32* %pred_y, align 4
  %sub354 = sub nsw i32 %shl353, %344
  %idxprom355 = sext i32 %sub354 to i64
  %345 = load i32*, i32** @mvbits, align 8
  %arrayidx356 = getelementptr inbounds i32, i32* %345, i64 %idxprom355
  %346 = load i32, i32* %arrayidx356, align 4
  %add357 = add nsw i32 %341, %346
  %mul358 = mul nsw i32 %336, %add357
  %shr359 = ashr i32 %mul358, 16
  store i32 %shr359, i32* %mcost, align 4
  %347 = load i16*, i16** %ref_pic, align 8
  %348 = load i16**, i16*** %orig_pic.addr, align 8
  %349 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %350 = load i32, i32* %blocksize_y, align 4
  %351 = load i32, i32* %blocksize_x, align 4
  %352 = load i32, i32* %blocksize_x4, align 4
  %353 = load i32, i32* %mcost, align 4
  %354 = load i32, i32* %min_mcost.addr, align 4
  %355 = load i32, i32* %cand_x, align 4
  %356 = load i32, i32* %cand_y, align 4
  %call360 = call i32 @PartCalMad(i16* %347, i16** %348, i16* (i32, i16*, i32, i32, i32, i32)* %349, i32 %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355, i32 %356)
  store i32 %call360, i32* %mcost, align 4
  %357 = load i32, i32* %mcost, align 4
  %358 = load i32, i32* %cand_x, align 4
  %359 = load i32, i32* %center_x, align 4
  %sub361 = sub nsw i32 %358, %359
  %360 = load i32, i32* %search_range.addr, align 4
  %add362 = add nsw i32 %sub361, %360
  %idxprom363 = sext i32 %add362 to i64
  %361 = load i32, i32* %cand_y, align 4
  %362 = load i32, i32* %center_y, align 4
  %sub364 = sub nsw i32 %361, %362
  %363 = load i32, i32* %search_range.addr, align 4
  %add365 = add nsw i32 %sub364, %363
  %idxprom366 = sext i32 %add365 to i64
  %364 = load i32**, i32*** @McostState, align 8
  %arrayidx367 = getelementptr inbounds i32*, i32** %364, i64 %idxprom366
  %365 = load i32*, i32** %arrayidx367, align 8
  %arrayidx368 = getelementptr inbounds i32, i32* %365, i64 %idxprom363
  store i32 %357, i32* %arrayidx368, align 4
  %366 = load i32, i32* %mcost, align 4
  %367 = load i32, i32* %min_mcost.addr, align 4
  %cmp369 = icmp slt i32 %366, %367
  br i1 %cmp369, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %if.then.348
  %368 = load i32, i32* %cand_x, align 4
  store i32 %368, i32* %best_x, align 4
  %369 = load i32, i32* %cand_y, align 4
  store i32 %369, i32* %best_y, align 4
  %370 = load i32, i32* %mcost, align 4
  store i32 %370, i32* %min_mcost.addr, align 4
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.371, %if.then.348
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %if.then.338
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %land.lhs.true.333, %if.then.324
  %371 = load i32, i32* %min_mcost.addr, align 4
  %372 = load i32, i32* @pred_SAD_uplayer, align 4
  %sub375 = sub nsw i32 %371, %372
  %conv376 = sitofp i32 %sub375 to float
  %373 = load i32, i32* @pred_SAD_uplayer, align 4
  %conv377 = sitofp i32 %373 to float
  %374 = load float, float* %betaThird, align 4
  %mul378 = fmul float %conv377, %374
  %cmp379 = fcmp olt float %conv376, %mul378
  br i1 %cmp379, label %if.then.381, label %if.else.382

if.then.381:                                      ; preds = %if.end.374
  br label %third_step

if.else.382:                                      ; preds = %if.end.374
  %375 = load i32, i32* %min_mcost.addr, align 4
  %376 = load i32, i32* @pred_SAD_uplayer, align 4
  %sub383 = sub nsw i32 %375, %376
  %conv384 = sitofp i32 %sub383 to float
  %377 = load i32, i32* @pred_SAD_uplayer, align 4
  %conv385 = sitofp i32 %377 to float
  %378 = load float, float* %betaSec, align 4
  %mul386 = fmul float %conv385, %378
  %cmp387 = fcmp olt float %conv384, %mul386
  br i1 %cmp387, label %if.then.389, label %if.end.390

if.then.389:                                      ; preds = %if.else.382
  br label %sec_step

if.end.390:                                       ; preds = %if.else.382
  br label %if.end.391

if.end.391:                                       ; preds = %if.end.390
  br label %if.end.392

if.end.392:                                       ; preds = %if.end.391, %if.end.321
  %379 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %379, i32 0, i32 0
  %380 = load i32, i32* %number, align 4
  %381 = load i16, i16* %ref.addr, align 2
  %conv393 = sext i16 %381 to i32
  %add394 = add nsw i32 1, %conv393
  %cmp395 = icmp sgt i32 %380, %add394
  br i1 %cmp395, label %land.lhs.true.397, label %lor.lhs.false.401

land.lhs.true.397:                                ; preds = %if.end.392
  %382 = load i16, i16* %ref.addr, align 2
  %conv398 = sext i16 %382 to i32
  %cmp399 = icmp ne i32 %conv398, -1
  br i1 %cmp399, label %if.then.408, label %lor.lhs.false.401

lor.lhs.false.401:                                ; preds = %land.lhs.true.397, %if.end.392
  %383 = load i32, i32* %list.addr, align 4
  %cmp402 = icmp eq i32 %383, 1
  br i1 %cmp402, label %land.lhs.true.404, label %if.end.459

land.lhs.true.404:                                ; preds = %lor.lhs.false.401
  %384 = load i32, i32* @Bframe_ctr, align 4
  %385 = load i32, i32* %N_Bframe, align 4
  %rem405 = srem i32 %384, %385
  %cmp406 = icmp sgt i32 %rem405, 1
  br i1 %cmp406, label %if.then.408, label %if.end.459

if.then.408:                                      ; preds = %land.lhs.true.404, %land.lhs.true.397
  %386 = load i32, i32* %pic_pix_x.addr, align 4
  %387 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_time, i32 0, i64 0), align 4
  %div409 = sdiv i32 %387, 4
  %add410 = add nsw i32 %386, %div409
  store i32 %add410, i32* %cand_x, align 4
  %388 = load i32, i32* %pic_pix_y.addr, align 4
  %389 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_time, i32 0, i64 1), align 4
  %div411 = sdiv i32 %389, 4
  %add412 = add nsw i32 %388, %div411
  store i32 %add412, i32* %cand_y, align 4
  %390 = load i32, i32* %cand_x, align 4
  %391 = load i32, i32* %center_x, align 4
  %sub413 = sub nsw i32 %390, %391
  %call414 = call i32 @abs(i32 %sub413) #5
  %392 = load i32, i32* %search_range.addr, align 4
  %cmp415 = icmp sle i32 %call414, %392
  br i1 %cmp415, label %land.lhs.true.417, label %if.end.458

land.lhs.true.417:                                ; preds = %if.then.408
  %393 = load i32, i32* %cand_y, align 4
  %394 = load i32, i32* %center_y, align 4
  %sub418 = sub nsw i32 %393, %394
  %call419 = call i32 @abs(i32 %sub418) #5
  %395 = load i32, i32* %search_range.addr, align 4
  %cmp420 = icmp sle i32 %call419, %395
  br i1 %cmp420, label %if.then.422, label %if.end.458

if.then.422:                                      ; preds = %land.lhs.true.417
  %396 = load i32, i32* %cand_x, align 4
  %397 = load i32, i32* %center_x, align 4
  %sub423 = sub nsw i32 %396, %397
  %398 = load i32, i32* %search_range.addr, align 4
  %add424 = add nsw i32 %sub423, %398
  %idxprom425 = sext i32 %add424 to i64
  %399 = load i32, i32* %cand_y, align 4
  %400 = load i32, i32* %center_y, align 4
  %sub426 = sub nsw i32 %399, %400
  %401 = load i32, i32* %search_range.addr, align 4
  %add427 = add nsw i32 %sub426, %401
  %idxprom428 = sext i32 %add427 to i64
  %402 = load i32**, i32*** @McostState, align 8
  %arrayidx429 = getelementptr inbounds i32*, i32** %402, i64 %idxprom428
  %403 = load i32*, i32** %arrayidx429, align 8
  %arrayidx430 = getelementptr inbounds i32, i32* %403, i64 %idxprom425
  %404 = load i32, i32* %arrayidx430, align 4
  %tobool431 = icmp ne i32 %404, 0
  br i1 %tobool431, label %if.end.457, label %if.then.432

if.then.432:                                      ; preds = %if.then.422
  %405 = load i32, i32* %lambda_factor, align 4
  %406 = load i32, i32* %cand_x, align 4
  %407 = load i32, i32* %mvshift, align 4
  %shl433 = shl i32 %406, %407
  %408 = load i32, i32* %pred_x, align 4
  %sub434 = sub nsw i32 %shl433, %408
  %idxprom435 = sext i32 %sub434 to i64
  %409 = load i32*, i32** @mvbits, align 8
  %arrayidx436 = getelementptr inbounds i32, i32* %409, i64 %idxprom435
  %410 = load i32, i32* %arrayidx436, align 4
  %411 = load i32, i32* %cand_y, align 4
  %412 = load i32, i32* %mvshift, align 4
  %shl437 = shl i32 %411, %412
  %413 = load i32, i32* %pred_y, align 4
  %sub438 = sub nsw i32 %shl437, %413
  %idxprom439 = sext i32 %sub438 to i64
  %414 = load i32*, i32** @mvbits, align 8
  %arrayidx440 = getelementptr inbounds i32, i32* %414, i64 %idxprom439
  %415 = load i32, i32* %arrayidx440, align 4
  %add441 = add nsw i32 %410, %415
  %mul442 = mul nsw i32 %405, %add441
  %shr443 = ashr i32 %mul442, 16
  store i32 %shr443, i32* %mcost, align 4
  %416 = load i16*, i16** %ref_pic, align 8
  %417 = load i16**, i16*** %orig_pic.addr, align 8
  %418 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %419 = load i32, i32* %blocksize_y, align 4
  %420 = load i32, i32* %blocksize_x, align 4
  %421 = load i32, i32* %blocksize_x4, align 4
  %422 = load i32, i32* %mcost, align 4
  %423 = load i32, i32* %min_mcost.addr, align 4
  %424 = load i32, i32* %cand_x, align 4
  %425 = load i32, i32* %cand_y, align 4
  %call444 = call i32 @PartCalMad(i16* %416, i16** %417, i16* (i32, i16*, i32, i32, i32, i32)* %418, i32 %419, i32 %420, i32 %421, i32 %422, i32 %423, i32 %424, i32 %425)
  store i32 %call444, i32* %mcost, align 4
  %426 = load i32, i32* %mcost, align 4
  %427 = load i32, i32* %cand_x, align 4
  %428 = load i32, i32* %center_x, align 4
  %sub445 = sub nsw i32 %427, %428
  %429 = load i32, i32* %search_range.addr, align 4
  %add446 = add nsw i32 %sub445, %429
  %idxprom447 = sext i32 %add446 to i64
  %430 = load i32, i32* %cand_y, align 4
  %431 = load i32, i32* %center_y, align 4
  %sub448 = sub nsw i32 %430, %431
  %432 = load i32, i32* %search_range.addr, align 4
  %add449 = add nsw i32 %sub448, %432
  %idxprom450 = sext i32 %add449 to i64
  %433 = load i32**, i32*** @McostState, align 8
  %arrayidx451 = getelementptr inbounds i32*, i32** %433, i64 %idxprom450
  %434 = load i32*, i32** %arrayidx451, align 8
  %arrayidx452 = getelementptr inbounds i32, i32* %434, i64 %idxprom447
  store i32 %426, i32* %arrayidx452, align 4
  %435 = load i32, i32* %mcost, align 4
  %436 = load i32, i32* %min_mcost.addr, align 4
  %cmp453 = icmp slt i32 %435, %436
  br i1 %cmp453, label %if.then.455, label %if.end.456

if.then.455:                                      ; preds = %if.then.432
  %437 = load i32, i32* %cand_x, align 4
  store i32 %437, i32* %best_x, align 4
  %438 = load i32, i32* %cand_y, align 4
  store i32 %438, i32* %best_y, align 4
  %439 = load i32, i32* %mcost, align 4
  store i32 %439, i32* %min_mcost.addr, align 4
  br label %if.end.456

if.end.456:                                       ; preds = %if.then.455, %if.then.432
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.456, %if.then.422
  br label %if.end.458

if.end.458:                                       ; preds = %if.end.457, %land.lhs.true.417, %if.then.408
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458, %land.lhs.true.404, %lor.lhs.false.401
  %440 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %440, i32 0, i32 91
  %441 = load i32, i32* %PicInterlace, align 4
  %cmp460 = icmp eq i32 %441, 1
  br i1 %cmp460, label %if.then.462, label %if.else.535

if.then.462:                                      ; preds = %if.end.459
  %442 = load i32, i32* %list.addr, align 4
  %cmp463 = icmp eq i32 %442, 0
  br i1 %cmp463, label %land.lhs.true.465, label %lor.lhs.false.469

land.lhs.true.465:                                ; preds = %if.then.462
  %443 = load i16, i16* %ref.addr, align 2
  %conv466 = sext i16 %443 to i32
  %cmp467 = icmp sgt i32 %conv466, 0
  br i1 %cmp467, label %if.then.483, label %lor.lhs.false.469

lor.lhs.false.469:                                ; preds = %land.lhs.true.465, %if.then.462
  %444 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %444, i32 0, i32 6
  %445 = load i32, i32* %type, align 4
  %cmp470 = icmp eq i32 %445, 1
  br i1 %cmp470, label %land.lhs.true.472, label %if.end.534

land.lhs.true.472:                                ; preds = %lor.lhs.false.469
  %446 = load i32, i32* %list.addr, align 4
  %cmp473 = icmp eq i32 %446, 0
  br i1 %cmp473, label %land.lhs.true.475, label %if.end.534

land.lhs.true.475:                                ; preds = %land.lhs.true.472
  %447 = load i16, i16* %ref.addr, align 2
  %conv476 = sext i16 %447 to i32
  %cmp477 = icmp eq i32 %conv476, 0
  br i1 %cmp477, label %if.then.483, label %lor.lhs.false.479

lor.lhs.false.479:                                ; preds = %land.lhs.true.475
  %448 = load i16, i16* %ref.addr, align 2
  %conv480 = sext i16 %448 to i32
  %cmp481 = icmp eq i32 %conv480, 2
  br i1 %cmp481, label %if.then.483, label %if.end.534

if.then.483:                                      ; preds = %lor.lhs.false.479, %land.lhs.true.475, %land.lhs.true.465
  %449 = load i32, i32* %pic_pix_x.addr, align 4
  %450 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %div484 = sdiv i32 %450, 4
  %add485 = add nsw i32 %449, %div484
  store i32 %add485, i32* %cand_x, align 4
  %451 = load i32, i32* %pic_pix_y.addr, align 4
  %452 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  %div486 = sdiv i32 %452, 4
  %add487 = add nsw i32 %451, %div486
  store i32 %add487, i32* %cand_y, align 4
  %453 = load i32, i32* %cand_x, align 4
  %454 = load i32, i32* %center_x, align 4
  %sub488 = sub nsw i32 %453, %454
  %call489 = call i32 @abs(i32 %sub488) #5
  %455 = load i32, i32* %search_range.addr, align 4
  %cmp490 = icmp sle i32 %call489, %455
  br i1 %cmp490, label %land.lhs.true.492, label %if.end.533

land.lhs.true.492:                                ; preds = %if.then.483
  %456 = load i32, i32* %cand_y, align 4
  %457 = load i32, i32* %center_y, align 4
  %sub493 = sub nsw i32 %456, %457
  %call494 = call i32 @abs(i32 %sub493) #5
  %458 = load i32, i32* %search_range.addr, align 4
  %cmp495 = icmp sle i32 %call494, %458
  br i1 %cmp495, label %if.then.497, label %if.end.533

if.then.497:                                      ; preds = %land.lhs.true.492
  %459 = load i32, i32* %cand_x, align 4
  %460 = load i32, i32* %center_x, align 4
  %sub498 = sub nsw i32 %459, %460
  %461 = load i32, i32* %search_range.addr, align 4
  %add499 = add nsw i32 %sub498, %461
  %idxprom500 = sext i32 %add499 to i64
  %462 = load i32, i32* %cand_y, align 4
  %463 = load i32, i32* %center_y, align 4
  %sub501 = sub nsw i32 %462, %463
  %464 = load i32, i32* %search_range.addr, align 4
  %add502 = add nsw i32 %sub501, %464
  %idxprom503 = sext i32 %add502 to i64
  %465 = load i32**, i32*** @McostState, align 8
  %arrayidx504 = getelementptr inbounds i32*, i32** %465, i64 %idxprom503
  %466 = load i32*, i32** %arrayidx504, align 8
  %arrayidx505 = getelementptr inbounds i32, i32* %466, i64 %idxprom500
  %467 = load i32, i32* %arrayidx505, align 4
  %tobool506 = icmp ne i32 %467, 0
  br i1 %tobool506, label %if.end.532, label %if.then.507

if.then.507:                                      ; preds = %if.then.497
  %468 = load i32, i32* %lambda_factor, align 4
  %469 = load i32, i32* %cand_x, align 4
  %470 = load i32, i32* %mvshift, align 4
  %shl508 = shl i32 %469, %470
  %471 = load i32, i32* %pred_x, align 4
  %sub509 = sub nsw i32 %shl508, %471
  %idxprom510 = sext i32 %sub509 to i64
  %472 = load i32*, i32** @mvbits, align 8
  %arrayidx511 = getelementptr inbounds i32, i32* %472, i64 %idxprom510
  %473 = load i32, i32* %arrayidx511, align 4
  %474 = load i32, i32* %cand_y, align 4
  %475 = load i32, i32* %mvshift, align 4
  %shl512 = shl i32 %474, %475
  %476 = load i32, i32* %pred_y, align 4
  %sub513 = sub nsw i32 %shl512, %476
  %idxprom514 = sext i32 %sub513 to i64
  %477 = load i32*, i32** @mvbits, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %477, i64 %idxprom514
  %478 = load i32, i32* %arrayidx515, align 4
  %add516 = add nsw i32 %473, %478
  %mul517 = mul nsw i32 %468, %add516
  %shr518 = ashr i32 %mul517, 16
  store i32 %shr518, i32* %mcost, align 4
  %479 = load i16*, i16** %ref_pic, align 8
  %480 = load i16**, i16*** %orig_pic.addr, align 8
  %481 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %482 = load i32, i32* %blocksize_y, align 4
  %483 = load i32, i32* %blocksize_x, align 4
  %484 = load i32, i32* %blocksize_x4, align 4
  %485 = load i32, i32* %mcost, align 4
  %486 = load i32, i32* %min_mcost.addr, align 4
  %487 = load i32, i32* %cand_x, align 4
  %488 = load i32, i32* %cand_y, align 4
  %call519 = call i32 @PartCalMad(i16* %479, i16** %480, i16* (i32, i16*, i32, i32, i32, i32)* %481, i32 %482, i32 %483, i32 %484, i32 %485, i32 %486, i32 %487, i32 %488)
  store i32 %call519, i32* %mcost, align 4
  %489 = load i32, i32* %mcost, align 4
  %490 = load i32, i32* %cand_x, align 4
  %491 = load i32, i32* %center_x, align 4
  %sub520 = sub nsw i32 %490, %491
  %492 = load i32, i32* %search_range.addr, align 4
  %add521 = add nsw i32 %sub520, %492
  %idxprom522 = sext i32 %add521 to i64
  %493 = load i32, i32* %cand_y, align 4
  %494 = load i32, i32* %center_y, align 4
  %sub523 = sub nsw i32 %493, %494
  %495 = load i32, i32* %search_range.addr, align 4
  %add524 = add nsw i32 %sub523, %495
  %idxprom525 = sext i32 %add524 to i64
  %496 = load i32**, i32*** @McostState, align 8
  %arrayidx526 = getelementptr inbounds i32*, i32** %496, i64 %idxprom525
  %497 = load i32*, i32** %arrayidx526, align 8
  %arrayidx527 = getelementptr inbounds i32, i32* %497, i64 %idxprom522
  store i32 %489, i32* %arrayidx527, align 4
  %498 = load i32, i32* %mcost, align 4
  %499 = load i32, i32* %min_mcost.addr, align 4
  %cmp528 = icmp slt i32 %498, %499
  br i1 %cmp528, label %if.then.530, label %if.end.531

if.then.530:                                      ; preds = %if.then.507
  %500 = load i32, i32* %cand_x, align 4
  store i32 %500, i32* %best_x, align 4
  %501 = load i32, i32* %cand_y, align 4
  store i32 %501, i32* %best_y, align 4
  %502 = load i32, i32* %mcost, align 4
  store i32 %502, i32* %min_mcost.addr, align 4
  br label %if.end.531

if.end.531:                                       ; preds = %if.then.530, %if.then.507
  br label %if.end.532

if.end.532:                                       ; preds = %if.end.531, %if.then.497
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.532, %land.lhs.true.492, %if.then.483
  br label %if.end.534

if.end.534:                                       ; preds = %if.end.533, %lor.lhs.false.479, %land.lhs.true.472, %lor.lhs.false.469
  br label %if.end.605

if.else.535:                                      ; preds = %if.end.459
  %503 = load i32, i32* %list.addr, align 4
  %cmp536 = icmp eq i32 %503, 0
  br i1 %cmp536, label %land.lhs.true.538, label %lor.lhs.false.542

land.lhs.true.538:                                ; preds = %if.else.535
  %504 = load i16, i16* %ref.addr, align 2
  %conv539 = sext i16 %504 to i32
  %cmp540 = icmp sgt i32 %conv539, 0
  br i1 %cmp540, label %if.then.553, label %lor.lhs.false.542

lor.lhs.false.542:                                ; preds = %land.lhs.true.538, %if.else.535
  %505 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type543 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %505, i32 0, i32 6
  %506 = load i32, i32* %type543, align 4
  %cmp544 = icmp eq i32 %506, 1
  br i1 %cmp544, label %land.lhs.true.546, label %if.end.604

land.lhs.true.546:                                ; preds = %lor.lhs.false.542
  %507 = load i32, i32* %list.addr, align 4
  %cmp547 = icmp eq i32 %507, 0
  br i1 %cmp547, label %land.lhs.true.549, label %if.end.604

land.lhs.true.549:                                ; preds = %land.lhs.true.546
  %508 = load i16, i16* %ref.addr, align 2
  %conv550 = sext i16 %508 to i32
  %cmp551 = icmp eq i32 %conv550, 0
  br i1 %cmp551, label %if.then.553, label %if.end.604

if.then.553:                                      ; preds = %land.lhs.true.549, %land.lhs.true.538
  %509 = load i32, i32* %pic_pix_x.addr, align 4
  %510 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %div554 = sdiv i32 %510, 4
  %add555 = add nsw i32 %509, %div554
  store i32 %add555, i32* %cand_x, align 4
  %511 = load i32, i32* %pic_pix_y.addr, align 4
  %512 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  %div556 = sdiv i32 %512, 4
  %add557 = add nsw i32 %511, %div556
  store i32 %add557, i32* %cand_y, align 4
  %513 = load i32, i32* %cand_x, align 4
  %514 = load i32, i32* %center_x, align 4
  %sub558 = sub nsw i32 %513, %514
  %call559 = call i32 @abs(i32 %sub558) #5
  %515 = load i32, i32* %search_range.addr, align 4
  %cmp560 = icmp sle i32 %call559, %515
  br i1 %cmp560, label %land.lhs.true.562, label %if.end.603

land.lhs.true.562:                                ; preds = %if.then.553
  %516 = load i32, i32* %cand_y, align 4
  %517 = load i32, i32* %center_y, align 4
  %sub563 = sub nsw i32 %516, %517
  %call564 = call i32 @abs(i32 %sub563) #5
  %518 = load i32, i32* %search_range.addr, align 4
  %cmp565 = icmp sle i32 %call564, %518
  br i1 %cmp565, label %if.then.567, label %if.end.603

if.then.567:                                      ; preds = %land.lhs.true.562
  %519 = load i32, i32* %cand_x, align 4
  %520 = load i32, i32* %center_x, align 4
  %sub568 = sub nsw i32 %519, %520
  %521 = load i32, i32* %search_range.addr, align 4
  %add569 = add nsw i32 %sub568, %521
  %idxprom570 = sext i32 %add569 to i64
  %522 = load i32, i32* %cand_y, align 4
  %523 = load i32, i32* %center_y, align 4
  %sub571 = sub nsw i32 %522, %523
  %524 = load i32, i32* %search_range.addr, align 4
  %add572 = add nsw i32 %sub571, %524
  %idxprom573 = sext i32 %add572 to i64
  %525 = load i32**, i32*** @McostState, align 8
  %arrayidx574 = getelementptr inbounds i32*, i32** %525, i64 %idxprom573
  %526 = load i32*, i32** %arrayidx574, align 8
  %arrayidx575 = getelementptr inbounds i32, i32* %526, i64 %idxprom570
  %527 = load i32, i32* %arrayidx575, align 4
  %tobool576 = icmp ne i32 %527, 0
  br i1 %tobool576, label %if.end.602, label %if.then.577

if.then.577:                                      ; preds = %if.then.567
  %528 = load i32, i32* %lambda_factor, align 4
  %529 = load i32, i32* %cand_x, align 4
  %530 = load i32, i32* %mvshift, align 4
  %shl578 = shl i32 %529, %530
  %531 = load i32, i32* %pred_x, align 4
  %sub579 = sub nsw i32 %shl578, %531
  %idxprom580 = sext i32 %sub579 to i64
  %532 = load i32*, i32** @mvbits, align 8
  %arrayidx581 = getelementptr inbounds i32, i32* %532, i64 %idxprom580
  %533 = load i32, i32* %arrayidx581, align 4
  %534 = load i32, i32* %cand_y, align 4
  %535 = load i32, i32* %mvshift, align 4
  %shl582 = shl i32 %534, %535
  %536 = load i32, i32* %pred_y, align 4
  %sub583 = sub nsw i32 %shl582, %536
  %idxprom584 = sext i32 %sub583 to i64
  %537 = load i32*, i32** @mvbits, align 8
  %arrayidx585 = getelementptr inbounds i32, i32* %537, i64 %idxprom584
  %538 = load i32, i32* %arrayidx585, align 4
  %add586 = add nsw i32 %533, %538
  %mul587 = mul nsw i32 %528, %add586
  %shr588 = ashr i32 %mul587, 16
  store i32 %shr588, i32* %mcost, align 4
  %539 = load i16*, i16** %ref_pic, align 8
  %540 = load i16**, i16*** %orig_pic.addr, align 8
  %541 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %542 = load i32, i32* %blocksize_y, align 4
  %543 = load i32, i32* %blocksize_x, align 4
  %544 = load i32, i32* %blocksize_x4, align 4
  %545 = load i32, i32* %mcost, align 4
  %546 = load i32, i32* %min_mcost.addr, align 4
  %547 = load i32, i32* %cand_x, align 4
  %548 = load i32, i32* %cand_y, align 4
  %call589 = call i32 @PartCalMad(i16* %539, i16** %540, i16* (i32, i16*, i32, i32, i32, i32)* %541, i32 %542, i32 %543, i32 %544, i32 %545, i32 %546, i32 %547, i32 %548)
  store i32 %call589, i32* %mcost, align 4
  %549 = load i32, i32* %mcost, align 4
  %550 = load i32, i32* %cand_x, align 4
  %551 = load i32, i32* %center_x, align 4
  %sub590 = sub nsw i32 %550, %551
  %552 = load i32, i32* %search_range.addr, align 4
  %add591 = add nsw i32 %sub590, %552
  %idxprom592 = sext i32 %add591 to i64
  %553 = load i32, i32* %cand_y, align 4
  %554 = load i32, i32* %center_y, align 4
  %sub593 = sub nsw i32 %553, %554
  %555 = load i32, i32* %search_range.addr, align 4
  %add594 = add nsw i32 %sub593, %555
  %idxprom595 = sext i32 %add594 to i64
  %556 = load i32**, i32*** @McostState, align 8
  %arrayidx596 = getelementptr inbounds i32*, i32** %556, i64 %idxprom595
  %557 = load i32*, i32** %arrayidx596, align 8
  %arrayidx597 = getelementptr inbounds i32, i32* %557, i64 %idxprom592
  store i32 %549, i32* %arrayidx597, align 4
  %558 = load i32, i32* %mcost, align 4
  %559 = load i32, i32* %min_mcost.addr, align 4
  %cmp598 = icmp slt i32 %558, %559
  br i1 %cmp598, label %if.then.600, label %if.end.601

if.then.600:                                      ; preds = %if.then.577
  %560 = load i32, i32* %cand_x, align 4
  store i32 %560, i32* %best_x, align 4
  %561 = load i32, i32* %cand_y, align 4
  store i32 %561, i32* %best_y, align 4
  %562 = load i32, i32* %mcost, align 4
  store i32 %562, i32* %min_mcost.addr, align 4
  br label %if.end.601

if.end.601:                                       ; preds = %if.then.600, %if.then.577
  br label %if.end.602

if.end.602:                                       ; preds = %if.end.601, %if.then.567
  br label %if.end.603

if.end.603:                                       ; preds = %if.end.602, %land.lhs.true.562, %if.then.553
  br label %if.end.604

if.end.604:                                       ; preds = %if.end.603, %land.lhs.true.549, %land.lhs.true.546, %lor.lhs.false.542
  br label %if.end.605

if.end.605:                                       ; preds = %if.end.604, %if.end.534
  %563 = load i32, i32* %best_x, align 4
  store i32 %563, i32* %iXMinNow, align 4
  %564 = load i32, i32* %best_y, align 4
  store i32 %564, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.606

for.cond.606:                                     ; preds = %for.inc.662, %if.end.605
  %565 = load i32, i32* %m, align 4
  %cmp607 = icmp slt i32 %565, 4
  br i1 %cmp607, label %for.body.609, label %for.end.664

for.body.609:                                     ; preds = %for.cond.606
  %566 = load i32, i32* %iXMinNow, align 4
  %567 = load i32, i32* %m, align 4
  %idxprom610 = sext i32 %567 to i64
  %arrayidx611 = getelementptr inbounds [4 x i32], [4 x i32]* @FastIntegerPelBlockMotionSearch.Diamond_x, i32 0, i64 %idxprom610
  %568 = load i32, i32* %arrayidx611, align 4
  %add612 = add nsw i32 %566, %568
  store i32 %add612, i32* %cand_x, align 4
  %569 = load i32, i32* %iYMinNow, align 4
  %570 = load i32, i32* %m, align 4
  %idxprom613 = sext i32 %570 to i64
  %arrayidx614 = getelementptr inbounds [4 x i32], [4 x i32]* @FastIntegerPelBlockMotionSearch.Diamond_y, i32 0, i64 %idxprom613
  %571 = load i32, i32* %arrayidx614, align 4
  %add615 = add nsw i32 %569, %571
  store i32 %add615, i32* %cand_y, align 4
  %572 = load i32, i32* %cand_x, align 4
  %573 = load i32, i32* %center_x, align 4
  %sub616 = sub nsw i32 %572, %573
  %call617 = call i32 @abs(i32 %sub616) #5
  %574 = load i32, i32* %search_range.addr, align 4
  %cmp618 = icmp sle i32 %call617, %574
  br i1 %cmp618, label %land.lhs.true.620, label %if.end.661

land.lhs.true.620:                                ; preds = %for.body.609
  %575 = load i32, i32* %cand_y, align 4
  %576 = load i32, i32* %center_y, align 4
  %sub621 = sub nsw i32 %575, %576
  %call622 = call i32 @abs(i32 %sub621) #5
  %577 = load i32, i32* %search_range.addr, align 4
  %cmp623 = icmp sle i32 %call622, %577
  br i1 %cmp623, label %if.then.625, label %if.end.661

if.then.625:                                      ; preds = %land.lhs.true.620
  %578 = load i32, i32* %cand_x, align 4
  %579 = load i32, i32* %center_x, align 4
  %sub626 = sub nsw i32 %578, %579
  %580 = load i32, i32* %search_range.addr, align 4
  %add627 = add nsw i32 %sub626, %580
  %idxprom628 = sext i32 %add627 to i64
  %581 = load i32, i32* %cand_y, align 4
  %582 = load i32, i32* %center_y, align 4
  %sub629 = sub nsw i32 %581, %582
  %583 = load i32, i32* %search_range.addr, align 4
  %add630 = add nsw i32 %sub629, %583
  %idxprom631 = sext i32 %add630 to i64
  %584 = load i32**, i32*** @McostState, align 8
  %arrayidx632 = getelementptr inbounds i32*, i32** %584, i64 %idxprom631
  %585 = load i32*, i32** %arrayidx632, align 8
  %arrayidx633 = getelementptr inbounds i32, i32* %585, i64 %idxprom628
  %586 = load i32, i32* %arrayidx633, align 4
  %tobool634 = icmp ne i32 %586, 0
  br i1 %tobool634, label %if.end.660, label %if.then.635

if.then.635:                                      ; preds = %if.then.625
  %587 = load i32, i32* %lambda_factor, align 4
  %588 = load i32, i32* %cand_x, align 4
  %589 = load i32, i32* %mvshift, align 4
  %shl636 = shl i32 %588, %589
  %590 = load i32, i32* %pred_x, align 4
  %sub637 = sub nsw i32 %shl636, %590
  %idxprom638 = sext i32 %sub637 to i64
  %591 = load i32*, i32** @mvbits, align 8
  %arrayidx639 = getelementptr inbounds i32, i32* %591, i64 %idxprom638
  %592 = load i32, i32* %arrayidx639, align 4
  %593 = load i32, i32* %cand_y, align 4
  %594 = load i32, i32* %mvshift, align 4
  %shl640 = shl i32 %593, %594
  %595 = load i32, i32* %pred_y, align 4
  %sub641 = sub nsw i32 %shl640, %595
  %idxprom642 = sext i32 %sub641 to i64
  %596 = load i32*, i32** @mvbits, align 8
  %arrayidx643 = getelementptr inbounds i32, i32* %596, i64 %idxprom642
  %597 = load i32, i32* %arrayidx643, align 4
  %add644 = add nsw i32 %592, %597
  %mul645 = mul nsw i32 %587, %add644
  %shr646 = ashr i32 %mul645, 16
  store i32 %shr646, i32* %mcost, align 4
  %598 = load i16*, i16** %ref_pic, align 8
  %599 = load i16**, i16*** %orig_pic.addr, align 8
  %600 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %601 = load i32, i32* %blocksize_y, align 4
  %602 = load i32, i32* %blocksize_x, align 4
  %603 = load i32, i32* %blocksize_x4, align 4
  %604 = load i32, i32* %mcost, align 4
  %605 = load i32, i32* %min_mcost.addr, align 4
  %606 = load i32, i32* %cand_x, align 4
  %607 = load i32, i32* %cand_y, align 4
  %call647 = call i32 @PartCalMad(i16* %598, i16** %599, i16* (i32, i16*, i32, i32, i32, i32)* %600, i32 %601, i32 %602, i32 %603, i32 %604, i32 %605, i32 %606, i32 %607)
  store i32 %call647, i32* %mcost, align 4
  %608 = load i32, i32* %mcost, align 4
  %609 = load i32, i32* %cand_x, align 4
  %610 = load i32, i32* %center_x, align 4
  %sub648 = sub nsw i32 %609, %610
  %611 = load i32, i32* %search_range.addr, align 4
  %add649 = add nsw i32 %sub648, %611
  %idxprom650 = sext i32 %add649 to i64
  %612 = load i32, i32* %cand_y, align 4
  %613 = load i32, i32* %center_y, align 4
  %sub651 = sub nsw i32 %612, %613
  %614 = load i32, i32* %search_range.addr, align 4
  %add652 = add nsw i32 %sub651, %614
  %idxprom653 = sext i32 %add652 to i64
  %615 = load i32**, i32*** @McostState, align 8
  %arrayidx654 = getelementptr inbounds i32*, i32** %615, i64 %idxprom653
  %616 = load i32*, i32** %arrayidx654, align 8
  %arrayidx655 = getelementptr inbounds i32, i32* %616, i64 %idxprom650
  store i32 %608, i32* %arrayidx655, align 4
  %617 = load i32, i32* %mcost, align 4
  %618 = load i32, i32* %min_mcost.addr, align 4
  %cmp656 = icmp slt i32 %617, %618
  br i1 %cmp656, label %if.then.658, label %if.end.659

if.then.658:                                      ; preds = %if.then.635
  %619 = load i32, i32* %cand_x, align 4
  store i32 %619, i32* %best_x, align 4
  %620 = load i32, i32* %cand_y, align 4
  store i32 %620, i32* %best_y, align 4
  %621 = load i32, i32* %mcost, align 4
  store i32 %621, i32* %min_mcost.addr, align 4
  br label %if.end.659

if.end.659:                                       ; preds = %if.then.658, %if.then.635
  br label %if.end.660

if.end.660:                                       ; preds = %if.end.659, %if.then.625
  br label %if.end.661

if.end.661:                                       ; preds = %if.end.660, %land.lhs.true.620, %for.body.609
  br label %for.inc.662

for.inc.662:                                      ; preds = %if.end.661
  %622 = load i32, i32* %m, align 4
  %inc663 = add nsw i32 %622, 1
  store i32 %inc663, i32* %m, align 4
  br label %for.cond.606

for.end.664:                                      ; preds = %for.cond.606
  %623 = load i16, i16* %ref.addr, align 2
  %conv665 = sext i16 %623 to i32
  %cmp666 = icmp sgt i32 %conv665, 0
  br i1 %cmp666, label %if.then.668, label %if.else.686

if.then.668:                                      ; preds = %for.end.664
  %624 = load i32, i32* %min_mcost.addr, align 4
  %625 = load i32, i32* @pred_SAD_ref, align 4
  %sub669 = sub nsw i32 %624, %625
  %conv670 = sitofp i32 %sub669 to float
  %626 = load i32, i32* @pred_SAD_ref, align 4
  %conv671 = sitofp i32 %626 to float
  %627 = load float, float* %betaThird, align 4
  %mul672 = fmul float %conv671, %627
  %cmp673 = fcmp olt float %conv670, %mul672
  br i1 %cmp673, label %if.then.675, label %if.else.676

if.then.675:                                      ; preds = %if.then.668
  br label %third_step

if.else.676:                                      ; preds = %if.then.668
  %628 = load i32, i32* %min_mcost.addr, align 4
  %629 = load i32, i32* @pred_SAD_ref, align 4
  %sub677 = sub nsw i32 %628, %629
  %conv678 = sitofp i32 %sub677 to float
  %630 = load i32, i32* @pred_SAD_ref, align 4
  %conv679 = sitofp i32 %630 to float
  %631 = load float, float* %betaSec, align 4
  %mul680 = fmul float %conv679, %631
  %cmp681 = fcmp olt float %conv678, %mul680
  br i1 %cmp681, label %if.then.683, label %if.end.684

if.then.683:                                      ; preds = %if.else.676
  br label %sec_step

if.end.684:                                       ; preds = %if.else.676
  br label %if.end.685

if.end.685:                                       ; preds = %if.end.684
  br label %if.end.726

if.else.686:                                      ; preds = %for.end.664
  %632 = load i32, i32* %blocktype.addr, align 4
  %cmp687 = icmp sgt i32 %632, 1
  br i1 %cmp687, label %if.then.689, label %if.else.707

if.then.689:                                      ; preds = %if.else.686
  %633 = load i32, i32* %min_mcost.addr, align 4
  %634 = load i32, i32* @pred_SAD_uplayer, align 4
  %sub690 = sub nsw i32 %633, %634
  %conv691 = sitofp i32 %sub690 to float
  %635 = load i32, i32* @pred_SAD_uplayer, align 4
  %conv692 = sitofp i32 %635 to float
  %636 = load float, float* %betaThird, align 4
  %mul693 = fmul float %conv692, %636
  %cmp694 = fcmp olt float %conv691, %mul693
  br i1 %cmp694, label %if.then.696, label %if.else.697

if.then.696:                                      ; preds = %if.then.689
  br label %third_step

if.else.697:                                      ; preds = %if.then.689
  %637 = load i32, i32* %min_mcost.addr, align 4
  %638 = load i32, i32* @pred_SAD_uplayer, align 4
  %sub698 = sub nsw i32 %637, %638
  %conv699 = sitofp i32 %sub698 to float
  %639 = load i32, i32* @pred_SAD_uplayer, align 4
  %conv700 = sitofp i32 %639 to float
  %640 = load float, float* %betaSec, align 4
  %mul701 = fmul float %conv700, %640
  %cmp702 = fcmp olt float %conv699, %mul701
  br i1 %cmp702, label %if.then.704, label %if.end.705

if.then.704:                                      ; preds = %if.else.697
  br label %sec_step

if.end.705:                                       ; preds = %if.else.697
  br label %if.end.706

if.end.706:                                       ; preds = %if.end.705
  br label %if.end.725

if.else.707:                                      ; preds = %if.else.686
  %641 = load i32, i32* %min_mcost.addr, align 4
  %642 = load i32, i32* @pred_SAD_space, align 4
  %sub708 = sub nsw i32 %641, %642
  %conv709 = sitofp i32 %sub708 to float
  %643 = load i32, i32* @pred_SAD_space, align 4
  %conv710 = sitofp i32 %643 to float
  %644 = load float, float* %betaThird, align 4
  %mul711 = fmul float %conv710, %644
  %cmp712 = fcmp olt float %conv709, %mul711
  br i1 %cmp712, label %if.then.714, label %if.else.715

if.then.714:                                      ; preds = %if.else.707
  br label %third_step

if.else.715:                                      ; preds = %if.else.707
  %645 = load i32, i32* %min_mcost.addr, align 4
  %646 = load i32, i32* @pred_SAD_space, align 4
  %sub716 = sub nsw i32 %645, %646
  %conv717 = sitofp i32 %sub716 to float
  %647 = load i32, i32* @pred_SAD_space, align 4
  %conv718 = sitofp i32 %647 to float
  %648 = load float, float* %betaSec, align 4
  %mul719 = fmul float %conv718, %648
  %cmp720 = fcmp olt float %conv717, %mul719
  br i1 %cmp720, label %if.then.722, label %if.end.723

if.then.722:                                      ; preds = %if.else.715
  br label %sec_step

if.end.723:                                       ; preds = %if.else.715
  br label %if.end.724

if.end.724:                                       ; preds = %if.end.723
  br label %if.end.725

if.end.725:                                       ; preds = %if.end.724, %if.end.706
  br label %if.end.726

if.end.726:                                       ; preds = %if.end.725, %if.end.685
  %649 = load i32, i32* %blocktype.addr, align 4
  %cmp727 = icmp sgt i32 %649, 6
  br i1 %cmp727, label %if.then.729, label %if.else.730

if.then.729:                                      ; preds = %if.end.726
  br label %sec_step

if.else.730:                                      ; preds = %if.end.726
  br label %first_step

first_step:                                       ; preds = %if.else.730
  %650 = load i32, i32* %best_x, align 4
  store i32 %650, i32* %iXMinNow, align 4
  %651 = load i32, i32* %best_y, align 4
  store i32 %651, i32* %iYMinNow, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.731

for.cond.731:                                     ; preds = %for.inc.832, %first_step
  %652 = load i32, i32* %i, align 4
  %653 = load i32, i32* %search_range.addr, align 4
  %div732 = sdiv i32 %653, 2
  %cmp733 = icmp sle i32 %652, %div732
  br i1 %cmp733, label %for.body.735, label %for.end.834

for.body.735:                                     ; preds = %for.cond.731
  %654 = load i32, i32* %i, align 4
  %mul736 = mul nsw i32 2, %654
  %sub737 = sub nsw i32 %mul736, 1
  store i32 %sub737, i32* %search_step, align 4
  %655 = load i32, i32* %iXMinNow, align 4
  %656 = load i32, i32* %search_step, align 4
  %add738 = add nsw i32 %655, %656
  store i32 %add738, i32* %cand_x, align 4
  %657 = load i32, i32* %iYMinNow, align 4
  store i32 %657, i32* %cand_y, align 4
  %658 = load i32, i32* %cand_x, align 4
  %659 = load i32, i32* %center_x, align 4
  %sub739 = sub nsw i32 %658, %659
  %call740 = call i32 @abs(i32 %sub739) #5
  %660 = load i32, i32* %search_range.addr, align 4
  %cmp741 = icmp sle i32 %call740, %660
  br i1 %cmp741, label %land.lhs.true.743, label %if.end.784

land.lhs.true.743:                                ; preds = %for.body.735
  %661 = load i32, i32* %cand_y, align 4
  %662 = load i32, i32* %center_y, align 4
  %sub744 = sub nsw i32 %661, %662
  %call745 = call i32 @abs(i32 %sub744) #5
  %663 = load i32, i32* %search_range.addr, align 4
  %cmp746 = icmp sle i32 %call745, %663
  br i1 %cmp746, label %if.then.748, label %if.end.784

if.then.748:                                      ; preds = %land.lhs.true.743
  %664 = load i32, i32* %cand_x, align 4
  %665 = load i32, i32* %center_x, align 4
  %sub749 = sub nsw i32 %664, %665
  %666 = load i32, i32* %search_range.addr, align 4
  %add750 = add nsw i32 %sub749, %666
  %idxprom751 = sext i32 %add750 to i64
  %667 = load i32, i32* %cand_y, align 4
  %668 = load i32, i32* %center_y, align 4
  %sub752 = sub nsw i32 %667, %668
  %669 = load i32, i32* %search_range.addr, align 4
  %add753 = add nsw i32 %sub752, %669
  %idxprom754 = sext i32 %add753 to i64
  %670 = load i32**, i32*** @McostState, align 8
  %arrayidx755 = getelementptr inbounds i32*, i32** %670, i64 %idxprom754
  %671 = load i32*, i32** %arrayidx755, align 8
  %arrayidx756 = getelementptr inbounds i32, i32* %671, i64 %idxprom751
  %672 = load i32, i32* %arrayidx756, align 4
  %tobool757 = icmp ne i32 %672, 0
  br i1 %tobool757, label %if.end.783, label %if.then.758

if.then.758:                                      ; preds = %if.then.748
  %673 = load i32, i32* %lambda_factor, align 4
  %674 = load i32, i32* %cand_x, align 4
  %675 = load i32, i32* %mvshift, align 4
  %shl759 = shl i32 %674, %675
  %676 = load i32, i32* %pred_x, align 4
  %sub760 = sub nsw i32 %shl759, %676
  %idxprom761 = sext i32 %sub760 to i64
  %677 = load i32*, i32** @mvbits, align 8
  %arrayidx762 = getelementptr inbounds i32, i32* %677, i64 %idxprom761
  %678 = load i32, i32* %arrayidx762, align 4
  %679 = load i32, i32* %cand_y, align 4
  %680 = load i32, i32* %mvshift, align 4
  %shl763 = shl i32 %679, %680
  %681 = load i32, i32* %pred_y, align 4
  %sub764 = sub nsw i32 %shl763, %681
  %idxprom765 = sext i32 %sub764 to i64
  %682 = load i32*, i32** @mvbits, align 8
  %arrayidx766 = getelementptr inbounds i32, i32* %682, i64 %idxprom765
  %683 = load i32, i32* %arrayidx766, align 4
  %add767 = add nsw i32 %678, %683
  %mul768 = mul nsw i32 %673, %add767
  %shr769 = ashr i32 %mul768, 16
  store i32 %shr769, i32* %mcost, align 4
  %684 = load i16*, i16** %ref_pic, align 8
  %685 = load i16**, i16*** %orig_pic.addr, align 8
  %686 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %687 = load i32, i32* %blocksize_y, align 4
  %688 = load i32, i32* %blocksize_x, align 4
  %689 = load i32, i32* %blocksize_x4, align 4
  %690 = load i32, i32* %mcost, align 4
  %691 = load i32, i32* %min_mcost.addr, align 4
  %692 = load i32, i32* %cand_x, align 4
  %693 = load i32, i32* %cand_y, align 4
  %call770 = call i32 @PartCalMad(i16* %684, i16** %685, i16* (i32, i16*, i32, i32, i32, i32)* %686, i32 %687, i32 %688, i32 %689, i32 %690, i32 %691, i32 %692, i32 %693)
  store i32 %call770, i32* %mcost, align 4
  %694 = load i32, i32* %mcost, align 4
  %695 = load i32, i32* %cand_x, align 4
  %696 = load i32, i32* %center_x, align 4
  %sub771 = sub nsw i32 %695, %696
  %697 = load i32, i32* %search_range.addr, align 4
  %add772 = add nsw i32 %sub771, %697
  %idxprom773 = sext i32 %add772 to i64
  %698 = load i32, i32* %cand_y, align 4
  %699 = load i32, i32* %center_y, align 4
  %sub774 = sub nsw i32 %698, %699
  %700 = load i32, i32* %search_range.addr, align 4
  %add775 = add nsw i32 %sub774, %700
  %idxprom776 = sext i32 %add775 to i64
  %701 = load i32**, i32*** @McostState, align 8
  %arrayidx777 = getelementptr inbounds i32*, i32** %701, i64 %idxprom776
  %702 = load i32*, i32** %arrayidx777, align 8
  %arrayidx778 = getelementptr inbounds i32, i32* %702, i64 %idxprom773
  store i32 %694, i32* %arrayidx778, align 4
  %703 = load i32, i32* %mcost, align 4
  %704 = load i32, i32* %min_mcost.addr, align 4
  %cmp779 = icmp slt i32 %703, %704
  br i1 %cmp779, label %if.then.781, label %if.end.782

if.then.781:                                      ; preds = %if.then.758
  %705 = load i32, i32* %cand_x, align 4
  store i32 %705, i32* %best_x, align 4
  %706 = load i32, i32* %cand_y, align 4
  store i32 %706, i32* %best_y, align 4
  %707 = load i32, i32* %mcost, align 4
  store i32 %707, i32* %min_mcost.addr, align 4
  br label %if.end.782

if.end.782:                                       ; preds = %if.then.781, %if.then.758
  br label %if.end.783

if.end.783:                                       ; preds = %if.end.782, %if.then.748
  br label %if.end.784

if.end.784:                                       ; preds = %if.end.783, %land.lhs.true.743, %for.body.735
  %708 = load i32, i32* %iXMinNow, align 4
  %709 = load i32, i32* %search_step, align 4
  %sub785 = sub nsw i32 %708, %709
  store i32 %sub785, i32* %cand_x, align 4
  %710 = load i32, i32* %iYMinNow, align 4
  store i32 %710, i32* %cand_y, align 4
  %711 = load i32, i32* %cand_x, align 4
  %712 = load i32, i32* %center_x, align 4
  %sub786 = sub nsw i32 %711, %712
  %call787 = call i32 @abs(i32 %sub786) #5
  %713 = load i32, i32* %search_range.addr, align 4
  %cmp788 = icmp sle i32 %call787, %713
  br i1 %cmp788, label %land.lhs.true.790, label %if.end.831

land.lhs.true.790:                                ; preds = %if.end.784
  %714 = load i32, i32* %cand_y, align 4
  %715 = load i32, i32* %center_y, align 4
  %sub791 = sub nsw i32 %714, %715
  %call792 = call i32 @abs(i32 %sub791) #5
  %716 = load i32, i32* %search_range.addr, align 4
  %cmp793 = icmp sle i32 %call792, %716
  br i1 %cmp793, label %if.then.795, label %if.end.831

if.then.795:                                      ; preds = %land.lhs.true.790
  %717 = load i32, i32* %cand_x, align 4
  %718 = load i32, i32* %center_x, align 4
  %sub796 = sub nsw i32 %717, %718
  %719 = load i32, i32* %search_range.addr, align 4
  %add797 = add nsw i32 %sub796, %719
  %idxprom798 = sext i32 %add797 to i64
  %720 = load i32, i32* %cand_y, align 4
  %721 = load i32, i32* %center_y, align 4
  %sub799 = sub nsw i32 %720, %721
  %722 = load i32, i32* %search_range.addr, align 4
  %add800 = add nsw i32 %sub799, %722
  %idxprom801 = sext i32 %add800 to i64
  %723 = load i32**, i32*** @McostState, align 8
  %arrayidx802 = getelementptr inbounds i32*, i32** %723, i64 %idxprom801
  %724 = load i32*, i32** %arrayidx802, align 8
  %arrayidx803 = getelementptr inbounds i32, i32* %724, i64 %idxprom798
  %725 = load i32, i32* %arrayidx803, align 4
  %tobool804 = icmp ne i32 %725, 0
  br i1 %tobool804, label %if.end.830, label %if.then.805

if.then.805:                                      ; preds = %if.then.795
  %726 = load i32, i32* %lambda_factor, align 4
  %727 = load i32, i32* %cand_x, align 4
  %728 = load i32, i32* %mvshift, align 4
  %shl806 = shl i32 %727, %728
  %729 = load i32, i32* %pred_x, align 4
  %sub807 = sub nsw i32 %shl806, %729
  %idxprom808 = sext i32 %sub807 to i64
  %730 = load i32*, i32** @mvbits, align 8
  %arrayidx809 = getelementptr inbounds i32, i32* %730, i64 %idxprom808
  %731 = load i32, i32* %arrayidx809, align 4
  %732 = load i32, i32* %cand_y, align 4
  %733 = load i32, i32* %mvshift, align 4
  %shl810 = shl i32 %732, %733
  %734 = load i32, i32* %pred_y, align 4
  %sub811 = sub nsw i32 %shl810, %734
  %idxprom812 = sext i32 %sub811 to i64
  %735 = load i32*, i32** @mvbits, align 8
  %arrayidx813 = getelementptr inbounds i32, i32* %735, i64 %idxprom812
  %736 = load i32, i32* %arrayidx813, align 4
  %add814 = add nsw i32 %731, %736
  %mul815 = mul nsw i32 %726, %add814
  %shr816 = ashr i32 %mul815, 16
  store i32 %shr816, i32* %mcost, align 4
  %737 = load i16*, i16** %ref_pic, align 8
  %738 = load i16**, i16*** %orig_pic.addr, align 8
  %739 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %740 = load i32, i32* %blocksize_y, align 4
  %741 = load i32, i32* %blocksize_x, align 4
  %742 = load i32, i32* %blocksize_x4, align 4
  %743 = load i32, i32* %mcost, align 4
  %744 = load i32, i32* %min_mcost.addr, align 4
  %745 = load i32, i32* %cand_x, align 4
  %746 = load i32, i32* %cand_y, align 4
  %call817 = call i32 @PartCalMad(i16* %737, i16** %738, i16* (i32, i16*, i32, i32, i32, i32)* %739, i32 %740, i32 %741, i32 %742, i32 %743, i32 %744, i32 %745, i32 %746)
  store i32 %call817, i32* %mcost, align 4
  %747 = load i32, i32* %mcost, align 4
  %748 = load i32, i32* %cand_x, align 4
  %749 = load i32, i32* %center_x, align 4
  %sub818 = sub nsw i32 %748, %749
  %750 = load i32, i32* %search_range.addr, align 4
  %add819 = add nsw i32 %sub818, %750
  %idxprom820 = sext i32 %add819 to i64
  %751 = load i32, i32* %cand_y, align 4
  %752 = load i32, i32* %center_y, align 4
  %sub821 = sub nsw i32 %751, %752
  %753 = load i32, i32* %search_range.addr, align 4
  %add822 = add nsw i32 %sub821, %753
  %idxprom823 = sext i32 %add822 to i64
  %754 = load i32**, i32*** @McostState, align 8
  %arrayidx824 = getelementptr inbounds i32*, i32** %754, i64 %idxprom823
  %755 = load i32*, i32** %arrayidx824, align 8
  %arrayidx825 = getelementptr inbounds i32, i32* %755, i64 %idxprom820
  store i32 %747, i32* %arrayidx825, align 4
  %756 = load i32, i32* %mcost, align 4
  %757 = load i32, i32* %min_mcost.addr, align 4
  %cmp826 = icmp slt i32 %756, %757
  br i1 %cmp826, label %if.then.828, label %if.end.829

if.then.828:                                      ; preds = %if.then.805
  %758 = load i32, i32* %cand_x, align 4
  store i32 %758, i32* %best_x, align 4
  %759 = load i32, i32* %cand_y, align 4
  store i32 %759, i32* %best_y, align 4
  %760 = load i32, i32* %mcost, align 4
  store i32 %760, i32* %min_mcost.addr, align 4
  br label %if.end.829

if.end.829:                                       ; preds = %if.then.828, %if.then.805
  br label %if.end.830

if.end.830:                                       ; preds = %if.end.829, %if.then.795
  br label %if.end.831

if.end.831:                                       ; preds = %if.end.830, %land.lhs.true.790, %if.end.784
  br label %for.inc.832

for.inc.832:                                      ; preds = %if.end.831
  %761 = load i32, i32* %i, align 4
  %inc833 = add nsw i32 %761, 1
  store i32 %inc833, i32* %i, align 4
  br label %for.cond.731

for.end.834:                                      ; preds = %for.cond.731
  store i32 1, i32* %i, align 4
  br label %for.cond.835

for.cond.835:                                     ; preds = %for.inc.936, %for.end.834
  %762 = load i32, i32* %i, align 4
  %763 = load i32, i32* %search_range.addr, align 4
  %div836 = sdiv i32 %763, 4
  %cmp837 = icmp sle i32 %762, %div836
  br i1 %cmp837, label %for.body.839, label %for.end.938

for.body.839:                                     ; preds = %for.cond.835
  %764 = load i32, i32* %i, align 4
  %mul840 = mul nsw i32 2, %764
  %sub841 = sub nsw i32 %mul840, 1
  store i32 %sub841, i32* %search_step, align 4
  %765 = load i32, i32* %iXMinNow, align 4
  store i32 %765, i32* %cand_x, align 4
  %766 = load i32, i32* %iYMinNow, align 4
  %767 = load i32, i32* %search_step, align 4
  %add842 = add nsw i32 %766, %767
  store i32 %add842, i32* %cand_y, align 4
  %768 = load i32, i32* %cand_x, align 4
  %769 = load i32, i32* %center_x, align 4
  %sub843 = sub nsw i32 %768, %769
  %call844 = call i32 @abs(i32 %sub843) #5
  %770 = load i32, i32* %search_range.addr, align 4
  %cmp845 = icmp sle i32 %call844, %770
  br i1 %cmp845, label %land.lhs.true.847, label %if.end.888

land.lhs.true.847:                                ; preds = %for.body.839
  %771 = load i32, i32* %cand_y, align 4
  %772 = load i32, i32* %center_y, align 4
  %sub848 = sub nsw i32 %771, %772
  %call849 = call i32 @abs(i32 %sub848) #5
  %773 = load i32, i32* %search_range.addr, align 4
  %cmp850 = icmp sle i32 %call849, %773
  br i1 %cmp850, label %if.then.852, label %if.end.888

if.then.852:                                      ; preds = %land.lhs.true.847
  %774 = load i32, i32* %cand_x, align 4
  %775 = load i32, i32* %center_x, align 4
  %sub853 = sub nsw i32 %774, %775
  %776 = load i32, i32* %search_range.addr, align 4
  %add854 = add nsw i32 %sub853, %776
  %idxprom855 = sext i32 %add854 to i64
  %777 = load i32, i32* %cand_y, align 4
  %778 = load i32, i32* %center_y, align 4
  %sub856 = sub nsw i32 %777, %778
  %779 = load i32, i32* %search_range.addr, align 4
  %add857 = add nsw i32 %sub856, %779
  %idxprom858 = sext i32 %add857 to i64
  %780 = load i32**, i32*** @McostState, align 8
  %arrayidx859 = getelementptr inbounds i32*, i32** %780, i64 %idxprom858
  %781 = load i32*, i32** %arrayidx859, align 8
  %arrayidx860 = getelementptr inbounds i32, i32* %781, i64 %idxprom855
  %782 = load i32, i32* %arrayidx860, align 4
  %tobool861 = icmp ne i32 %782, 0
  br i1 %tobool861, label %if.end.887, label %if.then.862

if.then.862:                                      ; preds = %if.then.852
  %783 = load i32, i32* %lambda_factor, align 4
  %784 = load i32, i32* %cand_x, align 4
  %785 = load i32, i32* %mvshift, align 4
  %shl863 = shl i32 %784, %785
  %786 = load i32, i32* %pred_x, align 4
  %sub864 = sub nsw i32 %shl863, %786
  %idxprom865 = sext i32 %sub864 to i64
  %787 = load i32*, i32** @mvbits, align 8
  %arrayidx866 = getelementptr inbounds i32, i32* %787, i64 %idxprom865
  %788 = load i32, i32* %arrayidx866, align 4
  %789 = load i32, i32* %cand_y, align 4
  %790 = load i32, i32* %mvshift, align 4
  %shl867 = shl i32 %789, %790
  %791 = load i32, i32* %pred_y, align 4
  %sub868 = sub nsw i32 %shl867, %791
  %idxprom869 = sext i32 %sub868 to i64
  %792 = load i32*, i32** @mvbits, align 8
  %arrayidx870 = getelementptr inbounds i32, i32* %792, i64 %idxprom869
  %793 = load i32, i32* %arrayidx870, align 4
  %add871 = add nsw i32 %788, %793
  %mul872 = mul nsw i32 %783, %add871
  %shr873 = ashr i32 %mul872, 16
  store i32 %shr873, i32* %mcost, align 4
  %794 = load i16*, i16** %ref_pic, align 8
  %795 = load i16**, i16*** %orig_pic.addr, align 8
  %796 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %797 = load i32, i32* %blocksize_y, align 4
  %798 = load i32, i32* %blocksize_x, align 4
  %799 = load i32, i32* %blocksize_x4, align 4
  %800 = load i32, i32* %mcost, align 4
  %801 = load i32, i32* %min_mcost.addr, align 4
  %802 = load i32, i32* %cand_x, align 4
  %803 = load i32, i32* %cand_y, align 4
  %call874 = call i32 @PartCalMad(i16* %794, i16** %795, i16* (i32, i16*, i32, i32, i32, i32)* %796, i32 %797, i32 %798, i32 %799, i32 %800, i32 %801, i32 %802, i32 %803)
  store i32 %call874, i32* %mcost, align 4
  %804 = load i32, i32* %mcost, align 4
  %805 = load i32, i32* %cand_x, align 4
  %806 = load i32, i32* %center_x, align 4
  %sub875 = sub nsw i32 %805, %806
  %807 = load i32, i32* %search_range.addr, align 4
  %add876 = add nsw i32 %sub875, %807
  %idxprom877 = sext i32 %add876 to i64
  %808 = load i32, i32* %cand_y, align 4
  %809 = load i32, i32* %center_y, align 4
  %sub878 = sub nsw i32 %808, %809
  %810 = load i32, i32* %search_range.addr, align 4
  %add879 = add nsw i32 %sub878, %810
  %idxprom880 = sext i32 %add879 to i64
  %811 = load i32**, i32*** @McostState, align 8
  %arrayidx881 = getelementptr inbounds i32*, i32** %811, i64 %idxprom880
  %812 = load i32*, i32** %arrayidx881, align 8
  %arrayidx882 = getelementptr inbounds i32, i32* %812, i64 %idxprom877
  store i32 %804, i32* %arrayidx882, align 4
  %813 = load i32, i32* %mcost, align 4
  %814 = load i32, i32* %min_mcost.addr, align 4
  %cmp883 = icmp slt i32 %813, %814
  br i1 %cmp883, label %if.then.885, label %if.end.886

if.then.885:                                      ; preds = %if.then.862
  %815 = load i32, i32* %cand_x, align 4
  store i32 %815, i32* %best_x, align 4
  %816 = load i32, i32* %cand_y, align 4
  store i32 %816, i32* %best_y, align 4
  %817 = load i32, i32* %mcost, align 4
  store i32 %817, i32* %min_mcost.addr, align 4
  br label %if.end.886

if.end.886:                                       ; preds = %if.then.885, %if.then.862
  br label %if.end.887

if.end.887:                                       ; preds = %if.end.886, %if.then.852
  br label %if.end.888

if.end.888:                                       ; preds = %if.end.887, %land.lhs.true.847, %for.body.839
  %818 = load i32, i32* %iXMinNow, align 4
  store i32 %818, i32* %cand_x, align 4
  %819 = load i32, i32* %iYMinNow, align 4
  %820 = load i32, i32* %search_step, align 4
  %sub889 = sub nsw i32 %819, %820
  store i32 %sub889, i32* %cand_y, align 4
  %821 = load i32, i32* %cand_x, align 4
  %822 = load i32, i32* %center_x, align 4
  %sub890 = sub nsw i32 %821, %822
  %call891 = call i32 @abs(i32 %sub890) #5
  %823 = load i32, i32* %search_range.addr, align 4
  %cmp892 = icmp sle i32 %call891, %823
  br i1 %cmp892, label %land.lhs.true.894, label %if.end.935

land.lhs.true.894:                                ; preds = %if.end.888
  %824 = load i32, i32* %cand_y, align 4
  %825 = load i32, i32* %center_y, align 4
  %sub895 = sub nsw i32 %824, %825
  %call896 = call i32 @abs(i32 %sub895) #5
  %826 = load i32, i32* %search_range.addr, align 4
  %cmp897 = icmp sle i32 %call896, %826
  br i1 %cmp897, label %if.then.899, label %if.end.935

if.then.899:                                      ; preds = %land.lhs.true.894
  %827 = load i32, i32* %cand_x, align 4
  %828 = load i32, i32* %center_x, align 4
  %sub900 = sub nsw i32 %827, %828
  %829 = load i32, i32* %search_range.addr, align 4
  %add901 = add nsw i32 %sub900, %829
  %idxprom902 = sext i32 %add901 to i64
  %830 = load i32, i32* %cand_y, align 4
  %831 = load i32, i32* %center_y, align 4
  %sub903 = sub nsw i32 %830, %831
  %832 = load i32, i32* %search_range.addr, align 4
  %add904 = add nsw i32 %sub903, %832
  %idxprom905 = sext i32 %add904 to i64
  %833 = load i32**, i32*** @McostState, align 8
  %arrayidx906 = getelementptr inbounds i32*, i32** %833, i64 %idxprom905
  %834 = load i32*, i32** %arrayidx906, align 8
  %arrayidx907 = getelementptr inbounds i32, i32* %834, i64 %idxprom902
  %835 = load i32, i32* %arrayidx907, align 4
  %tobool908 = icmp ne i32 %835, 0
  br i1 %tobool908, label %if.end.934, label %if.then.909

if.then.909:                                      ; preds = %if.then.899
  %836 = load i32, i32* %lambda_factor, align 4
  %837 = load i32, i32* %cand_x, align 4
  %838 = load i32, i32* %mvshift, align 4
  %shl910 = shl i32 %837, %838
  %839 = load i32, i32* %pred_x, align 4
  %sub911 = sub nsw i32 %shl910, %839
  %idxprom912 = sext i32 %sub911 to i64
  %840 = load i32*, i32** @mvbits, align 8
  %arrayidx913 = getelementptr inbounds i32, i32* %840, i64 %idxprom912
  %841 = load i32, i32* %arrayidx913, align 4
  %842 = load i32, i32* %cand_y, align 4
  %843 = load i32, i32* %mvshift, align 4
  %shl914 = shl i32 %842, %843
  %844 = load i32, i32* %pred_y, align 4
  %sub915 = sub nsw i32 %shl914, %844
  %idxprom916 = sext i32 %sub915 to i64
  %845 = load i32*, i32** @mvbits, align 8
  %arrayidx917 = getelementptr inbounds i32, i32* %845, i64 %idxprom916
  %846 = load i32, i32* %arrayidx917, align 4
  %add918 = add nsw i32 %841, %846
  %mul919 = mul nsw i32 %836, %add918
  %shr920 = ashr i32 %mul919, 16
  store i32 %shr920, i32* %mcost, align 4
  %847 = load i16*, i16** %ref_pic, align 8
  %848 = load i16**, i16*** %orig_pic.addr, align 8
  %849 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %850 = load i32, i32* %blocksize_y, align 4
  %851 = load i32, i32* %blocksize_x, align 4
  %852 = load i32, i32* %blocksize_x4, align 4
  %853 = load i32, i32* %mcost, align 4
  %854 = load i32, i32* %min_mcost.addr, align 4
  %855 = load i32, i32* %cand_x, align 4
  %856 = load i32, i32* %cand_y, align 4
  %call921 = call i32 @PartCalMad(i16* %847, i16** %848, i16* (i32, i16*, i32, i32, i32, i32)* %849, i32 %850, i32 %851, i32 %852, i32 %853, i32 %854, i32 %855, i32 %856)
  store i32 %call921, i32* %mcost, align 4
  %857 = load i32, i32* %mcost, align 4
  %858 = load i32, i32* %cand_x, align 4
  %859 = load i32, i32* %center_x, align 4
  %sub922 = sub nsw i32 %858, %859
  %860 = load i32, i32* %search_range.addr, align 4
  %add923 = add nsw i32 %sub922, %860
  %idxprom924 = sext i32 %add923 to i64
  %861 = load i32, i32* %cand_y, align 4
  %862 = load i32, i32* %center_y, align 4
  %sub925 = sub nsw i32 %861, %862
  %863 = load i32, i32* %search_range.addr, align 4
  %add926 = add nsw i32 %sub925, %863
  %idxprom927 = sext i32 %add926 to i64
  %864 = load i32**, i32*** @McostState, align 8
  %arrayidx928 = getelementptr inbounds i32*, i32** %864, i64 %idxprom927
  %865 = load i32*, i32** %arrayidx928, align 8
  %arrayidx929 = getelementptr inbounds i32, i32* %865, i64 %idxprom924
  store i32 %857, i32* %arrayidx929, align 4
  %866 = load i32, i32* %mcost, align 4
  %867 = load i32, i32* %min_mcost.addr, align 4
  %cmp930 = icmp slt i32 %866, %867
  br i1 %cmp930, label %if.then.932, label %if.end.933

if.then.932:                                      ; preds = %if.then.909
  %868 = load i32, i32* %cand_x, align 4
  store i32 %868, i32* %best_x, align 4
  %869 = load i32, i32* %cand_y, align 4
  store i32 %869, i32* %best_y, align 4
  %870 = load i32, i32* %mcost, align 4
  store i32 %870, i32* %min_mcost.addr, align 4
  br label %if.end.933

if.end.933:                                       ; preds = %if.then.932, %if.then.909
  br label %if.end.934

if.end.934:                                       ; preds = %if.end.933, %if.then.899
  br label %if.end.935

if.end.935:                                       ; preds = %if.end.934, %land.lhs.true.894, %if.end.888
  br label %for.inc.936

for.inc.936:                                      ; preds = %if.end.935
  %871 = load i32, i32* %i, align 4
  %inc937 = add nsw i32 %871, 1
  store i32 %inc937, i32* %i, align 4
  br label %for.cond.835

for.end.938:                                      ; preds = %for.cond.835
  %872 = load i16, i16* %ref.addr, align 2
  %conv939 = sext i16 %872 to i32
  %cmp940 = icmp sgt i32 %conv939, 0
  br i1 %cmp940, label %if.then.942, label %if.else.960

if.then.942:                                      ; preds = %for.end.938
  %873 = load i32, i32* %min_mcost.addr, align 4
  %874 = load i32, i32* @pred_SAD_ref, align 4
  %sub943 = sub nsw i32 %873, %874
  %conv944 = sitofp i32 %sub943 to float
  %875 = load i32, i32* @pred_SAD_ref, align 4
  %conv945 = sitofp i32 %875 to float
  %876 = load float, float* %betaThird, align 4
  %mul946 = fmul float %conv945, %876
  %cmp947 = fcmp olt float %conv944, %mul946
  br i1 %cmp947, label %if.then.949, label %if.else.950

if.then.949:                                      ; preds = %if.then.942
  br label %third_step

if.else.950:                                      ; preds = %if.then.942
  %877 = load i32, i32* %min_mcost.addr, align 4
  %878 = load i32, i32* @pred_SAD_ref, align 4
  %sub951 = sub nsw i32 %877, %878
  %conv952 = sitofp i32 %sub951 to float
  %879 = load i32, i32* @pred_SAD_ref, align 4
  %conv953 = sitofp i32 %879 to float
  %880 = load float, float* %betaSec, align 4
  %mul954 = fmul float %conv953, %880
  %cmp955 = fcmp olt float %conv952, %mul954
  br i1 %cmp955, label %if.then.957, label %if.end.958

if.then.957:                                      ; preds = %if.else.950
  br label %sec_step

if.end.958:                                       ; preds = %if.else.950
  br label %if.end.959

if.end.959:                                       ; preds = %if.end.958
  br label %if.end.1000

if.else.960:                                      ; preds = %for.end.938
  %881 = load i32, i32* %blocktype.addr, align 4
  %cmp961 = icmp sgt i32 %881, 1
  br i1 %cmp961, label %if.then.963, label %if.else.981

if.then.963:                                      ; preds = %if.else.960
  %882 = load i32, i32* %min_mcost.addr, align 4
  %883 = load i32, i32* @pred_SAD_uplayer, align 4
  %sub964 = sub nsw i32 %882, %883
  %conv965 = sitofp i32 %sub964 to float
  %884 = load i32, i32* @pred_SAD_uplayer, align 4
  %conv966 = sitofp i32 %884 to float
  %885 = load float, float* %betaThird, align 4
  %mul967 = fmul float %conv966, %885
  %cmp968 = fcmp olt float %conv965, %mul967
  br i1 %cmp968, label %if.then.970, label %if.else.971

if.then.970:                                      ; preds = %if.then.963
  br label %third_step

if.else.971:                                      ; preds = %if.then.963
  %886 = load i32, i32* %min_mcost.addr, align 4
  %887 = load i32, i32* @pred_SAD_uplayer, align 4
  %sub972 = sub nsw i32 %886, %887
  %conv973 = sitofp i32 %sub972 to float
  %888 = load i32, i32* @pred_SAD_uplayer, align 4
  %conv974 = sitofp i32 %888 to float
  %889 = load float, float* %betaSec, align 4
  %mul975 = fmul float %conv974, %889
  %cmp976 = fcmp olt float %conv973, %mul975
  br i1 %cmp976, label %if.then.978, label %if.end.979

if.then.978:                                      ; preds = %if.else.971
  br label %sec_step

if.end.979:                                       ; preds = %if.else.971
  br label %if.end.980

if.end.980:                                       ; preds = %if.end.979
  br label %if.end.999

if.else.981:                                      ; preds = %if.else.960
  %890 = load i32, i32* %min_mcost.addr, align 4
  %891 = load i32, i32* @pred_SAD_space, align 4
  %sub982 = sub nsw i32 %890, %891
  %conv983 = sitofp i32 %sub982 to float
  %892 = load i32, i32* @pred_SAD_space, align 4
  %conv984 = sitofp i32 %892 to float
  %893 = load float, float* %betaThird, align 4
  %mul985 = fmul float %conv984, %893
  %cmp986 = fcmp olt float %conv983, %mul985
  br i1 %cmp986, label %if.then.988, label %if.else.989

if.then.988:                                      ; preds = %if.else.981
  br label %third_step

if.else.989:                                      ; preds = %if.else.981
  %894 = load i32, i32* %min_mcost.addr, align 4
  %895 = load i32, i32* @pred_SAD_space, align 4
  %sub990 = sub nsw i32 %894, %895
  %conv991 = sitofp i32 %sub990 to float
  %896 = load i32, i32* @pred_SAD_space, align 4
  %conv992 = sitofp i32 %896 to float
  %897 = load float, float* %betaSec, align 4
  %mul993 = fmul float %conv992, %897
  %cmp994 = fcmp olt float %conv991, %mul993
  br i1 %cmp994, label %if.then.996, label %if.end.997

if.then.996:                                      ; preds = %if.else.989
  br label %sec_step

if.end.997:                                       ; preds = %if.else.989
  br label %if.end.998

if.end.998:                                       ; preds = %if.end.997
  br label %if.end.999

if.end.999:                                       ; preds = %if.end.998, %if.end.980
  br label %if.end.1000

if.end.1000:                                      ; preds = %if.end.999, %if.end.959
  %898 = load i32, i32* %best_x, align 4
  store i32 %898, i32* %iXMinNow, align 4
  %899 = load i32, i32* %best_y, align 4
  store i32 %899, i32* %iYMinNow, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond.1001

for.cond.1001:                                    ; preds = %for.inc.1057, %if.end.1000
  %900 = load i32, i32* %pos, align 4
  %cmp1002 = icmp slt i32 %900, 25
  br i1 %cmp1002, label %for.body.1004, label %for.end.1059

for.body.1004:                                    ; preds = %for.cond.1001
  %901 = load i32, i32* %iXMinNow, align 4
  %902 = load i32, i32* %pos, align 4
  %idxprom1005 = sext i32 %902 to i64
  %903 = load i32*, i32** @spiral_search_x, align 8
  %arrayidx1006 = getelementptr inbounds i32, i32* %903, i64 %idxprom1005
  %904 = load i32, i32* %arrayidx1006, align 4
  %add1007 = add nsw i32 %901, %904
  store i32 %add1007, i32* %cand_x, align 4
  %905 = load i32, i32* %iYMinNow, align 4
  %906 = load i32, i32* %pos, align 4
  %idxprom1008 = sext i32 %906 to i64
  %907 = load i32*, i32** @spiral_search_y, align 8
  %arrayidx1009 = getelementptr inbounds i32, i32* %907, i64 %idxprom1008
  %908 = load i32, i32* %arrayidx1009, align 4
  %add1010 = add nsw i32 %905, %908
  store i32 %add1010, i32* %cand_y, align 4
  %909 = load i32, i32* %cand_x, align 4
  %910 = load i32, i32* %center_x, align 4
  %sub1011 = sub nsw i32 %909, %910
  %call1012 = call i32 @abs(i32 %sub1011) #5
  %911 = load i32, i32* %search_range.addr, align 4
  %cmp1013 = icmp sle i32 %call1012, %911
  br i1 %cmp1013, label %land.lhs.true.1015, label %if.end.1056

land.lhs.true.1015:                               ; preds = %for.body.1004
  %912 = load i32, i32* %cand_y, align 4
  %913 = load i32, i32* %center_y, align 4
  %sub1016 = sub nsw i32 %912, %913
  %call1017 = call i32 @abs(i32 %sub1016) #5
  %914 = load i32, i32* %search_range.addr, align 4
  %cmp1018 = icmp sle i32 %call1017, %914
  br i1 %cmp1018, label %if.then.1020, label %if.end.1056

if.then.1020:                                     ; preds = %land.lhs.true.1015
  %915 = load i32, i32* %cand_x, align 4
  %916 = load i32, i32* %center_x, align 4
  %sub1021 = sub nsw i32 %915, %916
  %917 = load i32, i32* %search_range.addr, align 4
  %add1022 = add nsw i32 %sub1021, %917
  %idxprom1023 = sext i32 %add1022 to i64
  %918 = load i32, i32* %cand_y, align 4
  %919 = load i32, i32* %center_y, align 4
  %sub1024 = sub nsw i32 %918, %919
  %920 = load i32, i32* %search_range.addr, align 4
  %add1025 = add nsw i32 %sub1024, %920
  %idxprom1026 = sext i32 %add1025 to i64
  %921 = load i32**, i32*** @McostState, align 8
  %arrayidx1027 = getelementptr inbounds i32*, i32** %921, i64 %idxprom1026
  %922 = load i32*, i32** %arrayidx1027, align 8
  %arrayidx1028 = getelementptr inbounds i32, i32* %922, i64 %idxprom1023
  %923 = load i32, i32* %arrayidx1028, align 4
  %tobool1029 = icmp ne i32 %923, 0
  br i1 %tobool1029, label %if.end.1055, label %if.then.1030

if.then.1030:                                     ; preds = %if.then.1020
  %924 = load i32, i32* %lambda_factor, align 4
  %925 = load i32, i32* %cand_x, align 4
  %926 = load i32, i32* %mvshift, align 4
  %shl1031 = shl i32 %925, %926
  %927 = load i32, i32* %pred_x, align 4
  %sub1032 = sub nsw i32 %shl1031, %927
  %idxprom1033 = sext i32 %sub1032 to i64
  %928 = load i32*, i32** @mvbits, align 8
  %arrayidx1034 = getelementptr inbounds i32, i32* %928, i64 %idxprom1033
  %929 = load i32, i32* %arrayidx1034, align 4
  %930 = load i32, i32* %cand_y, align 4
  %931 = load i32, i32* %mvshift, align 4
  %shl1035 = shl i32 %930, %931
  %932 = load i32, i32* %pred_y, align 4
  %sub1036 = sub nsw i32 %shl1035, %932
  %idxprom1037 = sext i32 %sub1036 to i64
  %933 = load i32*, i32** @mvbits, align 8
  %arrayidx1038 = getelementptr inbounds i32, i32* %933, i64 %idxprom1037
  %934 = load i32, i32* %arrayidx1038, align 4
  %add1039 = add nsw i32 %929, %934
  %mul1040 = mul nsw i32 %924, %add1039
  %shr1041 = ashr i32 %mul1040, 16
  store i32 %shr1041, i32* %mcost, align 4
  %935 = load i16*, i16** %ref_pic, align 8
  %936 = load i16**, i16*** %orig_pic.addr, align 8
  %937 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %938 = load i32, i32* %blocksize_y, align 4
  %939 = load i32, i32* %blocksize_x, align 4
  %940 = load i32, i32* %blocksize_x4, align 4
  %941 = load i32, i32* %mcost, align 4
  %942 = load i32, i32* %min_mcost.addr, align 4
  %943 = load i32, i32* %cand_x, align 4
  %944 = load i32, i32* %cand_y, align 4
  %call1042 = call i32 @PartCalMad(i16* %935, i16** %936, i16* (i32, i16*, i32, i32, i32, i32)* %937, i32 %938, i32 %939, i32 %940, i32 %941, i32 %942, i32 %943, i32 %944)
  store i32 %call1042, i32* %mcost, align 4
  %945 = load i32, i32* %mcost, align 4
  %946 = load i32, i32* %cand_x, align 4
  %947 = load i32, i32* %center_x, align 4
  %sub1043 = sub nsw i32 %946, %947
  %948 = load i32, i32* %search_range.addr, align 4
  %add1044 = add nsw i32 %sub1043, %948
  %idxprom1045 = sext i32 %add1044 to i64
  %949 = load i32, i32* %cand_y, align 4
  %950 = load i32, i32* %center_y, align 4
  %sub1046 = sub nsw i32 %949, %950
  %951 = load i32, i32* %search_range.addr, align 4
  %add1047 = add nsw i32 %sub1046, %951
  %idxprom1048 = sext i32 %add1047 to i64
  %952 = load i32**, i32*** @McostState, align 8
  %arrayidx1049 = getelementptr inbounds i32*, i32** %952, i64 %idxprom1048
  %953 = load i32*, i32** %arrayidx1049, align 8
  %arrayidx1050 = getelementptr inbounds i32, i32* %953, i64 %idxprom1045
  store i32 %945, i32* %arrayidx1050, align 4
  %954 = load i32, i32* %mcost, align 4
  %955 = load i32, i32* %min_mcost.addr, align 4
  %cmp1051 = icmp slt i32 %954, %955
  br i1 %cmp1051, label %if.then.1053, label %if.end.1054

if.then.1053:                                     ; preds = %if.then.1030
  %956 = load i32, i32* %cand_x, align 4
  store i32 %956, i32* %best_x, align 4
  %957 = load i32, i32* %cand_y, align 4
  store i32 %957, i32* %best_y, align 4
  %958 = load i32, i32* %mcost, align 4
  store i32 %958, i32* %min_mcost.addr, align 4
  br label %if.end.1054

if.end.1054:                                      ; preds = %if.then.1053, %if.then.1030
  br label %if.end.1055

if.end.1055:                                      ; preds = %if.end.1054, %if.then.1020
  br label %if.end.1056

if.end.1056:                                      ; preds = %if.end.1055, %land.lhs.true.1015, %for.body.1004
  br label %for.inc.1057

for.inc.1057:                                     ; preds = %if.end.1056
  %959 = load i32, i32* %pos, align 4
  %inc1058 = add nsw i32 %959, 1
  store i32 %inc1058, i32* %pos, align 4
  br label %for.cond.1001

for.end.1059:                                     ; preds = %for.cond.1001
  %960 = load i16, i16* %ref.addr, align 2
  %conv1060 = sext i16 %960 to i32
  %cmp1061 = icmp sgt i32 %conv1060, 0
  br i1 %cmp1061, label %if.then.1063, label %if.else.1081

if.then.1063:                                     ; preds = %for.end.1059
  %961 = load i32, i32* %min_mcost.addr, align 4
  %962 = load i32, i32* @pred_SAD_ref, align 4
  %sub1064 = sub nsw i32 %961, %962
  %conv1065 = sitofp i32 %sub1064 to float
  %963 = load i32, i32* @pred_SAD_ref, align 4
  %conv1066 = sitofp i32 %963 to float
  %964 = load float, float* %betaThird, align 4
  %mul1067 = fmul float %conv1066, %964
  %cmp1068 = fcmp olt float %conv1065, %mul1067
  br i1 %cmp1068, label %if.then.1070, label %if.else.1071

if.then.1070:                                     ; preds = %if.then.1063
  br label %third_step

if.else.1071:                                     ; preds = %if.then.1063
  %965 = load i32, i32* %min_mcost.addr, align 4
  %966 = load i32, i32* @pred_SAD_ref, align 4
  %sub1072 = sub nsw i32 %965, %966
  %conv1073 = sitofp i32 %sub1072 to float
  %967 = load i32, i32* @pred_SAD_ref, align 4
  %conv1074 = sitofp i32 %967 to float
  %968 = load float, float* %betaSec, align 4
  %mul1075 = fmul float %conv1074, %968
  %cmp1076 = fcmp olt float %conv1073, %mul1075
  br i1 %cmp1076, label %if.then.1078, label %if.end.1079

if.then.1078:                                     ; preds = %if.else.1071
  br label %sec_step

if.end.1079:                                      ; preds = %if.else.1071
  br label %if.end.1080

if.end.1080:                                      ; preds = %if.end.1079
  br label %if.end.1121

if.else.1081:                                     ; preds = %for.end.1059
  %969 = load i32, i32* %blocktype.addr, align 4
  %cmp1082 = icmp sgt i32 %969, 1
  br i1 %cmp1082, label %if.then.1084, label %if.else.1102

if.then.1084:                                     ; preds = %if.else.1081
  %970 = load i32, i32* %min_mcost.addr, align 4
  %971 = load i32, i32* @pred_SAD_uplayer, align 4
  %sub1085 = sub nsw i32 %970, %971
  %conv1086 = sitofp i32 %sub1085 to float
  %972 = load i32, i32* @pred_SAD_uplayer, align 4
  %conv1087 = sitofp i32 %972 to float
  %973 = load float, float* %betaThird, align 4
  %mul1088 = fmul float %conv1087, %973
  %cmp1089 = fcmp olt float %conv1086, %mul1088
  br i1 %cmp1089, label %if.then.1091, label %if.else.1092

if.then.1091:                                     ; preds = %if.then.1084
  br label %third_step

if.else.1092:                                     ; preds = %if.then.1084
  %974 = load i32, i32* %min_mcost.addr, align 4
  %975 = load i32, i32* @pred_SAD_uplayer, align 4
  %sub1093 = sub nsw i32 %974, %975
  %conv1094 = sitofp i32 %sub1093 to float
  %976 = load i32, i32* @pred_SAD_uplayer, align 4
  %conv1095 = sitofp i32 %976 to float
  %977 = load float, float* %betaSec, align 4
  %mul1096 = fmul float %conv1095, %977
  %cmp1097 = fcmp olt float %conv1094, %mul1096
  br i1 %cmp1097, label %if.then.1099, label %if.end.1100

if.then.1099:                                     ; preds = %if.else.1092
  br label %sec_step

if.end.1100:                                      ; preds = %if.else.1092
  br label %if.end.1101

if.end.1101:                                      ; preds = %if.end.1100
  br label %if.end.1120

if.else.1102:                                     ; preds = %if.else.1081
  %978 = load i32, i32* %min_mcost.addr, align 4
  %979 = load i32, i32* @pred_SAD_space, align 4
  %sub1103 = sub nsw i32 %978, %979
  %conv1104 = sitofp i32 %sub1103 to float
  %980 = load i32, i32* @pred_SAD_space, align 4
  %conv1105 = sitofp i32 %980 to float
  %981 = load float, float* %betaThird, align 4
  %mul1106 = fmul float %conv1105, %981
  %cmp1107 = fcmp olt float %conv1104, %mul1106
  br i1 %cmp1107, label %if.then.1109, label %if.else.1110

if.then.1109:                                     ; preds = %if.else.1102
  br label %third_step

if.else.1110:                                     ; preds = %if.else.1102
  %982 = load i32, i32* %min_mcost.addr, align 4
  %983 = load i32, i32* @pred_SAD_space, align 4
  %sub1111 = sub nsw i32 %982, %983
  %conv1112 = sitofp i32 %sub1111 to float
  %984 = load i32, i32* @pred_SAD_space, align 4
  %conv1113 = sitofp i32 %984 to float
  %985 = load float, float* %betaSec, align 4
  %mul1114 = fmul float %conv1113, %985
  %cmp1115 = fcmp olt float %conv1112, %mul1114
  br i1 %cmp1115, label %if.then.1117, label %if.end.1118

if.then.1117:                                     ; preds = %if.else.1110
  br label %sec_step

if.end.1118:                                      ; preds = %if.else.1110
  br label %if.end.1119

if.end.1119:                                      ; preds = %if.end.1118
  br label %if.end.1120

if.end.1120:                                      ; preds = %if.end.1119, %if.end.1101
  br label %if.end.1121

if.end.1121:                                      ; preds = %if.end.1120, %if.end.1080
  store i32 1, i32* %i, align 4
  br label %for.cond.1122

for.cond.1122:                                    ; preds = %for.inc.1253, %if.end.1121
  %986 = load i32, i32* %i, align 4
  %987 = load i32, i32* %search_range.addr, align 4
  %div1123 = sdiv i32 %987, 4
  %cmp1124 = icmp sle i32 %986, %div1123
  br i1 %cmp1124, label %for.body.1126, label %for.end.1255

for.body.1126:                                    ; preds = %for.cond.1122
  store i32 0, i32* %iAbort, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1127

for.cond.1127:                                    ; preds = %for.inc.1185, %for.body.1126
  %988 = load i32, i32* %m, align 4
  %cmp1128 = icmp slt i32 %988, 16
  br i1 %cmp1128, label %for.body.1130, label %for.end.1187

for.body.1130:                                    ; preds = %for.cond.1127
  %989 = load i32, i32* %iXMinNow, align 4
  %990 = load i32, i32* %m, align 4
  %idxprom1131 = sext i32 %990 to i64
  %arrayidx1132 = getelementptr inbounds [16 x i32], [16 x i32]* @FastIntegerPelBlockMotionSearch.Big_Hexagon_x, i32 0, i64 %idxprom1131
  %991 = load i32, i32* %arrayidx1132, align 4
  %992 = load i32, i32* %i, align 4
  %mul1133 = mul nsw i32 %991, %992
  %add1134 = add nsw i32 %989, %mul1133
  store i32 %add1134, i32* %cand_x, align 4
  %993 = load i32, i32* %iYMinNow, align 4
  %994 = load i32, i32* %m, align 4
  %idxprom1135 = sext i32 %994 to i64
  %arrayidx1136 = getelementptr inbounds [16 x i32], [16 x i32]* @FastIntegerPelBlockMotionSearch.Big_Hexagon_y, i32 0, i64 %idxprom1135
  %995 = load i32, i32* %arrayidx1136, align 4
  %996 = load i32, i32* %i, align 4
  %mul1137 = mul nsw i32 %995, %996
  %add1138 = add nsw i32 %993, %mul1137
  store i32 %add1138, i32* %cand_y, align 4
  %997 = load i32, i32* %cand_x, align 4
  %998 = load i32, i32* %center_x, align 4
  %sub1139 = sub nsw i32 %997, %998
  %call1140 = call i32 @abs(i32 %sub1139) #5
  %999 = load i32, i32* %search_range.addr, align 4
  %cmp1141 = icmp sle i32 %call1140, %999
  br i1 %cmp1141, label %land.lhs.true.1143, label %if.end.1184

land.lhs.true.1143:                               ; preds = %for.body.1130
  %1000 = load i32, i32* %cand_y, align 4
  %1001 = load i32, i32* %center_y, align 4
  %sub1144 = sub nsw i32 %1000, %1001
  %call1145 = call i32 @abs(i32 %sub1144) #5
  %1002 = load i32, i32* %search_range.addr, align 4
  %cmp1146 = icmp sle i32 %call1145, %1002
  br i1 %cmp1146, label %if.then.1148, label %if.end.1184

if.then.1148:                                     ; preds = %land.lhs.true.1143
  %1003 = load i32, i32* %cand_x, align 4
  %1004 = load i32, i32* %center_x, align 4
  %sub1149 = sub nsw i32 %1003, %1004
  %1005 = load i32, i32* %search_range.addr, align 4
  %add1150 = add nsw i32 %sub1149, %1005
  %idxprom1151 = sext i32 %add1150 to i64
  %1006 = load i32, i32* %cand_y, align 4
  %1007 = load i32, i32* %center_y, align 4
  %sub1152 = sub nsw i32 %1006, %1007
  %1008 = load i32, i32* %search_range.addr, align 4
  %add1153 = add nsw i32 %sub1152, %1008
  %idxprom1154 = sext i32 %add1153 to i64
  %1009 = load i32**, i32*** @McostState, align 8
  %arrayidx1155 = getelementptr inbounds i32*, i32** %1009, i64 %idxprom1154
  %1010 = load i32*, i32** %arrayidx1155, align 8
  %arrayidx1156 = getelementptr inbounds i32, i32* %1010, i64 %idxprom1151
  %1011 = load i32, i32* %arrayidx1156, align 4
  %tobool1157 = icmp ne i32 %1011, 0
  br i1 %tobool1157, label %if.end.1183, label %if.then.1158

if.then.1158:                                     ; preds = %if.then.1148
  %1012 = load i32, i32* %lambda_factor, align 4
  %1013 = load i32, i32* %cand_x, align 4
  %1014 = load i32, i32* %mvshift, align 4
  %shl1159 = shl i32 %1013, %1014
  %1015 = load i32, i32* %pred_x, align 4
  %sub1160 = sub nsw i32 %shl1159, %1015
  %idxprom1161 = sext i32 %sub1160 to i64
  %1016 = load i32*, i32** @mvbits, align 8
  %arrayidx1162 = getelementptr inbounds i32, i32* %1016, i64 %idxprom1161
  %1017 = load i32, i32* %arrayidx1162, align 4
  %1018 = load i32, i32* %cand_y, align 4
  %1019 = load i32, i32* %mvshift, align 4
  %shl1163 = shl i32 %1018, %1019
  %1020 = load i32, i32* %pred_y, align 4
  %sub1164 = sub nsw i32 %shl1163, %1020
  %idxprom1165 = sext i32 %sub1164 to i64
  %1021 = load i32*, i32** @mvbits, align 8
  %arrayidx1166 = getelementptr inbounds i32, i32* %1021, i64 %idxprom1165
  %1022 = load i32, i32* %arrayidx1166, align 4
  %add1167 = add nsw i32 %1017, %1022
  %mul1168 = mul nsw i32 %1012, %add1167
  %shr1169 = ashr i32 %mul1168, 16
  store i32 %shr1169, i32* %mcost, align 4
  %1023 = load i16*, i16** %ref_pic, align 8
  %1024 = load i16**, i16*** %orig_pic.addr, align 8
  %1025 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %1026 = load i32, i32* %blocksize_y, align 4
  %1027 = load i32, i32* %blocksize_x, align 4
  %1028 = load i32, i32* %blocksize_x4, align 4
  %1029 = load i32, i32* %mcost, align 4
  %1030 = load i32, i32* %min_mcost.addr, align 4
  %1031 = load i32, i32* %cand_x, align 4
  %1032 = load i32, i32* %cand_y, align 4
  %call1170 = call i32 @PartCalMad(i16* %1023, i16** %1024, i16* (i32, i16*, i32, i32, i32, i32)* %1025, i32 %1026, i32 %1027, i32 %1028, i32 %1029, i32 %1030, i32 %1031, i32 %1032)
  store i32 %call1170, i32* %mcost, align 4
  %1033 = load i32, i32* %mcost, align 4
  %1034 = load i32, i32* %cand_x, align 4
  %1035 = load i32, i32* %center_x, align 4
  %sub1171 = sub nsw i32 %1034, %1035
  %1036 = load i32, i32* %search_range.addr, align 4
  %add1172 = add nsw i32 %sub1171, %1036
  %idxprom1173 = sext i32 %add1172 to i64
  %1037 = load i32, i32* %cand_y, align 4
  %1038 = load i32, i32* %center_y, align 4
  %sub1174 = sub nsw i32 %1037, %1038
  %1039 = load i32, i32* %search_range.addr, align 4
  %add1175 = add nsw i32 %sub1174, %1039
  %idxprom1176 = sext i32 %add1175 to i64
  %1040 = load i32**, i32*** @McostState, align 8
  %arrayidx1177 = getelementptr inbounds i32*, i32** %1040, i64 %idxprom1176
  %1041 = load i32*, i32** %arrayidx1177, align 8
  %arrayidx1178 = getelementptr inbounds i32, i32* %1041, i64 %idxprom1173
  store i32 %1033, i32* %arrayidx1178, align 4
  %1042 = load i32, i32* %mcost, align 4
  %1043 = load i32, i32* %min_mcost.addr, align 4
  %cmp1179 = icmp slt i32 %1042, %1043
  br i1 %cmp1179, label %if.then.1181, label %if.end.1182

if.then.1181:                                     ; preds = %if.then.1158
  %1044 = load i32, i32* %cand_x, align 4
  store i32 %1044, i32* %best_x, align 4
  %1045 = load i32, i32* %cand_y, align 4
  store i32 %1045, i32* %best_y, align 4
  %1046 = load i32, i32* %mcost, align 4
  store i32 %1046, i32* %min_mcost.addr, align 4
  store i32 1, i32* %iAbort, align 4
  br label %if.end.1182

if.end.1182:                                      ; preds = %if.then.1181, %if.then.1158
  br label %if.end.1183

if.end.1183:                                      ; preds = %if.end.1182, %if.then.1148
  br label %if.end.1184

if.end.1184:                                      ; preds = %if.end.1183, %land.lhs.true.1143, %for.body.1130
  br label %for.inc.1185

for.inc.1185:                                     ; preds = %if.end.1184
  %1047 = load i32, i32* %m, align 4
  %inc1186 = add nsw i32 %1047, 1
  store i32 %inc1186, i32* %m, align 4
  br label %for.cond.1127

for.end.1187:                                     ; preds = %for.cond.1127
  %1048 = load i32, i32* %iAbort, align 4
  %tobool1188 = icmp ne i32 %1048, 0
  br i1 %tobool1188, label %if.then.1189, label %if.end.1252

if.then.1189:                                     ; preds = %for.end.1187
  %1049 = load i16, i16* %ref.addr, align 2
  %conv1190 = sext i16 %1049 to i32
  %cmp1191 = icmp sgt i32 %conv1190, 0
  br i1 %cmp1191, label %if.then.1193, label %if.else.1211

if.then.1193:                                     ; preds = %if.then.1189
  %1050 = load i32, i32* %min_mcost.addr, align 4
  %1051 = load i32, i32* @pred_SAD_ref, align 4
  %sub1194 = sub nsw i32 %1050, %1051
  %conv1195 = sitofp i32 %sub1194 to float
  %1052 = load i32, i32* @pred_SAD_ref, align 4
  %conv1196 = sitofp i32 %1052 to float
  %1053 = load float, float* %betaThird, align 4
  %mul1197 = fmul float %conv1196, %1053
  %cmp1198 = fcmp olt float %conv1195, %mul1197
  br i1 %cmp1198, label %if.then.1200, label %if.else.1201

if.then.1200:                                     ; preds = %if.then.1193
  br label %third_step

if.else.1201:                                     ; preds = %if.then.1193
  %1054 = load i32, i32* %min_mcost.addr, align 4
  %1055 = load i32, i32* @pred_SAD_ref, align 4
  %sub1202 = sub nsw i32 %1054, %1055
  %conv1203 = sitofp i32 %sub1202 to float
  %1056 = load i32, i32* @pred_SAD_ref, align 4
  %conv1204 = sitofp i32 %1056 to float
  %1057 = load float, float* %betaSec, align 4
  %mul1205 = fmul float %conv1204, %1057
  %cmp1206 = fcmp olt float %conv1203, %mul1205
  br i1 %cmp1206, label %if.then.1208, label %if.end.1209

if.then.1208:                                     ; preds = %if.else.1201
  br label %sec_step

if.end.1209:                                      ; preds = %if.else.1201
  br label %if.end.1210

if.end.1210:                                      ; preds = %if.end.1209
  br label %if.end.1251

if.else.1211:                                     ; preds = %if.then.1189
  %1058 = load i32, i32* %blocktype.addr, align 4
  %cmp1212 = icmp sgt i32 %1058, 1
  br i1 %cmp1212, label %if.then.1214, label %if.else.1232

if.then.1214:                                     ; preds = %if.else.1211
  %1059 = load i32, i32* %min_mcost.addr, align 4
  %1060 = load i32, i32* @pred_SAD_uplayer, align 4
  %sub1215 = sub nsw i32 %1059, %1060
  %conv1216 = sitofp i32 %sub1215 to float
  %1061 = load i32, i32* @pred_SAD_uplayer, align 4
  %conv1217 = sitofp i32 %1061 to float
  %1062 = load float, float* %betaThird, align 4
  %mul1218 = fmul float %conv1217, %1062
  %cmp1219 = fcmp olt float %conv1216, %mul1218
  br i1 %cmp1219, label %if.then.1221, label %if.else.1222

if.then.1221:                                     ; preds = %if.then.1214
  br label %third_step

if.else.1222:                                     ; preds = %if.then.1214
  %1063 = load i32, i32* %min_mcost.addr, align 4
  %1064 = load i32, i32* @pred_SAD_uplayer, align 4
  %sub1223 = sub nsw i32 %1063, %1064
  %conv1224 = sitofp i32 %sub1223 to float
  %1065 = load i32, i32* @pred_SAD_uplayer, align 4
  %conv1225 = sitofp i32 %1065 to float
  %1066 = load float, float* %betaSec, align 4
  %mul1226 = fmul float %conv1225, %1066
  %cmp1227 = fcmp olt float %conv1224, %mul1226
  br i1 %cmp1227, label %if.then.1229, label %if.end.1230

if.then.1229:                                     ; preds = %if.else.1222
  br label %sec_step

if.end.1230:                                      ; preds = %if.else.1222
  br label %if.end.1231

if.end.1231:                                      ; preds = %if.end.1230
  br label %if.end.1250

if.else.1232:                                     ; preds = %if.else.1211
  %1067 = load i32, i32* %min_mcost.addr, align 4
  %1068 = load i32, i32* @pred_SAD_space, align 4
  %sub1233 = sub nsw i32 %1067, %1068
  %conv1234 = sitofp i32 %sub1233 to float
  %1069 = load i32, i32* @pred_SAD_space, align 4
  %conv1235 = sitofp i32 %1069 to float
  %1070 = load float, float* %betaThird, align 4
  %mul1236 = fmul float %conv1235, %1070
  %cmp1237 = fcmp olt float %conv1234, %mul1236
  br i1 %cmp1237, label %if.then.1239, label %if.else.1240

if.then.1239:                                     ; preds = %if.else.1232
  br label %third_step

if.else.1240:                                     ; preds = %if.else.1232
  %1071 = load i32, i32* %min_mcost.addr, align 4
  %1072 = load i32, i32* @pred_SAD_space, align 4
  %sub1241 = sub nsw i32 %1071, %1072
  %conv1242 = sitofp i32 %sub1241 to float
  %1073 = load i32, i32* @pred_SAD_space, align 4
  %conv1243 = sitofp i32 %1073 to float
  %1074 = load float, float* %betaSec, align 4
  %mul1244 = fmul float %conv1243, %1074
  %cmp1245 = fcmp olt float %conv1242, %mul1244
  br i1 %cmp1245, label %if.then.1247, label %if.end.1248

if.then.1247:                                     ; preds = %if.else.1240
  br label %sec_step

if.end.1248:                                      ; preds = %if.else.1240
  br label %if.end.1249

if.end.1249:                                      ; preds = %if.end.1248
  br label %if.end.1250

if.end.1250:                                      ; preds = %if.end.1249, %if.end.1231
  br label %if.end.1251

if.end.1251:                                      ; preds = %if.end.1250, %if.end.1210
  br label %if.end.1252

if.end.1252:                                      ; preds = %if.end.1251, %for.end.1187
  br label %for.inc.1253

for.inc.1253:                                     ; preds = %if.end.1252
  %1075 = load i32, i32* %i, align 4
  %inc1254 = add nsw i32 %1075, 1
  store i32 %inc1254, i32* %i, align 4
  br label %for.cond.1122

for.end.1255:                                     ; preds = %for.cond.1122
  br label %sec_step

sec_step:                                         ; preds = %for.end.1255, %if.then.1247, %if.then.1229, %if.then.1208, %if.then.1117, %if.then.1099, %if.then.1078, %if.then.996, %if.then.978, %if.then.957, %if.then.729, %if.then.722, %if.then.704, %if.then.683, %if.then.389
  %1076 = load i32, i32* %best_x, align 4
  store i32 %1076, i32* %iXMinNow, align 4
  %1077 = load i32, i32* %best_y, align 4
  store i32 %1077, i32* %iYMinNow, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1256

for.cond.1256:                                    ; preds = %for.inc.1322, %sec_step
  %1078 = load i32, i32* %i, align 4
  %1079 = load i32, i32* %search_range.addr, align 4
  %cmp1257 = icmp slt i32 %1078, %1079
  br i1 %cmp1257, label %for.body.1259, label %for.end.1324

for.body.1259:                                    ; preds = %for.cond.1256
  store i32 1, i32* %iAbort, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1260

for.cond.1260:                                    ; preds = %for.inc.1316, %for.body.1259
  %1080 = load i32, i32* %m, align 4
  %cmp1261 = icmp slt i32 %1080, 6
  br i1 %cmp1261, label %for.body.1263, label %for.end.1318

for.body.1263:                                    ; preds = %for.cond.1260
  %1081 = load i32, i32* %iXMinNow, align 4
  %1082 = load i32, i32* %m, align 4
  %idxprom1264 = sext i32 %1082 to i64
  %arrayidx1265 = getelementptr inbounds [6 x i32], [6 x i32]* @FastIntegerPelBlockMotionSearch.Hexagon_x, i32 0, i64 %idxprom1264
  %1083 = load i32, i32* %arrayidx1265, align 4
  %add1266 = add nsw i32 %1081, %1083
  store i32 %add1266, i32* %cand_x, align 4
  %1084 = load i32, i32* %iYMinNow, align 4
  %1085 = load i32, i32* %m, align 4
  %idxprom1267 = sext i32 %1085 to i64
  %arrayidx1268 = getelementptr inbounds [6 x i32], [6 x i32]* @FastIntegerPelBlockMotionSearch.Hexagon_y, i32 0, i64 %idxprom1267
  %1086 = load i32, i32* %arrayidx1268, align 4
  %add1269 = add nsw i32 %1084, %1086
  store i32 %add1269, i32* %cand_y, align 4
  %1087 = load i32, i32* %cand_x, align 4
  %1088 = load i32, i32* %center_x, align 4
  %sub1270 = sub nsw i32 %1087, %1088
  %call1271 = call i32 @abs(i32 %sub1270) #5
  %1089 = load i32, i32* %search_range.addr, align 4
  %cmp1272 = icmp sle i32 %call1271, %1089
  br i1 %cmp1272, label %land.lhs.true.1274, label %if.end.1315

land.lhs.true.1274:                               ; preds = %for.body.1263
  %1090 = load i32, i32* %cand_y, align 4
  %1091 = load i32, i32* %center_y, align 4
  %sub1275 = sub nsw i32 %1090, %1091
  %call1276 = call i32 @abs(i32 %sub1275) #5
  %1092 = load i32, i32* %search_range.addr, align 4
  %cmp1277 = icmp sle i32 %call1276, %1092
  br i1 %cmp1277, label %if.then.1279, label %if.end.1315

if.then.1279:                                     ; preds = %land.lhs.true.1274
  %1093 = load i32, i32* %cand_x, align 4
  %1094 = load i32, i32* %center_x, align 4
  %sub1280 = sub nsw i32 %1093, %1094
  %1095 = load i32, i32* %search_range.addr, align 4
  %add1281 = add nsw i32 %sub1280, %1095
  %idxprom1282 = sext i32 %add1281 to i64
  %1096 = load i32, i32* %cand_y, align 4
  %1097 = load i32, i32* %center_y, align 4
  %sub1283 = sub nsw i32 %1096, %1097
  %1098 = load i32, i32* %search_range.addr, align 4
  %add1284 = add nsw i32 %sub1283, %1098
  %idxprom1285 = sext i32 %add1284 to i64
  %1099 = load i32**, i32*** @McostState, align 8
  %arrayidx1286 = getelementptr inbounds i32*, i32** %1099, i64 %idxprom1285
  %1100 = load i32*, i32** %arrayidx1286, align 8
  %arrayidx1287 = getelementptr inbounds i32, i32* %1100, i64 %idxprom1282
  %1101 = load i32, i32* %arrayidx1287, align 4
  %tobool1288 = icmp ne i32 %1101, 0
  br i1 %tobool1288, label %if.end.1314, label %if.then.1289

if.then.1289:                                     ; preds = %if.then.1279
  %1102 = load i32, i32* %lambda_factor, align 4
  %1103 = load i32, i32* %cand_x, align 4
  %1104 = load i32, i32* %mvshift, align 4
  %shl1290 = shl i32 %1103, %1104
  %1105 = load i32, i32* %pred_x, align 4
  %sub1291 = sub nsw i32 %shl1290, %1105
  %idxprom1292 = sext i32 %sub1291 to i64
  %1106 = load i32*, i32** @mvbits, align 8
  %arrayidx1293 = getelementptr inbounds i32, i32* %1106, i64 %idxprom1292
  %1107 = load i32, i32* %arrayidx1293, align 4
  %1108 = load i32, i32* %cand_y, align 4
  %1109 = load i32, i32* %mvshift, align 4
  %shl1294 = shl i32 %1108, %1109
  %1110 = load i32, i32* %pred_y, align 4
  %sub1295 = sub nsw i32 %shl1294, %1110
  %idxprom1296 = sext i32 %sub1295 to i64
  %1111 = load i32*, i32** @mvbits, align 8
  %arrayidx1297 = getelementptr inbounds i32, i32* %1111, i64 %idxprom1296
  %1112 = load i32, i32* %arrayidx1297, align 4
  %add1298 = add nsw i32 %1107, %1112
  %mul1299 = mul nsw i32 %1102, %add1298
  %shr1300 = ashr i32 %mul1299, 16
  store i32 %shr1300, i32* %mcost, align 4
  %1113 = load i16*, i16** %ref_pic, align 8
  %1114 = load i16**, i16*** %orig_pic.addr, align 8
  %1115 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %1116 = load i32, i32* %blocksize_y, align 4
  %1117 = load i32, i32* %blocksize_x, align 4
  %1118 = load i32, i32* %blocksize_x4, align 4
  %1119 = load i32, i32* %mcost, align 4
  %1120 = load i32, i32* %min_mcost.addr, align 4
  %1121 = load i32, i32* %cand_x, align 4
  %1122 = load i32, i32* %cand_y, align 4
  %call1301 = call i32 @PartCalMad(i16* %1113, i16** %1114, i16* (i32, i16*, i32, i32, i32, i32)* %1115, i32 %1116, i32 %1117, i32 %1118, i32 %1119, i32 %1120, i32 %1121, i32 %1122)
  store i32 %call1301, i32* %mcost, align 4
  %1123 = load i32, i32* %mcost, align 4
  %1124 = load i32, i32* %cand_x, align 4
  %1125 = load i32, i32* %center_x, align 4
  %sub1302 = sub nsw i32 %1124, %1125
  %1126 = load i32, i32* %search_range.addr, align 4
  %add1303 = add nsw i32 %sub1302, %1126
  %idxprom1304 = sext i32 %add1303 to i64
  %1127 = load i32, i32* %cand_y, align 4
  %1128 = load i32, i32* %center_y, align 4
  %sub1305 = sub nsw i32 %1127, %1128
  %1129 = load i32, i32* %search_range.addr, align 4
  %add1306 = add nsw i32 %sub1305, %1129
  %idxprom1307 = sext i32 %add1306 to i64
  %1130 = load i32**, i32*** @McostState, align 8
  %arrayidx1308 = getelementptr inbounds i32*, i32** %1130, i64 %idxprom1307
  %1131 = load i32*, i32** %arrayidx1308, align 8
  %arrayidx1309 = getelementptr inbounds i32, i32* %1131, i64 %idxprom1304
  store i32 %1123, i32* %arrayidx1309, align 4
  %1132 = load i32, i32* %mcost, align 4
  %1133 = load i32, i32* %min_mcost.addr, align 4
  %cmp1310 = icmp slt i32 %1132, %1133
  br i1 %cmp1310, label %if.then.1312, label %if.end.1313

if.then.1312:                                     ; preds = %if.then.1289
  %1134 = load i32, i32* %cand_x, align 4
  store i32 %1134, i32* %best_x, align 4
  %1135 = load i32, i32* %cand_y, align 4
  store i32 %1135, i32* %best_y, align 4
  %1136 = load i32, i32* %mcost, align 4
  store i32 %1136, i32* %min_mcost.addr, align 4
  store i32 0, i32* %iAbort, align 4
  br label %if.end.1313

if.end.1313:                                      ; preds = %if.then.1312, %if.then.1289
  br label %if.end.1314

if.end.1314:                                      ; preds = %if.end.1313, %if.then.1279
  br label %if.end.1315

if.end.1315:                                      ; preds = %if.end.1314, %land.lhs.true.1274, %for.body.1263
  br label %for.inc.1316

for.inc.1316:                                     ; preds = %if.end.1315
  %1137 = load i32, i32* %m, align 4
  %inc1317 = add nsw i32 %1137, 1
  store i32 %inc1317, i32* %m, align 4
  br label %for.cond.1260

for.end.1318:                                     ; preds = %for.cond.1260
  %1138 = load i32, i32* %iAbort, align 4
  %tobool1319 = icmp ne i32 %1138, 0
  br i1 %tobool1319, label %if.then.1320, label %if.end.1321

if.then.1320:                                     ; preds = %for.end.1318
  br label %for.end.1324

if.end.1321:                                      ; preds = %for.end.1318
  %1139 = load i32, i32* %best_x, align 4
  store i32 %1139, i32* %iXMinNow, align 4
  %1140 = load i32, i32* %best_y, align 4
  store i32 %1140, i32* %iYMinNow, align 4
  br label %for.inc.1322

for.inc.1322:                                     ; preds = %if.end.1321
  %1141 = load i32, i32* %i, align 4
  %inc1323 = add nsw i32 %1141, 1
  store i32 %inc1323, i32* %i, align 4
  br label %for.cond.1256

for.end.1324:                                     ; preds = %if.then.1320, %for.cond.1256
  br label %third_step

third_step:                                       ; preds = %for.end.1324, %if.then.1239, %if.then.1221, %if.then.1200, %if.then.1109, %if.then.1091, %if.then.1070, %if.then.988, %if.then.970, %if.then.949, %if.then.714, %if.then.696, %if.then.675, %if.then.381
  %1142 = load i32, i32* %best_x, align 4
  store i32 %1142, i32* %iXMinNow, align 4
  %1143 = load i32, i32* %best_y, align 4
  store i32 %1143, i32* %iYMinNow, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1325

for.cond.1325:                                    ; preds = %for.inc.1391, %third_step
  %1144 = load i32, i32* %i, align 4
  %1145 = load i32, i32* %search_range.addr, align 4
  %cmp1326 = icmp slt i32 %1144, %1145
  br i1 %cmp1326, label %for.body.1328, label %for.end.1393

for.body.1328:                                    ; preds = %for.cond.1325
  store i32 65536, i32* %iSADLayer, align 4
  store i32 1, i32* %iAbort, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1329

for.cond.1329:                                    ; preds = %for.inc.1385, %for.body.1328
  %1146 = load i32, i32* %m, align 4
  %cmp1330 = icmp slt i32 %1146, 4
  br i1 %cmp1330, label %for.body.1332, label %for.end.1387

for.body.1332:                                    ; preds = %for.cond.1329
  %1147 = load i32, i32* %iXMinNow, align 4
  %1148 = load i32, i32* %m, align 4
  %idxprom1333 = sext i32 %1148 to i64
  %arrayidx1334 = getelementptr inbounds [4 x i32], [4 x i32]* @FastIntegerPelBlockMotionSearch.Diamond_x, i32 0, i64 %idxprom1333
  %1149 = load i32, i32* %arrayidx1334, align 4
  %add1335 = add nsw i32 %1147, %1149
  store i32 %add1335, i32* %cand_x, align 4
  %1150 = load i32, i32* %iYMinNow, align 4
  %1151 = load i32, i32* %m, align 4
  %idxprom1336 = sext i32 %1151 to i64
  %arrayidx1337 = getelementptr inbounds [4 x i32], [4 x i32]* @FastIntegerPelBlockMotionSearch.Diamond_y, i32 0, i64 %idxprom1336
  %1152 = load i32, i32* %arrayidx1337, align 4
  %add1338 = add nsw i32 %1150, %1152
  store i32 %add1338, i32* %cand_y, align 4
  %1153 = load i32, i32* %cand_x, align 4
  %1154 = load i32, i32* %center_x, align 4
  %sub1339 = sub nsw i32 %1153, %1154
  %call1340 = call i32 @abs(i32 %sub1339) #5
  %1155 = load i32, i32* %search_range.addr, align 4
  %cmp1341 = icmp sle i32 %call1340, %1155
  br i1 %cmp1341, label %land.lhs.true.1343, label %if.end.1384

land.lhs.true.1343:                               ; preds = %for.body.1332
  %1156 = load i32, i32* %cand_y, align 4
  %1157 = load i32, i32* %center_y, align 4
  %sub1344 = sub nsw i32 %1156, %1157
  %call1345 = call i32 @abs(i32 %sub1344) #5
  %1158 = load i32, i32* %search_range.addr, align 4
  %cmp1346 = icmp sle i32 %call1345, %1158
  br i1 %cmp1346, label %if.then.1348, label %if.end.1384

if.then.1348:                                     ; preds = %land.lhs.true.1343
  %1159 = load i32, i32* %cand_x, align 4
  %1160 = load i32, i32* %center_x, align 4
  %sub1349 = sub nsw i32 %1159, %1160
  %1161 = load i32, i32* %search_range.addr, align 4
  %add1350 = add nsw i32 %sub1349, %1161
  %idxprom1351 = sext i32 %add1350 to i64
  %1162 = load i32, i32* %cand_y, align 4
  %1163 = load i32, i32* %center_y, align 4
  %sub1352 = sub nsw i32 %1162, %1163
  %1164 = load i32, i32* %search_range.addr, align 4
  %add1353 = add nsw i32 %sub1352, %1164
  %idxprom1354 = sext i32 %add1353 to i64
  %1165 = load i32**, i32*** @McostState, align 8
  %arrayidx1355 = getelementptr inbounds i32*, i32** %1165, i64 %idxprom1354
  %1166 = load i32*, i32** %arrayidx1355, align 8
  %arrayidx1356 = getelementptr inbounds i32, i32* %1166, i64 %idxprom1351
  %1167 = load i32, i32* %arrayidx1356, align 4
  %tobool1357 = icmp ne i32 %1167, 0
  br i1 %tobool1357, label %if.end.1383, label %if.then.1358

if.then.1358:                                     ; preds = %if.then.1348
  %1168 = load i32, i32* %lambda_factor, align 4
  %1169 = load i32, i32* %cand_x, align 4
  %1170 = load i32, i32* %mvshift, align 4
  %shl1359 = shl i32 %1169, %1170
  %1171 = load i32, i32* %pred_x, align 4
  %sub1360 = sub nsw i32 %shl1359, %1171
  %idxprom1361 = sext i32 %sub1360 to i64
  %1172 = load i32*, i32** @mvbits, align 8
  %arrayidx1362 = getelementptr inbounds i32, i32* %1172, i64 %idxprom1361
  %1173 = load i32, i32* %arrayidx1362, align 4
  %1174 = load i32, i32* %cand_y, align 4
  %1175 = load i32, i32* %mvshift, align 4
  %shl1363 = shl i32 %1174, %1175
  %1176 = load i32, i32* %pred_y, align 4
  %sub1364 = sub nsw i32 %shl1363, %1176
  %idxprom1365 = sext i32 %sub1364 to i64
  %1177 = load i32*, i32** @mvbits, align 8
  %arrayidx1366 = getelementptr inbounds i32, i32* %1177, i64 %idxprom1365
  %1178 = load i32, i32* %arrayidx1366, align 4
  %add1367 = add nsw i32 %1173, %1178
  %mul1368 = mul nsw i32 %1168, %add1367
  %shr1369 = ashr i32 %mul1368, 16
  store i32 %shr1369, i32* %mcost, align 4
  %1179 = load i16*, i16** %ref_pic, align 8
  %1180 = load i16**, i16*** %orig_pic.addr, align 8
  %1181 = load i16* (i32, i16*, i32, i32, i32, i32)*, i16* (i32, i16*, i32, i32, i32, i32)** %get_ref_line, align 8
  %1182 = load i32, i32* %blocksize_y, align 4
  %1183 = load i32, i32* %blocksize_x, align 4
  %1184 = load i32, i32* %blocksize_x4, align 4
  %1185 = load i32, i32* %mcost, align 4
  %1186 = load i32, i32* %min_mcost.addr, align 4
  %1187 = load i32, i32* %cand_x, align 4
  %1188 = load i32, i32* %cand_y, align 4
  %call1370 = call i32 @PartCalMad(i16* %1179, i16** %1180, i16* (i32, i16*, i32, i32, i32, i32)* %1181, i32 %1182, i32 %1183, i32 %1184, i32 %1185, i32 %1186, i32 %1187, i32 %1188)
  store i32 %call1370, i32* %mcost, align 4
  %1189 = load i32, i32* %mcost, align 4
  %1190 = load i32, i32* %cand_x, align 4
  %1191 = load i32, i32* %center_x, align 4
  %sub1371 = sub nsw i32 %1190, %1191
  %1192 = load i32, i32* %search_range.addr, align 4
  %add1372 = add nsw i32 %sub1371, %1192
  %idxprom1373 = sext i32 %add1372 to i64
  %1193 = load i32, i32* %cand_y, align 4
  %1194 = load i32, i32* %center_y, align 4
  %sub1374 = sub nsw i32 %1193, %1194
  %1195 = load i32, i32* %search_range.addr, align 4
  %add1375 = add nsw i32 %sub1374, %1195
  %idxprom1376 = sext i32 %add1375 to i64
  %1196 = load i32**, i32*** @McostState, align 8
  %arrayidx1377 = getelementptr inbounds i32*, i32** %1196, i64 %idxprom1376
  %1197 = load i32*, i32** %arrayidx1377, align 8
  %arrayidx1378 = getelementptr inbounds i32, i32* %1197, i64 %idxprom1373
  store i32 %1189, i32* %arrayidx1378, align 4
  %1198 = load i32, i32* %mcost, align 4
  %1199 = load i32, i32* %min_mcost.addr, align 4
  %cmp1379 = icmp slt i32 %1198, %1199
  br i1 %cmp1379, label %if.then.1381, label %if.end.1382

if.then.1381:                                     ; preds = %if.then.1358
  %1200 = load i32, i32* %cand_x, align 4
  store i32 %1200, i32* %best_x, align 4
  %1201 = load i32, i32* %cand_y, align 4
  store i32 %1201, i32* %best_y, align 4
  %1202 = load i32, i32* %mcost, align 4
  store i32 %1202, i32* %min_mcost.addr, align 4
  store i32 0, i32* %iAbort, align 4
  br label %if.end.1382

if.end.1382:                                      ; preds = %if.then.1381, %if.then.1358
  br label %if.end.1383

if.end.1383:                                      ; preds = %if.end.1382, %if.then.1348
  br label %if.end.1384

if.end.1384:                                      ; preds = %if.end.1383, %land.lhs.true.1343, %for.body.1332
  br label %for.inc.1385

for.inc.1385:                                     ; preds = %if.end.1384
  %1203 = load i32, i32* %m, align 4
  %inc1386 = add nsw i32 %1203, 1
  store i32 %inc1386, i32* %m, align 4
  br label %for.cond.1329

for.end.1387:                                     ; preds = %for.cond.1329
  %1204 = load i32, i32* %iAbort, align 4
  %tobool1388 = icmp ne i32 %1204, 0
  br i1 %tobool1388, label %if.then.1389, label %if.end.1390

if.then.1389:                                     ; preds = %for.end.1387
  br label %for.end.1393

if.end.1390:                                      ; preds = %for.end.1387
  %1205 = load i32, i32* %best_x, align 4
  store i32 %1205, i32* %iXMinNow, align 4
  %1206 = load i32, i32* %best_y, align 4
  store i32 %1206, i32* %iYMinNow, align 4
  br label %for.inc.1391

for.inc.1391:                                     ; preds = %if.end.1390
  %1207 = load i32, i32* %i, align 4
  %inc1392 = add nsw i32 %1207, 1
  store i32 %inc1392, i32* %i, align 4
  br label %for.cond.1325

for.end.1393:                                     ; preds = %if.then.1389, %for.cond.1325
  %1208 = load i32, i32* %best_x, align 4
  %1209 = load i32, i32* %pic_pix_x.addr, align 4
  %sub1394 = sub nsw i32 %1208, %1209
  %conv1395 = trunc i32 %sub1394 to i16
  %1210 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv1395, i16* %1210, align 2
  %1211 = load i32, i32* %best_y, align 4
  %1212 = load i32, i32* %pic_pix_y.addr, align 4
  %sub1396 = sub nsw i32 %1211, %1212
  %conv1397 = trunc i32 %sub1396 to i16
  %1213 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv1397, i16* %1213, align 2
  %1214 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %1214
}

declare i16* @FastLineX(i32, i16*, i32, i32, i32, i32) #2

declare i16* @UMVLineX(i32, i16*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind uwtable
define i32 @AddUpSADQuarter(i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocksize_x, i32 %blocksize_y, i32 %cand_mv_x, i32 %cand_mv_y, %struct.storable_picture* %ref_picture, i16** %orig_pic, i32 %Mvmcost, i32 %min_mcost, i32 %useABT) #0 {
entry:
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %blocksize_y.addr = alloca i32, align 4
  %cand_mv_x.addr = alloca i32, align 4
  %cand_mv_y.addr = alloca i32, align 4
  %ref_picture.addr = alloca %struct.storable_picture*, align 8
  %orig_pic.addr = alloca i16**, align 8
  %Mvmcost.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %useABT.addr = alloca i32, align 4
  %abort_search = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x0 = alloca i32, align 4
  %rx0 = alloca i32, align 4
  %ry0 = alloca i32, align 4
  %ry = alloca i32, align 4
  %orig_line = alloca i16*, align 8
  %diff = alloca [16 x i32], align 16
  %d = alloca i32*, align 8
  %mcost = alloca i32, align 4
  %yy = alloca i32, align 4
  %kk = alloca i32, align 4
  %xx = alloca i32, align 4
  %curr_diff = alloca [16 x [16 x i32]], align 16
  %ref_pic = alloca i16**, align 8
  %img_width = alloca i32, align 4
  %img_height = alloca i32, align 4
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %cand_mv_x, i32* %cand_mv_x.addr, align 4
  store i32 %cand_mv_y, i32* %cand_mv_y.addr, align 4
  store %struct.storable_picture* %ref_picture, %struct.storable_picture** %ref_picture.addr, align 8
  store i16** %orig_pic, i16*** %orig_pic.addr, align 8
  store i32 %Mvmcost, i32* %Mvmcost.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %useABT, i32* %useABT.addr, align 4
  %0 = load i32, i32* %Mvmcost.addr, align 4
  store i32 %0, i32* %mcost, align 4
  %1 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture.addr, align 8
  %imgY_ups = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1, i32 0, i32 28
  %2 = load i16**, i16*** %imgY_ups, align 8
  store i16** %2, i16*** %ref_pic, align 8
  %3 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %3, i32 0, i32 18
  %4 = load i32, i32* %size_x, align 4
  store i32 %4, i32* %img_width, align 4
  %5 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture.addr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %5, i32 0, i32 19
  %6 = load i32, i32* %size_y, align 4
  store i32 %6, i32* %img_height, align 4
  store i32 0, i32* %y0, align 4
  store i32 0, i32* %abort_search, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.182, %entry
  %7 = load i32, i32* %y0, align 4
  %8 = load i32, i32* %blocksize_y.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %abort_search, align 4
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %for.body, label %for.end.184

for.body:                                         ; preds = %land.end
  %11 = load i32, i32* %pic_pix_y.addr, align 4
  %12 = load i32, i32* %y0, align 4
  %add = add nsw i32 %11, %12
  %shl = shl i32 %add, 2
  %13 = load i32, i32* %cand_mv_y.addr, align 4
  %add1 = add nsw i32 %shl, %13
  store i32 %add1, i32* %ry0, align 4
  store i32 0, i32* %x0, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.179, %for.body
  %14 = load i32, i32* %x0, align 4
  %15 = load i32, i32* %blocksize_x.addr, align 4
  %cmp3 = icmp slt i32 %14, %15
  br i1 %cmp3, label %for.body.4, label %for.end.181

for.body.4:                                       ; preds = %for.cond.2
  %16 = load i32, i32* %pic_pix_x.addr, align 4
  %17 = load i32, i32* %x0, align 4
  %add5 = add nsw i32 %16, %17
  %shl6 = shl i32 %add5, 2
  %18 = load i32, i32* %cand_mv_x.addr, align 4
  %add7 = add nsw i32 %shl6, %18
  store i32 %add7, i32* %rx0, align 4
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %diff, i32 0, i32 0
  store i32* %arraydecay, i32** %d, align 8
  %19 = load i32, i32* %y0, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i16**, i16*** %orig_pic.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %20, i64 %idxprom
  %21 = load i16*, i16** %arrayidx, align 8
  store i16* %21, i16** %orig_line, align 8
  %22 = load i32, i32* %ry0, align 4
  store i32 %22, i32* %ry, align 4
  %23 = load i32, i32* %x0, align 4
  %idxprom8 = sext i32 %23 to i64
  %24 = load i16*, i16** %orig_line, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %24, i64 %idxprom8
  %25 = load i16, i16* %arrayidx9, align 2
  %conv = zext i16 %25 to i32
  %26 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %27 = load i16**, i16*** %ref_pic, align 8
  %28 = load i32, i32* %ry, align 4
  %29 = load i32, i32* %rx0, align 4
  %30 = load i32, i32* %img_height, align 4
  %31 = load i32, i32* %img_width, align 4
  %call = call zeroext i16 %26(i16** %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %conv10 = zext i16 %call to i32
  %sub = sub nsw i32 %conv, %conv10
  %32 = load i32*, i32** %d, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %incdec.ptr, i32** %d, align 8
  store i32 %sub, i32* %32, align 4
  %33 = load i32, i32* %x0, align 4
  %add11 = add nsw i32 %33, 1
  %idxprom12 = sext i32 %add11 to i64
  %34 = load i16*, i16** %orig_line, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %34, i64 %idxprom12
  %35 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %35 to i32
  %36 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %37 = load i16**, i16*** %ref_pic, align 8
  %38 = load i32, i32* %ry, align 4
  %39 = load i32, i32* %rx0, align 4
  %add15 = add nsw i32 %39, 4
  %40 = load i32, i32* %img_height, align 4
  %41 = load i32, i32* %img_width, align 4
  %call16 = call zeroext i16 %36(i16** %37, i32 %38, i32 %add15, i32 %40, i32 %41)
  %conv17 = zext i16 %call16 to i32
  %sub18 = sub nsw i32 %conv14, %conv17
  %42 = load i32*, i32** %d, align 8
  %incdec.ptr19 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %incdec.ptr19, i32** %d, align 8
  store i32 %sub18, i32* %42, align 4
  %43 = load i32, i32* %x0, align 4
  %add20 = add nsw i32 %43, 2
  %idxprom21 = sext i32 %add20 to i64
  %44 = load i16*, i16** %orig_line, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %44, i64 %idxprom21
  %45 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %45 to i32
  %46 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %47 = load i16**, i16*** %ref_pic, align 8
  %48 = load i32, i32* %ry, align 4
  %49 = load i32, i32* %rx0, align 4
  %add24 = add nsw i32 %49, 8
  %50 = load i32, i32* %img_height, align 4
  %51 = load i32, i32* %img_width, align 4
  %call25 = call zeroext i16 %46(i16** %47, i32 %48, i32 %add24, i32 %50, i32 %51)
  %conv26 = zext i16 %call25 to i32
  %sub27 = sub nsw i32 %conv23, %conv26
  %52 = load i32*, i32** %d, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %incdec.ptr28, i32** %d, align 8
  store i32 %sub27, i32* %52, align 4
  %53 = load i32, i32* %x0, align 4
  %add29 = add nsw i32 %53, 3
  %idxprom30 = sext i32 %add29 to i64
  %54 = load i16*, i16** %orig_line, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %54, i64 %idxprom30
  %55 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %55 to i32
  %56 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %57 = load i16**, i16*** %ref_pic, align 8
  %58 = load i32, i32* %ry, align 4
  %59 = load i32, i32* %rx0, align 4
  %add33 = add nsw i32 %59, 12
  %60 = load i32, i32* %img_height, align 4
  %61 = load i32, i32* %img_width, align 4
  %call34 = call zeroext i16 %56(i16** %57, i32 %58, i32 %add33, i32 %60, i32 %61)
  %conv35 = zext i16 %call34 to i32
  %sub36 = sub nsw i32 %conv32, %conv35
  %62 = load i32*, i32** %d, align 8
  %incdec.ptr37 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %incdec.ptr37, i32** %d, align 8
  store i32 %sub36, i32* %62, align 4
  %63 = load i32, i32* %y0, align 4
  %add38 = add nsw i32 %63, 1
  %idxprom39 = sext i32 %add38 to i64
  %64 = load i16**, i16*** %orig_pic.addr, align 8
  %arrayidx40 = getelementptr inbounds i16*, i16** %64, i64 %idxprom39
  %65 = load i16*, i16** %arrayidx40, align 8
  store i16* %65, i16** %orig_line, align 8
  %66 = load i32, i32* %ry0, align 4
  %add41 = add nsw i32 %66, 4
  store i32 %add41, i32* %ry, align 4
  %67 = load i32, i32* %x0, align 4
  %idxprom42 = sext i32 %67 to i64
  %68 = load i16*, i16** %orig_line, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %68, i64 %idxprom42
  %69 = load i16, i16* %arrayidx43, align 2
  %conv44 = zext i16 %69 to i32
  %70 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %71 = load i16**, i16*** %ref_pic, align 8
  %72 = load i32, i32* %ry, align 4
  %73 = load i32, i32* %rx0, align 4
  %74 = load i32, i32* %img_height, align 4
  %75 = load i32, i32* %img_width, align 4
  %call45 = call zeroext i16 %70(i16** %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %conv46 = zext i16 %call45 to i32
  %sub47 = sub nsw i32 %conv44, %conv46
  %76 = load i32*, i32** %d, align 8
  %incdec.ptr48 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %incdec.ptr48, i32** %d, align 8
  store i32 %sub47, i32* %76, align 4
  %77 = load i32, i32* %x0, align 4
  %add49 = add nsw i32 %77, 1
  %idxprom50 = sext i32 %add49 to i64
  %78 = load i16*, i16** %orig_line, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %78, i64 %idxprom50
  %79 = load i16, i16* %arrayidx51, align 2
  %conv52 = zext i16 %79 to i32
  %80 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %81 = load i16**, i16*** %ref_pic, align 8
  %82 = load i32, i32* %ry, align 4
  %83 = load i32, i32* %rx0, align 4
  %add53 = add nsw i32 %83, 4
  %84 = load i32, i32* %img_height, align 4
  %85 = load i32, i32* %img_width, align 4
  %call54 = call zeroext i16 %80(i16** %81, i32 %82, i32 %add53, i32 %84, i32 %85)
  %conv55 = zext i16 %call54 to i32
  %sub56 = sub nsw i32 %conv52, %conv55
  %86 = load i32*, i32** %d, align 8
  %incdec.ptr57 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %incdec.ptr57, i32** %d, align 8
  store i32 %sub56, i32* %86, align 4
  %87 = load i32, i32* %x0, align 4
  %add58 = add nsw i32 %87, 2
  %idxprom59 = sext i32 %add58 to i64
  %88 = load i16*, i16** %orig_line, align 8
  %arrayidx60 = getelementptr inbounds i16, i16* %88, i64 %idxprom59
  %89 = load i16, i16* %arrayidx60, align 2
  %conv61 = zext i16 %89 to i32
  %90 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %91 = load i16**, i16*** %ref_pic, align 8
  %92 = load i32, i32* %ry, align 4
  %93 = load i32, i32* %rx0, align 4
  %add62 = add nsw i32 %93, 8
  %94 = load i32, i32* %img_height, align 4
  %95 = load i32, i32* %img_width, align 4
  %call63 = call zeroext i16 %90(i16** %91, i32 %92, i32 %add62, i32 %94, i32 %95)
  %conv64 = zext i16 %call63 to i32
  %sub65 = sub nsw i32 %conv61, %conv64
  %96 = load i32*, i32** %d, align 8
  %incdec.ptr66 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %incdec.ptr66, i32** %d, align 8
  store i32 %sub65, i32* %96, align 4
  %97 = load i32, i32* %x0, align 4
  %add67 = add nsw i32 %97, 3
  %idxprom68 = sext i32 %add67 to i64
  %98 = load i16*, i16** %orig_line, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %98, i64 %idxprom68
  %99 = load i16, i16* %arrayidx69, align 2
  %conv70 = zext i16 %99 to i32
  %100 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %101 = load i16**, i16*** %ref_pic, align 8
  %102 = load i32, i32* %ry, align 4
  %103 = load i32, i32* %rx0, align 4
  %add71 = add nsw i32 %103, 12
  %104 = load i32, i32* %img_height, align 4
  %105 = load i32, i32* %img_width, align 4
  %call72 = call zeroext i16 %100(i16** %101, i32 %102, i32 %add71, i32 %104, i32 %105)
  %conv73 = zext i16 %call72 to i32
  %sub74 = sub nsw i32 %conv70, %conv73
  %106 = load i32*, i32** %d, align 8
  %incdec.ptr75 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %incdec.ptr75, i32** %d, align 8
  store i32 %sub74, i32* %106, align 4
  %107 = load i32, i32* %y0, align 4
  %add76 = add nsw i32 %107, 2
  %idxprom77 = sext i32 %add76 to i64
  %108 = load i16**, i16*** %orig_pic.addr, align 8
  %arrayidx78 = getelementptr inbounds i16*, i16** %108, i64 %idxprom77
  %109 = load i16*, i16** %arrayidx78, align 8
  store i16* %109, i16** %orig_line, align 8
  %110 = load i32, i32* %ry0, align 4
  %add79 = add nsw i32 %110, 8
  store i32 %add79, i32* %ry, align 4
  %111 = load i32, i32* %x0, align 4
  %idxprom80 = sext i32 %111 to i64
  %112 = load i16*, i16** %orig_line, align 8
  %arrayidx81 = getelementptr inbounds i16, i16* %112, i64 %idxprom80
  %113 = load i16, i16* %arrayidx81, align 2
  %conv82 = zext i16 %113 to i32
  %114 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %115 = load i16**, i16*** %ref_pic, align 8
  %116 = load i32, i32* %ry, align 4
  %117 = load i32, i32* %rx0, align 4
  %118 = load i32, i32* %img_height, align 4
  %119 = load i32, i32* %img_width, align 4
  %call83 = call zeroext i16 %114(i16** %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %conv84 = zext i16 %call83 to i32
  %sub85 = sub nsw i32 %conv82, %conv84
  %120 = load i32*, i32** %d, align 8
  %incdec.ptr86 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %incdec.ptr86, i32** %d, align 8
  store i32 %sub85, i32* %120, align 4
  %121 = load i32, i32* %x0, align 4
  %add87 = add nsw i32 %121, 1
  %idxprom88 = sext i32 %add87 to i64
  %122 = load i16*, i16** %orig_line, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %122, i64 %idxprom88
  %123 = load i16, i16* %arrayidx89, align 2
  %conv90 = zext i16 %123 to i32
  %124 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %125 = load i16**, i16*** %ref_pic, align 8
  %126 = load i32, i32* %ry, align 4
  %127 = load i32, i32* %rx0, align 4
  %add91 = add nsw i32 %127, 4
  %128 = load i32, i32* %img_height, align 4
  %129 = load i32, i32* %img_width, align 4
  %call92 = call zeroext i16 %124(i16** %125, i32 %126, i32 %add91, i32 %128, i32 %129)
  %conv93 = zext i16 %call92 to i32
  %sub94 = sub nsw i32 %conv90, %conv93
  %130 = load i32*, i32** %d, align 8
  %incdec.ptr95 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %incdec.ptr95, i32** %d, align 8
  store i32 %sub94, i32* %130, align 4
  %131 = load i32, i32* %x0, align 4
  %add96 = add nsw i32 %131, 2
  %idxprom97 = sext i32 %add96 to i64
  %132 = load i16*, i16** %orig_line, align 8
  %arrayidx98 = getelementptr inbounds i16, i16* %132, i64 %idxprom97
  %133 = load i16, i16* %arrayidx98, align 2
  %conv99 = zext i16 %133 to i32
  %134 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %135 = load i16**, i16*** %ref_pic, align 8
  %136 = load i32, i32* %ry, align 4
  %137 = load i32, i32* %rx0, align 4
  %add100 = add nsw i32 %137, 8
  %138 = load i32, i32* %img_height, align 4
  %139 = load i32, i32* %img_width, align 4
  %call101 = call zeroext i16 %134(i16** %135, i32 %136, i32 %add100, i32 %138, i32 %139)
  %conv102 = zext i16 %call101 to i32
  %sub103 = sub nsw i32 %conv99, %conv102
  %140 = load i32*, i32** %d, align 8
  %incdec.ptr104 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %incdec.ptr104, i32** %d, align 8
  store i32 %sub103, i32* %140, align 4
  %141 = load i32, i32* %x0, align 4
  %add105 = add nsw i32 %141, 3
  %idxprom106 = sext i32 %add105 to i64
  %142 = load i16*, i16** %orig_line, align 8
  %arrayidx107 = getelementptr inbounds i16, i16* %142, i64 %idxprom106
  %143 = load i16, i16* %arrayidx107, align 2
  %conv108 = zext i16 %143 to i32
  %144 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %145 = load i16**, i16*** %ref_pic, align 8
  %146 = load i32, i32* %ry, align 4
  %147 = load i32, i32* %rx0, align 4
  %add109 = add nsw i32 %147, 12
  %148 = load i32, i32* %img_height, align 4
  %149 = load i32, i32* %img_width, align 4
  %call110 = call zeroext i16 %144(i16** %145, i32 %146, i32 %add109, i32 %148, i32 %149)
  %conv111 = zext i16 %call110 to i32
  %sub112 = sub nsw i32 %conv108, %conv111
  %150 = load i32*, i32** %d, align 8
  %incdec.ptr113 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %incdec.ptr113, i32** %d, align 8
  store i32 %sub112, i32* %150, align 4
  %151 = load i32, i32* %y0, align 4
  %add114 = add nsw i32 %151, 3
  %idxprom115 = sext i32 %add114 to i64
  %152 = load i16**, i16*** %orig_pic.addr, align 8
  %arrayidx116 = getelementptr inbounds i16*, i16** %152, i64 %idxprom115
  %153 = load i16*, i16** %arrayidx116, align 8
  store i16* %153, i16** %orig_line, align 8
  %154 = load i32, i32* %ry0, align 4
  %add117 = add nsw i32 %154, 12
  store i32 %add117, i32* %ry, align 4
  %155 = load i32, i32* %x0, align 4
  %idxprom118 = sext i32 %155 to i64
  %156 = load i16*, i16** %orig_line, align 8
  %arrayidx119 = getelementptr inbounds i16, i16* %156, i64 %idxprom118
  %157 = load i16, i16* %arrayidx119, align 2
  %conv120 = zext i16 %157 to i32
  %158 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %159 = load i16**, i16*** %ref_pic, align 8
  %160 = load i32, i32* %ry, align 4
  %161 = load i32, i32* %rx0, align 4
  %162 = load i32, i32* %img_height, align 4
  %163 = load i32, i32* %img_width, align 4
  %call121 = call zeroext i16 %158(i16** %159, i32 %160, i32 %161, i32 %162, i32 %163)
  %conv122 = zext i16 %call121 to i32
  %sub123 = sub nsw i32 %conv120, %conv122
  %164 = load i32*, i32** %d, align 8
  %incdec.ptr124 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %incdec.ptr124, i32** %d, align 8
  store i32 %sub123, i32* %164, align 4
  %165 = load i32, i32* %x0, align 4
  %add125 = add nsw i32 %165, 1
  %idxprom126 = sext i32 %add125 to i64
  %166 = load i16*, i16** %orig_line, align 8
  %arrayidx127 = getelementptr inbounds i16, i16* %166, i64 %idxprom126
  %167 = load i16, i16* %arrayidx127, align 2
  %conv128 = zext i16 %167 to i32
  %168 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %169 = load i16**, i16*** %ref_pic, align 8
  %170 = load i32, i32* %ry, align 4
  %171 = load i32, i32* %rx0, align 4
  %add129 = add nsw i32 %171, 4
  %172 = load i32, i32* %img_height, align 4
  %173 = load i32, i32* %img_width, align 4
  %call130 = call zeroext i16 %168(i16** %169, i32 %170, i32 %add129, i32 %172, i32 %173)
  %conv131 = zext i16 %call130 to i32
  %sub132 = sub nsw i32 %conv128, %conv131
  %174 = load i32*, i32** %d, align 8
  %incdec.ptr133 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %incdec.ptr133, i32** %d, align 8
  store i32 %sub132, i32* %174, align 4
  %175 = load i32, i32* %x0, align 4
  %add134 = add nsw i32 %175, 2
  %idxprom135 = sext i32 %add134 to i64
  %176 = load i16*, i16** %orig_line, align 8
  %arrayidx136 = getelementptr inbounds i16, i16* %176, i64 %idxprom135
  %177 = load i16, i16* %arrayidx136, align 2
  %conv137 = zext i16 %177 to i32
  %178 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %179 = load i16**, i16*** %ref_pic, align 8
  %180 = load i32, i32* %ry, align 4
  %181 = load i32, i32* %rx0, align 4
  %add138 = add nsw i32 %181, 8
  %182 = load i32, i32* %img_height, align 4
  %183 = load i32, i32* %img_width, align 4
  %call139 = call zeroext i16 %178(i16** %179, i32 %180, i32 %add138, i32 %182, i32 %183)
  %conv140 = zext i16 %call139 to i32
  %sub141 = sub nsw i32 %conv137, %conv140
  %184 = load i32*, i32** %d, align 8
  %incdec.ptr142 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %incdec.ptr142, i32** %d, align 8
  store i32 %sub141, i32* %184, align 4
  %185 = load i32, i32* %x0, align 4
  %add143 = add nsw i32 %185, 3
  %idxprom144 = sext i32 %add143 to i64
  %186 = load i16*, i16** %orig_line, align 8
  %arrayidx145 = getelementptr inbounds i16, i16* %186, i64 %idxprom144
  %187 = load i16, i16* %arrayidx145, align 2
  %conv146 = zext i16 %187 to i32
  %188 = load i16 (i16**, i32, i32, i32, i32)*, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  %189 = load i16**, i16*** %ref_pic, align 8
  %190 = load i32, i32* %ry, align 4
  %191 = load i32, i32* %rx0, align 4
  %add147 = add nsw i32 %191, 12
  %192 = load i32, i32* %img_height, align 4
  %193 = load i32, i32* %img_width, align 4
  %call148 = call zeroext i16 %188(i16** %189, i32 %190, i32 %add147, i32 %192, i32 %193)
  %conv149 = zext i16 %call148 to i32
  %sub150 = sub nsw i32 %conv146, %conv149
  %194 = load i32*, i32** %d, align 8
  store i32 %sub150, i32* %194, align 4
  %195 = load i32, i32* %useABT.addr, align 4
  %tobool151 = icmp ne i32 %195, 0
  br i1 %tobool151, label %if.else, label %if.then

if.then:                                          ; preds = %for.body.4
  %arraydecay152 = getelementptr inbounds [16 x i32], [16 x i32]* %diff, i32 0, i32 0
  %196 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %hadamard = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %196, i32 0, i32 6
  %197 = load i32, i32* %hadamard, align 4
  %call153 = call i32 @SATD(i32* %arraydecay152, i32 %197)
  %198 = load i32, i32* %mcost, align 4
  %add154 = add nsw i32 %198, %call153
  store i32 %add154, i32* %mcost, align 4
  %199 = load i32, i32* %min_mcost.addr, align 4
  %cmp155 = icmp sgt i32 %add154, %199
  br i1 %cmp155, label %if.then.157, label %if.end

if.then.157:                                      ; preds = %if.then
  store i32 1, i32* %abort_search, align 4
  br label %for.end.181

if.end:                                           ; preds = %if.then
  br label %if.end.178

if.else:                                          ; preds = %for.body.4
  %200 = load i32, i32* %y0, align 4
  store i32 %200, i32* %yy, align 4
  store i32 0, i32* %kk, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.175, %if.else
  %201 = load i32, i32* %yy, align 4
  %202 = load i32, i32* %y0, align 4
  %add159 = add nsw i32 %202, 4
  %cmp160 = icmp slt i32 %201, %add159
  br i1 %cmp160, label %for.body.162, label %for.end.177

for.body.162:                                     ; preds = %for.cond.158
  %203 = load i32, i32* %x0, align 4
  store i32 %203, i32* %xx, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc, %for.body.162
  %204 = load i32, i32* %xx, align 4
  %205 = load i32, i32* %x0, align 4
  %add164 = add nsw i32 %205, 4
  %cmp165 = icmp slt i32 %204, %add164
  br i1 %cmp165, label %for.body.167, label %for.end

for.body.167:                                     ; preds = %for.cond.163
  %206 = load i32, i32* %kk, align 4
  %idxprom168 = sext i32 %206 to i64
  %arrayidx169 = getelementptr inbounds [16 x i32], [16 x i32]* %diff, i32 0, i64 %idxprom168
  %207 = load i32, i32* %arrayidx169, align 4
  %208 = load i32, i32* %xx, align 4
  %idxprom170 = sext i32 %208 to i64
  %209 = load i32, i32* %yy, align 4
  %idxprom171 = sext i32 %209 to i64
  %arrayidx172 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %curr_diff, i32 0, i64 %idxprom171
  %arrayidx173 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx172, i32 0, i64 %idxprom170
  store i32 %207, i32* %arrayidx173, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.167
  %210 = load i32, i32* %xx, align 4
  %inc = add nsw i32 %210, 1
  store i32 %inc, i32* %xx, align 4
  %211 = load i32, i32* %kk, align 4
  %inc174 = add nsw i32 %211, 1
  store i32 %inc174, i32* %kk, align 4
  br label %for.cond.163

for.end:                                          ; preds = %for.cond.163
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.end
  %212 = load i32, i32* %yy, align 4
  %inc176 = add nsw i32 %212, 1
  store i32 %inc176, i32* %yy, align 4
  br label %for.cond.158

for.end.177:                                      ; preds = %for.cond.158
  br label %if.end.178

if.end.178:                                       ; preds = %for.end.177, %if.end
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %213 = load i32, i32* %x0, align 4
  %add180 = add nsw i32 %213, 4
  store i32 %add180, i32* %x0, align 4
  br label %for.cond.2

for.end.181:                                      ; preds = %if.then.157, %for.cond.2
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.end.181
  %214 = load i32, i32* %y0, align 4
  %add183 = add nsw i32 %214, 4
  store i32 %add183, i32* %y0, align 4
  br label %for.cond

for.end.184:                                      ; preds = %land.end
  %215 = load i32, i32* %mcost, align 4
  ret i32 %215
}

declare i32 @SATD(i32*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @FastSubPelBlockMotionSearch(i16** %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, double %lambda, i32 %useABT) #0 {
entry:
  %orig_pic.addr = alloca i16**, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv_x.addr = alloca i16, align 2
  %pred_mv_y.addr = alloca i16, align 2
  %mv_x.addr = alloca i16*, align 8
  %mv_y.addr = alloca i16*, align 8
  %search_pos2.addr = alloca i32, align 4
  %search_pos4.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda.addr = alloca double, align 8
  %useABT.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %cand_mv_x = alloca i32, align 4
  %cand_mv_y = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %ref_picture = alloca %struct.storable_picture*, align 8
  %lambda_factor = alloca i32, align 4
  %mv_shift = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %pic4_pix_x = alloca i32, align 4
  %pic4_pix_y = alloca i32, align 4
  %max_pos_x4 = alloca i32, align 4
  %max_pos_y4 = alloca i32, align 4
  %search_range_dynamic = alloca i32, align 4
  %iXMinNow = alloca i32, align 4
  %iYMinNow = alloca i32, align 4
  %i = alloca i32, align 4
  %iSADLayer = alloca i32, align 4
  %m = alloca i32, align 4
  %currmv_x = alloca i32, align 4
  %currmv_y = alloca i32, align 4
  %iCurrSearchRange = alloca i32, align 4
  %pred_frac_mv_x = alloca i32, align 4
  %pred_frac_mv_y = alloca i32, align 4
  %abort_search = alloca i32, align 4
  %mv_cost = alloca i32, align 4
  %pred_frac_up_mv_x = alloca i32, align 4
  %pred_frac_up_mv_y = alloca i32, align 4
  store i16** %orig_pic, i16*** %orig_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16 %pred_mv_x, i16* %pred_mv_x.addr, align 2
  store i16 %pred_mv_y, i16* %pred_mv_y.addr, align 2
  store i16* %mv_x, i16** %mv_x.addr, align 8
  store i16* %mv_y, i16** %mv_y.addr, align 8
  store i32 %search_pos2, i32* %search_pos2.addr, align 4
  store i32 %search_pos4, i32* %search_pos4.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store double %lambda, double* %lambda.addr, align 8
  store i32 %useABT, i32* %useABT.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 90
  %1 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 51
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 22
  %6 = load i32, i32* %mb_field, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr2, align 4
  %rem = srem i32 %8, 2
  %tobool3 = icmp ne i32 %rem, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  %9 = load i16, i16* %ref.addr, align 2
  %idxprom5 = sext i16 %9 to i64
  %10 = load i32, i32* %list.addr, align 4
  %11 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 %10, %11
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom6
  %12 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %12, i64 %idxprom5
  %13 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx8, align 8
  store %struct.storable_picture* %13, %struct.storable_picture** %ref_picture, align 8
  %14 = load double, double* %lambda.addr, align 8
  %mul = fmul double 6.553600e+04, %14
  %add9 = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add9 to i32
  store i32 %conv, i32* %lambda_factor, align 4
  store i32 0, i32* %mv_shift, align 4
  %15 = load i32, i32* %blocktype.addr, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 20
  %arrayidx11 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx11, i32 0, i64 0
  %17 = load i32, i32* %arrayidx12, align 4
  store i32 %17, i32* %blocksize_x, align 4
  %18 = load i32, i32* %blocktype.addr, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 20
  %arrayidx15 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size14, i32 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx15, i32 0, i64 1
  %20 = load i32, i32* %arrayidx16, align 4
  store i32 %20, i32* %blocksize_y, align 4
  %21 = load i32, i32* %pic_pix_x.addr, align 4
  %shl = shl i32 %21, 2
  store i32 %shl, i32* %pic4_pix_x, align 4
  %22 = load i32, i32* %pic_pix_y.addr, align 4
  %shl17 = shl i32 %22, 2
  store i32 %shl17, i32* %pic4_pix_y, align 4
  %23 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 18
  %24 = load i32, i32* %size_x, align 4
  %25 = load i32, i32* %blocksize_x, align 4
  %sub = sub nsw i32 %24, %25
  %add18 = add nsw i32 %sub, 1
  %shl19 = shl i32 %add18, 2
  store i32 %shl19, i32* %max_pos_x4, align 4
  %26 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %26, i32 0, i32 19
  %27 = load i32, i32* %size_y, align 4
  %28 = load i32, i32* %blocksize_y, align 4
  %sub20 = sub nsw i32 %27, %28
  %add21 = add nsw i32 %sub20, 1
  %shl22 = shl i32 %add21, 2
  store i32 %shl22, i32* %max_pos_y4, align 4
  store i32 0, i32* %currmv_x, align 4
  store i32 0, i32* %currmv_y, align 4
  %29 = load i16*, i16** %mv_x.addr, align 8
  %30 = load i16, i16* %29, align 2
  %conv23 = sext i16 %30 to i32
  %shl24 = shl i32 %conv23, 2
  %conv25 = trunc i32 %shl24 to i16
  store i16 %conv25, i16* %29, align 2
  %31 = load i16*, i16** %mv_y.addr, align 8
  %32 = load i16, i16* %31, align 2
  %conv26 = sext i16 %32 to i32
  %shl27 = shl i32 %conv26, 2
  %conv28 = trunc i32 %shl27 to i16
  store i16 %conv28, i16* %31, align 2
  %33 = load i32, i32* %pic4_pix_x, align 4
  %34 = load i16*, i16** %mv_x.addr, align 8
  %35 = load i16, i16* %34, align 2
  %conv29 = sext i16 %35 to i32
  %add30 = add nsw i32 %33, %conv29
  %cmp = icmp sgt i32 %add30, 1
  br i1 %cmp, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %cond.end
  %36 = load i32, i32* %pic4_pix_x, align 4
  %37 = load i16*, i16** %mv_x.addr, align 8
  %38 = load i16, i16* %37, align 2
  %conv33 = sext i16 %38 to i32
  %add34 = add nsw i32 %36, %conv33
  %39 = load i32, i32* %max_pos_x4, align 4
  %sub35 = sub nsw i32 %39, 2
  %cmp36 = icmp slt i32 %add34, %sub35
  br i1 %cmp36, label %land.lhs.true.38, label %if.else

land.lhs.true.38:                                 ; preds = %land.lhs.true.32
  %40 = load i32, i32* %pic4_pix_y, align 4
  %41 = load i16*, i16** %mv_y.addr, align 8
  %42 = load i16, i16* %41, align 2
  %conv39 = sext i16 %42 to i32
  %add40 = add nsw i32 %40, %conv39
  %cmp41 = icmp sgt i32 %add40, 1
  br i1 %cmp41, label %land.lhs.true.43, label %if.else

land.lhs.true.43:                                 ; preds = %land.lhs.true.38
  %43 = load i32, i32* %pic4_pix_y, align 4
  %44 = load i16*, i16** %mv_y.addr, align 8
  %45 = load i16, i16* %44, align 2
  %conv44 = sext i16 %45 to i32
  %add45 = add nsw i32 %43, %conv44
  %46 = load i32, i32* %max_pos_y4, align 4
  %sub46 = sub nsw i32 %46, 2
  %cmp47 = icmp slt i32 %add45, %sub46
  br i1 %cmp47, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.43
  store i16 (i16**, i32, i32, i32, i32)* @FastPelY_14, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.43, %land.lhs.true.38, %land.lhs.true.32, %cond.end
  store i16 (i16**, i32, i32, i32, i32)* @UMVPelY_14, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 3, i32* %search_range_dynamic, align 4
  %47 = load i16, i16* %pred_mv_x.addr, align 2
  %conv49 = sext i16 %47 to i32
  %48 = load i16*, i16** %mv_x.addr, align 8
  %49 = load i16, i16* %48, align 2
  %conv50 = sext i16 %49 to i32
  %sub51 = sub nsw i32 %conv49, %conv50
  %rem52 = srem i32 %sub51, 4
  store i32 %rem52, i32* %pred_frac_mv_x, align 4
  %50 = load i16, i16* %pred_mv_y.addr, align 2
  %conv53 = sext i16 %50 to i32
  %51 = load i16*, i16** %mv_y.addr, align 8
  %52 = load i16, i16* %51, align 2
  %conv54 = sext i16 %52 to i32
  %sub55 = sub nsw i32 %conv53, %conv54
  %rem56 = srem i32 %sub55, 4
  store i32 %rem56, i32* %pred_frac_mv_y, align 4
  %53 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_uplayer, i32 0, i64 0), align 4
  %54 = load i16*, i16** %mv_x.addr, align 8
  %55 = load i16, i16* %54, align 2
  %conv57 = sext i16 %55 to i32
  %sub58 = sub nsw i32 %53, %conv57
  %rem59 = srem i32 %sub58, 4
  store i32 %rem59, i32* %pred_frac_up_mv_x, align 4
  %56 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_uplayer, i32 0, i64 1), align 4
  %57 = load i16*, i16** %mv_y.addr, align 8
  %58 = load i16, i16* %57, align 2
  %conv60 = sext i16 %58 to i32
  %sub61 = sub nsw i32 %56, %conv60
  %rem62 = srem i32 %sub61, 4
  store i32 %rem62, i32* %pred_frac_up_mv_y, align 4
  %59 = load i8**, i8*** @SearchState, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %59, i64 0
  %60 = load i8*, i8** %arrayidx63, align 8
  %61 = load i32, i32* %search_range_dynamic, align 4
  %mul64 = mul nsw i32 2, %61
  %add65 = add nsw i32 %mul64, 1
  %62 = load i32, i32* %search_range_dynamic, align 4
  %mul66 = mul nsw i32 2, %62
  %add67 = add nsw i32 %mul66, 1
  %mul68 = mul nsw i32 %add65, %add67
  %conv69 = sext i32 %mul68 to i64
  call void @llvm.memset.p0i8.i64(i8* %60, i8 0, i64 %conv69, i32 1, i1 false)
  %63 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %hadamard = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %63, i32 0, i32 6
  %64 = load i32, i32* %hadamard, align 4
  %tobool70 = icmp ne i32 %64, 0
  br i1 %tobool70, label %if.then.71, label %if.else.94

if.then.71:                                       ; preds = %if.end
  %65 = load i16*, i16** %mv_x.addr, align 8
  %66 = load i16, i16* %65, align 2
  %conv72 = sext i16 %66 to i32
  store i32 %conv72, i32* %cand_mv_x, align 4
  %67 = load i16*, i16** %mv_y.addr, align 8
  %68 = load i16, i16* %67, align 2
  %conv73 = sext i16 %68 to i32
  store i32 %conv73, i32* %cand_mv_y, align 4
  %69 = load i32, i32* %lambda_factor, align 4
  %70 = load i32, i32* %cand_mv_x, align 4
  %71 = load i32, i32* %mv_shift, align 4
  %shl74 = shl i32 %70, %71
  %72 = load i16, i16* %pred_mv_x.addr, align 2
  %conv75 = sext i16 %72 to i32
  %sub76 = sub nsw i32 %shl74, %conv75
  %idxprom77 = sext i32 %sub76 to i64
  %73 = load i32*, i32** @mvbits, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %73, i64 %idxprom77
  %74 = load i32, i32* %arrayidx78, align 4
  %75 = load i32, i32* %cand_mv_y, align 4
  %76 = load i32, i32* %mv_shift, align 4
  %shl79 = shl i32 %75, %76
  %77 = load i16, i16* %pred_mv_y.addr, align 2
  %conv80 = sext i16 %77 to i32
  %sub81 = sub nsw i32 %shl79, %conv80
  %idxprom82 = sext i32 %sub81 to i64
  %78 = load i32*, i32** @mvbits, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %78, i64 %idxprom82
  %79 = load i32, i32* %arrayidx83, align 4
  %add84 = add nsw i32 %74, %79
  %mul85 = mul nsw i32 %69, %add84
  %shr = ashr i32 %mul85, 16
  store i32 %shr, i32* %mv_cost, align 4
  %80 = load i32, i32* %pic_pix_x.addr, align 4
  %81 = load i32, i32* %pic_pix_y.addr, align 4
  %82 = load i32, i32* %blocksize_x, align 4
  %83 = load i32, i32* %blocksize_y, align 4
  %84 = load i32, i32* %cand_mv_x, align 4
  %85 = load i32, i32* %cand_mv_y, align 4
  %86 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %87 = load i16**, i16*** %orig_pic.addr, align 8
  %88 = load i32, i32* %mv_cost, align 4
  %89 = load i32, i32* %min_mcost.addr, align 4
  %90 = load i32, i32* %useABT.addr, align 4
  %call = call i32 @AddUpSADQuarter(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, %struct.storable_picture* %86, i16** %87, i32 %88, i32 %89, i32 %90)
  store i32 %call, i32* %mcost, align 4
  %91 = load i32, i32* %search_range_dynamic, align 4
  %idxprom86 = sext i32 %91 to i64
  %92 = load i32, i32* %search_range_dynamic, align 4
  %idxprom87 = sext i32 %92 to i64
  %93 = load i8**, i8*** @SearchState, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %93, i64 %idxprom87
  %94 = load i8*, i8** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %94, i64 %idxprom86
  store i8 1, i8* %arrayidx89, align 1
  %95 = load i32, i32* %mcost, align 4
  %96 = load i32, i32* %min_mcost.addr, align 4
  %cmp90 = icmp slt i32 %95, %96
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.71
  %97 = load i32, i32* %mcost, align 4
  store i32 %97, i32* %min_mcost.addr, align 4
  %98 = load i32, i32* %cand_mv_x, align 4
  store i32 %98, i32* %currmv_x, align 4
  %99 = load i32, i32* %cand_mv_y, align 4
  store i32 %99, i32* %currmv_y, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.then.71
  br label %if.end.101

if.else.94:                                       ; preds = %if.end
  %100 = load i32, i32* %search_range_dynamic, align 4
  %idxprom95 = sext i32 %100 to i64
  %101 = load i32, i32* %search_range_dynamic, align 4
  %idxprom96 = sext i32 %101 to i64
  %102 = load i8**, i8*** @SearchState, align 8
  %arrayidx97 = getelementptr inbounds i8*, i8** %102, i64 %idxprom96
  %103 = load i8*, i8** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %103, i64 %idxprom95
  store i8 1, i8* %arrayidx98, align 1
  %104 = load i16*, i16** %mv_x.addr, align 8
  %105 = load i16, i16* %104, align 2
  %conv99 = sext i16 %105 to i32
  store i32 %conv99, i32* %currmv_x, align 4
  %106 = load i16*, i16** %mv_y.addr, align 8
  %107 = load i16, i16* %106, align 2
  %conv100 = sext i16 %107 to i32
  store i32 %conv100, i32* %currmv_y, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.94, %if.end.93
  %108 = load i32, i32* %pred_frac_mv_x, align 4
  %cmp102 = icmp ne i32 %108, 0
  br i1 %cmp102, label %if.then.106, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.101
  %109 = load i32, i32* %pred_frac_mv_y, align 4
  %cmp104 = icmp ne i32 %109, 0
  br i1 %cmp104, label %if.then.106, label %if.end.139

if.then.106:                                      ; preds = %lor.lhs.false, %if.end.101
  %110 = load i16*, i16** %mv_x.addr, align 8
  %111 = load i16, i16* %110, align 2
  %conv107 = sext i16 %111 to i32
  %112 = load i32, i32* %pred_frac_mv_x, align 4
  %add108 = add nsw i32 %conv107, %112
  store i32 %add108, i32* %cand_mv_x, align 4
  %113 = load i16*, i16** %mv_y.addr, align 8
  %114 = load i16, i16* %113, align 2
  %conv109 = sext i16 %114 to i32
  %115 = load i32, i32* %pred_frac_mv_y, align 4
  %add110 = add nsw i32 %conv109, %115
  store i32 %add110, i32* %cand_mv_y, align 4
  %116 = load i32, i32* %lambda_factor, align 4
  %117 = load i32, i32* %cand_mv_x, align 4
  %118 = load i32, i32* %mv_shift, align 4
  %shl111 = shl i32 %117, %118
  %119 = load i16, i16* %pred_mv_x.addr, align 2
  %conv112 = sext i16 %119 to i32
  %sub113 = sub nsw i32 %shl111, %conv112
  %idxprom114 = sext i32 %sub113 to i64
  %120 = load i32*, i32** @mvbits, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %120, i64 %idxprom114
  %121 = load i32, i32* %arrayidx115, align 4
  %122 = load i32, i32* %cand_mv_y, align 4
  %123 = load i32, i32* %mv_shift, align 4
  %shl116 = shl i32 %122, %123
  %124 = load i16, i16* %pred_mv_y.addr, align 2
  %conv117 = sext i16 %124 to i32
  %sub118 = sub nsw i32 %shl116, %conv117
  %idxprom119 = sext i32 %sub118 to i64
  %125 = load i32*, i32** @mvbits, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %125, i64 %idxprom119
  %126 = load i32, i32* %arrayidx120, align 4
  %add121 = add nsw i32 %121, %126
  %mul122 = mul nsw i32 %116, %add121
  %shr123 = ashr i32 %mul122, 16
  store i32 %shr123, i32* %mv_cost, align 4
  %127 = load i32, i32* %pic_pix_x.addr, align 4
  %128 = load i32, i32* %pic_pix_y.addr, align 4
  %129 = load i32, i32* %blocksize_x, align 4
  %130 = load i32, i32* %blocksize_y, align 4
  %131 = load i32, i32* %cand_mv_x, align 4
  %132 = load i32, i32* %cand_mv_y, align 4
  %133 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %134 = load i16**, i16*** %orig_pic.addr, align 8
  %135 = load i32, i32* %mv_cost, align 4
  %136 = load i32, i32* %min_mcost.addr, align 4
  %137 = load i32, i32* %useABT.addr, align 4
  %call124 = call i32 @AddUpSADQuarter(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, %struct.storable_picture* %133, i16** %134, i32 %135, i32 %136, i32 %137)
  store i32 %call124, i32* %mcost, align 4
  %138 = load i32, i32* %cand_mv_x, align 4
  %139 = load i16*, i16** %mv_x.addr, align 8
  %140 = load i16, i16* %139, align 2
  %conv125 = sext i16 %140 to i32
  %sub126 = sub nsw i32 %138, %conv125
  %141 = load i32, i32* %search_range_dynamic, align 4
  %add127 = add nsw i32 %sub126, %141
  %idxprom128 = sext i32 %add127 to i64
  %142 = load i32, i32* %cand_mv_y, align 4
  %143 = load i16*, i16** %mv_y.addr, align 8
  %144 = load i16, i16* %143, align 2
  %conv129 = sext i16 %144 to i32
  %sub130 = sub nsw i32 %142, %conv129
  %145 = load i32, i32* %search_range_dynamic, align 4
  %add131 = add nsw i32 %sub130, %145
  %idxprom132 = sext i32 %add131 to i64
  %146 = load i8**, i8*** @SearchState, align 8
  %arrayidx133 = getelementptr inbounds i8*, i8** %146, i64 %idxprom132
  %147 = load i8*, i8** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %147, i64 %idxprom128
  store i8 1, i8* %arrayidx134, align 1
  %148 = load i32, i32* %mcost, align 4
  %149 = load i32, i32* %min_mcost.addr, align 4
  %cmp135 = icmp slt i32 %148, %149
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.then.106
  %150 = load i32, i32* %mcost, align 4
  store i32 %150, i32* %min_mcost.addr, align 4
  %151 = load i32, i32* %cand_mv_x, align 4
  store i32 %151, i32* %currmv_x, align 4
  %152 = load i32, i32* %cand_mv_y, align 4
  store i32 %152, i32* %currmv_y, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.then.106
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %lor.lhs.false
  %153 = load i32, i32* %currmv_x, align 4
  store i32 %153, i32* %iXMinNow, align 4
  %154 = load i32, i32* %currmv_y, align 4
  store i32 %154, i32* %iYMinNow, align 4
  %155 = load i32, i32* %search_range_dynamic, align 4
  %mul140 = mul nsw i32 2, %155
  %add141 = add nsw i32 %mul140, 1
  store i32 %add141, i32* %iCurrSearchRange, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.211, %if.end.139
  %156 = load i32, i32* %i, align 4
  %157 = load i32, i32* %iCurrSearchRange, align 4
  %cmp142 = icmp slt i32 %156, %157
  br i1 %cmp142, label %for.body, label %for.end.213

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %abort_search, align 4
  store i32 65536, i32* %iSADLayer, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc, %for.body
  %158 = load i32, i32* %m, align 4
  %cmp145 = icmp slt i32 %158, 4
  br i1 %cmp145, label %for.body.147, label %for.end

for.body.147:                                     ; preds = %for.cond.144
  %159 = load i32, i32* %iXMinNow, align 4
  %160 = load i32, i32* %m, align 4
  %idxprom148 = sext i32 %160 to i64
  %arrayidx149 = getelementptr inbounds [4 x i32], [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i32 0, i64 %idxprom148
  %161 = load i32, i32* %arrayidx149, align 4
  %add150 = add nsw i32 %159, %161
  store i32 %add150, i32* %cand_mv_x, align 4
  %162 = load i32, i32* %iYMinNow, align 4
  %163 = load i32, i32* %m, align 4
  %idxprom151 = sext i32 %163 to i64
  %arrayidx152 = getelementptr inbounds [4 x i32], [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i32 0, i64 %idxprom151
  %164 = load i32, i32* %arrayidx152, align 4
  %add153 = add nsw i32 %162, %164
  store i32 %add153, i32* %cand_mv_y, align 4
  %165 = load i32, i32* %cand_mv_x, align 4
  %166 = load i16*, i16** %mv_x.addr, align 8
  %167 = load i16, i16* %166, align 2
  %conv154 = sext i16 %167 to i32
  %sub155 = sub nsw i32 %165, %conv154
  %call156 = call i32 @abs(i32 %sub155) #5
  %168 = load i32, i32* %search_range_dynamic, align 4
  %cmp157 = icmp sle i32 %call156, %168
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.207

land.lhs.true.159:                                ; preds = %for.body.147
  %169 = load i32, i32* %cand_mv_y, align 4
  %170 = load i16*, i16** %mv_y.addr, align 8
  %171 = load i16, i16* %170, align 2
  %conv160 = sext i16 %171 to i32
  %sub161 = sub nsw i32 %169, %conv160
  %call162 = call i32 @abs(i32 %sub161) #5
  %172 = load i32, i32* %search_range_dynamic, align 4
  %cmp163 = icmp sle i32 %call162, %172
  br i1 %cmp163, label %if.then.165, label %if.end.207

if.then.165:                                      ; preds = %land.lhs.true.159
  %173 = load i32, i32* %cand_mv_x, align 4
  %174 = load i16*, i16** %mv_x.addr, align 8
  %175 = load i16, i16* %174, align 2
  %conv166 = sext i16 %175 to i32
  %sub167 = sub nsw i32 %173, %conv166
  %176 = load i32, i32* %search_range_dynamic, align 4
  %add168 = add nsw i32 %sub167, %176
  %idxprom169 = sext i32 %add168 to i64
  %177 = load i32, i32* %cand_mv_y, align 4
  %178 = load i16*, i16** %mv_y.addr, align 8
  %179 = load i16, i16* %178, align 2
  %conv170 = sext i16 %179 to i32
  %sub171 = sub nsw i32 %177, %conv170
  %180 = load i32, i32* %search_range_dynamic, align 4
  %add172 = add nsw i32 %sub171, %180
  %idxprom173 = sext i32 %add172 to i64
  %181 = load i8**, i8*** @SearchState, align 8
  %arrayidx174 = getelementptr inbounds i8*, i8** %181, i64 %idxprom173
  %182 = load i8*, i8** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %182, i64 %idxprom169
  %183 = load i8, i8* %arrayidx175, align 1
  %tobool176 = icmp ne i8 %183, 0
  br i1 %tobool176, label %if.end.206, label %if.then.177

if.then.177:                                      ; preds = %if.then.165
  %184 = load i32, i32* %lambda_factor, align 4
  %185 = load i32, i32* %cand_mv_x, align 4
  %186 = load i32, i32* %mv_shift, align 4
  %shl178 = shl i32 %185, %186
  %187 = load i16, i16* %pred_mv_x.addr, align 2
  %conv179 = sext i16 %187 to i32
  %sub180 = sub nsw i32 %shl178, %conv179
  %idxprom181 = sext i32 %sub180 to i64
  %188 = load i32*, i32** @mvbits, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %188, i64 %idxprom181
  %189 = load i32, i32* %arrayidx182, align 4
  %190 = load i32, i32* %cand_mv_y, align 4
  %191 = load i32, i32* %mv_shift, align 4
  %shl183 = shl i32 %190, %191
  %192 = load i16, i16* %pred_mv_y.addr, align 2
  %conv184 = sext i16 %192 to i32
  %sub185 = sub nsw i32 %shl183, %conv184
  %idxprom186 = sext i32 %sub185 to i64
  %193 = load i32*, i32** @mvbits, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %193, i64 %idxprom186
  %194 = load i32, i32* %arrayidx187, align 4
  %add188 = add nsw i32 %189, %194
  %mul189 = mul nsw i32 %184, %add188
  %shr190 = ashr i32 %mul189, 16
  store i32 %shr190, i32* %mv_cost, align 4
  %195 = load i32, i32* %pic_pix_x.addr, align 4
  %196 = load i32, i32* %pic_pix_y.addr, align 4
  %197 = load i32, i32* %blocksize_x, align 4
  %198 = load i32, i32* %blocksize_y, align 4
  %199 = load i32, i32* %cand_mv_x, align 4
  %200 = load i32, i32* %cand_mv_y, align 4
  %201 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %202 = load i16**, i16*** %orig_pic.addr, align 8
  %203 = load i32, i32* %mv_cost, align 4
  %204 = load i32, i32* %min_mcost.addr, align 4
  %205 = load i32, i32* %useABT.addr, align 4
  %call191 = call i32 @AddUpSADQuarter(i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, %struct.storable_picture* %201, i16** %202, i32 %203, i32 %204, i32 %205)
  store i32 %call191, i32* %mcost, align 4
  %206 = load i32, i32* %cand_mv_x, align 4
  %207 = load i16*, i16** %mv_x.addr, align 8
  %208 = load i16, i16* %207, align 2
  %conv192 = sext i16 %208 to i32
  %sub193 = sub nsw i32 %206, %conv192
  %209 = load i32, i32* %search_range_dynamic, align 4
  %add194 = add nsw i32 %sub193, %209
  %idxprom195 = sext i32 %add194 to i64
  %210 = load i32, i32* %cand_mv_y, align 4
  %211 = load i16*, i16** %mv_y.addr, align 8
  %212 = load i16, i16* %211, align 2
  %conv196 = sext i16 %212 to i32
  %sub197 = sub nsw i32 %210, %conv196
  %213 = load i32, i32* %search_range_dynamic, align 4
  %add198 = add nsw i32 %sub197, %213
  %idxprom199 = sext i32 %add198 to i64
  %214 = load i8**, i8*** @SearchState, align 8
  %arrayidx200 = getelementptr inbounds i8*, i8** %214, i64 %idxprom199
  %215 = load i8*, i8** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %215, i64 %idxprom195
  store i8 1, i8* %arrayidx201, align 1
  %216 = load i32, i32* %mcost, align 4
  %217 = load i32, i32* %min_mcost.addr, align 4
  %cmp202 = icmp slt i32 %216, %217
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.then.177
  %218 = load i32, i32* %mcost, align 4
  store i32 %218, i32* %min_mcost.addr, align 4
  %219 = load i32, i32* %cand_mv_x, align 4
  store i32 %219, i32* %currmv_x, align 4
  %220 = load i32, i32* %cand_mv_y, align 4
  store i32 %220, i32* %currmv_y, align 4
  store i32 0, i32* %abort_search, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.204, %if.then.177
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.165
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %land.lhs.true.159, %for.body.147
  br label %for.inc

for.inc:                                          ; preds = %if.end.207
  %221 = load i32, i32* %m, align 4
  %inc = add nsw i32 %221, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond.144

for.end:                                          ; preds = %for.cond.144
  %222 = load i32, i32* %currmv_x, align 4
  store i32 %222, i32* %iXMinNow, align 4
  %223 = load i32, i32* %currmv_y, align 4
  store i32 %223, i32* %iYMinNow, align 4
  %224 = load i32, i32* %abort_search, align 4
  %tobool208 = icmp ne i32 %224, 0
  br i1 %tobool208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %for.end
  br label %for.end.213

if.end.210:                                       ; preds = %for.end
  br label %for.inc.211

for.inc.211:                                      ; preds = %if.end.210
  %225 = load i32, i32* %i, align 4
  %inc212 = add nsw i32 %225, 1
  store i32 %inc212, i32* %i, align 4
  br label %for.cond

for.end.213:                                      ; preds = %if.then.209, %for.cond
  %226 = load i32, i32* %currmv_x, align 4
  %conv214 = trunc i32 %226 to i16
  %227 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv214, i16* %227, align 2
  %228 = load i32, i32* %currmv_y, align 4
  %conv215 = trunc i32 %228 to i16
  %229 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv215, i16* %229, align 2
  %230 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %230
}

declare zeroext i16 @FastPelY_14(i16**, i32, i32, i32, i32) #2

declare zeroext i16 @UMVPelY_14(i16**, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @decide_intrabk_SAD() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 6
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 33
  %3 = load i32, i32* %pix_x, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 34
  %5 = load i32, i32* %pix_y, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  store i32 0, i32* @flag_intra_SAD, align 4
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true, %if.then
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 33
  %7 = load i32, i32* %pix_x4, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 33
  %9 = load i32, i32* %pix_x7, align 4
  %shr = ashr i32 %9, 4
  %idxprom = sext i32 %shr to i64
  %10 = load i32*, i32** @flag_intra, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  store i32 %11, i32* @flag_intra_SAD, align 4
  br label %if.end.32

if.else.8:                                        ; preds = %if.else
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 34
  %13 = load i32, i32* %pix_y9, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %if.else.8
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 33
  %15 = load i32, i32* %pix_x12, align 4
  %shr13 = ashr i32 %15, 4
  %sub = sub nsw i32 %shr13, 1
  %idxprom14 = sext i32 %sub to i64
  %16 = load i32*, i32** @flag_intra, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %16, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  store i32 %17, i32* @flag_intra_SAD, align 4
  br label %if.end

if.else.16:                                       ; preds = %if.else.8
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 33
  %19 = load i32, i32* %pix_x17, align 4
  %shr18 = ashr i32 %19, 4
  %idxprom19 = sext i32 %shr18 to i64
  %20 = load i32*, i32** @flag_intra, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %20, i64 %idxprom19
  %21 = load i32, i32* %arrayidx20, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.16
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 33
  %23 = load i32, i32* %pix_x21, align 4
  %shr22 = ashr i32 %23, 4
  %sub23 = sub nsw i32 %shr22, 1
  %idxprom24 = sext i32 %sub23 to i64
  %24 = load i32*, i32** @flag_intra, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %24, i64 %idxprom24
  %25 = load i32, i32* %arrayidx25, align 4
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 33
  %27 = load i32, i32* %pix_x27, align 4
  %shr28 = ashr i32 %27, 4
  %add = add nsw i32 %shr28, 1
  %idxprom29 = sext i32 %add to i64
  %28 = load i32*, i32** @flag_intra, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %28, i64 %idxprom29
  %29 = load i32, i32* %arrayidx30, align 4
  %tobool31 = icmp ne i32 %29, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.else.16
  %30 = phi i1 [ true, %lor.lhs.false ], [ true, %if.else.16 ], [ %tobool31, %lor.rhs ]
  %lor.ext = zext i1 %30 to i32
  store i32 %lor.ext, i32* @flag_intra_SAD, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then.11
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then.6
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.3
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @skip_intrabk_SAD(i32 %best_mode, i32 %ref_max) #0 {
entry:
  %best_mode.addr = alloca i32, align 4
  %ref_max.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ref = alloca i32, align 4
  store i32 %best_mode, i32* %best_mode.addr, align 4
  store i32 %ref_max, i32* %ref_max.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %best_mode.addr, align 4
  %cmp1 = icmp eq i32 %2, 9
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %3 = load i32, i32* %best_mode.addr, align 4
  %cmp2 = icmp eq i32 %3, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %4 = phi i1 [ true, %if.then ], [ %cmp2, %lor.rhs ]
  %cond = select i1 %4, i32 1, i32 0
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 33
  %6 = load i32, i32* %pix_x, align 4
  %shr = ashr i32 %6, 4
  %idxprom = sext i32 %shr to i64
  %7 = load i32*, i32** @flag_intra, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 %cond, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 6
  %9 = load i32, i32* %type, align 4
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %best_mode.addr, align 4
  %cmp4 = icmp eq i32 %10, 9
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load i32, i32* %best_mode.addr, align 4
  %cmp5 = icmp eq i32 %11, 10
  br i1 %cmp5, label %if.then.6, label %if.end.39

if.then.6:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %if.then.6
  %12 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %12, 4
  br i1 %cmp7, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.33, %for.body
  %13 = load i32, i32* %j, align 4
  %cmp9 = icmp slt i32 %13, 4
  br i1 %cmp9, label %for.body.10, label %for.end.35

for.body.10:                                      ; preds = %for.cond.8
  store i32 1, i32* %k, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.30, %for.body.10
  %14 = load i32, i32* %k, align 4
  %cmp12 = icmp slt i32 %14, 8
  br i1 %cmp12, label %for.body.13, label %for.end.32

for.body.13:                                      ; preds = %for.cond.11
  store i32 0, i32* %ref, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %15 = load i32, i32* %ref, align 4
  %16 = load i32, i32* %ref_max.addr, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %17 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i32, i32* %ref, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 34
  %20 = load i32, i32* %pix_y, align 4
  %shr19 = ashr i32 %20, 2
  %21 = load i32, i32* %j, align 4
  %add = add nsw i32 %shr19, %21
  %idxprom20 = sext i32 %add to i64
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 33
  %23 = load i32, i32* %pix_x21, align 4
  %shr22 = ashr i32 %23, 2
  %24 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %shr22, %24
  %idxprom24 = sext i32 %add23 to i64
  %25 = load i32*****, i32****** @all_mincost, align 8
  %arrayidx25 = getelementptr inbounds i32****, i32***** %25, i64 %idxprom24
  %26 = load i32****, i32***** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32***, i32**** %26, i64 %idxprom20
  %27 = load i32***, i32**** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32**, i32*** %27, i64 %idxprom18
  %28 = load i32**, i32*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %28, i64 %idxprom17
  %29 = load i32*, i32** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 0, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %30 = load i32, i32* %ref, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %ref, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %31 = load i32, i32* %k, align 4
  %inc31 = add nsw i32 %31, 1
  store i32 %inc31, i32* %k, align 4
  br label %for.cond.11

for.end.32:                                       ; preds = %for.cond.11
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.32
  %32 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond.8

for.end.35:                                       ; preds = %for.cond.8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.35
  %33 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %33, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %lor.lhs.false, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
