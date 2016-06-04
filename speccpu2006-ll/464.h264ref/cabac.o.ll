; ModuleID = 'cabac.c'
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
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@last_dquant = global i32 0, align 4
@img = external global %struct.ImageParameters*, align 8
@.str = private unnamed_addr constant [37 x i8] c"create_contexts_MotionInfo: enco_ctx\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"create_contexts_TextureInfo: enco_ctx\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Unsupported MB-MODE in writeMB_typeInfo_CABAC!\0A\00", align 1
@enc_picture = external global %struct.storable_picture*, align 8
@type2ctx_bcbp = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@maxpos = internal constant [10 x i32] [i32 16, i32 15, i32 64, i32 32, i32 32, i32 16, i32 4, i32 15, i32 8, i32 16], align 16
@type2ctx_map = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 6, i32 6], align 16
@type2ctx_last = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 6, i32 6], align 16
@c1isdc = internal constant [10 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1], align 16
@pos2ctx_map_int = internal global [10 x i32*] [i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @pos2ctx_map8x8i, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map8x4i, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map4x8i, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4c, i32 0, i32 0)], align 16
@pos2ctx_map = internal global [10 x i32*] [i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @pos2ctx_map8x8, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map8x4, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map8x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4c, i32 0, i32 0)], align 16
@pos2ctx_last = internal global [10 x i32*] [i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @pos2ctx_last8x8, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_last8x4, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_last8x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4c, i32 0, i32 0)], align 16
@type2ctx_one = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@max_c2 = internal constant [10 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 4, i32 3, i32 3], align 16
@type2ctx_abs = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@writeRunLevel_CABAC.coeff = internal global [64 x i32] zeroinitializer, align 16
@writeRunLevel_CABAC.coeff_ctr = internal global i32 0, align 4
@writeRunLevel_CABAC.pos = internal global i32 0, align 4
@pos2ctx_map4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 14], align 16
@pos2ctx_map8x8i = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 8, i32 4, i32 5, i32 6, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14], align 16
@pos2ctx_map8x4i = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 7, i32 6, i32 8, i32 9, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 12, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 14], align 16
@pos2ctx_map4x8i = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 6, i32 2, i32 7, i32 7, i32 8, i32 8, i32 8, i32 5, i32 6, i32 9, i32 10, i32 10, i32 11, i32 11, i32 11, i32 12, i32 13, i32 13, i32 14, i32 14, i32 14], align 16
@pos2ctx_map2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 5, i32 4, i32 4, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 6, i32 7, i32 7, i32 7, i32 8, i32 9, i32 10, i32 9, i32 8, i32 7, i32 7, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 7, i32 8, i32 9, i32 14, i32 10, i32 9, i32 8, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 9, i32 14, i32 10, i32 9, i32 11, i32 12, i32 13, i32 11, i32 14, i32 10, i32 12, i32 14], align 16
@pos2ctx_map8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 12, i32 8, i32 9, i32 10, i32 11, i32 9, i32 13, i32 13, i32 14, i32 14], align 16
@pos2ctx_last4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@pos2ctx_last8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 8], align 16
@pos2ctx_last8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8], align 16
@pos2ctx_last2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_last4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16

; Function Attrs: nounwind uwtable
define void @cabac_new_slice() #0 {
entry:
  store i32 0, i32* @last_dquant, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @CheckAvailabilityOfNeighborsCABAC() #0 {
entry:
  %currMB = alloca %struct.macroblock*, align 8
  %up = alloca %struct.pix_pos, align 4
  %left = alloca %struct.pix_pos, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 51
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 3
  %5 = load i32, i32* %current_mb_nr1, align 4
  call void @getNeighbour(i32 %5, i32 -1, i32 0, i32 1, %struct.pix_pos* %left)
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 3
  %7 = load i32, i32* %current_mb_nr2, align 4
  call void @getNeighbour(i32 %7, i32 0, i32 -1, i32 1, %struct.pix_pos* %up)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %8 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 1
  %9 = load i32, i32* %mb_addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 51
  %11 = load %struct.macroblock*, %struct.macroblock** %mb_data4, align 8
  %arrayidx5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i64 %idxprom3
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 6
  store %struct.macroblock* %arrayidx5, %struct.macroblock** %mb_available_up, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i32 0, i32 6
  store %struct.macroblock* null, %struct.macroblock** %mb_available_up6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %available7 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left, i32 0, i32 0
  %14 = load i32, i32* %available7, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.else.14

if.then.9:                                        ; preds = %if.end
  %mb_addr10 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left, i32 0, i32 1
  %15 = load i32, i32* %mb_addr10, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 51
  %17 = load %struct.macroblock*, %struct.macroblock** %mb_data12, align 8
  %arrayidx13 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i64 %idxprom11
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 7
  store %struct.macroblock* %arrayidx13, %struct.macroblock** %mb_available_left, align 8
  br label %if.end.16

if.else.14:                                       ; preds = %if.end
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left15 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 7
  store %struct.macroblock* null, %struct.macroblock** %mb_available_left15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.9
  ret void
}

declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind uwtable
define %struct.MotionInfoContexts* @create_contexts_MotionInfo() #0 {
entry:
  %enco_ctx = alloca %struct.MotionInfoContexts*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 1504) #5
  %0 = bitcast i8* %call to %struct.MotionInfoContexts*
  store %struct.MotionInfoContexts* %0, %struct.MotionInfoContexts** %enco_ctx, align 8
  %1 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %enco_ctx, align 8
  %cmp = icmp eq %struct.MotionInfoContexts* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %enco_ctx, align 8
  ret %struct.MotionInfoContexts* %2
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare void @no_mem_exit(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.TextureInfoContexts* @create_contexts_TextureInfo() #0 {
entry:
  %enco_ctx = alloca %struct.TextureInfoContexts*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 12128) #5
  %0 = bitcast i8* %call to %struct.TextureInfoContexts*
  store %struct.TextureInfoContexts* %0, %struct.TextureInfoContexts** %enco_ctx, align 8
  %1 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %enco_ctx, align 8
  %cmp = icmp eq %struct.TextureInfoContexts* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %enco_ctx, align 8
  ret %struct.TextureInfoContexts* %2
}

; Function Attrs: nounwind uwtable
define void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %enco_ctx) #0 {
entry:
  %enco_ctx.addr = alloca %struct.MotionInfoContexts*, align 8
  store %struct.MotionInfoContexts* %enco_ctx, %struct.MotionInfoContexts** %enco_ctx.addr, align 8
  %0 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %enco_ctx.addr, align 8
  %cmp = icmp eq %struct.MotionInfoContexts* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %enco_ctx.addr, align 8
  %2 = bitcast %struct.MotionInfoContexts* %1 to i8*
  call void @free(i8* %2) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %enco_ctx) #0 {
entry:
  %enco_ctx.addr = alloca %struct.TextureInfoContexts*, align 8
  store %struct.TextureInfoContexts* %enco_ctx, %struct.TextureInfoContexts** %enco_ctx.addr, align 8
  %0 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %enco_ctx.addr, align 8
  %cmp = icmp eq %struct.TextureInfoContexts* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %enco_ctx.addr, align 8
  %2 = bitcast %struct.TextureInfoContexts* %1 to i8*
  call void @free(i8* %2) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @writeSyntaxElement_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %this_dataPart) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %this_dataPart.addr = alloca %struct.datapartition*, align 8
  %curr_len = alloca i32, align 4
  %eep_dp = alloca %struct.EncodingEnvironment*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.datapartition* %this_dataPart, %struct.datapartition** %this_dataPart.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %this_dataPart.addr, align 8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep_dp, align 8
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %writing = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %2, i32 0, i32 9
  %3 = load void (%struct.syntaxelement*, %struct.EncodingEnvironment*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8
  %4 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %5 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  call void %3(%struct.syntaxelement* %4, %struct.EncodingEnvironment* %5)
  %6 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.datapartition*, %struct.datapartition** %this_dataPart.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 0
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %9, i32 0, i32 10
  store i32 1, i32* %write_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp, align 8
  %call1 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %10)
  %11 = load i32, i32* %curr_len, align 4
  %sub = sub nsw i32 %call1, %11
  %12 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %12, i32 0, i32 3
  store i32 %sub, i32* %len, align 4
  ret i32 %sub
}

declare i32 @arienco_bits_written(%struct.EncodingEnvironment*) #1

; Function Attrs: nounwind uwtable
define void @writeFieldModeInfo_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %mb_field = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 7
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %2, %struct.MotionInfoContexts** %ctx, align 8
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 3
  %4 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 51
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 1
  %8 = load i32, i32* %value1, align 4
  store i32 %8, i32* %mb_field, align 4
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 27
  %10 = load i32, i32* %mbAvailA, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 23
  %12 = load i32, i32* %mbAddrA, align 4
  %idxprom1 = sext i32 %12 to i64
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 51
  %14 = load %struct.macroblock*, %struct.macroblock** %mb_data2, align 8
  %arrayidx3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i64 %idxprom1
  %mb_field4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx3, i32 0, i32 22
  %15 = load i32, i32* %mb_field4, align 4
  store i32 %15, i32* %a, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %a, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 28
  %17 = load i32, i32* %mbAvailB, align 4
  %tobool5 = icmp ne i32 %17, 0
  br i1 %tobool5, label %if.then.6, label %if.else.11

if.then.6:                                        ; preds = %if.end
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 24
  %19 = load i32, i32* %mbAddrB, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 51
  %21 = load %struct.macroblock*, %struct.macroblock** %mb_data8, align 8
  %arrayidx9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i64 %idxprom7
  %mb_field10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx9, i32 0, i32 22
  %22 = load i32, i32* %mb_field10, align 4
  store i32 %22, i32* %b, align 4
  br label %if.end.12

if.else.11:                                       ; preds = %if.end
  store i32 0, i32* %b, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.6
  %23 = load i32, i32* %a, align 4
  %24 = load i32, i32* %b, align 4
  %add = add nsw i32 %23, %24
  store i32 %add, i32* %act_ctx, align 4
  %25 = load i32, i32* %mb_field, align 4
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.end.12
  %26 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %27 = load i32, i32* %act_ctx, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_aff_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %28, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %mb_aff_contexts, i32 0, i64 %idxprom14
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %26, i16 signext 0, %struct.BiContextType* %arrayidx15)
  br label %if.end.20

if.else.16:                                       ; preds = %if.end.12
  %29 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %30 = load i32, i32* %act_ctx, align 4
  %idxprom17 = sext i32 %30 to i64
  %31 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_aff_contexts18 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %31, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %mb_aff_contexts18, i32 0, i64 %idxprom17
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %29, i16 signext 1, %struct.BiContextType* %arrayidx19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.16, %if.then.13
  %32 = load i32, i32* %act_ctx, align 4
  %33 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %33, i32 0, i32 6
  store i32 %32, i32* %context, align 4
  ret void
}

declare void @biari_encode_symbol(%struct.EncodingEnvironment*, i16 signext, %struct.BiContextType*) #1

; Function Attrs: nounwind uwtable
define void @writeMB_skip_flagInfo_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %bframe = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %curr_mb_type = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 6
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 50
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 7
  %4 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %4, %struct.MotionInfoContexts** %ctx, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 3
  %6 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 51
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %9 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %9, i32 0, i32 1
  %10 = load i32, i32* %value1, align 4
  store i32 %10, i32* %curr_mb_type, align 4
  %11 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else.41

if.then:                                          ; preds = %entry
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 6
  %13 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp1 = icmp eq %struct.macroblock* %13, null
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 6
  %15 = load %struct.macroblock*, %struct.macroblock** %mb_available_up4, align 8
  %skip_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 44
  %16 = load i32, i32* %skip_flag, align 4
  %cmp5 = icmp eq i32 %16, 0
  %cond = select i1 %cmp5, i32 0, i32 1
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 7
  %18 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp7 = icmp eq %struct.macroblock* %18, null
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %a, align 4
  br label %if.end.16

if.else.10:                                       ; preds = %if.end
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 7
  %20 = load %struct.macroblock*, %struct.macroblock** %mb_available_left11, align 8
  %skip_flag12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 44
  %21 = load i32, i32* %skip_flag12, align 4
  %cmp13 = icmp eq i32 %21, 0
  %cond15 = select i1 %cmp13, i32 0, i32 1
  store i32 %cond15, i32* %a, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.10, %if.then.9
  %22 = load i32, i32* %a, align 4
  %add = add nsw i32 7, %22
  %23 = load i32, i32* %b, align 4
  %add17 = add nsw i32 %add, %23
  store i32 %add17, i32* %act_ctx, align 4
  %24 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value118 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %24, i32 0, i32 1
  %25 = load i32, i32* %value118, align 4
  %cmp19 = icmp eq i32 %25, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else.27

land.lhs.true:                                    ; preds = %if.end.16
  %26 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %26, i32 0, i32 2
  %27 = load i32, i32* %value2, align 4
  %cmp21 = icmp eq i32 %27, 0
  br i1 %cmp21, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %land.lhs.true
  %28 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %29 = load i32, i32* %act_ctx, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %30, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts, i32 0, i64 2
  %arrayidx26 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx25, i32 0, i64 %idxprom24
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %28, i16 signext 1, %struct.BiContextType* %arrayidx26)
  br label %if.end.32

if.else.27:                                       ; preds = %land.lhs.true, %if.end.16
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %32 = load i32, i32* %act_ctx, align 4
  %idxprom28 = sext i32 %32 to i64
  %33 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts29 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %33, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts29, i32 0, i64 2
  %arrayidx31 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx30, i32 0, i64 %idxprom28
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %31, i16 signext 0, %struct.BiContextType* %arrayidx31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.27, %if.then.23
  %34 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value133 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %34, i32 0, i32 1
  %35 = load i32, i32* %value133, align 4
  %cmp34 = icmp eq i32 %35, 0
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.32
  %36 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value236 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %36, i32 0, i32 2
  %37 = load i32, i32* %value236, align 4
  %cmp37 = icmp eq i32 %37, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.32
  %38 = phi i1 [ false, %if.end.32 ], [ %cmp37, %land.rhs ]
  %cond39 = select i1 %38, i32 0, i32 1
  %39 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %skip_flag40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 44
  store i32 %cond39, i32* %skip_flag40, align 4
  br label %if.end.82

if.else.41:                                       ; preds = %entry
  %40 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up42 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %40, i32 0, i32 6
  %41 = load %struct.macroblock*, %struct.macroblock** %mb_available_up42, align 8
  %cmp43 = icmp eq %struct.macroblock* %41, null
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.41
  store i32 0, i32* %b, align 4
  br label %if.end.52

if.else.46:                                       ; preds = %if.else.41
  %42 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up47 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i32 0, i32 6
  %43 = load %struct.macroblock*, %struct.macroblock** %mb_available_up47, align 8
  %skip_flag48 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 44
  %44 = load i32, i32* %skip_flag48, align 4
  %cmp49 = icmp ne i32 %44, 0
  %cond51 = select i1 %cmp49, i32 1, i32 0
  store i32 %cond51, i32* %b, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.46, %if.then.45
  %45 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left53 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %45, i32 0, i32 7
  %46 = load %struct.macroblock*, %struct.macroblock** %mb_available_left53, align 8
  %cmp54 = icmp eq %struct.macroblock* %46, null
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.52
  store i32 0, i32* %a, align 4
  br label %if.end.63

if.else.57:                                       ; preds = %if.end.52
  %47 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left58 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 7
  %48 = load %struct.macroblock*, %struct.macroblock** %mb_available_left58, align 8
  %skip_flag59 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %48, i32 0, i32 44
  %49 = load i32, i32* %skip_flag59, align 4
  %cmp60 = icmp ne i32 %49, 0
  %cond62 = select i1 %cmp60, i32 1, i32 0
  store i32 %cond62, i32* %a, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.57, %if.then.56
  %50 = load i32, i32* %a, align 4
  %51 = load i32, i32* %b, align 4
  %add64 = add nsw i32 %50, %51
  store i32 %add64, i32* %act_ctx, align 4
  %52 = load i32, i32* %curr_mb_type, align 4
  %cmp65 = icmp eq i32 %52, 0
  br i1 %cmp65, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.end.63
  %53 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %54 = load i32, i32* %act_ctx, align 4
  %idxprom68 = sext i32 %54 to i64
  %55 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts69 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %55, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts69, i32 0, i64 1
  %arrayidx71 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx70, i32 0, i64 %idxprom68
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %53, i16 signext 1, %struct.BiContextType* %arrayidx71)
  br label %if.end.77

if.else.72:                                       ; preds = %if.end.63
  %56 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %57 = load i32, i32* %act_ctx, align 4
  %idxprom73 = sext i32 %57 to i64
  %58 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts74 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %58, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts74, i32 0, i64 1
  %arrayidx76 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx75, i32 0, i64 %idxprom73
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %56, i16 signext 0, %struct.BiContextType* %arrayidx76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.72, %if.then.67
  %59 = load i32, i32* %curr_mb_type, align 4
  %cmp78 = icmp eq i32 %59, 0
  %cond80 = select i1 %cmp78, i32 0, i32 1
  %60 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %skip_flag81 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 44
  store i32 %cond80, i32* %skip_flag81, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.77, %land.end
  %61 = load i32, i32* %act_ctx, align 4
  %62 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %62, i32 0, i32 6
  store i32 %61, i32* %context, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeMB_transform_size_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 0, i32* %act_ctx, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 7
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %2, %struct.MotionInfoContexts** %ctx, align 8
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 3
  %4 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 51
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %7 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %7, i32 0, i32 6
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp = icmp eq %struct.macroblock* %8, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 6
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_available_up1, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 32
  %11 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  store i32 %11, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 7
  %13 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp2 = icmp eq %struct.macroblock* %13, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %a, align 4
  br label %if.end.7

if.else.4:                                        ; preds = %if.end
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 7
  %15 = load %struct.macroblock*, %struct.macroblock** %mb_available_left5, align 8
  %luma_transform_size_8x8_flag6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 32
  %16 = load i32, i32* %luma_transform_size_8x8_flag6, align 4
  store i32 %16, i32* %a, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.4, %if.then.3
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %b, align 4
  %add = add nsw i32 %17, %18
  store i32 %add, i32* %act_ctx, align 4
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 32
  %20 = load i32, i32* %luma_transform_size_8x8_flag8, align 4
  store i32 %20, i32* %act_sym, align 4
  %21 = load i32, i32* %act_ctx, align 4
  %22 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %22, i32 0, i32 6
  store i32 %21, i32* %context, align 4
  %23 = load i32, i32* %act_sym, align 4
  %cmp9 = icmp eq i32 %23, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.7
  %24 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %25 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %transform_size_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %25, i32 0, i32 6
  %arraydecay = getelementptr inbounds [3 x %struct.BiContextType], [3 x %struct.BiContextType]* %transform_size_contexts, i32 0, i32 0
  %26 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %24, i16 signext 0, %struct.BiContextType* %add.ptr)
  br label %if.end.16

if.else.11:                                       ; preds = %if.end.7
  %27 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %28 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %transform_size_contexts12 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %28, i32 0, i32 6
  %arraydecay13 = getelementptr inbounds [3 x %struct.BiContextType], [3 x %struct.BiContextType]* %transform_size_contexts12, i32 0, i32 0
  %29 = load i32, i32* %act_ctx, align 4
  %idx.ext14 = sext i32 %29 to i64
  %add.ptr15 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay13, i64 %idx.ext14
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %27, i16 signext 1, %struct.BiContextType* %add.ptr15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.11, %if.then.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeMB_typeInfo_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %csym = alloca i32, align 4
  %bframe = alloca i32, align 4
  %mode_sym = alloca i32, align 4
  %mode16x16 = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %curr_mb_type = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 0, i32* %act_ctx, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 6
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  store i32 0, i32* %mode_sym, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 50
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 7
  %4 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %4, %struct.MotionInfoContexts** %ctx, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 3
  %6 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 51
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %9 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %9, i32 0, i32 1
  %10 = load i32, i32* %value1, align 4
  store i32 %10, i32* %curr_mb_type, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 6
  %12 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %12, 2
  br i1 %cmp2, label %if.then, label %if.else.106

if.then:                                          ; preds = %entry
  %13 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i32 0, i32 6
  %14 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp4 = icmp eq %struct.macroblock* %14, null
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 6
  %16 = load %struct.macroblock*, %struct.macroblock** %mb_available_up7, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 8
  %17 = load i32, i32* %mb_type, align 4
  %cmp8 = icmp ne i32 %17, 9
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 6
  %19 = load %struct.macroblock*, %struct.macroblock** %mb_available_up10, align 8
  %mb_type11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 8
  %20 = load i32, i32* %mb_type11, align 4
  %cmp12 = icmp ne i32 %20, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %21 = phi i1 [ false, %if.else ], [ %cmp12, %land.rhs ]
  %cond = select i1 %21, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then.6
  %22 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 7
  %23 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp14 = icmp eq %struct.macroblock* %23, null
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end
  store i32 0, i32* %a, align 4
  br label %if.end.29

if.else.17:                                       ; preds = %if.end
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 7
  %25 = load %struct.macroblock*, %struct.macroblock** %mb_available_left18, align 8
  %mb_type19 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i32 0, i32 8
  %26 = load i32, i32* %mb_type19, align 4
  %cmp20 = icmp ne i32 %26, 9
  br i1 %cmp20, label %land.rhs.22, label %land.end.27

land.rhs.22:                                      ; preds = %if.else.17
  %27 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 7
  %28 = load %struct.macroblock*, %struct.macroblock** %mb_available_left23, align 8
  %mb_type24 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %28, i32 0, i32 8
  %29 = load i32, i32* %mb_type24, align 4
  %cmp25 = icmp ne i32 %29, 13
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.22, %if.else.17
  %30 = phi i1 [ false, %if.else.17 ], [ %cmp25, %land.rhs.22 ]
  %cond28 = select i1 %30, i32 1, i32 0
  store i32 %cond28, i32* %a, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %land.end.27, %if.then.16
  %31 = load i32, i32* %a, align 4
  %32 = load i32, i32* %b, align 4
  %add = add nsw i32 %31, %32
  store i32 %add, i32* %act_ctx, align 4
  %33 = load i32, i32* %curr_mb_type, align 4
  store i32 %33, i32* %act_sym, align 4
  %34 = load i32, i32* %act_ctx, align 4
  %35 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %35, i32 0, i32 6
  store i32 %34, i32* %context, align 4
  %36 = load i32, i32* %act_sym, align 4
  %cmp30 = icmp eq i32 %36, 0
  br i1 %cmp30, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.end.29
  %37 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %38 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %38, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts, i32 0, i64 0
  %arraydecay = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx33, i32 0, i32 0
  %39 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %37, i16 signext 0, %struct.BiContextType* %add.ptr)
  br label %if.end.105

if.else.34:                                       ; preds = %if.end.29
  %40 = load i32, i32* %act_sym, align 4
  %cmp35 = icmp eq i32 %40, 25
  br i1 %cmp35, label %if.then.37, label %if.else.43

if.then.37:                                       ; preds = %if.else.34
  %41 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %42 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts38 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %42, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts38, i32 0, i64 0
  %arraydecay40 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx39, i32 0, i32 0
  %43 = load i32, i32* %act_ctx, align 4
  %idx.ext41 = sext i32 %43 to i64
  %add.ptr42 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay40, i64 %idx.ext41
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %41, i16 signext 1, %struct.BiContextType* %add.ptr42)
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %44, i16 signext 1)
  br label %if.end.104

if.else.43:                                       ; preds = %if.else.34
  %45 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %46 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts44 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %46, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts44, i32 0, i64 0
  %arraydecay46 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx45, i32 0, i32 0
  %47 = load i32, i32* %act_ctx, align 4
  %idx.ext47 = sext i32 %47 to i64
  %add.ptr48 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay46, i64 %idx.ext47
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %45, i16 signext 1, %struct.BiContextType* %add.ptr48)
  %48 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %48, i16 signext 0)
  %49 = load i32, i32* %act_sym, align 4
  %sub = sub nsw i32 %49, 1
  store i32 %sub, i32* %mode_sym, align 4
  store i32 4, i32* %act_ctx, align 4
  %50 = load i32, i32* %mode_sym, align 4
  %div = sdiv i32 %50, 12
  store i32 %div, i32* %act_sym, align 4
  %51 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %52 = load i32, i32* %act_sym, align 4
  %conv49 = trunc i32 %52 to i8
  %conv50 = zext i8 %conv49 to i16
  %53 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts51 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %53, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts51, i32 0, i64 0
  %arraydecay53 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx52, i32 0, i32 0
  %54 = load i32, i32* %act_ctx, align 4
  %idx.ext54 = sext i32 %54 to i64
  %add.ptr55 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay53, i64 %idx.ext54
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %51, i16 signext %conv50, %struct.BiContextType* %add.ptr55)
  %55 = load i32, i32* %mode_sym, align 4
  %rem = srem i32 %55, 12
  store i32 %rem, i32* %mode_sym, align 4
  %56 = load i32, i32* %mode_sym, align 4
  %div56 = sdiv i32 %56, 4
  store i32 %div56, i32* %act_sym, align 4
  store i32 5, i32* %act_ctx, align 4
  %57 = load i32, i32* %act_sym, align 4
  %cmp57 = icmp eq i32 %57, 0
  br i1 %cmp57, label %if.then.59, label %if.else.65

if.then.59:                                       ; preds = %if.else.43
  %58 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %59 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts60 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %59, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts60, i32 0, i64 0
  %arraydecay62 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx61, i32 0, i32 0
  %60 = load i32, i32* %act_ctx, align 4
  %idx.ext63 = sext i32 %60 to i64
  %add.ptr64 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay62, i64 %idx.ext63
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %58, i16 signext 0, %struct.BiContextType* %add.ptr64)
  br label %if.end.86

if.else.65:                                       ; preds = %if.else.43
  %61 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %62 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts66 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %62, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts66, i32 0, i64 0
  %arraydecay68 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx67, i32 0, i32 0
  %63 = load i32, i32* %act_ctx, align 4
  %idx.ext69 = sext i32 %63 to i64
  %add.ptr70 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay68, i64 %idx.ext69
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %61, i16 signext 1, %struct.BiContextType* %add.ptr70)
  store i32 6, i32* %act_ctx, align 4
  %64 = load i32, i32* %act_sym, align 4
  %cmp71 = icmp eq i32 %64, 1
  br i1 %cmp71, label %if.then.73, label %if.else.79

if.then.73:                                       ; preds = %if.else.65
  %65 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %66 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts74 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %66, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts74, i32 0, i64 0
  %arraydecay76 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx75, i32 0, i32 0
  %67 = load i32, i32* %act_ctx, align 4
  %idx.ext77 = sext i32 %67 to i64
  %add.ptr78 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay76, i64 %idx.ext77
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %65, i16 signext 0, %struct.BiContextType* %add.ptr78)
  br label %if.end.85

if.else.79:                                       ; preds = %if.else.65
  %68 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %69 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts80 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %69, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts80, i32 0, i64 0
  %arraydecay82 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx81, i32 0, i32 0
  %70 = load i32, i32* %act_ctx, align 4
  %idx.ext83 = sext i32 %70 to i64
  %add.ptr84 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay82, i64 %idx.ext83
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %68, i16 signext 1, %struct.BiContextType* %add.ptr84)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.79, %if.then.73
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.59
  %71 = load i32, i32* %mode_sym, align 4
  %rem87 = srem i32 %71, 4
  store i32 %rem87, i32* %mode_sym, align 4
  %72 = load i32, i32* %mode_sym, align 4
  %div88 = sdiv i32 %72, 2
  store i32 %div88, i32* %act_sym, align 4
  store i32 7, i32* %act_ctx, align 4
  %73 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %74 = load i32, i32* %act_sym, align 4
  %conv89 = trunc i32 %74 to i8
  %conv90 = zext i8 %conv89 to i16
  %75 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts91 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %75, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts91, i32 0, i64 0
  %arraydecay93 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx92, i32 0, i32 0
  %76 = load i32, i32* %act_ctx, align 4
  %idx.ext94 = sext i32 %76 to i64
  %add.ptr95 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay93, i64 %idx.ext94
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %73, i16 signext %conv90, %struct.BiContextType* %add.ptr95)
  store i32 8, i32* %act_ctx, align 4
  %77 = load i32, i32* %mode_sym, align 4
  %rem96 = srem i32 %77, 2
  store i32 %rem96, i32* %act_sym, align 4
  %78 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %79 = load i32, i32* %act_sym, align 4
  %conv97 = trunc i32 %79 to i8
  %conv98 = zext i8 %conv97 to i16
  %80 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts99 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %80, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts99, i32 0, i64 0
  %arraydecay101 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx100, i32 0, i32 0
  %81 = load i32, i32* %act_ctx, align 4
  %idx.ext102 = sext i32 %81 to i64
  %add.ptr103 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay101, i64 %idx.ext102
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %78, i16 signext %conv98, %struct.BiContextType* %add.ptr103)
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.86, %if.then.37
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.32
  br label %if.end.449

if.else.106:                                      ; preds = %entry
  %82 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %82, 0
  br i1 %tobool, label %if.then.107, label %if.end.132

if.then.107:                                      ; preds = %if.else.106
  %83 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up108 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %83, i32 0, i32 6
  %84 = load %struct.macroblock*, %struct.macroblock** %mb_available_up108, align 8
  %cmp109 = icmp eq %struct.macroblock* %84, null
  br i1 %cmp109, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %if.then.107
  store i32 0, i32* %b, align 4
  br label %if.end.118

if.else.112:                                      ; preds = %if.then.107
  %85 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up113 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %85, i32 0, i32 6
  %86 = load %struct.macroblock*, %struct.macroblock** %mb_available_up113, align 8
  %mb_type114 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i32 0, i32 8
  %87 = load i32, i32* %mb_type114, align 4
  %cmp115 = icmp ne i32 %87, 0
  %cond117 = select i1 %cmp115, i32 1, i32 0
  store i32 %cond117, i32* %b, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.112, %if.then.111
  %88 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left119 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %88, i32 0, i32 7
  %89 = load %struct.macroblock*, %struct.macroblock** %mb_available_left119, align 8
  %cmp120 = icmp eq %struct.macroblock* %89, null
  br i1 %cmp120, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %if.end.118
  store i32 0, i32* %a, align 4
  br label %if.end.129

if.else.123:                                      ; preds = %if.end.118
  %90 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left124 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %90, i32 0, i32 7
  %91 = load %struct.macroblock*, %struct.macroblock** %mb_available_left124, align 8
  %mb_type125 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %91, i32 0, i32 8
  %92 = load i32, i32* %mb_type125, align 4
  %cmp126 = icmp ne i32 %92, 0
  %cond128 = select i1 %cmp126, i32 1, i32 0
  store i32 %cond128, i32* %a, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.123, %if.then.122
  %93 = load i32, i32* %a, align 4
  %94 = load i32, i32* %b, align 4
  %add130 = add nsw i32 %93, %94
  store i32 %add130, i32* %act_ctx, align 4
  %95 = load i32, i32* %act_ctx, align 4
  %96 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context131 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %96, i32 0, i32 6
  store i32 %95, i32* %context131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.129, %if.else.106
  %97 = load i32, i32* %curr_mb_type, align 4
  store i32 %97, i32* %act_sym, align 4
  %98 = load i32, i32* %act_sym, align 4
  %99 = load i32, i32* %bframe, align 4
  %tobool133 = icmp ne i32 %99, 0
  %cond134 = select i1 %tobool133, i32 24, i32 7
  store i32 %cond134, i32* %mode16x16, align 4
  %cmp135 = icmp sge i32 %98, %cond134
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.end.132
  %100 = load i32, i32* %act_sym, align 4
  %101 = load i32, i32* %mode16x16, align 4
  %sub138 = sub nsw i32 %100, %101
  store i32 %sub138, i32* %mode_sym, align 4
  %102 = load i32, i32* %mode16x16, align 4
  store i32 %102, i32* %act_sym, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.132
  %103 = load i32, i32* %bframe, align 4
  %tobool140 = icmp ne i32 %103, 0
  br i1 %tobool140, label %if.else.196, label %if.then.141

if.then.141:                                      ; preds = %if.end.139
  %104 = load i32, i32* %act_sym, align 4
  switch i32 %104, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.142
    i32 2, label %sw.bb.152
    i32 3, label %sw.bb.162
    i32 4, label %sw.bb.172
    i32 5, label %sw.bb.172
    i32 6, label %sw.bb.182
    i32 7, label %sw.bb.189
  ]

sw.bb:                                            ; preds = %if.then.141
  br label %sw.epilog

sw.bb.142:                                        ; preds = %if.then.141
  %105 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %106 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts143 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %106, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts143, i32 0, i64 1
  %arrayidx145 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx144, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %105, i16 signext 0, %struct.BiContextType* %arrayidx145)
  %107 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %108 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts146 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %108, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts146, i32 0, i64 1
  %arrayidx148 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx147, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %107, i16 signext 0, %struct.BiContextType* %arrayidx148)
  %109 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %110 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts149 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %110, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts149, i32 0, i64 1
  %arrayidx151 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx150, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %109, i16 signext 0, %struct.BiContextType* %arrayidx151)
  br label %sw.epilog

sw.bb.152:                                        ; preds = %if.then.141
  %111 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %112 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts153 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %112, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts153, i32 0, i64 1
  %arrayidx155 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx154, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %111, i16 signext 0, %struct.BiContextType* %arrayidx155)
  %113 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %114 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts156 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %114, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts156, i32 0, i64 1
  %arrayidx158 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx157, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %113, i16 signext 1, %struct.BiContextType* %arrayidx158)
  %115 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %116 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts159 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %116, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts159, i32 0, i64 1
  %arrayidx161 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx160, i32 0, i64 7
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %115, i16 signext 1, %struct.BiContextType* %arrayidx161)
  br label %sw.epilog

sw.bb.162:                                        ; preds = %if.then.141
  %117 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %118 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts163 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %118, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts163, i32 0, i64 1
  %arrayidx165 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx164, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %117, i16 signext 0, %struct.BiContextType* %arrayidx165)
  %119 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %120 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts166 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %120, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts166, i32 0, i64 1
  %arrayidx168 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx167, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %119, i16 signext 1, %struct.BiContextType* %arrayidx168)
  %121 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %122 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts169 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %122, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts169, i32 0, i64 1
  %arrayidx171 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx170, i32 0, i64 7
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %121, i16 signext 0, %struct.BiContextType* %arrayidx171)
  br label %sw.epilog

sw.bb.172:                                        ; preds = %if.then.141, %if.then.141
  %123 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %124 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts173 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %124, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts173, i32 0, i64 1
  %arrayidx175 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx174, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %123, i16 signext 0, %struct.BiContextType* %arrayidx175)
  %125 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %126 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts176 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %126, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts176, i32 0, i64 1
  %arrayidx178 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx177, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %125, i16 signext 0, %struct.BiContextType* %arrayidx178)
  %127 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %128 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts179 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %128, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts179, i32 0, i64 1
  %arrayidx181 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx180, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %127, i16 signext 1, %struct.BiContextType* %arrayidx181)
  br label %sw.epilog

sw.bb.182:                                        ; preds = %if.then.141
  %129 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %130 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts183 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %130, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts183, i32 0, i64 1
  %arrayidx185 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx184, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %129, i16 signext 1, %struct.BiContextType* %arrayidx185)
  %131 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %132 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts186 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %132, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts186, i32 0, i64 1
  %arrayidx188 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx187, i32 0, i64 7
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %131, i16 signext 0, %struct.BiContextType* %arrayidx188)
  br label %sw.epilog

sw.bb.189:                                        ; preds = %if.then.141
  %133 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %134 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts190 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %134, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts190, i32 0, i64 1
  %arrayidx192 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx191, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %133, i16 signext 1, %struct.BiContextType* %arrayidx192)
  %135 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %136 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts193 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %136, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts193, i32 0, i64 1
  %arrayidx195 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx194, i32 0, i64 7
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %135, i16 signext 1, %struct.BiContextType* %arrayidx195)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.141
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.189, %sw.bb.182, %sw.bb.172, %sw.bb.162, %sw.bb.152, %sw.bb.142, %sw.bb
  br label %if.end.383

if.else.196:                                      ; preds = %if.end.139
  %137 = load i32, i32* %act_sym, align 4
  %cmp197 = icmp eq i32 %137, 0
  br i1 %cmp197, label %if.then.199, label %if.else.204

if.then.199:                                      ; preds = %if.else.196
  %138 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %139 = load i32, i32* %act_ctx, align 4
  %idxprom200 = sext i32 %139 to i64
  %140 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts201 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %140, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts201, i32 0, i64 2
  %arrayidx203 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx202, i32 0, i64 %idxprom200
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %138, i16 signext 0, %struct.BiContextType* %arrayidx203)
  br label %if.end.382

if.else.204:                                      ; preds = %if.else.196
  %141 = load i32, i32* %act_sym, align 4
  %cmp205 = icmp sle i32 %141, 2
  br i1 %cmp205, label %if.then.207, label %if.else.226

if.then.207:                                      ; preds = %if.else.204
  %142 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %143 = load i32, i32* %act_ctx, align 4
  %idxprom208 = sext i32 %143 to i64
  %144 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts209 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %144, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts209, i32 0, i64 2
  %arrayidx211 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx210, i32 0, i64 %idxprom208
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %142, i16 signext 1, %struct.BiContextType* %arrayidx211)
  %145 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %146 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts212 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %146, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts212, i32 0, i64 2
  %arrayidx214 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx213, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %145, i16 signext 0, %struct.BiContextType* %arrayidx214)
  %147 = load i32, i32* %act_sym, align 4
  %sub215 = sub nsw i32 %147, 1
  store i32 %sub215, i32* %csym, align 4
  %148 = load i32, i32* %csym, align 4
  %tobool216 = icmp ne i32 %148, 0
  br i1 %tobool216, label %if.then.217, label %if.else.221

if.then.217:                                      ; preds = %if.then.207
  %149 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %150 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts218 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %150, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts218, i32 0, i64 2
  %arrayidx220 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx219, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %149, i16 signext 1, %struct.BiContextType* %arrayidx220)
  br label %if.end.225

if.else.221:                                      ; preds = %if.then.207
  %151 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %152 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts222 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %152, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts222, i32 0, i64 2
  %arrayidx224 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx223, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %151, i16 signext 0, %struct.BiContextType* %arrayidx224)
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.221, %if.then.217
  br label %if.end.381

if.else.226:                                      ; preds = %if.else.204
  %153 = load i32, i32* %act_sym, align 4
  %cmp227 = icmp sle i32 %153, 10
  br i1 %cmp227, label %if.then.229, label %if.else.276

if.then.229:                                      ; preds = %if.else.226
  %154 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %155 = load i32, i32* %act_ctx, align 4
  %idxprom230 = sext i32 %155 to i64
  %156 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts231 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %156, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts231, i32 0, i64 2
  %arrayidx233 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx232, i32 0, i64 %idxprom230
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %154, i16 signext 1, %struct.BiContextType* %arrayidx233)
  %157 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %158 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts234 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %158, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts234, i32 0, i64 2
  %arrayidx236 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx235, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %157, i16 signext 1, %struct.BiContextType* %arrayidx236)
  %159 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %160 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts237 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %160, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts237, i32 0, i64 2
  %arrayidx239 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx238, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %159, i16 signext 0, %struct.BiContextType* %arrayidx239)
  %161 = load i32, i32* %act_sym, align 4
  %sub240 = sub nsw i32 %161, 3
  %shr = ashr i32 %sub240, 2
  %and = and i32 %shr, 1
  store i32 %and, i32* %csym, align 4
  %162 = load i32, i32* %csym, align 4
  %tobool241 = icmp ne i32 %162, 0
  br i1 %tobool241, label %if.then.242, label %if.else.246

if.then.242:                                      ; preds = %if.then.229
  %163 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %164 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts243 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %164, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts243, i32 0, i64 2
  %arrayidx245 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx244, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %163, i16 signext 1, %struct.BiContextType* %arrayidx245)
  br label %if.end.250

if.else.246:                                      ; preds = %if.then.229
  %165 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %166 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts247 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %166, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts247, i32 0, i64 2
  %arrayidx249 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx248, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %165, i16 signext 0, %struct.BiContextType* %arrayidx249)
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.246, %if.then.242
  %167 = load i32, i32* %act_sym, align 4
  %sub251 = sub nsw i32 %167, 3
  %shr252 = ashr i32 %sub251, 1
  %and253 = and i32 %shr252, 1
  store i32 %and253, i32* %csym, align 4
  %168 = load i32, i32* %csym, align 4
  %tobool254 = icmp ne i32 %168, 0
  br i1 %tobool254, label %if.then.255, label %if.else.259

if.then.255:                                      ; preds = %if.end.250
  %169 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %170 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts256 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %170, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts256, i32 0, i64 2
  %arrayidx258 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx257, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %169, i16 signext 1, %struct.BiContextType* %arrayidx258)
  br label %if.end.263

if.else.259:                                      ; preds = %if.end.250
  %171 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %172 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts260 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %172, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts260, i32 0, i64 2
  %arrayidx262 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx261, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %171, i16 signext 0, %struct.BiContextType* %arrayidx262)
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.259, %if.then.255
  %173 = load i32, i32* %act_sym, align 4
  %sub264 = sub nsw i32 %173, 3
  %and265 = and i32 %sub264, 1
  store i32 %and265, i32* %csym, align 4
  %174 = load i32, i32* %csym, align 4
  %tobool266 = icmp ne i32 %174, 0
  br i1 %tobool266, label %if.then.267, label %if.else.271

if.then.267:                                      ; preds = %if.end.263
  %175 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %176 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts268 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %176, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts268, i32 0, i64 2
  %arrayidx270 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx269, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %175, i16 signext 1, %struct.BiContextType* %arrayidx270)
  br label %if.end.275

if.else.271:                                      ; preds = %if.end.263
  %177 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %178 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts272 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %178, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts272, i32 0, i64 2
  %arrayidx274 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx273, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %177, i16 signext 0, %struct.BiContextType* %arrayidx274)
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.271, %if.then.267
  br label %if.end.380

if.else.276:                                      ; preds = %if.else.226
  %179 = load i32, i32* %act_sym, align 4
  %cmp277 = icmp eq i32 %179, 11
  br i1 %cmp277, label %if.then.281, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.276
  %180 = load i32, i32* %act_sym, align 4
  %cmp279 = icmp eq i32 %180, 22
  br i1 %cmp279, label %if.then.281, label %if.else.309

if.then.281:                                      ; preds = %lor.lhs.false, %if.else.276
  %181 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %182 = load i32, i32* %act_ctx, align 4
  %idxprom282 = sext i32 %182 to i64
  %183 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts283 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %183, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts283, i32 0, i64 2
  %arrayidx285 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx284, i32 0, i64 %idxprom282
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %181, i16 signext 1, %struct.BiContextType* %arrayidx285)
  %184 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %185 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts286 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %185, i32 0, i32 0
  %arrayidx287 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts286, i32 0, i64 2
  %arrayidx288 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx287, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %184, i16 signext 1, %struct.BiContextType* %arrayidx288)
  %186 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %187 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts289 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %187, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts289, i32 0, i64 2
  %arrayidx291 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx290, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %186, i16 signext 1, %struct.BiContextType* %arrayidx291)
  %188 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %189 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts292 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %189, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts292, i32 0, i64 2
  %arrayidx294 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx293, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %188, i16 signext 1, %struct.BiContextType* %arrayidx294)
  %190 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %191 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts295 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %191, i32 0, i32 0
  %arrayidx296 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts295, i32 0, i64 2
  %arrayidx297 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx296, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %190, i16 signext 1, %struct.BiContextType* %arrayidx297)
  %192 = load i32, i32* %act_sym, align 4
  %cmp298 = icmp eq i32 %192, 11
  br i1 %cmp298, label %if.then.300, label %if.else.304

if.then.300:                                      ; preds = %if.then.281
  %193 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %194 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts301 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %194, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts301, i32 0, i64 2
  %arrayidx303 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx302, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %193, i16 signext 0, %struct.BiContextType* %arrayidx303)
  br label %if.end.308

if.else.304:                                      ; preds = %if.then.281
  %195 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %196 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts305 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %196, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts305, i32 0, i64 2
  %arrayidx307 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx306, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %195, i16 signext 1, %struct.BiContextType* %arrayidx307)
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.304, %if.then.300
  br label %if.end.379

if.else.309:                                      ; preds = %lor.lhs.false
  %197 = load i32, i32* %act_sym, align 4
  %cmp310 = icmp sgt i32 %197, 22
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.else.309
  %198 = load i32, i32* %act_sym, align 4
  %dec = add nsw i32 %198, -1
  store i32 %dec, i32* %act_sym, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.312, %if.else.309
  %199 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %200 = load i32, i32* %act_ctx, align 4
  %idxprom314 = sext i32 %200 to i64
  %201 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts315 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %201, i32 0, i32 0
  %arrayidx316 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts315, i32 0, i64 2
  %arrayidx317 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx316, i32 0, i64 %idxprom314
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %199, i16 signext 1, %struct.BiContextType* %arrayidx317)
  %202 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %203 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts318 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %203, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts318, i32 0, i64 2
  %arrayidx320 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx319, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %202, i16 signext 1, %struct.BiContextType* %arrayidx320)
  %204 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %205 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts321 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %205, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts321, i32 0, i64 2
  %arrayidx323 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx322, i32 0, i64 5
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %204, i16 signext 1, %struct.BiContextType* %arrayidx323)
  %206 = load i32, i32* %act_sym, align 4
  %sub324 = sub nsw i32 %206, 12
  %shr325 = ashr i32 %sub324, 3
  %and326 = and i32 %shr325, 1
  store i32 %and326, i32* %csym, align 4
  %207 = load i32, i32* %csym, align 4
  %tobool327 = icmp ne i32 %207, 0
  br i1 %tobool327, label %if.then.328, label %if.else.332

if.then.328:                                      ; preds = %if.end.313
  %208 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %209 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts329 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %209, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts329, i32 0, i64 2
  %arrayidx331 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx330, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %208, i16 signext 1, %struct.BiContextType* %arrayidx331)
  br label %if.end.336

if.else.332:                                      ; preds = %if.end.313
  %210 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %211 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts333 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %211, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts333, i32 0, i64 2
  %arrayidx335 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx334, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %210, i16 signext 0, %struct.BiContextType* %arrayidx335)
  br label %if.end.336

if.end.336:                                       ; preds = %if.else.332, %if.then.328
  %212 = load i32, i32* %act_sym, align 4
  %sub337 = sub nsw i32 %212, 12
  %shr338 = ashr i32 %sub337, 2
  %and339 = and i32 %shr338, 1
  store i32 %and339, i32* %csym, align 4
  %213 = load i32, i32* %csym, align 4
  %tobool340 = icmp ne i32 %213, 0
  br i1 %tobool340, label %if.then.341, label %if.else.345

if.then.341:                                      ; preds = %if.end.336
  %214 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %215 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts342 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %215, i32 0, i32 0
  %arrayidx343 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts342, i32 0, i64 2
  %arrayidx344 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx343, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %214, i16 signext 1, %struct.BiContextType* %arrayidx344)
  br label %if.end.349

if.else.345:                                      ; preds = %if.end.336
  %216 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %217 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts346 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %217, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts346, i32 0, i64 2
  %arrayidx348 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx347, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %216, i16 signext 0, %struct.BiContextType* %arrayidx348)
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.345, %if.then.341
  %218 = load i32, i32* %act_sym, align 4
  %sub350 = sub nsw i32 %218, 12
  %shr351 = ashr i32 %sub350, 1
  %and352 = and i32 %shr351, 1
  store i32 %and352, i32* %csym, align 4
  %219 = load i32, i32* %csym, align 4
  %tobool353 = icmp ne i32 %219, 0
  br i1 %tobool353, label %if.then.354, label %if.else.358

if.then.354:                                      ; preds = %if.end.349
  %220 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %221 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts355 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %221, i32 0, i32 0
  %arrayidx356 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts355, i32 0, i64 2
  %arrayidx357 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx356, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %220, i16 signext 1, %struct.BiContextType* %arrayidx357)
  br label %if.end.362

if.else.358:                                      ; preds = %if.end.349
  %222 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %223 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts359 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %223, i32 0, i32 0
  %arrayidx360 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts359, i32 0, i64 2
  %arrayidx361 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx360, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %222, i16 signext 0, %struct.BiContextType* %arrayidx361)
  br label %if.end.362

if.end.362:                                       ; preds = %if.else.358, %if.then.354
  %224 = load i32, i32* %act_sym, align 4
  %sub363 = sub nsw i32 %224, 12
  %and364 = and i32 %sub363, 1
  store i32 %and364, i32* %csym, align 4
  %225 = load i32, i32* %csym, align 4
  %tobool365 = icmp ne i32 %225, 0
  br i1 %tobool365, label %if.then.366, label %if.else.370

if.then.366:                                      ; preds = %if.end.362
  %226 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %227 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts367 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %227, i32 0, i32 0
  %arrayidx368 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts367, i32 0, i64 2
  %arrayidx369 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx368, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %226, i16 signext 1, %struct.BiContextType* %arrayidx369)
  br label %if.end.374

if.else.370:                                      ; preds = %if.end.362
  %228 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %229 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts371 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %229, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts371, i32 0, i64 2
  %arrayidx373 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx372, i32 0, i64 6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %228, i16 signext 0, %struct.BiContextType* %arrayidx373)
  br label %if.end.374

if.end.374:                                       ; preds = %if.else.370, %if.then.366
  %230 = load i32, i32* %act_sym, align 4
  %cmp375 = icmp sge i32 %230, 22
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %if.end.374
  %231 = load i32, i32* %act_sym, align 4
  %inc = add nsw i32 %231, 1
  store i32 %inc, i32* %act_sym, align 4
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.377, %if.end.374
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.end.308
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.end.275
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.end.225
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.then.199
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %sw.epilog
  %232 = load i32, i32* %act_sym, align 4
  %233 = load i32, i32* %mode16x16, align 4
  %cmp384 = icmp eq i32 %232, %233
  br i1 %cmp384, label %if.then.386, label %if.end.448

if.then.386:                                      ; preds = %if.end.383
  %234 = load i32, i32* %mode_sym, align 4
  %cmp387 = icmp eq i32 %234, 25
  br i1 %cmp387, label %if.then.389, label %if.end.390

if.then.389:                                      ; preds = %if.then.386
  %235 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %235, i16 signext 1)
  br label %if.end.449

if.end.390:                                       ; preds = %if.then.386
  %236 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %236, i16 signext 0)
  store i32 8, i32* %act_ctx, align 4
  %237 = load i32, i32* %mode_sym, align 4
  %div391 = sdiv i32 %237, 12
  store i32 %div391, i32* %act_sym, align 4
  %238 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %239 = load i32, i32* %act_sym, align 4
  %conv392 = trunc i32 %239 to i8
  %conv393 = zext i8 %conv392 to i16
  %240 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts394 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %240, i32 0, i32 0
  %arrayidx395 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts394, i32 0, i64 1
  %arraydecay396 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx395, i32 0, i32 0
  %241 = load i32, i32* %act_ctx, align 4
  %idx.ext397 = sext i32 %241 to i64
  %add.ptr398 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay396, i64 %idx.ext397
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %238, i16 signext %conv393, %struct.BiContextType* %add.ptr398)
  %242 = load i32, i32* %mode_sym, align 4
  %rem399 = srem i32 %242, 12
  store i32 %rem399, i32* %mode_sym, align 4
  %243 = load i32, i32* %mode_sym, align 4
  %div400 = sdiv i32 %243, 4
  store i32 %div400, i32* %act_sym, align 4
  store i32 9, i32* %act_ctx, align 4
  %244 = load i32, i32* %act_sym, align 4
  %cmp401 = icmp eq i32 %244, 0
  br i1 %cmp401, label %if.then.403, label %if.else.409

if.then.403:                                      ; preds = %if.end.390
  %245 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %246 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts404 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %246, i32 0, i32 0
  %arrayidx405 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts404, i32 0, i64 1
  %arraydecay406 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx405, i32 0, i32 0
  %247 = load i32, i32* %act_ctx, align 4
  %idx.ext407 = sext i32 %247 to i64
  %add.ptr408 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay406, i64 %idx.ext407
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %245, i16 signext 0, %struct.BiContextType* %add.ptr408)
  br label %if.end.430

if.else.409:                                      ; preds = %if.end.390
  %248 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %249 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts410 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %249, i32 0, i32 0
  %arrayidx411 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts410, i32 0, i64 1
  %arraydecay412 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx411, i32 0, i32 0
  %250 = load i32, i32* %act_ctx, align 4
  %idx.ext413 = sext i32 %250 to i64
  %add.ptr414 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay412, i64 %idx.ext413
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %248, i16 signext 1, %struct.BiContextType* %add.ptr414)
  %251 = load i32, i32* %act_sym, align 4
  %cmp415 = icmp eq i32 %251, 1
  br i1 %cmp415, label %if.then.417, label %if.else.423

if.then.417:                                      ; preds = %if.else.409
  %252 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %253 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts418 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %253, i32 0, i32 0
  %arrayidx419 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts418, i32 0, i64 1
  %arraydecay420 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx419, i32 0, i32 0
  %254 = load i32, i32* %act_ctx, align 4
  %idx.ext421 = sext i32 %254 to i64
  %add.ptr422 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay420, i64 %idx.ext421
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %252, i16 signext 0, %struct.BiContextType* %add.ptr422)
  br label %if.end.429

if.else.423:                                      ; preds = %if.else.409
  %255 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %256 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts424 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %256, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts424, i32 0, i64 1
  %arraydecay426 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx425, i32 0, i32 0
  %257 = load i32, i32* %act_ctx, align 4
  %idx.ext427 = sext i32 %257 to i64
  %add.ptr428 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay426, i64 %idx.ext427
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %255, i16 signext 1, %struct.BiContextType* %add.ptr428)
  br label %if.end.429

if.end.429:                                       ; preds = %if.else.423, %if.then.417
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %if.then.403
  %258 = load i32, i32* %mode_sym, align 4
  %rem431 = srem i32 %258, 4
  store i32 %rem431, i32* %mode_sym, align 4
  store i32 10, i32* %act_ctx, align 4
  %259 = load i32, i32* %mode_sym, align 4
  %div432 = sdiv i32 %259, 2
  store i32 %div432, i32* %act_sym, align 4
  %260 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %261 = load i32, i32* %act_sym, align 4
  %conv433 = trunc i32 %261 to i8
  %conv434 = zext i8 %conv433 to i16
  %262 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts435 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %262, i32 0, i32 0
  %arrayidx436 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts435, i32 0, i64 1
  %arraydecay437 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx436, i32 0, i32 0
  %263 = load i32, i32* %act_ctx, align 4
  %idx.ext438 = sext i32 %263 to i64
  %add.ptr439 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay437, i64 %idx.ext438
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %260, i16 signext %conv434, %struct.BiContextType* %add.ptr439)
  %264 = load i32, i32* %mode_sym, align 4
  %rem440 = srem i32 %264, 2
  store i32 %rem440, i32* %act_sym, align 4
  %265 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %266 = load i32, i32* %act_sym, align 4
  %conv441 = trunc i32 %266 to i8
  %conv442 = zext i8 %conv441 to i16
  %267 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts443 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %267, i32 0, i32 0
  %arrayidx444 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], [3 x [11 x %struct.BiContextType]]* %mb_type_contexts443, i32 0, i64 1
  %arraydecay445 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx444, i32 0, i32 0
  %268 = load i32, i32* %act_ctx, align 4
  %idx.ext446 = sext i32 %268 to i64
  %add.ptr447 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay445, i64 %idx.ext446
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %265, i16 signext %conv442, %struct.BiContextType* %add.ptr447)
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.430, %if.end.383
  br label %if.end.449

if.end.449:                                       ; preds = %if.then.389, %if.end.448, %if.end.105
  ret void
}

declare void @biari_encode_symbol_final(%struct.EncodingEnvironment*, i16 signext) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @writeB8_typeInfo_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %csym = alloca i32, align 4
  %bframe = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 6
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 50
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 7
  %4 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %4, %struct.MotionInfoContexts** %ctx, align 8
  %5 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %5, i32 0, i32 1
  %6 = load i32, i32* %value1, align 4
  store i32 %6, i32* %act_sym, align 4
  store i32 0, i32* %act_ctx, align 4
  %7 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %act_sym, align 4
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.then
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %10 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %9, i16 signext 1, %struct.BiContextType* %arrayidx1)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %11 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %12 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts3 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %12, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx4, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %11, i16 signext 0, %struct.BiContextType* %arrayidx5)
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %14 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts6 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %14, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx7, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %13, i16 signext 0, %struct.BiContextType* %arrayidx8)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  %15 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %16 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts10 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx11, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %15, i16 signext 0, %struct.BiContextType* %arrayidx12)
  %17 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %18 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts13 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %18, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts13, i32 0, i64 0
  %arrayidx15 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx14, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %17, i16 signext 1, %struct.BiContextType* %arrayidx15)
  %19 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %20 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts16 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %20, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts16, i32 0, i64 0
  %arrayidx18 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx17, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %19, i16 signext 1, %struct.BiContextType* %arrayidx18)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then
  %21 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %22 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts20 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %22, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts20, i32 0, i64 0
  %arrayidx22 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx21, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %21, i16 signext 0, %struct.BiContextType* %arrayidx22)
  %23 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %24 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts23 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %24, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts23, i32 0, i64 0
  %arrayidx25 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx24, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %23, i16 signext 1, %struct.BiContextType* %arrayidx25)
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %26 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts26 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %26, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts26, i32 0, i64 0
  %arrayidx28 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx27, i32 0, i64 4
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %25, i16 signext 0, %struct.BiContextType* %arrayidx28)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.19, %sw.bb.9, %sw.bb.2, %sw.bb
  br label %if.end.147

if.else:                                          ; preds = %entry
  %27 = load i32, i32* %act_sym, align 4
  %cmp29 = icmp eq i32 %27, 0
  br i1 %cmp29, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %if.else
  %28 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %29 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts32 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %29, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts32, i32 0, i64 1
  %arrayidx34 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx33, i32 0, i64 0
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %28, i16 signext 0, %struct.BiContextType* %arrayidx34)
  br label %if.end.147

if.else.35:                                       ; preds = %if.else
  %30 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %31 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts36 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %31, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts36, i32 0, i64 1
  %arrayidx38 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx37, i32 0, i64 0
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %30, i16 signext 1, %struct.BiContextType* %arrayidx38)
  %32 = load i32, i32* %act_sym, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %act_sym, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.35
  %33 = load i32, i32* %act_sym, align 4
  %cmp39 = icmp slt i32 %33, 2
  br i1 %cmp39, label %if.then.41, label %if.else.56

if.then.41:                                       ; preds = %if.end
  %34 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %35 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts42 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %35, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts42, i32 0, i64 1
  %arrayidx44 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx43, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %34, i16 signext 0, %struct.BiContextType* %arrayidx44)
  %36 = load i32, i32* %act_sym, align 4
  %cmp45 = icmp eq i32 %36, 0
  br i1 %cmp45, label %if.then.47, label %if.else.51

if.then.47:                                       ; preds = %if.then.41
  %37 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %38 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts48 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %38, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts48, i32 0, i64 1
  %arrayidx50 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx49, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %37, i16 signext 0, %struct.BiContextType* %arrayidx50)
  br label %if.end.55

if.else.51:                                       ; preds = %if.then.41
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %40 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts52 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %40, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts52, i32 0, i64 1
  %arrayidx54 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx53, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %39, i16 signext 1, %struct.BiContextType* %arrayidx54)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.51, %if.then.47
  br label %if.end.146

if.else.56:                                       ; preds = %if.end
  %41 = load i32, i32* %act_sym, align 4
  %cmp57 = icmp slt i32 %41, 6
  br i1 %cmp57, label %if.then.59, label %if.else.88

if.then.59:                                       ; preds = %if.else.56
  %42 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %43 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts60 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %43, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts60, i32 0, i64 1
  %arrayidx62 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx61, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %42, i16 signext 1, %struct.BiContextType* %arrayidx62)
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %45 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts63 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %45, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts63, i32 0, i64 1
  %arrayidx65 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx64, i32 0, i64 2
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %44, i16 signext 0, %struct.BiContextType* %arrayidx65)
  %46 = load i32, i32* %act_sym, align 4
  %sub = sub nsw i32 %46, 2
  %shr = ashr i32 %sub, 1
  %and = and i32 %shr, 1
  store i32 %and, i32* %csym, align 4
  %47 = load i32, i32* %csym, align 4
  %tobool66 = icmp ne i32 %47, 0
  br i1 %tobool66, label %if.then.67, label %if.else.71

if.then.67:                                       ; preds = %if.then.59
  %48 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %49 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts68 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %49, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts68, i32 0, i64 1
  %arrayidx70 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx69, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %48, i16 signext 1, %struct.BiContextType* %arrayidx70)
  br label %if.end.75

if.else.71:                                       ; preds = %if.then.59
  %50 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %51 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts72 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %51, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts72, i32 0, i64 1
  %arrayidx74 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx73, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %50, i16 signext 0, %struct.BiContextType* %arrayidx74)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.71, %if.then.67
  %52 = load i32, i32* %act_sym, align 4
  %sub76 = sub nsw i32 %52, 2
  %and77 = and i32 %sub76, 1
  store i32 %and77, i32* %csym, align 4
  %53 = load i32, i32* %csym, align 4
  %tobool78 = icmp ne i32 %53, 0
  br i1 %tobool78, label %if.then.79, label %if.else.83

if.then.79:                                       ; preds = %if.end.75
  %54 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %55 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts80 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %55, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts80, i32 0, i64 1
  %arrayidx82 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx81, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %54, i16 signext 1, %struct.BiContextType* %arrayidx82)
  br label %if.end.87

if.else.83:                                       ; preds = %if.end.75
  %56 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %57 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts84 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %57, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts84, i32 0, i64 1
  %arrayidx86 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx85, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %56, i16 signext 0, %struct.BiContextType* %arrayidx86)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.83, %if.then.79
  br label %if.end.145

if.else.88:                                       ; preds = %if.else.56
  %58 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %59 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts89 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %59, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts89, i32 0, i64 1
  %arrayidx91 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx90, i32 0, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %58, i16 signext 1, %struct.BiContextType* %arrayidx91)
  %60 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %61 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts92 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %61, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts92, i32 0, i64 1
  %arrayidx94 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx93, i32 0, i64 2
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %60, i16 signext 1, %struct.BiContextType* %arrayidx94)
  %62 = load i32, i32* %act_sym, align 4
  %sub95 = sub nsw i32 %62, 6
  %shr96 = ashr i32 %sub95, 2
  %and97 = and i32 %shr96, 1
  store i32 %and97, i32* %csym, align 4
  %63 = load i32, i32* %csym, align 4
  %tobool98 = icmp ne i32 %63, 0
  br i1 %tobool98, label %if.then.99, label %if.else.115

if.then.99:                                       ; preds = %if.else.88
  %64 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %65 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts100 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %65, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts100, i32 0, i64 1
  %arrayidx102 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx101, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %64, i16 signext 1, %struct.BiContextType* %arrayidx102)
  %66 = load i32, i32* %act_sym, align 4
  %sub103 = sub nsw i32 %66, 6
  %and104 = and i32 %sub103, 1
  store i32 %and104, i32* %csym, align 4
  %67 = load i32, i32* %csym, align 4
  %tobool105 = icmp ne i32 %67, 0
  br i1 %tobool105, label %if.then.106, label %if.else.110

if.then.106:                                      ; preds = %if.then.99
  %68 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %69 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts107 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %69, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts107, i32 0, i64 1
  %arrayidx109 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx108, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %68, i16 signext 1, %struct.BiContextType* %arrayidx109)
  br label %if.end.114

if.else.110:                                      ; preds = %if.then.99
  %70 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %71 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts111 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %71, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts111, i32 0, i64 1
  %arrayidx113 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx112, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %70, i16 signext 0, %struct.BiContextType* %arrayidx113)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.110, %if.then.106
  br label %if.end.144

if.else.115:                                      ; preds = %if.else.88
  %72 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %73 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts116 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %73, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts116, i32 0, i64 1
  %arrayidx118 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx117, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %72, i16 signext 0, %struct.BiContextType* %arrayidx118)
  %74 = load i32, i32* %act_sym, align 4
  %sub119 = sub nsw i32 %74, 6
  %shr120 = ashr i32 %sub119, 1
  %and121 = and i32 %shr120, 1
  store i32 %and121, i32* %csym, align 4
  %75 = load i32, i32* %csym, align 4
  %tobool122 = icmp ne i32 %75, 0
  br i1 %tobool122, label %if.then.123, label %if.else.127

if.then.123:                                      ; preds = %if.else.115
  %76 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %77 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts124 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %77, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts124, i32 0, i64 1
  %arrayidx126 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx125, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %76, i16 signext 1, %struct.BiContextType* %arrayidx126)
  br label %if.end.131

if.else.127:                                      ; preds = %if.else.115
  %78 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %79 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts128 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %79, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts128, i32 0, i64 1
  %arrayidx130 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx129, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %78, i16 signext 0, %struct.BiContextType* %arrayidx130)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.127, %if.then.123
  %80 = load i32, i32* %act_sym, align 4
  %sub132 = sub nsw i32 %80, 6
  %and133 = and i32 %sub132, 1
  store i32 %and133, i32* %csym, align 4
  %81 = load i32, i32* %csym, align 4
  %tobool134 = icmp ne i32 %81, 0
  br i1 %tobool134, label %if.then.135, label %if.else.139

if.then.135:                                      ; preds = %if.end.131
  %82 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %83 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts136 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %83, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts136, i32 0, i64 1
  %arrayidx138 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx137, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %82, i16 signext 1, %struct.BiContextType* %arrayidx138)
  br label %if.end.143

if.else.139:                                      ; preds = %if.end.131
  %84 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %85 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts140 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %85, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts140, i32 0, i64 1
  %arrayidx142 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx141, i32 0, i64 3
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %84, i16 signext 0, %struct.BiContextType* %arrayidx142)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.139, %if.then.135
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.114
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.87
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.55
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.31, %if.end.146, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeIntraPredMode_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %ctx = alloca %struct.TextureInfoContexts*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 8
  %2 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %2, %struct.TextureInfoContexts** %ctx, align 8
  %3 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %3, i32 0, i32 1
  %4 = load i32, i32* %value1, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %6 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts, i32 0, i32 0
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %5, i16 signext 1, %struct.BiContextType* %arraydecay)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %8 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts1 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %8, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts1, i32 0, i32 0
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %7, i16 signext 0, %struct.BiContextType* %arraydecay2)
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %10 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value13 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %10, i32 0, i32 1
  %11 = load i32, i32* %value13, align 4
  %and = and i32 %11, 1
  %conv = trunc i32 %and to i16
  %12 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts4 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %12, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts4, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay5, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %9, i16 signext %conv, %struct.BiContextType* %add.ptr)
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %14 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value16 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %14, i32 0, i32 1
  %15 = load i32, i32* %value16, align 4
  %and7 = and i32 %15, 2
  %shr = ashr i32 %and7, 1
  %conv8 = trunc i32 %shr to i16
  %16 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts9 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %16, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts9, i32 0, i32 0
  %add.ptr11 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay10, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %13, i16 signext %conv8, %struct.BiContextType* %add.ptr11)
  %17 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %18 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value112 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %18, i32 0, i32 1
  %19 = load i32, i32* %value112, align 4
  %and13 = and i32 %19, 4
  %shr14 = ashr i32 %and13, 2
  %conv15 = trunc i32 %shr14 to i16
  %20 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts16 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %20, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts16, i32 0, i32 0
  %add.ptr18 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay17, i64 1
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %17, i16 signext %conv15, %struct.BiContextType* %add.ptr18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeRefFrame_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %addctx = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %refframe_array = alloca i16**, align 8
  %bslice = alloca i32, align 4
  %b8a = alloca i32, align 4
  %b8b = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 7
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %2, %struct.MotionInfoContexts** %ctx, align 8
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 3
  %4 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 51
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  store i32 0, i32* %addctx, align 4
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 2
  %8 = load i32, i32* %value2, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 32
  %10 = load i16***, i16**** %ref_idx, align 8
  %arrayidx2 = getelementptr inbounds i16**, i16*** %10, i64 %idxprom1
  %11 = load i16**, i16*** %arrayidx2, align 8
  store i16** %11, i16*** %refframe_array, align 8
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 6
  %13 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %13, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bslice, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 3
  %15 = load i32, i32* %current_mb_nr3, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 18
  %17 = load i32, i32* %subblock_x, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 19
  %19 = load i32, i32* %subblock_y, align 4
  call void @getLuma4x4Neighbour(i32 %15, i32 %17, i32 %19, i32 -1, i32 0, %struct.pix_pos* %block_a)
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 3
  %21 = load i32, i32* %current_mb_nr4, align 4
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 18
  %23 = load i32, i32* %subblock_x5, align 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 19
  %25 = load i32, i32* %subblock_y6, align 4
  call void @getLuma4x4Neighbour(i32 %21, i32 %23, i32 %25, i32 0, i32 -1, %struct.pix_pos* %block_b)
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %26 = load i32, i32* %x, align 4
  %div = sdiv i32 %26, 2
  %rem = srem i32 %div, 2
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %27 = load i32, i32* %y, align 4
  %div7 = sdiv i32 %27, 2
  %rem8 = srem i32 %div7, 2
  %mul = mul nsw i32 2, %rem8
  %add = add nsw i32 %rem, %mul
  store i32 %add, i32* %b8a, align 4
  %x9 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %28 = load i32, i32* %x9, align 4
  %div10 = sdiv i32 %28, 2
  %rem11 = srem i32 %div10, 2
  %y12 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %29 = load i32, i32* %y12, align 4
  %div13 = sdiv i32 %29, 2
  %rem14 = srem i32 %div13, 2
  %mul15 = mul nsw i32 2, %rem14
  %add16 = add nsw i32 %rem11, %mul15
  store i32 %add16, i32* %b8b, align 4
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %30 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end.69

if.else:                                          ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %31 = load i32, i32* %mb_addr, align 4
  %idxprom17 = sext i32 %31 to i64
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 51
  %33 = load %struct.macroblock*, %struct.macroblock** %mb_data18, align 8
  %arrayidx19 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %33, i64 %idxprom17
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx19, i32 0, i32 8
  %34 = load i32, i32* %mb_type, align 4
  %cmp20 = icmp eq i32 %34, 0
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 6
  %36 = load i32, i32* %type22, align 4
  %cmp23 = icmp eq i32 %36, 1
  br i1 %cmp23, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else
  %37 = load i32, i32* %b8b, align 4
  %idxprom25 = sext i32 %37 to i64
  %mb_addr26 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %38 = load i32, i32* %mb_addr26, align 4
  %idxprom27 = sext i32 %38 to i64
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 51
  %40 = load %struct.macroblock*, %struct.macroblock** %mb_data28, align 8
  %arrayidx29 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %40, i64 %idxprom27
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx29, i32 0, i32 14
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 %idxprom25
  %41 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %41, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.else.36

land.lhs.true.33:                                 ; preds = %lor.lhs.false
  %42 = load i32, i32* %bslice, align 4
  %tobool34 = icmp ne i32 %42, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.33, %land.lhs.true
  store i32 0, i32* %b, align 4
  br label %if.end.68

if.else.36:                                       ; preds = %land.lhs.true.33, %lor.lhs.false
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 90
  %44 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool37 = icmp ne i32 %44, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.57

land.lhs.true.38:                                 ; preds = %if.else.36
  %45 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %45, i32 0, i32 22
  %46 = load i32, i32* %mb_field, align 4
  %cmp39 = icmp eq i32 %46, 0
  br i1 %cmp39, label %land.lhs.true.41, label %if.else.57

land.lhs.true.41:                                 ; preds = %land.lhs.true.38
  %mb_addr42 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %47 = load i32, i32* %mb_addr42, align 4
  %idxprom43 = sext i32 %47 to i64
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 51
  %49 = load %struct.macroblock*, %struct.macroblock** %mb_data44, align 8
  %arrayidx45 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i64 %idxprom43
  %mb_field46 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx45, i32 0, i32 22
  %50 = load i32, i32* %mb_field46, align 4
  %cmp47 = icmp eq i32 %50, 1
  br i1 %cmp47, label %if.then.49, label %if.else.57

if.then.49:                                       ; preds = %land.lhs.true.41
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %51 = load i32, i32* %pos_y, align 4
  %idxprom50 = sext i32 %51 to i64
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %52 = load i32, i32* %pos_x, align 4
  %idxprom51 = sext i32 %52 to i64
  %53 = load i16**, i16*** %refframe_array, align 8
  %arrayidx52 = getelementptr inbounds i16*, i16** %53, i64 %idxprom51
  %54 = load i16*, i16** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %54, i64 %idxprom50
  %55 = load i16, i16* %arrayidx53, align 2
  %conv54 = sext i16 %55 to i32
  %cmp55 = icmp sgt i32 %conv54, 1
  %cond = select i1 %cmp55, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.else.57:                                       ; preds = %land.lhs.true.41, %land.lhs.true.38, %if.else.36
  %pos_y58 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %56 = load i32, i32* %pos_y58, align 4
  %idxprom59 = sext i32 %56 to i64
  %pos_x60 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %57 = load i32, i32* %pos_x60, align 4
  %idxprom61 = sext i32 %57 to i64
  %58 = load i16**, i16*** %refframe_array, align 8
  %arrayidx62 = getelementptr inbounds i16*, i16** %58, i64 %idxprom61
  %59 = load i16*, i16** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %59, i64 %idxprom59
  %60 = load i16, i16* %arrayidx63, align 2
  %conv64 = sext i16 %60 to i32
  %cmp65 = icmp sgt i32 %conv64, 0
  %cond67 = select i1 %cmp65, i32 1, i32 0
  store i32 %cond67, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.57, %if.then.49
  br label %if.end.68

if.end.68:                                        ; preds = %if.end, %if.then.35
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then
  %available70 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %61 = load i32, i32* %available70, align 4
  %tobool71 = icmp ne i32 %61, 0
  br i1 %tobool71, label %if.else.73, label %if.then.72

if.then.72:                                       ; preds = %if.end.69
  store i32 0, i32* %a, align 4
  br label %if.end.137

if.else.73:                                       ; preds = %if.end.69
  %mb_addr74 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %62 = load i32, i32* %mb_addr74, align 4
  %idxprom75 = sext i32 %62 to i64
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data76 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 51
  %64 = load %struct.macroblock*, %struct.macroblock** %mb_data76, align 8
  %arrayidx77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %64, i64 %idxprom75
  %mb_type78 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx77, i32 0, i32 8
  %65 = load i32, i32* %mb_type78, align 4
  %cmp79 = icmp eq i32 %65, 0
  br i1 %cmp79, label %land.lhs.true.81, label %lor.lhs.false.85

land.lhs.true.81:                                 ; preds = %if.else.73
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 6
  %67 = load i32, i32* %type82, align 4
  %cmp83 = icmp eq i32 %67, 1
  br i1 %cmp83, label %if.then.97, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %land.lhs.true.81, %if.else.73
  %68 = load i32, i32* %b8a, align 4
  %idxprom86 = sext i32 %68 to i64
  %mb_addr87 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %69 = load i32, i32* %mb_addr87, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data89 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 51
  %71 = load %struct.macroblock*, %struct.macroblock** %mb_data89, align 8
  %arrayidx90 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %71, i64 %idxprom88
  %b8mode91 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx90, i32 0, i32 14
  %arrayidx92 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode91, i32 0, i64 %idxprom86
  %72 = load i32, i32* %arrayidx92, align 4
  %cmp93 = icmp eq i32 %72, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.98

land.lhs.true.95:                                 ; preds = %lor.lhs.false.85
  %73 = load i32, i32* %bslice, align 4
  %tobool96 = icmp ne i32 %73, 0
  br i1 %tobool96, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %land.lhs.true.95, %land.lhs.true.81
  store i32 0, i32* %a, align 4
  br label %if.end.136

if.else.98:                                       ; preds = %land.lhs.true.95, %lor.lhs.false.85
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 90
  %75 = load i32, i32* %MbaffFrameFlag99, align 4
  %tobool100 = icmp ne i32 %75, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.else.124

land.lhs.true.101:                                ; preds = %if.else.98
  %76 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field102 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %76, i32 0, i32 22
  %77 = load i32, i32* %mb_field102, align 4
  %cmp103 = icmp eq i32 %77, 0
  br i1 %cmp103, label %land.lhs.true.105, label %if.else.124

land.lhs.true.105:                                ; preds = %land.lhs.true.101
  %mb_addr106 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %78 = load i32, i32* %mb_addr106, align 4
  %idxprom107 = sext i32 %78 to i64
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data108 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 51
  %80 = load %struct.macroblock*, %struct.macroblock** %mb_data108, align 8
  %arrayidx109 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %80, i64 %idxprom107
  %mb_field110 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx109, i32 0, i32 22
  %81 = load i32, i32* %mb_field110, align 4
  %cmp111 = icmp eq i32 %81, 1
  br i1 %cmp111, label %if.then.113, label %if.else.124

if.then.113:                                      ; preds = %land.lhs.true.105
  %pos_y114 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %82 = load i32, i32* %pos_y114, align 4
  %idxprom115 = sext i32 %82 to i64
  %pos_x116 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %83 = load i32, i32* %pos_x116, align 4
  %idxprom117 = sext i32 %83 to i64
  %84 = load i16**, i16*** %refframe_array, align 8
  %arrayidx118 = getelementptr inbounds i16*, i16** %84, i64 %idxprom117
  %85 = load i16*, i16** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i16, i16* %85, i64 %idxprom115
  %86 = load i16, i16* %arrayidx119, align 2
  %conv120 = sext i16 %86 to i32
  %cmp121 = icmp sgt i32 %conv120, 1
  %cond123 = select i1 %cmp121, i32 1, i32 0
  store i32 %cond123, i32* %a, align 4
  br label %if.end.135

if.else.124:                                      ; preds = %land.lhs.true.105, %land.lhs.true.101, %if.else.98
  %pos_y125 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %87 = load i32, i32* %pos_y125, align 4
  %idxprom126 = sext i32 %87 to i64
  %pos_x127 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %88 = load i32, i32* %pos_x127, align 4
  %idxprom128 = sext i32 %88 to i64
  %89 = load i16**, i16*** %refframe_array, align 8
  %arrayidx129 = getelementptr inbounds i16*, i16** %89, i64 %idxprom128
  %90 = load i16*, i16** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i16, i16* %90, i64 %idxprom126
  %91 = load i16, i16* %arrayidx130, align 2
  %conv131 = sext i16 %91 to i32
  %cmp132 = icmp sgt i32 %conv131, 0
  %cond134 = select i1 %cmp132, i32 1, i32 0
  store i32 %cond134, i32* %a, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.124, %if.then.113
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.97
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.72
  %92 = load i32, i32* %a, align 4
  %93 = load i32, i32* %b, align 4
  %mul138 = mul nsw i32 2, %93
  %add139 = add nsw i32 %92, %mul138
  store i32 %add139, i32* %act_ctx, align 4
  %94 = load i32, i32* %act_ctx, align 4
  %95 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %95, i32 0, i32 6
  store i32 %94, i32* %context, align 4
  %96 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %96, i32 0, i32 1
  %97 = load i32, i32* %value1, align 4
  store i32 %97, i32* %act_sym, align 4
  %98 = load i32, i32* %act_sym, align 4
  %cmp140 = icmp eq i32 %98, 0
  br i1 %cmp140, label %if.then.142, label %if.else.145

if.then.142:                                      ; preds = %if.end.137
  %99 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %100 = load i32, i32* %addctx, align 4
  %idxprom143 = sext i32 %100 to i64
  %101 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %ref_no_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %101, i32 0, i32 3
  %arrayidx144 = getelementptr inbounds [2 x [6 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]]* %ref_no_contexts, i32 0, i64 %idxprom143
  %arraydecay = getelementptr inbounds [6 x %struct.BiContextType], [6 x %struct.BiContextType]* %arrayidx144, i32 0, i32 0
  %102 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %102 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %99, i16 signext 0, %struct.BiContextType* %add.ptr)
  br label %if.end.158

if.else.145:                                      ; preds = %if.end.137
  %103 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %104 = load i32, i32* %addctx, align 4
  %idxprom146 = sext i32 %104 to i64
  %105 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %ref_no_contexts147 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %105, i32 0, i32 3
  %arrayidx148 = getelementptr inbounds [2 x [6 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]]* %ref_no_contexts147, i32 0, i64 %idxprom146
  %arraydecay149 = getelementptr inbounds [6 x %struct.BiContextType], [6 x %struct.BiContextType]* %arrayidx148, i32 0, i32 0
  %106 = load i32, i32* %act_ctx, align 4
  %idx.ext150 = sext i32 %106 to i64
  %add.ptr151 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay149, i64 %idx.ext150
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %103, i16 signext 1, %struct.BiContextType* %add.ptr151)
  %107 = load i32, i32* %act_sym, align 4
  %dec = add nsw i32 %107, -1
  store i32 %dec, i32* %act_sym, align 4
  store i32 4, i32* %act_ctx, align 4
  %108 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %109 = load i32, i32* %act_sym, align 4
  %110 = load i32, i32* %addctx, align 4
  %idxprom152 = sext i32 %110 to i64
  %111 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %ref_no_contexts153 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %111, i32 0, i32 3
  %arrayidx154 = getelementptr inbounds [2 x [6 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]]* %ref_no_contexts153, i32 0, i64 %idxprom152
  %arraydecay155 = getelementptr inbounds [6 x %struct.BiContextType], [6 x %struct.BiContextType]* %arrayidx154, i32 0, i32 0
  %112 = load i32, i32* %act_ctx, align 4
  %idx.ext156 = sext i32 %112 to i64
  %add.ptr157 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay155, i64 %idx.ext156
  call void @unary_bin_encode(%struct.EncodingEnvironment* %108, i32 %109, %struct.BiContextType* %add.ptr157, i32 1)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.145, %if.then.142
  ret void
}

declare void @getLuma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind uwtable
define void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %ctx_offset) #0 {
entry:
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %ctx_offset.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %ictx = alloca %struct.BiContextType*, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 %ctx_offset, i32* %ctx_offset.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %2 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %1, i16 signext 0, %struct.BiContextType* %2)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %4 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %3, i16 signext 1, %struct.BiContextType* %4)
  %5 = load i32, i32* %symbol.addr, align 4
  store i32 %5, i32* %l, align 4
  %6 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %7 = load i32, i32* %ctx_offset.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %6, i64 %idx.ext
  store %struct.BiContextType* %add.ptr, %struct.BiContextType** %ictx, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %8 = load i32, i32* %l, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %l, align 4
  %cmp1 = icmp ugt i32 %dec, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %10 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %9, i16 signext 1, %struct.BiContextType* %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %12 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %11, i16 signext 0, %struct.BiContextType* %12)
  br label %if.end

if.end:                                           ; preds = %while.end
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeDquant_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %dquant = alloca i32, align 4
  %sign = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 7
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %2, %struct.MotionInfoContexts** %ctx, align 8
  %3 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %3, i32 0, i32 1
  %4 = load i32, i32* %value1, align 4
  store i32 %4, i32* %dquant, align 4
  store i32 0, i32* %sign, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 3
  %6 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 51
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_delta_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 37
  %10 = load i32, i32* %prev_delta_qp, align 4
  store i32 %10, i32* @last_dquant, align 4
  %11 = load i32, i32* %dquant, align 4
  %cmp = icmp sle i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %dquant, align 4
  %call = call i32 @abs(i32 %12) #7
  %shl = shl i32 %call, 1
  store i32 %shl, i32* %act_sym, align 4
  %13 = load i32, i32* %sign, align 4
  %14 = load i32, i32* %act_sym, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, i32* %act_sym, align 4
  %15 = load i32, i32* %act_sym, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %act_sym, align 4
  %16 = load i32, i32* @last_dquant, align 4
  %cmp1 = icmp ne i32 %16, 0
  %cond = select i1 %cmp1, i32 1, i32 0
  store i32 %cond, i32* %act_ctx, align 4
  %17 = load i32, i32* %act_sym, align 4
  %cmp2 = icmp eq i32 %17, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %18 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %19 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %delta_qp_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %19, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %delta_qp_contexts, i32 0, i32 0
  %20 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %18, i16 signext 0, %struct.BiContextType* %add.ptr)
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %21 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %22 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %delta_qp_contexts4 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %22, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %delta_qp_contexts4, i32 0, i32 0
  %23 = load i32, i32* %act_ctx, align 4
  %idx.ext6 = sext i32 %23 to i64
  %add.ptr7 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay5, i64 %idx.ext6
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %21, i16 signext 1, %struct.BiContextType* %add.ptr7)
  store i32 2, i32* %act_ctx, align 4
  %24 = load i32, i32* %act_sym, align 4
  %dec8 = add nsw i32 %24, -1
  store i32 %dec8, i32* %act_sym, align 4
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %26 = load i32, i32* %act_sym, align 4
  %27 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %delta_qp_contexts9 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %27, i32 0, i32 4
  %arraydecay10 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %delta_qp_contexts9, i32 0, i32 0
  %28 = load i32, i32* %act_ctx, align 4
  %idx.ext11 = sext i32 %28 to i64
  %add.ptr12 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay10, i64 %idx.ext11
  call void @unary_bin_encode(%struct.EncodingEnvironment* %25, i32 %26, %struct.BiContextType* %add.ptr12, i32 1)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.3
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind uwtable
define void @writeMVD_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %mv_pred_res = alloca i32, align 4
  %mv_local_err = alloca i32, align 4
  %mv_sign = alloca i32, align 4
  %list_idx = alloca i32, align 4
  %k = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 18
  %1 = load i32, i32* %subblock_x, align 4
  store i32 %1, i32* %i, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 19
  %3 = load i32, i32* %subblock_y, align 4
  store i32 %3, i32* %j, align 4
  %4 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %4, i32 0, i32 2
  %5 = load i32, i32* %value2, align 4
  %and = and i32 %5, 1
  store i32 %and, i32* %list_idx, align 4
  %6 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value21 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %6, i32 0, i32 2
  %7 = load i32, i32* %value21, align 4
  %shr = ashr i32 %7, 1
  store i32 %shr, i32* %k, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 50
  %9 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %9, i32 0, i32 7
  %10 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %10, %struct.MotionInfoContexts** %ctx, align 8
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 3
  %12 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 51
  %14 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 3
  %16 = load i32, i32* %current_mb_nr2, align 4
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %j, align 4
  call void @getLuma4x4Neighbour(i32 %16, i32 %17, i32 %18, i32 -1, i32 0, %struct.pix_pos* %block_a)
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 3
  %20 = load i32, i32* %current_mb_nr3, align 4
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %j, align 4
  call void @getLuma4x4Neighbour(i32 %20, i32 %21, i32 %22, i32 0, i32 -1, %struct.pix_pos* %block_b)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %23 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.else.69

if.then:                                          ; preds = %entry
  %24 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %24 to i64
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %25 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %25 to i64
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %26 = load i32, i32* %y, align 4
  %idxprom6 = sext i32 %26 to i64
  %27 = load i32, i32* %list_idx, align 4
  %idxprom7 = sext i32 %27 to i64
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %28 = load i32, i32* %mb_addr, align 4
  %idxprom8 = sext i32 %28 to i64
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 51
  %30 = load %struct.macroblock*, %struct.macroblock** %mb_data9, align 8
  %arrayidx10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i64 %idxprom8
  %mvd = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx10, i32 0, i32 9
  %arrayidx11 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd, i32 0, i64 %idxprom7
  %arrayidx12 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx11, i32 0, i64 %idxprom6
  %arrayidx13 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx12, i32 0, i64 %idxprom5
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 %idxprom4
  %31 = load i32, i32* %arrayidx14, align 4
  %cmp = icmp slt i32 %31, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %32 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %32 to i64
  %x16 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %33 = load i32, i32* %x16, align 4
  %idxprom17 = sext i32 %33 to i64
  %y18 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %34 = load i32, i32* %y18, align 4
  %idxprom19 = sext i32 %34 to i64
  %35 = load i32, i32* %list_idx, align 4
  %idxprom20 = sext i32 %35 to i64
  %mb_addr21 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %36 = load i32, i32* %mb_addr21, align 4
  %idxprom22 = sext i32 %36 to i64
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 51
  %38 = load %struct.macroblock*, %struct.macroblock** %mb_data23, align 8
  %arrayidx24 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %38, i64 %idxprom22
  %mvd25 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx24, i32 0, i32 9
  %arrayidx26 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd25, i32 0, i64 %idxprom20
  %arrayidx27 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx26, i32 0, i64 %idxprom19
  %arrayidx28 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx27, i32 0, i64 %idxprom17
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx28, i32 0, i64 %idxprom15
  %39 = load i32, i32* %arrayidx29, align 4
  %sub = sub nsw i32 0, %39
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %40 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %40 to i64
  %x31 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %41 = load i32, i32* %x31, align 4
  %idxprom32 = sext i32 %41 to i64
  %y33 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %42 = load i32, i32* %y33, align 4
  %idxprom34 = sext i32 %42 to i64
  %43 = load i32, i32* %list_idx, align 4
  %idxprom35 = sext i32 %43 to i64
  %mb_addr36 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %44 = load i32, i32* %mb_addr36, align 4
  %idxprom37 = sext i32 %44 to i64
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 51
  %46 = load %struct.macroblock*, %struct.macroblock** %mb_data38, align 8
  %arrayidx39 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %46, i64 %idxprom37
  %mvd40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx39, i32 0, i32 9
  %arrayidx41 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd40, i32 0, i64 %idxprom35
  %arrayidx42 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx41, i32 0, i64 %idxprom34
  %arrayidx43 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx42, i32 0, i64 %idxprom32
  %arrayidx44 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx43, i32 0, i64 %idxprom30
  %47 = load i32, i32* %arrayidx44, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %47, %cond.false ]
  store i32 %cond, i32* %b, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 90
  %49 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool45 = icmp ne i32 %49, 0
  br i1 %tobool45, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %cond.end
  %50 = load i32, i32* %k, align 4
  %cmp46 = icmp eq i32 %50, 1
  br i1 %cmp46, label %if.then.47, label %if.end.68

if.then.47:                                       ; preds = %land.lhs.true
  %51 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 22
  %52 = load i32, i32* %mb_field, align 4
  %cmp48 = icmp eq i32 %52, 0
  br i1 %cmp48, label %land.lhs.true.49, label %if.else

land.lhs.true.49:                                 ; preds = %if.then.47
  %mb_addr50 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %53 = load i32, i32* %mb_addr50, align 4
  %idxprom51 = sext i32 %53 to i64
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 51
  %55 = load %struct.macroblock*, %struct.macroblock** %mb_data52, align 8
  %arrayidx53 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %55, i64 %idxprom51
  %mb_field54 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx53, i32 0, i32 22
  %56 = load i32, i32* %mb_field54, align 4
  %cmp55 = icmp eq i32 %56, 1
  br i1 %cmp55, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %land.lhs.true.49
  %57 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %57, 2
  store i32 %mul, i32* %b, align 4
  br label %if.end.67

if.else:                                          ; preds = %land.lhs.true.49, %if.then.47
  %58 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field57 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %58, i32 0, i32 22
  %59 = load i32, i32* %mb_field57, align 4
  %cmp58 = icmp eq i32 %59, 1
  br i1 %cmp58, label %land.lhs.true.59, label %if.end

land.lhs.true.59:                                 ; preds = %if.else
  %mb_addr60 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %60 = load i32, i32* %mb_addr60, align 4
  %idxprom61 = sext i32 %60 to i64
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data62 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 51
  %62 = load %struct.macroblock*, %struct.macroblock** %mb_data62, align 8
  %arrayidx63 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %62, i64 %idxprom61
  %mb_field64 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx63, i32 0, i32 22
  %63 = load i32, i32* %mb_field64, align 4
  %cmp65 = icmp eq i32 %63, 0
  br i1 %cmp65, label %if.then.66, label %if.end

if.then.66:                                       ; preds = %land.lhs.true.59
  %64 = load i32, i32* %b, align 4
  %div = sdiv i32 %64, 2
  store i32 %div, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.66, %land.lhs.true.59, %if.else
  br label %if.end.67

if.end.67:                                        ; preds = %if.end, %if.then.56
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true, %cond.end
  br label %if.end.70

if.else.69:                                       ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.end.68
  %available71 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %65 = load i32, i32* %available71, align 4
  %tobool72 = icmp ne i32 %65, 0
  br i1 %tobool72, label %if.then.73, label %if.else.156

if.then.73:                                       ; preds = %if.end.70
  %66 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %66 to i64
  %x75 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %67 = load i32, i32* %x75, align 4
  %idxprom76 = sext i32 %67 to i64
  %y77 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %68 = load i32, i32* %y77, align 4
  %idxprom78 = sext i32 %68 to i64
  %69 = load i32, i32* %list_idx, align 4
  %idxprom79 = sext i32 %69 to i64
  %mb_addr80 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %70 = load i32, i32* %mb_addr80, align 4
  %idxprom81 = sext i32 %70 to i64
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 51
  %72 = load %struct.macroblock*, %struct.macroblock** %mb_data82, align 8
  %arrayidx83 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %72, i64 %idxprom81
  %mvd84 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx83, i32 0, i32 9
  %arrayidx85 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd84, i32 0, i64 %idxprom79
  %arrayidx86 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx85, i32 0, i64 %idxprom78
  %arrayidx87 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx86, i32 0, i64 %idxprom76
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx87, i32 0, i64 %idxprom74
  %73 = load i32, i32* %arrayidx88, align 4
  %cmp89 = icmp slt i32 %73, 0
  br i1 %cmp89, label %cond.true.90, label %cond.false.107

cond.true.90:                                     ; preds = %if.then.73
  %74 = load i32, i32* %k, align 4
  %idxprom91 = sext i32 %74 to i64
  %x92 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %75 = load i32, i32* %x92, align 4
  %idxprom93 = sext i32 %75 to i64
  %y94 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %76 = load i32, i32* %y94, align 4
  %idxprom95 = sext i32 %76 to i64
  %77 = load i32, i32* %list_idx, align 4
  %idxprom96 = sext i32 %77 to i64
  %mb_addr97 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %78 = load i32, i32* %mb_addr97, align 4
  %idxprom98 = sext i32 %78 to i64
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 51
  %80 = load %struct.macroblock*, %struct.macroblock** %mb_data99, align 8
  %arrayidx100 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %80, i64 %idxprom98
  %mvd101 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx100, i32 0, i32 9
  %arrayidx102 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd101, i32 0, i64 %idxprom96
  %arrayidx103 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx102, i32 0, i64 %idxprom95
  %arrayidx104 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx103, i32 0, i64 %idxprom93
  %arrayidx105 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx104, i32 0, i64 %idxprom91
  %81 = load i32, i32* %arrayidx105, align 4
  %sub106 = sub nsw i32 0, %81
  br label %cond.end.123

cond.false.107:                                   ; preds = %if.then.73
  %82 = load i32, i32* %k, align 4
  %idxprom108 = sext i32 %82 to i64
  %x109 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %83 = load i32, i32* %x109, align 4
  %idxprom110 = sext i32 %83 to i64
  %y111 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %84 = load i32, i32* %y111, align 4
  %idxprom112 = sext i32 %84 to i64
  %85 = load i32, i32* %list_idx, align 4
  %idxprom113 = sext i32 %85 to i64
  %mb_addr114 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %86 = load i32, i32* %mb_addr114, align 4
  %idxprom115 = sext i32 %86 to i64
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 51
  %88 = load %struct.macroblock*, %struct.macroblock** %mb_data116, align 8
  %arrayidx117 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %88, i64 %idxprom115
  %mvd118 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx117, i32 0, i32 9
  %arrayidx119 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd118, i32 0, i64 %idxprom113
  %arrayidx120 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx119, i32 0, i64 %idxprom112
  %arrayidx121 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx120, i32 0, i64 %idxprom110
  %arrayidx122 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx121, i32 0, i64 %idxprom108
  %89 = load i32, i32* %arrayidx122, align 4
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.107, %cond.true.90
  %cond124 = phi i32 [ %sub106, %cond.true.90 ], [ %89, %cond.false.107 ]
  store i32 %cond124, i32* %a, align 4
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag125 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 90
  %91 = load i32, i32* %MbaffFrameFlag125, align 4
  %tobool126 = icmp ne i32 %91, 0
  br i1 %tobool126, label %land.lhs.true.127, label %if.end.155

land.lhs.true.127:                                ; preds = %cond.end.123
  %92 = load i32, i32* %k, align 4
  %cmp128 = icmp eq i32 %92, 1
  br i1 %cmp128, label %if.then.129, label %if.end.155

if.then.129:                                      ; preds = %land.lhs.true.127
  %93 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field130 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %93, i32 0, i32 22
  %94 = load i32, i32* %mb_field130, align 4
  %cmp131 = icmp eq i32 %94, 0
  br i1 %cmp131, label %land.lhs.true.132, label %if.else.141

land.lhs.true.132:                                ; preds = %if.then.129
  %mb_addr133 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %95 = load i32, i32* %mb_addr133, align 4
  %idxprom134 = sext i32 %95 to i64
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data135 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 51
  %97 = load %struct.macroblock*, %struct.macroblock** %mb_data135, align 8
  %arrayidx136 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %97, i64 %idxprom134
  %mb_field137 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx136, i32 0, i32 22
  %98 = load i32, i32* %mb_field137, align 4
  %cmp138 = icmp eq i32 %98, 1
  br i1 %cmp138, label %if.then.139, label %if.else.141

if.then.139:                                      ; preds = %land.lhs.true.132
  %99 = load i32, i32* %a, align 4
  %mul140 = mul nsw i32 %99, 2
  store i32 %mul140, i32* %a, align 4
  br label %if.end.154

if.else.141:                                      ; preds = %land.lhs.true.132, %if.then.129
  %100 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field142 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %100, i32 0, i32 22
  %101 = load i32, i32* %mb_field142, align 4
  %cmp143 = icmp eq i32 %101, 1
  br i1 %cmp143, label %land.lhs.true.144, label %if.end.153

land.lhs.true.144:                                ; preds = %if.else.141
  %mb_addr145 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %102 = load i32, i32* %mb_addr145, align 4
  %idxprom146 = sext i32 %102 to i64
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data147 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 51
  %104 = load %struct.macroblock*, %struct.macroblock** %mb_data147, align 8
  %arrayidx148 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %104, i64 %idxprom146
  %mb_field149 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx148, i32 0, i32 22
  %105 = load i32, i32* %mb_field149, align 4
  %cmp150 = icmp eq i32 %105, 0
  br i1 %cmp150, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %land.lhs.true.144
  %106 = load i32, i32* %a, align 4
  %div152 = sdiv i32 %106, 2
  store i32 %div152, i32* %a, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %land.lhs.true.144, %if.else.141
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.139
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %land.lhs.true.127, %cond.end.123
  br label %if.end.157

if.else.156:                                      ; preds = %if.end.70
  store i32 0, i32* %a, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.156, %if.end.155
  %107 = load i32, i32* %a, align 4
  %108 = load i32, i32* %b, align 4
  %add = add nsw i32 %107, %108
  store i32 %add, i32* %mv_local_err, align 4
  %cmp158 = icmp slt i32 %add, 3
  br i1 %cmp158, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %if.end.157
  %109 = load i32, i32* %k, align 4
  %mul160 = mul nsw i32 5, %109
  store i32 %mul160, i32* %act_ctx, align 4
  br label %if.end.170

if.else.161:                                      ; preds = %if.end.157
  %110 = load i32, i32* %mv_local_err, align 4
  %cmp162 = icmp sgt i32 %110, 32
  br i1 %cmp162, label %if.then.163, label %if.else.166

if.then.163:                                      ; preds = %if.else.161
  %111 = load i32, i32* %k, align 4
  %mul164 = mul nsw i32 5, %111
  %add165 = add nsw i32 %mul164, 3
  store i32 %add165, i32* %act_ctx, align 4
  br label %if.end.169

if.else.166:                                      ; preds = %if.else.161
  %112 = load i32, i32* %k, align 4
  %mul167 = mul nsw i32 5, %112
  %add168 = add nsw i32 %mul167, 2
  store i32 %add168, i32* %act_ctx, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.166, %if.then.163
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.159
  %113 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %113, i32 0, i32 1
  %114 = load i32, i32* %value1, align 4
  store i32 %114, i32* %mv_pred_res, align 4
  %115 = load i32, i32* %act_ctx, align 4
  %116 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %116, i32 0, i32 6
  store i32 %115, i32* %context, align 4
  %117 = load i32, i32* %mv_pred_res, align 4
  %cmp171 = icmp slt i32 %117, 0
  br i1 %cmp171, label %cond.true.172, label %cond.false.174

cond.true.172:                                    ; preds = %if.end.170
  %118 = load i32, i32* %mv_pred_res, align 4
  %sub173 = sub nsw i32 0, %118
  br label %cond.end.175

cond.false.174:                                   ; preds = %if.end.170
  %119 = load i32, i32* %mv_pred_res, align 4
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.172
  %cond176 = phi i32 [ %sub173, %cond.true.172 ], [ %119, %cond.false.174 ]
  store i32 %cond176, i32* %act_sym, align 4
  %120 = load i32, i32* %act_sym, align 4
  %cmp177 = icmp eq i32 %120, 0
  br i1 %cmp177, label %if.then.178, label %if.else.182

if.then.178:                                      ; preds = %cond.end.175
  %121 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %122 = load i32, i32* %act_ctx, align 4
  %idxprom179 = sext i32 %122 to i64
  %123 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mv_res_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %123, i32 0, i32 2
  %arrayidx180 = getelementptr inbounds [2 x [10 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]]* %mv_res_contexts, i32 0, i64 0
  %arrayidx181 = getelementptr inbounds [10 x %struct.BiContextType], [10 x %struct.BiContextType]* %arrayidx180, i32 0, i64 %idxprom179
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %121, i16 signext 0, %struct.BiContextType* %arrayidx181)
  br label %if.end.193

if.else.182:                                      ; preds = %cond.end.175
  %124 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %125 = load i32, i32* %act_ctx, align 4
  %idxprom183 = sext i32 %125 to i64
  %126 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mv_res_contexts184 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %126, i32 0, i32 2
  %arrayidx185 = getelementptr inbounds [2 x [10 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]]* %mv_res_contexts184, i32 0, i64 0
  %arrayidx186 = getelementptr inbounds [10 x %struct.BiContextType], [10 x %struct.BiContextType]* %arrayidx185, i32 0, i64 %idxprom183
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %124, i16 signext 1, %struct.BiContextType* %arrayidx186)
  %127 = load i32, i32* %act_sym, align 4
  %dec = add nsw i32 %127, -1
  store i32 %dec, i32* %act_sym, align 4
  %128 = load i32, i32* %k, align 4
  %mul187 = mul nsw i32 5, %128
  store i32 %mul187, i32* %act_ctx, align 4
  %129 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %130 = load i32, i32* %act_sym, align 4
  %131 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mv_res_contexts188 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %131, i32 0, i32 2
  %arrayidx189 = getelementptr inbounds [2 x [10 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]]* %mv_res_contexts188, i32 0, i64 1
  %arraydecay = getelementptr inbounds [10 x %struct.BiContextType], [10 x %struct.BiContextType]* %arrayidx189, i32 0, i32 0
  %132 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %132 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @unary_exp_golomb_mv_encode(%struct.EncodingEnvironment* %129, i32 %130, %struct.BiContextType* %add.ptr, i32 3)
  %133 = load i32, i32* %mv_pred_res, align 4
  %cmp190 = icmp slt i32 %133, 0
  %cond191 = select i1 %cmp190, i32 1, i32 0
  store i32 %cond191, i32* %mv_sign, align 4
  %134 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %135 = load i32, i32* %mv_sign, align 4
  %conv = trunc i32 %135 to i8
  %conv192 = zext i8 %conv to i16
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %134, i16 signext %conv192)
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.182, %if.then.178
  ret void
}

; Function Attrs: nounwind uwtable
define void @unary_exp_golomb_mv_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %max_bin) #0 {
entry:
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %max_bin.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %bin = alloca i32, align 4
  %ictx = alloca %struct.BiContextType*, align 8
  %exp_start = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 %max_bin, i32* %max_bin.addr, align 4
  store i32 1, i32* %bin, align 4
  %0 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  store %struct.BiContextType* %0, %struct.BiContextType** %ictx, align 8
  store i32 8, i32* %exp_start, align 4
  %1 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %3 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %2, i16 signext 0, %struct.BiContextType* %3)
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %5 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %4, i16 signext 1, %struct.BiContextType* %5)
  %6 = load i32, i32* %symbol.addr, align 4
  store i32 %6, i32* %l, align 4
  store i32 1, i32* %k, align 4
  %7 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %incdec.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %7, i32 1
  store %struct.BiContextType* %incdec.ptr, %struct.BiContextType** %ictx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.else
  %8 = load i32, i32* %l, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %l, align 4
  %cmp1 = icmp ugt i32 %dec, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %k, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %k, align 4
  %10 = load i32, i32* %exp_start, align 4
  %cmp2 = icmp ule i32 %inc, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %13 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %12, i16 signext 1, %struct.BiContextType* %13)
  %14 = load i32, i32* %bin, align 4
  %inc3 = add i32 %14, 1
  store i32 %inc3, i32* %bin, align 4
  %cmp4 = icmp eq i32 %inc3, 2
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body
  %15 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %15, i32 1
  store %struct.BiContextType* %incdec.ptr6, %struct.BiContextType** %ictx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %while.body
  %16 = load i32, i32* %bin, align 4
  %17 = load i32, i32* %max_bin.addr, align 4
  %cmp7 = icmp eq i32 %16, %17
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %18 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %18, i32 1
  store %struct.BiContextType* %incdec.ptr9, %struct.BiContextType** %ictx, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load i32, i32* %symbol.addr, align 4
  %20 = load i32, i32* %exp_start, align 4
  %cmp11 = icmp ult i32 %19, %20
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %while.end
  %21 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %22 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %21, i16 signext 0, %struct.BiContextType* %22)
  br label %if.end.14

if.else.13:                                       ; preds = %while.end
  %23 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %24 = load i32, i32* %symbol.addr, align 4
  %25 = load i32, i32* %exp_start, align 4
  %sub = sub i32 %24, %25
  call void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %23, i32 %sub, i32 3)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  ret void
}

declare void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment*, i16 signext) #1

; Function Attrs: nounwind uwtable
define void @writeCIPredMode_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %ctx = alloca %struct.TextureInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %act_ctx = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_sym = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 8
  %2 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %2, %struct.TextureInfoContexts** %ctx, align 8
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 3
  %4 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 51
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 1
  %8 = load i32, i32* %value1, align 4
  store i32 %8, i32* %act_sym, align 4
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 6
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp = icmp eq %struct.macroblock* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 6
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_available_up1, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 20
  %13 = load i32, i32* %c_ipred_mode, align 4
  %cmp2 = icmp ne i32 %13, 0
  %cond = select i1 %cmp2, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 7
  %15 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp3 = icmp eq %struct.macroblock* %15, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %a, align 4
  br label %if.end.10

if.else.5:                                        ; preds = %if.end
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 7
  %17 = load %struct.macroblock*, %struct.macroblock** %mb_available_left6, align 8
  %c_ipred_mode7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 20
  %18 = load i32, i32* %c_ipred_mode7, align 4
  %cmp8 = icmp ne i32 %18, 0
  %cond9 = select i1 %cmp8, i32 1, i32 0
  store i32 %cond9, i32* %a, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.5, %if.then.4
  %19 = load i32, i32* %a, align 4
  %20 = load i32, i32* %b, align 4
  %add = add nsw i32 %19, %20
  store i32 %add, i32* %act_ctx, align 4
  %21 = load i32, i32* %act_sym, align 4
  %cmp11 = icmp eq i32 %21, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.10
  %22 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %23 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cipr_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %23, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %cipr_contexts, i32 0, i32 0
  %24 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %22, i16 signext 0, %struct.BiContextType* %add.ptr)
  br label %if.end.21

if.else.13:                                       ; preds = %if.end.10
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %26 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cipr_contexts14 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %26, i32 0, i32 1
  %arraydecay15 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %cipr_contexts14, i32 0, i32 0
  %27 = load i32, i32* %act_ctx, align 4
  %idx.ext16 = sext i32 %27 to i64
  %add.ptr17 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay15, i64 %idx.ext16
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %25, i16 signext 1, %struct.BiContextType* %add.ptr17)
  %28 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %29 = load i32, i32* %act_sym, align 4
  %sub = sub nsw i32 %29, 1
  %30 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cipr_contexts18 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %30, i32 0, i32 1
  %arraydecay19 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %cipr_contexts18, i32 0, i32 0
  %add.ptr20 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay19, i64 3
  call void @unary_bin_max_encode(%struct.EncodingEnvironment* %28, i32 %sub, %struct.BiContextType* %add.ptr20, i32 0, i32 2)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.13, %if.then.12
  ret void
}

; Function Attrs: nounwind uwtable
define void @unary_bin_max_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %ctx_offset, i32 %max_symbol) #0 {
entry:
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %ctx_offset.addr = alloca i32, align 4
  %max_symbol.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %ictx = alloca %struct.BiContextType*, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 %ctx_offset, i32* %ctx_offset.addr, align 4
  store i32 %max_symbol, i32* %max_symbol.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %2 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %1, i16 signext 0, %struct.BiContextType* %2)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %4 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %3, i16 signext 1, %struct.BiContextType* %4)
  %5 = load i32, i32* %symbol.addr, align 4
  store i32 %5, i32* %l, align 4
  %6 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %7 = load i32, i32* %ctx_offset.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %6, i64 %idx.ext
  store %struct.BiContextType* %add.ptr, %struct.BiContextType** %ictx, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %8 = load i32, i32* %l, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %l, align 4
  %cmp1 = icmp ugt i32 %dec, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %10 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %9, i16 signext 1, %struct.BiContextType* %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %symbol.addr, align 4
  %12 = load i32, i32* %max_symbol.addr, align 4
  %cmp2 = icmp ult i32 %11, %12
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.end
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %14 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %13, i16 signext 0, %struct.BiContextType* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.end
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeCBP_BIT_CABAC(i32 %b8, i32 %bit, i32 %cbp, %struct.macroblock* %currMB, i32 %inter, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %b8.addr = alloca i32, align 4
  %bit.addr = alloca i32, align 4
  %cbp.addr = alloca i32, align 4
  %currMB.addr = alloca %struct.macroblock*, align 8
  %inter.addr = alloca i32, align 4
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %block_a = alloca %struct.pix_pos, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  store i32 %b8, i32* %b8.addr, align 4
  store i32 %bit, i32* %bit.addr, align 4
  store i32 %cbp, i32* %cbp.addr, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store i32 %inter, i32* %inter.addr, align 4
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load i32, i32* %b8.addr, align 4
  %rem = srem i32 %0, 2
  %shl = shl i32 %rem, 1
  store i32 %shl, i32* %mb_x, align 4
  %1 = load i32, i32* %b8.addr, align 4
  %div = sdiv i32 %1, 2
  %shl1 = shl i32 %div, 1
  store i32 %shl1, i32* %mb_y, align 4
  %2 = load i32, i32* %mb_y, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %3 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i32 0, i32 6
  %4 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp2 = icmp eq %struct.macroblock* %4, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %b, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %5 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_available_up4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i32 0, i32 6
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_available_up4, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i32 0, i32 8
  %7 = load i32, i32* %mb_type, align 4
  %cmp5 = icmp eq i32 %7, 14
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %b, align 4
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %8 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_available_up8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i32 0, i32 6
  %9 = load %struct.macroblock*, %struct.macroblock** %mb_available_up8, align 8
  %cbp9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 12
  %10 = load i32, i32* %cbp9, align 4
  %11 = load i32, i32* %mb_x, align 4
  %div10 = sdiv i32 %11, 2
  %add = add nsw i32 2, %div10
  %shl11 = shl i32 1, %add
  %and = and i32 %10, %shl11
  %cmp12 = icmp eq i32 %and, 0
  %cond = select i1 %cmp12, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.3
  br label %if.end.20

if.else.14:                                       ; preds = %entry
  %12 = load i32, i32* %cbp.addr, align 4
  %13 = load i32, i32* %mb_x, align 4
  %div15 = sdiv i32 %13, 2
  %shl16 = shl i32 1, %div15
  %and17 = and i32 %12, %shl16
  %cmp18 = icmp eq i32 %and17, 0
  %cond19 = select i1 %cmp18, i32 1, i32 0
  store i32 %cond19, i32* %b, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.14, %if.end.13
  %14 = load i32, i32* %mb_x, align 4
  %cmp21 = icmp eq i32 %14, 0
  br i1 %cmp21, label %if.then.22, label %if.else.42

if.then.22:                                       ; preds = %if.end.20
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 3
  %16 = load i32, i32* %current_mb_nr, align 4
  %17 = load i32, i32* %mb_x, align 4
  %18 = load i32, i32* %mb_y, align 4
  call void @getLuma4x4Neighbour(i32 %16, i32 %17, i32 %18, i32 -1, i32 0, %struct.pix_pos* %block_a)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %19 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.23, label %if.else.40

if.then.23:                                       ; preds = %if.then.22
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %20 = load i32, i32* %mb_addr, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 51
  %22 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i64 %idxprom
  %mb_type24 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 8
  %23 = load i32, i32* %mb_type24, align 4
  %cmp25 = icmp eq i32 %23, 14
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.then.23
  store i32 0, i32* %a, align 4
  br label %if.end.39

if.else.27:                                       ; preds = %if.then.23
  %mb_addr28 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %24 = load i32, i32* %mb_addr28, align 4
  %idxprom29 = sext i32 %24 to i64
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 51
  %26 = load %struct.macroblock*, %struct.macroblock** %mb_data30, align 8
  %arrayidx31 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i64 %idxprom29
  %cbp32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx31, i32 0, i32 12
  %27 = load i32, i32* %cbp32, align 4
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %28 = load i32, i32* %y, align 4
  %div33 = sdiv i32 %28, 2
  %mul = mul nsw i32 2, %div33
  %add34 = add nsw i32 %mul, 1
  %shl35 = shl i32 1, %add34
  %and36 = and i32 %27, %shl35
  %cmp37 = icmp eq i32 %and36, 0
  %cond38 = select i1 %cmp37, i32 1, i32 0
  store i32 %cond38, i32* %a, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.27, %if.then.26
  br label %if.end.41

if.else.40:                                       ; preds = %if.then.22
  store i32 0, i32* %a, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end.39
  br label %if.end.47

if.else.42:                                       ; preds = %if.end.20
  %29 = load i32, i32* %cbp.addr, align 4
  %30 = load i32, i32* %mb_y, align 4
  %shl43 = shl i32 1, %30
  %and44 = and i32 %29, %shl43
  %cmp45 = icmp eq i32 %and44, 0
  %cond46 = select i1 %cmp45, i32 1, i32 0
  store i32 %cond46, i32* %a, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.42, %if.end.41
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %32 = load i32, i32* %bit.addr, align 4
  %conv = trunc i32 %32 to i8
  %conv48 = zext i8 %conv to i16
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 50
  %34 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %34, i32 0, i32 8
  %35 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %cbp_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %35, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [3 x [4 x %struct.BiContextType]], [3 x [4 x %struct.BiContextType]]* %cbp_contexts, i32 0, i64 0
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx49, i32 0, i32 0
  %36 = load i32, i32* %a, align 4
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %37 = load i32, i32* %b, align 4
  %mul50 = mul nsw i32 2, %37
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %add.ptr, i64 %idx.ext51
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %31, i16 signext %conv48, %struct.BiContextType* %add.ptr52)
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeCBP_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %ctx = alloca %struct.TextureInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %curr_cbp_ctx = alloca i32, align 4
  %curr_cbp_idx = alloca i32, align 4
  %cbp = alloca i32, align 4
  %cbp_bit = alloca i32, align 4
  %b8 = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 8
  %2 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %2, %struct.TextureInfoContexts** %ctx, align 8
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 3
  %4 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 51
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 1
  %8 = load i32, i32* %value1, align 4
  store i32 %8, i32* %cbp, align 4
  store i32 0, i32* %b8, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %b8, align 4
  %cmp = icmp slt i32 %9, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %b8, align 4
  %idxprom1 = sext i32 %10 to i64
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 14
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 %idxprom1
  %12 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %12, 11
  %cond = select i1 %cmp3, i32 0, i32 1
  store i32 %cond, i32* %curr_cbp_idx, align 4
  %13 = load i32, i32* %b8, align 4
  %14 = load i32, i32* %cbp, align 4
  %15 = load i32, i32* %b8, align 4
  %shl = shl i32 1, %15
  %and = and i32 %14, %shl
  %16 = load i32, i32* %cbp, align 4
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %18 = load i32, i32* %curr_cbp_idx, align 4
  %19 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  call void @writeCBP_BIT_CABAC(i32 %13, i32 %and, i32 %16, %struct.macroblock* %17, i32 %18, %struct.EncodingEnvironment* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %b8, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %b8, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 159
  %22 = load i32, i32* %yuv_format, align 4
  %cmp4 = icmp ne i32 %22, 0
  br i1 %cmp4, label %if.then, label %if.end.96

if.then:                                          ; preds = %for.end
  store i32 0, i32* %b, align 4
  %23 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 6
  %24 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp5 = icmp ne %struct.macroblock* %24, null
  br i1 %cmp5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.then
  %25 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i32 0, i32 6
  %26 = load %struct.macroblock*, %struct.macroblock** %mb_available_up7, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i32 0, i32 8
  %27 = load i32, i32* %mb_type, align 4
  %cmp8 = icmp eq i32 %27, 14
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  store i32 1, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.6
  %28 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %28, i32 0, i32 6
  %29 = load %struct.macroblock*, %struct.macroblock** %mb_available_up10, align 8
  %cbp11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 12
  %30 = load i32, i32* %cbp11, align 4
  %cmp12 = icmp sgt i32 %30, 15
  %cond13 = select i1 %cmp12, i32 1, i32 0
  store i32 %cond13, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %a, align 4
  %31 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 7
  %32 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp15 = icmp ne %struct.macroblock* %32, null
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.end.14
  %33 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left17 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %33, i32 0, i32 7
  %34 = load %struct.macroblock*, %struct.macroblock** %mb_available_left17, align 8
  %mb_type18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i32 0, i32 8
  %35 = load i32, i32* %mb_type18, align 4
  %cmp19 = icmp eq i32 %35, 14
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.then.16
  store i32 1, i32* %a, align 4
  br label %if.end.26

if.else.21:                                       ; preds = %if.then.16
  %36 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left22 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %36, i32 0, i32 7
  %37 = load %struct.macroblock*, %struct.macroblock** %mb_available_left22, align 8
  %cbp23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i32 0, i32 12
  %38 = load i32, i32* %cbp23, align 4
  %cmp24 = icmp sgt i32 %38, 15
  %cond25 = select i1 %cmp24, i32 1, i32 0
  store i32 %cond25, i32* %a, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.21, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.14
  %39 = load i32, i32* %a, align 4
  %40 = load i32, i32* %b, align 4
  %mul = mul nsw i32 2, %40
  %add = add nsw i32 %39, %mul
  store i32 %add, i32* %curr_cbp_ctx, align 4
  %41 = load i32, i32* %cbp, align 4
  %cmp28 = icmp sgt i32 %41, 15
  %cond29 = select i1 %cmp28, i32 1, i32 0
  store i32 %cond29, i32* %cbp_bit, align 4
  %42 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %43 = load i32, i32* %cbp_bit, align 4
  %conv = trunc i32 %43 to i8
  %conv30 = zext i8 %conv to i16
  %44 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cbp_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %44, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [3 x [4 x %struct.BiContextType]], [3 x [4 x %struct.BiContextType]]* %cbp_contexts, i32 0, i64 1
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx31, i32 0, i32 0
  %45 = load i32, i32* %curr_cbp_ctx, align 4
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %42, i16 signext %conv30, %struct.BiContextType* %add.ptr)
  %46 = load i32, i32* %cbp, align 4
  %cmp32 = icmp sgt i32 %46, 15
  br i1 %cmp32, label %if.then.34, label %if.end.95

if.then.34:                                       ; preds = %if.end.27
  store i32 0, i32* %b, align 4
  %47 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up35 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i32 0, i32 6
  %48 = load %struct.macroblock*, %struct.macroblock** %mb_available_up35, align 8
  %cmp36 = icmp ne %struct.macroblock* %48, null
  br i1 %cmp36, label %if.then.38, label %if.end.57

if.then.38:                                       ; preds = %if.then.34
  %49 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up39 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i32 0, i32 6
  %50 = load %struct.macroblock*, %struct.macroblock** %mb_available_up39, align 8
  %mb_type40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %50, i32 0, i32 8
  %51 = load i32, i32* %mb_type40, align 4
  %cmp41 = icmp eq i32 %51, 14
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.then.38
  store i32 1, i32* %b, align 4
  br label %if.end.56

if.else.44:                                       ; preds = %if.then.38
  %52 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up45 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %52, i32 0, i32 6
  %53 = load %struct.macroblock*, %struct.macroblock** %mb_available_up45, align 8
  %cbp46 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %53, i32 0, i32 12
  %54 = load i32, i32* %cbp46, align 4
  %cmp47 = icmp sgt i32 %54, 15
  br i1 %cmp47, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.else.44
  %55 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up50 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %55, i32 0, i32 6
  %56 = load %struct.macroblock*, %struct.macroblock** %mb_available_up50, align 8
  %cbp51 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %56, i32 0, i32 12
  %57 = load i32, i32* %cbp51, align 4
  %shr = ashr i32 %57, 4
  %cmp52 = icmp eq i32 %shr, 2
  %cond54 = select i1 %cmp52, i32 1, i32 0
  store i32 %cond54, i32* %b, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.49, %if.else.44
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.43
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.34
  store i32 0, i32* %a, align 4
  %58 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left58 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %58, i32 0, i32 7
  %59 = load %struct.macroblock*, %struct.macroblock** %mb_available_left58, align 8
  %cmp59 = icmp ne %struct.macroblock* %59, null
  br i1 %cmp59, label %if.then.61, label %if.end.81

if.then.61:                                       ; preds = %if.end.57
  %60 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left62 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 7
  %61 = load %struct.macroblock*, %struct.macroblock** %mb_available_left62, align 8
  %mb_type63 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %61, i32 0, i32 8
  %62 = load i32, i32* %mb_type63, align 4
  %cmp64 = icmp eq i32 %62, 14
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.then.61
  store i32 1, i32* %a, align 4
  br label %if.end.80

if.else.67:                                       ; preds = %if.then.61
  %63 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left68 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %63, i32 0, i32 7
  %64 = load %struct.macroblock*, %struct.macroblock** %mb_available_left68, align 8
  %cbp69 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %64, i32 0, i32 12
  %65 = load i32, i32* %cbp69, align 4
  %cmp70 = icmp sgt i32 %65, 15
  br i1 %cmp70, label %if.then.72, label %if.end.79

if.then.72:                                       ; preds = %if.else.67
  %66 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left73 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %66, i32 0, i32 7
  %67 = load %struct.macroblock*, %struct.macroblock** %mb_available_left73, align 8
  %cbp74 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %67, i32 0, i32 12
  %68 = load i32, i32* %cbp74, align 4
  %shr75 = ashr i32 %68, 4
  %cmp76 = icmp eq i32 %shr75, 2
  %cond78 = select i1 %cmp76, i32 1, i32 0
  store i32 %cond78, i32* %a, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.72, %if.else.67
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.66
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.57
  %69 = load i32, i32* %a, align 4
  %70 = load i32, i32* %b, align 4
  %mul82 = mul nsw i32 2, %70
  %add83 = add nsw i32 %69, %mul82
  store i32 %add83, i32* %curr_cbp_ctx, align 4
  %71 = load i32, i32* %cbp, align 4
  %shr84 = ashr i32 %71, 4
  %cmp85 = icmp eq i32 %shr84, 2
  %cond87 = select i1 %cmp85, i32 1, i32 0
  store i32 %cond87, i32* %cbp_bit, align 4
  %72 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %73 = load i32, i32* %cbp_bit, align 4
  %conv88 = trunc i32 %73 to i8
  %conv89 = zext i8 %conv88 to i16
  %74 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cbp_contexts90 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %74, i32 0, i32 2
  %arrayidx91 = getelementptr inbounds [3 x [4 x %struct.BiContextType]], [3 x [4 x %struct.BiContextType]]* %cbp_contexts90, i32 0, i64 2
  %arraydecay92 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx91, i32 0, i32 0
  %75 = load i32, i32* %curr_cbp_ctx, align 4
  %idx.ext93 = sext i32 %75 to i64
  %add.ptr94 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay92, i64 %idx.ext93
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %72, i16 signext %conv89, %struct.BiContextType* %add.ptr94)
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.81, %if.end.27
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_and_store_CBP_block_bit(%struct.macroblock* %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32 %cbp_bit) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %type.addr = alloca i32, align 4
  %cbp_bit.addr = alloca i32, align 4
  %y_ac = alloca i32, align 4
  %y_dc = alloca i32, align 4
  %u_ac = alloca i32, align 4
  %v_ac = alloca i32, align 4
  %chroma_dc = alloca i32, align 4
  %u_dc = alloca i32, align 4
  %v_dc = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %bit = alloca i32, align 4
  %default_bit = alloca i32, align 4
  %upper_bit = alloca i32, align 4
  %left_bit = alloca i32, align 4
  %ctx = alloca i32, align 4
  %bit_pos_a = alloca i32, align 4
  %bit_pos_b = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %cbp_bit, i32* %cbp_bit.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %lor.end, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %type.addr, align 4
  %cmp3 = icmp eq i32 %2, 3
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %type.addr, align 4
  %cmp5 = icmp eq i32 %3, 4
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %4 = load i32, i32* %type.addr, align 4
  %cmp6 = icmp eq i32 %4, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false.2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp6, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, i32* %y_ac, align 4
  %6 = load i32, i32* %type.addr, align 4
  %cmp7 = icmp eq i32 %6, 0
  %conv = zext i1 %cmp7 to i32
  store i32 %conv, i32* %y_dc, align 4
  %7 = load i32, i32* %type.addr, align 4
  %cmp8 = icmp eq i32 %7, 7
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_v_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 21
  %9 = load i32, i32* %is_v_block, align 4
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %10 = phi i1 [ false, %lor.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %u_ac, align 4
  %11 = load i32, i32* %type.addr, align 4
  %cmp10 = icmp eq i32 %11, 7
  br i1 %cmp10, label %land.rhs.12, label %land.end.15

land.rhs.12:                                      ; preds = %land.end
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_v_block13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 21
  %13 = load i32, i32* %is_v_block13, align 4
  %tobool14 = icmp ne i32 %13, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.12, %land.end
  %14 = phi i1 [ false, %land.end ], [ %tobool14, %land.rhs.12 ]
  %land.ext16 = zext i1 %14 to i32
  store i32 %land.ext16, i32* %v_ac, align 4
  %15 = load i32, i32* %type.addr, align 4
  %cmp17 = icmp eq i32 %15, 6
  br i1 %cmp17, label %lor.end.25, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.end.15
  %16 = load i32, i32* %type.addr, align 4
  %cmp20 = icmp eq i32 %16, 8
  br i1 %cmp20, label %lor.end.25, label %lor.rhs.22

lor.rhs.22:                                       ; preds = %lor.lhs.false.19
  %17 = load i32, i32* %type.addr, align 4
  %cmp23 = icmp eq i32 %17, 9
  br label %lor.end.25

lor.end.25:                                       ; preds = %lor.rhs.22, %lor.lhs.false.19, %land.end.15
  %18 = phi i1 [ true, %lor.lhs.false.19 ], [ true, %land.end.15 ], [ %cmp23, %lor.rhs.22 ]
  %lor.ext26 = zext i1 %18 to i32
  store i32 %lor.ext26, i32* %chroma_dc, align 4
  %19 = load i32, i32* %chroma_dc, align 4
  %tobool27 = icmp ne i32 %19, 0
  br i1 %tobool27, label %land.rhs.28, label %land.end.32

land.rhs.28:                                      ; preds = %lor.end.25
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_v_block29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 21
  %21 = load i32, i32* %is_v_block29, align 4
  %tobool30 = icmp ne i32 %21, 0
  %lnot31 = xor i1 %tobool30, true
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.28, %lor.end.25
  %22 = phi i1 [ false, %lor.end.25 ], [ %lnot31, %land.rhs.28 ]
  %land.ext33 = zext i1 %22 to i32
  store i32 %land.ext33, i32* %u_dc, align 4
  %23 = load i32, i32* %chroma_dc, align 4
  %tobool34 = icmp ne i32 %23, 0
  br i1 %tobool34, label %land.rhs.35, label %land.end.38

land.rhs.35:                                      ; preds = %land.end.32
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_v_block36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 21
  %25 = load i32, i32* %is_v_block36, align 4
  %tobool37 = icmp ne i32 %25, 0
  br label %land.end.38

land.end.38:                                      ; preds = %land.rhs.35, %land.end.32
  %26 = phi i1 [ false, %land.end.32 ], [ %tobool37, %land.rhs.35 ]
  %land.ext39 = zext i1 %26 to i32
  store i32 %land.ext39, i32* %v_dc, align 4
  %27 = load i32, i32* %y_ac, align 4
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %cond.true, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %land.end.38
  %28 = load i32, i32* %u_ac, align 4
  %tobool42 = icmp ne i32 %28, 0
  br i1 %tobool42, label %cond.true, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.41
  %29 = load i32, i32* %v_ac, align 4
  %tobool44 = icmp ne i32 %29, 0
  br i1 %tobool44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.43, %lor.lhs.false.41, %land.end.38
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 19
  %31 = load i32, i32* %subblock_y, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %j, align 4
  %32 = load i32, i32* %y_ac, align 4
  %tobool45 = icmp ne i32 %32, 0
  br i1 %tobool45, label %cond.true.50, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %cond.end
  %33 = load i32, i32* %u_ac, align 4
  %tobool47 = icmp ne i32 %33, 0
  br i1 %tobool47, label %cond.true.50, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.46
  %34 = load i32, i32* %v_ac, align 4
  %tobool49 = icmp ne i32 %34, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %lor.lhs.false.48, %lor.lhs.false.46, %cond.end
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %subblock_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 18
  %36 = load i32, i32* %subblock_x, align 4
  br label %cond.end.52

cond.false.51:                                    ; preds = %lor.lhs.false.48
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ %36, %cond.true.50 ], [ 0, %cond.false.51 ]
  store i32 %cond53, i32* %i, align 4
  %37 = load i32, i32* %y_dc, align 4
  %tobool54 = icmp ne i32 %37, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.52
  br label %cond.end.74

cond.false.56:                                    ; preds = %cond.end.52
  %38 = load i32, i32* %y_ac, align 4
  %tobool57 = icmp ne i32 %38, 0
  br i1 %tobool57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.false.56
  br label %cond.end.72

cond.false.59:                                    ; preds = %cond.false.56
  %39 = load i32, i32* %u_dc, align 4
  %tobool60 = icmp ne i32 %39, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.false.59
  br label %cond.end.70

cond.false.62:                                    ; preds = %cond.false.59
  %40 = load i32, i32* %v_dc, align 4
  %tobool63 = icmp ne i32 %40, 0
  br i1 %tobool63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.false.62
  br label %cond.end.68

cond.false.65:                                    ; preds = %cond.false.62
  %41 = load i32, i32* %u_ac, align 4
  %tobool66 = icmp ne i32 %41, 0
  %cond67 = select i1 %tobool66, i32 19, i32 23
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.65, %cond.true.64
  %cond69 = phi i32 [ 18, %cond.true.64 ], [ %cond67, %cond.false.65 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %cond.true.61
  %cond71 = phi i32 [ 17, %cond.true.61 ], [ %cond69, %cond.end.68 ]
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.end.70, %cond.true.58
  %cond73 = phi i32 [ 1, %cond.true.58 ], [ %cond71, %cond.end.70 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.55
  %cond75 = phi i32 [ 0, %cond.true.55 ], [ %cond73, %cond.end.72 ]
  store i32 %cond75, i32* %bit, align 4
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %is_intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 20
  %43 = load i32, i32* %is_intra_block, align 4
  %tobool76 = icmp ne i32 %43, 0
  %cond77 = select i1 %tobool76, i32 1, i32 0
  store i32 %cond77, i32* %default_bit, align 4
  %44 = load i32, i32* %default_bit, align 4
  store i32 %44, i32* %upper_bit, align 4
  %45 = load i32, i32* %default_bit, align 4
  store i32 %45, i32* %left_bit, align 4
  store i32 0, i32* %bit_pos_a, align 4
  store i32 0, i32* %bit_pos_b, align 4
  %46 = load i32, i32* %y_ac, align 4
  %tobool78 = icmp ne i32 %46, 0
  br i1 %tobool78, label %if.then, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %cond.end.74
  %47 = load i32, i32* %y_dc, align 4
  %tobool80 = icmp ne i32 %47, 0
  br i1 %tobool80, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.79, %cond.end.74
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 3
  %49 = load i32, i32* %current_mb_nr, align 4
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %j, align 4
  call void @getLuma4x4Neighbour(i32 %49, i32 %50, i32 %51, i32 -1, i32 0, %struct.pix_pos* %block_a)
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 3
  %53 = load i32, i32* %current_mb_nr81, align 4
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %j, align 4
  call void @getLuma4x4Neighbour(i32 %53, i32 %54, i32 %55, i32 0, i32 -1, %struct.pix_pos* %block_b)
  %56 = load i32, i32* %y_ac, align 4
  %tobool82 = icmp ne i32 %56, 0
  br i1 %tobool82, label %if.then.83, label %if.end.94

if.then.83:                                       ; preds = %if.then
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %57 = load i32, i32* %available, align 4
  %tobool84 = icmp ne i32 %57, 0
  br i1 %tobool84, label %if.then.85, label %if.end

if.then.85:                                       ; preds = %if.then.83
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %58 = load i32, i32* %y, align 4
  %mul = mul nsw i32 4, %58
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %59 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul, %59
  store i32 %add, i32* %bit_pos_a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.85, %if.then.83
  %available86 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %60 = load i32, i32* %available86, align 4
  %tobool87 = icmp ne i32 %60, 0
  br i1 %tobool87, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %if.end
  %y89 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %61 = load i32, i32* %y89, align 4
  %mul90 = mul nsw i32 4, %61
  %x91 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %62 = load i32, i32* %x91, align 4
  %add92 = add nsw i32 %mul90, %62
  store i32 %add92, i32* %bit_pos_b, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %if.end
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then
  br label %if.end.118

if.else:                                          ; preds = %lor.lhs.false.79
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr95 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 3
  %64 = load i32, i32* %current_mb_nr95, align 4
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %j, align 4
  call void @getChroma4x4Neighbour(i32 %64, i32 %65, i32 %66, i32 -1, i32 0, %struct.pix_pos* %block_a)
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 3
  %68 = load i32, i32* %current_mb_nr96, align 4
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %j, align 4
  call void @getChroma4x4Neighbour(i32 %68, i32 %69, i32 %70, i32 0, i32 -1, %struct.pix_pos* %block_b)
  %71 = load i32, i32* %u_ac, align 4
  %tobool97 = icmp ne i32 %71, 0
  br i1 %tobool97, label %if.then.100, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.else
  %72 = load i32, i32* %v_ac, align 4
  %tobool99 = icmp ne i32 %72, 0
  br i1 %tobool99, label %if.then.100, label %if.end.117

if.then.100:                                      ; preds = %lor.lhs.false.98, %if.else
  %available101 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %73 = load i32, i32* %available101, align 4
  %tobool102 = icmp ne i32 %73, 0
  br i1 %tobool102, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %if.then.100
  %y104 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %74 = load i32, i32* %y104, align 4
  %mul105 = mul nsw i32 2, %74
  %x106 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %75 = load i32, i32* %x106, align 4
  %add107 = add nsw i32 %mul105, %75
  store i32 %add107, i32* %bit_pos_a, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %if.then.100
  %available109 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %76 = load i32, i32* %available109, align 4
  %tobool110 = icmp ne i32 %76, 0
  br i1 %tobool110, label %if.then.111, label %if.end.116

if.then.111:                                      ; preds = %if.end.108
  %y112 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %77 = load i32, i32* %y112, align 4
  %mul113 = mul nsw i32 2, %77
  %x114 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %78 = load i32, i32* %x114, align 4
  %add115 = add nsw i32 %mul113, %78
  store i32 %add115, i32* %bit_pos_b, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.111, %if.end.108
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %lor.lhs.false.98
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.94
  %79 = load i32, i32* %y_dc, align 4
  %tobool119 = icmp ne i32 %79, 0
  br i1 %tobool119, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %if.end.118
  br label %cond.end.151

cond.false.121:                                   ; preds = %if.end.118
  %80 = load i32, i32* %y_ac, align 4
  %tobool122 = icmp ne i32 %80, 0
  br i1 %tobool122, label %cond.true.123, label %cond.false.127

cond.true.123:                                    ; preds = %cond.false.121
  %81 = load i32, i32* %j, align 4
  %mul124 = mul nsw i32 4, %81
  %add125 = add nsw i32 1, %mul124
  %82 = load i32, i32* %i, align 4
  %add126 = add nsw i32 %add125, %82
  br label %cond.end.149

cond.false.127:                                   ; preds = %cond.false.121
  %83 = load i32, i32* %u_dc, align 4
  %tobool128 = icmp ne i32 %83, 0
  br i1 %tobool128, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %cond.false.127
  br label %cond.end.147

cond.false.130:                                   ; preds = %cond.false.127
  %84 = load i32, i32* %v_dc, align 4
  %tobool131 = icmp ne i32 %84, 0
  br i1 %tobool131, label %cond.true.132, label %cond.false.133

cond.true.132:                                    ; preds = %cond.false.130
  br label %cond.end.145

cond.false.133:                                   ; preds = %cond.false.130
  %85 = load i32, i32* %u_ac, align 4
  %tobool134 = icmp ne i32 %85, 0
  br i1 %tobool134, label %cond.true.135, label %cond.false.139

cond.true.135:                                    ; preds = %cond.false.133
  %86 = load i32, i32* %j, align 4
  %mul136 = mul nsw i32 2, %86
  %add137 = add nsw i32 19, %mul136
  %87 = load i32, i32* %i, align 4
  %add138 = add nsw i32 %add137, %87
  br label %cond.end.143

cond.false.139:                                   ; preds = %cond.false.133
  %88 = load i32, i32* %j, align 4
  %mul140 = mul nsw i32 2, %88
  %add141 = add nsw i32 23, %mul140
  %89 = load i32, i32* %i, align 4
  %add142 = add nsw i32 %add141, %89
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.139, %cond.true.135
  %cond144 = phi i32 [ %add138, %cond.true.135 ], [ %add142, %cond.false.139 ]
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.end.143, %cond.true.132
  %cond146 = phi i32 [ 18, %cond.true.132 ], [ %cond144, %cond.end.143 ]
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.end.145, %cond.true.129
  %cond148 = phi i32 [ 17, %cond.true.129 ], [ %cond146, %cond.end.145 ]
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.end.147, %cond.true.123
  %cond150 = phi i32 [ %add126, %cond.true.123 ], [ %cond148, %cond.end.147 ]
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.end.149, %cond.true.120
  %cond152 = phi i32 [ 0, %cond.true.120 ], [ %cond150, %cond.end.149 ]
  store i32 %cond152, i32* %bit, align 4
  %90 = load i32, i32* %cbp_bit.addr, align 4
  %tobool153 = icmp ne i32 %90, 0
  br i1 %tobool153, label %if.then.154, label %if.end.208

if.then.154:                                      ; preds = %cond.end.151
  %91 = load i32, i32* %type.addr, align 4
  %cmp155 = icmp eq i32 %91, 2
  br i1 %cmp155, label %if.then.157, label %if.else.174

if.then.157:                                      ; preds = %if.then.154
  %92 = load i32, i32* %bit, align 4
  %shl = shl i32 1, %92
  %conv158 = sext i32 %shl to i64
  %93 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits = getelementptr inbounds %struct.macroblock, %struct.macroblock* %93, i32 0, i32 16
  %94 = load i64, i64* %cbp_bits, align 8
  %or = or i64 %94, %conv158
  store i64 %or, i64* %cbp_bits, align 8
  %95 = load i32, i32* %bit, align 4
  %add159 = add nsw i32 %95, 1
  %shl160 = shl i32 1, %add159
  %conv161 = sext i32 %shl160 to i64
  %96 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits162 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %96, i32 0, i32 16
  %97 = load i64, i64* %cbp_bits162, align 8
  %or163 = or i64 %97, %conv161
  store i64 %or163, i64* %cbp_bits162, align 8
  %98 = load i32, i32* %bit, align 4
  %add164 = add nsw i32 %98, 4
  %shl165 = shl i32 1, %add164
  %conv166 = sext i32 %shl165 to i64
  %99 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits167 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %99, i32 0, i32 16
  %100 = load i64, i64* %cbp_bits167, align 8
  %or168 = or i64 %100, %conv166
  store i64 %or168, i64* %cbp_bits167, align 8
  %101 = load i32, i32* %bit, align 4
  %add169 = add nsw i32 %101, 5
  %shl170 = shl i32 1, %add169
  %conv171 = sext i32 %shl170 to i64
  %102 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits172 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %102, i32 0, i32 16
  %103 = load i64, i64* %cbp_bits172, align 8
  %or173 = or i64 %103, %conv171
  store i64 %or173, i64* %cbp_bits172, align 8
  br label %if.end.207

if.else.174:                                      ; preds = %if.then.154
  %104 = load i32, i32* %type.addr, align 4
  %cmp175 = icmp eq i32 %104, 3
  br i1 %cmp175, label %if.then.177, label %if.else.187

if.then.177:                                      ; preds = %if.else.174
  %105 = load i32, i32* %bit, align 4
  %shl178 = shl i32 1, %105
  %conv179 = sext i32 %shl178 to i64
  %106 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits180 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %106, i32 0, i32 16
  %107 = load i64, i64* %cbp_bits180, align 8
  %or181 = or i64 %107, %conv179
  store i64 %or181, i64* %cbp_bits180, align 8
  %108 = load i32, i32* %bit, align 4
  %add182 = add nsw i32 %108, 1
  %shl183 = shl i32 1, %add182
  %conv184 = sext i32 %shl183 to i64
  %109 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits185 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %109, i32 0, i32 16
  %110 = load i64, i64* %cbp_bits185, align 8
  %or186 = or i64 %110, %conv184
  store i64 %or186, i64* %cbp_bits185, align 8
  br label %if.end.206

if.else.187:                                      ; preds = %if.else.174
  %111 = load i32, i32* %type.addr, align 4
  %cmp188 = icmp eq i32 %111, 4
  br i1 %cmp188, label %if.then.190, label %if.else.200

if.then.190:                                      ; preds = %if.else.187
  %112 = load i32, i32* %bit, align 4
  %shl191 = shl i32 1, %112
  %conv192 = sext i32 %shl191 to i64
  %113 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits193 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %113, i32 0, i32 16
  %114 = load i64, i64* %cbp_bits193, align 8
  %or194 = or i64 %114, %conv192
  store i64 %or194, i64* %cbp_bits193, align 8
  %115 = load i32, i32* %bit, align 4
  %add195 = add nsw i32 %115, 4
  %shl196 = shl i32 1, %add195
  %conv197 = sext i32 %shl196 to i64
  %116 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits198 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %116, i32 0, i32 16
  %117 = load i64, i64* %cbp_bits198, align 8
  %or199 = or i64 %117, %conv197
  store i64 %or199, i64* %cbp_bits198, align 8
  br label %if.end.205

if.else.200:                                      ; preds = %if.else.187
  %118 = load i32, i32* %bit, align 4
  %shl201 = shl i32 1, %118
  %conv202 = sext i32 %shl201 to i64
  %119 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits203 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %119, i32 0, i32 16
  %120 = load i64, i64* %cbp_bits203, align 8
  %or204 = or i64 %120, %conv202
  store i64 %or204, i64* %cbp_bits203, align 8
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.200, %if.then.190
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.177
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.157
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %cond.end.151
  %121 = load i32, i32* %y_dc, align 4
  %tobool209 = icmp ne i32 %121, 0
  br i1 %tobool209, label %cond.true.210, label %cond.false.211

cond.true.210:                                    ; preds = %if.end.208
  br label %cond.end.229

cond.false.211:                                   ; preds = %if.end.208
  %122 = load i32, i32* %y_ac, align 4
  %tobool212 = icmp ne i32 %122, 0
  br i1 %tobool212, label %cond.true.213, label %cond.false.214

cond.true.213:                                    ; preds = %cond.false.211
  br label %cond.end.227

cond.false.214:                                   ; preds = %cond.false.211
  %123 = load i32, i32* %u_dc, align 4
  %tobool215 = icmp ne i32 %123, 0
  br i1 %tobool215, label %cond.true.216, label %cond.false.217

cond.true.216:                                    ; preds = %cond.false.214
  br label %cond.end.225

cond.false.217:                                   ; preds = %cond.false.214
  %124 = load i32, i32* %v_dc, align 4
  %tobool218 = icmp ne i32 %124, 0
  br i1 %tobool218, label %cond.true.219, label %cond.false.220

cond.true.219:                                    ; preds = %cond.false.217
  br label %cond.end.223

cond.false.220:                                   ; preds = %cond.false.217
  %125 = load i32, i32* %u_ac, align 4
  %tobool221 = icmp ne i32 %125, 0
  %cond222 = select i1 %tobool221, i32 19, i32 23
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.220, %cond.true.219
  %cond224 = phi i32 [ 18, %cond.true.219 ], [ %cond222, %cond.false.220 ]
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.end.223, %cond.true.216
  %cond226 = phi i32 [ 17, %cond.true.216 ], [ %cond224, %cond.end.223 ]
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.end.225, %cond.true.213
  %cond228 = phi i32 [ 1, %cond.true.213 ], [ %cond226, %cond.end.225 ]
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.end.227, %cond.true.210
  %cond230 = phi i32 [ 0, %cond.true.210 ], [ %cond228, %cond.end.227 ]
  store i32 %cond230, i32* %bit, align 4
  %126 = load i32, i32* %type.addr, align 4
  %cmp231 = icmp ne i32 %126, 2
  br i1 %cmp231, label %if.then.233, label %if.end.287

if.then.233:                                      ; preds = %cond.end.229
  %available234 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %127 = load i32, i32* %available234, align 4
  %tobool235 = icmp ne i32 %127, 0
  br i1 %tobool235, label %if.then.236, label %if.end.252

if.then.236:                                      ; preds = %if.then.233
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %128 = load i32, i32* %mb_addr, align 4
  %idxprom = sext i32 %128 to i64
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 51
  %130 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %130, i64 %idxprom
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 8
  %131 = load i32, i32* %mb_type, align 4
  %cmp237 = icmp eq i32 %131, 14
  br i1 %cmp237, label %if.then.239, label %if.else.240

if.then.239:                                      ; preds = %if.then.236
  store i32 1, i32* %upper_bit, align 4
  br label %if.end.251

if.else.240:                                      ; preds = %if.then.236
  %mb_addr241 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %132 = load i32, i32* %mb_addr241, align 4
  %idxprom242 = sext i32 %132 to i64
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data243 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 51
  %134 = load %struct.macroblock*, %struct.macroblock** %mb_data243, align 8
  %arrayidx244 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %134, i64 %idxprom242
  %cbp_bits245 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx244, i32 0, i32 16
  %135 = load i64, i64* %cbp_bits245, align 8
  %136 = load i32, i32* %bit, align 4
  %137 = load i32, i32* %bit_pos_b, align 4
  %add246 = add nsw i32 %136, %137
  %shl247 = shl i32 1, %add246
  %conv248 = sext i32 %shl247 to i64
  %and = and i64 %135, %conv248
  %138 = load i32, i32* %bit, align 4
  %139 = load i32, i32* %bit_pos_b, align 4
  %add249 = add nsw i32 %138, %139
  %sh_prom = zext i32 %add249 to i64
  %shr = lshr i64 %and, %sh_prom
  %conv250 = trunc i64 %shr to i32
  store i32 %conv250, i32* %upper_bit, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.240, %if.then.239
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.then.233
  %available253 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %140 = load i32, i32* %available253, align 4
  %tobool254 = icmp ne i32 %140, 0
  br i1 %tobool254, label %if.then.255, label %if.end.279

if.then.255:                                      ; preds = %if.end.252
  %mb_addr256 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %141 = load i32, i32* %mb_addr256, align 4
  %idxprom257 = sext i32 %141 to i64
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data258 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 51
  %143 = load %struct.macroblock*, %struct.macroblock** %mb_data258, align 8
  %arrayidx259 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %143, i64 %idxprom257
  %mb_type260 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx259, i32 0, i32 8
  %144 = load i32, i32* %mb_type260, align 4
  %cmp261 = icmp eq i32 %144, 14
  br i1 %cmp261, label %if.then.263, label %if.else.264

if.then.263:                                      ; preds = %if.then.255
  store i32 1, i32* %left_bit, align 4
  br label %if.end.278

if.else.264:                                      ; preds = %if.then.255
  %mb_addr265 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %145 = load i32, i32* %mb_addr265, align 4
  %idxprom266 = sext i32 %145 to i64
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data267 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 51
  %147 = load %struct.macroblock*, %struct.macroblock** %mb_data267, align 8
  %arrayidx268 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %147, i64 %idxprom266
  %cbp_bits269 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx268, i32 0, i32 16
  %148 = load i64, i64* %cbp_bits269, align 8
  %149 = load i32, i32* %bit, align 4
  %150 = load i32, i32* %bit_pos_a, align 4
  %add270 = add nsw i32 %149, %150
  %shl271 = shl i32 1, %add270
  %conv272 = sext i32 %shl271 to i64
  %and273 = and i64 %148, %conv272
  %151 = load i32, i32* %bit, align 4
  %152 = load i32, i32* %bit_pos_a, align 4
  %add274 = add nsw i32 %151, %152
  %sh_prom275 = zext i32 %add274 to i64
  %shr276 = lshr i64 %and273, %sh_prom275
  %conv277 = trunc i64 %shr276 to i32
  store i32 %conv277, i32* %left_bit, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.264, %if.then.263
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.end.252
  %153 = load i32, i32* %upper_bit, align 4
  %mul280 = mul nsw i32 2, %153
  %154 = load i32, i32* %left_bit, align 4
  %add281 = add nsw i32 %mul280, %154
  store i32 %add281, i32* %ctx, align 4
  %155 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %156 = load i32, i32* %cbp_bit.addr, align 4
  %conv282 = trunc i32 %156 to i16
  %157 = load i32, i32* %type.addr, align 4
  %idxprom283 = sext i32 %157 to i64
  %arrayidx284 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_bcbp, i32 0, i64 %idxprom283
  %158 = load i32, i32* %arrayidx284, align 4
  %idxprom285 = sext i32 %158 to i64
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 50
  %160 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %160, i32 0, i32 8
  %161 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %bcbp_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %161, i32 0, i32 3
  %arrayidx286 = getelementptr inbounds [10 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]]* %bcbp_contexts, i32 0, i64 %idxprom285
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx286, i32 0, i32 0
  %162 = load i32, i32* %ctx, align 4
  %idx.ext = sext i32 %162 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %155, i16 signext %conv282, %struct.BiContextType* %add.ptr)
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.279, %cond.end.229
  ret void
}

declare void @getChroma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind uwtable
define void @write_significance_map(%struct.macroblock* %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32* %coeff, i32 %coeff_ctr) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %type.addr = alloca i32, align 4
  %coeff.addr = alloca i32*, align 8
  %coeff_ctr.addr = alloca i32, align 4
  %k = alloca i16, align 2
  %sig = alloca i16, align 2
  %last = alloca i16, align 2
  %k0 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %fld = alloca i32, align 4
  %map_ctx = alloca %struct.BiContextType*, align 8
  %last_ctx = alloca %struct.BiContextType*, align 8
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32* %coeff, i32** %coeff.addr, align 8
  store i32 %coeff_ctr, i32* %coeff_ctr.addr, align 4
  store i32 0, i32* %k0, align 4
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @maxpos, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %k1, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 7
  %3 = load i32, i32* %structure, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 22
  %5 = load i32, i32* %mb_field, align 4
  %tobool = icmp ne i32 %5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  store i32 %lor.ext, i32* %fld, align 4
  %7 = load i32, i32* %fld, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  %8 = load i32, i32* %type.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_map, i32 0, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 50
  %11 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %11, i32 0, i32 8
  %12 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %fld_map_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %12, i32 0, i32 8
  %arrayidx5 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %fld_map_contexts, i32 0, i64 %idxprom4
  %arraydecay = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx5, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %13 = load i32, i32* %type.addr, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_map, i32 0, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 50
  %16 = load %struct.Slice*, %struct.Slice** %currentSlice9, align 8
  %tex_ctx10 = getelementptr inbounds %struct.Slice, %struct.Slice* %16, i32 0, i32 8
  %17 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx10, align 8
  %map_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %17, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %map_contexts, i32 0, i64 %idxprom8
  %arraydecay12 = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx11, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.BiContextType* [ %arraydecay, %cond.true ], [ %arraydecay12, %cond.false ]
  store %struct.BiContextType* %cond, %struct.BiContextType** %map_ctx, align 8
  %18 = load i32, i32* %fld, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.22

cond.true.14:                                     ; preds = %cond.end
  %19 = load i32, i32* %type.addr, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_last, i32 0, i64 %idxprom15
  %20 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 50
  %22 = load %struct.Slice*, %struct.Slice** %currentSlice18, align 8
  %tex_ctx19 = getelementptr inbounds %struct.Slice, %struct.Slice* %22, i32 0, i32 8
  %23 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx19, align 8
  %fld_last_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %23, i32 0, i32 9
  %arrayidx20 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %fld_last_contexts, i32 0, i64 %idxprom17
  %arraydecay21 = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx20, i32 0, i32 0
  br label %cond.end.30

cond.false.22:                                    ; preds = %cond.end
  %24 = load i32, i32* %type.addr, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_last, i32 0, i64 %idxprom23
  %25 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 50
  %27 = load %struct.Slice*, %struct.Slice** %currentSlice26, align 8
  %tex_ctx27 = getelementptr inbounds %struct.Slice, %struct.Slice* %27, i32 0, i32 8
  %28 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx27, align 8
  %last_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %28, i32 0, i32 5
  %arrayidx28 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %last_contexts, i32 0, i64 %idxprom25
  %arraydecay29 = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx28, i32 0, i32 0
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.22, %cond.true.14
  %cond31 = phi %struct.BiContextType* [ %arraydecay21, %cond.true.14 ], [ %arraydecay29, %cond.false.22 ]
  store %struct.BiContextType* %cond31, %struct.BiContextType** %last_ctx, align 8
  %29 = load i32, i32* %type.addr, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* @c1isdc, i32 0, i64 %idxprom32
  %30 = load i32, i32* %arrayidx33, align 4
  %tobool34 = icmp ne i32 %30, 0
  br i1 %tobool34, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.30
  %31 = load i32, i32* %k0, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %k0, align 4
  %32 = load i32, i32* %k1, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, i32* %k1, align 4
  %33 = load i32*, i32** %coeff.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %33, i32 -1
  store i32* %incdec.ptr, i32** %coeff.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.30
  %34 = load i32, i32* %k0, align 4
  %conv = trunc i32 %34 to i16
  store i16 %conv, i16* %k, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %35 = load i16, i16* %k, align 2
  %conv36 = sext i16 %35 to i32
  %36 = load i32, i32* %k1, align 4
  %cmp37 = icmp slt i32 %conv36, %36
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i16, i16* %k, align 2
  %idxprom39 = sext i16 %37 to i64
  %38 = load i32*, i32** %coeff.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %38, i64 %idxprom39
  %39 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp ne i32 %39, 0
  %cond43 = select i1 %cmp41, i32 1, i32 0
  %conv44 = trunc i32 %cond43 to i16
  store i16 %conv44, i16* %sig, align 2
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 7
  %41 = load i32, i32* %structure45, align 4
  %cmp46 = icmp ne i32 %41, 0
  br i1 %cmp46, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %42 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_field48 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i32 0, i32 22
  %43 = load i32, i32* %mb_field48, align 4
  %tobool49 = icmp ne i32 %43, 0
  br i1 %tobool49, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %lor.lhs.false, %for.body
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %45 = load i16, i16* %sig, align 2
  %46 = load %struct.BiContextType*, %struct.BiContextType** %map_ctx, align 8
  %47 = load i16, i16* %k, align 2
  %idxprom51 = sext i16 %47 to i64
  %48 = load i32, i32* %type.addr, align 4
  %idxprom52 = sext i32 %48 to i64
  %arrayidx53 = getelementptr inbounds [10 x i32*], [10 x i32*]* @pos2ctx_map_int, i32 0, i64 %idxprom52
  %49 = load i32*, i32** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %49, i64 %idxprom51
  %50 = load i32, i32* %arrayidx54, align 4
  %idx.ext = sext i32 %50 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %46, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %44, i16 signext %45, %struct.BiContextType* %add.ptr)
  br label %if.end.61

if.else:                                          ; preds = %lor.lhs.false
  %51 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %52 = load i16, i16* %sig, align 2
  %53 = load %struct.BiContextType*, %struct.BiContextType** %map_ctx, align 8
  %54 = load i16, i16* %k, align 2
  %idxprom55 = sext i16 %54 to i64
  %55 = load i32, i32* %type.addr, align 4
  %idxprom56 = sext i32 %55 to i64
  %arrayidx57 = getelementptr inbounds [10 x i32*], [10 x i32*]* @pos2ctx_map, i32 0, i64 %idxprom56
  %56 = load i32*, i32** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %56, i64 %idxprom55
  %57 = load i32, i32* %arrayidx58, align 4
  %idx.ext59 = sext i32 %57 to i64
  %add.ptr60 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %53, i64 %idx.ext59
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %51, i16 signext %52, %struct.BiContextType* %add.ptr60)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.then.50
  %58 = load i16, i16* %sig, align 2
  %tobool62 = icmp ne i16 %58, 0
  br i1 %tobool62, label %if.then.63, label %if.end.77

if.then.63:                                       ; preds = %if.end.61
  %59 = load i32, i32* %coeff_ctr.addr, align 4
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %coeff_ctr.addr, align 4
  %cmp64 = icmp eq i32 %dec, 0
  %cond66 = select i1 %cmp64, i32 1, i32 0
  %conv67 = trunc i32 %cond66 to i16
  store i16 %conv67, i16* %last, align 2
  %60 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %61 = load i16, i16* %last, align 2
  %62 = load %struct.BiContextType*, %struct.BiContextType** %last_ctx, align 8
  %63 = load i16, i16* %k, align 2
  %idxprom68 = sext i16 %63 to i64
  %64 = load i32, i32* %type.addr, align 4
  %idxprom69 = sext i32 %64 to i64
  %arrayidx70 = getelementptr inbounds [10 x i32*], [10 x i32*]* @pos2ctx_last, i32 0, i64 %idxprom69
  %65 = load i32*, i32** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %65, i64 %idxprom68
  %66 = load i32, i32* %arrayidx71, align 4
  %idx.ext72 = sext i32 %66 to i64
  %add.ptr73 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %62, i64 %idx.ext72
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %60, i16 signext %61, %struct.BiContextType* %add.ptr73)
  %67 = load i16, i16* %last, align 2
  %tobool74 = icmp ne i16 %67, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.63
  br label %for.end

if.end.76:                                        ; preds = %if.then.63
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.61
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %68 = load i16, i16* %k, align 2
  %inc78 = add i16 %68, 1
  store i16 %inc78, i16* %k, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then.75, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_significant_coefficients(%struct.macroblock* %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32* %coeff) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %type.addr = alloca i32, align 4
  %coeff.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %absLevel = alloca i32, align 4
  %ctx = alloca i32, align 4
  %sign = alloca i16, align 2
  %greater_one = alloca i16, align 2
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32* %coeff, i32** %coeff.addr, align 8
  store i32 1, i32* %c1, align 4
  store i32 0, i32* %c2, align 4
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @maxpos, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32*, i32** %coeff.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.end.48

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32*, i32** %coeff.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32*, i32** %coeff.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  store i32 %11, i32* %absLevel, align 4
  store i16 0, i16* %sign, align 2
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i32*, i32** %coeff.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 0, %14
  store i32 %sub12, i32* %absLevel, align 4
  store i16 1, i16* %sign, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %15 = load i32, i32* %absLevel, align 4
  %cmp13 = icmp sgt i32 %15, 1
  %cond = select i1 %cmp13, i32 1, i32 0
  %conv = trunc i32 %cond to i16
  store i16 %conv, i16* %greater_one, align 2
  %16 = load i32, i32* %c1, align 4
  %cmp14 = icmp slt i32 %16, 4
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load i32, i32* %c1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i32 [ %17, %cond.true ], [ 4, %cond.false ]
  store i32 %cond16, i32* %ctx, align 4
  %18 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %19 = load i16, i16* %greater_one, align 2
  %20 = load i32, i32* %type.addr, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_one, i32 0, i64 %idxprom17
  %21 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 50
  %23 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %23, i32 0, i32 8
  %24 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %one_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %24, i32 0, i32 6
  %arrayidx20 = getelementptr inbounds [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]]* %one_contexts, i32 0, i64 %idxprom19
  %arraydecay = getelementptr inbounds [5 x %struct.BiContextType], [5 x %struct.BiContextType]* %arrayidx20, i32 0, i32 0
  %25 = load i32, i32* %ctx, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %18, i16 signext %19, %struct.BiContextType* %add.ptr)
  %26 = load i16, i16* %greater_one, align 2
  %tobool = icmp ne i16 %26, 0
  br i1 %tobool, label %if.then.21, label %if.else.42

if.then.21:                                       ; preds = %cond.end
  %27 = load i32, i32* %c2, align 4
  %28 = load i32, i32* %type.addr, align 4
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds [10 x i32], [10 x i32]* @max_c2, i32 0, i64 %idxprom22
  %29 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp slt i32 %27, %29
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.then.21
  %30 = load i32, i32* %c2, align 4
  br label %cond.end.30

cond.false.27:                                    ; preds = %if.then.21
  %31 = load i32, i32* %type.addr, align 4
  %idxprom28 = sext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* @max_c2, i32 0, i64 %idxprom28
  %32 = load i32, i32* %arrayidx29, align 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.27, %cond.true.26
  %cond31 = phi i32 [ %30, %cond.true.26 ], [ %32, %cond.false.27 ]
  store i32 %cond31, i32* %ctx, align 4
  %33 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %34 = load i32, i32* %absLevel, align 4
  %sub32 = sub nsw i32 %34, 2
  %35 = load i32, i32* %type.addr, align 4
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_abs, i32 0, i64 %idxprom33
  %36 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %36 to i64
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 50
  %38 = load %struct.Slice*, %struct.Slice** %currentSlice36, align 8
  %tex_ctx37 = getelementptr inbounds %struct.Slice, %struct.Slice* %38, i32 0, i32 8
  %39 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx37, align 8
  %abs_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %39, i32 0, i32 7
  %arrayidx38 = getelementptr inbounds [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]]* %abs_contexts, i32 0, i64 %idxprom35
  %arraydecay39 = getelementptr inbounds [5 x %struct.BiContextType], [5 x %struct.BiContextType]* %arrayidx38, i32 0, i32 0
  %40 = load i32, i32* %ctx, align 4
  %idx.ext40 = sext i32 %40 to i64
  %add.ptr41 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay39, i64 %idx.ext40
  call void @unary_exp_golomb_level_encode(%struct.EncodingEnvironment* %33, i32 %sub32, %struct.BiContextType* %add.ptr41)
  store i32 0, i32* %c1, align 4
  %41 = load i32, i32* %c2, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %c2, align 4
  br label %if.end.47

if.else.42:                                       ; preds = %cond.end
  %42 = load i32, i32* %c1, align 4
  %tobool43 = icmp ne i32 %42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.else.42
  %43 = load i32, i32* %c1, align 4
  %inc45 = add nsw i32 %43, 1
  store i32 %inc45, i32* %c1, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.else.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %cond.end.30
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %45 = load i16, i16* %sign, align 2
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %44, i16 signext %45)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %46 = load i32, i32* %i, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @unary_exp_golomb_level_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx) #0 {
entry:
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %exp_start = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 13, i32* %exp_start, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %2 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %1, i16 signext 0, %struct.BiContextType* %2)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %4 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %3, i16 signext 1, %struct.BiContextType* %4)
  %5 = load i32, i32* %symbol.addr, align 4
  store i32 %5, i32* %l, align 4
  store i32 1, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %6 = load i32, i32* %l, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %l, align 4
  %cmp1 = icmp ugt i32 %dec, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %k, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %k, align 4
  %8 = load i32, i32* %exp_start, align 4
  %cmp2 = icmp ule i32 %inc, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %11 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %10, i16 signext 1, %struct.BiContextType* %11)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %symbol.addr, align 4
  %13 = load i32, i32* %exp_start, align 4
  %cmp3 = icmp ult i32 %12, %13
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %while.end
  %14 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %15 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %14, i16 signext 0, %struct.BiContextType* %15)
  br label %if.end

if.else.5:                                        ; preds = %while.end
  %16 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %17 = load i32, i32* %symbol.addr, align 4
  %18 = load i32, i32* %exp_start, align 4
  %sub = sub i32 %17, %18
  call void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %16, i32 %sub, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeRunLevel_CABAC(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %i = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 51
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %4, i32 0, i32 1
  %5 = load i32, i32* %value1, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 2
  %8 = load i32, i32* %value2, align 4
  %cmp1 = icmp slt i32 %6, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* @writeRunLevel_CABAC.pos, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @writeRunLevel_CABAC.pos, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds [64 x i32], [64 x i32]* @writeRunLevel_CABAC.coeff, i32 0, i64 %idxprom2
  store i32 0, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %10, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value15 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %11, i32 0, i32 1
  %12 = load i32, i32* %value15, align 4
  %13 = load i32, i32* @writeRunLevel_CABAC.pos, align 4
  %inc6 = add nsw i32 %13, 1
  store i32 %inc6, i32* @writeRunLevel_CABAC.pos, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [64 x i32], [64 x i32]* @writeRunLevel_CABAC.coeff, i32 0, i64 %idxprom7
  store i32 %12, i32* %arrayidx8, align 4
  %14 = load i32, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  br label %return

if.else:                                          ; preds = %entry
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.15, %if.else
  %15 = load i32, i32* @writeRunLevel_CABAC.pos, align 4
  %cmp11 = icmp slt i32 %15, 64
  br i1 %cmp11, label %for.body.12, label %for.end.17

for.body.12:                                      ; preds = %for.cond.10
  %16 = load i32, i32* @writeRunLevel_CABAC.pos, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [64 x i32], [64 x i32]* @writeRunLevel_CABAC.coeff, i32 0, i64 %idxprom13
  store i32 0, i32* %arrayidx14, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.12
  %17 = load i32, i32* @writeRunLevel_CABAC.pos, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* @writeRunLevel_CABAC.pos, align 4
  br label %for.cond.10

for.end.17:                                       ; preds = %for.cond.10
  br label %if.end

if.end:                                           ; preds = %for.end.17
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %19 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %20 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %20, i32 0, i32 6
  %21 = load i32, i32* %context, align 4
  %22 = load i32, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  %cmp18 = icmp sgt i32 %22, 0
  %cond = select i1 %cmp18, i32 1, i32 0
  call void @write_and_store_CBP_block_bit(%struct.macroblock* %18, %struct.EncodingEnvironment* %19, i32 %21, i32 %cond)
  %23 = load i32, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  %cmp19 = icmp sgt i32 %23, 0
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %26 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context21 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %26, i32 0, i32 6
  %27 = load i32, i32* %context21, align 4
  %28 = load i32, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  call void @write_significance_map(%struct.macroblock* %24, %struct.EncodingEnvironment* %25, i32 %27, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @writeRunLevel_CABAC.coeff, i32 0, i32 0), i32 %28)
  %29 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %30 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %31 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context22 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %31, i32 0, i32 6
  %32 = load i32, i32* %context22, align 4
  call void @write_significant_coefficients(%struct.macroblock* %29, %struct.EncodingEnvironment* %30, i32 %32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @writeRunLevel_CABAC.coeff, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end
  store i32 0, i32* @writeRunLevel_CABAC.coeff_ctr, align 4
  store i32 0, i32* @writeRunLevel_CABAC.pos, align 4
  br label %return

return:                                           ; preds = %if.end.23, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, i32 %k) #0 {
entry:
  %eep_dp.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep_dp, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %0 = load i32, i32* %symbol.addr, align 4
  %1 = load i32, i32* %k.addr, align 4
  %shl = shl i32 1, %1
  %cmp = icmp uge i32 %0, %shl
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %2, i16 signext 1)
  %3 = load i32, i32* %symbol.addr, align 4
  %4 = load i32, i32* %k.addr, align 4
  %shl1 = shl i32 1, %4
  %sub = sub i32 %3, %shl1
  store i32 %sub, i32* %symbol.addr, align 4
  %5 = load i32, i32* %k.addr, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %k.addr, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %6, i16 signext 0)
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.3, %if.else
  %7 = load i32, i32* %k.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %k.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.2
  %8 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep_dp.addr, align 8
  %9 = load i32, i32* %symbol.addr, align 4
  %10 = load i32, i32* %k.addr, align 4
  %shr = lshr i32 %9, %10
  %and = and i32 %shr, 1
  %conv = trunc i32 %and to i8
  %conv4 = zext i8 %conv to i16
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %8, i16 signext %conv4)
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  br label %while.end.5

if.end:                                           ; preds = %if.then
  br label %while.body

while.end.5:                                      ; preds = %while.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
