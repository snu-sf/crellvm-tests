; ModuleID = 'weighted_prediction.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@img = external global %struct.ImageParameters*, align 8
@luma_log_weight_denom = external global i32, align 4
@chroma_log_weight_denom = external global i32, align 4
@wp_luma_round = external global i32, align 4
@wp_chroma_round = external global i32, align 4
@listXsize = external global [6 x i32], align 16
@wp_weight = external global i32***, align 8
@wp_offset = external global i32***, align 8
@imgY_org = external global i16**, align 8
@listX = external global [6 x %struct.storable_picture**], align 16
@active_pps = external global %struct.pic_parameter_set_rbsp_t*, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@wbp_weight = external global i32****, align 8

; Function Attrs: nounwind uwtable
define void @estimate_weighting_factor_P_slice(i32 %select_offset) #0 {
entry:
  %select_offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %dc_org = alloca double, align 8
  %index = alloca i32, align 4
  %comp = alloca i32, align 4
  %dc_ref = alloca [15 x double], align 16
  %ref_pic = alloca i16*, align 8
  %ref_pic_w = alloca i16*, align 8
  %default_weight = alloca [3 x i32], align 4
  %list_offset = alloca i32, align 4
  %weight = alloca [2 x [15 x [3 x i32]]], align 16
  %offset = alloca [2 x [15 x [3 x i32]]], align 16
  %clist = alloca i32, align 4
  store i32 %select_offset, i32* %select_offset.addr, align 4
  store double 0.000000e+00, double* %dc_org, align 8
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
  store i32 5, i32* @luma_log_weight_denom, align 4
  store i32 5, i32* @chroma_log_weight_denom, align 4
  %9 = load i32, i32* @luma_log_weight_denom, align 4
  %sub = sub nsw i32 %9, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* @wp_luma_round, align 4
  %10 = load i32, i32* @chroma_log_weight_denom, align 4
  %sub5 = sub nsw i32 %10, 1
  %shl6 = shl i32 1, %sub5
  store i32 %shl6, i32* @wp_chroma_round, align 4
  %11 = load i32, i32* @luma_log_weight_denom, align 4
  %shl7 = shl i32 1, %11
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  store i32 %shl7, i32* %arrayidx8, align 4
  %12 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl9 = shl i32 1, %12
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  store i32 %shl9, i32* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  store i32 %shl9, i32* %arrayidx11, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %cond.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 2, %14
  %cmp = icmp slt i32 %13, %add
  br i1 %cmp, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.48, %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp slt i32 %15, %17
  br i1 %cmp15, label %for.body.16, label %for.end.50

for.body.16:                                      ; preds = %for.cond.12
  store i32 0, i32* %n, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body.16
  %18 = load i32, i32* %n, align 4
  %cmp18 = icmp slt i32 %18, 3
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %19 = load i32, i32* %n, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %21 = load i32, i32* %n, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx25, i32 0, i64 %idxprom23
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx26, i32 0, i64 %idxprom22
  store i32 %20, i32* %arrayidx27, align 4
  %24 = load i32, i32* %n, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  %26 = load i32, i32* %n, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %29 = load i32***, i32**** @wp_weight, align 8
  %arrayidx33 = getelementptr inbounds i32**, i32*** %29, i64 %idxprom32
  %30 = load i32**, i32*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %30, i64 %idxprom31
  %31 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %31, i64 %idxprom30
  store i32 %25, i32* %arrayidx35, align 4
  %32 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %32 to i64
  %33 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %34 to i64
  %35 = load i32***, i32**** @wp_offset, align 8
  %arrayidx39 = getelementptr inbounds i32**, i32*** %35, i64 %idxprom38
  %36 = load i32**, i32*** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %36, i64 %idxprom37
  %37 = load i32*, i32** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %37, i64 %idxprom36
  store i32 0, i32* %arrayidx41, align 4
  %38 = load i32, i32* %n, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %40 to i64
  %arrayidx45 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx45, i32 0, i64 %idxprom43
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx46, i32 0, i64 %idxprom42
  store i32 0, i32* %arrayidx47, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %41 = load i32, i32* %n, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end
  %42 = load i32, i32* %j, align 4
  %inc49 = add nsw i32 %42, 1
  store i32 %inc49, i32* %j, align 4
  br label %for.cond.12

for.end.50:                                       ; preds = %for.cond.12
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %43 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %43, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.68, %for.end.53
  %44 = load i32, i32* %i, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 15
  %46 = load i32, i32* %height, align 4
  %cmp55 = icmp slt i32 %44, %46
  br i1 %cmp55, label %for.body.56, label %for.end.70

for.body.56:                                      ; preds = %for.cond.54
  store i32 0, i32* %j, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.65, %for.body.56
  %47 = load i32, i32* %j, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 13
  %49 = load i32, i32* %width, align 4
  %cmp58 = icmp slt i32 %47, %49
  br i1 %cmp58, label %for.body.59, label %for.end.67

for.body.59:                                      ; preds = %for.cond.57
  %50 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %50 to i64
  %51 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %51 to i64
  %52 = load i16**, i16*** @imgY_org, align 8
  %arrayidx62 = getelementptr inbounds i16*, i16** %52, i64 %idxprom61
  %53 = load i16*, i16** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %53, i64 %idxprom60
  %54 = load i16, i16* %arrayidx63, align 2
  %conv = uitofp i16 %54 to double
  %55 = load double, double* %dc_org, align 8
  %add64 = fadd double %55, %conv
  store double %add64, double* %dc_org, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.59
  %56 = load i32, i32* %j, align 4
  %inc66 = add nsw i32 %56, 1
  store i32 %inc66, i32* %j, align 4
  br label %for.cond.57

for.end.67:                                       ; preds = %for.cond.57
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %57 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %57, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond.54

for.end.70:                                       ; preds = %for.cond.54
  store i32 0, i32* %clist, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.407, %for.end.70
  %58 = load i32, i32* %clist, align 4
  %59 = load i32, i32* %list_offset, align 4
  %add72 = add nsw i32 2, %59
  %cmp73 = icmp slt i32 %58, %add72
  br i1 %cmp73, label %for.body.75, label %for.end.409

for.body.75:                                      ; preds = %for.cond.71
  store i32 0, i32* %n, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.404, %for.body.75
  %60 = load i32, i32* %n, align 4
  %61 = load i32, i32* %clist, align 4
  %idxprom77 = sext i32 %61 to i64
  %arrayidx78 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom77
  %62 = load i32, i32* %arrayidx78, align 4
  %cmp79 = icmp slt i32 %60, %62
  br i1 %cmp79, label %for.body.81, label %for.end.406

for.body.81:                                      ; preds = %for.cond.76
  %63 = load i32, i32* %n, align 4
  %idxprom82 = sext i32 %63 to i64
  %arrayidx83 = getelementptr inbounds [15 x double], [15 x double]* %dc_ref, i32 0, i64 %idxprom82
  store double 0.000000e+00, double* %arrayidx83, align 8
  %64 = load i32, i32* %n, align 4
  %idxprom84 = sext i32 %64 to i64
  %65 = load i32, i32* %clist, align 4
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom85
  %66 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %66, i64 %idxprom84
  %67 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx87, align 8
  %imgY_11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 26
  %68 = load i16*, i16** %imgY_11, align 8
  store i16* %68, i16** %ref_pic, align 8
  %69 = load i32, i32* %n, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load i32, i32* %clist, align 4
  %idxprom89 = sext i32 %70 to i64
  %arrayidx90 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom89
  %71 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %71, i64 %idxprom88
  %72 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx91, align 8
  %imgY_11_w = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 27
  %73 = load i16*, i16** %imgY_11_w, align 8
  store i16* %73, i16** %ref_pic_w, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.104, %for.body.81
  %74 = load i32, i32* %i, align 4
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 15
  %76 = load i32, i32* %height93, align 4
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width94 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 13
  %78 = load i32, i32* %width94, align 4
  %mul = mul nsw i32 %76, %78
  %cmp95 = icmp slt i32 %74, %mul
  br i1 %cmp95, label %for.body.97, label %for.end.106

for.body.97:                                      ; preds = %for.cond.92
  %79 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %79 to i64
  %80 = load i16*, i16** %ref_pic, align 8
  %arrayidx99 = getelementptr inbounds i16, i16* %80, i64 %idxprom98
  %81 = load i16, i16* %arrayidx99, align 2
  %conv100 = uitofp i16 %81 to double
  %82 = load i32, i32* %n, align 4
  %idxprom101 = sext i32 %82 to i64
  %arrayidx102 = getelementptr inbounds [15 x double], [15 x double]* %dc_ref, i32 0, i64 %idxprom101
  %83 = load double, double* %arrayidx102, align 8
  %add103 = fadd double %83, %conv100
  store double %add103, double* %arrayidx102, align 8
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.97
  %84 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %84, 1
  store i32 %inc105, i32* %i, align 4
  br label %for.cond.92

for.end.106:                                      ; preds = %for.cond.92
  %85 = load i32, i32* %select_offset.addr, align 4
  %conv107 = sitofp i32 %85 to double
  %cmp108 = fcmp oeq double %conv107, 0.000000e+00
  br i1 %cmp108, label %if.then, label %if.else.155

if.then:                                          ; preds = %for.end.106
  %86 = load i32, i32* %n, align 4
  %idxprom110 = sext i32 %86 to i64
  %arrayidx111 = getelementptr inbounds [15 x double], [15 x double]* %dc_ref, i32 0, i64 %idxprom110
  %87 = load double, double* %arrayidx111, align 8
  %cmp112 = fcmp une double %87, 0.000000e+00
  br i1 %cmp112, label %if.then.114, label %if.else

if.then.114:                                      ; preds = %if.then
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %88 = load i32, i32* %arrayidx115, align 4
  %conv116 = sitofp i32 %88 to double
  %89 = load double, double* %dc_org, align 8
  %mul117 = fmul double %conv116, %89
  %90 = load i32, i32* %n, align 4
  %idxprom118 = sext i32 %90 to i64
  %arrayidx119 = getelementptr inbounds [15 x double], [15 x double]* %dc_ref, i32 0, i64 %idxprom118
  %91 = load double, double* %arrayidx119, align 8
  %div = fdiv double %mul117, %91
  %add120 = fadd double %div, 5.000000e-01
  %conv121 = fptosi double %add120 to i32
  %92 = load i32, i32* %n, align 4
  %idxprom122 = sext i32 %92 to i64
  %93 = load i32, i32* %clist, align 4
  %idxprom123 = sext i32 %93 to i64
  %arrayidx124 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom123
  %arrayidx125 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx124, i32 0, i64 %idxprom122
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx125, i32 0, i64 0
  store i32 %conv121, i32* %arrayidx126, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %94 = load i32, i32* %arrayidx127, align 4
  %95 = load i32, i32* %n, align 4
  %idxprom128 = sext i32 %95 to i64
  %96 = load i32, i32* %clist, align 4
  %idxprom129 = sext i32 %96 to i64
  %arrayidx130 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx130, i32 0, i64 %idxprom128
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx131, i32 0, i64 0
  store i32 %94, i32* %arrayidx132, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.114
  %97 = load i32, i32* %n, align 4
  %idxprom133 = sext i32 %97 to i64
  %98 = load i32, i32* %clist, align 4
  %idxprom134 = sext i32 %98 to i64
  %arrayidx135 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom134
  %arrayidx136 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx135, i32 0, i64 %idxprom133
  %arrayidx137 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx136, i32 0, i64 0
  %99 = load i32, i32* %arrayidx137, align 4
  %cmp138 = icmp slt i32 %99, -64
  br i1 %cmp138, label %if.then.147, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %100 = load i32, i32* %n, align 4
  %idxprom140 = sext i32 %100 to i64
  %101 = load i32, i32* %clist, align 4
  %idxprom141 = sext i32 %101 to i64
  %arrayidx142 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom141
  %arrayidx143 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx142, i32 0, i64 %idxprom140
  %arrayidx144 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx143, i32 0, i64 0
  %102 = load i32, i32* %arrayidx144, align 4
  %cmp145 = icmp sgt i32 %102, 127
  br i1 %cmp145, label %if.then.147, label %if.end.154

if.then.147:                                      ; preds = %lor.lhs.false, %if.end
  %arrayidx148 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %103 = load i32, i32* %arrayidx148, align 4
  %104 = load i32, i32* %n, align 4
  %idxprom149 = sext i32 %104 to i64
  %105 = load i32, i32* %clist, align 4
  %idxprom150 = sext i32 %105 to i64
  %arrayidx151 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom150
  %arrayidx152 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx151, i32 0, i64 %idxprom149
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx152, i32 0, i64 0
  store i32 %103, i32* %arrayidx153, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.147, %lor.lhs.false
  br label %if.end.209

if.else.155:                                      ; preds = %for.end.106
  %106 = load double, double* %dc_org, align 8
  %107 = load i32, i32* %n, align 4
  %idxprom156 = sext i32 %107 to i64
  %arrayidx157 = getelementptr inbounds [15 x double], [15 x double]* %dc_ref, i32 0, i64 %idxprom156
  %108 = load double, double* %arrayidx157, align 8
  %sub158 = fsub double %106, %108
  %109 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height159 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %109, i32 0, i32 15
  %110 = load i32, i32* %height159, align 4
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width160 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 13
  %112 = load i32, i32* %width160, align 4
  %mul161 = mul nsw i32 %110, %112
  %conv162 = sitofp i32 %mul161 to double
  %div163 = fdiv double %sub158, %conv162
  %add164 = fadd double %div163, 5.000000e-01
  %conv165 = fptosi double %add164 to i32
  %113 = load i32, i32* %n, align 4
  %idxprom166 = sext i32 %113 to i64
  %114 = load i32, i32* %clist, align 4
  %idxprom167 = sext i32 %114 to i64
  %arrayidx168 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom167
  %arrayidx169 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx168, i32 0, i64 %idxprom166
  %arrayidx170 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx169, i32 0, i64 0
  store i32 %conv165, i32* %arrayidx170, align 4
  %115 = load i32, i32* %n, align 4
  %idxprom171 = sext i32 %115 to i64
  %116 = load i32, i32* %clist, align 4
  %idxprom172 = sext i32 %116 to i64
  %arrayidx173 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom172
  %arrayidx174 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx173, i32 0, i64 %idxprom171
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx174, i32 0, i64 0
  %117 = load i32, i32* %arrayidx175, align 4
  %cmp176 = icmp slt i32 %117, -128
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %if.else.155
  br label %cond.end.196

cond.false.179:                                   ; preds = %if.else.155
  %118 = load i32, i32* %n, align 4
  %idxprom180 = sext i32 %118 to i64
  %119 = load i32, i32* %clist, align 4
  %idxprom181 = sext i32 %119 to i64
  %arrayidx182 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom181
  %arrayidx183 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx182, i32 0, i64 %idxprom180
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx183, i32 0, i64 0
  %120 = load i32, i32* %arrayidx184, align 4
  %cmp185 = icmp sgt i32 %120, 127
  br i1 %cmp185, label %cond.true.187, label %cond.false.188

cond.true.187:                                    ; preds = %cond.false.179
  br label %cond.end.194

cond.false.188:                                   ; preds = %cond.false.179
  %121 = load i32, i32* %n, align 4
  %idxprom189 = sext i32 %121 to i64
  %122 = load i32, i32* %clist, align 4
  %idxprom190 = sext i32 %122 to i64
  %arrayidx191 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom190
  %arrayidx192 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx191, i32 0, i64 %idxprom189
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx192, i32 0, i64 0
  %123 = load i32, i32* %arrayidx193, align 4
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.188, %cond.true.187
  %cond195 = phi i32 [ 127, %cond.true.187 ], [ %123, %cond.false.188 ]
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.end.194, %cond.true.178
  %cond197 = phi i32 [ -128, %cond.true.178 ], [ %cond195, %cond.end.194 ]
  %124 = load i32, i32* %n, align 4
  %idxprom198 = sext i32 %124 to i64
  %125 = load i32, i32* %clist, align 4
  %idxprom199 = sext i32 %125 to i64
  %arrayidx200 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom199
  %arrayidx201 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx200, i32 0, i64 %idxprom198
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx201, i32 0, i64 0
  store i32 %cond197, i32* %arrayidx202, align 4
  %arrayidx203 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %126 = load i32, i32* %arrayidx203, align 4
  %127 = load i32, i32* %n, align 4
  %idxprom204 = sext i32 %127 to i64
  %128 = load i32, i32* %clist, align 4
  %idxprom205 = sext i32 %128 to i64
  %arrayidx206 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom205
  %arrayidx207 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx206, i32 0, i64 %idxprom204
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx207, i32 0, i64 0
  store i32 %126, i32* %arrayidx208, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %cond.end.196, %if.end.154
  %arrayidx210 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  %129 = load i32, i32* %arrayidx210, align 4
  %130 = load i32, i32* %n, align 4
  %idxprom211 = sext i32 %130 to i64
  %131 = load i32, i32* %clist, align 4
  %idxprom212 = sext i32 %131 to i64
  %arrayidx213 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom212
  %arrayidx214 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx213, i32 0, i64 %idxprom211
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx214, i32 0, i64 1
  store i32 %129, i32* %arrayidx215, align 4
  %arrayidx216 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  %132 = load i32, i32* %arrayidx216, align 4
  %133 = load i32, i32* %n, align 4
  %idxprom217 = sext i32 %133 to i64
  %134 = load i32, i32* %clist, align 4
  %idxprom218 = sext i32 %134 to i64
  %arrayidx219 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom218
  %arrayidx220 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx219, i32 0, i64 %idxprom217
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx220, i32 0, i64 2
  store i32 %132, i32* %arrayidx221, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.295, %if.end.209
  %135 = load i32, i32* %i, align 4
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height223 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 15
  %137 = load i32, i32* %height223, align 4
  %138 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width224 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %138, i32 0, i32 13
  %139 = load i32, i32* %width224, align 4
  %mul225 = mul nsw i32 %137, %139
  %cmp226 = icmp slt i32 %135, %mul225
  br i1 %cmp226, label %for.body.228, label %for.end.297

for.body.228:                                     ; preds = %for.cond.222
  %140 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %140 to i64
  %141 = load i16*, i16** %ref_pic, align 8
  %arrayidx230 = getelementptr inbounds i16, i16* %141, i64 %idxprom229
  %142 = load i16, i16* %arrayidx230, align 2
  %conv231 = zext i16 %142 to i32
  %143 = load i32, i32* %n, align 4
  %idxprom232 = sext i32 %143 to i64
  %144 = load i32, i32* %clist, align 4
  %idxprom233 = sext i32 %144 to i64
  %arrayidx234 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx234, i32 0, i64 %idxprom232
  %arrayidx236 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx235, i32 0, i64 0
  %145 = load i32, i32* %arrayidx236, align 4
  %mul237 = mul nsw i32 %conv231, %145
  %146 = load i32, i32* @wp_luma_round, align 4
  %add238 = add nsw i32 %mul237, %146
  %147 = load i32, i32* @luma_log_weight_denom, align 4
  %shr = ashr i32 %add238, %147
  %148 = load i32, i32* %n, align 4
  %idxprom239 = sext i32 %148 to i64
  %149 = load i32, i32* %clist, align 4
  %idxprom240 = sext i32 %149 to i64
  %arrayidx241 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom240
  %arrayidx242 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx241, i32 0, i64 %idxprom239
  %arrayidx243 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx242, i32 0, i64 0
  %150 = load i32, i32* %arrayidx243, align 4
  %add244 = add nsw i32 %shr, %150
  %cmp245 = icmp slt i32 %add244, 0
  br i1 %cmp245, label %cond.true.247, label %cond.false.248

cond.true.247:                                    ; preds = %for.body.228
  br label %cond.end.290

cond.false.248:                                   ; preds = %for.body.228
  %151 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %151 to i64
  %152 = load i16*, i16** %ref_pic, align 8
  %arrayidx250 = getelementptr inbounds i16, i16* %152, i64 %idxprom249
  %153 = load i16, i16* %arrayidx250, align 2
  %conv251 = zext i16 %153 to i32
  %154 = load i32, i32* %n, align 4
  %idxprom252 = sext i32 %154 to i64
  %155 = load i32, i32* %clist, align 4
  %idxprom253 = sext i32 %155 to i64
  %arrayidx254 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom253
  %arrayidx255 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx254, i32 0, i64 %idxprom252
  %arrayidx256 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx255, i32 0, i64 0
  %156 = load i32, i32* %arrayidx256, align 4
  %mul257 = mul nsw i32 %conv251, %156
  %157 = load i32, i32* @wp_luma_round, align 4
  %add258 = add nsw i32 %mul257, %157
  %158 = load i32, i32* @luma_log_weight_denom, align 4
  %shr259 = ashr i32 %add258, %158
  %159 = load i32, i32* %n, align 4
  %idxprom260 = sext i32 %159 to i64
  %160 = load i32, i32* %clist, align 4
  %idxprom261 = sext i32 %160 to i64
  %arrayidx262 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx262, i32 0, i64 %idxprom260
  %arrayidx264 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx263, i32 0, i64 0
  %161 = load i32, i32* %arrayidx264, align 4
  %add265 = add nsw i32 %shr259, %161
  %162 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %162, i32 0, i32 155
  %163 = load i32, i32* %max_imgpel_value, align 4
  %cmp266 = icmp sgt i32 %add265, %163
  br i1 %cmp266, label %cond.true.268, label %cond.false.270

cond.true.268:                                    ; preds = %cond.false.248
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value269 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 155
  %165 = load i32, i32* %max_imgpel_value269, align 4
  br label %cond.end.288

cond.false.270:                                   ; preds = %cond.false.248
  %166 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %166 to i64
  %167 = load i16*, i16** %ref_pic, align 8
  %arrayidx272 = getelementptr inbounds i16, i16* %167, i64 %idxprom271
  %168 = load i16, i16* %arrayidx272, align 2
  %conv273 = zext i16 %168 to i32
  %169 = load i32, i32* %n, align 4
  %idxprom274 = sext i32 %169 to i64
  %170 = load i32, i32* %clist, align 4
  %idxprom275 = sext i32 %170 to i64
  %arrayidx276 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom275
  %arrayidx277 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx276, i32 0, i64 %idxprom274
  %arrayidx278 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx277, i32 0, i64 0
  %171 = load i32, i32* %arrayidx278, align 4
  %mul279 = mul nsw i32 %conv273, %171
  %172 = load i32, i32* @wp_luma_round, align 4
  %add280 = add nsw i32 %mul279, %172
  %173 = load i32, i32* @luma_log_weight_denom, align 4
  %shr281 = ashr i32 %add280, %173
  %174 = load i32, i32* %n, align 4
  %idxprom282 = sext i32 %174 to i64
  %175 = load i32, i32* %clist, align 4
  %idxprom283 = sext i32 %175 to i64
  %arrayidx284 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom283
  %arrayidx285 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx284, i32 0, i64 %idxprom282
  %arrayidx286 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx285, i32 0, i64 0
  %176 = load i32, i32* %arrayidx286, align 4
  %add287 = add nsw i32 %shr281, %176
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.270, %cond.true.268
  %cond289 = phi i32 [ %165, %cond.true.268 ], [ %add287, %cond.false.270 ]
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.end.288, %cond.true.247
  %cond291 = phi i32 [ 0, %cond.true.247 ], [ %cond289, %cond.end.288 ]
  %conv292 = trunc i32 %cond291 to i16
  %177 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %177 to i64
  %178 = load i16*, i16** %ref_pic_w, align 8
  %arrayidx294 = getelementptr inbounds i16, i16* %178, i64 %idxprom293
  store i16 %conv292, i16* %arrayidx294, align 2
  br label %for.inc.295

for.inc.295:                                      ; preds = %cond.end.290
  %179 = load i32, i32* %i, align 4
  %inc296 = add nsw i32 %179, 1
  store i32 %inc296, i32* %i, align 4
  br label %for.cond.222

for.end.297:                                      ; preds = %for.cond.222
  store i32 0, i32* %i, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.401, %for.end.297
  %180 = load i32, i32* %i, align 4
  %181 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height299 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %181, i32 0, i32 15
  %182 = load i32, i32* %height299, align 4
  %add300 = add nsw i32 %182, 8
  %mul301 = mul nsw i32 4, %add300
  %cmp302 = icmp slt i32 %180, %mul301
  br i1 %cmp302, label %for.body.304, label %for.end.403

for.body.304:                                     ; preds = %for.cond.298
  store i32 0, i32* %j, align 4
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.398, %for.body.304
  %183 = load i32, i32* %j, align 4
  %184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width306 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %184, i32 0, i32 13
  %185 = load i32, i32* %width306, align 4
  %add307 = add nsw i32 %185, 8
  %mul308 = mul nsw i32 4, %add307
  %cmp309 = icmp slt i32 %183, %mul308
  br i1 %cmp309, label %for.body.311, label %for.end.400

for.body.311:                                     ; preds = %for.cond.305
  %186 = load i32, i32* %j, align 4
  %idxprom312 = sext i32 %186 to i64
  %187 = load i32, i32* %i, align 4
  %idxprom313 = sext i32 %187 to i64
  %188 = load i32, i32* %n, align 4
  %idxprom314 = sext i32 %188 to i64
  %189 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx315 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %189, i64 %idxprom314
  %190 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx315, align 8
  %imgY_ups = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %190, i32 0, i32 28
  %191 = load i16**, i16*** %imgY_ups, align 8
  %arrayidx316 = getelementptr inbounds i16*, i16** %191, i64 %idxprom313
  %192 = load i16*, i16** %arrayidx316, align 8
  %arrayidx317 = getelementptr inbounds i16, i16* %192, i64 %idxprom312
  %193 = load i16, i16* %arrayidx317, align 2
  %conv318 = zext i16 %193 to i32
  %194 = load i32, i32* %n, align 4
  %idxprom319 = sext i32 %194 to i64
  %195 = load i32, i32* %clist, align 4
  %idxprom320 = sext i32 %195 to i64
  %arrayidx321 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom320
  %arrayidx322 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx321, i32 0, i64 %idxprom319
  %arrayidx323 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx322, i32 0, i64 0
  %196 = load i32, i32* %arrayidx323, align 4
  %mul324 = mul nsw i32 %conv318, %196
  %197 = load i32, i32* @wp_luma_round, align 4
  %add325 = add nsw i32 %mul324, %197
  %198 = load i32, i32* @luma_log_weight_denom, align 4
  %shr326 = ashr i32 %add325, %198
  %199 = load i32, i32* %n, align 4
  %idxprom327 = sext i32 %199 to i64
  %200 = load i32, i32* %clist, align 4
  %idxprom328 = sext i32 %200 to i64
  %arrayidx329 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom328
  %arrayidx330 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx329, i32 0, i64 %idxprom327
  %arrayidx331 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx330, i32 0, i64 0
  %201 = load i32, i32* %arrayidx331, align 4
  %add332 = add nsw i32 %shr326, %201
  %cmp333 = icmp slt i32 %add332, 0
  br i1 %cmp333, label %cond.true.335, label %cond.false.336

cond.true.335:                                    ; preds = %for.body.311
  br label %cond.end.389

cond.false.336:                                   ; preds = %for.body.311
  %202 = load i32, i32* %j, align 4
  %idxprom337 = sext i32 %202 to i64
  %203 = load i32, i32* %i, align 4
  %idxprom338 = sext i32 %203 to i64
  %204 = load i32, i32* %n, align 4
  %idxprom339 = sext i32 %204 to i64
  %205 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx340 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %205, i64 %idxprom339
  %206 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx340, align 8
  %imgY_ups341 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %206, i32 0, i32 28
  %207 = load i16**, i16*** %imgY_ups341, align 8
  %arrayidx342 = getelementptr inbounds i16*, i16** %207, i64 %idxprom338
  %208 = load i16*, i16** %arrayidx342, align 8
  %arrayidx343 = getelementptr inbounds i16, i16* %208, i64 %idxprom337
  %209 = load i16, i16* %arrayidx343, align 2
  %conv344 = zext i16 %209 to i32
  %210 = load i32, i32* %n, align 4
  %idxprom345 = sext i32 %210 to i64
  %211 = load i32, i32* %clist, align 4
  %idxprom346 = sext i32 %211 to i64
  %arrayidx347 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom346
  %arrayidx348 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx347, i32 0, i64 %idxprom345
  %arrayidx349 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx348, i32 0, i64 0
  %212 = load i32, i32* %arrayidx349, align 4
  %mul350 = mul nsw i32 %conv344, %212
  %213 = load i32, i32* @wp_luma_round, align 4
  %add351 = add nsw i32 %mul350, %213
  %214 = load i32, i32* @luma_log_weight_denom, align 4
  %shr352 = ashr i32 %add351, %214
  %215 = load i32, i32* %n, align 4
  %idxprom353 = sext i32 %215 to i64
  %216 = load i32, i32* %clist, align 4
  %idxprom354 = sext i32 %216 to i64
  %arrayidx355 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom354
  %arrayidx356 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx355, i32 0, i64 %idxprom353
  %arrayidx357 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx356, i32 0, i64 0
  %217 = load i32, i32* %arrayidx357, align 4
  %add358 = add nsw i32 %shr352, %217
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value359 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 155
  %219 = load i32, i32* %max_imgpel_value359, align 4
  %cmp360 = icmp sgt i32 %add358, %219
  br i1 %cmp360, label %cond.true.362, label %cond.false.364

cond.true.362:                                    ; preds = %cond.false.336
  %220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value363 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %220, i32 0, i32 155
  %221 = load i32, i32* %max_imgpel_value363, align 4
  br label %cond.end.387

cond.false.364:                                   ; preds = %cond.false.336
  %222 = load i32, i32* %j, align 4
  %idxprom365 = sext i32 %222 to i64
  %223 = load i32, i32* %i, align 4
  %idxprom366 = sext i32 %223 to i64
  %224 = load i32, i32* %n, align 4
  %idxprom367 = sext i32 %224 to i64
  %225 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx368 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %225, i64 %idxprom367
  %226 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx368, align 8
  %imgY_ups369 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %226, i32 0, i32 28
  %227 = load i16**, i16*** %imgY_ups369, align 8
  %arrayidx370 = getelementptr inbounds i16*, i16** %227, i64 %idxprom366
  %228 = load i16*, i16** %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds i16, i16* %228, i64 %idxprom365
  %229 = load i16, i16* %arrayidx371, align 2
  %conv372 = zext i16 %229 to i32
  %230 = load i32, i32* %n, align 4
  %idxprom373 = sext i32 %230 to i64
  %231 = load i32, i32* %clist, align 4
  %idxprom374 = sext i32 %231 to i64
  %arrayidx375 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom374
  %arrayidx376 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx375, i32 0, i64 %idxprom373
  %arrayidx377 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx376, i32 0, i64 0
  %232 = load i32, i32* %arrayidx377, align 4
  %mul378 = mul nsw i32 %conv372, %232
  %233 = load i32, i32* @wp_luma_round, align 4
  %add379 = add nsw i32 %mul378, %233
  %234 = load i32, i32* @luma_log_weight_denom, align 4
  %shr380 = ashr i32 %add379, %234
  %235 = load i32, i32* %n, align 4
  %idxprom381 = sext i32 %235 to i64
  %236 = load i32, i32* %clist, align 4
  %idxprom382 = sext i32 %236 to i64
  %arrayidx383 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom382
  %arrayidx384 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx383, i32 0, i64 %idxprom381
  %arrayidx385 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx384, i32 0, i64 0
  %237 = load i32, i32* %arrayidx385, align 4
  %add386 = add nsw i32 %shr380, %237
  br label %cond.end.387

cond.end.387:                                     ; preds = %cond.false.364, %cond.true.362
  %cond388 = phi i32 [ %221, %cond.true.362 ], [ %add386, %cond.false.364 ]
  br label %cond.end.389

cond.end.389:                                     ; preds = %cond.end.387, %cond.true.335
  %cond390 = phi i32 [ 0, %cond.true.335 ], [ %cond388, %cond.end.387 ]
  %conv391 = trunc i32 %cond390 to i16
  %238 = load i32, i32* %j, align 4
  %idxprom392 = sext i32 %238 to i64
  %239 = load i32, i32* %i, align 4
  %idxprom393 = sext i32 %239 to i64
  %240 = load i32, i32* %n, align 4
  %idxprom394 = sext i32 %240 to i64
  %241 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx395 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %241, i64 %idxprom394
  %242 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx395, align 8
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %242, i32 0, i32 29
  %243 = load i16**, i16*** %imgY_ups_w, align 8
  %arrayidx396 = getelementptr inbounds i16*, i16** %243, i64 %idxprom393
  %244 = load i16*, i16** %arrayidx396, align 8
  %arrayidx397 = getelementptr inbounds i16, i16* %244, i64 %idxprom392
  store i16 %conv391, i16* %arrayidx397, align 2
  br label %for.inc.398

for.inc.398:                                      ; preds = %cond.end.389
  %245 = load i32, i32* %j, align 4
  %inc399 = add nsw i32 %245, 1
  store i32 %inc399, i32* %j, align 4
  br label %for.cond.305

for.end.400:                                      ; preds = %for.cond.305
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.end.400
  %246 = load i32, i32* %i, align 4
  %inc402 = add nsw i32 %246, 1
  store i32 %inc402, i32* %i, align 4
  br label %for.cond.298

for.end.403:                                      ; preds = %for.cond.298
  br label %for.inc.404

for.inc.404:                                      ; preds = %for.end.403
  %247 = load i32, i32* %n, align 4
  %inc405 = add nsw i32 %247, 1
  store i32 %inc405, i32* %n, align 4
  br label %for.cond.76

for.end.406:                                      ; preds = %for.cond.76
  br label %for.inc.407

for.inc.407:                                      ; preds = %for.end.406
  %248 = load i32, i32* %clist, align 4
  %inc408 = add nsw i32 %248, 1
  store i32 %inc408, i32* %clist, align 4
  br label %for.cond.71

for.end.409:                                      ; preds = %for.cond.71
  store i32 0, i32* %clist, align 4
  br label %for.cond.410

for.cond.410:                                     ; preds = %for.inc.455, %for.end.409
  %249 = load i32, i32* %clist, align 4
  %250 = load i32, i32* %list_offset, align 4
  %add411 = add nsw i32 2, %250
  %cmp412 = icmp slt i32 %249, %add411
  br i1 %cmp412, label %for.body.414, label %for.end.457

for.body.414:                                     ; preds = %for.cond.410
  store i32 0, i32* %index, align 4
  br label %for.cond.415

for.cond.415:                                     ; preds = %for.inc.452, %for.body.414
  %251 = load i32, i32* %index, align 4
  %252 = load i32, i32* %clist, align 4
  %idxprom416 = sext i32 %252 to i64
  %arrayidx417 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom416
  %253 = load i32, i32* %arrayidx417, align 4
  %cmp418 = icmp slt i32 %251, %253
  br i1 %cmp418, label %for.body.420, label %for.end.454

for.body.420:                                     ; preds = %for.cond.415
  store i32 0, i32* %comp, align 4
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.449, %for.body.420
  %254 = load i32, i32* %comp, align 4
  %cmp422 = icmp slt i32 %254, 3
  br i1 %cmp422, label %for.body.424, label %for.end.451

for.body.424:                                     ; preds = %for.cond.421
  %255 = load i32, i32* %comp, align 4
  %idxprom425 = sext i32 %255 to i64
  %256 = load i32, i32* %index, align 4
  %idxprom426 = sext i32 %256 to i64
  %257 = load i32, i32* %clist, align 4
  %idxprom427 = sext i32 %257 to i64
  %arrayidx428 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom427
  %arrayidx429 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx428, i32 0, i64 %idxprom426
  %arrayidx430 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx429, i32 0, i64 %idxprom425
  %258 = load i32, i32* %arrayidx430, align 4
  %259 = load i32, i32* %comp, align 4
  %idxprom431 = sext i32 %259 to i64
  %260 = load i32, i32* %index, align 4
  %idxprom432 = sext i32 %260 to i64
  %261 = load i32, i32* %clist, align 4
  %idxprom433 = sext i32 %261 to i64
  %262 = load i32***, i32**** @wp_weight, align 8
  %arrayidx434 = getelementptr inbounds i32**, i32*** %262, i64 %idxprom433
  %263 = load i32**, i32*** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds i32*, i32** %263, i64 %idxprom432
  %264 = load i32*, i32** %arrayidx435, align 8
  %arrayidx436 = getelementptr inbounds i32, i32* %264, i64 %idxprom431
  store i32 %258, i32* %arrayidx436, align 4
  %265 = load i32, i32* %comp, align 4
  %idxprom437 = sext i32 %265 to i64
  %266 = load i32, i32* %index, align 4
  %idxprom438 = sext i32 %266 to i64
  %267 = load i32, i32* %clist, align 4
  %idxprom439 = sext i32 %267 to i64
  %arrayidx440 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom439
  %arrayidx441 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx440, i32 0, i64 %idxprom438
  %arrayidx442 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx441, i32 0, i64 %idxprom437
  %268 = load i32, i32* %arrayidx442, align 4
  %269 = load i32, i32* %comp, align 4
  %idxprom443 = sext i32 %269 to i64
  %270 = load i32, i32* %index, align 4
  %idxprom444 = sext i32 %270 to i64
  %271 = load i32, i32* %clist, align 4
  %idxprom445 = sext i32 %271 to i64
  %272 = load i32***, i32**** @wp_offset, align 8
  %arrayidx446 = getelementptr inbounds i32**, i32*** %272, i64 %idxprom445
  %273 = load i32**, i32*** %arrayidx446, align 8
  %arrayidx447 = getelementptr inbounds i32*, i32** %273, i64 %idxprom444
  %274 = load i32*, i32** %arrayidx447, align 8
  %arrayidx448 = getelementptr inbounds i32, i32* %274, i64 %idxprom443
  store i32 %268, i32* %arrayidx448, align 4
  br label %for.inc.449

for.inc.449:                                      ; preds = %for.body.424
  %275 = load i32, i32* %comp, align 4
  %inc450 = add nsw i32 %275, 1
  store i32 %inc450, i32* %comp, align 4
  br label %for.cond.421

for.end.451:                                      ; preds = %for.cond.421
  br label %for.inc.452

for.inc.452:                                      ; preds = %for.end.451
  %276 = load i32, i32* %index, align 4
  %inc453 = add nsw i32 %276, 1
  store i32 %inc453, i32* %index, align 4
  br label %for.cond.415

for.end.454:                                      ; preds = %for.cond.415
  br label %for.inc.455

for.inc.455:                                      ; preds = %for.end.454
  %277 = load i32, i32* %clist, align 4
  %inc456 = add nsw i32 %277, 1
  store i32 %inc456, i32* %clist, align 4
  br label %for.cond.410

for.end.457:                                      ; preds = %for.cond.410
  ret void
}

; Function Attrs: nounwind uwtable
define void @estimate_weighting_factor_B_slice() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %tx = alloca i32, align 4
  %DistScaleFactor = alloca i32, align 4
  %dc_org = alloca double, align 8
  %index = alloca i32, align 4
  %comp = alloca i32, align 4
  %dc_ref = alloca [6 x [15 x double]], align 16
  %log_weight_denom = alloca i32, align 4
  %ref_pic = alloca i16*, align 8
  %ref_pic_w = alloca i16*, align 8
  %default_weight = alloca [3 x i32], align 4
  %list_offset = alloca i32, align 4
  %weight = alloca [6 x [15 x [3 x i32]]], align 16
  %offset = alloca [6 x [15 x [3 x i32]]], align 16
  %im_weight = alloca [6 x [15 x [15 x [3 x i32]]]], align 16
  %im_offset = alloca [6 x [15 x [15 x [3 x i32]]]], align 16
  %clist = alloca i32, align 4
  %wf_weight = alloca i32, align 4
  %wf_offset = alloca i32, align 4
  %td = alloca i32, align 4
  %tb = alloca i32, align 4
  store double 0.000000e+00, double* %dc_org, align 8
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
  %9 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %9, i32 0, i32 20
  %10 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i32 5, i32* @luma_log_weight_denom, align 4
  store i32 5, i32* @chroma_log_weight_denom, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 6, i32* @luma_log_weight_denom, align 4
  store i32 6, i32* @chroma_log_weight_denom, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* @luma_log_weight_denom, align 4
  %sub = sub nsw i32 %11, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* @wp_luma_round, align 4
  %12 = load i32, i32* @chroma_log_weight_denom, align 4
  %sub5 = sub nsw i32 %12, 1
  %shl6 = shl i32 1, %sub5
  store i32 %shl6, i32* @wp_chroma_round, align 4
  %13 = load i32, i32* @luma_log_weight_denom, align 4
  %shl7 = shl i32 1, %13
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  store i32 %shl7, i32* %arrayidx8, align 4
  %14 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl9 = shl i32 1, %14
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  store i32 %shl9, i32* %arrayidx10, align 4
  %15 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl11 = shl i32 1, %15
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  store i32 %shl11, i32* %arrayidx12, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %if.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 2, %17
  %cmp13 = icmp slt i32 %16, %add
  br i1 %cmp13, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.50, %for.body
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom15
  %20 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp slt i32 %18, %20
  br i1 %cmp17, label %for.body.18, label %for.end.52

for.body.18:                                      ; preds = %for.cond.14
  store i32 0, i32* %n, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body.18
  %21 = load i32, i32* %n, align 4
  %cmp20 = icmp slt i32 %21, 3
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %22 = load i32, i32* %n, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom22
  %23 = load i32, i32* %arrayidx23, align 4
  %24 = load i32, i32* %n, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load i32***, i32**** @wp_weight, align 8
  %arrayidx27 = getelementptr inbounds i32**, i32*** %27, i64 %idxprom26
  %28 = load i32**, i32*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %28, i64 %idxprom25
  %29 = load i32*, i32** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %29, i64 %idxprom24
  store i32 %23, i32* %arrayidx29, align 4
  %30 = load i32, i32* %n, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load i32***, i32**** @wp_offset, align 8
  %arrayidx33 = getelementptr inbounds i32**, i32*** %33, i64 %idxprom32
  %34 = load i32**, i32*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %34, i64 %idxprom31
  %35 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %35, i64 %idxprom30
  store i32 0, i32* %arrayidx35, align 4
  %36 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %38 to i64
  %arrayidx39 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx39, i32 0, i64 %idxprom37
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx40, i32 0, i64 %idxprom36
  store i32 0, i32* %arrayidx41, align 4
  %39 = load i32, i32* %n, align 4
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom42
  %40 = load i32, i32* %arrayidx43, align 4
  %41 = load i32, i32* %n, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %43 to i64
  %arrayidx47 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx47, i32 0, i64 %idxprom45
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx48, i32 0, i64 %idxprom44
  store i32 %40, i32* %arrayidx49, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %44 = load i32, i32* %n, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %45 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %45, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.14

for.end.52:                                       ; preds = %for.cond.14
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %46 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %46, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.245, %for.end.55
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp57 = icmp slt i32 %47, %48
  br i1 %cmp57, label %for.body.58, label %for.end.247

for.body.58:                                      ; preds = %for.cond.56
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.242, %for.body.58
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp60 = icmp slt i32 %49, %50
  br i1 %cmp60, label %for.body.61, label %for.end.244

for.body.61:                                      ; preds = %for.cond.59
  %51 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %51 to i64
  %52 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx63 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %52, i64 %idxprom62
  %53 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx63, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 1
  %54 = load i32, i32* %poc, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %55 to i64
  %56 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx65 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %56, i64 %idxprom64
  %57 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx65, align 8
  %poc66 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 1
  %58 = load i32, i32* %poc66, align 4
  %sub67 = sub nsw i32 %54, %58
  %cmp68 = icmp slt i32 %sub67, -128
  br i1 %cmp68, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %for.body.61
  br label %cond.end.90

cond.false.70:                                    ; preds = %for.body.61
  %59 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %59 to i64
  %60 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx72 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %60, i64 %idxprom71
  %61 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx72, align 8
  %poc73 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %61, i32 0, i32 1
  %62 = load i32, i32* %poc73, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %63 to i64
  %64 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx75 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %64, i64 %idxprom74
  %65 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx75, align 8
  %poc76 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %65, i32 0, i32 1
  %66 = load i32, i32* %poc76, align 4
  %sub77 = sub nsw i32 %62, %66
  %cmp78 = icmp sgt i32 %sub77, 127
  br i1 %cmp78, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.false.70
  br label %cond.end.88

cond.false.80:                                    ; preds = %cond.false.70
  %67 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %67 to i64
  %68 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx82 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %68, i64 %idxprom81
  %69 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx82, align 8
  %poc83 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %69, i32 0, i32 1
  %70 = load i32, i32* %poc83, align 4
  %71 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %71 to i64
  %72 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx85 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %72, i64 %idxprom84
  %73 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx85, align 8
  %poc86 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %73, i32 0, i32 1
  %74 = load i32, i32* %poc86, align 4
  %sub87 = sub nsw i32 %70, %74
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.80, %cond.true.79
  %cond89 = phi i32 [ 127, %cond.true.79 ], [ %sub87, %cond.false.80 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.69
  %cond91 = phi i32 [ -128, %cond.true.69 ], [ %cond89, %cond.end.88 ]
  store i32 %cond91, i32* %td, align 4
  %75 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc92 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 1
  %76 = load i32, i32* %poc92, align 4
  %77 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %77 to i64
  %78 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx94 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %78, i64 %idxprom93
  %79 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx94, align 8
  %poc95 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %79, i32 0, i32 1
  %80 = load i32, i32* %poc95, align 4
  %sub96 = sub nsw i32 %76, %80
  %cmp97 = icmp slt i32 %sub96, -128
  br i1 %cmp97, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.end.90
  br label %cond.end.115

cond.false.99:                                    ; preds = %cond.end.90
  %81 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc100 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %81, i32 0, i32 1
  %82 = load i32, i32* %poc100, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %83 to i64
  %84 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx102 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %84, i64 %idxprom101
  %85 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx102, align 8
  %poc103 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %85, i32 0, i32 1
  %86 = load i32, i32* %poc103, align 4
  %sub104 = sub nsw i32 %82, %86
  %cmp105 = icmp sgt i32 %sub104, 127
  br i1 %cmp105, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %cond.false.99
  br label %cond.end.113

cond.false.107:                                   ; preds = %cond.false.99
  %87 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc108 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %87, i32 0, i32 1
  %88 = load i32, i32* %poc108, align 4
  %89 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %89 to i64
  %90 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx110 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %90, i64 %idxprom109
  %91 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx110, align 8
  %poc111 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %91, i32 0, i32 1
  %92 = load i32, i32* %poc111, align 4
  %sub112 = sub nsw i32 %88, %92
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.107, %cond.true.106
  %cond114 = phi i32 [ 127, %cond.true.106 ], [ %sub112, %cond.false.107 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.true.98
  %cond116 = phi i32 [ -128, %cond.true.98 ], [ %cond114, %cond.end.113 ]
  store i32 %cond116, i32* %tb, align 4
  store i32 0, i32* %comp, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.239, %cond.end.115
  %93 = load i32, i32* %comp, align 4
  %cmp118 = icmp slt i32 %93, 3
  br i1 %cmp118, label %for.body.119, label %for.end.241

for.body.119:                                     ; preds = %for.cond.117
  %94 = load i32, i32* %td, align 4
  %cmp120 = icmp eq i32 %94, 0
  br i1 %cmp120, label %if.then.121, label %if.else.154

if.then.121:                                      ; preds = %for.body.119
  %95 = load i32, i32* %comp, align 4
  %idxprom122 = sext i32 %95 to i64
  %arrayidx123 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom122
  %96 = load i32, i32* %arrayidx123, align 4
  %97 = load i32, i32* %comp, align 4
  %idxprom124 = sext i32 %97 to i64
  %98 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %98 to i64
  %99 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %99 to i64
  %arrayidx127 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx128 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx127, i32 0, i64 %idxprom126
  %arrayidx129 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx128, i32 0, i64 %idxprom125
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx129, i32 0, i64 %idxprom124
  store i32 %96, i32* %arrayidx130, align 4
  %100 = load i32, i32* %comp, align 4
  %idxprom131 = sext i32 %100 to i64
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom131
  %101 = load i32, i32* %arrayidx132, align 4
  %102 = load i32, i32* %comp, align 4
  %idxprom133 = sext i32 %102 to i64
  %103 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %103 to i64
  %104 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %104 to i64
  %arrayidx136 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx137 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx136, i32 0, i64 %idxprom135
  %arrayidx138 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx137, i32 0, i64 %idxprom134
  %arrayidx139 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx138, i32 0, i64 %idxprom133
  store i32 %101, i32* %arrayidx139, align 4
  %105 = load i32, i32* %comp, align 4
  %idxprom140 = sext i32 %105 to i64
  %106 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %106 to i64
  %107 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %107 to i64
  %arrayidx143 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_offset, i32 0, i64 1
  %arrayidx144 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx143, i32 0, i64 %idxprom142
  %arrayidx145 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx144, i32 0, i64 %idxprom141
  %arrayidx146 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx145, i32 0, i64 %idxprom140
  store i32 0, i32* %arrayidx146, align 4
  %108 = load i32, i32* %comp, align 4
  %idxprom147 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %109 to i64
  %110 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %110 to i64
  %arrayidx150 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_offset, i32 0, i64 0
  %arrayidx151 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx150, i32 0, i64 %idxprom149
  %arrayidx152 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx151, i32 0, i64 %idxprom148
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx152, i32 0, i64 %idxprom147
  store i32 0, i32* %arrayidx153, align 4
  br label %if.end.238

if.else.154:                                      ; preds = %for.body.119
  %111 = load i32, i32* %td, align 4
  %div = sdiv i32 %111, 2
  %call = call i32 @abs(i32 %div) #2
  %add155 = add nsw i32 16384, %call
  %112 = load i32, i32* %td, align 4
  %div156 = sdiv i32 %add155, %112
  store i32 %div156, i32* %tx, align 4
  %113 = load i32, i32* %tx, align 4
  %114 = load i32, i32* %tb, align 4
  %mul = mul nsw i32 %113, %114
  %add157 = add nsw i32 %mul, 32
  %shr = ashr i32 %add157, 6
  %cmp158 = icmp slt i32 %shr, -1024
  br i1 %cmp158, label %cond.true.159, label %cond.false.160

cond.true.159:                                    ; preds = %if.else.154
  br label %cond.end.172

cond.false.160:                                   ; preds = %if.else.154
  %115 = load i32, i32* %tx, align 4
  %116 = load i32, i32* %tb, align 4
  %mul161 = mul nsw i32 %115, %116
  %add162 = add nsw i32 %mul161, 32
  %shr163 = ashr i32 %add162, 6
  %cmp164 = icmp sgt i32 %shr163, 1023
  br i1 %cmp164, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %cond.false.160
  br label %cond.end.170

cond.false.166:                                   ; preds = %cond.false.160
  %117 = load i32, i32* %tx, align 4
  %118 = load i32, i32* %tb, align 4
  %mul167 = mul nsw i32 %117, %118
  %add168 = add nsw i32 %mul167, 32
  %shr169 = ashr i32 %add168, 6
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.166, %cond.true.165
  %cond171 = phi i32 [ 1023, %cond.true.165 ], [ %shr169, %cond.false.166 ]
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.end.170, %cond.true.159
  %cond173 = phi i32 [ -1024, %cond.true.159 ], [ %cond171, %cond.end.170 ]
  store i32 %cond173, i32* %DistScaleFactor, align 4
  %119 = load i32, i32* %DistScaleFactor, align 4
  %shr174 = ashr i32 %119, 2
  %120 = load i32, i32* %comp, align 4
  %idxprom175 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %121 to i64
  %122 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %122 to i64
  %arrayidx178 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx179 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx178, i32 0, i64 %idxprom177
  %arrayidx180 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx179, i32 0, i64 %idxprom176
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx180, i32 0, i64 %idxprom175
  store i32 %shr174, i32* %arrayidx181, align 4
  %123 = load i32, i32* %comp, align 4
  %idxprom182 = sext i32 %123 to i64
  %124 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %124 to i64
  %125 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %125 to i64
  %arrayidx185 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx186 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx185, i32 0, i64 %idxprom184
  %arrayidx187 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx186, i32 0, i64 %idxprom183
  %arrayidx188 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx187, i32 0, i64 %idxprom182
  %126 = load i32, i32* %arrayidx188, align 4
  %cmp189 = icmp slt i32 %126, -64
  br i1 %cmp189, label %if.then.198, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.172
  %127 = load i32, i32* %comp, align 4
  %idxprom190 = sext i32 %127 to i64
  %128 = load i32, i32* %j, align 4
  %idxprom191 = sext i32 %128 to i64
  %129 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %129 to i64
  %arrayidx193 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx194 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx193, i32 0, i64 %idxprom192
  %arrayidx195 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx194, i32 0, i64 %idxprom191
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx195, i32 0, i64 %idxprom190
  %130 = load i32, i32* %arrayidx196, align 4
  %cmp197 = icmp sgt i32 %130, 128
  br i1 %cmp197, label %if.then.198, label %if.end.208

if.then.198:                                      ; preds = %lor.lhs.false, %cond.end.172
  %131 = load i32, i32* %comp, align 4
  %idxprom199 = sext i32 %131 to i64
  %arrayidx200 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom199
  %132 = load i32, i32* %arrayidx200, align 4
  %133 = load i32, i32* %comp, align 4
  %idxprom201 = sext i32 %133 to i64
  %134 = load i32, i32* %j, align 4
  %idxprom202 = sext i32 %134 to i64
  %135 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %135 to i64
  %arrayidx204 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx205 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx204, i32 0, i64 %idxprom203
  %arrayidx206 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx205, i32 0, i64 %idxprom202
  %arrayidx207 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx206, i32 0, i64 %idxprom201
  store i32 %132, i32* %arrayidx207, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.198, %lor.lhs.false
  %136 = load i32, i32* %comp, align 4
  %idxprom209 = sext i32 %136 to i64
  %137 = load i32, i32* %j, align 4
  %idxprom210 = sext i32 %137 to i64
  %138 = load i32, i32* %i, align 4
  %idxprom211 = sext i32 %138 to i64
  %arrayidx212 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx213 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx212, i32 0, i64 %idxprom211
  %arrayidx214 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx213, i32 0, i64 %idxprom210
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx214, i32 0, i64 %idxprom209
  %139 = load i32, i32* %arrayidx215, align 4
  %sub216 = sub nsw i32 64, %139
  %140 = load i32, i32* %comp, align 4
  %idxprom217 = sext i32 %140 to i64
  %141 = load i32, i32* %j, align 4
  %idxprom218 = sext i32 %141 to i64
  %142 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %142 to i64
  %arrayidx220 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx221 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx220, i32 0, i64 %idxprom219
  %arrayidx222 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx221, i32 0, i64 %idxprom218
  %arrayidx223 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx222, i32 0, i64 %idxprom217
  store i32 %sub216, i32* %arrayidx223, align 4
  %143 = load i32, i32* %comp, align 4
  %idxprom224 = sext i32 %143 to i64
  %144 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %144 to i64
  %145 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %145 to i64
  %arrayidx227 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_offset, i32 0, i64 1
  %arrayidx228 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx227, i32 0, i64 %idxprom226
  %arrayidx229 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx228, i32 0, i64 %idxprom225
  %arrayidx230 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx229, i32 0, i64 %idxprom224
  store i32 0, i32* %arrayidx230, align 4
  %146 = load i32, i32* %comp, align 4
  %idxprom231 = sext i32 %146 to i64
  %147 = load i32, i32* %j, align 4
  %idxprom232 = sext i32 %147 to i64
  %148 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %148 to i64
  %arrayidx234 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_offset, i32 0, i64 0
  %arrayidx235 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx234, i32 0, i64 %idxprom233
  %arrayidx236 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx235, i32 0, i64 %idxprom232
  %arrayidx237 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx236, i32 0, i64 %idxprom231
  store i32 0, i32* %arrayidx237, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.208, %if.then.121
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238
  %149 = load i32, i32* %comp, align 4
  %inc240 = add nsw i32 %149, 1
  store i32 %inc240, i32* %comp, align 4
  br label %for.cond.117

for.end.241:                                      ; preds = %for.cond.117
  br label %for.inc.242

for.inc.242:                                      ; preds = %for.end.241
  %150 = load i32, i32* %j, align 4
  %inc243 = add nsw i32 %150, 1
  store i32 %inc243, i32* %j, align 4
  br label %for.cond.59

for.end.244:                                      ; preds = %for.cond.59
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.end.244
  %151 = load i32, i32* %i, align 4
  %inc246 = add nsw i32 %151, 1
  store i32 %inc246, i32* %i, align 4
  br label %for.cond.56

for.end.247:                                      ; preds = %for.cond.56
  %152 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc248 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %152, i32 0, i32 20
  %153 = load i32, i32* %weighted_bipred_idc248, align 4
  %cmp249 = icmp eq i32 %153, 2
  br i1 %cmp249, label %if.then.250, label %if.else.431

if.then.250:                                      ; preds = %for.end.247
  store i32 0, i32* %i, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.299, %if.then.250
  %154 = load i32, i32* %i, align 4
  %155 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp252 = icmp slt i32 %154, %155
  br i1 %cmp252, label %for.body.253, label %for.end.301

for.body.253:                                     ; preds = %for.cond.251
  store i32 0, i32* %j, align 4
  br label %for.cond.254

for.cond.254:                                     ; preds = %for.inc.296, %for.body.253
  %156 = load i32, i32* %j, align 4
  %157 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp255 = icmp slt i32 %156, %157
  br i1 %cmp255, label %for.body.256, label %for.end.298

for.body.256:                                     ; preds = %for.cond.254
  store i32 0, i32* %comp, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.293, %for.body.256
  %158 = load i32, i32* %comp, align 4
  %cmp258 = icmp slt i32 %158, 3
  br i1 %cmp258, label %for.body.259, label %for.end.295

for.body.259:                                     ; preds = %for.cond.257
  %159 = load i32, i32* %comp, align 4
  %cmp260 = icmp eq i32 %159, 0
  br i1 %cmp260, label %cond.true.261, label %cond.false.262

cond.true.261:                                    ; preds = %for.body.259
  %160 = load i32, i32* @luma_log_weight_denom, align 4
  br label %cond.end.263

cond.false.262:                                   ; preds = %for.body.259
  %161 = load i32, i32* @chroma_log_weight_denom, align 4
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.262, %cond.true.261
  %cond264 = phi i32 [ %160, %cond.true.261 ], [ %161, %cond.false.262 ]
  store i32 %cond264, i32* %log_weight_denom, align 4
  %162 = load i32, i32* %comp, align 4
  %idxprom265 = sext i32 %162 to i64
  %163 = load i32, i32* %j, align 4
  %idxprom266 = sext i32 %163 to i64
  %164 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %164 to i64
  %arrayidx268 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx269 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx268, i32 0, i64 %idxprom267
  %arrayidx270 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx269, i32 0, i64 %idxprom266
  %arrayidx271 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx270, i32 0, i64 %idxprom265
  %165 = load i32, i32* %arrayidx271, align 4
  %166 = load i32, i32* %comp, align 4
  %idxprom272 = sext i32 %166 to i64
  %167 = load i32, i32* %j, align 4
  %idxprom273 = sext i32 %167 to i64
  %168 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %168 to i64
  %169 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx275 = getelementptr inbounds i32***, i32**** %169, i64 1
  %170 = load i32***, i32**** %arrayidx275, align 8
  %arrayidx276 = getelementptr inbounds i32**, i32*** %170, i64 %idxprom274
  %171 = load i32**, i32*** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i32*, i32** %171, i64 %idxprom273
  %172 = load i32*, i32** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %172, i64 %idxprom272
  store i32 %165, i32* %arrayidx278, align 4
  %173 = load i32, i32* %comp, align 4
  %idxprom279 = sext i32 %173 to i64
  %174 = load i32, i32* %j, align 4
  %idxprom280 = sext i32 %174 to i64
  %175 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %175 to i64
  %arrayidx282 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx283 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx282, i32 0, i64 %idxprom281
  %arrayidx284 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx283, i32 0, i64 %idxprom280
  %arrayidx285 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx284, i32 0, i64 %idxprom279
  %176 = load i32, i32* %arrayidx285, align 4
  %177 = load i32, i32* %comp, align 4
  %idxprom286 = sext i32 %177 to i64
  %178 = load i32, i32* %j, align 4
  %idxprom287 = sext i32 %178 to i64
  %179 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %179 to i64
  %180 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx289 = getelementptr inbounds i32***, i32**** %180, i64 0
  %181 = load i32***, i32**** %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds i32**, i32*** %181, i64 %idxprom288
  %182 = load i32**, i32*** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds i32*, i32** %182, i64 %idxprom287
  %183 = load i32*, i32** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i32, i32* %183, i64 %idxprom286
  store i32 %176, i32* %arrayidx292, align 4
  br label %for.inc.293

for.inc.293:                                      ; preds = %cond.end.263
  %184 = load i32, i32* %comp, align 4
  %inc294 = add nsw i32 %184, 1
  store i32 %inc294, i32* %comp, align 4
  br label %for.cond.257

for.end.295:                                      ; preds = %for.cond.257
  br label %for.inc.296

for.inc.296:                                      ; preds = %for.end.295
  %185 = load i32, i32* %j, align 4
  %inc297 = add nsw i32 %185, 1
  store i32 %inc297, i32* %j, align 4
  br label %for.cond.254

for.end.298:                                      ; preds = %for.cond.254
  br label %for.inc.299

for.inc.299:                                      ; preds = %for.end.298
  %186 = load i32, i32* %i, align 4
  %inc300 = add nsw i32 %186, 1
  store i32 %inc300, i32* %i, align 4
  br label %for.cond.251

for.end.301:                                      ; preds = %for.cond.251
  store i32 0, i32* %clist, align 4
  br label %for.cond.302

for.cond.302:                                     ; preds = %for.inc.347, %for.end.301
  %187 = load i32, i32* %clist, align 4
  %188 = load i32, i32* %list_offset, align 4
  %add303 = add nsw i32 2, %188
  %cmp304 = icmp slt i32 %187, %add303
  br i1 %cmp304, label %for.body.305, label %for.end.349

for.body.305:                                     ; preds = %for.cond.302
  store i32 0, i32* %index, align 4
  br label %for.cond.306

for.cond.306:                                     ; preds = %for.inc.344, %for.body.305
  %189 = load i32, i32* %index, align 4
  %190 = load i32, i32* %clist, align 4
  %idxprom307 = sext i32 %190 to i64
  %arrayidx308 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom307
  %191 = load i32, i32* %arrayidx308, align 4
  %cmp309 = icmp slt i32 %189, %191
  br i1 %cmp309, label %for.body.310, label %for.end.346

for.body.310:                                     ; preds = %for.cond.306
  %arrayidx311 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %192 = load i32, i32* %arrayidx311, align 4
  %193 = load i32, i32* %index, align 4
  %idxprom312 = sext i32 %193 to i64
  %194 = load i32, i32* %clist, align 4
  %idxprom313 = sext i32 %194 to i64
  %195 = load i32***, i32**** @wp_weight, align 8
  %arrayidx314 = getelementptr inbounds i32**, i32*** %195, i64 %idxprom313
  %196 = load i32**, i32*** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds i32*, i32** %196, i64 %idxprom312
  %197 = load i32*, i32** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 %192, i32* %arrayidx316, align 4
  %arrayidx317 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  %198 = load i32, i32* %arrayidx317, align 4
  %199 = load i32, i32* %index, align 4
  %idxprom318 = sext i32 %199 to i64
  %200 = load i32, i32* %clist, align 4
  %idxprom319 = sext i32 %200 to i64
  %201 = load i32***, i32**** @wp_weight, align 8
  %arrayidx320 = getelementptr inbounds i32**, i32*** %201, i64 %idxprom319
  %202 = load i32**, i32*** %arrayidx320, align 8
  %arrayidx321 = getelementptr inbounds i32*, i32** %202, i64 %idxprom318
  %203 = load i32*, i32** %arrayidx321, align 8
  %arrayidx322 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 %198, i32* %arrayidx322, align 4
  %arrayidx323 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  %204 = load i32, i32* %arrayidx323, align 4
  %205 = load i32, i32* %index, align 4
  %idxprom324 = sext i32 %205 to i64
  %206 = load i32, i32* %clist, align 4
  %idxprom325 = sext i32 %206 to i64
  %207 = load i32***, i32**** @wp_weight, align 8
  %arrayidx326 = getelementptr inbounds i32**, i32*** %207, i64 %idxprom325
  %208 = load i32**, i32*** %arrayidx326, align 8
  %arrayidx327 = getelementptr inbounds i32*, i32** %208, i64 %idxprom324
  %209 = load i32*, i32** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds i32, i32* %209, i64 2
  store i32 %204, i32* %arrayidx328, align 4
  %210 = load i32, i32* %index, align 4
  %idxprom329 = sext i32 %210 to i64
  %211 = load i32, i32* %clist, align 4
  %idxprom330 = sext i32 %211 to i64
  %212 = load i32***, i32**** @wp_offset, align 8
  %arrayidx331 = getelementptr inbounds i32**, i32*** %212, i64 %idxprom330
  %213 = load i32**, i32*** %arrayidx331, align 8
  %arrayidx332 = getelementptr inbounds i32*, i32** %213, i64 %idxprom329
  %214 = load i32*, i32** %arrayidx332, align 8
  %arrayidx333 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 0, i32* %arrayidx333, align 4
  %215 = load i32, i32* %index, align 4
  %idxprom334 = sext i32 %215 to i64
  %216 = load i32, i32* %clist, align 4
  %idxprom335 = sext i32 %216 to i64
  %217 = load i32***, i32**** @wp_offset, align 8
  %arrayidx336 = getelementptr inbounds i32**, i32*** %217, i64 %idxprom335
  %218 = load i32**, i32*** %arrayidx336, align 8
  %arrayidx337 = getelementptr inbounds i32*, i32** %218, i64 %idxprom334
  %219 = load i32*, i32** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %219, i64 1
  store i32 0, i32* %arrayidx338, align 4
  %220 = load i32, i32* %index, align 4
  %idxprom339 = sext i32 %220 to i64
  %221 = load i32, i32* %clist, align 4
  %idxprom340 = sext i32 %221 to i64
  %222 = load i32***, i32**** @wp_offset, align 8
  %arrayidx341 = getelementptr inbounds i32**, i32*** %222, i64 %idxprom340
  %223 = load i32**, i32*** %arrayidx341, align 8
  %arrayidx342 = getelementptr inbounds i32*, i32** %223, i64 %idxprom339
  %224 = load i32*, i32** %arrayidx342, align 8
  %arrayidx343 = getelementptr inbounds i32, i32* %224, i64 2
  store i32 0, i32* %arrayidx343, align 4
  br label %for.inc.344

for.inc.344:                                      ; preds = %for.body.310
  %225 = load i32, i32* %index, align 4
  %inc345 = add nsw i32 %225, 1
  store i32 %inc345, i32* %index, align 4
  br label %for.cond.306

for.end.346:                                      ; preds = %for.cond.306
  br label %for.inc.347

for.inc.347:                                      ; preds = %for.end.346
  %226 = load i32, i32* %clist, align 4
  %inc348 = add nsw i32 %226, 1
  store i32 %inc348, i32* %clist, align 4
  br label %for.cond.302

for.end.349:                                      ; preds = %for.cond.302
  store i32 0, i32* %i, align 4
  br label %for.cond.350

for.cond.350:                                     ; preds = %for.inc.428, %for.end.349
  %227 = load i32, i32* %i, align 4
  %228 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp351 = icmp slt i32 %227, %228
  br i1 %cmp351, label %for.body.352, label %for.end.430

for.body.352:                                     ; preds = %for.cond.350
  store i32 0, i32* %j, align 4
  br label %for.cond.353

for.cond.353:                                     ; preds = %for.inc.425, %for.body.352
  %229 = load i32, i32* %j, align 4
  %230 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp354 = icmp slt i32 %229, %230
  br i1 %cmp354, label %for.body.355, label %for.end.427

for.body.355:                                     ; preds = %for.cond.353
  store i32 0, i32* %n, align 4
  br label %for.cond.356

for.cond.356:                                     ; preds = %for.inc.378, %for.body.355
  %231 = load i32, i32* %n, align 4
  %232 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %232, i32 0, i32 15
  %233 = load i32, i32* %height, align 4
  %234 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %234, i32 0, i32 13
  %235 = load i32, i32* %width, align 4
  %mul357 = mul nsw i32 %233, %235
  %cmp358 = icmp slt i32 %231, %mul357
  br i1 %cmp358, label %for.body.359, label %for.end.380

for.body.359:                                     ; preds = %for.cond.356
  %236 = load i32, i32* %n, align 4
  %idxprom360 = sext i32 %236 to i64
  %237 = load i32, i32* %i, align 4
  %idxprom361 = sext i32 %237 to i64
  %238 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx362 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %238, i64 %idxprom361
  %239 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx362, align 8
  %imgY_11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %239, i32 0, i32 26
  %240 = load i16*, i16** %imgY_11, align 8
  %arrayidx363 = getelementptr inbounds i16, i16* %240, i64 %idxprom360
  %241 = load i16, i16* %arrayidx363, align 2
  %242 = load i32, i32* %n, align 4
  %idxprom364 = sext i32 %242 to i64
  %243 = load i32, i32* %i, align 4
  %idxprom365 = sext i32 %243 to i64
  %244 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx366 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %244, i64 %idxprom365
  %245 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx366, align 8
  %imgY_11_w = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %245, i32 0, i32 27
  %246 = load i16*, i16** %imgY_11_w, align 8
  %arrayidx367 = getelementptr inbounds i16, i16* %246, i64 %idxprom364
  store i16 %241, i16* %arrayidx367, align 2
  %247 = load i32, i32* %n, align 4
  %idxprom368 = sext i32 %247 to i64
  %248 = load i32, i32* %j, align 4
  %idxprom369 = sext i32 %248 to i64
  %249 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx370 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %249, i64 %idxprom369
  %250 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx370, align 8
  %imgY_11371 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %250, i32 0, i32 26
  %251 = load i16*, i16** %imgY_11371, align 8
  %arrayidx372 = getelementptr inbounds i16, i16* %251, i64 %idxprom368
  %252 = load i16, i16* %arrayidx372, align 2
  %253 = load i32, i32* %n, align 4
  %idxprom373 = sext i32 %253 to i64
  %254 = load i32, i32* %j, align 4
  %idxprom374 = sext i32 %254 to i64
  %255 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx375 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %255, i64 %idxprom374
  %256 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx375, align 8
  %imgY_11_w376 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %256, i32 0, i32 27
  %257 = load i16*, i16** %imgY_11_w376, align 8
  %arrayidx377 = getelementptr inbounds i16, i16* %257, i64 %idxprom373
  store i16 %252, i16* %arrayidx377, align 2
  br label %for.inc.378

for.inc.378:                                      ; preds = %for.body.359
  %258 = load i32, i32* %n, align 4
  %inc379 = add nsw i32 %258, 1
  store i32 %inc379, i32* %n, align 4
  br label %for.cond.356

for.end.380:                                      ; preds = %for.cond.356
  store i32 0, i32* %n, align 4
  br label %for.cond.381

for.cond.381:                                     ; preds = %for.inc.422, %for.end.380
  %259 = load i32, i32* %n, align 4
  %260 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height382 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %260, i32 0, i32 15
  %261 = load i32, i32* %height382, align 4
  %add383 = add nsw i32 %261, 8
  %mul384 = mul nsw i32 4, %add383
  %cmp385 = icmp slt i32 %259, %mul384
  br i1 %cmp385, label %for.body.386, label %for.end.424

for.body.386:                                     ; preds = %for.cond.381
  store i32 0, i32* %l, align 4
  br label %for.cond.387

for.cond.387:                                     ; preds = %for.inc.419, %for.body.386
  %262 = load i32, i32* %l, align 4
  %263 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width388 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %263, i32 0, i32 13
  %264 = load i32, i32* %width388, align 4
  %add389 = add nsw i32 %264, 8
  %mul390 = mul nsw i32 4, %add389
  %cmp391 = icmp slt i32 %262, %mul390
  br i1 %cmp391, label %for.body.392, label %for.end.421

for.body.392:                                     ; preds = %for.cond.387
  %265 = load i32, i32* %l, align 4
  %idxprom393 = sext i32 %265 to i64
  %266 = load i32, i32* %n, align 4
  %idxprom394 = sext i32 %266 to i64
  %267 = load i32, i32* %i, align 4
  %idxprom395 = sext i32 %267 to i64
  %268 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx396 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %268, i64 %idxprom395
  %269 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx396, align 8
  %imgY_ups = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %269, i32 0, i32 28
  %270 = load i16**, i16*** %imgY_ups, align 8
  %arrayidx397 = getelementptr inbounds i16*, i16** %270, i64 %idxprom394
  %271 = load i16*, i16** %arrayidx397, align 8
  %arrayidx398 = getelementptr inbounds i16, i16* %271, i64 %idxprom393
  %272 = load i16, i16* %arrayidx398, align 2
  %273 = load i32, i32* %l, align 4
  %idxprom399 = sext i32 %273 to i64
  %274 = load i32, i32* %n, align 4
  %idxprom400 = sext i32 %274 to i64
  %275 = load i32, i32* %i, align 4
  %idxprom401 = sext i32 %275 to i64
  %276 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx402 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %276, i64 %idxprom401
  %277 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx402, align 8
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %277, i32 0, i32 29
  %278 = load i16**, i16*** %imgY_ups_w, align 8
  %arrayidx403 = getelementptr inbounds i16*, i16** %278, i64 %idxprom400
  %279 = load i16*, i16** %arrayidx403, align 8
  %arrayidx404 = getelementptr inbounds i16, i16* %279, i64 %idxprom399
  store i16 %272, i16* %arrayidx404, align 2
  %280 = load i32, i32* %l, align 4
  %idxprom405 = sext i32 %280 to i64
  %281 = load i32, i32* %n, align 4
  %idxprom406 = sext i32 %281 to i64
  %282 = load i32, i32* %j, align 4
  %idxprom407 = sext i32 %282 to i64
  %283 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx408 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %283, i64 %idxprom407
  %284 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx408, align 8
  %imgY_ups409 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %284, i32 0, i32 28
  %285 = load i16**, i16*** %imgY_ups409, align 8
  %arrayidx410 = getelementptr inbounds i16*, i16** %285, i64 %idxprom406
  %286 = load i16*, i16** %arrayidx410, align 8
  %arrayidx411 = getelementptr inbounds i16, i16* %286, i64 %idxprom405
  %287 = load i16, i16* %arrayidx411, align 2
  %288 = load i32, i32* %l, align 4
  %idxprom412 = sext i32 %288 to i64
  %289 = load i32, i32* %n, align 4
  %idxprom413 = sext i32 %289 to i64
  %290 = load i32, i32* %j, align 4
  %idxprom414 = sext i32 %290 to i64
  %291 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx415 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %291, i64 %idxprom414
  %292 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx415, align 8
  %imgY_ups_w416 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %292, i32 0, i32 29
  %293 = load i16**, i16*** %imgY_ups_w416, align 8
  %arrayidx417 = getelementptr inbounds i16*, i16** %293, i64 %idxprom413
  %294 = load i16*, i16** %arrayidx417, align 8
  %arrayidx418 = getelementptr inbounds i16, i16* %294, i64 %idxprom412
  store i16 %287, i16* %arrayidx418, align 2
  br label %for.inc.419

for.inc.419:                                      ; preds = %for.body.392
  %295 = load i32, i32* %l, align 4
  %inc420 = add nsw i32 %295, 1
  store i32 %inc420, i32* %l, align 4
  br label %for.cond.387

for.end.421:                                      ; preds = %for.cond.387
  br label %for.inc.422

for.inc.422:                                      ; preds = %for.end.421
  %296 = load i32, i32* %n, align 4
  %inc423 = add nsw i32 %296, 1
  store i32 %inc423, i32* %n, align 4
  br label %for.cond.381

for.end.424:                                      ; preds = %for.cond.381
  br label %for.inc.425

for.inc.425:                                      ; preds = %for.end.424
  %297 = load i32, i32* %j, align 4
  %inc426 = add nsw i32 %297, 1
  store i32 %inc426, i32* %j, align 4
  br label %for.cond.353

for.end.427:                                      ; preds = %for.cond.353
  br label %for.inc.428

for.inc.428:                                      ; preds = %for.end.427
  %298 = load i32, i32* %i, align 4
  %inc429 = add nsw i32 %298, 1
  store i32 %inc429, i32* %i, align 4
  br label %for.cond.350

for.end.430:                                      ; preds = %for.cond.350
  br label %if.end.840

if.else.431:                                      ; preds = %for.end.247
  store i32 0, i32* %i, align 4
  br label %for.cond.432

for.cond.432:                                     ; preds = %for.inc.448, %if.else.431
  %299 = load i32, i32* %i, align 4
  %300 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height433 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %300, i32 0, i32 15
  %301 = load i32, i32* %height433, align 4
  %cmp434 = icmp slt i32 %299, %301
  br i1 %cmp434, label %for.body.435, label %for.end.450

for.body.435:                                     ; preds = %for.cond.432
  store i32 0, i32* %j, align 4
  br label %for.cond.436

for.cond.436:                                     ; preds = %for.inc.445, %for.body.435
  %302 = load i32, i32* %j, align 4
  %303 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width437 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %303, i32 0, i32 13
  %304 = load i32, i32* %width437, align 4
  %cmp438 = icmp slt i32 %302, %304
  br i1 %cmp438, label %for.body.439, label %for.end.447

for.body.439:                                     ; preds = %for.cond.436
  %305 = load i32, i32* %j, align 4
  %idxprom440 = sext i32 %305 to i64
  %306 = load i32, i32* %i, align 4
  %idxprom441 = sext i32 %306 to i64
  %307 = load i16**, i16*** @imgY_org, align 8
  %arrayidx442 = getelementptr inbounds i16*, i16** %307, i64 %idxprom441
  %308 = load i16*, i16** %arrayidx442, align 8
  %arrayidx443 = getelementptr inbounds i16, i16* %308, i64 %idxprom440
  %309 = load i16, i16* %arrayidx443, align 2
  %conv = uitofp i16 %309 to double
  %310 = load double, double* %dc_org, align 8
  %add444 = fadd double %310, %conv
  store double %add444, double* %dc_org, align 8
  br label %for.inc.445

for.inc.445:                                      ; preds = %for.body.439
  %311 = load i32, i32* %j, align 4
  %inc446 = add nsw i32 %311, 1
  store i32 %inc446, i32* %j, align 4
  br label %for.cond.436

for.end.447:                                      ; preds = %for.cond.436
  br label %for.inc.448

for.inc.448:                                      ; preds = %for.end.447
  %312 = load i32, i32* %i, align 4
  %inc449 = add nsw i32 %312, 1
  store i32 %inc449, i32* %i, align 4
  br label %for.cond.432

for.end.450:                                      ; preds = %for.cond.432
  store i32 0, i32* %clist, align 4
  br label %for.cond.451

for.cond.451:                                     ; preds = %for.inc.682, %for.end.450
  %313 = load i32, i32* %clist, align 4
  %314 = load i32, i32* %list_offset, align 4
  %add452 = add nsw i32 2, %314
  %cmp453 = icmp slt i32 %313, %add452
  br i1 %cmp453, label %for.body.455, label %for.end.684

for.body.455:                                     ; preds = %for.cond.451
  store i32 0, i32* %n, align 4
  br label %for.cond.456

for.cond.456:                                     ; preds = %for.inc.679, %for.body.455
  %315 = load i32, i32* %n, align 4
  %316 = load i32, i32* %clist, align 4
  %idxprom457 = sext i32 %316 to i64
  %arrayidx458 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom457
  %317 = load i32, i32* %arrayidx458, align 4
  %cmp459 = icmp slt i32 %315, %317
  br i1 %cmp459, label %for.body.461, label %for.end.681

for.body.461:                                     ; preds = %for.cond.456
  %318 = load i32, i32* %n, align 4
  %idxprom462 = sext i32 %318 to i64
  %319 = load i32, i32* %clist, align 4
  %idxprom463 = sext i32 %319 to i64
  %arrayidx464 = getelementptr inbounds [6 x [15 x double]], [6 x [15 x double]]* %dc_ref, i32 0, i64 %idxprom463
  %arrayidx465 = getelementptr inbounds [15 x double], [15 x double]* %arrayidx464, i32 0, i64 %idxprom462
  store double 0.000000e+00, double* %arrayidx465, align 8
  %320 = load i32, i32* %n, align 4
  %idxprom466 = sext i32 %320 to i64
  %321 = load i32, i32* %clist, align 4
  %idxprom467 = sext i32 %321 to i64
  %arrayidx468 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom467
  %322 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx468, align 8
  %arrayidx469 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %322, i64 %idxprom466
  %323 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx469, align 8
  %imgY_11470 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %323, i32 0, i32 26
  %324 = load i16*, i16** %imgY_11470, align 8
  store i16* %324, i16** %ref_pic, align 8
  %325 = load i32, i32* %n, align 4
  %idxprom471 = sext i32 %325 to i64
  %326 = load i32, i32* %clist, align 4
  %idxprom472 = sext i32 %326 to i64
  %arrayidx473 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom472
  %327 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx473, align 8
  %arrayidx474 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %327, i64 %idxprom471
  %328 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx474, align 8
  %imgY_11_w475 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %328, i32 0, i32 27
  %329 = load i16*, i16** %imgY_11_w475, align 8
  store i16* %329, i16** %ref_pic_w, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.476

for.cond.476:                                     ; preds = %for.inc.491, %for.body.461
  %330 = load i32, i32* %i, align 4
  %331 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height477 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %331, i32 0, i32 15
  %332 = load i32, i32* %height477, align 4
  %333 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width478 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %333, i32 0, i32 13
  %334 = load i32, i32* %width478, align 4
  %mul479 = mul nsw i32 %332, %334
  %cmp480 = icmp slt i32 %330, %mul479
  br i1 %cmp480, label %for.body.482, label %for.end.493

for.body.482:                                     ; preds = %for.cond.476
  %335 = load i32, i32* %i, align 4
  %idxprom483 = sext i32 %335 to i64
  %336 = load i16*, i16** %ref_pic, align 8
  %arrayidx484 = getelementptr inbounds i16, i16* %336, i64 %idxprom483
  %337 = load i16, i16* %arrayidx484, align 2
  %conv485 = uitofp i16 %337 to double
  %338 = load i32, i32* %n, align 4
  %idxprom486 = sext i32 %338 to i64
  %339 = load i32, i32* %clist, align 4
  %idxprom487 = sext i32 %339 to i64
  %arrayidx488 = getelementptr inbounds [6 x [15 x double]], [6 x [15 x double]]* %dc_ref, i32 0, i64 %idxprom487
  %arrayidx489 = getelementptr inbounds [15 x double], [15 x double]* %arrayidx488, i32 0, i64 %idxprom486
  %340 = load double, double* %arrayidx489, align 8
  %add490 = fadd double %340, %conv485
  store double %add490, double* %arrayidx489, align 8
  br label %for.inc.491

for.inc.491:                                      ; preds = %for.body.482
  %341 = load i32, i32* %i, align 4
  %inc492 = add nsw i32 %341, 1
  store i32 %inc492, i32* %i, align 4
  br label %for.cond.476

for.end.493:                                      ; preds = %for.cond.476
  %342 = load i32, i32* %n, align 4
  %idxprom494 = sext i32 %342 to i64
  %343 = load i32, i32* %clist, align 4
  %idxprom495 = sext i32 %343 to i64
  %arrayidx496 = getelementptr inbounds [6 x [15 x double]], [6 x [15 x double]]* %dc_ref, i32 0, i64 %idxprom495
  %arrayidx497 = getelementptr inbounds [15 x double], [15 x double]* %arrayidx496, i32 0, i64 %idxprom494
  %344 = load double, double* %arrayidx497, align 8
  %cmp498 = fcmp une double %344, 0.000000e+00
  br i1 %cmp498, label %if.then.500, label %if.else.511

if.then.500:                                      ; preds = %for.end.493
  %arrayidx501 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %345 = load i32, i32* %arrayidx501, align 4
  %conv502 = sitofp i32 %345 to double
  %346 = load double, double* %dc_org, align 8
  %mul503 = fmul double %conv502, %346
  %347 = load i32, i32* %n, align 4
  %idxprom504 = sext i32 %347 to i64
  %348 = load i32, i32* %clist, align 4
  %idxprom505 = sext i32 %348 to i64
  %arrayidx506 = getelementptr inbounds [6 x [15 x double]], [6 x [15 x double]]* %dc_ref, i32 0, i64 %idxprom505
  %arrayidx507 = getelementptr inbounds [15 x double], [15 x double]* %arrayidx506, i32 0, i64 %idxprom504
  %349 = load double, double* %arrayidx507, align 8
  %div508 = fdiv double %mul503, %349
  %add509 = fadd double %div508, 5.000000e-01
  %conv510 = fptosi double %add509 to i32
  store i32 %conv510, i32* %wf_weight, align 4
  br label %if.end.513

if.else.511:                                      ; preds = %for.end.493
  %arrayidx512 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %350 = load i32, i32* %arrayidx512, align 4
  store i32 %350, i32* %wf_weight, align 4
  br label %if.end.513

if.end.513:                                       ; preds = %if.else.511, %if.then.500
  %351 = load i32, i32* %wf_weight, align 4
  %cmp514 = icmp slt i32 %351, -64
  br i1 %cmp514, label %if.then.519, label %lor.lhs.false.516

lor.lhs.false.516:                                ; preds = %if.end.513
  %352 = load i32, i32* %wf_weight, align 4
  %cmp517 = icmp sgt i32 %352, 127
  br i1 %cmp517, label %if.then.519, label %if.end.521

if.then.519:                                      ; preds = %lor.lhs.false.516, %if.end.513
  %arrayidx520 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %353 = load i32, i32* %arrayidx520, align 4
  store i32 %353, i32* %wf_weight, align 4
  br label %if.end.521

if.end.521:                                       ; preds = %if.then.519, %lor.lhs.false.516
  store i32 0, i32* %wf_offset, align 4
  %354 = load i32, i32* %wf_weight, align 4
  %355 = load i32, i32* %n, align 4
  %idxprom522 = sext i32 %355 to i64
  %356 = load i32, i32* %clist, align 4
  %idxprom523 = sext i32 %356 to i64
  %arrayidx524 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom523
  %arrayidx525 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx524, i32 0, i64 %idxprom522
  %arrayidx526 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx525, i32 0, i64 0
  store i32 %354, i32* %arrayidx526, align 4
  %arrayidx527 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  %357 = load i32, i32* %arrayidx527, align 4
  %358 = load i32, i32* %n, align 4
  %idxprom528 = sext i32 %358 to i64
  %359 = load i32, i32* %clist, align 4
  %idxprom529 = sext i32 %359 to i64
  %arrayidx530 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom529
  %arrayidx531 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx530, i32 0, i64 %idxprom528
  %arrayidx532 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx531, i32 0, i64 1
  store i32 %357, i32* %arrayidx532, align 4
  %arrayidx533 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  %360 = load i32, i32* %arrayidx533, align 4
  %361 = load i32, i32* %n, align 4
  %idxprom534 = sext i32 %361 to i64
  %362 = load i32, i32* %clist, align 4
  %idxprom535 = sext i32 %362 to i64
  %arrayidx536 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom535
  %arrayidx537 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx536, i32 0, i64 %idxprom534
  %arrayidx538 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx537, i32 0, i64 2
  store i32 %360, i32* %arrayidx538, align 4
  %363 = load i32, i32* %n, align 4
  %idxprom539 = sext i32 %363 to i64
  %364 = load i32, i32* %clist, align 4
  %idxprom540 = sext i32 %364 to i64
  %arrayidx541 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom540
  %arrayidx542 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx541, i32 0, i64 %idxprom539
  %arrayidx543 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx542, i32 0, i64 0
  store i32 0, i32* %arrayidx543, align 4
  %365 = load i32, i32* %n, align 4
  %idxprom544 = sext i32 %365 to i64
  %366 = load i32, i32* %clist, align 4
  %idxprom545 = sext i32 %366 to i64
  %arrayidx546 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom545
  %arrayidx547 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx546, i32 0, i64 %idxprom544
  %arrayidx548 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx547, i32 0, i64 1
  store i32 0, i32* %arrayidx548, align 4
  %367 = load i32, i32* %n, align 4
  %idxprom549 = sext i32 %367 to i64
  %368 = load i32, i32* %clist, align 4
  %idxprom550 = sext i32 %368 to i64
  %arrayidx551 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom550
  %arrayidx552 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx551, i32 0, i64 %idxprom549
  %arrayidx553 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx552, i32 0, i64 2
  store i32 0, i32* %arrayidx553, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.554

for.cond.554:                                     ; preds = %for.inc.598, %if.end.521
  %369 = load i32, i32* %i, align 4
  %370 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height555 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %370, i32 0, i32 15
  %371 = load i32, i32* %height555, align 4
  %372 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width556 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %372, i32 0, i32 13
  %373 = load i32, i32* %width556, align 4
  %mul557 = mul nsw i32 %371, %373
  %cmp558 = icmp slt i32 %369, %mul557
  br i1 %cmp558, label %for.body.560, label %for.end.600

for.body.560:                                     ; preds = %for.cond.554
  %374 = load i32, i32* %i, align 4
  %idxprom561 = sext i32 %374 to i64
  %375 = load i16*, i16** %ref_pic, align 8
  %arrayidx562 = getelementptr inbounds i16, i16* %375, i64 %idxprom561
  %376 = load i16, i16* %arrayidx562, align 2
  %conv563 = zext i16 %376 to i32
  %377 = load i32, i32* %wf_weight, align 4
  %mul564 = mul nsw i32 %conv563, %377
  %378 = load i32, i32* @wp_luma_round, align 4
  %add565 = add nsw i32 %mul564, %378
  %379 = load i32, i32* @luma_log_weight_denom, align 4
  %shr566 = ashr i32 %add565, %379
  %380 = load i32, i32* %wf_offset, align 4
  %add567 = add nsw i32 %shr566, %380
  %cmp568 = icmp slt i32 %add567, 0
  br i1 %cmp568, label %cond.true.570, label %cond.false.571

cond.true.570:                                    ; preds = %for.body.560
  br label %cond.end.593

cond.false.571:                                   ; preds = %for.body.560
  %381 = load i32, i32* %i, align 4
  %idxprom572 = sext i32 %381 to i64
  %382 = load i16*, i16** %ref_pic, align 8
  %arrayidx573 = getelementptr inbounds i16, i16* %382, i64 %idxprom572
  %383 = load i16, i16* %arrayidx573, align 2
  %conv574 = zext i16 %383 to i32
  %384 = load i32, i32* %wf_weight, align 4
  %mul575 = mul nsw i32 %conv574, %384
  %385 = load i32, i32* @wp_luma_round, align 4
  %add576 = add nsw i32 %mul575, %385
  %386 = load i32, i32* @luma_log_weight_denom, align 4
  %shr577 = ashr i32 %add576, %386
  %387 = load i32, i32* %wf_offset, align 4
  %add578 = add nsw i32 %shr577, %387
  %388 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %388, i32 0, i32 155
  %389 = load i32, i32* %max_imgpel_value, align 4
  %cmp579 = icmp sgt i32 %add578, %389
  br i1 %cmp579, label %cond.true.581, label %cond.false.583

cond.true.581:                                    ; preds = %cond.false.571
  %390 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value582 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %390, i32 0, i32 155
  %391 = load i32, i32* %max_imgpel_value582, align 4
  br label %cond.end.591

cond.false.583:                                   ; preds = %cond.false.571
  %392 = load i32, i32* %i, align 4
  %idxprom584 = sext i32 %392 to i64
  %393 = load i16*, i16** %ref_pic, align 8
  %arrayidx585 = getelementptr inbounds i16, i16* %393, i64 %idxprom584
  %394 = load i16, i16* %arrayidx585, align 2
  %conv586 = zext i16 %394 to i32
  %395 = load i32, i32* %wf_weight, align 4
  %mul587 = mul nsw i32 %conv586, %395
  %396 = load i32, i32* @wp_luma_round, align 4
  %add588 = add nsw i32 %mul587, %396
  %397 = load i32, i32* @luma_log_weight_denom, align 4
  %shr589 = ashr i32 %add588, %397
  %398 = load i32, i32* %wf_offset, align 4
  %add590 = add nsw i32 %shr589, %398
  br label %cond.end.591

cond.end.591:                                     ; preds = %cond.false.583, %cond.true.581
  %cond592 = phi i32 [ %391, %cond.true.581 ], [ %add590, %cond.false.583 ]
  br label %cond.end.593

cond.end.593:                                     ; preds = %cond.end.591, %cond.true.570
  %cond594 = phi i32 [ 0, %cond.true.570 ], [ %cond592, %cond.end.591 ]
  %conv595 = trunc i32 %cond594 to i16
  %399 = load i32, i32* %i, align 4
  %idxprom596 = sext i32 %399 to i64
  %400 = load i16*, i16** %ref_pic_w, align 8
  %arrayidx597 = getelementptr inbounds i16, i16* %400, i64 %idxprom596
  store i16 %conv595, i16* %arrayidx597, align 2
  br label %for.inc.598

for.inc.598:                                      ; preds = %cond.end.593
  %401 = load i32, i32* %i, align 4
  %inc599 = add nsw i32 %401, 1
  store i32 %inc599, i32* %i, align 4
  br label %for.cond.554

for.end.600:                                      ; preds = %for.cond.554
  store i32 0, i32* %i, align 4
  br label %for.cond.601

for.cond.601:                                     ; preds = %for.inc.676, %for.end.600
  %402 = load i32, i32* %i, align 4
  %403 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height602 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %403, i32 0, i32 15
  %404 = load i32, i32* %height602, align 4
  %add603 = add nsw i32 %404, 8
  %mul604 = mul nsw i32 4, %add603
  %cmp605 = icmp slt i32 %402, %mul604
  br i1 %cmp605, label %for.body.607, label %for.end.678

for.body.607:                                     ; preds = %for.cond.601
  store i32 0, i32* %j, align 4
  br label %for.cond.608

for.cond.608:                                     ; preds = %for.inc.673, %for.body.607
  %405 = load i32, i32* %j, align 4
  %406 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width609 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %406, i32 0, i32 13
  %407 = load i32, i32* %width609, align 4
  %add610 = add nsw i32 %407, 8
  %mul611 = mul nsw i32 4, %add610
  %cmp612 = icmp slt i32 %405, %mul611
  br i1 %cmp612, label %for.body.614, label %for.end.675

for.body.614:                                     ; preds = %for.cond.608
  %408 = load i32, i32* %j, align 4
  %idxprom615 = sext i32 %408 to i64
  %409 = load i32, i32* %i, align 4
  %idxprom616 = sext i32 %409 to i64
  %410 = load i32, i32* %n, align 4
  %idxprom617 = sext i32 %410 to i64
  %411 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx618 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %411, i64 %idxprom617
  %412 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx618, align 8
  %imgY_ups619 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %412, i32 0, i32 28
  %413 = load i16**, i16*** %imgY_ups619, align 8
  %arrayidx620 = getelementptr inbounds i16*, i16** %413, i64 %idxprom616
  %414 = load i16*, i16** %arrayidx620, align 8
  %arrayidx621 = getelementptr inbounds i16, i16* %414, i64 %idxprom615
  %415 = load i16, i16* %arrayidx621, align 2
  %conv622 = zext i16 %415 to i32
  %416 = load i32, i32* %wf_weight, align 4
  %mul623 = mul nsw i32 %conv622, %416
  %417 = load i32, i32* @wp_luma_round, align 4
  %add624 = add nsw i32 %mul623, %417
  %418 = load i32, i32* @luma_log_weight_denom, align 4
  %shr625 = ashr i32 %add624, %418
  %419 = load i32, i32* %wf_offset, align 4
  %add626 = add nsw i32 %shr625, %419
  %cmp627 = icmp slt i32 %add626, 0
  br i1 %cmp627, label %cond.true.629, label %cond.false.630

cond.true.629:                                    ; preds = %for.body.614
  br label %cond.end.663

cond.false.630:                                   ; preds = %for.body.614
  %420 = load i32, i32* %j, align 4
  %idxprom631 = sext i32 %420 to i64
  %421 = load i32, i32* %i, align 4
  %idxprom632 = sext i32 %421 to i64
  %422 = load i32, i32* %n, align 4
  %idxprom633 = sext i32 %422 to i64
  %423 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx634 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %423, i64 %idxprom633
  %424 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx634, align 8
  %imgY_ups635 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %424, i32 0, i32 28
  %425 = load i16**, i16*** %imgY_ups635, align 8
  %arrayidx636 = getelementptr inbounds i16*, i16** %425, i64 %idxprom632
  %426 = load i16*, i16** %arrayidx636, align 8
  %arrayidx637 = getelementptr inbounds i16, i16* %426, i64 %idxprom631
  %427 = load i16, i16* %arrayidx637, align 2
  %conv638 = zext i16 %427 to i32
  %428 = load i32, i32* %wf_weight, align 4
  %mul639 = mul nsw i32 %conv638, %428
  %429 = load i32, i32* @wp_luma_round, align 4
  %add640 = add nsw i32 %mul639, %429
  %430 = load i32, i32* @luma_log_weight_denom, align 4
  %shr641 = ashr i32 %add640, %430
  %431 = load i32, i32* %wf_offset, align 4
  %add642 = add nsw i32 %shr641, %431
  %432 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value643 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %432, i32 0, i32 155
  %433 = load i32, i32* %max_imgpel_value643, align 4
  %cmp644 = icmp sgt i32 %add642, %433
  br i1 %cmp644, label %cond.true.646, label %cond.false.648

cond.true.646:                                    ; preds = %cond.false.630
  %434 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value647 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %434, i32 0, i32 155
  %435 = load i32, i32* %max_imgpel_value647, align 4
  br label %cond.end.661

cond.false.648:                                   ; preds = %cond.false.630
  %436 = load i32, i32* %j, align 4
  %idxprom649 = sext i32 %436 to i64
  %437 = load i32, i32* %i, align 4
  %idxprom650 = sext i32 %437 to i64
  %438 = load i32, i32* %n, align 4
  %idxprom651 = sext i32 %438 to i64
  %439 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx652 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %439, i64 %idxprom651
  %440 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx652, align 8
  %imgY_ups653 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %440, i32 0, i32 28
  %441 = load i16**, i16*** %imgY_ups653, align 8
  %arrayidx654 = getelementptr inbounds i16*, i16** %441, i64 %idxprom650
  %442 = load i16*, i16** %arrayidx654, align 8
  %arrayidx655 = getelementptr inbounds i16, i16* %442, i64 %idxprom649
  %443 = load i16, i16* %arrayidx655, align 2
  %conv656 = zext i16 %443 to i32
  %444 = load i32, i32* %wf_weight, align 4
  %mul657 = mul nsw i32 %conv656, %444
  %445 = load i32, i32* @wp_luma_round, align 4
  %add658 = add nsw i32 %mul657, %445
  %446 = load i32, i32* @luma_log_weight_denom, align 4
  %shr659 = ashr i32 %add658, %446
  %447 = load i32, i32* %wf_offset, align 4
  %add660 = add nsw i32 %shr659, %447
  br label %cond.end.661

cond.end.661:                                     ; preds = %cond.false.648, %cond.true.646
  %cond662 = phi i32 [ %435, %cond.true.646 ], [ %add660, %cond.false.648 ]
  br label %cond.end.663

cond.end.663:                                     ; preds = %cond.end.661, %cond.true.629
  %cond664 = phi i32 [ 0, %cond.true.629 ], [ %cond662, %cond.end.661 ]
  %conv665 = trunc i32 %cond664 to i16
  %448 = load i32, i32* %j, align 4
  %idxprom666 = sext i32 %448 to i64
  %449 = load i32, i32* %i, align 4
  %idxprom667 = sext i32 %449 to i64
  %450 = load i32, i32* %n, align 4
  %idxprom668 = sext i32 %450 to i64
  %451 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx669 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %451, i64 %idxprom668
  %452 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx669, align 8
  %imgY_ups_w670 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %452, i32 0, i32 29
  %453 = load i16**, i16*** %imgY_ups_w670, align 8
  %arrayidx671 = getelementptr inbounds i16*, i16** %453, i64 %idxprom667
  %454 = load i16*, i16** %arrayidx671, align 8
  %arrayidx672 = getelementptr inbounds i16, i16* %454, i64 %idxprom666
  store i16 %conv665, i16* %arrayidx672, align 2
  br label %for.inc.673

for.inc.673:                                      ; preds = %cond.end.663
  %455 = load i32, i32* %j, align 4
  %inc674 = add nsw i32 %455, 1
  store i32 %inc674, i32* %j, align 4
  br label %for.cond.608

for.end.675:                                      ; preds = %for.cond.608
  br label %for.inc.676

for.inc.676:                                      ; preds = %for.end.675
  %456 = load i32, i32* %i, align 4
  %inc677 = add nsw i32 %456, 1
  store i32 %inc677, i32* %i, align 4
  br label %for.cond.601

for.end.678:                                      ; preds = %for.cond.601
  br label %for.inc.679

for.inc.679:                                      ; preds = %for.end.678
  %457 = load i32, i32* %n, align 4
  %inc680 = add nsw i32 %457, 1
  store i32 %inc680, i32* %n, align 4
  br label %for.cond.456

for.end.681:                                      ; preds = %for.cond.456
  br label %for.inc.682

for.inc.682:                                      ; preds = %for.end.681
  %458 = load i32, i32* %clist, align 4
  %inc683 = add nsw i32 %458, 1
  store i32 %inc683, i32* %clist, align 4
  br label %for.cond.451

for.end.684:                                      ; preds = %for.cond.451
  %459 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc685 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %459, i32 0, i32 20
  %460 = load i32, i32* %weighted_bipred_idc685, align 4
  %cmp686 = icmp eq i32 %460, 1
  br i1 %cmp686, label %if.then.688, label %if.else.737

if.then.688:                                      ; preds = %for.end.684
  store i32 0, i32* %clist, align 4
  br label %for.cond.689

for.cond.689:                                     ; preds = %for.inc.734, %if.then.688
  %461 = load i32, i32* %clist, align 4
  %462 = load i32, i32* %list_offset, align 4
  %add690 = add nsw i32 2, %462
  %cmp691 = icmp slt i32 %461, %add690
  br i1 %cmp691, label %for.body.693, label %for.end.736

for.body.693:                                     ; preds = %for.cond.689
  store i32 0, i32* %index, align 4
  br label %for.cond.694

for.cond.694:                                     ; preds = %for.inc.731, %for.body.693
  %463 = load i32, i32* %index, align 4
  %464 = load i32, i32* %clist, align 4
  %idxprom695 = sext i32 %464 to i64
  %arrayidx696 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom695
  %465 = load i32, i32* %arrayidx696, align 4
  %cmp697 = icmp slt i32 %463, %465
  br i1 %cmp697, label %for.body.699, label %for.end.733

for.body.699:                                     ; preds = %for.cond.694
  store i32 0, i32* %comp, align 4
  br label %for.cond.700

for.cond.700:                                     ; preds = %for.inc.728, %for.body.699
  %466 = load i32, i32* %comp, align 4
  %cmp701 = icmp slt i32 %466, 3
  br i1 %cmp701, label %for.body.703, label %for.end.730

for.body.703:                                     ; preds = %for.cond.700
  %467 = load i32, i32* %comp, align 4
  %idxprom704 = sext i32 %467 to i64
  %468 = load i32, i32* %index, align 4
  %idxprom705 = sext i32 %468 to i64
  %469 = load i32, i32* %clist, align 4
  %idxprom706 = sext i32 %469 to i64
  %arrayidx707 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom706
  %arrayidx708 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx707, i32 0, i64 %idxprom705
  %arrayidx709 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx708, i32 0, i64 %idxprom704
  %470 = load i32, i32* %arrayidx709, align 4
  %471 = load i32, i32* %comp, align 4
  %idxprom710 = sext i32 %471 to i64
  %472 = load i32, i32* %index, align 4
  %idxprom711 = sext i32 %472 to i64
  %473 = load i32, i32* %clist, align 4
  %idxprom712 = sext i32 %473 to i64
  %474 = load i32***, i32**** @wp_weight, align 8
  %arrayidx713 = getelementptr inbounds i32**, i32*** %474, i64 %idxprom712
  %475 = load i32**, i32*** %arrayidx713, align 8
  %arrayidx714 = getelementptr inbounds i32*, i32** %475, i64 %idxprom711
  %476 = load i32*, i32** %arrayidx714, align 8
  %arrayidx715 = getelementptr inbounds i32, i32* %476, i64 %idxprom710
  store i32 %470, i32* %arrayidx715, align 4
  %477 = load i32, i32* %comp, align 4
  %idxprom716 = sext i32 %477 to i64
  %478 = load i32, i32* %index, align 4
  %idxprom717 = sext i32 %478 to i64
  %479 = load i32, i32* %clist, align 4
  %idxprom718 = sext i32 %479 to i64
  %arrayidx719 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom718
  %arrayidx720 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx719, i32 0, i64 %idxprom717
  %arrayidx721 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx720, i32 0, i64 %idxprom716
  %480 = load i32, i32* %arrayidx721, align 4
  %481 = load i32, i32* %comp, align 4
  %idxprom722 = sext i32 %481 to i64
  %482 = load i32, i32* %index, align 4
  %idxprom723 = sext i32 %482 to i64
  %483 = load i32, i32* %clist, align 4
  %idxprom724 = sext i32 %483 to i64
  %484 = load i32***, i32**** @wp_offset, align 8
  %arrayidx725 = getelementptr inbounds i32**, i32*** %484, i64 %idxprom724
  %485 = load i32**, i32*** %arrayidx725, align 8
  %arrayidx726 = getelementptr inbounds i32*, i32** %485, i64 %idxprom723
  %486 = load i32*, i32** %arrayidx726, align 8
  %arrayidx727 = getelementptr inbounds i32, i32* %486, i64 %idxprom722
  store i32 %480, i32* %arrayidx727, align 4
  br label %for.inc.728

for.inc.728:                                      ; preds = %for.body.703
  %487 = load i32, i32* %comp, align 4
  %inc729 = add nsw i32 %487, 1
  store i32 %inc729, i32* %comp, align 4
  br label %for.cond.700

for.end.730:                                      ; preds = %for.cond.700
  br label %for.inc.731

for.inc.731:                                      ; preds = %for.end.730
  %488 = load i32, i32* %index, align 4
  %inc732 = add nsw i32 %488, 1
  store i32 %inc732, i32* %index, align 4
  br label %for.cond.694

for.end.733:                                      ; preds = %for.cond.694
  br label %for.inc.734

for.inc.734:                                      ; preds = %for.end.733
  %489 = load i32, i32* %clist, align 4
  %inc735 = add nsw i32 %489, 1
  store i32 %inc735, i32* %clist, align 4
  br label %for.cond.689

for.end.736:                                      ; preds = %for.cond.689
  br label %if.end.788

if.else.737:                                      ; preds = %for.end.684
  store i32 0, i32* %clist, align 4
  br label %for.cond.738

for.cond.738:                                     ; preds = %for.inc.785, %if.else.737
  %490 = load i32, i32* %clist, align 4
  %491 = load i32, i32* %list_offset, align 4
  %add739 = add nsw i32 2, %491
  %cmp740 = icmp slt i32 %490, %add739
  br i1 %cmp740, label %for.body.742, label %for.end.787

for.body.742:                                     ; preds = %for.cond.738
  store i32 0, i32* %index, align 4
  br label %for.cond.743

for.cond.743:                                     ; preds = %for.inc.782, %for.body.742
  %492 = load i32, i32* %index, align 4
  %493 = load i32, i32* %clist, align 4
  %idxprom744 = sext i32 %493 to i64
  %arrayidx745 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom744
  %494 = load i32, i32* %arrayidx745, align 4
  %cmp746 = icmp slt i32 %492, %494
  br i1 %cmp746, label %for.body.748, label %for.end.784

for.body.748:                                     ; preds = %for.cond.743
  %495 = load i32, i32* @luma_log_weight_denom, align 4
  %shl749 = shl i32 1, %495
  %496 = load i32, i32* %index, align 4
  %idxprom750 = sext i32 %496 to i64
  %497 = load i32, i32* %clist, align 4
  %idxprom751 = sext i32 %497 to i64
  %498 = load i32***, i32**** @wp_weight, align 8
  %arrayidx752 = getelementptr inbounds i32**, i32*** %498, i64 %idxprom751
  %499 = load i32**, i32*** %arrayidx752, align 8
  %arrayidx753 = getelementptr inbounds i32*, i32** %499, i64 %idxprom750
  %500 = load i32*, i32** %arrayidx753, align 8
  %arrayidx754 = getelementptr inbounds i32, i32* %500, i64 0
  store i32 %shl749, i32* %arrayidx754, align 4
  %501 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl755 = shl i32 1, %501
  %502 = load i32, i32* %index, align 4
  %idxprom756 = sext i32 %502 to i64
  %503 = load i32, i32* %clist, align 4
  %idxprom757 = sext i32 %503 to i64
  %504 = load i32***, i32**** @wp_weight, align 8
  %arrayidx758 = getelementptr inbounds i32**, i32*** %504, i64 %idxprom757
  %505 = load i32**, i32*** %arrayidx758, align 8
  %arrayidx759 = getelementptr inbounds i32*, i32** %505, i64 %idxprom756
  %506 = load i32*, i32** %arrayidx759, align 8
  %arrayidx760 = getelementptr inbounds i32, i32* %506, i64 1
  store i32 %shl755, i32* %arrayidx760, align 4
  %507 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl761 = shl i32 1, %507
  %508 = load i32, i32* %index, align 4
  %idxprom762 = sext i32 %508 to i64
  %509 = load i32, i32* %clist, align 4
  %idxprom763 = sext i32 %509 to i64
  %510 = load i32***, i32**** @wp_weight, align 8
  %arrayidx764 = getelementptr inbounds i32**, i32*** %510, i64 %idxprom763
  %511 = load i32**, i32*** %arrayidx764, align 8
  %arrayidx765 = getelementptr inbounds i32*, i32** %511, i64 %idxprom762
  %512 = load i32*, i32** %arrayidx765, align 8
  %arrayidx766 = getelementptr inbounds i32, i32* %512, i64 2
  store i32 %shl761, i32* %arrayidx766, align 4
  %513 = load i32, i32* %index, align 4
  %idxprom767 = sext i32 %513 to i64
  %514 = load i32, i32* %clist, align 4
  %idxprom768 = sext i32 %514 to i64
  %515 = load i32***, i32**** @wp_offset, align 8
  %arrayidx769 = getelementptr inbounds i32**, i32*** %515, i64 %idxprom768
  %516 = load i32**, i32*** %arrayidx769, align 8
  %arrayidx770 = getelementptr inbounds i32*, i32** %516, i64 %idxprom767
  %517 = load i32*, i32** %arrayidx770, align 8
  %arrayidx771 = getelementptr inbounds i32, i32* %517, i64 0
  store i32 0, i32* %arrayidx771, align 4
  %518 = load i32, i32* %index, align 4
  %idxprom772 = sext i32 %518 to i64
  %519 = load i32, i32* %clist, align 4
  %idxprom773 = sext i32 %519 to i64
  %520 = load i32***, i32**** @wp_offset, align 8
  %arrayidx774 = getelementptr inbounds i32**, i32*** %520, i64 %idxprom773
  %521 = load i32**, i32*** %arrayidx774, align 8
  %arrayidx775 = getelementptr inbounds i32*, i32** %521, i64 %idxprom772
  %522 = load i32*, i32** %arrayidx775, align 8
  %arrayidx776 = getelementptr inbounds i32, i32* %522, i64 1
  store i32 0, i32* %arrayidx776, align 4
  %523 = load i32, i32* %index, align 4
  %idxprom777 = sext i32 %523 to i64
  %524 = load i32, i32* %clist, align 4
  %idxprom778 = sext i32 %524 to i64
  %525 = load i32***, i32**** @wp_offset, align 8
  %arrayidx779 = getelementptr inbounds i32**, i32*** %525, i64 %idxprom778
  %526 = load i32**, i32*** %arrayidx779, align 8
  %arrayidx780 = getelementptr inbounds i32*, i32** %526, i64 %idxprom777
  %527 = load i32*, i32** %arrayidx780, align 8
  %arrayidx781 = getelementptr inbounds i32, i32* %527, i64 2
  store i32 0, i32* %arrayidx781, align 4
  br label %for.inc.782

for.inc.782:                                      ; preds = %for.body.748
  %528 = load i32, i32* %index, align 4
  %inc783 = add nsw i32 %528, 1
  store i32 %inc783, i32* %index, align 4
  br label %for.cond.743

for.end.784:                                      ; preds = %for.cond.743
  br label %for.inc.785

for.inc.785:                                      ; preds = %for.end.784
  %529 = load i32, i32* %clist, align 4
  %inc786 = add nsw i32 %529, 1
  store i32 %inc786, i32* %clist, align 4
  br label %for.cond.738

for.end.787:                                      ; preds = %for.cond.738
  br label %if.end.788

if.end.788:                                       ; preds = %for.end.787, %for.end.736
  store i32 0, i32* %i, align 4
  br label %for.cond.789

for.cond.789:                                     ; preds = %for.inc.837, %if.end.788
  %530 = load i32, i32* %i, align 4
  %531 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp790 = icmp slt i32 %530, %531
  br i1 %cmp790, label %for.body.792, label %for.end.839

for.body.792:                                     ; preds = %for.cond.789
  store i32 0, i32* %j, align 4
  br label %for.cond.793

for.cond.793:                                     ; preds = %for.inc.834, %for.body.792
  %532 = load i32, i32* %j, align 4
  %533 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp794 = icmp slt i32 %532, %533
  br i1 %cmp794, label %for.body.796, label %for.end.836

for.body.796:                                     ; preds = %for.cond.793
  store i32 0, i32* %comp, align 4
  br label %for.cond.797

for.cond.797:                                     ; preds = %for.inc.831, %for.body.796
  %534 = load i32, i32* %comp, align 4
  %cmp798 = icmp slt i32 %534, 3
  br i1 %cmp798, label %for.body.800, label %for.end.833

for.body.800:                                     ; preds = %for.cond.797
  %535 = load i32, i32* %comp, align 4
  %cmp801 = icmp eq i32 %535, 0
  br i1 %cmp801, label %cond.true.803, label %cond.false.804

cond.true.803:                                    ; preds = %for.body.800
  %536 = load i32, i32* @luma_log_weight_denom, align 4
  br label %cond.end.805

cond.false.804:                                   ; preds = %for.body.800
  %537 = load i32, i32* @chroma_log_weight_denom, align 4
  br label %cond.end.805

cond.end.805:                                     ; preds = %cond.false.804, %cond.true.803
  %cond806 = phi i32 [ %536, %cond.true.803 ], [ %537, %cond.false.804 ]
  store i32 %cond806, i32* %log_weight_denom, align 4
  %538 = load i32, i32* %comp, align 4
  %idxprom807 = sext i32 %538 to i64
  %539 = load i32, i32* %i, align 4
  %idxprom808 = sext i32 %539 to i64
  %540 = load i32***, i32**** @wp_weight, align 8
  %arrayidx809 = getelementptr inbounds i32**, i32*** %540, i64 0
  %541 = load i32**, i32*** %arrayidx809, align 8
  %arrayidx810 = getelementptr inbounds i32*, i32** %541, i64 %idxprom808
  %542 = load i32*, i32** %arrayidx810, align 8
  %arrayidx811 = getelementptr inbounds i32, i32* %542, i64 %idxprom807
  %543 = load i32, i32* %arrayidx811, align 4
  %544 = load i32, i32* %comp, align 4
  %idxprom812 = sext i32 %544 to i64
  %545 = load i32, i32* %j, align 4
  %idxprom813 = sext i32 %545 to i64
  %546 = load i32, i32* %i, align 4
  %idxprom814 = sext i32 %546 to i64
  %547 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx815 = getelementptr inbounds i32***, i32**** %547, i64 0
  %548 = load i32***, i32**** %arrayidx815, align 8
  %arrayidx816 = getelementptr inbounds i32**, i32*** %548, i64 %idxprom814
  %549 = load i32**, i32*** %arrayidx816, align 8
  %arrayidx817 = getelementptr inbounds i32*, i32** %549, i64 %idxprom813
  %550 = load i32*, i32** %arrayidx817, align 8
  %arrayidx818 = getelementptr inbounds i32, i32* %550, i64 %idxprom812
  store i32 %543, i32* %arrayidx818, align 4
  %551 = load i32, i32* %comp, align 4
  %idxprom819 = sext i32 %551 to i64
  %552 = load i32, i32* %j, align 4
  %idxprom820 = sext i32 %552 to i64
  %553 = load i32***, i32**** @wp_weight, align 8
  %arrayidx821 = getelementptr inbounds i32**, i32*** %553, i64 1
  %554 = load i32**, i32*** %arrayidx821, align 8
  %arrayidx822 = getelementptr inbounds i32*, i32** %554, i64 %idxprom820
  %555 = load i32*, i32** %arrayidx822, align 8
  %arrayidx823 = getelementptr inbounds i32, i32* %555, i64 %idxprom819
  %556 = load i32, i32* %arrayidx823, align 4
  %557 = load i32, i32* %comp, align 4
  %idxprom824 = sext i32 %557 to i64
  %558 = load i32, i32* %j, align 4
  %idxprom825 = sext i32 %558 to i64
  %559 = load i32, i32* %i, align 4
  %idxprom826 = sext i32 %559 to i64
  %560 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx827 = getelementptr inbounds i32***, i32**** %560, i64 1
  %561 = load i32***, i32**** %arrayidx827, align 8
  %arrayidx828 = getelementptr inbounds i32**, i32*** %561, i64 %idxprom826
  %562 = load i32**, i32*** %arrayidx828, align 8
  %arrayidx829 = getelementptr inbounds i32*, i32** %562, i64 %idxprom825
  %563 = load i32*, i32** %arrayidx829, align 8
  %arrayidx830 = getelementptr inbounds i32, i32* %563, i64 %idxprom824
  store i32 %556, i32* %arrayidx830, align 4
  br label %for.inc.831

for.inc.831:                                      ; preds = %cond.end.805
  %564 = load i32, i32* %comp, align 4
  %inc832 = add nsw i32 %564, 1
  store i32 %inc832, i32* %comp, align 4
  br label %for.cond.797

for.end.833:                                      ; preds = %for.cond.797
  br label %for.inc.834

for.inc.834:                                      ; preds = %for.end.833
  %565 = load i32, i32* %j, align 4
  %inc835 = add nsw i32 %565, 1
  store i32 %inc835, i32* %j, align 4
  br label %for.cond.793

for.end.836:                                      ; preds = %for.cond.793
  br label %for.inc.837

for.inc.837:                                      ; preds = %for.end.836
  %566 = load i32, i32* %i, align 4
  %inc838 = add nsw i32 %566, 1
  store i32 %inc838, i32* %i, align 4
  br label %for.cond.789

for.end.839:                                      ; preds = %for.cond.789
  br label %if.end.840

if.end.840:                                       ; preds = %for.end.839, %for.end.430
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

; Function Attrs: nounwind uwtable
define i32 @test_wp_P_slice(i32 %select_offset) #0 {
entry:
  %select_offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %dc_org = alloca double, align 8
  %index = alloca i32, align 4
  %comp = alloca i32, align 4
  %dc_ref = alloca [15 x double], align 16
  %ref_pic = alloca i16*, align 8
  %ref_pic_w = alloca i16*, align 8
  %default_weight = alloca i32, align 4
  %default_weight_chroma = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %weight = alloca [2 x [15 x [3 x i32]]], align 16
  %offset = alloca [2 x [15 x [3 x i32]]], align 16
  %clist = alloca i32, align 4
  %perform_wp = alloca i32, align 4
  store i32 %select_offset, i32* %select_offset.addr, align 4
  store double 0.000000e+00, double* %dc_org, align 8
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
  store i32 0, i32* %perform_wp, align 4
  store i32 5, i32* @luma_log_weight_denom, align 4
  store i32 5, i32* @chroma_log_weight_denom, align 4
  %9 = load i32, i32* @luma_log_weight_denom, align 4
  %sub = sub nsw i32 %9, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* @wp_luma_round, align 4
  %10 = load i32, i32* @chroma_log_weight_denom, align 4
  %sub5 = sub nsw i32 %10, 1
  %shl6 = shl i32 1, %sub5
  store i32 %shl6, i32* @wp_chroma_round, align 4
  %11 = load i32, i32* @luma_log_weight_denom, align 4
  %shl7 = shl i32 1, %11
  store i32 %shl7, i32* %default_weight, align 4
  %12 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl8 = shl i32 1, %12
  store i32 %shl8, i32* %default_weight_chroma, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %cond.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 2, %14
  %cmp = icmp slt i32 %13, %add
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.41, %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp slt i32 %15, %17
  br i1 %cmp12, label %for.body.13, label %for.end.43

for.body.13:                                      ; preds = %for.cond.9
  store i32 0, i32* %n, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %18 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %18, 3
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %19 = load i32, i32* %default_weight, align 4
  %20 = load i32, i32* %n, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx20, i32 0, i64 %idxprom18
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx21, i32 0, i64 %idxprom17
  store i32 %19, i32* %arrayidx22, align 4
  %23 = load i32, i32* %default_weight, align 4
  %24 = load i32, i32* %n, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %26 to i64
  %27 = load i32***, i32**** @wp_weight, align 8
  %arrayidx26 = getelementptr inbounds i32**, i32*** %27, i64 %idxprom25
  %28 = load i32**, i32*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32*, i32** %28, i64 %idxprom24
  %29 = load i32*, i32** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %29, i64 %idxprom23
  store i32 %23, i32* %arrayidx28, align 4
  %30 = load i32, i32* %n, align 4
  %idxprom29 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %32 to i64
  %33 = load i32***, i32**** @wp_offset, align 8
  %arrayidx32 = getelementptr inbounds i32**, i32*** %33, i64 %idxprom31
  %34 = load i32**, i32*** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %34, i64 %idxprom30
  %35 = load i32*, i32** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %35, i64 %idxprom29
  store i32 0, i32* %arrayidx34, align 4
  %36 = load i32, i32* %n, align 4
  %idxprom35 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx38, i32 0, i64 %idxprom36
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx39, i32 0, i64 %idxprom35
  store i32 0, i32* %arrayidx40, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %39 = load i32, i32* %n, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %40 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %40, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond.9

for.end.43:                                       ; preds = %for.cond.9
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %41 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %41, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.61, %for.end.46
  %42 = load i32, i32* %i, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 15
  %44 = load i32, i32* %height, align 4
  %cmp48 = icmp slt i32 %42, %44
  br i1 %cmp48, label %for.body.49, label %for.end.63

for.body.49:                                      ; preds = %for.cond.47
  store i32 0, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.58, %for.body.49
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 13
  %47 = load i32, i32* %width, align 4
  %cmp51 = icmp slt i32 %45, %47
  br i1 %cmp51, label %for.body.52, label %for.end.60

for.body.52:                                      ; preds = %for.cond.50
  %48 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %49 to i64
  %50 = load i16**, i16*** @imgY_org, align 8
  %arrayidx55 = getelementptr inbounds i16*, i16** %50, i64 %idxprom54
  %51 = load i16*, i16** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %51, i64 %idxprom53
  %52 = load i16, i16* %arrayidx56, align 2
  %conv = uitofp i16 %52 to double
  %53 = load double, double* %dc_org, align 8
  %add57 = fadd double %53, %conv
  store double %add57, double* %dc_org, align 8
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.52
  %54 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %54, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond.50

for.end.60:                                       ; preds = %for.cond.50
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end.60
  %55 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %55, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.47

for.end.63:                                       ; preds = %for.cond.47
  store i32 0, i32* %clist, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.211, %for.end.63
  %56 = load i32, i32* %clist, align 4
  %57 = load i32, i32* %list_offset, align 4
  %add65 = add nsw i32 2, %57
  %cmp66 = icmp slt i32 %56, %add65
  br i1 %cmp66, label %for.body.68, label %for.end.213

for.body.68:                                      ; preds = %for.cond.64
  store i32 0, i32* %n, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.208, %for.body.68
  %58 = load i32, i32* %n, align 4
  %59 = load i32, i32* %clist, align 4
  %idxprom70 = sext i32 %59 to i64
  %arrayidx71 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom70
  %60 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp slt i32 %58, %60
  br i1 %cmp72, label %for.body.74, label %for.end.210

for.body.74:                                      ; preds = %for.cond.69
  %61 = load i32, i32* %n, align 4
  %idxprom75 = sext i32 %61 to i64
  %arrayidx76 = getelementptr inbounds [15 x double], [15 x double]* %dc_ref, i32 0, i64 %idxprom75
  store double 0.000000e+00, double* %arrayidx76, align 8
  %62 = load i32, i32* %n, align 4
  %idxprom77 = sext i32 %62 to i64
  %63 = load i32, i32* %clist, align 4
  %idxprom78 = sext i32 %63 to i64
  %arrayidx79 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom78
  %64 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %64, i64 %idxprom77
  %65 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx80, align 8
  %imgY_11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %65, i32 0, i32 26
  %66 = load i16*, i16** %imgY_11, align 8
  store i16* %66, i16** %ref_pic, align 8
  %67 = load i32, i32* %n, align 4
  %idxprom81 = sext i32 %67 to i64
  %68 = load i32, i32* %clist, align 4
  %idxprom82 = sext i32 %68 to i64
  %arrayidx83 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom82
  %69 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %69, i64 %idxprom81
  %70 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx84, align 8
  %imgY_11_w = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %70, i32 0, i32 27
  %71 = load i16*, i16** %imgY_11_w, align 8
  store i16* %71, i16** %ref_pic_w, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.97, %for.body.74
  %72 = load i32, i32* %i, align 4
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 15
  %74 = load i32, i32* %height86, align 4
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 13
  %76 = load i32, i32* %width87, align 4
  %mul = mul nsw i32 %74, %76
  %cmp88 = icmp slt i32 %72, %mul
  br i1 %cmp88, label %for.body.90, label %for.end.99

for.body.90:                                      ; preds = %for.cond.85
  %77 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %77 to i64
  %78 = load i16*, i16** %ref_pic, align 8
  %arrayidx92 = getelementptr inbounds i16, i16* %78, i64 %idxprom91
  %79 = load i16, i16* %arrayidx92, align 2
  %conv93 = uitofp i16 %79 to double
  %80 = load i32, i32* %n, align 4
  %idxprom94 = sext i32 %80 to i64
  %arrayidx95 = getelementptr inbounds [15 x double], [15 x double]* %dc_ref, i32 0, i64 %idxprom94
  %81 = load double, double* %arrayidx95, align 8
  %add96 = fadd double %81, %conv93
  store double %add96, double* %arrayidx95, align 8
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.90
  %82 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %82, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond.85

for.end.99:                                       ; preds = %for.cond.85
  %83 = load i32, i32* %select_offset.addr, align 4
  %cmp100 = icmp eq i32 %83, 0
  br i1 %cmp100, label %if.then, label %if.else.144

if.then:                                          ; preds = %for.end.99
  %84 = load i32, i32* %n, align 4
  %idxprom102 = sext i32 %84 to i64
  %arrayidx103 = getelementptr inbounds [15 x double], [15 x double]* %dc_ref, i32 0, i64 %idxprom102
  %85 = load double, double* %arrayidx103, align 8
  %cmp104 = fcmp une double %85, 0.000000e+00
  br i1 %cmp104, label %if.then.106, label %if.else

if.then.106:                                      ; preds = %if.then
  %86 = load i32, i32* %default_weight, align 4
  %conv107 = sitofp i32 %86 to double
  %87 = load double, double* %dc_org, align 8
  %mul108 = fmul double %conv107, %87
  %88 = load i32, i32* %n, align 4
  %idxprom109 = sext i32 %88 to i64
  %arrayidx110 = getelementptr inbounds [15 x double], [15 x double]* %dc_ref, i32 0, i64 %idxprom109
  %89 = load double, double* %arrayidx110, align 8
  %div = fdiv double %mul108, %89
  %add111 = fadd double %div, 5.000000e-01
  %conv112 = fptosi double %add111 to i32
  %90 = load i32, i32* %n, align 4
  %idxprom113 = sext i32 %90 to i64
  %91 = load i32, i32* %clist, align 4
  %idxprom114 = sext i32 %91 to i64
  %arrayidx115 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx115, i32 0, i64 %idxprom113
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx116, i32 0, i64 0
  store i32 %conv112, i32* %arrayidx117, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %92 = load i32, i32* %default_weight, align 4
  %93 = load i32, i32* %n, align 4
  %idxprom118 = sext i32 %93 to i64
  %94 = load i32, i32* %clist, align 4
  %idxprom119 = sext i32 %94 to i64
  %arrayidx120 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom119
  %arrayidx121 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx120, i32 0, i64 %idxprom118
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx121, i32 0, i64 0
  store i32 %92, i32* %arrayidx122, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.106
  %95 = load i32, i32* %n, align 4
  %idxprom123 = sext i32 %95 to i64
  %96 = load i32, i32* %clist, align 4
  %idxprom124 = sext i32 %96 to i64
  %arrayidx125 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx125, i32 0, i64 %idxprom123
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx126, i32 0, i64 0
  %97 = load i32, i32* %arrayidx127, align 4
  %cmp128 = icmp slt i32 %97, -64
  br i1 %cmp128, label %if.then.137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %98 = load i32, i32* %n, align 4
  %idxprom130 = sext i32 %98 to i64
  %99 = load i32, i32* %clist, align 4
  %idxprom131 = sext i32 %99 to i64
  %arrayidx132 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx132, i32 0, i64 %idxprom130
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx133, i32 0, i64 0
  %100 = load i32, i32* %arrayidx134, align 4
  %cmp135 = icmp sgt i32 %100, 127
  br i1 %cmp135, label %if.then.137, label %if.end.143

if.then.137:                                      ; preds = %lor.lhs.false, %if.end
  %101 = load i32, i32* %n, align 4
  %idxprom138 = sext i32 %101 to i64
  %102 = load i32, i32* %clist, align 4
  %idxprom139 = sext i32 %102 to i64
  %arrayidx140 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom139
  %arrayidx141 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx140, i32 0, i64 %idxprom138
  %arrayidx142 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx141, i32 0, i64 0
  store i32 32, i32* %arrayidx142, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.137, %lor.lhs.false
  br label %if.end.197

if.else.144:                                      ; preds = %for.end.99
  %103 = load double, double* %dc_org, align 8
  %104 = load i32, i32* %n, align 4
  %idxprom145 = sext i32 %104 to i64
  %arrayidx146 = getelementptr inbounds [15 x double], [15 x double]* %dc_ref, i32 0, i64 %idxprom145
  %105 = load double, double* %arrayidx146, align 8
  %sub147 = fsub double %103, %105
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height148 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 15
  %107 = load i32, i32* %height148, align 4
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width149 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 13
  %109 = load i32, i32* %width149, align 4
  %mul150 = mul nsw i32 %107, %109
  %conv151 = sitofp i32 %mul150 to double
  %div152 = fdiv double %sub147, %conv151
  %add153 = fadd double %div152, 5.000000e-01
  %conv154 = fptosi double %add153 to i32
  %110 = load i32, i32* %n, align 4
  %idxprom155 = sext i32 %110 to i64
  %111 = load i32, i32* %clist, align 4
  %idxprom156 = sext i32 %111 to i64
  %arrayidx157 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom156
  %arrayidx158 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx157, i32 0, i64 %idxprom155
  %arrayidx159 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx158, i32 0, i64 0
  store i32 %conv154, i32* %arrayidx159, align 4
  %112 = load i32, i32* %n, align 4
  %idxprom160 = sext i32 %112 to i64
  %113 = load i32, i32* %clist, align 4
  %idxprom161 = sext i32 %113 to i64
  %arrayidx162 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom161
  %arrayidx163 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx162, i32 0, i64 %idxprom160
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx163, i32 0, i64 0
  %114 = load i32, i32* %arrayidx164, align 4
  %cmp165 = icmp slt i32 %114, -128
  br i1 %cmp165, label %cond.true.167, label %cond.false.168

cond.true.167:                                    ; preds = %if.else.144
  br label %cond.end.185

cond.false.168:                                   ; preds = %if.else.144
  %115 = load i32, i32* %n, align 4
  %idxprom169 = sext i32 %115 to i64
  %116 = load i32, i32* %clist, align 4
  %idxprom170 = sext i32 %116 to i64
  %arrayidx171 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx171, i32 0, i64 %idxprom169
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx172, i32 0, i64 0
  %117 = load i32, i32* %arrayidx173, align 4
  %cmp174 = icmp sgt i32 %117, 127
  br i1 %cmp174, label %cond.true.176, label %cond.false.177

cond.true.176:                                    ; preds = %cond.false.168
  br label %cond.end.183

cond.false.177:                                   ; preds = %cond.false.168
  %118 = load i32, i32* %n, align 4
  %idxprom178 = sext i32 %118 to i64
  %119 = load i32, i32* %clist, align 4
  %idxprom179 = sext i32 %119 to i64
  %arrayidx180 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom179
  %arrayidx181 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx180, i32 0, i64 %idxprom178
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx181, i32 0, i64 0
  %120 = load i32, i32* %arrayidx182, align 4
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.177, %cond.true.176
  %cond184 = phi i32 [ 127, %cond.true.176 ], [ %120, %cond.false.177 ]
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.end.183, %cond.true.167
  %cond186 = phi i32 [ -128, %cond.true.167 ], [ %cond184, %cond.end.183 ]
  %121 = load i32, i32* %n, align 4
  %idxprom187 = sext i32 %121 to i64
  %122 = load i32, i32* %clist, align 4
  %idxprom188 = sext i32 %122 to i64
  %arrayidx189 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom188
  %arrayidx190 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx189, i32 0, i64 %idxprom187
  %arrayidx191 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx190, i32 0, i64 0
  store i32 %cond186, i32* %arrayidx191, align 4
  %123 = load i32, i32* %default_weight, align 4
  %124 = load i32, i32* %n, align 4
  %idxprom192 = sext i32 %124 to i64
  %125 = load i32, i32* %clist, align 4
  %idxprom193 = sext i32 %125 to i64
  %arrayidx194 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom193
  %arrayidx195 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx194, i32 0, i64 %idxprom192
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx195, i32 0, i64 0
  store i32 %123, i32* %arrayidx196, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %cond.end.185, %if.end.143
  %126 = load i32, i32* %default_weight_chroma, align 4
  %127 = load i32, i32* %n, align 4
  %idxprom198 = sext i32 %127 to i64
  %128 = load i32, i32* %clist, align 4
  %idxprom199 = sext i32 %128 to i64
  %arrayidx200 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom199
  %arrayidx201 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx200, i32 0, i64 %idxprom198
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx201, i32 0, i64 1
  store i32 %126, i32* %arrayidx202, align 4
  %129 = load i32, i32* %default_weight_chroma, align 4
  %130 = load i32, i32* %n, align 4
  %idxprom203 = sext i32 %130 to i64
  %131 = load i32, i32* %clist, align 4
  %idxprom204 = sext i32 %131 to i64
  %arrayidx205 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom204
  %arrayidx206 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx205, i32 0, i64 %idxprom203
  %arrayidx207 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx206, i32 0, i64 2
  store i32 %129, i32* %arrayidx207, align 4
  br label %for.inc.208

for.inc.208:                                      ; preds = %if.end.197
  %132 = load i32, i32* %n, align 4
  %inc209 = add nsw i32 %132, 1
  store i32 %inc209, i32* %n, align 4
  br label %for.cond.69

for.end.210:                                      ; preds = %for.cond.69
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.end.210
  %133 = load i32, i32* %clist, align 4
  %inc212 = add nsw i32 %133, 1
  store i32 %inc212, i32* %clist, align 4
  br label %for.cond.64

for.end.213:                                      ; preds = %for.cond.64
  store i32 0, i32* %clist, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.262, %for.end.213
  %134 = load i32, i32* %clist, align 4
  %135 = load i32, i32* %list_offset, align 4
  %add215 = add nsw i32 2, %135
  %cmp216 = icmp slt i32 %134, %add215
  br i1 %cmp216, label %for.body.218, label %for.end.264

for.body.218:                                     ; preds = %for.cond.214
  store i32 0, i32* %index, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.255, %for.body.218
  %136 = load i32, i32* %index, align 4
  %137 = load i32, i32* %clist, align 4
  %idxprom220 = sext i32 %137 to i64
  %arrayidx221 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom220
  %138 = load i32, i32* %arrayidx221, align 4
  %cmp222 = icmp slt i32 %136, %138
  br i1 %cmp222, label %for.body.224, label %for.end.257

for.body.224:                                     ; preds = %for.cond.219
  store i32 0, i32* %comp, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.248, %for.body.224
  %139 = load i32, i32* %comp, align 4
  %cmp226 = icmp slt i32 %139, 3
  br i1 %cmp226, label %for.body.228, label %for.end.250

for.body.228:                                     ; preds = %for.cond.225
  %140 = load i32, i32* %comp, align 4
  %idxprom229 = sext i32 %140 to i64
  %141 = load i32, i32* %index, align 4
  %idxprom230 = sext i32 %141 to i64
  %142 = load i32, i32* %clist, align 4
  %idxprom231 = sext i32 %142 to i64
  %arrayidx232 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom231
  %arrayidx233 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx232, i32 0, i64 %idxprom230
  %arrayidx234 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx233, i32 0, i64 %idxprom229
  %143 = load i32, i32* %arrayidx234, align 4
  %144 = load i32, i32* %default_weight, align 4
  %cmp235 = icmp ne i32 %143, %144
  br i1 %cmp235, label %if.then.246, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %for.body.228
  %145 = load i32, i32* %comp, align 4
  %idxprom238 = sext i32 %145 to i64
  %146 = load i32, i32* %index, align 4
  %idxprom239 = sext i32 %146 to i64
  %147 = load i32, i32* %clist, align 4
  %idxprom240 = sext i32 %147 to i64
  %arrayidx241 = getelementptr inbounds [2 x [15 x [3 x i32]]], [2 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom240
  %arrayidx242 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx241, i32 0, i64 %idxprom239
  %arrayidx243 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx242, i32 0, i64 %idxprom238
  %148 = load i32, i32* %arrayidx243, align 4
  %cmp244 = icmp ne i32 %148, 0
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %lor.lhs.false.237, %for.body.228
  store i32 1, i32* %perform_wp, align 4
  br label %for.end.250

if.end.247:                                       ; preds = %lor.lhs.false.237
  br label %for.inc.248

for.inc.248:                                      ; preds = %if.end.247
  %149 = load i32, i32* %comp, align 4
  %inc249 = add nsw i32 %149, 1
  store i32 %inc249, i32* %comp, align 4
  br label %for.cond.225

for.end.250:                                      ; preds = %if.then.246, %for.cond.225
  %150 = load i32, i32* %perform_wp, align 4
  %cmp251 = icmp eq i32 %150, 1
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %for.end.250
  br label %for.end.257

if.end.254:                                       ; preds = %for.end.250
  br label %for.inc.255

for.inc.255:                                      ; preds = %if.end.254
  %151 = load i32, i32* %index, align 4
  %inc256 = add nsw i32 %151, 1
  store i32 %inc256, i32* %index, align 4
  br label %for.cond.219

for.end.257:                                      ; preds = %if.then.253, %for.cond.219
  %152 = load i32, i32* %perform_wp, align 4
  %cmp258 = icmp eq i32 %152, 1
  br i1 %cmp258, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %for.end.257
  br label %for.end.264

if.end.261:                                       ; preds = %for.end.257
  br label %for.inc.262

for.inc.262:                                      ; preds = %if.end.261
  %153 = load i32, i32* %clist, align 4
  %inc263 = add nsw i32 %153, 1
  store i32 %inc263, i32* %clist, align 4
  br label %for.cond.214

for.end.264:                                      ; preds = %if.then.260, %for.cond.214
  %154 = load i32, i32* %perform_wp, align 4
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define i32 @test_wp_B_slice(i32 %select_method) #0 {
entry:
  %select_method.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %tx = alloca i32, align 4
  %DistScaleFactor = alloca i32, align 4
  %dc_org = alloca double, align 8
  %index = alloca i32, align 4
  %comp = alloca i32, align 4
  %dc_ref = alloca [6 x [15 x double]], align 16
  %log_weight_denom = alloca i32, align 4
  %ref_pic = alloca i16*, align 8
  %ref_pic_w = alloca i16*, align 8
  %default_weight = alloca i32, align 4
  %default_weight_chroma = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %weight = alloca [6 x [15 x [3 x i32]]], align 16
  %offset = alloca [6 x [15 x [3 x i32]]], align 16
  %im_weight = alloca [6 x [15 x [15 x [3 x i32]]]], align 16
  %im_offset = alloca [6 x [15 x [15 x [3 x i32]]]], align 16
  %clist = alloca i32, align 4
  %wf_weight = alloca i32, align 4
  %wf_offset = alloca i32, align 4
  %perform_wp = alloca i32, align 4
  %td = alloca i32, align 4
  %tb = alloca i32, align 4
  store i32 %select_method, i32* %select_method.addr, align 4
  store double 0.000000e+00, double* %dc_org, align 8
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
  store i32 0, i32* %perform_wp, align 4
  store i32 5, i32* @luma_log_weight_denom, align 4
  store i32 5, i32* @chroma_log_weight_denom, align 4
  %9 = load i32, i32* @luma_log_weight_denom, align 4
  %sub = sub nsw i32 %9, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* @wp_luma_round, align 4
  %10 = load i32, i32* @chroma_log_weight_denom, align 4
  %sub5 = sub nsw i32 %10, 1
  %shl6 = shl i32 1, %sub5
  store i32 %shl6, i32* @wp_chroma_round, align 4
  %11 = load i32, i32* @luma_log_weight_denom, align 4
  %shl7 = shl i32 1, %11
  store i32 %shl7, i32* %default_weight, align 4
  %12 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl8 = shl i32 1, %12
  store i32 %shl8, i32* %default_weight_chroma, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %cond.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 2, %14
  %cmp = icmp slt i32 %13, %add
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.41, %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp slt i32 %15, %17
  br i1 %cmp12, label %for.body.13, label %for.end.43

for.body.13:                                      ; preds = %for.cond.9
  store i32 0, i32* %n, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %18 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %18, 3
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %19 = load i32, i32* %default_weight, align 4
  %20 = load i32, i32* %n, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %22 to i64
  %23 = load i32***, i32**** @wp_weight, align 8
  %arrayidx20 = getelementptr inbounds i32**, i32*** %23, i64 %idxprom19
  %24 = load i32**, i32*** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %24, i64 %idxprom18
  %25 = load i32*, i32** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %25, i64 %idxprom17
  store i32 %19, i32* %arrayidx22, align 4
  %26 = load i32, i32* %n, align 4
  %idxprom23 = sext i32 %26 to i64
  %27 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load i32***, i32**** @wp_offset, align 8
  %arrayidx26 = getelementptr inbounds i32**, i32*** %29, i64 %idxprom25
  %30 = load i32**, i32*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32*, i32** %30, i64 %idxprom24
  %31 = load i32*, i32** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %31, i64 %idxprom23
  store i32 0, i32* %arrayidx28, align 4
  %32 = load i32, i32* %n, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %34 to i64
  %arrayidx32 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx32, i32 0, i64 %idxprom30
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx33, i32 0, i64 %idxprom29
  store i32 0, i32* %arrayidx34, align 4
  %35 = load i32, i32* %default_weight, align 4
  %36 = load i32, i32* %n, align 4
  %idxprom35 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx38, i32 0, i64 %idxprom36
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx39, i32 0, i64 %idxprom35
  store i32 %35, i32* %arrayidx40, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %39 = load i32, i32* %n, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %40 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %40, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond.9

for.end.43:                                       ; preds = %for.cond.9
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %41 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %41, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.227, %for.end.46
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp48 = icmp slt i32 %42, %43
  br i1 %cmp48, label %for.body.49, label %for.end.229

for.body.49:                                      ; preds = %for.cond.47
  store i32 0, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.224, %for.body.49
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp51 = icmp slt i32 %44, %45
  br i1 %cmp51, label %for.body.52, label %for.end.226

for.body.52:                                      ; preds = %for.cond.50
  %46 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %46 to i64
  %47 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx54 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %47, i64 %idxprom53
  %48 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx54, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %48, i32 0, i32 1
  %49 = load i32, i32* %poc, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %50 to i64
  %51 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx56 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %51, i64 %idxprom55
  %52 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx56, align 8
  %poc57 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %52, i32 0, i32 1
  %53 = load i32, i32* %poc57, align 4
  %sub58 = sub nsw i32 %49, %53
  %cmp59 = icmp slt i32 %sub58, -128
  br i1 %cmp59, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %for.body.52
  br label %cond.end.81

cond.false.61:                                    ; preds = %for.body.52
  %54 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %54 to i64
  %55 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx63 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %55, i64 %idxprom62
  %56 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx63, align 8
  %poc64 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 1
  %57 = load i32, i32* %poc64, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %58 to i64
  %59 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx66 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %59, i64 %idxprom65
  %60 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx66, align 8
  %poc67 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %60, i32 0, i32 1
  %61 = load i32, i32* %poc67, align 4
  %sub68 = sub nsw i32 %57, %61
  %cmp69 = icmp sgt i32 %sub68, 127
  br i1 %cmp69, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.false.61
  br label %cond.end.79

cond.false.71:                                    ; preds = %cond.false.61
  %62 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %62 to i64
  %63 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx73 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %63, i64 %idxprom72
  %64 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx73, align 8
  %poc74 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %64, i32 0, i32 1
  %65 = load i32, i32* %poc74, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %66 to i64
  %67 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx76 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %67, i64 %idxprom75
  %68 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx76, align 8
  %poc77 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %68, i32 0, i32 1
  %69 = load i32, i32* %poc77, align 4
  %sub78 = sub nsw i32 %65, %69
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.71, %cond.true.70
  %cond80 = phi i32 [ 127, %cond.true.70 ], [ %sub78, %cond.false.71 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.true.60
  %cond82 = phi i32 [ -128, %cond.true.60 ], [ %cond80, %cond.end.79 ]
  store i32 %cond82, i32* %td, align 4
  %70 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc83 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %70, i32 0, i32 1
  %71 = load i32, i32* %poc83, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %72 to i64
  %73 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx85 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %73, i64 %idxprom84
  %74 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx85, align 8
  %poc86 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %74, i32 0, i32 1
  %75 = load i32, i32* %poc86, align 4
  %sub87 = sub nsw i32 %71, %75
  %cmp88 = icmp slt i32 %sub87, -128
  br i1 %cmp88, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.end.81
  br label %cond.end.106

cond.false.90:                                    ; preds = %cond.end.81
  %76 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc91 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %76, i32 0, i32 1
  %77 = load i32, i32* %poc91, align 4
  %78 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %78 to i64
  %79 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx93 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %79, i64 %idxprom92
  %80 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx93, align 8
  %poc94 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %80, i32 0, i32 1
  %81 = load i32, i32* %poc94, align 4
  %sub95 = sub nsw i32 %77, %81
  %cmp96 = icmp sgt i32 %sub95, 127
  br i1 %cmp96, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %cond.false.90
  br label %cond.end.104

cond.false.98:                                    ; preds = %cond.false.90
  %82 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc99 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %82, i32 0, i32 1
  %83 = load i32, i32* %poc99, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %84 to i64
  %85 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx101 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %85, i64 %idxprom100
  %86 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx101, align 8
  %poc102 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %86, i32 0, i32 1
  %87 = load i32, i32* %poc102, align 4
  %sub103 = sub nsw i32 %83, %87
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.98, %cond.true.97
  %cond105 = phi i32 [ 127, %cond.true.97 ], [ %sub103, %cond.false.98 ]
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.end.104, %cond.true.89
  %cond107 = phi i32 [ -128, %cond.true.89 ], [ %cond105, %cond.end.104 ]
  store i32 %cond107, i32* %tb, align 4
  store i32 0, i32* %comp, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.221, %cond.end.106
  %88 = load i32, i32* %comp, align 4
  %cmp109 = icmp slt i32 %88, 3
  br i1 %cmp109, label %for.body.110, label %for.end.223

for.body.110:                                     ; preds = %for.cond.108
  %89 = load i32, i32* %td, align 4
  %cmp111 = icmp eq i32 %89, 0
  br i1 %cmp111, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.110
  %90 = load i32, i32* %comp, align 4
  %idxprom112 = sext i32 %90 to i64
  %91 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %91 to i64
  %92 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %92 to i64
  %arrayidx115 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx116 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx115, i32 0, i64 %idxprom114
  %arrayidx117 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx116, i32 0, i64 %idxprom113
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx117, i32 0, i64 %idxprom112
  store i32 32, i32* %arrayidx118, align 4
  %93 = load i32, i32* %comp, align 4
  %idxprom119 = sext i32 %93 to i64
  %94 = load i32, i32* %j, align 4
  %idxprom120 = sext i32 %94 to i64
  %95 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %95 to i64
  %arrayidx122 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx123 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx122, i32 0, i64 %idxprom121
  %arrayidx124 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx123, i32 0, i64 %idxprom120
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx124, i32 0, i64 %idxprom119
  store i32 32, i32* %arrayidx125, align 4
  %96 = load i32, i32* %comp, align 4
  %idxprom126 = sext i32 %96 to i64
  %97 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %97 to i64
  %98 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %98 to i64
  %arrayidx129 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_offset, i32 0, i64 1
  %arrayidx130 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx129, i32 0, i64 %idxprom128
  %arrayidx131 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx130, i32 0, i64 %idxprom127
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx131, i32 0, i64 %idxprom126
  store i32 0, i32* %arrayidx132, align 4
  %99 = load i32, i32* %comp, align 4
  %idxprom133 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %100 to i64
  %101 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %101 to i64
  %arrayidx136 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_offset, i32 0, i64 0
  %arrayidx137 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx136, i32 0, i64 %idxprom135
  %arrayidx138 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx137, i32 0, i64 %idxprom134
  %arrayidx139 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx138, i32 0, i64 %idxprom133
  store i32 0, i32* %arrayidx139, align 4
  br label %if.end.220

if.else:                                          ; preds = %for.body.110
  %102 = load i32, i32* %td, align 4
  %div = sdiv i32 %102, 2
  %call = call i32 @abs(i32 %div) #2
  %add140 = add nsw i32 16384, %call
  %103 = load i32, i32* %td, align 4
  %div141 = sdiv i32 %add140, %103
  store i32 %div141, i32* %tx, align 4
  %104 = load i32, i32* %tx, align 4
  %105 = load i32, i32* %tb, align 4
  %mul = mul nsw i32 %104, %105
  %add142 = add nsw i32 %mul, 32
  %shr = ashr i32 %add142, 6
  %cmp143 = icmp slt i32 %shr, -1024
  br i1 %cmp143, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %if.else
  br label %cond.end.157

cond.false.145:                                   ; preds = %if.else
  %106 = load i32, i32* %tx, align 4
  %107 = load i32, i32* %tb, align 4
  %mul146 = mul nsw i32 %106, %107
  %add147 = add nsw i32 %mul146, 32
  %shr148 = ashr i32 %add147, 6
  %cmp149 = icmp sgt i32 %shr148, 1023
  br i1 %cmp149, label %cond.true.150, label %cond.false.151

cond.true.150:                                    ; preds = %cond.false.145
  br label %cond.end.155

cond.false.151:                                   ; preds = %cond.false.145
  %108 = load i32, i32* %tx, align 4
  %109 = load i32, i32* %tb, align 4
  %mul152 = mul nsw i32 %108, %109
  %add153 = add nsw i32 %mul152, 32
  %shr154 = ashr i32 %add153, 6
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.151, %cond.true.150
  %cond156 = phi i32 [ 1023, %cond.true.150 ], [ %shr154, %cond.false.151 ]
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.end.155, %cond.true.144
  %cond158 = phi i32 [ -1024, %cond.true.144 ], [ %cond156, %cond.end.155 ]
  store i32 %cond158, i32* %DistScaleFactor, align 4
  %110 = load i32, i32* %DistScaleFactor, align 4
  %shr159 = ashr i32 %110, 2
  %111 = load i32, i32* %comp, align 4
  %idxprom160 = sext i32 %111 to i64
  %112 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %112 to i64
  %113 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %113 to i64
  %arrayidx163 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx164 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx163, i32 0, i64 %idxprom162
  %arrayidx165 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx164, i32 0, i64 %idxprom161
  %arrayidx166 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx165, i32 0, i64 %idxprom160
  store i32 %shr159, i32* %arrayidx166, align 4
  %114 = load i32, i32* %comp, align 4
  %idxprom167 = sext i32 %114 to i64
  %115 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %115 to i64
  %116 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %116 to i64
  %arrayidx170 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx171 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx170, i32 0, i64 %idxprom169
  %arrayidx172 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx171, i32 0, i64 %idxprom168
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx172, i32 0, i64 %idxprom167
  %117 = load i32, i32* %arrayidx173, align 4
  %cmp174 = icmp slt i32 %117, -64
  br i1 %cmp174, label %if.then.183, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.157
  %118 = load i32, i32* %comp, align 4
  %idxprom175 = sext i32 %118 to i64
  %119 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %119 to i64
  %120 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %120 to i64
  %arrayidx178 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx179 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx178, i32 0, i64 %idxprom177
  %arrayidx180 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx179, i32 0, i64 %idxprom176
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx180, i32 0, i64 %idxprom175
  %121 = load i32, i32* %arrayidx181, align 4
  %cmp182 = icmp sgt i32 %121, 128
  br i1 %cmp182, label %if.then.183, label %if.end

if.then.183:                                      ; preds = %lor.lhs.false, %cond.end.157
  %122 = load i32, i32* %comp, align 4
  %idxprom184 = sext i32 %122 to i64
  %123 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %123 to i64
  %124 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %124 to i64
  %arrayidx187 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx188 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx187, i32 0, i64 %idxprom186
  %arrayidx189 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx188, i32 0, i64 %idxprom185
  %arrayidx190 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx189, i32 0, i64 %idxprom184
  store i32 32, i32* %arrayidx190, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.183, %lor.lhs.false
  %125 = load i32, i32* %comp, align 4
  %idxprom191 = sext i32 %125 to i64
  %126 = load i32, i32* %j, align 4
  %idxprom192 = sext i32 %126 to i64
  %127 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %127 to i64
  %arrayidx194 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx195 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx194, i32 0, i64 %idxprom193
  %arrayidx196 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx195, i32 0, i64 %idxprom192
  %arrayidx197 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx196, i32 0, i64 %idxprom191
  %128 = load i32, i32* %arrayidx197, align 4
  %sub198 = sub nsw i32 64, %128
  %129 = load i32, i32* %comp, align 4
  %idxprom199 = sext i32 %129 to i64
  %130 = load i32, i32* %j, align 4
  %idxprom200 = sext i32 %130 to i64
  %131 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %131 to i64
  %arrayidx202 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx203 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx202, i32 0, i64 %idxprom201
  %arrayidx204 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx203, i32 0, i64 %idxprom200
  %arrayidx205 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx204, i32 0, i64 %idxprom199
  store i32 %sub198, i32* %arrayidx205, align 4
  %132 = load i32, i32* %comp, align 4
  %idxprom206 = sext i32 %132 to i64
  %133 = load i32, i32* %j, align 4
  %idxprom207 = sext i32 %133 to i64
  %134 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %134 to i64
  %arrayidx209 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_offset, i32 0, i64 1
  %arrayidx210 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx209, i32 0, i64 %idxprom208
  %arrayidx211 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx210, i32 0, i64 %idxprom207
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx211, i32 0, i64 %idxprom206
  store i32 0, i32* %arrayidx212, align 4
  %135 = load i32, i32* %comp, align 4
  %idxprom213 = sext i32 %135 to i64
  %136 = load i32, i32* %j, align 4
  %idxprom214 = sext i32 %136 to i64
  %137 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %137 to i64
  %arrayidx216 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_offset, i32 0, i64 0
  %arrayidx217 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx216, i32 0, i64 %idxprom215
  %arrayidx218 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx217, i32 0, i64 %idxprom214
  %arrayidx219 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx218, i32 0, i64 %idxprom213
  store i32 0, i32* %arrayidx219, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.end, %if.then
  br label %for.inc.221

for.inc.221:                                      ; preds = %if.end.220
  %138 = load i32, i32* %comp, align 4
  %inc222 = add nsw i32 %138, 1
  store i32 %inc222, i32* %comp, align 4
  br label %for.cond.108

for.end.223:                                      ; preds = %for.cond.108
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.end.223
  %139 = load i32, i32* %j, align 4
  %inc225 = add nsw i32 %139, 1
  store i32 %inc225, i32* %j, align 4
  br label %for.cond.50

for.end.226:                                      ; preds = %for.cond.50
  br label %for.inc.227

for.inc.227:                                      ; preds = %for.end.226
  %140 = load i32, i32* %i, align 4
  %inc228 = add nsw i32 %140, 1
  store i32 %inc228, i32* %i, align 4
  br label %for.cond.47

for.end.229:                                      ; preds = %for.cond.47
  %141 = load i32, i32* %select_method.addr, align 4
  %cmp230 = icmp eq i32 %141, 1
  br i1 %cmp230, label %if.then.231, label %if.else.331

if.then.231:                                      ; preds = %for.end.229
  store i32 0, i32* %i, align 4
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.280, %if.then.231
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp233 = icmp slt i32 %142, %143
  br i1 %cmp233, label %for.body.234, label %for.end.282

for.body.234:                                     ; preds = %for.cond.232
  store i32 0, i32* %j, align 4
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.277, %for.body.234
  %144 = load i32, i32* %j, align 4
  %145 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp236 = icmp slt i32 %144, %145
  br i1 %cmp236, label %for.body.237, label %for.end.279

for.body.237:                                     ; preds = %for.cond.235
  store i32 0, i32* %comp, align 4
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.274, %for.body.237
  %146 = load i32, i32* %comp, align 4
  %cmp239 = icmp slt i32 %146, 3
  br i1 %cmp239, label %for.body.240, label %for.end.276

for.body.240:                                     ; preds = %for.cond.238
  %147 = load i32, i32* %comp, align 4
  %cmp241 = icmp eq i32 %147, 0
  br i1 %cmp241, label %cond.true.242, label %cond.false.243

cond.true.242:                                    ; preds = %for.body.240
  %148 = load i32, i32* @luma_log_weight_denom, align 4
  br label %cond.end.244

cond.false.243:                                   ; preds = %for.body.240
  %149 = load i32, i32* @chroma_log_weight_denom, align 4
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.243, %cond.true.242
  %cond245 = phi i32 [ %148, %cond.true.242 ], [ %149, %cond.false.243 ]
  store i32 %cond245, i32* %log_weight_denom, align 4
  %150 = load i32, i32* %comp, align 4
  %idxprom246 = sext i32 %150 to i64
  %151 = load i32, i32* %j, align 4
  %idxprom247 = sext i32 %151 to i64
  %152 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %152 to i64
  %arrayidx249 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx250 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx249, i32 0, i64 %idxprom248
  %arrayidx251 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx250, i32 0, i64 %idxprom247
  %arrayidx252 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx251, i32 0, i64 %idxprom246
  %153 = load i32, i32* %arrayidx252, align 4
  %154 = load i32, i32* %comp, align 4
  %idxprom253 = sext i32 %154 to i64
  %155 = load i32, i32* %j, align 4
  %idxprom254 = sext i32 %155 to i64
  %156 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %156 to i64
  %157 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx256 = getelementptr inbounds i32***, i32**** %157, i64 1
  %158 = load i32***, i32**** %arrayidx256, align 8
  %arrayidx257 = getelementptr inbounds i32**, i32*** %158, i64 %idxprom255
  %159 = load i32**, i32*** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32*, i32** %159, i64 %idxprom254
  %160 = load i32*, i32** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %160, i64 %idxprom253
  store i32 %153, i32* %arrayidx259, align 4
  %161 = load i32, i32* %comp, align 4
  %idxprom260 = sext i32 %161 to i64
  %162 = load i32, i32* %j, align 4
  %idxprom261 = sext i32 %162 to i64
  %163 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %163 to i64
  %arrayidx263 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]], [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx264 = getelementptr inbounds [15 x [15 x [3 x i32]]], [15 x [15 x [3 x i32]]]* %arrayidx263, i32 0, i64 %idxprom262
  %arrayidx265 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx264, i32 0, i64 %idxprom261
  %arrayidx266 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx265, i32 0, i64 %idxprom260
  %164 = load i32, i32* %arrayidx266, align 4
  %165 = load i32, i32* %comp, align 4
  %idxprom267 = sext i32 %165 to i64
  %166 = load i32, i32* %j, align 4
  %idxprom268 = sext i32 %166 to i64
  %167 = load i32, i32* %i, align 4
  %idxprom269 = sext i32 %167 to i64
  %168 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx270 = getelementptr inbounds i32***, i32**** %168, i64 0
  %169 = load i32***, i32**** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i32**, i32*** %169, i64 %idxprom269
  %170 = load i32**, i32*** %arrayidx271, align 8
  %arrayidx272 = getelementptr inbounds i32*, i32** %170, i64 %idxprom268
  %171 = load i32*, i32** %arrayidx272, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %171, i64 %idxprom267
  store i32 %164, i32* %arrayidx273, align 4
  br label %for.inc.274

for.inc.274:                                      ; preds = %cond.end.244
  %172 = load i32, i32* %comp, align 4
  %inc275 = add nsw i32 %172, 1
  store i32 %inc275, i32* %comp, align 4
  br label %for.cond.238

for.end.276:                                      ; preds = %for.cond.238
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.end.276
  %173 = load i32, i32* %j, align 4
  %inc278 = add nsw i32 %173, 1
  store i32 %inc278, i32* %j, align 4
  br label %for.cond.235

for.end.279:                                      ; preds = %for.cond.235
  br label %for.inc.280

for.inc.280:                                      ; preds = %for.end.279
  %174 = load i32, i32* %i, align 4
  %inc281 = add nsw i32 %174, 1
  store i32 %inc281, i32* %i, align 4
  br label %for.cond.232

for.end.282:                                      ; preds = %for.cond.232
  store i32 0, i32* %clist, align 4
  br label %for.cond.283

for.cond.283:                                     ; preds = %for.inc.328, %for.end.282
  %175 = load i32, i32* %clist, align 4
  %176 = load i32, i32* %list_offset, align 4
  %add284 = add nsw i32 2, %176
  %cmp285 = icmp slt i32 %175, %add284
  br i1 %cmp285, label %for.body.286, label %for.end.330

for.body.286:                                     ; preds = %for.cond.283
  store i32 0, i32* %index, align 4
  br label %for.cond.287

for.cond.287:                                     ; preds = %for.inc.325, %for.body.286
  %177 = load i32, i32* %index, align 4
  %178 = load i32, i32* %clist, align 4
  %idxprom288 = sext i32 %178 to i64
  %arrayidx289 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom288
  %179 = load i32, i32* %arrayidx289, align 4
  %cmp290 = icmp slt i32 %177, %179
  br i1 %cmp290, label %for.body.291, label %for.end.327

for.body.291:                                     ; preds = %for.cond.287
  %180 = load i32, i32* @luma_log_weight_denom, align 4
  %shl292 = shl i32 1, %180
  %181 = load i32, i32* %index, align 4
  %idxprom293 = sext i32 %181 to i64
  %182 = load i32, i32* %clist, align 4
  %idxprom294 = sext i32 %182 to i64
  %183 = load i32***, i32**** @wp_weight, align 8
  %arrayidx295 = getelementptr inbounds i32**, i32*** %183, i64 %idxprom294
  %184 = load i32**, i32*** %arrayidx295, align 8
  %arrayidx296 = getelementptr inbounds i32*, i32** %184, i64 %idxprom293
  %185 = load i32*, i32** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %185, i64 0
  store i32 %shl292, i32* %arrayidx297, align 4
  %186 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl298 = shl i32 1, %186
  %187 = load i32, i32* %index, align 4
  %idxprom299 = sext i32 %187 to i64
  %188 = load i32, i32* %clist, align 4
  %idxprom300 = sext i32 %188 to i64
  %189 = load i32***, i32**** @wp_weight, align 8
  %arrayidx301 = getelementptr inbounds i32**, i32*** %189, i64 %idxprom300
  %190 = load i32**, i32*** %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds i32*, i32** %190, i64 %idxprom299
  %191 = load i32*, i32** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i32, i32* %191, i64 1
  store i32 %shl298, i32* %arrayidx303, align 4
  %192 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl304 = shl i32 1, %192
  %193 = load i32, i32* %index, align 4
  %idxprom305 = sext i32 %193 to i64
  %194 = load i32, i32* %clist, align 4
  %idxprom306 = sext i32 %194 to i64
  %195 = load i32***, i32**** @wp_weight, align 8
  %arrayidx307 = getelementptr inbounds i32**, i32*** %195, i64 %idxprom306
  %196 = load i32**, i32*** %arrayidx307, align 8
  %arrayidx308 = getelementptr inbounds i32*, i32** %196, i64 %idxprom305
  %197 = load i32*, i32** %arrayidx308, align 8
  %arrayidx309 = getelementptr inbounds i32, i32* %197, i64 2
  store i32 %shl304, i32* %arrayidx309, align 4
  %198 = load i32, i32* %index, align 4
  %idxprom310 = sext i32 %198 to i64
  %199 = load i32, i32* %clist, align 4
  %idxprom311 = sext i32 %199 to i64
  %200 = load i32***, i32**** @wp_offset, align 8
  %arrayidx312 = getelementptr inbounds i32**, i32*** %200, i64 %idxprom311
  %201 = load i32**, i32*** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i32*, i32** %201, i64 %idxprom310
  %202 = load i32*, i32** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i32, i32* %202, i64 0
  store i32 0, i32* %arrayidx314, align 4
  %203 = load i32, i32* %index, align 4
  %idxprom315 = sext i32 %203 to i64
  %204 = load i32, i32* %clist, align 4
  %idxprom316 = sext i32 %204 to i64
  %205 = load i32***, i32**** @wp_offset, align 8
  %arrayidx317 = getelementptr inbounds i32**, i32*** %205, i64 %idxprom316
  %206 = load i32**, i32*** %arrayidx317, align 8
  %arrayidx318 = getelementptr inbounds i32*, i32** %206, i64 %idxprom315
  %207 = load i32*, i32** %arrayidx318, align 8
  %arrayidx319 = getelementptr inbounds i32, i32* %207, i64 1
  store i32 0, i32* %arrayidx319, align 4
  %208 = load i32, i32* %index, align 4
  %idxprom320 = sext i32 %208 to i64
  %209 = load i32, i32* %clist, align 4
  %idxprom321 = sext i32 %209 to i64
  %210 = load i32***, i32**** @wp_offset, align 8
  %arrayidx322 = getelementptr inbounds i32**, i32*** %210, i64 %idxprom321
  %211 = load i32**, i32*** %arrayidx322, align 8
  %arrayidx323 = getelementptr inbounds i32*, i32** %211, i64 %idxprom320
  %212 = load i32*, i32** %arrayidx323, align 8
  %arrayidx324 = getelementptr inbounds i32, i32* %212, i64 2
  store i32 0, i32* %arrayidx324, align 4
  br label %for.inc.325

for.inc.325:                                      ; preds = %for.body.291
  %213 = load i32, i32* %index, align 4
  %inc326 = add nsw i32 %213, 1
  store i32 %inc326, i32* %index, align 4
  br label %for.cond.287

for.end.327:                                      ; preds = %for.cond.287
  br label %for.inc.328

for.inc.328:                                      ; preds = %for.end.327
  %214 = load i32, i32* %clist, align 4
  %inc329 = add nsw i32 %214, 1
  store i32 %inc329, i32* %clist, align 4
  br label %for.cond.283

for.end.330:                                      ; preds = %for.cond.283
  br label %if.end.605

if.else.331:                                      ; preds = %for.end.229
  store i32 0, i32* %i, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.346, %if.else.331
  %215 = load i32, i32* %i, align 4
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 15
  %217 = load i32, i32* %height, align 4
  %cmp333 = icmp slt i32 %215, %217
  br i1 %cmp333, label %for.body.334, label %for.end.348

for.body.334:                                     ; preds = %for.cond.332
  store i32 0, i32* %j, align 4
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.343, %for.body.334
  %218 = load i32, i32* %j, align 4
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 13
  %220 = load i32, i32* %width, align 4
  %cmp336 = icmp slt i32 %218, %220
  br i1 %cmp336, label %for.body.337, label %for.end.345

for.body.337:                                     ; preds = %for.cond.335
  %221 = load i32, i32* %j, align 4
  %idxprom338 = sext i32 %221 to i64
  %222 = load i32, i32* %i, align 4
  %idxprom339 = sext i32 %222 to i64
  %223 = load i16**, i16*** @imgY_org, align 8
  %arrayidx340 = getelementptr inbounds i16*, i16** %223, i64 %idxprom339
  %224 = load i16*, i16** %arrayidx340, align 8
  %arrayidx341 = getelementptr inbounds i16, i16* %224, i64 %idxprom338
  %225 = load i16, i16* %arrayidx341, align 2
  %conv = uitofp i16 %225 to double
  %226 = load double, double* %dc_org, align 8
  %add342 = fadd double %226, %conv
  store double %add342, double* %dc_org, align 8
  br label %for.inc.343

for.inc.343:                                      ; preds = %for.body.337
  %227 = load i32, i32* %j, align 4
  %inc344 = add nsw i32 %227, 1
  store i32 %inc344, i32* %j, align 4
  br label %for.cond.335

for.end.345:                                      ; preds = %for.cond.335
  br label %for.inc.346

for.inc.346:                                      ; preds = %for.end.345
  %228 = load i32, i32* %i, align 4
  %inc347 = add nsw i32 %228, 1
  store i32 %inc347, i32* %i, align 4
  br label %for.cond.332

for.end.348:                                      ; preds = %for.cond.332
  store i32 0, i32* %clist, align 4
  br label %for.cond.349

for.cond.349:                                     ; preds = %for.inc.448, %for.end.348
  %229 = load i32, i32* %clist, align 4
  %230 = load i32, i32* %list_offset, align 4
  %add350 = add nsw i32 2, %230
  %cmp351 = icmp slt i32 %229, %add350
  br i1 %cmp351, label %for.body.353, label %for.end.450

for.body.353:                                     ; preds = %for.cond.349
  store i32 0, i32* %n, align 4
  br label %for.cond.354

for.cond.354:                                     ; preds = %for.inc.445, %for.body.353
  %231 = load i32, i32* %n, align 4
  %232 = load i32, i32* %clist, align 4
  %idxprom355 = sext i32 %232 to i64
  %arrayidx356 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom355
  %233 = load i32, i32* %arrayidx356, align 4
  %cmp357 = icmp slt i32 %231, %233
  br i1 %cmp357, label %for.body.359, label %for.end.447

for.body.359:                                     ; preds = %for.cond.354
  %234 = load i32, i32* %n, align 4
  %idxprom360 = sext i32 %234 to i64
  %235 = load i32, i32* %clist, align 4
  %idxprom361 = sext i32 %235 to i64
  %arrayidx362 = getelementptr inbounds [6 x [15 x double]], [6 x [15 x double]]* %dc_ref, i32 0, i64 %idxprom361
  %arrayidx363 = getelementptr inbounds [15 x double], [15 x double]* %arrayidx362, i32 0, i64 %idxprom360
  store double 0.000000e+00, double* %arrayidx363, align 8
  %236 = load i32, i32* %n, align 4
  %idxprom364 = sext i32 %236 to i64
  %237 = load i32, i32* %clist, align 4
  %idxprom365 = sext i32 %237 to i64
  %arrayidx366 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom365
  %238 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx366, align 8
  %arrayidx367 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %238, i64 %idxprom364
  %239 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx367, align 8
  %imgY_11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %239, i32 0, i32 26
  %240 = load i16*, i16** %imgY_11, align 8
  store i16* %240, i16** %ref_pic, align 8
  %241 = load i32, i32* %n, align 4
  %idxprom368 = sext i32 %241 to i64
  %242 = load i32, i32* %clist, align 4
  %idxprom369 = sext i32 %242 to i64
  %arrayidx370 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom369
  %243 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %243, i64 %idxprom368
  %244 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx371, align 8
  %imgY_11_w = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %244, i32 0, i32 27
  %245 = load i16*, i16** %imgY_11_w, align 8
  store i16* %245, i16** %ref_pic_w, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.372

for.cond.372:                                     ; preds = %for.inc.387, %for.body.359
  %246 = load i32, i32* %i, align 4
  %247 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height373 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %247, i32 0, i32 15
  %248 = load i32, i32* %height373, align 4
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width374 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 13
  %250 = load i32, i32* %width374, align 4
  %mul375 = mul nsw i32 %248, %250
  %cmp376 = icmp slt i32 %246, %mul375
  br i1 %cmp376, label %for.body.378, label %for.end.389

for.body.378:                                     ; preds = %for.cond.372
  %251 = load i32, i32* %i, align 4
  %idxprom379 = sext i32 %251 to i64
  %252 = load i16*, i16** %ref_pic, align 8
  %arrayidx380 = getelementptr inbounds i16, i16* %252, i64 %idxprom379
  %253 = load i16, i16* %arrayidx380, align 2
  %conv381 = uitofp i16 %253 to double
  %254 = load i32, i32* %n, align 4
  %idxprom382 = sext i32 %254 to i64
  %255 = load i32, i32* %clist, align 4
  %idxprom383 = sext i32 %255 to i64
  %arrayidx384 = getelementptr inbounds [6 x [15 x double]], [6 x [15 x double]]* %dc_ref, i32 0, i64 %idxprom383
  %arrayidx385 = getelementptr inbounds [15 x double], [15 x double]* %arrayidx384, i32 0, i64 %idxprom382
  %256 = load double, double* %arrayidx385, align 8
  %add386 = fadd double %256, %conv381
  store double %add386, double* %arrayidx385, align 8
  br label %for.inc.387

for.inc.387:                                      ; preds = %for.body.378
  %257 = load i32, i32* %i, align 4
  %inc388 = add nsw i32 %257, 1
  store i32 %inc388, i32* %i, align 4
  br label %for.cond.372

for.end.389:                                      ; preds = %for.cond.372
  %258 = load i32, i32* %n, align 4
  %idxprom390 = sext i32 %258 to i64
  %259 = load i32, i32* %clist, align 4
  %idxprom391 = sext i32 %259 to i64
  %arrayidx392 = getelementptr inbounds [6 x [15 x double]], [6 x [15 x double]]* %dc_ref, i32 0, i64 %idxprom391
  %arrayidx393 = getelementptr inbounds [15 x double], [15 x double]* %arrayidx392, i32 0, i64 %idxprom390
  %260 = load double, double* %arrayidx393, align 8
  %cmp394 = fcmp une double %260, 0.000000e+00
  br i1 %cmp394, label %if.then.396, label %if.else.406

if.then.396:                                      ; preds = %for.end.389
  %261 = load i32, i32* %default_weight, align 4
  %conv397 = sitofp i32 %261 to double
  %262 = load double, double* %dc_org, align 8
  %mul398 = fmul double %conv397, %262
  %263 = load i32, i32* %n, align 4
  %idxprom399 = sext i32 %263 to i64
  %264 = load i32, i32* %clist, align 4
  %idxprom400 = sext i32 %264 to i64
  %arrayidx401 = getelementptr inbounds [6 x [15 x double]], [6 x [15 x double]]* %dc_ref, i32 0, i64 %idxprom400
  %arrayidx402 = getelementptr inbounds [15 x double], [15 x double]* %arrayidx401, i32 0, i64 %idxprom399
  %265 = load double, double* %arrayidx402, align 8
  %div403 = fdiv double %mul398, %265
  %add404 = fadd double %div403, 5.000000e-01
  %conv405 = fptosi double %add404 to i32
  store i32 %conv405, i32* %wf_weight, align 4
  br label %if.end.407

if.else.406:                                      ; preds = %for.end.389
  %266 = load i32, i32* %default_weight, align 4
  store i32 %266, i32* %wf_weight, align 4
  br label %if.end.407

if.end.407:                                       ; preds = %if.else.406, %if.then.396
  %267 = load i32, i32* %wf_weight, align 4
  %cmp408 = icmp slt i32 %267, -64
  br i1 %cmp408, label %if.then.413, label %lor.lhs.false.410

lor.lhs.false.410:                                ; preds = %if.end.407
  %268 = load i32, i32* %wf_weight, align 4
  %cmp411 = icmp sgt i32 %268, 127
  br i1 %cmp411, label %if.then.413, label %if.end.414

if.then.413:                                      ; preds = %lor.lhs.false.410, %if.end.407
  %269 = load i32, i32* %default_weight, align 4
  store i32 %269, i32* %wf_weight, align 4
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.413, %lor.lhs.false.410
  store i32 0, i32* %wf_offset, align 4
  %270 = load i32, i32* %wf_weight, align 4
  %271 = load i32, i32* %n, align 4
  %idxprom415 = sext i32 %271 to i64
  %272 = load i32, i32* %clist, align 4
  %idxprom416 = sext i32 %272 to i64
  %arrayidx417 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom416
  %arrayidx418 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx417, i32 0, i64 %idxprom415
  %arrayidx419 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx418, i32 0, i64 0
  store i32 %270, i32* %arrayidx419, align 4
  %273 = load i32, i32* %default_weight_chroma, align 4
  %274 = load i32, i32* %n, align 4
  %idxprom420 = sext i32 %274 to i64
  %275 = load i32, i32* %clist, align 4
  %idxprom421 = sext i32 %275 to i64
  %arrayidx422 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom421
  %arrayidx423 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx422, i32 0, i64 %idxprom420
  %arrayidx424 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx423, i32 0, i64 1
  store i32 %273, i32* %arrayidx424, align 4
  %276 = load i32, i32* %default_weight_chroma, align 4
  %277 = load i32, i32* %n, align 4
  %idxprom425 = sext i32 %277 to i64
  %278 = load i32, i32* %clist, align 4
  %idxprom426 = sext i32 %278 to i64
  %arrayidx427 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom426
  %arrayidx428 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx427, i32 0, i64 %idxprom425
  %arrayidx429 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx428, i32 0, i64 2
  store i32 %276, i32* %arrayidx429, align 4
  %279 = load i32, i32* %n, align 4
  %idxprom430 = sext i32 %279 to i64
  %280 = load i32, i32* %clist, align 4
  %idxprom431 = sext i32 %280 to i64
  %arrayidx432 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom431
  %arrayidx433 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx432, i32 0, i64 %idxprom430
  %arrayidx434 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx433, i32 0, i64 0
  store i32 0, i32* %arrayidx434, align 4
  %281 = load i32, i32* %n, align 4
  %idxprom435 = sext i32 %281 to i64
  %282 = load i32, i32* %clist, align 4
  %idxprom436 = sext i32 %282 to i64
  %arrayidx437 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom436
  %arrayidx438 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx437, i32 0, i64 %idxprom435
  %arrayidx439 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx438, i32 0, i64 1
  store i32 0, i32* %arrayidx439, align 4
  %283 = load i32, i32* %n, align 4
  %idxprom440 = sext i32 %283 to i64
  %284 = load i32, i32* %clist, align 4
  %idxprom441 = sext i32 %284 to i64
  %arrayidx442 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom441
  %arrayidx443 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx442, i32 0, i64 %idxprom440
  %arrayidx444 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx443, i32 0, i64 2
  store i32 0, i32* %arrayidx444, align 4
  br label %for.inc.445

for.inc.445:                                      ; preds = %if.end.414
  %285 = load i32, i32* %n, align 4
  %inc446 = add nsw i32 %285, 1
  store i32 %inc446, i32* %n, align 4
  br label %for.cond.354

for.end.447:                                      ; preds = %for.cond.354
  br label %for.inc.448

for.inc.448:                                      ; preds = %for.end.447
  %286 = load i32, i32* %clist, align 4
  %inc449 = add nsw i32 %286, 1
  store i32 %inc449, i32* %clist, align 4
  br label %for.cond.349

for.end.450:                                      ; preds = %for.cond.349
  %287 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %287, i32 0, i32 20
  %288 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp451 = icmp eq i32 %288, 1
  br i1 %cmp451, label %if.then.453, label %if.else.502

if.then.453:                                      ; preds = %for.end.450
  store i32 0, i32* %clist, align 4
  br label %for.cond.454

for.cond.454:                                     ; preds = %for.inc.499, %if.then.453
  %289 = load i32, i32* %clist, align 4
  %290 = load i32, i32* %list_offset, align 4
  %add455 = add nsw i32 2, %290
  %cmp456 = icmp slt i32 %289, %add455
  br i1 %cmp456, label %for.body.458, label %for.end.501

for.body.458:                                     ; preds = %for.cond.454
  store i32 0, i32* %index, align 4
  br label %for.cond.459

for.cond.459:                                     ; preds = %for.inc.496, %for.body.458
  %291 = load i32, i32* %index, align 4
  %292 = load i32, i32* %clist, align 4
  %idxprom460 = sext i32 %292 to i64
  %arrayidx461 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom460
  %293 = load i32, i32* %arrayidx461, align 4
  %cmp462 = icmp slt i32 %291, %293
  br i1 %cmp462, label %for.body.464, label %for.end.498

for.body.464:                                     ; preds = %for.cond.459
  store i32 0, i32* %comp, align 4
  br label %for.cond.465

for.cond.465:                                     ; preds = %for.inc.493, %for.body.464
  %294 = load i32, i32* %comp, align 4
  %cmp466 = icmp slt i32 %294, 3
  br i1 %cmp466, label %for.body.468, label %for.end.495

for.body.468:                                     ; preds = %for.cond.465
  %295 = load i32, i32* %comp, align 4
  %idxprom469 = sext i32 %295 to i64
  %296 = load i32, i32* %index, align 4
  %idxprom470 = sext i32 %296 to i64
  %297 = load i32, i32* %clist, align 4
  %idxprom471 = sext i32 %297 to i64
  %arrayidx472 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %weight, i32 0, i64 %idxprom471
  %arrayidx473 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx472, i32 0, i64 %idxprom470
  %arrayidx474 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx473, i32 0, i64 %idxprom469
  %298 = load i32, i32* %arrayidx474, align 4
  %299 = load i32, i32* %comp, align 4
  %idxprom475 = sext i32 %299 to i64
  %300 = load i32, i32* %index, align 4
  %idxprom476 = sext i32 %300 to i64
  %301 = load i32, i32* %clist, align 4
  %idxprom477 = sext i32 %301 to i64
  %302 = load i32***, i32**** @wp_weight, align 8
  %arrayidx478 = getelementptr inbounds i32**, i32*** %302, i64 %idxprom477
  %303 = load i32**, i32*** %arrayidx478, align 8
  %arrayidx479 = getelementptr inbounds i32*, i32** %303, i64 %idxprom476
  %304 = load i32*, i32** %arrayidx479, align 8
  %arrayidx480 = getelementptr inbounds i32, i32* %304, i64 %idxprom475
  store i32 %298, i32* %arrayidx480, align 4
  %305 = load i32, i32* %comp, align 4
  %idxprom481 = sext i32 %305 to i64
  %306 = load i32, i32* %index, align 4
  %idxprom482 = sext i32 %306 to i64
  %307 = load i32, i32* %clist, align 4
  %idxprom483 = sext i32 %307 to i64
  %arrayidx484 = getelementptr inbounds [6 x [15 x [3 x i32]]], [6 x [15 x [3 x i32]]]* %offset, i32 0, i64 %idxprom483
  %arrayidx485 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx484, i32 0, i64 %idxprom482
  %arrayidx486 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx485, i32 0, i64 %idxprom481
  %308 = load i32, i32* %arrayidx486, align 4
  %309 = load i32, i32* %comp, align 4
  %idxprom487 = sext i32 %309 to i64
  %310 = load i32, i32* %index, align 4
  %idxprom488 = sext i32 %310 to i64
  %311 = load i32, i32* %clist, align 4
  %idxprom489 = sext i32 %311 to i64
  %312 = load i32***, i32**** @wp_offset, align 8
  %arrayidx490 = getelementptr inbounds i32**, i32*** %312, i64 %idxprom489
  %313 = load i32**, i32*** %arrayidx490, align 8
  %arrayidx491 = getelementptr inbounds i32*, i32** %313, i64 %idxprom488
  %314 = load i32*, i32** %arrayidx491, align 8
  %arrayidx492 = getelementptr inbounds i32, i32* %314, i64 %idxprom487
  store i32 %308, i32* %arrayidx492, align 4
  br label %for.inc.493

for.inc.493:                                      ; preds = %for.body.468
  %315 = load i32, i32* %comp, align 4
  %inc494 = add nsw i32 %315, 1
  store i32 %inc494, i32* %comp, align 4
  br label %for.cond.465

for.end.495:                                      ; preds = %for.cond.465
  br label %for.inc.496

for.inc.496:                                      ; preds = %for.end.495
  %316 = load i32, i32* %index, align 4
  %inc497 = add nsw i32 %316, 1
  store i32 %inc497, i32* %index, align 4
  br label %for.cond.459

for.end.498:                                      ; preds = %for.cond.459
  br label %for.inc.499

for.inc.499:                                      ; preds = %for.end.498
  %317 = load i32, i32* %clist, align 4
  %inc500 = add nsw i32 %317, 1
  store i32 %inc500, i32* %clist, align 4
  br label %for.cond.454

for.end.501:                                      ; preds = %for.cond.454
  br label %if.end.553

if.else.502:                                      ; preds = %for.end.450
  store i32 0, i32* %clist, align 4
  br label %for.cond.503

for.cond.503:                                     ; preds = %for.inc.550, %if.else.502
  %318 = load i32, i32* %clist, align 4
  %319 = load i32, i32* %list_offset, align 4
  %add504 = add nsw i32 2, %319
  %cmp505 = icmp slt i32 %318, %add504
  br i1 %cmp505, label %for.body.507, label %for.end.552

for.body.507:                                     ; preds = %for.cond.503
  store i32 0, i32* %index, align 4
  br label %for.cond.508

for.cond.508:                                     ; preds = %for.inc.547, %for.body.507
  %320 = load i32, i32* %index, align 4
  %321 = load i32, i32* %clist, align 4
  %idxprom509 = sext i32 %321 to i64
  %arrayidx510 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom509
  %322 = load i32, i32* %arrayidx510, align 4
  %cmp511 = icmp slt i32 %320, %322
  br i1 %cmp511, label %for.body.513, label %for.end.549

for.body.513:                                     ; preds = %for.cond.508
  %323 = load i32, i32* @luma_log_weight_denom, align 4
  %shl514 = shl i32 1, %323
  %324 = load i32, i32* %index, align 4
  %idxprom515 = sext i32 %324 to i64
  %325 = load i32, i32* %clist, align 4
  %idxprom516 = sext i32 %325 to i64
  %326 = load i32***, i32**** @wp_weight, align 8
  %arrayidx517 = getelementptr inbounds i32**, i32*** %326, i64 %idxprom516
  %327 = load i32**, i32*** %arrayidx517, align 8
  %arrayidx518 = getelementptr inbounds i32*, i32** %327, i64 %idxprom515
  %328 = load i32*, i32** %arrayidx518, align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %328, i64 0
  store i32 %shl514, i32* %arrayidx519, align 4
  %329 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl520 = shl i32 1, %329
  %330 = load i32, i32* %index, align 4
  %idxprom521 = sext i32 %330 to i64
  %331 = load i32, i32* %clist, align 4
  %idxprom522 = sext i32 %331 to i64
  %332 = load i32***, i32**** @wp_weight, align 8
  %arrayidx523 = getelementptr inbounds i32**, i32*** %332, i64 %idxprom522
  %333 = load i32**, i32*** %arrayidx523, align 8
  %arrayidx524 = getelementptr inbounds i32*, i32** %333, i64 %idxprom521
  %334 = load i32*, i32** %arrayidx524, align 8
  %arrayidx525 = getelementptr inbounds i32, i32* %334, i64 1
  store i32 %shl520, i32* %arrayidx525, align 4
  %335 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl526 = shl i32 1, %335
  %336 = load i32, i32* %index, align 4
  %idxprom527 = sext i32 %336 to i64
  %337 = load i32, i32* %clist, align 4
  %idxprom528 = sext i32 %337 to i64
  %338 = load i32***, i32**** @wp_weight, align 8
  %arrayidx529 = getelementptr inbounds i32**, i32*** %338, i64 %idxprom528
  %339 = load i32**, i32*** %arrayidx529, align 8
  %arrayidx530 = getelementptr inbounds i32*, i32** %339, i64 %idxprom527
  %340 = load i32*, i32** %arrayidx530, align 8
  %arrayidx531 = getelementptr inbounds i32, i32* %340, i64 2
  store i32 %shl526, i32* %arrayidx531, align 4
  %341 = load i32, i32* %index, align 4
  %idxprom532 = sext i32 %341 to i64
  %342 = load i32, i32* %clist, align 4
  %idxprom533 = sext i32 %342 to i64
  %343 = load i32***, i32**** @wp_offset, align 8
  %arrayidx534 = getelementptr inbounds i32**, i32*** %343, i64 %idxprom533
  %344 = load i32**, i32*** %arrayidx534, align 8
  %arrayidx535 = getelementptr inbounds i32*, i32** %344, i64 %idxprom532
  %345 = load i32*, i32** %arrayidx535, align 8
  %arrayidx536 = getelementptr inbounds i32, i32* %345, i64 0
  store i32 0, i32* %arrayidx536, align 4
  %346 = load i32, i32* %index, align 4
  %idxprom537 = sext i32 %346 to i64
  %347 = load i32, i32* %clist, align 4
  %idxprom538 = sext i32 %347 to i64
  %348 = load i32***, i32**** @wp_offset, align 8
  %arrayidx539 = getelementptr inbounds i32**, i32*** %348, i64 %idxprom538
  %349 = load i32**, i32*** %arrayidx539, align 8
  %arrayidx540 = getelementptr inbounds i32*, i32** %349, i64 %idxprom537
  %350 = load i32*, i32** %arrayidx540, align 8
  %arrayidx541 = getelementptr inbounds i32, i32* %350, i64 1
  store i32 0, i32* %arrayidx541, align 4
  %351 = load i32, i32* %index, align 4
  %idxprom542 = sext i32 %351 to i64
  %352 = load i32, i32* %clist, align 4
  %idxprom543 = sext i32 %352 to i64
  %353 = load i32***, i32**** @wp_offset, align 8
  %arrayidx544 = getelementptr inbounds i32**, i32*** %353, i64 %idxprom543
  %354 = load i32**, i32*** %arrayidx544, align 8
  %arrayidx545 = getelementptr inbounds i32*, i32** %354, i64 %idxprom542
  %355 = load i32*, i32** %arrayidx545, align 8
  %arrayidx546 = getelementptr inbounds i32, i32* %355, i64 2
  store i32 0, i32* %arrayidx546, align 4
  br label %for.inc.547

for.inc.547:                                      ; preds = %for.body.513
  %356 = load i32, i32* %index, align 4
  %inc548 = add nsw i32 %356, 1
  store i32 %inc548, i32* %index, align 4
  br label %for.cond.508

for.end.549:                                      ; preds = %for.cond.508
  br label %for.inc.550

for.inc.550:                                      ; preds = %for.end.549
  %357 = load i32, i32* %clist, align 4
  %inc551 = add nsw i32 %357, 1
  store i32 %inc551, i32* %clist, align 4
  br label %for.cond.503

for.end.552:                                      ; preds = %for.cond.503
  br label %if.end.553

if.end.553:                                       ; preds = %for.end.552, %for.end.501
  store i32 0, i32* %i, align 4
  br label %for.cond.554

for.cond.554:                                     ; preds = %for.inc.602, %if.end.553
  %358 = load i32, i32* %i, align 4
  %359 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp555 = icmp slt i32 %358, %359
  br i1 %cmp555, label %for.body.557, label %for.end.604

for.body.557:                                     ; preds = %for.cond.554
  store i32 0, i32* %j, align 4
  br label %for.cond.558

for.cond.558:                                     ; preds = %for.inc.599, %for.body.557
  %360 = load i32, i32* %j, align 4
  %361 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp559 = icmp slt i32 %360, %361
  br i1 %cmp559, label %for.body.561, label %for.end.601

for.body.561:                                     ; preds = %for.cond.558
  store i32 0, i32* %comp, align 4
  br label %for.cond.562

for.cond.562:                                     ; preds = %for.inc.596, %for.body.561
  %362 = load i32, i32* %comp, align 4
  %cmp563 = icmp slt i32 %362, 3
  br i1 %cmp563, label %for.body.565, label %for.end.598

for.body.565:                                     ; preds = %for.cond.562
  %363 = load i32, i32* %comp, align 4
  %cmp566 = icmp eq i32 %363, 0
  br i1 %cmp566, label %cond.true.568, label %cond.false.569

cond.true.568:                                    ; preds = %for.body.565
  %364 = load i32, i32* @luma_log_weight_denom, align 4
  br label %cond.end.570

cond.false.569:                                   ; preds = %for.body.565
  %365 = load i32, i32* @chroma_log_weight_denom, align 4
  br label %cond.end.570

cond.end.570:                                     ; preds = %cond.false.569, %cond.true.568
  %cond571 = phi i32 [ %364, %cond.true.568 ], [ %365, %cond.false.569 ]
  store i32 %cond571, i32* %log_weight_denom, align 4
  %366 = load i32, i32* %comp, align 4
  %idxprom572 = sext i32 %366 to i64
  %367 = load i32, i32* %i, align 4
  %idxprom573 = sext i32 %367 to i64
  %368 = load i32***, i32**** @wp_weight, align 8
  %arrayidx574 = getelementptr inbounds i32**, i32*** %368, i64 0
  %369 = load i32**, i32*** %arrayidx574, align 8
  %arrayidx575 = getelementptr inbounds i32*, i32** %369, i64 %idxprom573
  %370 = load i32*, i32** %arrayidx575, align 8
  %arrayidx576 = getelementptr inbounds i32, i32* %370, i64 %idxprom572
  %371 = load i32, i32* %arrayidx576, align 4
  %372 = load i32, i32* %comp, align 4
  %idxprom577 = sext i32 %372 to i64
  %373 = load i32, i32* %j, align 4
  %idxprom578 = sext i32 %373 to i64
  %374 = load i32, i32* %i, align 4
  %idxprom579 = sext i32 %374 to i64
  %375 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx580 = getelementptr inbounds i32***, i32**** %375, i64 0
  %376 = load i32***, i32**** %arrayidx580, align 8
  %arrayidx581 = getelementptr inbounds i32**, i32*** %376, i64 %idxprom579
  %377 = load i32**, i32*** %arrayidx581, align 8
  %arrayidx582 = getelementptr inbounds i32*, i32** %377, i64 %idxprom578
  %378 = load i32*, i32** %arrayidx582, align 8
  %arrayidx583 = getelementptr inbounds i32, i32* %378, i64 %idxprom577
  store i32 %371, i32* %arrayidx583, align 4
  %379 = load i32, i32* %comp, align 4
  %idxprom584 = sext i32 %379 to i64
  %380 = load i32, i32* %j, align 4
  %idxprom585 = sext i32 %380 to i64
  %381 = load i32***, i32**** @wp_weight, align 8
  %arrayidx586 = getelementptr inbounds i32**, i32*** %381, i64 1
  %382 = load i32**, i32*** %arrayidx586, align 8
  %arrayidx587 = getelementptr inbounds i32*, i32** %382, i64 %idxprom585
  %383 = load i32*, i32** %arrayidx587, align 8
  %arrayidx588 = getelementptr inbounds i32, i32* %383, i64 %idxprom584
  %384 = load i32, i32* %arrayidx588, align 4
  %385 = load i32, i32* %comp, align 4
  %idxprom589 = sext i32 %385 to i64
  %386 = load i32, i32* %j, align 4
  %idxprom590 = sext i32 %386 to i64
  %387 = load i32, i32* %i, align 4
  %idxprom591 = sext i32 %387 to i64
  %388 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx592 = getelementptr inbounds i32***, i32**** %388, i64 1
  %389 = load i32***, i32**** %arrayidx592, align 8
  %arrayidx593 = getelementptr inbounds i32**, i32*** %389, i64 %idxprom591
  %390 = load i32**, i32*** %arrayidx593, align 8
  %arrayidx594 = getelementptr inbounds i32*, i32** %390, i64 %idxprom590
  %391 = load i32*, i32** %arrayidx594, align 8
  %arrayidx595 = getelementptr inbounds i32, i32* %391, i64 %idxprom589
  store i32 %384, i32* %arrayidx595, align 4
  br label %for.inc.596

for.inc.596:                                      ; preds = %cond.end.570
  %392 = load i32, i32* %comp, align 4
  %inc597 = add nsw i32 %392, 1
  store i32 %inc597, i32* %comp, align 4
  br label %for.cond.562

for.end.598:                                      ; preds = %for.cond.562
  br label %for.inc.599

for.inc.599:                                      ; preds = %for.end.598
  %393 = load i32, i32* %j, align 4
  %inc600 = add nsw i32 %393, 1
  store i32 %inc600, i32* %j, align 4
  br label %for.cond.558

for.end.601:                                      ; preds = %for.cond.558
  br label %for.inc.602

for.inc.602:                                      ; preds = %for.end.601
  %394 = load i32, i32* %i, align 4
  %inc603 = add nsw i32 %394, 1
  store i32 %inc603, i32* %i, align 4
  br label %for.cond.554

for.end.604:                                      ; preds = %for.cond.554
  br label %if.end.605

if.end.605:                                       ; preds = %for.end.604, %for.end.330
  store i32 0, i32* %clist, align 4
  br label %for.cond.606

for.cond.606:                                     ; preds = %for.inc.654, %if.end.605
  %395 = load i32, i32* %clist, align 4
  %396 = load i32, i32* %list_offset, align 4
  %add607 = add nsw i32 2, %396
  %cmp608 = icmp slt i32 %395, %add607
  br i1 %cmp608, label %for.body.610, label %for.end.656

for.body.610:                                     ; preds = %for.cond.606
  store i32 0, i32* %index, align 4
  br label %for.cond.611

for.cond.611:                                     ; preds = %for.inc.647, %for.body.610
  %397 = load i32, i32* %index, align 4
  %398 = load i32, i32* %clist, align 4
  %idxprom612 = sext i32 %398 to i64
  %arrayidx613 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom612
  %399 = load i32, i32* %arrayidx613, align 4
  %cmp614 = icmp slt i32 %397, %399
  br i1 %cmp614, label %for.body.616, label %for.end.649

for.body.616:                                     ; preds = %for.cond.611
  store i32 0, i32* %comp, align 4
  br label %for.cond.617

for.cond.617:                                     ; preds = %for.inc.640, %for.body.616
  %400 = load i32, i32* %comp, align 4
  %cmp618 = icmp slt i32 %400, 3
  br i1 %cmp618, label %for.body.620, label %for.end.642

for.body.620:                                     ; preds = %for.cond.617
  %401 = load i32, i32* %comp, align 4
  %idxprom621 = sext i32 %401 to i64
  %402 = load i32, i32* %index, align 4
  %idxprom622 = sext i32 %402 to i64
  %403 = load i32, i32* %clist, align 4
  %idxprom623 = sext i32 %403 to i64
  %404 = load i32***, i32**** @wp_weight, align 8
  %arrayidx624 = getelementptr inbounds i32**, i32*** %404, i64 %idxprom623
  %405 = load i32**, i32*** %arrayidx624, align 8
  %arrayidx625 = getelementptr inbounds i32*, i32** %405, i64 %idxprom622
  %406 = load i32*, i32** %arrayidx625, align 8
  %arrayidx626 = getelementptr inbounds i32, i32* %406, i64 %idxprom621
  %407 = load i32, i32* %arrayidx626, align 4
  %408 = load i32, i32* %default_weight, align 4
  %cmp627 = icmp ne i32 %407, %408
  br i1 %cmp627, label %if.then.638, label %lor.lhs.false.629

lor.lhs.false.629:                                ; preds = %for.body.620
  %409 = load i32, i32* %comp, align 4
  %idxprom630 = sext i32 %409 to i64
  %410 = load i32, i32* %index, align 4
  %idxprom631 = sext i32 %410 to i64
  %411 = load i32, i32* %clist, align 4
  %idxprom632 = sext i32 %411 to i64
  %412 = load i32***, i32**** @wp_offset, align 8
  %arrayidx633 = getelementptr inbounds i32**, i32*** %412, i64 %idxprom632
  %413 = load i32**, i32*** %arrayidx633, align 8
  %arrayidx634 = getelementptr inbounds i32*, i32** %413, i64 %idxprom631
  %414 = load i32*, i32** %arrayidx634, align 8
  %arrayidx635 = getelementptr inbounds i32, i32* %414, i64 %idxprom630
  %415 = load i32, i32* %arrayidx635, align 4
  %cmp636 = icmp ne i32 %415, 0
  br i1 %cmp636, label %if.then.638, label %if.end.639

if.then.638:                                      ; preds = %lor.lhs.false.629, %for.body.620
  store i32 1, i32* %perform_wp, align 4
  br label %for.end.642

if.end.639:                                       ; preds = %lor.lhs.false.629
  br label %for.inc.640

for.inc.640:                                      ; preds = %if.end.639
  %416 = load i32, i32* %comp, align 4
  %inc641 = add nsw i32 %416, 1
  store i32 %inc641, i32* %comp, align 4
  br label %for.cond.617

for.end.642:                                      ; preds = %if.then.638, %for.cond.617
  %417 = load i32, i32* %perform_wp, align 4
  %cmp643 = icmp eq i32 %417, 1
  br i1 %cmp643, label %if.then.645, label %if.end.646

if.then.645:                                      ; preds = %for.end.642
  br label %for.end.649

if.end.646:                                       ; preds = %for.end.642
  br label %for.inc.647

for.inc.647:                                      ; preds = %if.end.646
  %418 = load i32, i32* %index, align 4
  %inc648 = add nsw i32 %418, 1
  store i32 %inc648, i32* %index, align 4
  br label %for.cond.611

for.end.649:                                      ; preds = %if.then.645, %for.cond.611
  %419 = load i32, i32* %perform_wp, align 4
  %cmp650 = icmp eq i32 %419, 1
  br i1 %cmp650, label %if.then.652, label %if.end.653

if.then.652:                                      ; preds = %for.end.649
  br label %for.end.656

if.end.653:                                       ; preds = %for.end.649
  br label %for.inc.654

for.inc.654:                                      ; preds = %if.end.653
  %420 = load i32, i32* %clist, align 4
  %inc655 = add nsw i32 %420, 1
  store i32 %inc655, i32* %clist, align 4
  br label %for.cond.606

for.end.656:                                      ; preds = %if.then.652, %for.cond.606
  %421 = load i32, i32* %perform_wp, align 4
  ret i32 %421
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
