; ModuleID = './MultiSource.Applications.JM/12.ldecod.cabac.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@symbolCount = global i32 0, align 4
@last_dquant = global i32 0, align 4
@img = external global %struct.img_par*, align 8
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"create_contexts_MotionInfo: deco_ctx\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"create_contexts_TextureInfo: deco_ctx\00", align 1
@dec_picture = external global %struct.storable_picture*, align 8
@type2ctx_bcbp = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@maxpos = internal constant [10 x i32] [i32 16, i32 15, i32 64, i32 32, i32 32, i32 16, i32 4, i32 15, i32 8, i32 16], align 16
@pos2ctx_map_int = internal global [10 x i32*] [i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @pos2ctx_map8x8i, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map8x4i, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map4x8i, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4c, i32 0, i32 0)], align 16
@pos2ctx_map = internal global [10 x i32*] [i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @pos2ctx_map8x8, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map8x4, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_map8x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_map4x4c, i32 0, i32 0)], align 16
@type2ctx_map = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 6, i32 6], align 16
@type2ctx_last = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 6, i32 6], align 16
@c1isdc = internal constant [10 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1], align 16
@pos2ctx_last = internal global [10 x i32*] [i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @pos2ctx_last8x8, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_last8x4, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @pos2ctx_last8x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @pos2ctx_last4x4c, i32 0, i32 0)], align 16
@type2ctx_one = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@max_c2 = internal constant [10 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 4, i32 3, i32 3], align 16
@type2ctx_abs = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@readRunLevel_CABAC.coeff = internal global [64 x i32] zeroinitializer, align 16
@readRunLevel_CABAC.coeff_ctr = internal global i32 -1, align 4
@readRunLevel_CABAC.pos = internal global i32 0, align 4
@assignSE2partition = external global [0 x [20 x i32]], align 4
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
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
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
define void @CheckAvailabilityOfNeighborsCABAC() #0 {
entry:
  %currMB = alloca %struct.macroblock*, align 8
  %up = alloca %struct.pix_pos, align 4
  %left = alloca %struct.pix_pos, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 1
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 39
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %5 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_mb_nr1 = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 1
  %6 = load i32, i32* %current_mb_nr1, align 4
  call void %4(i32 %6, i32 -1, i32 0, i32 0, %struct.pix_pos* %left)
  %7 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %8 = load %struct.img_par*, %struct.img_par** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 1
  %9 = load i32, i32* %current_mb_nr2, align 4
  call void %7(i32 %9, i32 0, i32 -1, i32 0, %struct.pix_pos* %up)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %10 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 1
  %11 = load i32, i32* %mb_addr, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data4 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 39
  %13 = load %struct.macroblock*, %struct.macroblock** %mb_data4, align 8
  %arrayidx5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i64 %idxprom3
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 4
  store %struct.macroblock* %arrayidx5, %struct.macroblock** %mb_available_up, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 4
  store %struct.macroblock* null, %struct.macroblock** %mb_available_up6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %available7 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left, i32 0, i32 0
  %16 = load i32, i32* %available7, align 4
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.then.9, label %if.else.14

if.then.9:                                        ; preds = %if.end
  %mb_addr10 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left, i32 0, i32 1
  %17 = load i32, i32* %mb_addr10, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data12 = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 39
  %19 = load %struct.macroblock*, %struct.macroblock** %mb_data12, align 8
  %arrayidx13 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i64 %idxprom11
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 5
  store %struct.macroblock* %arrayidx13, %struct.macroblock** %mb_available_left, align 8
  br label %if.end.16

if.else.14:                                       ; preds = %if.end
  %21 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left15 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 5
  store %struct.macroblock* null, %struct.macroblock** %mb_available_left15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @cabac_new_slice() #0 {
entry:
  store i32 0, i32* @last_dquant, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.MotionInfoContexts* @create_contexts_MotionInfo() #0 {
entry:
  %deco_ctx = alloca %struct.MotionInfoContexts*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 420) #3
  %0 = bitcast i8* %call to %struct.MotionInfoContexts*
  store %struct.MotionInfoContexts* %0, %struct.MotionInfoContexts** %deco_ctx, align 8
  %1 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %deco_ctx, align 8
  %cmp = icmp eq %struct.MotionInfoContexts* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %deco_ctx, align 8
  ret %struct.MotionInfoContexts* %2
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.TextureInfoContexts* @create_contexts_TextureInfo() #0 {
entry:
  %deco_ctx = alloca %struct.TextureInfoContexts*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 3032) #3
  %0 = bitcast i8* %call to %struct.TextureInfoContexts*
  store %struct.TextureInfoContexts* %0, %struct.TextureInfoContexts** %deco_ctx, align 8
  %1 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %deco_ctx, align 8
  %cmp = icmp eq %struct.TextureInfoContexts* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %deco_ctx, align 8
  ret %struct.TextureInfoContexts* %2
}

; Function Attrs: nounwind uwtable
define void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %deco_ctx) #0 {
entry:
  %deco_ctx.addr = alloca %struct.MotionInfoContexts*, align 8
  store %struct.MotionInfoContexts* %deco_ctx, %struct.MotionInfoContexts** %deco_ctx.addr, align 8
  %0 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %deco_ctx.addr, align 8
  %cmp = icmp eq %struct.MotionInfoContexts* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %deco_ctx.addr, align 8
  %2 = bitcast %struct.MotionInfoContexts* %1 to i8*
  call void @free(i8* %2) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %deco_ctx) #0 {
entry:
  %deco_ctx.addr = alloca %struct.TextureInfoContexts*, align 8
  store %struct.TextureInfoContexts* %deco_ctx, %struct.TextureInfoContexts** %deco_ctx.addr, align 8
  %0 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %deco_ctx.addr, align 8
  %cmp = icmp eq %struct.TextureInfoContexts* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %deco_ctx.addr, align 8
  %2 = bitcast %struct.TextureInfoContexts* %1 to i8*
  call void @free(i8* %2) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @readFieldModeInfo_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 10
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %2, %struct.MotionInfoContexts** %ctx, align 8
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 1
  %4 = load i32, i32* %current_mb_nr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 39
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %7 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %7, i32 0, i32 26
  %8 = load i32, i32* %mbAvailA, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrA = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 22
  %10 = load i32, i32* %mbAddrA, align 4
  %idxprom1 = sext i32 %10 to i64
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data2 = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 39
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_data2, align 8
  %arrayidx3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i64 %idxprom1
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx3, i32 0, i32 20
  %13 = load i32, i32* %mb_field, align 4
  store i32 %13, i32* %a, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %a, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAvailB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 27
  %15 = load i32, i32* %mbAvailB, align 4
  %tobool4 = icmp ne i32 %15, 0
  br i1 %tobool4, label %if.then.5, label %if.else.10

if.then.5:                                        ; preds = %if.end
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mbAddrB = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 23
  %17 = load i32, i32* %mbAddrB, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data7 = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 39
  %19 = load %struct.macroblock*, %struct.macroblock** %mb_data7, align 8
  %arrayidx8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i64 %idxprom6
  %mb_field9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx8, i32 0, i32 20
  %20 = load i32, i32* %mb_field9, align 4
  store i32 %20, i32* %b, align 4
  br label %if.end.11

if.else.10:                                       ; preds = %if.end
  store i32 0, i32* %b, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.5
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %add = add nsw i32 %21, %22
  store i32 %add, i32* %act_ctx, align 4
  %23 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %24 = load i32, i32* %act_ctx, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_aff_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %25, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %mb_aff_contexts, i32 0, i64 %idxprom12
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %23, %struct.BiContextType* %arrayidx13)
  %26 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %26, i32 0, i32 1
  store i32 %call, i32* %value1, align 4
  ret void
}

declare i32 @biari_decode_symbol(%struct.DecodingEnvironment*, %struct.BiContextType*) #2

; Function Attrs: nounwind uwtable
define i32 @check_next_mb_and_get_field_mode_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.datapartition* %act_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %act_dp.addr = alloca %struct.datapartition*, align 8
  %mb_type_ctx_copy = alloca [4 x %struct.BiContextType*], align 16
  %mb_aff_ctx_copy = alloca %struct.BiContextType*, align 8
  %dep_dp_copy = alloca %struct.DecodingEnvironment*, align 8
  %length = alloca i32, align 4
  %dep_dp = alloca %struct.DecodingEnvironment*, align 8
  %bframe = alloca i32, align 4
  %skip = alloca i32, align 4
  %field = alloca i32, align 4
  %i = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.datapartition* %act_dp, %struct.datapartition** %act_dp.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %act_dp.addr, align 8
  %de_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.DecodingEnvironment* %de_cabac, %struct.DecodingEnvironment** %dep_dp, align 8
  %1 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %1, i32 0, i32 10
  %2 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %2, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  store i32 0, i32* %skip, align 4
  store i32 0, i32* %field, align 4
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 1
  %4 = load i32, i32* %current_mb_nr, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %current_mb_nr, align 4
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr1 = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 1
  %6 = load i32, i32* %current_mb_nr1, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 39
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_slice_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 3
  %10 = load i32, i32* %current_slice_nr, align 4
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 2
  store i32 %10, i32* %slice_nr, align 4
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 1
  %13 = load i32, i32* %current_mb_nr2, align 4
  %sub = sub i32 %13, 1
  %idxprom3 = zext i32 %sub to i64
  %14 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data4 = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 39
  %15 = load %struct.macroblock*, %struct.macroblock** %mb_data4, align 8
  %arrayidx5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i64 %idxprom3
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx5, i32 0, i32 20
  %16 = load i32, i32* %mb_field, align 4
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 20
  store i32 %16, i32* %mb_field6, align 4
  call void @CheckAvailabilityOfNeighbors()
  call void @CheckAvailabilityOfNeighborsCABAC()
  %call = call noalias i8* @calloc(i64 1, i64 40) #3
  %18 = bitcast i8* %call to %struct.DecodingEnvironment*
  store %struct.DecodingEnvironment* %18, %struct.DecodingEnvironment** %dep_dp_copy, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %19, 4
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call9 = call noalias i8* @calloc(i64 11, i64 4) #3
  %20 = bitcast i8* %call9 to %struct.BiContextType*
  %21 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds [4 x %struct.BiContextType*], [4 x %struct.BiContextType*]* %mb_type_ctx_copy, i32 0, i64 %idxprom10
  store %struct.BiContextType* %20, %struct.BiContextType** %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %22, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call13 = call noalias i8* @calloc(i64 4, i64 4) #3
  %23 = bitcast i8* %call13 to %struct.BiContextType*
  store %struct.BiContextType* %23, %struct.BiContextType** %mb_aff_ctx_copy, align 8
  %24 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp_copy, align 8
  %25 = bitcast %struct.DecodingEnvironment* %24 to i8*
  %26 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp, align 8
  %27 = bitcast %struct.DecodingEnvironment* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %27, i64 40, i32 8, i1 false)
  %28 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp, align 8
  %Dcodestrm_len = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %28, i32 0, i32 6
  %29 = load i32*, i32** %Dcodestrm_len, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp_copy, align 8
  %Dcodestrm_len14 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %31, i32 0, i32 6
  %32 = load i32*, i32** %Dcodestrm_len14, align 8
  store i32 %30, i32* %32, align 4
  store i32 %30, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %for.end
  %33 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %33, 4
  br i1 %cmp16, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.15
  %34 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %34 to i64
  %arrayidx20 = getelementptr inbounds [4 x %struct.BiContextType*], [4 x %struct.BiContextType*]* %mb_type_ctx_copy, i32 0, i64 %idxprom19
  %35 = load %struct.BiContextType*, %struct.BiContextType** %arrayidx20, align 8
  %36 = bitcast %struct.BiContextType* %35 to i8*
  %37 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %37 to i64
  %38 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %38, i32 0, i32 38
  %39 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %39, i32 0, i32 10
  %40 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  %mb_type_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %40, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts, i32 0, i64 %idxprom21
  %41 = bitcast [11 x %struct.BiContextType]* %arrayidx22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %41, i64 44, i32 2, i1 false)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.18
  %42 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %42, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  %43 = load %struct.BiContextType*, %struct.BiContextType** %mb_aff_ctx_copy, align 8
  %44 = bitcast %struct.BiContextType* %43 to i8*
  %45 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice26 = getelementptr inbounds %struct.img_par, %struct.img_par* %45, i32 0, i32 38
  %46 = load %struct.Slice*, %struct.Slice** %currentSlice26, align 8
  %mot_ctx27 = getelementptr inbounds %struct.Slice, %struct.Slice* %46, i32 0, i32 10
  %47 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx27, align 8
  %mb_aff_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %47, i32 0, i32 5
  %48 = bitcast [4 x %struct.BiContextType]* %mb_aff_contexts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %48, i64 16, i32 2, i1 false)
  store i32 0, i32* @last_dquant, align 4
  %49 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %50 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %51 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp, align 8
  call void @readMB_skip_flagInfo_CABAC(%struct.syntaxelement* %49, %struct.img_par* %50, %struct.DecodingEnvironment* %51)
  %52 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.25
  %53 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %53, i32 0, i32 1
  %54 = load i32, i32* %value1, align 4
  %cmp28 = icmp eq i32 %54, 0
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.true
  %55 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %55, i32 0, i32 2
  %56 = load i32, i32* %value2, align 4
  %cmp30 = icmp eq i32 %56, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.true
  %57 = phi i1 [ false, %cond.true ], [ %cmp30, %land.rhs ]
  %land.ext = zext i1 %57 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end.25
  %58 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value132 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %58, i32 0, i32 1
  %59 = load i32, i32* %value132, align 4
  %cmp33 = icmp eq i32 %59, 0
  %conv34 = zext i1 %cmp33 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.end
  %cond = phi i32 [ %land.ext, %land.end ], [ %conv34, %cond.false ]
  store i32 %cond, i32* %skip, align 4
  %60 = load i32, i32* %skip, align 4
  %tobool35 = icmp ne i32 %60, 0
  br i1 %tobool35, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %61 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %62 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %63 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp, align 8
  call void @readFieldModeInfo_CABAC(%struct.syntaxelement* %61, %struct.img_par* %62, %struct.DecodingEnvironment* %63)
  %64 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value136 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %64, i32 0, i32 1
  %65 = load i32, i32* %value136, align 4
  store i32 %65, i32* %field, align 4
  %66 = load i32, i32* %field, align 4
  %67 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr37 = getelementptr inbounds %struct.img_par, %struct.img_par* %67, i32 0, i32 1
  %68 = load i32, i32* %current_mb_nr37, align 4
  %sub38 = sub i32 %68, 1
  %idxprom39 = zext i32 %sub38 to i64
  %69 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data40 = getelementptr inbounds %struct.img_par, %struct.img_par* %69, i32 0, i32 39
  %70 = load %struct.macroblock*, %struct.macroblock** %mb_data40, align 8
  %arrayidx41 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %70, i64 %idxprom39
  %mb_field42 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx41, i32 0, i32 20
  store i32 %66, i32* %mb_field42, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %71 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr43 = getelementptr inbounds %struct.img_par, %struct.img_par* %71, i32 0, i32 1
  %72 = load i32, i32* %current_mb_nr43, align 4
  %dec = add i32 %72, -1
  store i32 %dec, i32* %current_mb_nr43, align 4
  %73 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp, align 8
  %74 = bitcast %struct.DecodingEnvironment* %73 to i8*
  %75 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp_copy, align 8
  %76 = bitcast %struct.DecodingEnvironment* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %76, i64 40, i32 8, i1 false)
  %77 = load i32, i32* %length, align 4
  %78 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp, align 8
  %Dcodestrm_len44 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %78, i32 0, i32 6
  %79 = load i32*, i32** %Dcodestrm_len44, align 8
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.56, %if.end
  %80 = load i32, i32* %i, align 4
  %cmp46 = icmp slt i32 %80, 4
  br i1 %cmp46, label %for.body.48, label %for.end.58

for.body.48:                                      ; preds = %for.cond.45
  %81 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %81 to i64
  %82 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice50 = getelementptr inbounds %struct.img_par, %struct.img_par* %82, i32 0, i32 38
  %83 = load %struct.Slice*, %struct.Slice** %currentSlice50, align 8
  %mot_ctx51 = getelementptr inbounds %struct.Slice, %struct.Slice* %83, i32 0, i32 10
  %84 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx51, align 8
  %mb_type_contexts52 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %84, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts52, i32 0, i64 %idxprom49
  %85 = bitcast [11 x %struct.BiContextType]* %arrayidx53 to i8*
  %86 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %86 to i64
  %arrayidx55 = getelementptr inbounds [4 x %struct.BiContextType*], [4 x %struct.BiContextType*]* %mb_type_ctx_copy, i32 0, i64 %idxprom54
  %87 = load %struct.BiContextType*, %struct.BiContextType** %arrayidx55, align 8
  %88 = bitcast %struct.BiContextType* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %88, i64 44, i32 2, i1 false)
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.48
  %89 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %89, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.45

for.end.58:                                       ; preds = %for.cond.45
  %90 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice59 = getelementptr inbounds %struct.img_par, %struct.img_par* %90, i32 0, i32 38
  %91 = load %struct.Slice*, %struct.Slice** %currentSlice59, align 8
  %mot_ctx60 = getelementptr inbounds %struct.Slice, %struct.Slice* %91, i32 0, i32 10
  %92 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx60, align 8
  %mb_aff_contexts61 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %92, i32 0, i32 5
  %93 = bitcast [4 x %struct.BiContextType]* %mb_aff_contexts61 to i8*
  %94 = load %struct.BiContextType*, %struct.BiContextType** %mb_aff_ctx_copy, align 8
  %95 = bitcast %struct.BiContextType* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %95, i64 16, i32 2, i1 false)
  call void @CheckAvailabilityOfNeighborsCABAC()
  %96 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp_copy, align 8
  %97 = bitcast %struct.DecodingEnvironment* %96 to i8*
  call void @free(i8* %97) #3
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.68, %for.end.58
  %98 = load i32, i32* %i, align 4
  %cmp63 = icmp slt i32 %98, 4
  br i1 %cmp63, label %for.body.65, label %for.end.70

for.body.65:                                      ; preds = %for.cond.62
  %99 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %99 to i64
  %arrayidx67 = getelementptr inbounds [4 x %struct.BiContextType*], [4 x %struct.BiContextType*]* %mb_type_ctx_copy, i32 0, i64 %idxprom66
  %100 = load %struct.BiContextType*, %struct.BiContextType** %arrayidx67, align 8
  %101 = bitcast %struct.BiContextType* %100 to i8*
  call void @free(i8* %101) #3
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.65
  %102 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %102, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond.62

for.end.70:                                       ; preds = %for.cond.62
  %103 = load %struct.BiContextType*, %struct.BiContextType** %mb_aff_ctx_copy, align 8
  %104 = bitcast %struct.BiContextType* %103 to i8*
  call void @free(i8* %104) #3
  %105 = load i32, i32* %skip, align 4
  ret i32 %105
}

declare void @CheckAvailabilityOfNeighbors() #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @readMB_skip_flagInfo_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %bframe = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 10
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 38
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 10
  %4 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %4, %struct.MotionInfoContexts** %ctx, align 8
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 1
  %6 = load i32, i32* %current_mb_nr, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 39
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %9 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else.28

if.then:                                          ; preds = %entry
  %10 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 4
  %11 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp1 = icmp eq %struct.macroblock* %11, null
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 4
  %13 = load %struct.macroblock*, %struct.macroblock** %mb_available_up4, align 8
  %skip_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i32 0, i32 21
  %14 = load i32, i32* %skip_flag, align 4
  %cmp5 = icmp eq i32 %14, 0
  %cond = select i1 %cmp5, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %15 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 5
  %16 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp7 = icmp eq %struct.macroblock* %16, null
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %a, align 4
  br label %if.end.16

if.else.10:                                       ; preds = %if.end
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 5
  %18 = load %struct.macroblock*, %struct.macroblock** %mb_available_left11, align 8
  %skip_flag12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 21
  %19 = load i32, i32* %skip_flag12, align 4
  %cmp13 = icmp eq i32 %19, 0
  %cond15 = select i1 %cmp13, i32 1, i32 0
  store i32 %cond15, i32* %a, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.10, %if.then.9
  %20 = load i32, i32* %a, align 4
  %add = add nsw i32 7, %20
  %21 = load i32, i32* %b, align 4
  %add17 = add nsw i32 %add, %21
  store i32 %add17, i32* %act_ctx, align 4
  %22 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %23 = load i32, i32* %act_ctx, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %24, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts, i32 0, i64 2
  %arrayidx20 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx19, i32 0, i64 %idxprom18
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %22, %struct.BiContextType* %arrayidx20)
  %cmp21 = icmp eq i32 %call, 1
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.end.16
  %25 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %25, i32 0, i32 2
  store i32 0, i32* %value2, align 4
  %26 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %26, i32 0, i32 1
  store i32 0, i32* %value1, align 4
  br label %if.end.27

if.else.24:                                       ; preds = %if.end.16
  %27 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value225 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %27, i32 0, i32 2
  store i32 1, i32* %value225, align 4
  %28 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value126 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %28, i32 0, i32 1
  store i32 1, i32* %value126, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.64

if.else.28:                                       ; preds = %entry
  %29 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up29 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %29, i32 0, i32 4
  %30 = load %struct.macroblock*, %struct.macroblock** %mb_available_up29, align 8
  %cmp30 = icmp eq %struct.macroblock* %30, null
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.28
  store i32 0, i32* %b, align 4
  br label %if.end.39

if.else.33:                                       ; preds = %if.else.28
  %31 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i32 0, i32 4
  %32 = load %struct.macroblock*, %struct.macroblock** %mb_available_up34, align 8
  %skip_flag35 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i32 0, i32 21
  %33 = load i32, i32* %skip_flag35, align 4
  %cmp36 = icmp eq i32 %33, 0
  %cond38 = select i1 %cmp36, i32 1, i32 0
  store i32 %cond38, i32* %b, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.33, %if.then.32
  %34 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %34, i32 0, i32 5
  %35 = load %struct.macroblock*, %struct.macroblock** %mb_available_left40, align 8
  %cmp41 = icmp eq %struct.macroblock* %35, null
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.39
  store i32 0, i32* %a, align 4
  br label %if.end.50

if.else.44:                                       ; preds = %if.end.39
  %36 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left45 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %36, i32 0, i32 5
  %37 = load %struct.macroblock*, %struct.macroblock** %mb_available_left45, align 8
  %skip_flag46 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i32 0, i32 21
  %38 = load i32, i32* %skip_flag46, align 4
  %cmp47 = icmp eq i32 %38, 0
  %cond49 = select i1 %cmp47, i32 1, i32 0
  store i32 %cond49, i32* %a, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.44, %if.then.43
  %39 = load i32, i32* %a, align 4
  %40 = load i32, i32* %b, align 4
  %add51 = add nsw i32 %39, %40
  store i32 %add51, i32* %act_ctx, align 4
  %41 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %42 = load i32, i32* %act_ctx, align 4
  %idxprom52 = sext i32 %42 to i64
  %43 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts53 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %43, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts53, i32 0, i64 1
  %arrayidx55 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx54, i32 0, i64 %idxprom52
  %call56 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %41, %struct.BiContextType* %arrayidx55)
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.end.50
  %44 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value160 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %44, i32 0, i32 1
  store i32 0, i32* %value160, align 4
  br label %if.end.63

if.else.61:                                       ; preds = %if.end.50
  %45 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value162 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %45, i32 0, i32 1
  store i32 1, i32* %value162, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.59
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.27
  %46 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value165 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %46, i32 0, i32 1
  %47 = load i32, i32* %value165, align 4
  %tobool66 = icmp ne i32 %47, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  store i32 0, i32* @last_dquant, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.64
  ret void
}

; Function Attrs: nounwind uwtable
define void @readMVD_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %mv_local_err = alloca i32, align 4
  %mv_sign = alloca i32, align 4
  %list_idx = alloca i32, align 4
  %k = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %subblock_x = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 40
  %1 = load i32, i32* %subblock_x, align 4
  store i32 %1, i32* %i, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %subblock_y = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 41
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
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 38
  %9 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %9, i32 0, i32 10
  %10 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %10, %struct.MotionInfoContexts** %ctx, align 8
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 1
  %12 = load i32, i32* %current_mb_nr, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 39
  %14 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %15 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.img_par, %struct.img_par* %15, i32 0, i32 1
  %16 = load i32, i32* %current_mb_nr2, align 4
  %17 = load i32, i32* %i, align 4
  %shl = shl i32 %17, 2
  %sub = sub nsw i32 %shl, 1
  %18 = load i32, i32* %j, align 4
  %shl3 = shl i32 %18, 2
  call void @getLuma4x4Neighbour(i32 %16, i32 %sub, i32 %shl3, %struct.pix_pos* %block_a)
  %19 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr4 = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 1
  %20 = load i32, i32* %current_mb_nr4, align 4
  %21 = load i32, i32* %i, align 4
  %shl5 = shl i32 %21, 2
  %22 = load i32, i32* %j, align 4
  %shl6 = shl i32 %22, 2
  %sub7 = sub nsw i32 %shl6, 1
  call void @getLuma4x4Neighbour(i32 %20, i32 %shl5, i32 %sub7, %struct.pix_pos* %block_b)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %23 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.else.42

if.then:                                          ; preds = %entry
  %24 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %24 to i64
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %25 = load i32, i32* %x, align 4
  %idxprom9 = sext i32 %25 to i64
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %26 = load i32, i32* %y, align 4
  %idxprom10 = sext i32 %26 to i64
  %27 = load i32, i32* %list_idx, align 4
  %idxprom11 = sext i32 %27 to i64
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %28 = load i32, i32* %mb_addr, align 4
  %idxprom12 = sext i32 %28 to i64
  %29 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data13 = getelementptr inbounds %struct.img_par, %struct.img_par* %29, i32 0, i32 39
  %30 = load %struct.macroblock*, %struct.macroblock** %mb_data13, align 8
  %arrayidx14 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i64 %idxprom12
  %mvd = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx14, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd, i32 0, i64 %idxprom11
  %arrayidx16 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx15, i32 0, i64 %idxprom10
  %arrayidx17 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx16, i32 0, i64 %idxprom9
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx17, i32 0, i64 %idxprom8
  %31 = load i32, i32* %arrayidx18, align 4
  %call = call i32 @iabs(i32 %31)
  store i32 %call, i32* %b, align 4
  %32 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.img_par, %struct.img_par* %32, i32 0, i32 44
  %33 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool19 = icmp ne i32 %33, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.then
  %34 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %34, 1
  br i1 %cmp, label %if.then.20, label %if.end.41

if.then.20:                                       ; preds = %land.lhs.true
  %35 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 20
  %36 = load i32, i32* %mb_field, align 4
  %cmp21 = icmp eq i32 %36, 0
  br i1 %cmp21, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %if.then.20
  %mb_addr23 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %37 = load i32, i32* %mb_addr23, align 4
  %idxprom24 = sext i32 %37 to i64
  %38 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data25 = getelementptr inbounds %struct.img_par, %struct.img_par* %38, i32 0, i32 39
  %39 = load %struct.macroblock*, %struct.macroblock** %mb_data25, align 8
  %arrayidx26 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i64 %idxprom24
  %mb_field27 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx26, i32 0, i32 20
  %40 = load i32, i32* %mb_field27, align 4
  %cmp28 = icmp eq i32 %40, 1
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true.22
  %41 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %41, 2
  store i32 %mul, i32* %b, align 4
  br label %if.end.40

if.else:                                          ; preds = %land.lhs.true.22, %if.then.20
  %42 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i32 0, i32 20
  %43 = load i32, i32* %mb_field30, align 4
  %cmp31 = icmp eq i32 %43, 1
  br i1 %cmp31, label %land.lhs.true.32, label %if.end

land.lhs.true.32:                                 ; preds = %if.else
  %mb_addr33 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %44 = load i32, i32* %mb_addr33, align 4
  %idxprom34 = sext i32 %44 to i64
  %45 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data35 = getelementptr inbounds %struct.img_par, %struct.img_par* %45, i32 0, i32 39
  %46 = load %struct.macroblock*, %struct.macroblock** %mb_data35, align 8
  %arrayidx36 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %46, i64 %idxprom34
  %mb_field37 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx36, i32 0, i32 20
  %47 = load i32, i32* %mb_field37, align 4
  %cmp38 = icmp eq i32 %47, 0
  br i1 %cmp38, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %land.lhs.true.32
  %48 = load i32, i32* %b, align 4
  %div = sdiv i32 %48, 2
  store i32 %div, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.39, %land.lhs.true.32, %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %if.then.29
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %land.lhs.true, %if.then
  br label %if.end.43

if.else.42:                                       ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.end.41
  %available44 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %49 = load i32, i32* %available44, align 4
  %tobool45 = icmp ne i32 %49, 0
  br i1 %tobool45, label %if.then.46, label %if.else.94

if.then.46:                                       ; preds = %if.end.43
  %50 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %50 to i64
  %x48 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %51 = load i32, i32* %x48, align 4
  %idxprom49 = sext i32 %51 to i64
  %y50 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %52 = load i32, i32* %y50, align 4
  %idxprom51 = sext i32 %52 to i64
  %53 = load i32, i32* %list_idx, align 4
  %idxprom52 = sext i32 %53 to i64
  %mb_addr53 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %54 = load i32, i32* %mb_addr53, align 4
  %idxprom54 = sext i32 %54 to i64
  %55 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data55 = getelementptr inbounds %struct.img_par, %struct.img_par* %55, i32 0, i32 39
  %56 = load %struct.macroblock*, %struct.macroblock** %mb_data55, align 8
  %arrayidx56 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %56, i64 %idxprom54
  %mvd57 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx56, i32 0, i32 7
  %arrayidx58 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %mvd57, i32 0, i64 %idxprom52
  %arrayidx59 = getelementptr inbounds [4 x [4 x [2 x i32]]], [4 x [4 x [2 x i32]]]* %arrayidx58, i32 0, i64 %idxprom51
  %arrayidx60 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %arrayidx59, i32 0, i64 %idxprom49
  %arrayidx61 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx60, i32 0, i64 %idxprom47
  %57 = load i32, i32* %arrayidx61, align 4
  %call62 = call i32 @iabs(i32 %57)
  store i32 %call62, i32* %a, align 4
  %58 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MbaffFrameFlag63 = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 44
  %59 = load i32, i32* %MbaffFrameFlag63, align 4
  %tobool64 = icmp ne i32 %59, 0
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.93

land.lhs.true.65:                                 ; preds = %if.then.46
  %60 = load i32, i32* %k, align 4
  %cmp66 = icmp eq i32 %60, 1
  br i1 %cmp66, label %if.then.67, label %if.end.93

if.then.67:                                       ; preds = %land.lhs.true.65
  %61 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field68 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %61, i32 0, i32 20
  %62 = load i32, i32* %mb_field68, align 4
  %cmp69 = icmp eq i32 %62, 0
  br i1 %cmp69, label %land.lhs.true.70, label %if.else.79

land.lhs.true.70:                                 ; preds = %if.then.67
  %mb_addr71 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %63 = load i32, i32* %mb_addr71, align 4
  %idxprom72 = sext i32 %63 to i64
  %64 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data73 = getelementptr inbounds %struct.img_par, %struct.img_par* %64, i32 0, i32 39
  %65 = load %struct.macroblock*, %struct.macroblock** %mb_data73, align 8
  %arrayidx74 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i64 %idxprom72
  %mb_field75 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx74, i32 0, i32 20
  %66 = load i32, i32* %mb_field75, align 4
  %cmp76 = icmp eq i32 %66, 1
  br i1 %cmp76, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %land.lhs.true.70
  %67 = load i32, i32* %a, align 4
  %mul78 = mul nsw i32 %67, 2
  store i32 %mul78, i32* %a, align 4
  br label %if.end.92

if.else.79:                                       ; preds = %land.lhs.true.70, %if.then.67
  %68 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field80 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %68, i32 0, i32 20
  %69 = load i32, i32* %mb_field80, align 4
  %cmp81 = icmp eq i32 %69, 1
  br i1 %cmp81, label %land.lhs.true.82, label %if.end.91

land.lhs.true.82:                                 ; preds = %if.else.79
  %mb_addr83 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %70 = load i32, i32* %mb_addr83, align 4
  %idxprom84 = sext i32 %70 to i64
  %71 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data85 = getelementptr inbounds %struct.img_par, %struct.img_par* %71, i32 0, i32 39
  %72 = load %struct.macroblock*, %struct.macroblock** %mb_data85, align 8
  %arrayidx86 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %72, i64 %idxprom84
  %mb_field87 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx86, i32 0, i32 20
  %73 = load i32, i32* %mb_field87, align 4
  %cmp88 = icmp eq i32 %73, 0
  br i1 %cmp88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %land.lhs.true.82
  %74 = load i32, i32* %a, align 4
  %div90 = sdiv i32 %74, 2
  store i32 %div90, i32* %a, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %land.lhs.true.82, %if.else.79
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.77
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.65, %if.then.46
  br label %if.end.95

if.else.94:                                       ; preds = %if.end.43
  store i32 0, i32* %a, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.end.93
  %75 = load i32, i32* %a, align 4
  %76 = load i32, i32* %b, align 4
  %add = add nsw i32 %75, %76
  store i32 %add, i32* %mv_local_err, align 4
  %cmp96 = icmp slt i32 %add, 3
  br i1 %cmp96, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %if.end.95
  %77 = load i32, i32* %k, align 4
  %mul98 = mul nsw i32 5, %77
  store i32 %mul98, i32* %act_ctx, align 4
  br label %if.end.108

if.else.99:                                       ; preds = %if.end.95
  %78 = load i32, i32* %mv_local_err, align 4
  %cmp100 = icmp sgt i32 %78, 32
  br i1 %cmp100, label %if.then.101, label %if.else.104

if.then.101:                                      ; preds = %if.else.99
  %79 = load i32, i32* %k, align 4
  %mul102 = mul nsw i32 5, %79
  %add103 = add nsw i32 %mul102, 3
  store i32 %add103, i32* %act_ctx, align 4
  br label %if.end.107

if.else.104:                                      ; preds = %if.else.99
  %80 = load i32, i32* %k, align 4
  %mul105 = mul nsw i32 5, %80
  %add106 = add nsw i32 %mul105, 2
  store i32 %add106, i32* %act_ctx, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.101
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.97
  %81 = load i32, i32* %act_ctx, align 4
  %82 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %82, i32 0, i32 6
  store i32 %81, i32* %context, align 4
  %83 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %84 = load i32, i32* %act_ctx, align 4
  %idxprom109 = sext i32 %84 to i64
  %85 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mv_res_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %85, i32 0, i32 2
  %arrayidx110 = getelementptr inbounds [2 x [10 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]]* %mv_res_contexts, i32 0, i64 0
  %arrayidx111 = getelementptr inbounds [10 x %struct.BiContextType], [10 x %struct.BiContextType]* %arrayidx110, i32 0, i64 %idxprom109
  %call112 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %83, %struct.BiContextType* %arrayidx111)
  store i32 %call112, i32* %act_sym, align 4
  %86 = load i32, i32* %act_sym, align 4
  %cmp113 = icmp ne i32 %86, 0
  br i1 %cmp113, label %if.then.114, label %if.end.124

if.then.114:                                      ; preds = %if.end.108
  %87 = load i32, i32* %k, align 4
  %mul115 = mul nsw i32 5, %87
  store i32 %mul115, i32* %act_ctx, align 4
  %88 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %89 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mv_res_contexts116 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %89, i32 0, i32 2
  %arrayidx117 = getelementptr inbounds [2 x [10 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]]* %mv_res_contexts116, i32 0, i64 1
  %arraydecay = getelementptr inbounds [10 x %struct.BiContextType], [10 x %struct.BiContextType]* %arrayidx117, i32 0, i32 0
  %90 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %90 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %call118 = call i32 @unary_exp_golomb_mv_decode(%struct.DecodingEnvironment* %88, %struct.BiContextType* %add.ptr, i32 3)
  store i32 %call118, i32* %act_sym, align 4
  %91 = load i32, i32* %act_sym, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %act_sym, align 4
  %92 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %call119 = call i32 @biari_decode_symbol_eq_prob(%struct.DecodingEnvironment* %92)
  store i32 %call119, i32* %mv_sign, align 4
  %93 = load i32, i32* %mv_sign, align 4
  %tobool120 = icmp ne i32 %93, 0
  br i1 %tobool120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.then.114
  %94 = load i32, i32* %act_sym, align 4
  %sub122 = sub nsw i32 0, %94
  store i32 %sub122, i32* %act_sym, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.then.114
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.108
  %95 = load i32, i32* %act_sym, align 4
  %96 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %96, i32 0, i32 1
  store i32 %95, i32* %value1, align 4
  ret void
}

declare void @getLuma4x4Neighbour(i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iabs(i32 %x) #4 {
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

; Function Attrs: nounwind uwtable
define i32 @unary_exp_golomb_mv_decode(%struct.DecodingEnvironment* %dep_dp, %struct.BiContextType* %ctx, i32 %max_bin) #0 {
entry:
  %retval = alloca i32, align 4
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %max_bin.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %bin = alloca i32, align 4
  %symbol = alloca i32, align 4
  %exp_start = alloca i32, align 4
  %ictx = alloca %struct.BiContextType*, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 %max_bin, i32* %max_bin.addr, align 4
  store i32 1, i32* %bin, align 4
  store i32 8, i32* %exp_start, align 4
  %0 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  store %struct.BiContextType* %0, %struct.BiContextType** %ictx, align 8
  %1 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %2 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %1, %struct.BiContextType* %2)
  store i32 %call, i32* %symbol, align 4
  %3 = load i32, i32* %symbol, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %symbol, align 4
  store i32 1, i32* %k, align 4
  %4 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %incdec.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %4, i32 1
  store %struct.BiContextType* %incdec.ptr, %struct.BiContextType** %ictx, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %5 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %6 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %call1 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %5, %struct.BiContextType* %6)
  store i32 %call1, i32* %l, align 4
  %7 = load i32, i32* %bin, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %bin, align 4
  %cmp2 = icmp eq i32 %inc, 2
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body
  %8 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %8, i32 1
  store %struct.BiContextType* %incdec.ptr4, %struct.BiContextType** %ictx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body
  %9 = load i32, i32* %bin, align 4
  %10 = load i32, i32* %max_bin.addr, align 4
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %11 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %incdec.ptr7 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %11, i32 1
  store %struct.BiContextType* %incdec.ptr7, %struct.BiContextType** %ictx, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %12 = load i32, i32* %symbol, align 4
  %inc9 = add i32 %12, 1
  store i32 %inc9, i32* %symbol, align 4
  %13 = load i32, i32* %k, align 4
  %inc10 = add i32 %13, 1
  store i32 %inc10, i32* %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  %14 = load i32, i32* %l, align 4
  %cmp11 = icmp ne i32 %14, 0
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %exp_start, align 4
  %cmp12 = icmp ne i32 %15, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %17 = phi i1 [ false, %do.cond ], [ %cmp12, %land.rhs ]
  br i1 %17, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %18 = load i32, i32* %l, align 4
  %cmp13 = icmp ne i32 %18, 0
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %do.end
  %19 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %call15 = call i32 @exp_golomb_decode_eq_prob(%struct.DecodingEnvironment* %19, i32 3)
  %add = add i32 %call15, 1
  %20 = load i32, i32* %symbol, align 4
  %add16 = add i32 %20, %add
  store i32 %add16, i32* %symbol, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %do.end
  %21 = load i32, i32* %symbol, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @biari_decode_symbol_eq_prob(%struct.DecodingEnvironment*) #2

; Function Attrs: nounwind uwtable
define void @readB8_typeInfo_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %act_sym = alloca i32, align 4
  %bframe = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  store i32 0, i32* %act_sym, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 10
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 38
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 10
  %4 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %4, %struct.MotionInfoContexts** %ctx, align 8
  %5 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else.20, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %7 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx, i32 0, i64 1
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %6, %struct.BiContextType* %arrayidx1)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %act_sym, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.then
  %8 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %9 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts4 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts4, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx5, i32 0, i64 3
  %call7 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %8, %struct.BiContextType* %arrayidx6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.17

if.then.9:                                        ; preds = %if.else
  %10 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %11 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts10 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %11, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx11, i32 0, i64 4
  %call13 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %10, %struct.BiContextType* %arrayidx12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.then.9
  store i32 2, i32* %act_sym, align 4
  br label %if.end

if.else.16:                                       ; preds = %if.then.9
  store i32 3, i32* %act_sym, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.15
  br label %if.end.18

if.else.17:                                       ; preds = %if.else
  store i32 1, i32* %act_sym, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.3
  br label %if.end.100

if.else.20:                                       ; preds = %entry
  %12 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %13 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts21 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %13, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts21, i32 0, i64 1
  %arrayidx23 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx22, i32 0, i64 0
  %call24 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %12, %struct.BiContextType* %arrayidx23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.98

if.then.26:                                       ; preds = %if.else.20
  %14 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %15 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts27 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %15, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts27, i32 0, i64 1
  %arrayidx29 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx28, i32 0, i64 1
  %call30 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %14, %struct.BiContextType* %arrayidx29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.87

if.then.32:                                       ; preds = %if.then.26
  %16 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %17 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts33 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %17, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts33, i32 0, i64 1
  %arrayidx35 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx34, i32 0, i64 2
  %call36 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %16, %struct.BiContextType* %arrayidx35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.69

if.then.38:                                       ; preds = %if.then.32
  %18 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %19 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts39 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %19, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts39, i32 0, i64 1
  %arrayidx41 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx40, i32 0, i64 3
  %call42 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %18, %struct.BiContextType* %arrayidx41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.52

if.then.44:                                       ; preds = %if.then.38
  store i32 10, i32* %act_sym, align 4
  %20 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %21 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts45 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %21, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts45, i32 0, i64 1
  %arrayidx47 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx46, i32 0, i64 3
  %call48 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %20, %struct.BiContextType* %arrayidx47)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.44
  %22 = load i32, i32* %act_sym, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %act_sym, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.then.44
  br label %if.end.68

if.else.52:                                       ; preds = %if.then.38
  store i32 6, i32* %act_sym, align 4
  %23 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %24 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts53 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %24, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts53, i32 0, i64 1
  %arrayidx55 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx54, i32 0, i64 3
  %call56 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %23, %struct.BiContextType* %arrayidx55)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else.52
  %25 = load i32, i32* %act_sym, align 4
  %add = add nsw i32 %25, 2
  store i32 %add, i32* %act_sym, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.else.52
  %26 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %27 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts60 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %27, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts60, i32 0, i64 1
  %arrayidx62 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx61, i32 0, i64 3
  %call63 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %26, %struct.BiContextType* %arrayidx62)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.59
  %28 = load i32, i32* %act_sym, align 4
  %inc66 = add nsw i32 %28, 1
  store i32 %inc66, i32* %act_sym, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.59
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.51
  br label %if.end.86

if.else.69:                                       ; preds = %if.then.32
  store i32 2, i32* %act_sym, align 4
  %29 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %30 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts70 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %30, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts70, i32 0, i64 1
  %arrayidx72 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx71, i32 0, i64 3
  %call73 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %29, %struct.BiContextType* %arrayidx72)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.else.69
  %31 = load i32, i32* %act_sym, align 4
  %add76 = add nsw i32 %31, 2
  store i32 %add76, i32* %act_sym, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.else.69
  %32 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %33 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts78 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %33, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts78, i32 0, i64 1
  %arrayidx80 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx79, i32 0, i64 3
  %call81 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %32, %struct.BiContextType* %arrayidx80)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.77
  %34 = load i32, i32* %act_sym, align 4
  %add84 = add nsw i32 %34, 1
  store i32 %add84, i32* %act_sym, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.77
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.68
  br label %if.end.96

if.else.87:                                       ; preds = %if.then.26
  %35 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %36 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %b8_type_contexts88 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %36, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [2 x [9 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]]* %b8_type_contexts88, i32 0, i64 1
  %arrayidx90 = getelementptr inbounds [9 x %struct.BiContextType], [9 x %struct.BiContextType]* %arrayidx89, i32 0, i64 3
  %call91 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %35, %struct.BiContextType* %arrayidx90)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.else.87
  store i32 1, i32* %act_sym, align 4
  br label %if.end.95

if.else.94:                                       ; preds = %if.else.87
  store i32 0, i32* %act_sym, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.then.93
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.86
  %37 = load i32, i32* %act_sym, align 4
  %inc97 = add nsw i32 %37, 1
  store i32 %inc97, i32* %act_sym, align 4
  br label %if.end.99

if.else.98:                                       ; preds = %if.else.20
  store i32 0, i32* %act_sym, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.end.96
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.19
  %38 = load i32, i32* %act_sym, align 4
  %39 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %39, i32 0, i32 1
  store i32 %38, i32* %value1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @readMB_transform_size_flag_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  store i32 0, i32* %act_ctx, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 10
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %2, %struct.MotionInfoContexts** %ctx, align 8
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 1
  %4 = load i32, i32* %current_mb_nr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 39
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %7 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %7, i32 0, i32 4
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp = icmp eq %struct.macroblock* %8, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 4
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_available_up1, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 30
  %11 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  store i32 %11, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 5
  %13 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp2 = icmp eq %struct.macroblock* %13, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %a, align 4
  br label %if.end.7

if.else.4:                                        ; preds = %if.end
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 5
  %15 = load %struct.macroblock*, %struct.macroblock** %mb_available_left5, align 8
  %luma_transform_size_8x8_flag6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 30
  %16 = load i32, i32* %luma_transform_size_8x8_flag6, align 4
  store i32 %16, i32* %a, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.4, %if.then.3
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %b, align 4
  %add = add nsw i32 %17, %18
  store i32 %add, i32* %act_ctx, align 4
  %19 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %20 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %transform_size_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %20, i32 0, i32 6
  %arraydecay = getelementptr inbounds [3 x %struct.BiContextType], [3 x %struct.BiContextType]* %transform_size_contexts, i32 0, i32 0
  %21 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %19, %struct.BiContextType* %add.ptr)
  store i32 %call, i32* %act_sym, align 4
  %22 = load i32, i32* %act_sym, align 4
  %23 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %23, i32 0, i32 1
  store i32 %22, i32* %value1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @readMB_typeInfo_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %bframe = alloca i32, align 4
  %mode_sym = alloca i32, align 4
  %ct = alloca i32, align 4
  %curr_mb_type = alloca i32, align 4
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 10
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  store i32 0, i32* %ct, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 38
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 10
  %4 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %4, %struct.MotionInfoContexts** %ctx, align 8
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 1
  %6 = load i32, i32* %current_mb_nr, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 39
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type1 = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 10
  %10 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %10, 2
  br i1 %cmp2, label %if.then, label %if.else.86

if.then:                                          ; preds = %entry
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 4
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp4 = icmp eq %struct.macroblock* %12, null
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %b, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i32 0, i32 4
  %14 = load %struct.macroblock*, %struct.macroblock** %mb_available_up7, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 6
  %15 = load i32, i32* %mb_type, align 4
  %cmp8 = icmp ne i32 %15, 9
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 4
  %17 = load %struct.macroblock*, %struct.macroblock** %mb_available_up10, align 8
  %mb_type11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 6
  %18 = load i32, i32* %mb_type11, align 4
  %cmp12 = icmp ne i32 %18, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %19 = phi i1 [ false, %if.else ], [ %cmp12, %land.rhs ]
  %cond = select i1 %19, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then.6
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 5
  %21 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp14 = icmp eq %struct.macroblock* %21, null
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end
  store i32 0, i32* %a, align 4
  br label %if.end.29

if.else.17:                                       ; preds = %if.end
  %22 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 5
  %23 = load %struct.macroblock*, %struct.macroblock** %mb_available_left18, align 8
  %mb_type19 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 6
  %24 = load i32, i32* %mb_type19, align 4
  %cmp20 = icmp ne i32 %24, 9
  br i1 %cmp20, label %land.rhs.22, label %land.end.27

land.rhs.22:                                      ; preds = %if.else.17
  %25 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i32 0, i32 5
  %26 = load %struct.macroblock*, %struct.macroblock** %mb_available_left23, align 8
  %mb_type24 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i32 0, i32 6
  %27 = load i32, i32* %mb_type24, align 4
  %cmp25 = icmp ne i32 %27, 13
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.22, %if.else.17
  %28 = phi i1 [ false, %if.else.17 ], [ %cmp25, %land.rhs.22 ]
  %cond28 = select i1 %28, i32 1, i32 0
  store i32 %cond28, i32* %a, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %land.end.27, %if.then.16
  %29 = load i32, i32* %a, align 4
  %30 = load i32, i32* %b, align 4
  %add = add nsw i32 %29, %30
  store i32 %add, i32* %act_ctx, align 4
  %31 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %32 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %32, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts, i32 0, i64 0
  %arraydecay = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx30, i32 0, i32 0
  %33 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %31, %struct.BiContextType* %add.ptr)
  store i32 %call, i32* %act_sym, align 4
  %34 = load i32, i32* %act_ctx, align 4
  %35 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %35, i32 0, i32 6
  store i32 %34, i32* %context, align 4
  %36 = load i32, i32* %act_sym, align 4
  %cmp31 = icmp eq i32 %36, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.end.29
  %37 = load i32, i32* %act_sym, align 4
  store i32 %37, i32* %curr_mb_type, align 4
  br label %if.end.85

if.else.34:                                       ; preds = %if.end.29
  %38 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %call35 = call i32 @biari_decode_final(%struct.DecodingEnvironment* %38)
  store i32 %call35, i32* %mode_sym, align 4
  %39 = load i32, i32* %mode_sym, align 4
  %cmp36 = icmp eq i32 %39, 1
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.34
  store i32 25, i32* %curr_mb_type, align 4
  br label %if.end.84

if.else.39:                                       ; preds = %if.else.34
  store i32 1, i32* %act_sym, align 4
  store i32 4, i32* %act_ctx, align 4
  %40 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %41 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts40 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %41, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts40, i32 0, i64 0
  %arraydecay42 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx41, i32 0, i32 0
  %42 = load i32, i32* %act_ctx, align 4
  %idx.ext43 = sext i32 %42 to i64
  %add.ptr44 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay42, i64 %idx.ext43
  %call45 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %40, %struct.BiContextType* %add.ptr44)
  store i32 %call45, i32* %mode_sym, align 4
  %43 = load i32, i32* %mode_sym, align 4
  %mul = mul nsw i32 %43, 12
  %44 = load i32, i32* %act_sym, align 4
  %add46 = add nsw i32 %44, %mul
  store i32 %add46, i32* %act_sym, align 4
  store i32 5, i32* %act_ctx, align 4
  %45 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %46 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts47 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %46, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts47, i32 0, i64 0
  %arraydecay49 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx48, i32 0, i32 0
  %47 = load i32, i32* %act_ctx, align 4
  %idx.ext50 = sext i32 %47 to i64
  %add.ptr51 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay49, i64 %idx.ext50
  %call52 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %45, %struct.BiContextType* %add.ptr51)
  store i32 %call52, i32* %mode_sym, align 4
  %48 = load i32, i32* %mode_sym, align 4
  %cmp53 = icmp ne i32 %48, 0
  br i1 %cmp53, label %if.then.55, label %if.end.68

if.then.55:                                       ; preds = %if.else.39
  store i32 6, i32* %act_ctx, align 4
  %49 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %50 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts56 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %50, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts56, i32 0, i64 0
  %arraydecay58 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx57, i32 0, i32 0
  %51 = load i32, i32* %act_ctx, align 4
  %idx.ext59 = sext i32 %51 to i64
  %add.ptr60 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay58, i64 %idx.ext59
  %call61 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %49, %struct.BiContextType* %add.ptr60)
  store i32 %call61, i32* %mode_sym, align 4
  %52 = load i32, i32* %act_sym, align 4
  %add62 = add nsw i32 %52, 4
  store i32 %add62, i32* %act_sym, align 4
  %53 = load i32, i32* %mode_sym, align 4
  %cmp63 = icmp ne i32 %53, 0
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.then.55
  %54 = load i32, i32* %act_sym, align 4
  %add66 = add nsw i32 %54, 4
  store i32 %add66, i32* %act_sym, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.then.55
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.else.39
  store i32 7, i32* %act_ctx, align 4
  %55 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %56 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts69 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %56, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts69, i32 0, i64 0
  %arraydecay71 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx70, i32 0, i32 0
  %57 = load i32, i32* %act_ctx, align 4
  %idx.ext72 = sext i32 %57 to i64
  %add.ptr73 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay71, i64 %idx.ext72
  %call74 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %55, %struct.BiContextType* %add.ptr73)
  store i32 %call74, i32* %mode_sym, align 4
  %58 = load i32, i32* %mode_sym, align 4
  %mul75 = mul nsw i32 %58, 2
  %59 = load i32, i32* %act_sym, align 4
  %add76 = add nsw i32 %59, %mul75
  store i32 %add76, i32* %act_sym, align 4
  store i32 8, i32* %act_ctx, align 4
  %60 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %61 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts77 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %61, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts77, i32 0, i64 0
  %arraydecay79 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx78, i32 0, i32 0
  %62 = load i32, i32* %act_ctx, align 4
  %idx.ext80 = sext i32 %62 to i64
  %add.ptr81 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay79, i64 %idx.ext80
  %call82 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %60, %struct.BiContextType* %add.ptr81)
  store i32 %call82, i32* %mode_sym, align 4
  %63 = load i32, i32* %mode_sym, align 4
  %64 = load i32, i32* %act_sym, align 4
  %add83 = add nsw i32 %64, %63
  store i32 %add83, i32* %act_sym, align 4
  %65 = load i32, i32* %act_sym, align 4
  store i32 %65, i32* %curr_mb_type, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.68, %if.then.38
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.33
  br label %if.end.448

if.else.86:                                       ; preds = %entry
  %66 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type87 = getelementptr inbounds %struct.img_par, %struct.img_par* %66, i32 0, i32 10
  %67 = load i32, i32* %type87, align 4
  %cmp88 = icmp eq i32 %67, 4
  br i1 %cmp88, label %if.then.90, label %if.else.212

if.then.90:                                       ; preds = %if.else.86
  %68 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up91 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %68, i32 0, i32 4
  %69 = load %struct.macroblock*, %struct.macroblock** %mb_available_up91, align 8
  %cmp92 = icmp eq %struct.macroblock* %69, null
  br i1 %cmp92, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %if.then.90
  store i32 0, i32* %b, align 4
  br label %if.end.101

if.else.95:                                       ; preds = %if.then.90
  %70 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up96 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %70, i32 0, i32 4
  %71 = load %struct.macroblock*, %struct.macroblock** %mb_available_up96, align 8
  %mb_type97 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %71, i32 0, i32 6
  %72 = load i32, i32* %mb_type97, align 4
  %cmp98 = icmp ne i32 %72, 12
  %cond100 = select i1 %cmp98, i32 1, i32 0
  store i32 %cond100, i32* %b, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.95, %if.then.94
  %73 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left102 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %73, i32 0, i32 5
  %74 = load %struct.macroblock*, %struct.macroblock** %mb_available_left102, align 8
  %cmp103 = icmp eq %struct.macroblock* %74, null
  br i1 %cmp103, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.end.101
  store i32 0, i32* %a, align 4
  br label %if.end.112

if.else.106:                                      ; preds = %if.end.101
  %75 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left107 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %75, i32 0, i32 5
  %76 = load %struct.macroblock*, %struct.macroblock** %mb_available_left107, align 8
  %mb_type108 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %76, i32 0, i32 6
  %77 = load i32, i32* %mb_type108, align 4
  %cmp109 = icmp ne i32 %77, 12
  %cond111 = select i1 %cmp109, i32 1, i32 0
  store i32 %cond111, i32* %a, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.106, %if.then.105
  %78 = load i32, i32* %a, align 4
  %79 = load i32, i32* %b, align 4
  %add113 = add nsw i32 %78, %79
  store i32 %add113, i32* %act_ctx, align 4
  %80 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %81 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts114 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %81, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts114, i32 0, i64 1
  %arraydecay116 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx115, i32 0, i32 0
  %82 = load i32, i32* %act_ctx, align 4
  %idx.ext117 = sext i32 %82 to i64
  %add.ptr118 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay116, i64 %idx.ext117
  %call119 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %80, %struct.BiContextType* %add.ptr118)
  store i32 %call119, i32* %act_sym, align 4
  %83 = load i32, i32* %act_ctx, align 4
  %84 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context120 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %84, i32 0, i32 6
  store i32 %83, i32* %context120, align 4
  %85 = load i32, i32* %act_sym, align 4
  %cmp121 = icmp eq i32 %85, 0
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.end.112
  store i32 0, i32* %curr_mb_type, align 4
  br label %if.end.211

if.else.124:                                      ; preds = %if.end.112
  %86 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up125 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i32 0, i32 4
  %87 = load %struct.macroblock*, %struct.macroblock** %mb_available_up125, align 8
  %cmp126 = icmp eq %struct.macroblock* %87, null
  br i1 %cmp126, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %if.else.124
  store i32 0, i32* %b, align 4
  br label %if.end.135

if.else.129:                                      ; preds = %if.else.124
  %88 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up130 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %88, i32 0, i32 4
  %89 = load %struct.macroblock*, %struct.macroblock** %mb_available_up130, align 8
  %mb_type131 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %89, i32 0, i32 6
  %90 = load i32, i32* %mb_type131, align 4
  %cmp132 = icmp ne i32 %90, 9
  %cond134 = select i1 %cmp132, i32 1, i32 0
  store i32 %cond134, i32* %b, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.129, %if.then.128
  %91 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left136 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %91, i32 0, i32 5
  %92 = load %struct.macroblock*, %struct.macroblock** %mb_available_left136, align 8
  %cmp137 = icmp eq %struct.macroblock* %92, null
  br i1 %cmp137, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %if.end.135
  store i32 0, i32* %a, align 4
  br label %if.end.146

if.else.140:                                      ; preds = %if.end.135
  %93 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left141 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %93, i32 0, i32 5
  %94 = load %struct.macroblock*, %struct.macroblock** %mb_available_left141, align 8
  %mb_type142 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %94, i32 0, i32 6
  %95 = load i32, i32* %mb_type142, align 4
  %cmp143 = icmp ne i32 %95, 9
  %cond145 = select i1 %cmp143, i32 1, i32 0
  store i32 %cond145, i32* %a, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.140, %if.then.139
  %96 = load i32, i32* %a, align 4
  %97 = load i32, i32* %b, align 4
  %add147 = add nsw i32 %96, %97
  store i32 %add147, i32* %act_ctx, align 4
  %98 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %99 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts148 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %99, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts148, i32 0, i64 0
  %arraydecay150 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx149, i32 0, i32 0
  %100 = load i32, i32* %act_ctx, align 4
  %idx.ext151 = sext i32 %100 to i64
  %add.ptr152 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay150, i64 %idx.ext151
  %call153 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %98, %struct.BiContextType* %add.ptr152)
  store i32 %call153, i32* %act_sym, align 4
  %101 = load i32, i32* %act_ctx, align 4
  %102 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context154 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %102, i32 0, i32 6
  store i32 %101, i32* %context154, align 4
  %103 = load i32, i32* %act_sym, align 4
  %cmp155 = icmp eq i32 %103, 0
  br i1 %cmp155, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %if.end.146
  store i32 1, i32* %curr_mb_type, align 4
  br label %if.end.210

if.else.158:                                      ; preds = %if.end.146
  %104 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %call159 = call i32 @biari_decode_final(%struct.DecodingEnvironment* %104)
  store i32 %call159, i32* %mode_sym, align 4
  %105 = load i32, i32* %mode_sym, align 4
  %cmp160 = icmp eq i32 %105, 1
  br i1 %cmp160, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %if.else.158
  store i32 26, i32* %curr_mb_type, align 4
  br label %if.end.209

if.else.163:                                      ; preds = %if.else.158
  store i32 2, i32* %act_sym, align 4
  store i32 4, i32* %act_ctx, align 4
  %106 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %107 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts164 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %107, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts164, i32 0, i64 0
  %arraydecay166 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx165, i32 0, i32 0
  %108 = load i32, i32* %act_ctx, align 4
  %idx.ext167 = sext i32 %108 to i64
  %add.ptr168 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay166, i64 %idx.ext167
  %call169 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %106, %struct.BiContextType* %add.ptr168)
  store i32 %call169, i32* %mode_sym, align 4
  %109 = load i32, i32* %mode_sym, align 4
  %mul170 = mul nsw i32 %109, 12
  %110 = load i32, i32* %act_sym, align 4
  %add171 = add nsw i32 %110, %mul170
  store i32 %add171, i32* %act_sym, align 4
  store i32 5, i32* %act_ctx, align 4
  %111 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %112 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts172 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %112, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts172, i32 0, i64 0
  %arraydecay174 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx173, i32 0, i32 0
  %113 = load i32, i32* %act_ctx, align 4
  %idx.ext175 = sext i32 %113 to i64
  %add.ptr176 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay174, i64 %idx.ext175
  %call177 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %111, %struct.BiContextType* %add.ptr176)
  store i32 %call177, i32* %mode_sym, align 4
  %114 = load i32, i32* %mode_sym, align 4
  %cmp178 = icmp ne i32 %114, 0
  br i1 %cmp178, label %if.then.180, label %if.end.193

if.then.180:                                      ; preds = %if.else.163
  store i32 6, i32* %act_ctx, align 4
  %115 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %116 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts181 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %116, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts181, i32 0, i64 0
  %arraydecay183 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx182, i32 0, i32 0
  %117 = load i32, i32* %act_ctx, align 4
  %idx.ext184 = sext i32 %117 to i64
  %add.ptr185 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay183, i64 %idx.ext184
  %call186 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %115, %struct.BiContextType* %add.ptr185)
  store i32 %call186, i32* %mode_sym, align 4
  %118 = load i32, i32* %act_sym, align 4
  %add187 = add nsw i32 %118, 4
  store i32 %add187, i32* %act_sym, align 4
  %119 = load i32, i32* %mode_sym, align 4
  %cmp188 = icmp ne i32 %119, 0
  br i1 %cmp188, label %if.then.190, label %if.end.192

if.then.190:                                      ; preds = %if.then.180
  %120 = load i32, i32* %act_sym, align 4
  %add191 = add nsw i32 %120, 4
  store i32 %add191, i32* %act_sym, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.190, %if.then.180
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.else.163
  store i32 7, i32* %act_ctx, align 4
  %121 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %122 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts194 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %122, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts194, i32 0, i64 0
  %arraydecay196 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx195, i32 0, i32 0
  %123 = load i32, i32* %act_ctx, align 4
  %idx.ext197 = sext i32 %123 to i64
  %add.ptr198 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay196, i64 %idx.ext197
  %call199 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %121, %struct.BiContextType* %add.ptr198)
  store i32 %call199, i32* %mode_sym, align 4
  %124 = load i32, i32* %mode_sym, align 4
  %mul200 = mul nsw i32 %124, 2
  %125 = load i32, i32* %act_sym, align 4
  %add201 = add nsw i32 %125, %mul200
  store i32 %add201, i32* %act_sym, align 4
  store i32 8, i32* %act_ctx, align 4
  %126 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %127 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts202 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %127, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts202, i32 0, i64 0
  %arraydecay204 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx203, i32 0, i32 0
  %128 = load i32, i32* %act_ctx, align 4
  %idx.ext205 = sext i32 %128 to i64
  %add.ptr206 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay204, i64 %idx.ext205
  %call207 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %126, %struct.BiContextType* %add.ptr206)
  store i32 %call207, i32* %mode_sym, align 4
  %129 = load i32, i32* %mode_sym, align 4
  %130 = load i32, i32* %act_sym, align 4
  %add208 = add nsw i32 %130, %129
  store i32 %add208, i32* %act_sym, align 4
  %131 = load i32, i32* %act_sym, align 4
  store i32 %131, i32* %curr_mb_type, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.193, %if.then.162
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.157
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.123
  br label %if.end.447

if.else.212:                                      ; preds = %if.else.86
  %132 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %132, 0
  br i1 %tobool, label %if.then.213, label %if.else.340

if.then.213:                                      ; preds = %if.else.212
  store i32 1, i32* %ct, align 4
  %133 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up214 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %133, i32 0, i32 4
  %134 = load %struct.macroblock*, %struct.macroblock** %mb_available_up214, align 8
  %cmp215 = icmp eq %struct.macroblock* %134, null
  br i1 %cmp215, label %if.then.217, label %if.else.218

if.then.217:                                      ; preds = %if.then.213
  store i32 0, i32* %b, align 4
  br label %if.end.224

if.else.218:                                      ; preds = %if.then.213
  %135 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up219 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %135, i32 0, i32 4
  %136 = load %struct.macroblock*, %struct.macroblock** %mb_available_up219, align 8
  %mb_type220 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %136, i32 0, i32 6
  %137 = load i32, i32* %mb_type220, align 4
  %cmp221 = icmp ne i32 %137, 0
  %cond223 = select i1 %cmp221, i32 1, i32 0
  store i32 %cond223, i32* %b, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.218, %if.then.217
  %138 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left225 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %138, i32 0, i32 5
  %139 = load %struct.macroblock*, %struct.macroblock** %mb_available_left225, align 8
  %cmp226 = icmp eq %struct.macroblock* %139, null
  br i1 %cmp226, label %if.then.228, label %if.else.229

if.then.228:                                      ; preds = %if.end.224
  store i32 0, i32* %a, align 4
  br label %if.end.235

if.else.229:                                      ; preds = %if.end.224
  %140 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left230 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %140, i32 0, i32 5
  %141 = load %struct.macroblock*, %struct.macroblock** %mb_available_left230, align 8
  %mb_type231 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %141, i32 0, i32 6
  %142 = load i32, i32* %mb_type231, align 4
  %cmp232 = icmp ne i32 %142, 0
  %cond234 = select i1 %cmp232, i32 1, i32 0
  store i32 %cond234, i32* %a, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.229, %if.then.228
  %143 = load i32, i32* %a, align 4
  %144 = load i32, i32* %b, align 4
  %add236 = add nsw i32 %143, %144
  store i32 %add236, i32* %act_ctx, align 4
  %145 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %146 = load i32, i32* %act_ctx, align 4
  %idxprom237 = sext i32 %146 to i64
  %147 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts238 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %147, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts238, i32 0, i64 2
  %arrayidx240 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx239, i32 0, i64 %idxprom237
  %call241 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %145, %struct.BiContextType* %arrayidx240)
  %tobool242 = icmp ne i32 %call241, 0
  br i1 %tobool242, label %if.then.243, label %if.else.338

if.then.243:                                      ; preds = %if.end.235
  %148 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %149 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts244 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %149, i32 0, i32 0
  %arrayidx245 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts244, i32 0, i64 2
  %arrayidx246 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx245, i32 0, i64 4
  %call247 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %148, %struct.BiContextType* %arrayidx246)
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.then.249, label %if.else.328

if.then.249:                                      ; preds = %if.then.243
  %150 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %151 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts250 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %151, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts250, i32 0, i64 2
  %arrayidx252 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx251, i32 0, i64 5
  %call253 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %150, %struct.BiContextType* %arrayidx252)
  %tobool254 = icmp ne i32 %call253, 0
  br i1 %tobool254, label %if.then.255, label %if.else.302

if.then.255:                                      ; preds = %if.then.249
  store i32 12, i32* %act_sym, align 4
  %152 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %153 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts256 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %153, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts256, i32 0, i64 2
  %arrayidx258 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx257, i32 0, i64 6
  %call259 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %152, %struct.BiContextType* %arrayidx258)
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.then.261, label %if.end.263

if.then.261:                                      ; preds = %if.then.255
  %154 = load i32, i32* %act_sym, align 4
  %add262 = add nsw i32 %154, 8
  store i32 %add262, i32* %act_sym, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.261, %if.then.255
  %155 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %156 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts264 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %156, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts264, i32 0, i64 2
  %arrayidx266 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx265, i32 0, i64 6
  %call267 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %155, %struct.BiContextType* %arrayidx266)
  %tobool268 = icmp ne i32 %call267, 0
  br i1 %tobool268, label %if.then.269, label %if.end.271

if.then.269:                                      ; preds = %if.end.263
  %157 = load i32, i32* %act_sym, align 4
  %add270 = add nsw i32 %157, 4
  store i32 %add270, i32* %act_sym, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.269, %if.end.263
  %158 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %159 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts272 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %159, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts272, i32 0, i64 2
  %arrayidx274 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx273, i32 0, i64 6
  %call275 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %158, %struct.BiContextType* %arrayidx274)
  %tobool276 = icmp ne i32 %call275, 0
  br i1 %tobool276, label %if.then.277, label %if.end.279

if.then.277:                                      ; preds = %if.end.271
  %160 = load i32, i32* %act_sym, align 4
  %add278 = add nsw i32 %160, 2
  store i32 %add278, i32* %act_sym, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.277, %if.end.271
  %161 = load i32, i32* %act_sym, align 4
  %cmp280 = icmp eq i32 %161, 24
  br i1 %cmp280, label %if.then.282, label %if.else.283

if.then.282:                                      ; preds = %if.end.279
  store i32 11, i32* %act_sym, align 4
  br label %if.end.301

if.else.283:                                      ; preds = %if.end.279
  %162 = load i32, i32* %act_sym, align 4
  %cmp284 = icmp eq i32 %162, 26
  br i1 %cmp284, label %if.then.286, label %if.else.287

if.then.286:                                      ; preds = %if.else.283
  store i32 22, i32* %act_sym, align 4
  br label %if.end.300

if.else.287:                                      ; preds = %if.else.283
  %163 = load i32, i32* %act_sym, align 4
  %cmp288 = icmp eq i32 %163, 22
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.else.287
  store i32 23, i32* %act_sym, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %if.else.287
  %164 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %165 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts292 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %165, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts292, i32 0, i64 2
  %arrayidx294 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx293, i32 0, i64 6
  %call295 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %164, %struct.BiContextType* %arrayidx294)
  %tobool296 = icmp ne i32 %call295, 0
  br i1 %tobool296, label %if.then.297, label %if.end.299

if.then.297:                                      ; preds = %if.end.291
  %166 = load i32, i32* %act_sym, align 4
  %add298 = add nsw i32 %166, 1
  store i32 %add298, i32* %act_sym, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.297, %if.end.291
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.then.286
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %if.then.282
  br label %if.end.327

if.else.302:                                      ; preds = %if.then.249
  store i32 3, i32* %act_sym, align 4
  %167 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %168 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts303 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %168, i32 0, i32 0
  %arrayidx304 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts303, i32 0, i64 2
  %arrayidx305 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx304, i32 0, i64 6
  %call306 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %167, %struct.BiContextType* %arrayidx305)
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.then.308, label %if.end.310

if.then.308:                                      ; preds = %if.else.302
  %169 = load i32, i32* %act_sym, align 4
  %add309 = add nsw i32 %169, 4
  store i32 %add309, i32* %act_sym, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.308, %if.else.302
  %170 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %171 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts311 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %171, i32 0, i32 0
  %arrayidx312 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts311, i32 0, i64 2
  %arrayidx313 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx312, i32 0, i64 6
  %call314 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %170, %struct.BiContextType* %arrayidx313)
  %tobool315 = icmp ne i32 %call314, 0
  br i1 %tobool315, label %if.then.316, label %if.end.318

if.then.316:                                      ; preds = %if.end.310
  %172 = load i32, i32* %act_sym, align 4
  %add317 = add nsw i32 %172, 2
  store i32 %add317, i32* %act_sym, align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.316, %if.end.310
  %173 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %174 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts319 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %174, i32 0, i32 0
  %arrayidx320 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts319, i32 0, i64 2
  %arrayidx321 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx320, i32 0, i64 6
  %call322 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %173, %struct.BiContextType* %arrayidx321)
  %tobool323 = icmp ne i32 %call322, 0
  br i1 %tobool323, label %if.then.324, label %if.end.326

if.then.324:                                      ; preds = %if.end.318
  %175 = load i32, i32* %act_sym, align 4
  %add325 = add nsw i32 %175, 1
  store i32 %add325, i32* %act_sym, align 4
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.324, %if.end.318
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.end.301
  br label %if.end.337

if.else.328:                                      ; preds = %if.then.243
  %176 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %177 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts329 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %177, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts329, i32 0, i64 2
  %arrayidx331 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx330, i32 0, i64 6
  %call332 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %176, %struct.BiContextType* %arrayidx331)
  %tobool333 = icmp ne i32 %call332, 0
  br i1 %tobool333, label %if.then.334, label %if.else.335

if.then.334:                                      ; preds = %if.else.328
  store i32 2, i32* %act_sym, align 4
  br label %if.end.336

if.else.335:                                      ; preds = %if.else.328
  store i32 1, i32* %act_sym, align 4
  br label %if.end.336

if.end.336:                                       ; preds = %if.else.335, %if.then.334
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %if.end.327
  br label %if.end.339

if.else.338:                                      ; preds = %if.end.235
  store i32 0, i32* %act_sym, align 4
  br label %if.end.339

if.end.339:                                       ; preds = %if.else.338, %if.end.337
  br label %if.end.381

if.else.340:                                      ; preds = %if.else.212
  %178 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %179 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts341 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %179, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts341, i32 0, i64 1
  %arrayidx343 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx342, i32 0, i64 4
  %call344 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %178, %struct.BiContextType* %arrayidx343)
  %tobool345 = icmp ne i32 %call344, 0
  br i1 %tobool345, label %if.then.346, label %if.else.355

if.then.346:                                      ; preds = %if.else.340
  %180 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %181 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts347 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %181, i32 0, i32 0
  %arrayidx348 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts347, i32 0, i64 1
  %arrayidx349 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx348, i32 0, i64 7
  %call350 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %180, %struct.BiContextType* %arrayidx349)
  %tobool351 = icmp ne i32 %call350, 0
  br i1 %tobool351, label %if.then.352, label %if.else.353

if.then.352:                                      ; preds = %if.then.346
  store i32 7, i32* %act_sym, align 4
  br label %if.end.354

if.else.353:                                      ; preds = %if.then.346
  store i32 6, i32* %act_sym, align 4
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.353, %if.then.352
  br label %if.end.380

if.else.355:                                      ; preds = %if.else.340
  %182 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %183 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts356 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %183, i32 0, i32 0
  %arrayidx357 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts356, i32 0, i64 1
  %arrayidx358 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx357, i32 0, i64 5
  %call359 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %182, %struct.BiContextType* %arrayidx358)
  %tobool360 = icmp ne i32 %call359, 0
  br i1 %tobool360, label %if.then.361, label %if.else.370

if.then.361:                                      ; preds = %if.else.355
  %184 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %185 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts362 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %185, i32 0, i32 0
  %arrayidx363 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts362, i32 0, i64 1
  %arrayidx364 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx363, i32 0, i64 7
  %call365 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %184, %struct.BiContextType* %arrayidx364)
  %tobool366 = icmp ne i32 %call365, 0
  br i1 %tobool366, label %if.then.367, label %if.else.368

if.then.367:                                      ; preds = %if.then.361
  store i32 2, i32* %act_sym, align 4
  br label %if.end.369

if.else.368:                                      ; preds = %if.then.361
  store i32 3, i32* %act_sym, align 4
  br label %if.end.369

if.end.369:                                       ; preds = %if.else.368, %if.then.367
  br label %if.end.379

if.else.370:                                      ; preds = %if.else.355
  %186 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %187 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts371 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %187, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts371, i32 0, i64 1
  %arrayidx373 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx372, i32 0, i64 6
  %call374 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %186, %struct.BiContextType* %arrayidx373)
  %tobool375 = icmp ne i32 %call374, 0
  br i1 %tobool375, label %if.then.376, label %if.else.377

if.then.376:                                      ; preds = %if.else.370
  store i32 4, i32* %act_sym, align 4
  br label %if.end.378

if.else.377:                                      ; preds = %if.else.370
  store i32 1, i32* %act_sym, align 4
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.377, %if.then.376
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.end.369
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.end.354
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.end.339
  %188 = load i32, i32* %act_sym, align 4
  %cmp382 = icmp sle i32 %188, 6
  br i1 %cmp382, label %if.then.389, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.381
  %189 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type384 = getelementptr inbounds %struct.img_par, %struct.img_par* %189, i32 0, i32 10
  %190 = load i32, i32* %type384, align 4
  %cmp385 = icmp eq i32 %190, 1
  br i1 %cmp385, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br i1 true, label %land.lhs.true, label %if.else.390

cond.false:                                       ; preds = %lor.lhs.false
  br i1 false, label %land.lhs.true, label %if.else.390

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %191 = load i32, i32* %act_sym, align 4
  %cmp387 = icmp sle i32 %191, 23
  br i1 %cmp387, label %if.then.389, label %if.else.390

if.then.389:                                      ; preds = %land.lhs.true, %if.end.381
  %192 = load i32, i32* %act_sym, align 4
  store i32 %192, i32* %curr_mb_type, align 4
  br label %if.end.446

if.else.390:                                      ; preds = %land.lhs.true, %cond.false, %cond.true
  %193 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %call391 = call i32 @biari_decode_final(%struct.DecodingEnvironment* %193)
  store i32 %call391, i32* %mode_sym, align 4
  %194 = load i32, i32* %mode_sym, align 4
  %cmp392 = icmp eq i32 %194, 1
  br i1 %cmp392, label %if.then.394, label %if.else.399

if.then.394:                                      ; preds = %if.else.390
  %195 = load i32, i32* %bframe, align 4
  %tobool395 = icmp ne i32 %195, 0
  br i1 %tobool395, label %if.then.396, label %if.else.397

if.then.396:                                      ; preds = %if.then.394
  store i32 48, i32* %curr_mb_type, align 4
  br label %if.end.398

if.else.397:                                      ; preds = %if.then.394
  store i32 31, i32* %curr_mb_type, align 4
  br label %if.end.398

if.end.398:                                       ; preds = %if.else.397, %if.then.396
  br label %if.end.445

if.else.399:                                      ; preds = %if.else.390
  store i32 8, i32* %act_ctx, align 4
  %196 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %197 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts400 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %197, i32 0, i32 0
  %arrayidx401 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts400, i32 0, i64 1
  %arraydecay402 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx401, i32 0, i32 0
  %198 = load i32, i32* %act_ctx, align 4
  %idx.ext403 = sext i32 %198 to i64
  %add.ptr404 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay402, i64 %idx.ext403
  %call405 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %196, %struct.BiContextType* %add.ptr404)
  store i32 %call405, i32* %mode_sym, align 4
  %199 = load i32, i32* %mode_sym, align 4
  %mul406 = mul nsw i32 %199, 12
  %200 = load i32, i32* %act_sym, align 4
  %add407 = add nsw i32 %200, %mul406
  store i32 %add407, i32* %act_sym, align 4
  store i32 9, i32* %act_ctx, align 4
  %201 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %202 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts408 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %202, i32 0, i32 0
  %arrayidx409 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts408, i32 0, i64 1
  %arraydecay410 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx409, i32 0, i32 0
  %203 = load i32, i32* %act_ctx, align 4
  %idx.ext411 = sext i32 %203 to i64
  %add.ptr412 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay410, i64 %idx.ext411
  %call413 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %201, %struct.BiContextType* %add.ptr412)
  store i32 %call413, i32* %mode_sym, align 4
  %204 = load i32, i32* %mode_sym, align 4
  %cmp414 = icmp ne i32 %204, 0
  br i1 %cmp414, label %if.then.416, label %if.end.429

if.then.416:                                      ; preds = %if.else.399
  %205 = load i32, i32* %act_sym, align 4
  %add417 = add nsw i32 %205, 4
  store i32 %add417, i32* %act_sym, align 4
  %206 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %207 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts418 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %207, i32 0, i32 0
  %arrayidx419 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts418, i32 0, i64 1
  %arraydecay420 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx419, i32 0, i32 0
  %208 = load i32, i32* %act_ctx, align 4
  %idx.ext421 = sext i32 %208 to i64
  %add.ptr422 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay420, i64 %idx.ext421
  %call423 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %206, %struct.BiContextType* %add.ptr422)
  store i32 %call423, i32* %mode_sym, align 4
  %209 = load i32, i32* %mode_sym, align 4
  %cmp424 = icmp ne i32 %209, 0
  br i1 %cmp424, label %if.then.426, label %if.end.428

if.then.426:                                      ; preds = %if.then.416
  %210 = load i32, i32* %act_sym, align 4
  %add427 = add nsw i32 %210, 4
  store i32 %add427, i32* %act_sym, align 4
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.426, %if.then.416
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %if.else.399
  store i32 10, i32* %act_ctx, align 4
  %211 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %212 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts430 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %212, i32 0, i32 0
  %arrayidx431 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts430, i32 0, i64 1
  %arraydecay432 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx431, i32 0, i32 0
  %213 = load i32, i32* %act_ctx, align 4
  %idx.ext433 = sext i32 %213 to i64
  %add.ptr434 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay432, i64 %idx.ext433
  %call435 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %211, %struct.BiContextType* %add.ptr434)
  store i32 %call435, i32* %mode_sym, align 4
  %214 = load i32, i32* %mode_sym, align 4
  %mul436 = mul nsw i32 %214, 2
  %215 = load i32, i32* %act_sym, align 4
  %add437 = add nsw i32 %215, %mul436
  store i32 %add437, i32* %act_sym, align 4
  %216 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %217 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %mb_type_contexts438 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %217, i32 0, i32 0
  %arrayidx439 = getelementptr inbounds [4 x [11 x %struct.BiContextType]], [4 x [11 x %struct.BiContextType]]* %mb_type_contexts438, i32 0, i64 1
  %arraydecay440 = getelementptr inbounds [11 x %struct.BiContextType], [11 x %struct.BiContextType]* %arrayidx439, i32 0, i32 0
  %218 = load i32, i32* %act_ctx, align 4
  %idx.ext441 = sext i32 %218 to i64
  %add.ptr442 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay440, i64 %idx.ext441
  %call443 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %216, %struct.BiContextType* %add.ptr442)
  store i32 %call443, i32* %mode_sym, align 4
  %219 = load i32, i32* %mode_sym, align 4
  %220 = load i32, i32* %act_sym, align 4
  %add444 = add nsw i32 %220, %219
  store i32 %add444, i32* %act_sym, align 4
  %221 = load i32, i32* %act_sym, align 4
  store i32 %221, i32* %curr_mb_type, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.429, %if.end.398
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %if.then.389
  br label %if.end.447

if.end.447:                                       ; preds = %if.end.446, %if.end.211
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %if.end.85
  %222 = load i32, i32* %curr_mb_type, align 4
  %223 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %223, i32 0, i32 1
  store i32 %222, i32* %value1, align 4
  ret void
}

declare i32 @biari_decode_final(%struct.DecodingEnvironment*) #2

; Function Attrs: nounwind uwtable
define void @readIntraPredMode_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %ctx = alloca %struct.TextureInfoContexts*, align 8
  %act_sym = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 11
  %2 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %2, %struct.TextureInfoContexts** %ctx, align 8
  %3 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %4 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts, i32 0, i32 0
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %3, %struct.BiContextType* %arraydecay)
  store i32 %call, i32* %act_sym, align 4
  %5 = load i32, i32* %act_sym, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %6, i32 0, i32 1
  store i32 -1, i32* %value1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value11 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 1
  store i32 0, i32* %value11, align 4
  %8 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %9 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts2 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %9, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts2, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay3, i64 1
  %call4 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %8, %struct.BiContextType* %add.ptr)
  %10 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value15 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %10, i32 0, i32 1
  %11 = load i32, i32* %value15, align 4
  %or = or i32 %11, %call4
  store i32 %or, i32* %value15, align 4
  %12 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %13 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts6 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %13, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts6, i32 0, i32 0
  %add.ptr8 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay7, i64 1
  %call9 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %12, %struct.BiContextType* %add.ptr8)
  %shl = shl i32 %call9, 1
  %14 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value110 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %14, i32 0, i32 1
  %15 = load i32, i32* %value110, align 4
  %or11 = or i32 %15, %shl
  store i32 %or11, i32* %value110, align 4
  %16 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %17 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %ipr_contexts12 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %17, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [2 x %struct.BiContextType], [2 x %struct.BiContextType]* %ipr_contexts12, i32 0, i32 0
  %add.ptr14 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay13, i64 1
  %call15 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %16, %struct.BiContextType* %add.ptr14)
  %shl16 = shl i32 %call15, 2
  %18 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value117 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %18, i32 0, i32 1
  %19 = load i32, i32* %value117, align 4
  %or18 = or i32 %19, %shl16
  store i32 %or18, i32* %value117, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @readRefFrame_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %addctx = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %refframe_array = alloca i8**, align 8
  %b8a = alloca i32, align 4
  %b8b = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 10
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %2, %struct.MotionInfoContexts** %ctx, align 8
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 1
  %4 = load i32, i32* %current_mb_nr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 39
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  store i32 0, i32* %addctx, align 4
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 2
  %8 = load i32, i32* %value2, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 36
  %10 = load i8***, i8**** %ref_idx, align 8
  %arrayidx2 = getelementptr inbounds i8**, i8*** %10, i64 %idxprom1
  %11 = load i8**, i8*** %arrayidx2, align 8
  store i8** %11, i8*** %refframe_array, align 8
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr3 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 1
  %13 = load i32, i32* %current_mb_nr3, align 4
  %14 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %subblock_x = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 40
  %15 = load i32, i32* %subblock_x, align 4
  %shl = shl i32 %15, 2
  %sub = sub nsw i32 %shl, 1
  %16 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %subblock_y = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 41
  %17 = load i32, i32* %subblock_y, align 4
  %shl4 = shl i32 %17, 2
  call void @getLuma4x4Neighbour(i32 %13, i32 %sub, i32 %shl4, %struct.pix_pos* %block_a)
  %18 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr5 = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 1
  %19 = load i32, i32* %current_mb_nr5, align 4
  %20 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %subblock_x6 = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 40
  %21 = load i32, i32* %subblock_x6, align 4
  %shl7 = shl i32 %21, 2
  %22 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %subblock_y8 = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 41
  %23 = load i32, i32* %subblock_y8, align 4
  %shl9 = shl i32 %23, 2
  %sub10 = sub nsw i32 %shl9, 1
  call void @getLuma4x4Neighbour(i32 %19, i32 %shl7, i32 %sub10, %struct.pix_pos* %block_b)
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %24 = load i32, i32* %x, align 4
  %div = sdiv i32 %24, 2
  %rem = srem i32 %div, 2
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %25 = load i32, i32* %y, align 4
  %div11 = sdiv i32 %25, 2
  %rem12 = srem i32 %div11, 2
  %mul = mul nsw i32 2, %rem12
  %add = add nsw i32 %rem, %mul
  store i32 %add, i32* %b8a, align 4
  %x13 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %26 = load i32, i32* %x13, align 4
  %div14 = sdiv i32 %26, 2
  %rem15 = srem i32 %div14, 2
  %y16 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %27 = load i32, i32* %y16, align 4
  %div17 = sdiv i32 %27, 2
  %rem18 = srem i32 %div17, 2
  %mul19 = mul nsw i32 2, %rem18
  %add20 = add nsw i32 %rem15, %mul19
  store i32 %add20, i32* %b8b, align 4
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %28 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end.84

if.else:                                          ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %29 = load i32, i32* %mb_addr, align 4
  %idxprom21 = sext i32 %29 to i64
  %30 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data22 = getelementptr inbounds %struct.img_par, %struct.img_par* %30, i32 0, i32 39
  %31 = load %struct.macroblock*, %struct.macroblock** %mb_data22, align 8
  %arrayidx23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i64 %idxprom21
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx23, i32 0, i32 6
  %32 = load i32, i32* %mb_type, align 4
  %cmp = icmp eq i32 %32, 14
  br i1 %cmp, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %mb_addr24 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %33 = load i32, i32* %mb_addr24, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data26 = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 39
  %35 = load %struct.macroblock*, %struct.macroblock** %mb_data26, align 8
  %arrayidx27 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i64 %idxprom25
  %mb_type28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx27, i32 0, i32 6
  %36 = load i32, i32* %mb_type28, align 4
  %cmp29 = icmp eq i32 %36, 0
  br i1 %cmp29, label %land.lhs.true, label %lor.lhs.false.31

land.lhs.true:                                    ; preds = %lor.lhs.false
  %37 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 10
  %38 = load i32, i32* %type, align 4
  %cmp30 = icmp eq i32 %38, 1
  br i1 %cmp30, label %if.then.50, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %39 = load i32, i32* %b8b, align 4
  %idxprom32 = sext i32 %39 to i64
  %mb_addr33 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %40 = load i32, i32* %mb_addr33, align 4
  %idxprom34 = sext i32 %40 to i64
  %41 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data35 = getelementptr inbounds %struct.img_par, %struct.img_par* %41, i32 0, i32 39
  %42 = load %struct.macroblock*, %struct.macroblock** %mb_data35, align 8
  %arrayidx36 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i64 %idxprom34
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx36, i32 0, i32 13
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode, i32 0, i64 %idxprom32
  %43 = load i8, i8* %arrayidx37, align 1
  %conv = sext i8 %43 to i32
  %cmp38 = icmp eq i32 %conv, 0
  br i1 %cmp38, label %land.lhs.true.40, label %if.else.51

land.lhs.true.40:                                 ; preds = %lor.lhs.false.31
  %44 = load i32, i32* %b8b, align 4
  %idxprom41 = sext i32 %44 to i64
  %mb_addr42 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %45 = load i32, i32* %mb_addr42, align 4
  %idxprom43 = sext i32 %45 to i64
  %46 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data44 = getelementptr inbounds %struct.img_par, %struct.img_par* %46, i32 0, i32 39
  %47 = load %struct.macroblock*, %struct.macroblock** %mb_data44, align 8
  %arrayidx45 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %47, i64 %idxprom43
  %b8pdir = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx45, i32 0, i32 14
  %arrayidx46 = getelementptr inbounds [4 x i8], [4 x i8]* %b8pdir, i32 0, i64 %idxprom41
  %48 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %48 to i32
  %cmp48 = icmp eq i32 %conv47, 2
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %land.lhs.true.40, %land.lhs.true, %if.else
  store i32 0, i32* %b, align 4
  br label %if.end.83

if.else.51:                                       ; preds = %land.lhs.true.40, %lor.lhs.false.31
  %49 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.img_par, %struct.img_par* %49, i32 0, i32 44
  %50 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool52 = icmp ne i32 %50, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.72

land.lhs.true.53:                                 ; preds = %if.else.51
  %51 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 20
  %52 = load i32, i32* %mb_field, align 4
  %cmp54 = icmp eq i32 %52, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.else.72

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %mb_addr57 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %53 = load i32, i32* %mb_addr57, align 4
  %idxprom58 = sext i32 %53 to i64
  %54 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data59 = getelementptr inbounds %struct.img_par, %struct.img_par* %54, i32 0, i32 39
  %55 = load %struct.macroblock*, %struct.macroblock** %mb_data59, align 8
  %arrayidx60 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %55, i64 %idxprom58
  %mb_field61 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx60, i32 0, i32 20
  %56 = load i32, i32* %mb_field61, align 4
  %cmp62 = icmp eq i32 %56, 1
  br i1 %cmp62, label %if.then.64, label %if.else.72

if.then.64:                                       ; preds = %land.lhs.true.56
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %57 = load i32, i32* %pos_x, align 4
  %idxprom65 = sext i32 %57 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %58 = load i32, i32* %pos_y, align 4
  %idxprom66 = sext i32 %58 to i64
  %59 = load i8**, i8*** %refframe_array, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %59, i64 %idxprom66
  %60 = load i8*, i8** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %60, i64 %idxprom65
  %61 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %61 to i32
  %cmp70 = icmp sgt i32 %conv69, 1
  %cond = select i1 %cmp70, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.else.72:                                       ; preds = %land.lhs.true.56, %land.lhs.true.53, %if.else.51
  %pos_x73 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %62 = load i32, i32* %pos_x73, align 4
  %idxprom74 = sext i32 %62 to i64
  %pos_y75 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %63 = load i32, i32* %pos_y75, align 4
  %idxprom76 = sext i32 %63 to i64
  %64 = load i8**, i8*** %refframe_array, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %64, i64 %idxprom76
  %65 = load i8*, i8** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %65, i64 %idxprom74
  %66 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %66 to i32
  %cmp80 = icmp sgt i32 %conv79, 0
  %cond82 = select i1 %cmp80, i32 1, i32 0
  store i32 %cond82, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.72, %if.then.64
  br label %if.end.83

if.end.83:                                        ; preds = %if.end, %if.then.50
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then
  %available85 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %67 = load i32, i32* %available85, align 4
  %tobool86 = icmp ne i32 %67, 0
  br i1 %tobool86, label %if.else.88, label %if.then.87

if.then.87:                                       ; preds = %if.end.84
  store i32 0, i32* %a, align 4
  br label %if.end.170

if.else.88:                                       ; preds = %if.end.84
  %mb_addr89 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %68 = load i32, i32* %mb_addr89, align 4
  %idxprom90 = sext i32 %68 to i64
  %69 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data91 = getelementptr inbounds %struct.img_par, %struct.img_par* %69, i32 0, i32 39
  %70 = load %struct.macroblock*, %struct.macroblock** %mb_data91, align 8
  %arrayidx92 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %70, i64 %idxprom90
  %mb_type93 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx92, i32 0, i32 6
  %71 = load i32, i32* %mb_type93, align 4
  %cmp94 = icmp eq i32 %71, 14
  br i1 %cmp94, label %if.then.130, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.else.88
  %mb_addr97 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %72 = load i32, i32* %mb_addr97, align 4
  %idxprom98 = sext i32 %72 to i64
  %73 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data99 = getelementptr inbounds %struct.img_par, %struct.img_par* %73, i32 0, i32 39
  %74 = load %struct.macroblock*, %struct.macroblock** %mb_data99, align 8
  %arrayidx100 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %74, i64 %idxprom98
  %mb_type101 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx100, i32 0, i32 6
  %75 = load i32, i32* %mb_type101, align 4
  %cmp102 = icmp eq i32 %75, 0
  br i1 %cmp102, label %land.lhs.true.104, label %lor.lhs.false.108

land.lhs.true.104:                                ; preds = %lor.lhs.false.96
  %76 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type105 = getelementptr inbounds %struct.img_par, %struct.img_par* %76, i32 0, i32 10
  %77 = load i32, i32* %type105, align 4
  %cmp106 = icmp eq i32 %77, 1
  br i1 %cmp106, label %if.then.130, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %land.lhs.true.104, %lor.lhs.false.96
  %78 = load i32, i32* %b8a, align 4
  %idxprom109 = sext i32 %78 to i64
  %mb_addr110 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %79 = load i32, i32* %mb_addr110, align 4
  %idxprom111 = sext i32 %79 to i64
  %80 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data112 = getelementptr inbounds %struct.img_par, %struct.img_par* %80, i32 0, i32 39
  %81 = load %struct.macroblock*, %struct.macroblock** %mb_data112, align 8
  %arrayidx113 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i64 %idxprom111
  %b8mode114 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx113, i32 0, i32 13
  %arrayidx115 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode114, i32 0, i64 %idxprom109
  %82 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %82 to i32
  %cmp117 = icmp eq i32 %conv116, 0
  br i1 %cmp117, label %land.lhs.true.119, label %if.else.131

land.lhs.true.119:                                ; preds = %lor.lhs.false.108
  %83 = load i32, i32* %b8a, align 4
  %idxprom120 = sext i32 %83 to i64
  %mb_addr121 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %84 = load i32, i32* %mb_addr121, align 4
  %idxprom122 = sext i32 %84 to i64
  %85 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data123 = getelementptr inbounds %struct.img_par, %struct.img_par* %85, i32 0, i32 39
  %86 = load %struct.macroblock*, %struct.macroblock** %mb_data123, align 8
  %arrayidx124 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i64 %idxprom122
  %b8pdir125 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx124, i32 0, i32 14
  %arrayidx126 = getelementptr inbounds [4 x i8], [4 x i8]* %b8pdir125, i32 0, i64 %idxprom120
  %87 = load i8, i8* %arrayidx126, align 1
  %conv127 = sext i8 %87 to i32
  %cmp128 = icmp eq i32 %conv127, 2
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %land.lhs.true.119, %land.lhs.true.104, %if.else.88
  store i32 0, i32* %a, align 4
  br label %if.end.169

if.else.131:                                      ; preds = %land.lhs.true.119, %lor.lhs.false.108
  %88 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MbaffFrameFlag132 = getelementptr inbounds %struct.img_par, %struct.img_par* %88, i32 0, i32 44
  %89 = load i32, i32* %MbaffFrameFlag132, align 4
  %tobool133 = icmp ne i32 %89, 0
  br i1 %tobool133, label %land.lhs.true.134, label %if.else.157

land.lhs.true.134:                                ; preds = %if.else.131
  %90 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field135 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %90, i32 0, i32 20
  %91 = load i32, i32* %mb_field135, align 4
  %cmp136 = icmp eq i32 %91, 0
  br i1 %cmp136, label %land.lhs.true.138, label %if.else.157

land.lhs.true.138:                                ; preds = %land.lhs.true.134
  %mb_addr139 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %92 = load i32, i32* %mb_addr139, align 4
  %idxprom140 = sext i32 %92 to i64
  %93 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data141 = getelementptr inbounds %struct.img_par, %struct.img_par* %93, i32 0, i32 39
  %94 = load %struct.macroblock*, %struct.macroblock** %mb_data141, align 8
  %arrayidx142 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %94, i64 %idxprom140
  %mb_field143 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx142, i32 0, i32 20
  %95 = load i32, i32* %mb_field143, align 4
  %cmp144 = icmp eq i32 %95, 1
  br i1 %cmp144, label %if.then.146, label %if.else.157

if.then.146:                                      ; preds = %land.lhs.true.138
  %pos_x147 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %96 = load i32, i32* %pos_x147, align 4
  %idxprom148 = sext i32 %96 to i64
  %pos_y149 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %97 = load i32, i32* %pos_y149, align 4
  %idxprom150 = sext i32 %97 to i64
  %98 = load i8**, i8*** %refframe_array, align 8
  %arrayidx151 = getelementptr inbounds i8*, i8** %98, i64 %idxprom150
  %99 = load i8*, i8** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %99, i64 %idxprom148
  %100 = load i8, i8* %arrayidx152, align 1
  %conv153 = sext i8 %100 to i32
  %cmp154 = icmp sgt i32 %conv153, 1
  %cond156 = select i1 %cmp154, i32 1, i32 0
  store i32 %cond156, i32* %a, align 4
  br label %if.end.168

if.else.157:                                      ; preds = %land.lhs.true.138, %land.lhs.true.134, %if.else.131
  %pos_x158 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %101 = load i32, i32* %pos_x158, align 4
  %idxprom159 = sext i32 %101 to i64
  %pos_y160 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %102 = load i32, i32* %pos_y160, align 4
  %idxprom161 = sext i32 %102 to i64
  %103 = load i8**, i8*** %refframe_array, align 8
  %arrayidx162 = getelementptr inbounds i8*, i8** %103, i64 %idxprom161
  %104 = load i8*, i8** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %104, i64 %idxprom159
  %105 = load i8, i8* %arrayidx163, align 1
  %conv164 = sext i8 %105 to i32
  %cmp165 = icmp sgt i32 %conv164, 0
  %cond167 = select i1 %cmp165, i32 1, i32 0
  store i32 %cond167, i32* %a, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.157, %if.then.146
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.130
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.87
  %106 = load i32, i32* %a, align 4
  %107 = load i32, i32* %b, align 4
  %mul171 = mul nsw i32 2, %107
  %add172 = add nsw i32 %106, %mul171
  store i32 %add172, i32* %act_ctx, align 4
  %108 = load i32, i32* %act_ctx, align 4
  %109 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %109, i32 0, i32 6
  store i32 %108, i32* %context, align 4
  %110 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %111 = load i32, i32* %addctx, align 4
  %idxprom173 = sext i32 %111 to i64
  %112 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %ref_no_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %112, i32 0, i32 3
  %arrayidx174 = getelementptr inbounds [2 x [6 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]]* %ref_no_contexts, i32 0, i64 %idxprom173
  %arraydecay = getelementptr inbounds [6 x %struct.BiContextType], [6 x %struct.BiContextType]* %arrayidx174, i32 0, i32 0
  %113 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %113 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %110, %struct.BiContextType* %add.ptr)
  store i32 %call, i32* %act_sym, align 4
  %114 = load i32, i32* %act_sym, align 4
  %cmp175 = icmp ne i32 %114, 0
  br i1 %cmp175, label %if.then.177, label %if.end.185

if.then.177:                                      ; preds = %if.end.170
  store i32 4, i32* %act_ctx, align 4
  %115 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %116 = load i32, i32* %addctx, align 4
  %idxprom178 = sext i32 %116 to i64
  %117 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %ref_no_contexts179 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %117, i32 0, i32 3
  %arrayidx180 = getelementptr inbounds [2 x [6 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]]* %ref_no_contexts179, i32 0, i64 %idxprom178
  %arraydecay181 = getelementptr inbounds [6 x %struct.BiContextType], [6 x %struct.BiContextType]* %arrayidx180, i32 0, i32 0
  %118 = load i32, i32* %act_ctx, align 4
  %idx.ext182 = sext i32 %118 to i64
  %add.ptr183 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay181, i64 %idx.ext182
  %call184 = call i32 @unary_bin_decode(%struct.DecodingEnvironment* %115, %struct.BiContextType* %add.ptr183, i32 1)
  store i32 %call184, i32* %act_sym, align 4
  %119 = load i32, i32* %act_sym, align 4
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %act_sym, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.177, %if.end.170
  %120 = load i32, i32* %act_sym, align 4
  %121 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %121, i32 0, i32 1
  store i32 %120, i32* %value1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @unary_bin_decode(%struct.DecodingEnvironment* %dep_dp, %struct.BiContextType* %ctx, i32 %ctx_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %ctx_offset.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %symbol = alloca i32, align 4
  %ictx = alloca %struct.BiContextType*, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 %ctx_offset, i32* %ctx_offset.addr, align 4
  %0 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %1 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %0, %struct.BiContextType* %1)
  store i32 %call, i32* %symbol, align 4
  %2 = load i32, i32* %symbol, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %symbol, align 4
  %3 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %4 = load i32, i32* %ctx_offset.addr, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %3, i64 %idx.ext
  store %struct.BiContextType* %add.ptr, %struct.BiContextType** %ictx, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %5 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %6 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %call1 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %5, %struct.BiContextType* %6)
  store i32 %call1, i32* %l, align 4
  %7 = load i32, i32* %symbol, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %symbol, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = load i32, i32* %l, align 4
  %cmp2 = icmp ne i32 %8, 0
  br i1 %cmp2, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load i32, i32* %symbol, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @readDquant_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %ctx = alloca %struct.MotionInfoContexts*, align 8
  %act_ctx = alloca i32, align 4
  %act_sym = alloca i32, align 4
  %dquant = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 10
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %2, %struct.MotionInfoContexts** %ctx, align 8
  %3 = load i32, i32* @last_dquant, align 4
  %cmp = icmp ne i32 %3, 0
  %cond = select i1 %cmp, i32 1, i32 0
  store i32 %cond, i32* %act_ctx, align 4
  %4 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %5 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %delta_qp_contexts = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %5, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %delta_qp_contexts, i32 0, i32 0
  %6 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %4, %struct.BiContextType* %add.ptr)
  store i32 %call, i32* %act_sym, align 4
  %7 = load i32, i32* %act_sym, align 4
  %cmp1 = icmp ne i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %act_ctx, align 4
  %8 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %9 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %ctx, align 8
  %delta_qp_contexts2 = getelementptr inbounds %struct.MotionInfoContexts, %struct.MotionInfoContexts* %9, i32 0, i32 4
  %arraydecay3 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %delta_qp_contexts2, i32 0, i32 0
  %10 = load i32, i32* %act_ctx, align 4
  %idx.ext4 = sext i32 %10 to i64
  %add.ptr5 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay3, i64 %idx.ext4
  %call6 = call i32 @unary_bin_decode(%struct.DecodingEnvironment* %8, %struct.BiContextType* %add.ptr5, i32 1)
  store i32 %call6, i32* %act_sym, align 4
  %11 = load i32, i32* %act_sym, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %act_sym, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %act_sym, align 4
  %add = add nsw i32 %12, 1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %dquant, align 4
  %13 = load i32, i32* %act_sym, align 4
  %and = and i32 %13, 1
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %14 = load i32, i32* %dquant, align 4
  %sub = sub nsw i32 0, %14
  store i32 %sub, i32* %dquant, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %15 = load i32, i32* %dquant, align 4
  %16 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %16, i32 0, i32 1
  store i32 %15, i32* %value1, align 4
  %17 = load i32, i32* %dquant, align 4
  store i32 %17, i32* @last_dquant, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @readCBP_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %ctx = alloca %struct.TextureInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %curr_cbp_ctx = alloca i32, align 4
  %curr_cbp_idx = alloca i32, align 4
  %cbp = alloca i32, align 4
  %cbp_bit = alloca i32, align 4
  %mask = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 11
  %2 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %2, %struct.TextureInfoContexts** %ctx, align 8
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 1
  %4 = load i32, i32* %current_mb_nr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 39
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  store i32 0, i32* %cbp, align 4
  store i32 0, i32* %mb_y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.84, %entry
  %7 = load i32, i32* %mb_y, align 4
  %cmp = icmp slt i32 %7, 4
  br i1 %cmp, label %for.body, label %for.end.86

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %mb_x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %mb_x, align 4
  %cmp2 = icmp slt i32 %8, 4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %mb_y, align 4
  %10 = load i32, i32* %mb_x, align 4
  %div = sdiv i32 %10, 2
  %add = add nsw i32 %9, %div
  %idxprom4 = sext i32 %add to i64
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 13
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %b8mode, i32 0, i64 %idxprom4
  %12 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv, 11
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  store i32 0, i32* %curr_cbp_idx, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.3
  store i32 1, i32* %curr_cbp_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %mb_y, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then.10, label %if.else.28

if.then.10:                                       ; preds = %if.end
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 4
  %15 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp11 = icmp eq %struct.macroblock* %15, null
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.then.10
  store i32 0, i32* %b, align 4
  br label %if.end.27

if.else.14:                                       ; preds = %if.then.10
  %16 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up15 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %16, i32 0, i32 4
  %17 = load %struct.macroblock*, %struct.macroblock** %mb_available_up15, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 6
  %18 = load i32, i32* %mb_type, align 4
  %cmp16 = icmp eq i32 %18, 14
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.14
  store i32 0, i32* %b, align 4
  br label %if.end.26

if.else.19:                                       ; preds = %if.else.14
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up20 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 4
  %20 = load %struct.macroblock*, %struct.macroblock** %mb_available_up20, align 8
  %cbp21 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 8
  %21 = load i32, i32* %cbp21, align 4
  %22 = load i32, i32* %mb_x, align 4
  %div22 = sdiv i32 %22, 2
  %add23 = add nsw i32 2, %div22
  %shl = shl i32 1, %add23
  %and = and i32 %21, %shl
  %cmp24 = icmp eq i32 %and, 0
  %cond = select i1 %cmp24, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.13
  br label %if.end.35

if.else.28:                                       ; preds = %if.end
  %23 = load i32, i32* %cbp, align 4
  %24 = load i32, i32* %mb_x, align 4
  %div29 = sdiv i32 %24, 2
  %shl30 = shl i32 1, %div29
  %and31 = and i32 %23, %shl30
  %cmp32 = icmp eq i32 %and31, 0
  %cond34 = select i1 %cmp32, i32 1, i32 0
  store i32 %cond34, i32* %b, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.28, %if.end.27
  %25 = load i32, i32* %mb_x, align 4
  %cmp36 = icmp eq i32 %25, 0
  br i1 %cmp36, label %if.then.38, label %if.else.66

if.then.38:                                       ; preds = %if.end.35
  %26 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr39 = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 1
  %27 = load i32, i32* %current_mb_nr39, align 4
  %28 = load i32, i32* %mb_x, align 4
  %shl40 = shl i32 %28, 2
  %sub = sub nsw i32 %shl40, 1
  %29 = load i32, i32* %mb_y, align 4
  %shl41 = shl i32 %29, 2
  call void @getLuma4x4Neighbour(i32 %27, i32 %sub, i32 %shl41, %struct.pix_pos* %block_a)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %30 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.42, label %if.else.64

if.then.42:                                       ; preds = %if.then.38
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %31 = load i32, i32* %mb_addr, align 4
  %idxprom43 = sext i32 %31 to i64
  %32 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data44 = getelementptr inbounds %struct.img_par, %struct.img_par* %32, i32 0, i32 39
  %33 = load %struct.macroblock*, %struct.macroblock** %mb_data44, align 8
  %arrayidx45 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %33, i64 %idxprom43
  %mb_type46 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx45, i32 0, i32 6
  %34 = load i32, i32* %mb_type46, align 4
  %cmp47 = icmp eq i32 %34, 14
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.then.42
  store i32 0, i32* %a, align 4
  br label %if.end.63

if.else.50:                                       ; preds = %if.then.42
  %mb_addr51 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %35 = load i32, i32* %mb_addr51, align 4
  %idxprom52 = sext i32 %35 to i64
  %36 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data53 = getelementptr inbounds %struct.img_par, %struct.img_par* %36, i32 0, i32 39
  %37 = load %struct.macroblock*, %struct.macroblock** %mb_data53, align 8
  %arrayidx54 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %37, i64 %idxprom52
  %cbp55 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx54, i32 0, i32 8
  %38 = load i32, i32* %cbp55, align 4
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %39 = load i32, i32* %y, align 4
  %div56 = sdiv i32 %39, 2
  %mul = mul nsw i32 2, %div56
  %add57 = add nsw i32 %mul, 1
  %shl58 = shl i32 1, %add57
  %and59 = and i32 %38, %shl58
  %cmp60 = icmp eq i32 %and59, 0
  %cond62 = select i1 %cmp60, i32 1, i32 0
  store i32 %cond62, i32* %a, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.50, %if.then.49
  br label %if.end.65

if.else.64:                                       ; preds = %if.then.38
  store i32 0, i32* %a, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.end.63
  br label %if.end.72

if.else.66:                                       ; preds = %if.end.35
  %40 = load i32, i32* %cbp, align 4
  %41 = load i32, i32* %mb_y, align 4
  %shl67 = shl i32 1, %41
  %and68 = and i32 %40, %shl67
  %cmp69 = icmp eq i32 %and68, 0
  %cond71 = select i1 %cmp69, i32 1, i32 0
  store i32 %cond71, i32* %a, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.66, %if.end.65
  %42 = load i32, i32* %a, align 4
  %43 = load i32, i32* %b, align 4
  %mul73 = mul nsw i32 2, %43
  %add74 = add nsw i32 %42, %mul73
  store i32 %add74, i32* %curr_cbp_ctx, align 4
  %44 = load i32, i32* %mb_y, align 4
  %45 = load i32, i32* %mb_x, align 4
  %div75 = sdiv i32 %45, 2
  %add76 = add nsw i32 %44, %div75
  %shl77 = shl i32 1, %add76
  store i32 %shl77, i32* %mask, align 4
  %46 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %47 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cbp_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %47, i32 0, i32 2
  %arrayidx78 = getelementptr inbounds [3 x [4 x %struct.BiContextType]], [3 x [4 x %struct.BiContextType]]* %cbp_contexts, i32 0, i64 0
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx78, i32 0, i32 0
  %48 = load i32, i32* %curr_cbp_ctx, align 4
  %idx.ext = sext i32 %48 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %46, %struct.BiContextType* %add.ptr)
  store i32 %call, i32* %cbp_bit, align 4
  %49 = load i32, i32* %cbp_bit, align 4
  %tobool79 = icmp ne i32 %49, 0
  br i1 %tobool79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.72
  %50 = load i32, i32* %mask, align 4
  %51 = load i32, i32* %cbp, align 4
  %add81 = add nsw i32 %51, %50
  store i32 %add81, i32* %cbp, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.72
  br label %for.inc

for.inc:                                          ; preds = %if.end.82
  %52 = load i32, i32* %mb_x, align 4
  %add83 = add nsw i32 %52, 2
  store i32 %add83, i32* %mb_x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end
  %53 = load i32, i32* %mb_y, align 4
  %add85 = add nsw i32 %53, 2
  store i32 %add85, i32* %mb_y, align 4
  br label %for.cond

for.end.86:                                       ; preds = %for.cond
  %54 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %54, i32 0, i32 50
  %55 = load i32, i32* %chroma_format_idc, align 4
  %cmp87 = icmp ne i32 %55, 0
  br i1 %cmp87, label %if.then.89, label %if.end.193

if.then.89:                                       ; preds = %for.end.86
  store i32 0, i32* %b, align 4
  %56 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up90 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %56, i32 0, i32 4
  %57 = load %struct.macroblock*, %struct.macroblock** %mb_available_up90, align 8
  %cmp91 = icmp ne %struct.macroblock* %57, null
  br i1 %cmp91, label %if.then.93, label %if.end.106

if.then.93:                                       ; preds = %if.then.89
  %58 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up94 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %58, i32 0, i32 4
  %59 = load %struct.macroblock*, %struct.macroblock** %mb_available_up94, align 8
  %mb_type95 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %59, i32 0, i32 6
  %60 = load i32, i32* %mb_type95, align 4
  %cmp96 = icmp eq i32 %60, 14
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.then.93
  store i32 1, i32* %b, align 4
  br label %if.end.105

if.else.99:                                       ; preds = %if.then.93
  %61 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up100 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %61, i32 0, i32 4
  %62 = load %struct.macroblock*, %struct.macroblock** %mb_available_up100, align 8
  %cbp101 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %62, i32 0, i32 8
  %63 = load i32, i32* %cbp101, align 4
  %cmp102 = icmp sgt i32 %63, 15
  %cond104 = select i1 %cmp102, i32 1, i32 0
  store i32 %cond104, i32* %b, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.99, %if.then.98
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.89
  store i32 0, i32* %a, align 4
  %64 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %64, i32 0, i32 5
  %65 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp107 = icmp ne %struct.macroblock* %65, null
  br i1 %cmp107, label %if.then.109, label %if.end.122

if.then.109:                                      ; preds = %if.end.106
  %66 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left110 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %66, i32 0, i32 5
  %67 = load %struct.macroblock*, %struct.macroblock** %mb_available_left110, align 8
  %mb_type111 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %67, i32 0, i32 6
  %68 = load i32, i32* %mb_type111, align 4
  %cmp112 = icmp eq i32 %68, 14
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %if.then.109
  store i32 1, i32* %a, align 4
  br label %if.end.121

if.else.115:                                      ; preds = %if.then.109
  %69 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left116 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %69, i32 0, i32 5
  %70 = load %struct.macroblock*, %struct.macroblock** %mb_available_left116, align 8
  %cbp117 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %70, i32 0, i32 8
  %71 = load i32, i32* %cbp117, align 4
  %cmp118 = icmp sgt i32 %71, 15
  %cond120 = select i1 %cmp118, i32 1, i32 0
  store i32 %cond120, i32* %a, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.115, %if.then.114
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.106
  %72 = load i32, i32* %a, align 4
  %73 = load i32, i32* %b, align 4
  %mul123 = mul nsw i32 2, %73
  %add124 = add nsw i32 %72, %mul123
  store i32 %add124, i32* %curr_cbp_ctx, align 4
  %74 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %75 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cbp_contexts125 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %75, i32 0, i32 2
  %arrayidx126 = getelementptr inbounds [3 x [4 x %struct.BiContextType]], [3 x [4 x %struct.BiContextType]]* %cbp_contexts125, i32 0, i64 1
  %arraydecay127 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx126, i32 0, i32 0
  %76 = load i32, i32* %curr_cbp_ctx, align 4
  %idx.ext128 = sext i32 %76 to i64
  %add.ptr129 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay127, i64 %idx.ext128
  %call130 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %74, %struct.BiContextType* %add.ptr129)
  store i32 %call130, i32* %cbp_bit, align 4
  %77 = load i32, i32* %cbp_bit, align 4
  %tobool131 = icmp ne i32 %77, 0
  br i1 %tobool131, label %if.then.132, label %if.end.192

if.then.132:                                      ; preds = %if.end.122
  store i32 0, i32* %b, align 4
  %78 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up133 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %78, i32 0, i32 4
  %79 = load %struct.macroblock*, %struct.macroblock** %mb_available_up133, align 8
  %cmp134 = icmp ne %struct.macroblock* %79, null
  br i1 %cmp134, label %if.then.136, label %if.end.155

if.then.136:                                      ; preds = %if.then.132
  %80 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up137 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %80, i32 0, i32 4
  %81 = load %struct.macroblock*, %struct.macroblock** %mb_available_up137, align 8
  %mb_type138 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %81, i32 0, i32 6
  %82 = load i32, i32* %mb_type138, align 4
  %cmp139 = icmp eq i32 %82, 14
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %if.then.136
  store i32 1, i32* %b, align 4
  br label %if.end.154

if.else.142:                                      ; preds = %if.then.136
  %83 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up143 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %83, i32 0, i32 4
  %84 = load %struct.macroblock*, %struct.macroblock** %mb_available_up143, align 8
  %cbp144 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i32 0, i32 8
  %85 = load i32, i32* %cbp144, align 4
  %cmp145 = icmp sgt i32 %85, 15
  br i1 %cmp145, label %if.then.147, label %if.end.153

if.then.147:                                      ; preds = %if.else.142
  %86 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up148 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i32 0, i32 4
  %87 = load %struct.macroblock*, %struct.macroblock** %mb_available_up148, align 8
  %cbp149 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %87, i32 0, i32 8
  %88 = load i32, i32* %cbp149, align 4
  %shr = ashr i32 %88, 4
  %cmp150 = icmp eq i32 %shr, 2
  %cond152 = select i1 %cmp150, i32 1, i32 0
  store i32 %cond152, i32* %b, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.147, %if.else.142
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.141
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.132
  store i32 0, i32* %a, align 4
  %89 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left156 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %89, i32 0, i32 5
  %90 = load %struct.macroblock*, %struct.macroblock** %mb_available_left156, align 8
  %cmp157 = icmp ne %struct.macroblock* %90, null
  br i1 %cmp157, label %if.then.159, label %if.end.179

if.then.159:                                      ; preds = %if.end.155
  %91 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left160 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %91, i32 0, i32 5
  %92 = load %struct.macroblock*, %struct.macroblock** %mb_available_left160, align 8
  %mb_type161 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %92, i32 0, i32 6
  %93 = load i32, i32* %mb_type161, align 4
  %cmp162 = icmp eq i32 %93, 14
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.then.159
  store i32 1, i32* %a, align 4
  br label %if.end.178

if.else.165:                                      ; preds = %if.then.159
  %94 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left166 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %94, i32 0, i32 5
  %95 = load %struct.macroblock*, %struct.macroblock** %mb_available_left166, align 8
  %cbp167 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %95, i32 0, i32 8
  %96 = load i32, i32* %cbp167, align 4
  %cmp168 = icmp sgt i32 %96, 15
  br i1 %cmp168, label %if.then.170, label %if.end.177

if.then.170:                                      ; preds = %if.else.165
  %97 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left171 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %97, i32 0, i32 5
  %98 = load %struct.macroblock*, %struct.macroblock** %mb_available_left171, align 8
  %cbp172 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %98, i32 0, i32 8
  %99 = load i32, i32* %cbp172, align 4
  %shr173 = ashr i32 %99, 4
  %cmp174 = icmp eq i32 %shr173, 2
  %cond176 = select i1 %cmp174, i32 1, i32 0
  store i32 %cond176, i32* %a, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.170, %if.else.165
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.then.164
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.155
  %100 = load i32, i32* %a, align 4
  %101 = load i32, i32* %b, align 4
  %mul180 = mul nsw i32 2, %101
  %add181 = add nsw i32 %100, %mul180
  store i32 %add181, i32* %curr_cbp_ctx, align 4
  %102 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %103 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cbp_contexts182 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %103, i32 0, i32 2
  %arrayidx183 = getelementptr inbounds [3 x [4 x %struct.BiContextType]], [3 x [4 x %struct.BiContextType]]* %cbp_contexts182, i32 0, i64 2
  %arraydecay184 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx183, i32 0, i32 0
  %104 = load i32, i32* %curr_cbp_ctx, align 4
  %idx.ext185 = sext i32 %104 to i64
  %add.ptr186 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay184, i64 %idx.ext185
  %call187 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %102, %struct.BiContextType* %add.ptr186)
  store i32 %call187, i32* %cbp_bit, align 4
  %105 = load i32, i32* %cbp_bit, align 4
  %cmp188 = icmp eq i32 %105, 1
  %cond190 = select i1 %cmp188, i32 32, i32 16
  %106 = load i32, i32* %cbp, align 4
  %add191 = add nsw i32 %106, %cond190
  store i32 %add191, i32* %cbp, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.179, %if.end.122
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %for.end.86
  %107 = load i32, i32* %cbp, align 4
  %108 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %108, i32 0, i32 1
  store i32 %107, i32* %value1, align 4
  %109 = load i32, i32* %cbp, align 4
  %tobool194 = icmp ne i32 %109, 0
  br i1 %tobool194, label %if.end.196, label %if.then.195

if.then.195:                                      ; preds = %if.end.193
  store i32 0, i32* @last_dquant, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.195, %if.end.193
  ret void
}

; Function Attrs: nounwind uwtable
define void @readCIPredMode_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %ctx = alloca %struct.TextureInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %act_ctx = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %act_sym = alloca i32, align 4
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 11
  %2 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %2, %struct.TextureInfoContexts** %ctx, align 8
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 1
  %4 = load i32, i32* %current_mb_nr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 39
  %6 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 1
  %8 = load i32, i32* %value1, align 4
  store i32 %8, i32* %act_sym, align 4
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 4
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %cmp = icmp eq %struct.macroblock* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %11 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %11, i32 0, i32 4
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_available_up1, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 6
  %13 = load i32, i32* %mb_type, align 4
  %cmp2 = icmp eq i32 %13, 14
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 0, i32* %b, align 4
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %14 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up5 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %14, i32 0, i32 4
  %15 = load %struct.macroblock*, %struct.macroblock** %mb_available_up5, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 19
  %16 = load i32, i32* %c_ipred_mode, align 4
  %cmp6 = icmp ne i32 %16, 0
  %cond = select i1 %cmp6, i32 1, i32 0
  store i32 %cond, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 5
  %18 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %cmp8 = icmp eq %struct.macroblock* %18, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %a, align 4
  br label %if.end.21

if.else.10:                                       ; preds = %if.end.7
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 5
  %20 = load %struct.macroblock*, %struct.macroblock** %mb_available_left11, align 8
  %mb_type12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 6
  %21 = load i32, i32* %mb_type12, align 4
  %cmp13 = icmp eq i32 %21, 14
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.10
  store i32 0, i32* %a, align 4
  br label %if.end.20

if.else.15:                                       ; preds = %if.else.10
  %22 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left16 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %22, i32 0, i32 5
  %23 = load %struct.macroblock*, %struct.macroblock** %mb_available_left16, align 8
  %c_ipred_mode17 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 19
  %24 = load i32, i32* %c_ipred_mode17, align 4
  %cmp18 = icmp ne i32 %24, 0
  %cond19 = select i1 %cmp18, i32 1, i32 0
  store i32 %cond19, i32* %a, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.9
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %b, align 4
  %add = add nsw i32 %25, %26
  store i32 %add, i32* %act_ctx, align 4
  %27 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %28 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cipr_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %28, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %cipr_contexts, i32 0, i32 0
  %29 = load i32, i32* %act_ctx, align 4
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %27, %struct.BiContextType* %add.ptr)
  store i32 %call, i32* %act_sym, align 4
  %30 = load i32, i32* %act_sym, align 4
  %cmp22 = icmp ne i32 %30, 0
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end.21
  %31 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %32 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %ctx, align 8
  %cipr_contexts24 = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %32, i32 0, i32 1
  %arraydecay25 = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %cipr_contexts24, i32 0, i32 0
  %add.ptr26 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay25, i64 3
  %call27 = call i32 @unary_bin_max_decode(%struct.DecodingEnvironment* %31, %struct.BiContextType* %add.ptr26, i32 0, i32 2)
  %add28 = add i32 %call27, 1
  store i32 %add28, i32* %act_sym, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.23, %if.end.21
  %33 = load i32, i32* %act_sym, align 4
  %34 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value130 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %34, i32 0, i32 1
  store i32 %33, i32* %value130, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @unary_bin_max_decode(%struct.DecodingEnvironment* %dep_dp, %struct.BiContextType* %ctx, i32 %ctx_offset, i32 %max_symbol) #0 {
entry:
  %retval = alloca i32, align 4
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %ctx_offset.addr = alloca i32, align 4
  %max_symbol.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %symbol = alloca i32, align 4
  %ictx = alloca %struct.BiContextType*, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 %ctx_offset, i32* %ctx_offset.addr, align 4
  store i32 %max_symbol, i32* %max_symbol.addr, align 4
  %0 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %1 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %0, %struct.BiContextType* %1)
  store i32 %call, i32* %symbol, align 4
  %2 = load i32, i32* %symbol, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %max_symbol.addr, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %4 = load i32, i32* %symbol, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  store i32 0, i32* %symbol, align 4
  %5 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %6 = load i32, i32* %ctx_offset.addr, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %5, i64 %idx.ext
  store %struct.BiContextType* %add.ptr, %struct.BiContextType** %ictx, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %7 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %8 = load %struct.BiContextType*, %struct.BiContextType** %ictx, align 8
  %call3 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %7, %struct.BiContextType* %8)
  store i32 %call3, i32* %l, align 4
  %9 = load i32, i32* %symbol, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %symbol, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i32, i32* %l, align 4
  %cmp4 = icmp ne i32 %10, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %11 = load i32, i32* %symbol, align 4
  %12 = load i32, i32* %max_symbol.addr, align 4
  %sub = sub i32 %12, 1
  %cmp5 = icmp ult i32 %11, %sub
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %13 = phi i1 [ false, %do.cond ], [ %cmp5, %land.rhs ]
  br i1 %13, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %14 = load i32, i32* %l, align 4
  %cmp6 = icmp ne i32 %14, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %do.end
  %15 = load i32, i32* %symbol, align 4
  %16 = load i32, i32* %max_symbol.addr, align 4
  %sub7 = sub i32 %16, 1
  %cmp8 = icmp eq i32 %15, %sub7
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* %symbol, align 4
  %inc10 = add i32 %17, 1
  store i32 %inc10, i32* %symbol, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %land.lhs.true, %do.end
  %18 = load i32, i32* %symbol, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.2, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @read_and_store_CBP_block_bit(%struct.macroblock* %currMB, %struct.DecodingEnvironment* %dep_dp, %struct.img_par* %img, i32 %type) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %type.addr = alloca i32, align 4
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
  %cbp_bit = alloca i32, align 4
  %ctx = alloca i32, align 4
  %bit_pos_a = alloca i32, align 4
  %bit_pos_b = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %type, i32* %type.addr, align 4
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
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %is_v_block = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 43
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
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %is_v_block13 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 43
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
  %20 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %is_v_block29 = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 43
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
  %24 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %is_v_block36 = getelementptr inbounds %struct.img_par, %struct.img_par* %24, i32 0, i32 43
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
  %30 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %subblock_y = getelementptr inbounds %struct.img_par, %struct.img_par* %30, i32 0, i32 41
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
  %35 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %subblock_x = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 40
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
  %cond67 = select i1 %tobool66, i32 19, i32 35
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
  %42 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %is_intra_block = getelementptr inbounds %struct.img_par, %struct.img_par* %42, i32 0, i32 42
  %43 = load i32, i32* %is_intra_block, align 4
  %tobool76 = icmp ne i32 %43, 0
  %cond77 = select i1 %tobool76, i32 1, i32 0
  store i32 %cond77, i32* %default_bit, align 4
  %44 = load i32, i32* %default_bit, align 4
  store i32 %44, i32* %upper_bit, align 4
  %45 = load i32, i32* %default_bit, align 4
  store i32 %45, i32* %left_bit, align 4
  store i32 1, i32* %cbp_bit, align 4
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
  %48 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %48, i32 0, i32 1
  %49 = load i32, i32* %current_mb_nr, align 4
  %50 = load i32, i32* %i, align 4
  %shl = shl i32 %50, 2
  %sub = sub nsw i32 %shl, 1
  %51 = load i32, i32* %j, align 4
  %shl81 = shl i32 %51, 2
  call void @getLuma4x4Neighbour(i32 %49, i32 %sub, i32 %shl81, %struct.pix_pos* %block_a)
  %52 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr82 = getelementptr inbounds %struct.img_par, %struct.img_par* %52, i32 0, i32 1
  %53 = load i32, i32* %current_mb_nr82, align 4
  %54 = load i32, i32* %i, align 4
  %shl83 = shl i32 %54, 2
  %55 = load i32, i32* %j, align 4
  %shl84 = shl i32 %55, 2
  %sub85 = sub nsw i32 %shl84, 1
  call void @getLuma4x4Neighbour(i32 %53, i32 %shl83, i32 %sub85, %struct.pix_pos* %block_b)
  %56 = load i32, i32* %y_ac, align 4
  %tobool86 = icmp ne i32 %56, 0
  br i1 %tobool86, label %if.then.87, label %if.end.98

if.then.87:                                       ; preds = %if.then
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %57 = load i32, i32* %available, align 4
  %tobool88 = icmp ne i32 %57, 0
  br i1 %tobool88, label %if.then.89, label %if.end

if.then.89:                                       ; preds = %if.then.87
  %y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %58 = load i32, i32* %y, align 4
  %mul = mul nsw i32 4, %58
  %x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %59 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul, %59
  store i32 %add, i32* %bit_pos_a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.89, %if.then.87
  %available90 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %60 = load i32, i32* %available90, align 4
  %tobool91 = icmp ne i32 %60, 0
  br i1 %tobool91, label %if.then.92, label %if.end.97

if.then.92:                                       ; preds = %if.end
  %y93 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %61 = load i32, i32* %y93, align 4
  %mul94 = mul nsw i32 4, %61
  %x95 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %62 = load i32, i32* %x95, align 4
  %add96 = add nsw i32 %mul94, %62
  store i32 %add96, i32* %bit_pos_b, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.92, %if.end
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then
  br label %if.end.128

if.else:                                          ; preds = %lor.lhs.false.79
  %63 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr99 = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 1
  %64 = load i32, i32* %current_mb_nr99, align 4
  %65 = load i32, i32* %i, align 4
  %shl100 = shl i32 %65, 2
  %sub101 = sub nsw i32 %shl100, 1
  %66 = load i32, i32* %j, align 4
  %shl102 = shl i32 %66, 2
  call void @getChroma4x4Neighbour(i32 %64, i32 %sub101, i32 %shl102, %struct.pix_pos* %block_a)
  %67 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr103 = getelementptr inbounds %struct.img_par, %struct.img_par* %67, i32 0, i32 1
  %68 = load i32, i32* %current_mb_nr103, align 4
  %69 = load i32, i32* %i, align 4
  %shl104 = shl i32 %69, 2
  %70 = load i32, i32* %j, align 4
  %shl105 = shl i32 %70, 2
  %sub106 = sub nsw i32 %shl105, 1
  call void @getChroma4x4Neighbour(i32 %68, i32 %shl104, i32 %sub106, %struct.pix_pos* %block_b)
  %71 = load i32, i32* %u_ac, align 4
  %tobool107 = icmp ne i32 %71, 0
  br i1 %tobool107, label %if.then.110, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %if.else
  %72 = load i32, i32* %v_ac, align 4
  %tobool109 = icmp ne i32 %72, 0
  br i1 %tobool109, label %if.then.110, label %if.end.127

if.then.110:                                      ; preds = %lor.lhs.false.108, %if.else
  %available111 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %73 = load i32, i32* %available111, align 4
  %tobool112 = icmp ne i32 %73, 0
  br i1 %tobool112, label %if.then.113, label %if.end.118

if.then.113:                                      ; preds = %if.then.110
  %y114 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 3
  %74 = load i32, i32* %y114, align 4
  %mul115 = mul nsw i32 4, %74
  %x116 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 2
  %75 = load i32, i32* %x116, align 4
  %add117 = add nsw i32 %mul115, %75
  store i32 %add117, i32* %bit_pos_a, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.113, %if.then.110
  %available119 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %76 = load i32, i32* %available119, align 4
  %tobool120 = icmp ne i32 %76, 0
  br i1 %tobool120, label %if.then.121, label %if.end.126

if.then.121:                                      ; preds = %if.end.118
  %y122 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 3
  %77 = load i32, i32* %y122, align 4
  %mul123 = mul nsw i32 4, %77
  %x124 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 2
  %78 = load i32, i32* %x124, align 4
  %add125 = add nsw i32 %mul123, %78
  store i32 %add125, i32* %bit_pos_b, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.121, %if.end.118
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %lor.lhs.false.108
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.98
  %79 = load i32, i32* %type.addr, align 4
  %cmp129 = icmp ne i32 %79, 2
  br i1 %cmp129, label %if.then.131, label %if.end.183

if.then.131:                                      ; preds = %if.end.128
  %available132 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %80 = load i32, i32* %available132, align 4
  %tobool133 = icmp ne i32 %80, 0
  br i1 %tobool133, label %if.then.134, label %if.end.149

if.then.134:                                      ; preds = %if.then.131
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %81 = load i32, i32* %mb_addr, align 4
  %idxprom = sext i32 %81 to i64
  %82 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %82, i32 0, i32 39
  %83 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %83, i64 %idxprom
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 6
  %84 = load i32, i32* %mb_type, align 4
  %cmp135 = icmp eq i32 %84, 14
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %if.then.134
  store i32 1, i32* %upper_bit, align 4
  br label %if.end.148

if.else.138:                                      ; preds = %if.then.134
  %mb_addr139 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %85 = load i32, i32* %mb_addr139, align 4
  %idxprom140 = sext i32 %85 to i64
  %86 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data141 = getelementptr inbounds %struct.img_par, %struct.img_par* %86, i32 0, i32 39
  %87 = load %struct.macroblock*, %struct.macroblock** %mb_data141, align 8
  %arrayidx142 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %87, i64 %idxprom140
  %cbp_bits = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx142, i32 0, i32 10
  %88 = load i64, i64* %cbp_bits, align 8
  %89 = load i32, i32* %bit, align 4
  %90 = load i32, i32* %bit_pos_b, align 4
  %add143 = add nsw i32 %89, %90
  %sh_prom = zext i32 %add143 to i64
  %shl144 = shl i64 1, %sh_prom
  %and = and i64 %88, %shl144
  %91 = load i32, i32* %bit, align 4
  %92 = load i32, i32* %bit_pos_b, align 4
  %add145 = add nsw i32 %91, %92
  %sh_prom146 = zext i32 %add145 to i64
  %shr = ashr i64 %and, %sh_prom146
  %conv147 = trunc i64 %shr to i32
  store i32 %conv147, i32* %upper_bit, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.138, %if.then.137
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.131
  %available150 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %93 = load i32, i32* %available150, align 4
  %tobool151 = icmp ne i32 %93, 0
  br i1 %tobool151, label %if.then.152, label %if.end.176

if.then.152:                                      ; preds = %if.end.149
  %mb_addr153 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %94 = load i32, i32* %mb_addr153, align 4
  %idxprom154 = sext i32 %94 to i64
  %95 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data155 = getelementptr inbounds %struct.img_par, %struct.img_par* %95, i32 0, i32 39
  %96 = load %struct.macroblock*, %struct.macroblock** %mb_data155, align 8
  %arrayidx156 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %96, i64 %idxprom154
  %mb_type157 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx156, i32 0, i32 6
  %97 = load i32, i32* %mb_type157, align 4
  %cmp158 = icmp eq i32 %97, 14
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %if.then.152
  store i32 1, i32* %left_bit, align 4
  br label %if.end.175

if.else.161:                                      ; preds = %if.then.152
  %mb_addr162 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %98 = load i32, i32* %mb_addr162, align 4
  %idxprom163 = sext i32 %98 to i64
  %99 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data164 = getelementptr inbounds %struct.img_par, %struct.img_par* %99, i32 0, i32 39
  %100 = load %struct.macroblock*, %struct.macroblock** %mb_data164, align 8
  %arrayidx165 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %100, i64 %idxprom163
  %cbp_bits166 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx165, i32 0, i32 10
  %101 = load i64, i64* %cbp_bits166, align 8
  %102 = load i32, i32* %bit, align 4
  %103 = load i32, i32* %bit_pos_a, align 4
  %add167 = add nsw i32 %102, %103
  %sh_prom168 = zext i32 %add167 to i64
  %shl169 = shl i64 1, %sh_prom168
  %and170 = and i64 %101, %shl169
  %104 = load i32, i32* %bit, align 4
  %105 = load i32, i32* %bit_pos_a, align 4
  %add171 = add nsw i32 %104, %105
  %sh_prom172 = zext i32 %add171 to i64
  %shr173 = ashr i64 %and170, %sh_prom172
  %conv174 = trunc i64 %shr173 to i32
  store i32 %conv174, i32* %left_bit, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.161, %if.then.160
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.149
  %106 = load i32, i32* %upper_bit, align 4
  %mul177 = mul nsw i32 2, %106
  %107 = load i32, i32* %left_bit, align 4
  %add178 = add nsw i32 %mul177, %107
  store i32 %add178, i32* %ctx, align 4
  %108 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %109 = load i32, i32* %type.addr, align 4
  %idxprom179 = sext i32 %109 to i64
  %arrayidx180 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_bcbp, i32 0, i64 %idxprom179
  %110 = load i32, i32* %arrayidx180, align 4
  %idxprom181 = sext i32 %110 to i64
  %111 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %111, i32 0, i32 38
  %112 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %112, i32 0, i32 11
  %113 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %bcbp_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %113, i32 0, i32 3
  %arrayidx182 = getelementptr inbounds [10 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]]* %bcbp_contexts, i32 0, i64 %idxprom181
  %arraydecay = getelementptr inbounds [4 x %struct.BiContextType], [4 x %struct.BiContextType]* %arrayidx182, i32 0, i32 0
  %114 = load i32, i32* %ctx, align 4
  %idx.ext = sext i32 %114 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %108, %struct.BiContextType* %add.ptr)
  store i32 %call, i32* %cbp_bit, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.176, %if.end.128
  %115 = load i32, i32* %y_dc, align 4
  %tobool184 = icmp ne i32 %115, 0
  br i1 %tobool184, label %cond.true.185, label %cond.false.186

cond.true.185:                                    ; preds = %if.end.183
  br label %cond.end.216

cond.false.186:                                   ; preds = %if.end.183
  %116 = load i32, i32* %y_ac, align 4
  %tobool187 = icmp ne i32 %116, 0
  br i1 %tobool187, label %cond.true.188, label %cond.false.192

cond.true.188:                                    ; preds = %cond.false.186
  %117 = load i32, i32* %j, align 4
  %mul189 = mul nsw i32 4, %117
  %add190 = add nsw i32 1, %mul189
  %118 = load i32, i32* %i, align 4
  %add191 = add nsw i32 %add190, %118
  br label %cond.end.214

cond.false.192:                                   ; preds = %cond.false.186
  %119 = load i32, i32* %u_dc, align 4
  %tobool193 = icmp ne i32 %119, 0
  br i1 %tobool193, label %cond.true.194, label %cond.false.195

cond.true.194:                                    ; preds = %cond.false.192
  br label %cond.end.212

cond.false.195:                                   ; preds = %cond.false.192
  %120 = load i32, i32* %v_dc, align 4
  %tobool196 = icmp ne i32 %120, 0
  br i1 %tobool196, label %cond.true.197, label %cond.false.198

cond.true.197:                                    ; preds = %cond.false.195
  br label %cond.end.210

cond.false.198:                                   ; preds = %cond.false.195
  %121 = load i32, i32* %u_ac, align 4
  %tobool199 = icmp ne i32 %121, 0
  br i1 %tobool199, label %cond.true.200, label %cond.false.204

cond.true.200:                                    ; preds = %cond.false.198
  %122 = load i32, i32* %j, align 4
  %mul201 = mul nsw i32 4, %122
  %add202 = add nsw i32 19, %mul201
  %123 = load i32, i32* %i, align 4
  %add203 = add nsw i32 %add202, %123
  br label %cond.end.208

cond.false.204:                                   ; preds = %cond.false.198
  %124 = load i32, i32* %j, align 4
  %mul205 = mul nsw i32 4, %124
  %add206 = add nsw i32 35, %mul205
  %125 = load i32, i32* %i, align 4
  %add207 = add nsw i32 %add206, %125
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.204, %cond.true.200
  %cond209 = phi i32 [ %add203, %cond.true.200 ], [ %add207, %cond.false.204 ]
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.end.208, %cond.true.197
  %cond211 = phi i32 [ 18, %cond.true.197 ], [ %cond209, %cond.end.208 ]
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.end.210, %cond.true.194
  %cond213 = phi i32 [ 17, %cond.true.194 ], [ %cond211, %cond.end.210 ]
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.end.212, %cond.true.188
  %cond215 = phi i32 [ %add191, %cond.true.188 ], [ %cond213, %cond.end.212 ]
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.end.214, %cond.true.185
  %cond217 = phi i32 [ 0, %cond.true.185 ], [ %cond215, %cond.end.214 ]
  store i32 %cond217, i32* %bit, align 4
  %126 = load i32, i32* %cbp_bit, align 4
  %tobool218 = icmp ne i32 %126, 0
  br i1 %tobool218, label %if.then.219, label %if.end.275

if.then.219:                                      ; preds = %cond.end.216
  %127 = load i32, i32* %type.addr, align 4
  %cmp220 = icmp eq i32 %127, 2
  br i1 %cmp220, label %if.then.222, label %if.else.241

if.then.222:                                      ; preds = %if.then.219
  %128 = load i32, i32* %bit, align 4
  %sh_prom223 = zext i32 %128 to i64
  %shl224 = shl i64 1, %sh_prom223
  %129 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits225 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %129, i32 0, i32 10
  %130 = load i64, i64* %cbp_bits225, align 8
  %or = or i64 %130, %shl224
  store i64 %or, i64* %cbp_bits225, align 8
  %131 = load i32, i32* %bit, align 4
  %add226 = add nsw i32 %131, 1
  %sh_prom227 = zext i32 %add226 to i64
  %shl228 = shl i64 1, %sh_prom227
  %132 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits229 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %132, i32 0, i32 10
  %133 = load i64, i64* %cbp_bits229, align 8
  %or230 = or i64 %133, %shl228
  store i64 %or230, i64* %cbp_bits229, align 8
  %134 = load i32, i32* %bit, align 4
  %add231 = add nsw i32 %134, 4
  %sh_prom232 = zext i32 %add231 to i64
  %shl233 = shl i64 1, %sh_prom232
  %135 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits234 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %135, i32 0, i32 10
  %136 = load i64, i64* %cbp_bits234, align 8
  %or235 = or i64 %136, %shl233
  store i64 %or235, i64* %cbp_bits234, align 8
  %137 = load i32, i32* %bit, align 4
  %add236 = add nsw i32 %137, 5
  %sh_prom237 = zext i32 %add236 to i64
  %shl238 = shl i64 1, %sh_prom237
  %138 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits239 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %138, i32 0, i32 10
  %139 = load i64, i64* %cbp_bits239, align 8
  %or240 = or i64 %139, %shl238
  store i64 %or240, i64* %cbp_bits239, align 8
  br label %if.end.274

if.else.241:                                      ; preds = %if.then.219
  %140 = load i32, i32* %type.addr, align 4
  %cmp242 = icmp eq i32 %140, 3
  br i1 %cmp242, label %if.then.244, label %if.else.254

if.then.244:                                      ; preds = %if.else.241
  %141 = load i32, i32* %bit, align 4
  %sh_prom245 = zext i32 %141 to i64
  %shl246 = shl i64 1, %sh_prom245
  %142 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits247 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %142, i32 0, i32 10
  %143 = load i64, i64* %cbp_bits247, align 8
  %or248 = or i64 %143, %shl246
  store i64 %or248, i64* %cbp_bits247, align 8
  %144 = load i32, i32* %bit, align 4
  %add249 = add nsw i32 %144, 1
  %sh_prom250 = zext i32 %add249 to i64
  %shl251 = shl i64 1, %sh_prom250
  %145 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits252 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %145, i32 0, i32 10
  %146 = load i64, i64* %cbp_bits252, align 8
  %or253 = or i64 %146, %shl251
  store i64 %or253, i64* %cbp_bits252, align 8
  br label %if.end.273

if.else.254:                                      ; preds = %if.else.241
  %147 = load i32, i32* %type.addr, align 4
  %cmp255 = icmp eq i32 %147, 4
  br i1 %cmp255, label %if.then.257, label %if.else.267

if.then.257:                                      ; preds = %if.else.254
  %148 = load i32, i32* %bit, align 4
  %sh_prom258 = zext i32 %148 to i64
  %shl259 = shl i64 1, %sh_prom258
  %149 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits260 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %149, i32 0, i32 10
  %150 = load i64, i64* %cbp_bits260, align 8
  %or261 = or i64 %150, %shl259
  store i64 %or261, i64* %cbp_bits260, align 8
  %151 = load i32, i32* %bit, align 4
  %add262 = add nsw i32 %151, 4
  %sh_prom263 = zext i32 %add262 to i64
  %shl264 = shl i64 1, %sh_prom263
  %152 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits265 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %152, i32 0, i32 10
  %153 = load i64, i64* %cbp_bits265, align 8
  %or266 = or i64 %153, %shl264
  store i64 %or266, i64* %cbp_bits265, align 8
  br label %if.end.272

if.else.267:                                      ; preds = %if.else.254
  %154 = load i32, i32* %bit, align 4
  %sh_prom268 = zext i32 %154 to i64
  %shl269 = shl i64 1, %sh_prom268
  %155 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp_bits270 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %155, i32 0, i32 10
  %156 = load i64, i64* %cbp_bits270, align 8
  %or271 = or i64 %156, %shl269
  store i64 %or271, i64* %cbp_bits270, align 8
  br label %if.end.272

if.end.272:                                       ; preds = %if.else.267, %if.then.257
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.then.244
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %if.then.222
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %cond.end.216
  %157 = load i32, i32* %cbp_bit, align 4
  ret i32 %157
}

declare void @getChroma4x4Neighbour(i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind uwtable
define i32 @read_significance_map(%struct.macroblock* %currMB, %struct.DecodingEnvironment* %dep_dp, %struct.img_par* %img, i32 %type, i32* %coeff) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %type.addr = alloca i32, align 4
  %coeff.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %sig = alloca i32, align 4
  %coeff_ctr = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %fld = alloca i32, align 4
  %pos2ctx_Map = alloca i32**, align 8
  %tex_ctx = alloca %struct.TextureInfoContexts*, align 8
  %map_ctx = alloca %struct.BiContextType*, align 8
  %last_ctx = alloca %struct.BiContextType*, align 8
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32* %coeff, i32** %coeff.addr, align 8
  store i32 0, i32* %coeff_ctr, align 4
  store i32 0, i32* %i0, align 4
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @maxpos, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i1, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %structure = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 36
  %3 = load i32, i32* %structure, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 20
  %5 = load i32, i32* %mb_field, align 4
  %tobool = icmp ne i32 %5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  store i32 %lor.ext, i32* %fld, align 4
  %7 = load i32, i32* %fld, align 4
  %tobool1 = icmp ne i32 %7, 0
  %cond = select i1 %tobool1, i32** getelementptr inbounds ([10 x i32*], [10 x i32*]* @pos2ctx_map_int, i32 0, i32 0), i32** getelementptr inbounds ([10 x i32*], [10 x i32*]* @pos2ctx_map, i32 0, i32 0)
  store i32** %cond, i32*** %pos2ctx_Map, align 8
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 38
  %9 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx2 = getelementptr inbounds %struct.Slice, %struct.Slice* %9, i32 0, i32 11
  %10 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx2, align 8
  store %struct.TextureInfoContexts* %10, %struct.TextureInfoContexts** %tex_ctx, align 8
  %11 = load i32, i32* %fld, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  %12 = load i32, i32* %type.addr, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_map, i32 0, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %fld_map_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %14, i32 0, i32 8
  %arrayidx7 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %fld_map_contexts, i32 0, i64 %idxprom6
  %arraydecay = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx7, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %15 = load i32, i32* %type.addr, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_map, i32 0, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %map_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %17, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %map_contexts, i32 0, i64 %idxprom10
  %arraydecay12 = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx11, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi %struct.BiContextType* [ %arraydecay, %cond.true ], [ %arraydecay12, %cond.false ]
  store %struct.BiContextType* %cond13, %struct.BiContextType** %map_ctx, align 8
  %18 = load i32, i32* %fld, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.21

cond.true.15:                                     ; preds = %cond.end
  %19 = load i32, i32* %type.addr, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_last, i32 0, i64 %idxprom16
  %20 = load i32, i32* %arrayidx17, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %fld_last_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %21, i32 0, i32 9
  %arrayidx19 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %fld_last_contexts, i32 0, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx19, i32 0, i32 0
  br label %cond.end.27

cond.false.21:                                    ; preds = %cond.end
  %22 = load i32, i32* %type.addr, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_last, i32 0, i64 %idxprom22
  %23 = load i32, i32* %arrayidx23, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %last_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %24, i32 0, i32 5
  %arrayidx25 = getelementptr inbounds [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]]* %last_contexts, i32 0, i64 %idxprom24
  %arraydecay26 = getelementptr inbounds [15 x %struct.BiContextType], [15 x %struct.BiContextType]* %arrayidx25, i32 0, i32 0
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.21, %cond.true.15
  %cond28 = phi %struct.BiContextType* [ %arraydecay20, %cond.true.15 ], [ %arraydecay26, %cond.false.21 ]
  store %struct.BiContextType* %cond28, %struct.BiContextType** %last_ctx, align 8
  %25 = load i32, i32* %type.addr, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* @c1isdc, i32 0, i64 %idxprom29
  %26 = load i32, i32* %arrayidx30, align 4
  %tobool31 = icmp ne i32 %26, 0
  br i1 %tobool31, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.27
  %27 = load i32, i32* %i0, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i0, align 4
  %28 = load i32, i32* %i1, align 4
  %inc32 = add nsw i32 %28, 1
  store i32 %inc32, i32* %i1, align 4
  %29 = load i32*, i32** %coeff.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %29, i32 -1
  store i32* %incdec.ptr, i32** %coeff.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.27
  %30 = load i32, i32* %i0, align 4
  store i32 %30, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.63, %if.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %i1, align 4
  %cmp33 = icmp slt i32 %31, %32
  br i1 %cmp33, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %33 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %34 = load %struct.BiContextType*, %struct.BiContextType** %map_ctx, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %35 to i64
  %36 = load i32, i32* %type.addr, align 4
  %idxprom35 = sext i32 %36 to i64
  %37 = load i32**, i32*** %pos2ctx_Map, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %37, i64 %idxprom35
  %38 = load i32*, i32** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %38, i64 %idxprom34
  %39 = load i32, i32* %arrayidx37, align 4
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %34, i64 %idx.ext
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %33, %struct.BiContextType* %add.ptr)
  store i32 %call, i32* %sig, align 4
  %40 = load i32, i32* %sig, align 4
  %tobool38 = icmp ne i32 %40, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load i32*, i32** %coeff.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %42, i64 %idxprom40
  store i32 1, i32* %arrayidx41, align 4
  %43 = load i32, i32* %coeff_ctr, align 4
  %inc42 = add nsw i32 %43, 1
  store i32 %inc42, i32* %coeff_ctr, align 4
  %44 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %45 = load %struct.BiContextType*, %struct.BiContextType** %last_ctx, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %46 to i64
  %47 = load i32, i32* %type.addr, align 4
  %idxprom44 = sext i32 %47 to i64
  %arrayidx45 = getelementptr inbounds [10 x i32*], [10 x i32*]* @pos2ctx_last, i32 0, i64 %idxprom44
  %48 = load i32*, i32** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %48, i64 %idxprom43
  %49 = load i32, i32* %arrayidx46, align 4
  %idx.ext47 = sext i32 %49 to i64
  %add.ptr48 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %45, i64 %idx.ext47
  %call49 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %44, %struct.BiContextType* %add.ptr48)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %if.then.39
  %50 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %50, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %if.then.51
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %i1, align 4
  %add = add nsw i32 %52, 1
  %cmp54 = icmp slt i32 %51, %add
  br i1 %cmp54, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %for.cond.53
  %53 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %53 to i64
  %54 = load i32*, i32** %coeff.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %54, i64 %idxprom56
  store i32 0, i32* %arrayidx57, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.55
  %55 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %55, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  br label %if.end.59

if.end.59:                                        ; preds = %for.end, %if.then.39
  br label %if.end.62

if.else:                                          ; preds = %for.body
  %56 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %56 to i64
  %57 = load i32*, i32** %coeff.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %57, i64 %idxprom60
  store i32 0, i32* %arrayidx61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.end.59
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %58 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %58, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %i1, align 4
  %add66 = add nsw i32 %60, 1
  %cmp67 = icmp slt i32 %59, %add66
  br i1 %cmp67, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %for.end.65
  %61 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %61 to i64
  %62 = load i32*, i32** %coeff.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %62, i64 %idxprom69
  store i32 1, i32* %arrayidx70, align 4
  %63 = load i32, i32* %coeff_ctr, align 4
  %inc71 = add nsw i32 %63, 1
  store i32 %inc71, i32* %coeff_ctr, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %for.end.65
  %64 = load i32, i32* %coeff_ctr, align 4
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define void @read_significant_coefficients(%struct.DecodingEnvironment* %dep_dp, %struct.img_par* %img, i32 %type, i32* %coeff) #0 {
entry:
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %type.addr = alloca i32, align 4
  %coeff.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %ctx = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
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
  br i1 %cmp3, label %if.then, label %if.end.40

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %c1, align 4
  %call = call i32 @imin(i32 %6, i32 4)
  store i32 %call, i32* %ctx, align 4
  %7 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %8 = load i32, i32* %type.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_one, i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 38
  %11 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %11, i32 0, i32 11
  %12 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  %one_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %12, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]]* %one_contexts, i32 0, i64 %idxprom6
  %arraydecay = getelementptr inbounds [5 x %struct.BiContextType], [5 x %struct.BiContextType]* %arrayidx7, i32 0, i32 0
  %13 = load i32, i32* %ctx, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay, i64 %idx.ext
  %call8 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %7, %struct.BiContextType* %add.ptr)
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load i32*, i32** %coeff.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  %16 = load i32, i32* %arrayidx10, align 4
  %add = add i32 %16, %call8
  store i32 %add, i32* %arrayidx10, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load i32*, i32** %coeff.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom11
  %19 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp eq i32 %19, 2
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  %20 = load i32, i32* %c2, align 4
  %21 = load i32, i32* %type.addr, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* @max_c2, i32 0, i64 %idxprom15
  %22 = load i32, i32* %arrayidx16, align 4
  %call17 = call i32 @imin(i32 %20, i32 %22)
  store i32 %call17, i32* %ctx, align 4
  %23 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %24 = load i32, i32* %type.addr, align 4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* @type2ctx_abs, i32 0, i64 %idxprom18
  %25 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice21 = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 38
  %27 = load %struct.Slice*, %struct.Slice** %currentSlice21, align 8
  %tex_ctx22 = getelementptr inbounds %struct.Slice, %struct.Slice* %27, i32 0, i32 11
  %28 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx22, align 8
  %abs_contexts = getelementptr inbounds %struct.TextureInfoContexts, %struct.TextureInfoContexts* %28, i32 0, i32 7
  %arrayidx23 = getelementptr inbounds [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]]* %abs_contexts, i32 0, i64 %idxprom20
  %arraydecay24 = getelementptr inbounds [5 x %struct.BiContextType], [5 x %struct.BiContextType]* %arrayidx23, i32 0, i32 0
  %29 = load i32, i32* %ctx, align 4
  %idx.ext25 = sext i32 %29 to i64
  %add.ptr26 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %arraydecay24, i64 %idx.ext25
  %call27 = call i32 @unary_exp_golomb_level_decode(%struct.DecodingEnvironment* %23, %struct.BiContextType* %add.ptr26)
  %30 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load i32*, i32** %coeff.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %31, i64 %idxprom28
  %32 = load i32, i32* %arrayidx29, align 4
  %add30 = add i32 %32, %call27
  store i32 %add30, i32* %arrayidx29, align 4
  store i32 0, i32* %c1, align 4
  %33 = load i32, i32* %c2, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %c2, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.then
  %34 = load i32, i32* %c1, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %if.else
  %35 = load i32, i32* %c1, align 4
  %inc32 = add nsw i32 %35, 1
  store i32 %inc32, i32* %c1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.31, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then.14
  %36 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %call34 = call i32 @biari_decode_symbol_eq_prob(%struct.DecodingEnvironment* %36)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.33
  %37 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %37 to i64
  %38 = load i32*, i32** %coeff.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %38, i64 %idxprom37
  %39 = load i32, i32* %arrayidx38, align 4
  %mul = mul nsw i32 %39, -1
  store i32 %mul, i32* %arrayidx38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.33
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %40 = load i32, i32* %i, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #4 {
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

; Function Attrs: nounwind uwtable
define i32 @unary_exp_golomb_level_decode(%struct.DecodingEnvironment* %dep_dp, %struct.BiContextType* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %symbol = alloca i32, align 4
  %exp_start = alloca i32, align 4
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32 13, i32* %exp_start, align 4
  %0 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %1 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %call = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %0, %struct.BiContextType* %1)
  store i32 %call, i32* %symbol, align 4
  %2 = load i32, i32* %symbol, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %symbol, align 4
  store i32 1, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %3 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %4 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %call1 = call i32 @biari_decode_symbol(%struct.DecodingEnvironment* %3, %struct.BiContextType* %4)
  store i32 %call1, i32* %l, align 4
  %5 = load i32, i32* %symbol, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %symbol, align 4
  %6 = load i32, i32* %k, align 4
  %inc2 = add i32 %6, 1
  store i32 %inc2, i32* %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, i32* %l, align 4
  %cmp3 = icmp ne i32 %7, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %exp_start, align 4
  %cmp4 = icmp ne i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %10 = phi i1 [ false, %do.cond ], [ %cmp4, %land.rhs ]
  br i1 %10, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %11 = load i32, i32* %l, align 4
  %cmp5 = icmp ne i32 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %do.end
  %12 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %call7 = call i32 @exp_golomb_decode_eq_prob(%struct.DecodingEnvironment* %12, i32 0)
  %add = add i32 %call7, 1
  %13 = load i32, i32* %symbol, align 4
  %add8 = add i32 %13, %add
  store i32 %add8, i32* %symbol, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %do.end
  %14 = load i32, i32* %symbol, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @readRunLevel_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.DecodingEnvironment* %dep_dp) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 1
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 39
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load i32, i32* @readRunLevel_CABAC.coeff_ctr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %5 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %6 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %8 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %8, i32 0, i32 6
  %9 = load i32, i32* %context, align 4
  %call = call i32 @read_and_store_CBP_block_bit(%struct.macroblock* %5, %struct.DecodingEnvironment* %6, %struct.img_par* %7, i32 %9)
  store i32 %call, i32* @readRunLevel_CABAC.coeff_ctr, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %11 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %13 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context3 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %13, i32 0, i32 6
  %14 = load i32, i32* %context3, align 4
  %call4 = call i32 @read_significance_map(%struct.macroblock* %10, %struct.DecodingEnvironment* %11, %struct.img_par* %12, i32 %14, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @readRunLevel_CABAC.coeff, i32 0, i32 0))
  store i32 %call4, i32* @readRunLevel_CABAC.coeff_ctr, align 4
  %15 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %16 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %17 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %context5 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %17, i32 0, i32 6
  %18 = load i32, i32* %context5, align 4
  call void @read_significant_coefficients(%struct.DecodingEnvironment* %15, %struct.img_par* %16, i32 %18, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @readRunLevel_CABAC.coeff, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %19 = load i32, i32* @readRunLevel_CABAC.coeff_ctr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.6
  %20 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %20, i32 0, i32 2
  store i32 0, i32* %value2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %21 = load i32, i32* @readRunLevel_CABAC.pos, align 4
  %idxprom8 = sext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds [64 x i32], [64 x i32]* @readRunLevel_CABAC.coeff, i32 0, i64 %idxprom8
  %22 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp eq i32 %22, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* @readRunLevel_CABAC.pos, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* @readRunLevel_CABAC.pos, align 4
  %24 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value211 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %24, i32 0, i32 2
  %25 = load i32, i32* %value211, align 4
  %inc12 = add nsw i32 %25, 1
  store i32 %inc12, i32* %value211, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* @readRunLevel_CABAC.pos, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* @readRunLevel_CABAC.pos, align 4
  %idxprom14 = sext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds [64 x i32], [64 x i32]* @readRunLevel_CABAC.coeff, i32 0, i64 %idxprom14
  %27 = load i32, i32* %arrayidx15, align 4
  %28 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %28, i32 0, i32 1
  store i32 %27, i32* %value1, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.end.6
  %29 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value216 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %29, i32 0, i32 2
  store i32 0, i32* %value216, align 4
  %30 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %value117 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %30, i32 0, i32 1
  store i32 0, i32* %value117, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %for.end
  %31 = load i32, i32* @readRunLevel_CABAC.coeff_ctr, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* @readRunLevel_CABAC.coeff_ctr, align 4
  %cmp19 = icmp eq i32 %31, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  store i32 0, i32* @readRunLevel_CABAC.pos, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_CABAC(%struct.syntaxelement* %se, %struct.img_par* %img, %struct.datapartition* %this_dataPart) #0 {
entry:
  %se.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %this_dataPart.addr = alloca %struct.datapartition*, align 8
  %curr_len = alloca i32, align 4
  %dep_dp = alloca %struct.DecodingEnvironment*, align 8
  store %struct.syntaxelement* %se, %struct.syntaxelement** %se.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.datapartition* %this_dataPart, %struct.datapartition** %this_dataPart.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %this_dataPart.addr, align 8
  %de_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 1
  store %struct.DecodingEnvironment* %de_cabac, %struct.DecodingEnvironment** %dep_dp, align 8
  %1 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp, align 8
  %call = call i32 @arideco_bits_read(%struct.DecodingEnvironment* %1)
  store i32 %call, i32* %curr_len, align 4
  %2 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %reading = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %2, i32 0, i32 9
  %3 = load void (%struct.syntaxelement*, %struct.img_par*, %struct.DecodingEnvironment*)*, void (%struct.syntaxelement*, %struct.img_par*, %struct.DecodingEnvironment*)** %reading, align 8
  %4 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %6 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp, align 8
  call void %3(%struct.syntaxelement* %4, %struct.img_par* %5, %struct.DecodingEnvironment* %6)
  %7 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp, align 8
  %call1 = call i32 @arideco_bits_read(%struct.DecodingEnvironment* %7)
  %8 = load i32, i32* %curr_len, align 4
  %sub = sub nsw i32 %call1, %8
  %9 = load %struct.syntaxelement*, %struct.syntaxelement** %se.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %9, i32 0, i32 3
  store i32 %sub, i32* %len, align 4
  ret i32 %sub
}

declare i32 @arideco_bits_read(%struct.DecodingEnvironment*) #2

; Function Attrs: nounwind uwtable
define i32 @cabac_startcode_follows(%struct.img_par* %img, i32 %eos_bit) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %eos_bit.addr = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  %partMap = alloca i32*, align 8
  %dP = alloca %struct.datapartition*, align 8
  %bit = alloca i32, align 4
  %dep_dp = alloca %struct.DecodingEnvironment*, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %eos_bit, i32* %eos_bit.addr, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %dp_mode = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 7
  %3 = load i32, i32* %dp_mode, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x [20 x i32]], [0 x [20 x i32]]* @assignSE2partition, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i32 0
  store i32* %arraydecay, i32** %partMap, align 8
  %4 = load i32*, i32** %partMap, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 2
  %5 = load i32, i32* %arrayidx1, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 9
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx3, %struct.datapartition** %dP, align 8
  %8 = load %struct.datapartition*, %struct.datapartition** %dP, align 8
  %de_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 1
  store %struct.DecodingEnvironment* %de_cabac, %struct.DecodingEnvironment** %dep_dp, align 8
  %9 = load i32, i32* %eos_bit.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp, align 8
  %call = call i32 @biari_decode_final(%struct.DecodingEnvironment* %10)
  store i32 %call, i32* %bit, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %bit, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %bit, align 4
  %cmp = icmp eq i32 %11, 1
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @exp_golomb_decode_eq_prob(%struct.DecodingEnvironment* %dep_dp, i32 %k) #0 {
entry:
  %dep_dp.addr = alloca %struct.DecodingEnvironment*, align 8
  %k.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %symbol = alloca i32, align 4
  %binary_symbol = alloca i32, align 4
  store %struct.DecodingEnvironment* %dep_dp, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  store i32 0, i32* %symbol, align 4
  store i32 0, i32* %binary_symbol, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %call = call i32 @biari_decode_symbol_eq_prob(%struct.DecodingEnvironment* %0)
  store i32 %call, i32* %l, align 4
  %1 = load i32, i32* %l, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %k.addr, align 4
  %shl = shl i32 1, %2
  %3 = load i32, i32* %symbol, align 4
  %add = add nsw i32 %3, %shl
  store i32 %add, i32* %symbol, align 4
  %4 = load i32, i32* %k.addr, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %k.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %5 = load i32, i32* %l, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %do.end
  %6 = load i32, i32* %k.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %k.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %dep_dp.addr, align 8
  %call2 = call i32 @biari_decode_symbol_eq_prob(%struct.DecodingEnvironment* %7)
  %cmp3 = icmp eq i32 %call2, 1
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %while.body
  %8 = load i32, i32* %k.addr, align 4
  %shl5 = shl i32 1, %8
  %9 = load i32, i32* %binary_symbol, align 4
  %or = or i32 %9, %shl5
  store i32 %or, i32* %binary_symbol, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %symbol, align 4
  %11 = load i32, i32* %binary_symbol, align 4
  %add7 = add nsw i32 %10, %11
  ret i32 %add7
}

; Function Attrs: nounwind uwtable
define void @readIPCMBytes_CABAC(%struct.syntaxelement* %sym, %struct.Bitstream* %currStream) #0 {
entry:
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %currStream.addr = alloca %struct.Bitstream*, align 8
  %read_len = alloca i32, align 4
  %code_len = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.Bitstream* %currStream, %struct.Bitstream** %currStream.addr, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %read_len1 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i32 0, i32 0
  %1 = load i32, i32* %read_len1, align 4
  store i32 %1, i32* %read_len, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %code_len2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 1
  %3 = load i32, i32* %code_len2, align 4
  store i32 %3, i32* %code_len, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  %5 = load i8*, i8** %streamBuffer, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %6, i32 0, i32 3
  store i32 8, i32* %len, align 4
  %7 = load i32, i32* %read_len, align 4
  %8 = load i32, i32* %code_len, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %read_len, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %read_len, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %12, i32 0, i32 4
  store i32 %conv, i32* %inf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf3 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %13, i32 0, i32 4
  %14 = load i32, i32* %inf3, align 4
  %15 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %15, i32 0, i32 1
  store i32 %14, i32* %value1, align 4
  %16 = load i32, i32* %read_len, align 4
  %17 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %read_len4 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 0
  store i32 %16, i32* %read_len4, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
